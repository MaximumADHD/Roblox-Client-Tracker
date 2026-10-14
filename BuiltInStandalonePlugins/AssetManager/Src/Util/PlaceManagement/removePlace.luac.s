PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 1
        4 GETUPVAL                         R1 3
        5 GETTABLEKS                       R1 R1 K0 ["ItemsController"]
        7 MOVE                             R3 R0
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K1 ["Uid"]
       11 NAMECALL                         R1 R1 K2 ["removeItemAndUpdateRender"]
       13 CALL                             R1 3 0
       14 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["Failed to remove place"]
        2 LOADK                            R2 K1 ["WARN"]
        3 CALL                             R0 2 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R4 R3 K0 ["Networking"]
        2 MOVE                             R6 R1
        3 MOVE                             R7 R0
        4 NAMECALL                         R4 R4 K1 ["removePlaceAsync"]
        6 CALL                             R4 3 1
        7 NEWCLOSURE                       R6 P0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          VAL R2
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R3
       12 NAMECALL                         R4 R4 K2 ["andThen"]
       14 CALL                             R4 2 1
       15 DUPCLOSURE                       R6 K3 [PROTO_1]
       16 CAPTURE                          UPVAL U1
       17 NAMECALL                         R4 R4 K4 ["catch"]
       19 CALL                             R4 2 0
       20 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Util"]
       20 GETTABLEKS                       R3 R3 K9 ["PlaceManagement"]
       22 GETTABLEKS                       R3 R3 K10 ["PlaceManagementTypes"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Src"]
       29 GETTABLEKS                       R4 R4 K8 ["Util"]
       31 GETTABLEKS                       R4 R4 K11 ["constructItemPath"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Src"]
       38 GETTABLEKS                       R5 R5 K8 ["Util"]
       40 GETTABLEKS                       R5 R5 K12 ["logIfDebug"]
       42 CALL                             R4 1 1
       43 DUPCLOSURE                       R5 K13 [PROTO_2]
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R4
       46 RETURN                           R5 1
