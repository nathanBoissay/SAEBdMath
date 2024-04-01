


-- Donner les noms des étapes que nous pouvons atteindre directement en suivant
-- les tronçons qui partent d’Orléans.

SELECT DISTINCT E.nomEtape
FROM ETAPES AS E
INNER JOIN TRONCONS AS T ON E.codeEtape = T.idEtapeArriver
INNER JOIN ETAPES AS O ON O.codeEtape = T.idEtapeDepart
WHERE O.nomEtape = 'Orléans';


--------------------------------------------


-- veuillez fournir la liste des étapes accessibles depuis Orléans avec une seule étape
-- intermédiaire.
SELECT DISTINCT E2.nomEtape
FROM ETAPES AS E1
INNER JOIN TRONCONS AS T1 ON E1.codeEtape = T1.idEtapeDepart
INNER JOIN TRONCONS AS T2 ON T1.idEtapeArriver = T2.idEtapeDepart
INNER JOIN ETAPES AS E2 ON T2.idEtapeArriver = E2.codeEtape
WHERE E1.nomEtape = 'Orléans';



WITH RECURSIVE Chemin(idEtape, nomEtape, idTroncon, nomUsuel, distance_km, typeSol, denivele_moyen, niveauConfort, chemin) AS (
    -- Étape de départ : Orléans
    SELECT 
        E.codeEtape,
        E.nomEtape,
        NULL AS idTroncon,
        NULL AS nomUsuel,
        NULL AS distance_km,
        NULL AS typeSol,
        NULL AS denivele_moyen,
        E.niveauConfort,
        E.nomEtape AS chemin
    FROM ETAPES AS E
    WHERE E.nomEtape = 'Orléans'
    UNION ALL
    -- Tronçons et étapes suivantes
    SELECT 
        E2.codeEtape,
        E2.nomEtape,
        T.idTroncon,
        T.nomUsuel,
        T.distance_km,
        T.typeSol,
        T.denivele_moyen,
        E2.niveauConfort,
        CONCAT(Chemin.chemin, ' -> ', E2.nomEtape) AS chemin
    FROM Chemin
    JOIN TRONCONS AS T ON Chemin.idEtape = T.idEtapeDepart
    JOIN ETAPES AS E2 ON T.idEtapeArriver = E2.codeEtape
)
-- Sélection des résultats
SELECT DISTINCT idEtape, nomEtape, idTroncon, nomUsuel, distance_km, typeSol, denivele_moyen, niveauConfort, chemin
FROM Chemin;
