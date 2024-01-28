import Reac, { useEffect, useState } from 'react';
import { MapContainer, TileLayer, Marker, Popup } from 'react-leaflet';
import 'leaflet/dist/leaflet.css';

// Jotta marker iconit toimii reactin kanssa
import 'leaflet-defaulticon-compatibility/dist/leaflet-defaulticon-compatibility.webpack.css'; // Re-uses images from ~leaflet package
import 'leaflet-defaulticon-compatibility';

interface GasStation {
  id: number;
  addr: string;
  corp: string;
  fuel_95E10: number;
  fuel_98E: number;
  fuel_Di: number;
}

const App: React.FC = () => {
  const position: [number, number] = [62.78882825247504, 22.82214852702566]; 

  const [gasStations, setGasStations] = useState<GasStation[]>([]);

  useEffect(() => {
    fetch('http://localhost:3001/api/gas_stations')
      .then((response) => response.json())
      .then((data) => {
        setGasStations(data); // Uncomment this line
        console.log(data);
      })
      .catch((error) => console.error('Error fetching gas stations data:', error));
  }, []);
  

  return (
    <MapContainer center={position} zoom={13} style={{ height: '100vh', width: '100%' }}>
      <TileLayer
        url="https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png"
        attribution='&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
      />
      <Marker position={position}>
        <Popup>
          SeAMK.
        </Popup>
      </Marker>
    </MapContainer>
  );
};

export default App;