-- Create the gas_stations table
CREATE TABLE IF NOT EXISTS gas_stations (
    id INTEGER PRIMARY KEY,
    addr TEXT NOT NULL,
    corp TEXT NOT NULL,
    fuel_95E10 REAL NOT NULL,
    fuel_98E REAL NOT NULL,
    fuel_Di REAL NOT NULL
);

-- Insert data into the gas_stations table
INSERT INTO gas_stations (addr, corp, fuel_95E10, fuel_98E, fuel_Di) VALUES
    ('Ruukintie 177, 60200 Seinajoki, Finland', 'ABC', 2.106, 2.200, 2.148),
    ('Hyllykalliontie 1, 60510 Seinajoki, Finland', 'St1', 2.149, 2.219, 2.379),
    ('Vapaudentie 73, 60100 Seinajoki, Finland', 'Neste', 2.119, 2.219, 2.249),
    ('Valtionkatu 7, 60100 Seinajoki, Finland', 'Shell', 2.121, 2.231, 2.156),
    ('Verkatehtaankatu 13, 60100 Seinajoki, Finland', 'ABC', 2.108, 2.207, 2.183),
    ('Vapaudentie 25, 60100 Seinajoki, Finland', 'Neste', 2.134, 2.234, 2.269),
    ('Kasperinviita 15, 60150 Seinajoki, Finland', 'Neste', 2.114, 2.204, 2.244),
    ('Tapiolantie 10, 60150 Seinajoki, Finland', 'St1', 2.114, 2.204, 2.244),
    ('Kytopolku 2, 60320 Seinajoki, Finland', 'ABC', 2.149, 2.249, 2.289),
    ('Bullerintie 2, 60200 Seinajoki, Finland', 'ABC', 2.149, 2.249, 2.289),
    ('Kivistontie 30, 60100 Seinajoki, Finland', 'ABC', 2.066, 2.151, 2.095),
    ('Hyllykalliontie 2, 60510 Seinajoki, Finland', 'ABC', 2.075, 2.168, 2.104),
    ('Paivolankatu 39, 60120 Seinajoki, Finland', 'St1', 2.056, 2.146, 2.083);

