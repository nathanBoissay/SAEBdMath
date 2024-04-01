-- Insertion des catégories de confort
INSERT INTO CATEGORIECONFORT (idCategorie, description) VALUES
(1, 'Ville'),
(2, 'Refuge'),
(3, 'Camping'),
(4, 'Montagne'),
(5, 'Plage'),
(6, 'Forêt'),
(7, 'Zone rurale'),
(8, 'Parc naturel'),
(9, 'Zone désertique'),
(10, 'Lieu historique');

-- Insertion des étapes
INSERT INTO ETAPES (codeEtape, nomEtape, latitude, longitude, niveauConfort) VALUES
(1, 'Orléans', 47.902964, 1.90925, 1),
(2, 'Refuge de la Pierre', 47.895289, 1.890756, 2),
(3, 'Lac des Cygnes', 47.888888, 1.870833, 3),
(4, 'Mont Pic', 47.876389, 1.875, 4),
(5, 'Village Vert', 47.8625, 1.85, 7),
(6, 'Plage Dorée', 47.853611, 1.841667, 5),
(7, 'Forêt Noire', 47.845833, 1.833333, 6);

-- Insertion des tronçons de randonnée
INSERT INTO TRONCONS (idTroncon, nomUsuel, distance_km, typeSol, denivele_moyen, idEtapeDepart, idEtapeArriver) VALUES
(1, 'Tronçon 1', 5.3, 'Terre', 150, 1, 2),
(2, 'Tronçon 2', 7.2, 'Gravier', 200, 2, 3),
(3, 'Tronçon 3', 8.5, 'Bitume', 300, 3, 4),
(4, 'Tronçon 4', 6.7, 'Terre', 180, 4, 5),
(5, 'Tronçon 5', 3.9, 'Gravier', 100, 5, 6),
(6, 'Tronçon 6', 2.8, 'Bitume', 80, 6, 7),
(7, 'Tronçon 7', 9.1, 'Terre', 250, 1, 5),
(8, 'Tronçon 8', 12.4, 'Bitume', 350, 1, 3);



