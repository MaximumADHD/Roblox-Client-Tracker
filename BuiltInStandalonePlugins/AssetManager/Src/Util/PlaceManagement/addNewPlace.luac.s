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
        4 GETUPVAL                         R5 0
        5 CALL                             R5 0 1
        6 JUMPIFNOT                        R5 ; [+8]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K0 ["Networking"]
       10 GETTABLEKS                       R4 R4 K2 ["createPlaceAsync"]
       12 MOVE                             R5 R0
       13 CALL                             R4 1 1
       14 JUMP                             ; [+4]
       15 MOVE                             R6 R0
       16 NAMECALL                         R4 R2 K2 ["createPlaceAsync"]
       18 CALL                             R4 2 1
       19 NEWCLOSURE                       R7 P0
       20 CAPTURE                          VAL R3
       21 NAMECALL                         R5 R4 K3 ["andThen"]
       23 CALL                             R5 2 1
       24 DUPCLOSURE                       R7 K4 [PROTO_1]
       25 CAPTURE                          UPVAL U2
       26 NAMECALL                         R5 R5 K5 ["catch"]
       28 CALL                             R5 2 0
       29 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AssetManagement"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["PlaceManagement"]
       22 GETTABLEKS                       R3 R3 K11 ["PlaceManagementTypes"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K8 ["Src"]
       29 GETTABLEKS                       R4 R4 K9 ["Util"]
       31 GETTABLEKS                       R4 R4 K12 ["logIfDebug"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K8 ["Src"]
       38 GETTABLEKS                       R5 R5 K13 ["Flags"]
       40 GETTABLEKS                       R5 R5 K14 ["getFFlagAmrUseAssetManagementNetworking"]
       42 CALL                             R4 1 1
       43 DUPCLOSURE                       R5 K15 [PROTO_2]
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R3
       47 RETURN                           R5 1
