
CREATE TABLE IF NOT EXISTS gas_stations (
    id INTEGER PRIMARY KEY,
    addr TEXT NOT NULL,
    corp TEXT NOT NULL,
    fuel_95E10 REAL NOT NULL,
    fuel_98E REAL NOT NULL,
    fuel_Di REAL NOT NULL,
    lat REAL NOT NULL,
    lon REAL NOT NULL
);

-- Data geocoodattu käyttäen googlen apia
INSERT INTO gas_stations (addr, corp, fuel_95E10, fuel_98E, fuel_Di, lat, lon) VALUES
    ('Ruukintie 177, 60200 Seinajoki, Finland', 'ABC', 2.106, 2.200, 2.148, 62.75269170000001, 22.8661126),
    ('Hyllykalliontie 1, 60510 Seinajoki, Finland', 'St1', 2.149, 2.219, 2.379, 62.80566400000001, 22.880002),
    ('Vapaudentie 73, 60100 Seinajoki, Finland', 'Neste', 2.119, 2.219, 2.249, 62.7923552, 22.8326001),
    ('Valtionkatu 7, 60100 Seinajoki, Finland', 'Shell', 2.121, 2.231, 2.156, 62.7939149, 22.8388329),
    ('Verkatehtaankatu 13, 60100 Seinajoki, Finland', 'ABC', 2.108, 2.207, 2.183, 62.7948549, 22.8315675),
    ('Vapaudentie 25, 60100 Seinajoki, Finland', 'Neste', 2.134, 2.234, 2.269, 62.7772855, 22.8414135),
    ('Kasperinviita 15, 60150 Seinajoki, Finland', 'Neste', 2.114, 2.204, 2.244, 62.7712653, 22.877934),
    ('Tapiolantie 10, 60150 Seinajoki, Finland', 'St1', 2.114, 2.204, 2.244, 62.7731803, 22.8772993),
    ('Kytopolku 2, 60320 Seinajoki, Finland', 'ABC', 2.149, 2.249, 2.289, 62.78630510000001, 22.8060556),
    ('Bullerintie 2, 60200 Seinajoki, Finland', 'ABC', 2.149, 2.249, 2.289, 62.7496512, 22.8257286),
    ('Kivistontie 30, 60100 Seinajoki, Finland', 'ABC', 2.066, 2.151, 2.095, 62.77630879999999, 22.8509447),
    ('Hyllykalliontie 2, 60510 Seinajoki, Finland', 'ABC', 2.075, 2.168, 2.104, 62.804804, 22.880417),
    ('Paivolankatu 39, 60120 Seinajoki, Finland', 'St1', 2.056, 2.146, 2.083, 62.7923978, 22.8696157);

