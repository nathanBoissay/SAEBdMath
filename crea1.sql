CREATE TABLE CATEGORIECONFORT (
    idCategorie INT PRIMARY KEY,
    description VARCHAR(255)
);

CREATE TABLE ETAPES (
    codeEtape INT PRIMARY KEY,
    nomEtape VARCHAR(100),
    latitude DECIMAL(10,6),
    longitude DECIMAL(10,6),
    niveauConfort INT,
    FOREIGN KEY (niveauConfort) REFERENCES CATEGORIECONFORT(idCategorie)
);

CREATE TABLE TRONCONS (
    idTroncon INT not null PRIMARY KEY ,
    nomUsuel VARCHAR(100),
    distance_km DECIMAL(10,2) not null,
    typeSol VARCHAR(50) not null,
    denivele_moyen INT not null,
    idEtapeDepart int not null,
    idEtapeArriver int not null,
    FOREIGN KEY (idEtapeDepart) REFERENCES ETAPES(codeEtape),
    FOREIGN KEY (idEtapeArriver) REFERENCES ETAPES(codeEtape)
);