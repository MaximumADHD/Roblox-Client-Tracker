PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["shouldDebugWarnings"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETIMPORT                        R1 K2 [warn]
        7 LOADK                            R2 K3 ["Lua toolbox: SerializeInstances failed"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R3 2
       11 FASTCALL1                        TOSTRING R0 ; [+3]
       12 MOVE                             R5 R0
       13 GETIMPORT                        R4 K5 [tostring]
       15 CALL                             R4 1 1
       16 CALL                             R3 1 -1
       17 NAMECALL                         R1 R1 K6 ["dispatch"]
       19 CALL                             R1 -1 0
       20 GETUPVAL                         R1 1
       21 GETUPVAL                         R3 3
       22 LOADB                            R4 0
       23 CALL                             R3 1 -1
       24 NAMECALL                         R1 R1 K6 ["dispatch"]
       26 CALL                             R1 -1 0
       27 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 CALL                             R3 1 -1
        4 NAMECALL                         R1 R1 K0 ["dispatch"]
        6 CALL                             R1 -1 0
        7 GETUPVAL                         R1 0
        8 GETUPVAL                         R3 2
        9 LOADB                            R4 0
       10 CALL                             R3 1 -1
       11 NAMECALL                         R1 R1 K0 ["dispatch"]
       13 CALL                             R1 -1 0
       14 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 GETTABLEKS                       R4 R4 K0 ["Name"]
        5 GETUPVAL                         R5 3
        6 GETUPVAL                         R6 4
        7 LOADB                            R7 1
        8 GETUPVAL                         R8 5
        9 GETTABLEKS                       R8 R8 K1 ["AVATAR_MESHPART_ACCESSORY_FORMAT"]
       11 MOVE                             R9 R0
       12 NAMECALL                         R1 R1 K2 ["uploadCatalogItemFormat"]
       14 CALL                             R1 8 1
       15 GETUPVAL                         R3 6
       16 GETUPVAL                         R4 7
       17 NAMECALL                         R1 R1 K3 ["andThen"]
       19 CALL                             R1 3 -1
       20 RETURN                           R1 -1

PROTO_4:
        0 DUPCLOSURE                       R2 K0 [PROTO_0]
        1 NEWCLOSURE                       R3 P1
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 NEWCLOSURE                       R4 P2
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 GETUPVAL                         R5 3
       11 GETUPVAL                         R7 4
       12 GETTABLEN                        R6 R7 1
       13 CALL                             R5 1 1
       14 GETUPVAL                         R6 5
       15 NEWTABLE                         R7 0 1
       17 MOVE                             R8 R5
       18 SETLIST                          R7 R8 1 [1]
       20 GETTABLEKS                       R8 R1 K1 ["StudioAssetService"]
       22 CALL                             R6 2 1
       23 NEWCLOSURE                       R8 P3
       24 CAPTURE                          UPVAL U6
       25 CAPTURE                          UPVAL U7
       26 CAPTURE                          UPVAL U8
       27 CAPTURE                          UPVAL U9
       28 CAPTURE                          UPVAL U10
       29 CAPTURE                          UPVAL U11
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R4
       32 MOVE                             R9 R3
       33 NAMECALL                         R6 R6 K2 ["andThen"]
       35 CALL                             R6 3 -1
       36 RETURN                           R6 -1

PROTO_5:
        0 NEWCLOSURE                       R6 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          VAL R5
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          VAL R0
        8 CAPTURE                          VAL R1
        9 CAPTURE                          VAL R2
       10 CAPTURE                          VAL R3
       11 CAPTURE                          VAL R4
       12 CAPTURE                          UPVAL U5
       13 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Actions"]
       17 GETTABLEKS                       R2 R2 K7 ["NetworkError"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R3 R0 K5 ["Src"]
       24 GETTABLEKS                       R3 R3 K6 ["Actions"]
       26 GETTABLEKS                       R3 R3 K8 ["UploadResult"]
       28 CALL                             R2 1 1
       29 GETTABLEKS                       R3 R0 K5 ["Src"]
       31 GETTABLEKS                       R3 R3 K9 ["Util"]
       33 GETIMPORT                        R4 K4 [require]
       35 GETTABLEKS                       R5 R3 K10 ["DebugFlags"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K4 [require]
       40 GETTABLEKS                       R6 R3 K11 ["AssetConfigConstants"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K4 [require]
       45 GETTABLEKS                       R7 R3 K12 ["SerializeInstances"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K4 [require]
       50 GETTABLEKS                       R8 R3 K13 ["convertSpecialMeshAccessory"]
       52 CALL                             R7 1 1
       53 DUPCLOSURE                       R8 K14 [PROTO_5]
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R5
       60 RETURN                           R8 1
