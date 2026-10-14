PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["refreshItems"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["Failed to add new place"]
        2 LOADK                            R2 K1 ["WARN"]
        3 CALL                             R0 2 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["Networking"]
        2 GETTABLEKS                       R3 R1 K1 ["ItemsController"]
        4 MOVE                             R6 R0
        5 NAMECALL                         R4 R2 K2 ["createPlaceAsync"]
        7 CALL                             R4 2 1
        8 NEWCLOSURE                       R6 P0
        9 CAPTURE                          VAL R3
       10 NAMECALL                         R4 R4 K3 ["andThen"]
       12 CALL                             R4 2 1
       13 DUPCLOSURE                       R6 K4 [PROTO_1]
       14 CAPTURE                          UPVAL U0
       15 NAMECALL                         R4 R4 K5 ["catch"]
       17 CALL                             R4 2 0
       18 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["PlaceManagement"]
       15 GETTABLEKS                       R2 R2 K9 ["PlaceManagementTypes"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K6 ["Src"]
       22 GETTABLEKS                       R3 R3 K7 ["Util"]
       24 GETTABLEKS                       R3 R3 K10 ["logIfDebug"]
       26 CALL                             R2 1 1
       27 DUPCLOSURE                       R3 K11 [PROTO_2]
       28 CAPTURE                          VAL R2
       29 RETURN                           R3 1
