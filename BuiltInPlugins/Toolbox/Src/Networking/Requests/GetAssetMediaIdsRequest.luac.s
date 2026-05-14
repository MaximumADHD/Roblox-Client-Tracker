PROTO_0:
        0 JUMPIFNOT                        R0 ; [+13]
        1 GETTABLEKS                       R2 R0 K0 ["responseBody"]
        3 JUMPIFNOT                        R2 ; [+10]
        4 GETTABLEKS                       R3 R0 K0 ["responseBody"]
        6 GETTABLEKS                       R2 R3 K1 ["data"]
        8 JUMPIFNOT                        R2 ; [+5]
        9 GETTABLEKS                       R2 R0 K0 ["responseBody"]
       11 GETTABLEKS                       R1 R2 K1 ["data"]
       13 JUMP                             ; [+2]
       14 NEWTABLE                         R1 0 0
       16 GETUPVAL                         R2 0
       17 GETUPVAL                         R4 1
       18 GETUPVAL                         R5 2
       19 MOVE                             R6 R1
       20 CALL                             R4 2 -1
       21 NAMECALL                         R2 R2 K2 ["dispatch"]
       23 CALL                             R2 -1 0
       24 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["shouldDebugWarnings"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+5]
        5 GETIMPORT                        R1 K2 [warn]
        7 LOADK                            R2 K3 ["Could not get asset media for asset id:"]
        8 GETUPVAL                         R3 1
        9 CALL                             R1 2 0
       10 GETUPVAL                         R1 2
       11 GETUPVAL                         R3 3
       12 MOVE                             R4 R0
       13 CALL                             R3 1 -1
       14 NAMECALL                         R1 R1 K4 ["dispatch"]
       16 CALL                             R1 -1 0
       17 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+46]
        2 NAMECALL                         R1 R0 K0 ["getState"]
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 JUMPIFNOT                        R2 ; [+4]
        7 JUMPIFNOT                        R1 ; [+3]
        8 GETTABLEKS                       R2 R1 K1 ["assetMediaIds"]
       10 JUMPIF                           R2 ; [+36]
       11 JUMPIFNOT                        R1 ; [+36]
       12 GETTABLEKS                       R2 R1 K2 ["assets"]
       14 JUMPIFNOT                        R2 ; [+33]
       15 GETTABLEKS                       R2 R1 K2 ["assets"]
       17 GETTABLEKS                       R2 R2 K3 ["idToAssetMap"]
       19 JUMPIFNOT                        R2 ; [+28]
       20 GETTABLEKS                       R3 R1 K2 ["assets"]
       22 GETTABLEKS                       R3 R3 K3 ["idToAssetMap"]
       24 GETUPVAL                         R4 2
       25 GETTABLE                         R2 R3 R4
       26 JUMPIFNOT                        R2 ; [+21]
       27 GETTABLEKS                       R3 R1 K2 ["assets"]
       29 GETTABLEKS                       R3 R3 K3 ["idToAssetMap"]
       31 GETUPVAL                         R4 2
       32 GETTABLE                         R2 R3 R4
       33 GETTABLEKS                       R2 R2 K4 ["Asset"]
       35 JUMPIFNOT                        R2 ; [+12]
       36 GETTABLEKS                       R3 R1 K2 ["assets"]
       38 GETTABLEKS                       R3 R3 K3 ["idToAssetMap"]
       40 GETUPVAL                         R4 2
       41 GETTABLE                         R2 R3 R4
       42 GETTABLEKS                       R2 R2 K4 ["Asset"]
       44 GETTABLEKS                       R2 R2 K5 ["AssetMediaIds"]
       46 JUMPIFNOT                        R2 ; [+1]
       47 RETURN                           R0 0
       48 GETUPVAL                         R1 3
       49 GETUPVAL                         R3 2
       50 NAMECALL                         R1 R1 K6 ["getAssetMediaIds"]
       52 CALL                             R1 2 1
       53 NEWCLOSURE                       R3 P0
       54 CAPTURE                          VAL R0
       55 CAPTURE                          UPVAL U4
       56 CAPTURE                          UPVAL U2
       57 NEWCLOSURE                       R4 P1
       58 CAPTURE                          UPVAL U5
       59 CAPTURE                          UPVAL U2
       60 CAPTURE                          VAL R0
       61 CAPTURE                          UPVAL U6
       62 NAMECALL                         R1 R1 K7 ["andThen"]
       64 CALL                             R1 3 -1
       65 RETURN                           R1 -1

PROTO_3:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          VAL R3
        2 CAPTURE                          VAL R2
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Src"]
       13 GETTABLEKS                       R1 R1 K4 ["Util"]
       15 GETIMPORT                        R2 K6 [require]
       17 GETTABLEKS                       R3 R1 K7 ["DebugFlags"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K6 [require]
       22 GETTABLEKS                       R4 R0 K3 ["Src"]
       24 GETTABLEKS                       R4 R4 K8 ["Actions"]
       26 GETTABLEKS                       R4 R4 K9 ["NetworkError"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K6 [require]
       31 GETTABLEKS                       R5 R0 K3 ["Src"]
       33 GETTABLEKS                       R5 R5 K8 ["Actions"]
       35 GETTABLEKS                       R5 R5 K10 ["SetAssetMediaIds"]
       37 CALL                             R4 1 1
       38 DUPCLOSURE                       R5 K11 [PROTO_3]
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R3
       42 RETURN                           R5 1
