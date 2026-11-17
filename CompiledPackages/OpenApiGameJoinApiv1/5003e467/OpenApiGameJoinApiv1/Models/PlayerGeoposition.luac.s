MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 LOADK                            R1 K2 ["../../OpenApi"]
        4 CALL                             R0 1 1
        5 GETTABLEKS                       R1 R0 K3 ["Models"]
        7 GETTABLEKS                       R2 R1 K4 ["object"]
        9 DUPTABLE                         R3 K9 [{"Latitude", "Longitude", "CountryId", "AutonomousSystemNumber"}]
       10 GETTABLEKS                       R4 R1 K10 ["Number"]
       12 SETTABLEKS                       R4 R3 K5 ["Latitude"]
       14 GETTABLEKS                       R4 R1 K10 ["Number"]
       16 SETTABLEKS                       R4 R3 K6 ["Longitude"]
       18 GETTABLEKS                       R4 R1 K11 ["Int32"]
       20 SETTABLEKS                       R4 R3 K7 ["CountryId"]
       22 GETTABLEKS                       R4 R1 K12 ["Integer"]
       24 SETTABLEKS                       R4 R3 K8 ["AutonomousSystemNumber"]
       26 CALL                             R2 1 -1
       27 RETURN                           R2 -1
