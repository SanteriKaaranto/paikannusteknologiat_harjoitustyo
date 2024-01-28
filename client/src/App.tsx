import React, { useEffect, useState } from "react";
import { MapContainer, TileLayer, Marker, Popup } from "react-leaflet";
import "leaflet/dist/leaflet.css";

// Jotta marker iconit toimii reactin kanssa
import "leaflet-defaulticon-compatibility/dist/leaflet-defaulticon-compatibility.webpack.css"; // Re-uses images from ~leaflet package
import "leaflet-defaulticon-compatibility";


// Interface datan tiedoista
interface GasStation {
  id: number;
  addr: string;
  corp: string;
  fuel_95E10: number;
  fuel_98E: number;
  fuel_Di: number;
  lat: number;
  lon: number;
}

const App: React.FC = () => {
  const position: [number, number] = [62.778512254014345, 22.841036907408494];

  const [gasStations, setGasStations] = useState<GasStation[]>([]);

  // Haetaan data palvelimelta ja videään se useState muuttujaan
  useEffect(() => {
    fetch("http://localhost:3001/api/gas_stations")
      .then((response) => response.json())
      .then((data) => {
        setGasStations(data);
        console.log(data);
      })
      .catch((error) =>
        console.error("Error fetching gas stations data:", error)
      );
  }, []);

  return (
    <MapContainer
      center={position}
      zoom={13}
      style={{ height: "100vh", width: "100%" }}
    >
      <TileLayer
        url="https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png"
        attribution='&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
      />
      {/* Käydään data läpi ja luodaan kartalle merkit niistä */}
      {gasStations.map((station) => (
        <Marker key={station.id} position={[station.lat, station.lon]}>
          <Popup>
            <div>
              <h2>{station.addr}</h2>
              <p>{station.corp}</p>
              <p>95E10: {station.fuel_95E10} €</p>
              <p>98E: {station.fuel_98E} €</p>
              <p>Di: {station.fuel_Di} €</p>
            </div>
          </Popup>
        </Marker>
      ))}
    </MapContainer>
  );
};

export default App;
