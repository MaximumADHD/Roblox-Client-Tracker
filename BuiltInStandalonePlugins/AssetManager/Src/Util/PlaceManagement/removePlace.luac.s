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
        0 GETUPVAL                         R5 0
        1 CALL                             R5 0 1
        2 JUMPIFNOT                        R5 ; [+9]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K0 ["Networking"]
        6 GETTABLEKS                       R4 R4 K1 ["removePlaceAsync"]
        8 MOVE                             R5 R1
        9 MOVE                             R6 R0
       10 CALL                             R4 2 1
       11 JUMP                             ; [+7]
       12 GETTABLEKS                       R4 R3 K0 ["Networking"]
       14 MOVE                             R6 R1
       15 MOVE                             R7 R0
       16 NAMECALL                         R4 R4 K1 ["removePlaceAsync"]
       18 CALL                             R4 3 1
       19 NEWCLOSURE                       R7 P0
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          VAL R2
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R3
       24 NAMECALL                         R5 R4 K2 ["andThen"]
       26 CALL                             R5 2 1
       27 DUPCLOSURE                       R7 K3 [PROTO_1]
       28 CAPTURE                          UPVAL U3
       29 NAMECALL                         R5 R5 K4 ["catch"]
       31 CALL                             R5 2 0
       32 RETURN                           R0 0

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
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["PlaceManagement"]
       29 GETTABLEKS                       R4 R4 K12 ["PlaceManagementTypes"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K10 ["Util"]
       38 GETTABLEKS                       R5 R5 K13 ["constructItemPath"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K8 ["Src"]
       45 GETTABLEKS                       R6 R6 K10 ["Util"]
       47 GETTABLEKS                       R6 R6 K14 ["logIfDebug"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K8 ["Src"]
       54 GETTABLEKS                       R7 R7 K15 ["Flags"]
       56 GETTABLEKS                       R7 R7 K16 ["getFFlagAmrUseAssetManagementNetworking"]
       58 CALL                             R6 1 1
       59 DUPCLOSURE                       R7 K17 [PROTO_2]
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R5
       64 RETURN                           R7 1
