PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+11]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R3 2
        5 GETUPVAL                         R4 3
        6 GETUPVAL                         R5 4
        7 NEWTABLE                         R6 0 0
        9 GETUPVAL                         R7 5
       10 CALL                             R3 4 -1
       11 NAMECALL                         R1 R1 K0 ["dispatch"]
       13 CALL                             R1 -1 0
       14 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["shouldDebugWarnings"]
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
        2 GETUPVAL                         R5 2
        3 GETTABLEKS                       R4 R5 K0 ["Name"]
        5 GETUPVAL                         R5 3
        6 GETUPVAL                         R6 4
        7 LOADB                            R7 1
        8 GETUPVAL                         R9 5
        9 GETTABLEKS                       R8 R9 K1 ["AVATAR_MESHPART_ACCESSORY_FORMAT"]
       11 MOVE                             R9 R0
       12 NAMECALL                         R1 R1 K2 ["uploadCatalogItemFormat"]
       14 CALL                             R1 8 1
       15 GETUPVAL                         R3 6
       16 GETUPVAL                         R4 7
       17 NAMECALL                         R1 R1 K3 ["andThen"]
       19 CALL                             R1 3 -1
       20 RETURN                           R1 -1

PROTO_4:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 NEWCLOSURE                       R3 P1
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U6
       11 CAPTURE                          UPVAL U7
       12 NEWCLOSURE                       R4 P2
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U6
       15 CAPTURE                          UPVAL U7
       16 GETUPVAL                         R5 8
       17 GETUPVAL                         R7 9
       18 GETTABLEN                        R6 R7 1
       19 CALL                             R5 1 1
       20 GETUPVAL                         R6 10
       21 NEWTABLE                         R7 0 1
       23 MOVE                             R8 R5
       24 SETLIST                          R7 R8 1 [1]
       26 GETTABLEKS                       R8 R1 K0 ["StudioAssetService"]
       28 CALL                             R6 2 1
       29 NEWCLOSURE                       R8 P3
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          UPVAL U11
       33 CAPTURE                          UPVAL U12
       34 CAPTURE                          UPVAL U13
       35 CAPTURE                          UPVAL U14
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R4
       38 MOVE                             R9 R3
       39 NAMECALL                         R6 R6 K1 ["andThen"]
       41 CALL                             R6 3 -1
       42 RETURN                           R6 -1

PROTO_5:
        0 NEWCLOSURE                       R7 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R6
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          VAL R5
       11 CAPTURE                          UPVAL U6
       12 CAPTURE                          VAL R2
       13 CAPTURE                          VAL R3
       14 CAPTURE                          VAL R4
       15 CAPTURE                          UPVAL U7
       16 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R4 R0 K5 ["Src"]
       15 GETTABLEKS                       R3 R4 K6 ["Actions"]
       17 GETTABLEKS                       R2 R3 K7 ["NetworkError"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R5 R0 K5 ["Src"]
       24 GETTABLEKS                       R4 R5 K6 ["Actions"]
       26 GETTABLEKS                       R3 R4 K8 ["UploadResult"]
       28 CALL                             R2 1 1
       29 GETTABLEKS                       R4 R0 K5 ["Src"]
       31 GETTABLEKS                       R3 R4 K9 ["Util"]
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
       53 GETIMPORT                        R8 K4 [require]
       55 GETTABLEKS                       R11 R0 K5 ["Src"]
       57 GETTABLEKS                       R10 R11 K14 ["Flags"]
       59 GETTABLEKS                       R9 R10 K15 ["getFFlagRemoveItemTags"]
       61 CALL                             R8 1 1
       62 MOVE                             R10 R8
       63 CALL                             R10 0 1
       64 JUMPIFNOT                        R10 ; [+2]
       65 LOADNIL                          R9
       66 JUMP                             ; [+11]
       67 GETIMPORT                        R9 K4 [require]
       69 GETTABLEKS                       R13 R0 K5 ["Src"]
       71 GETTABLEKS                       R12 R13 K16 ["Networking"]
       73 GETTABLEKS                       R11 R12 K17 ["Requests"]
       75 GETTABLEKS                       R10 R11 K18 ["ConfigureItemTagsRequest"]
       77 CALL                             R9 1 1
       78 DUPCLOSURE                       R10 K19 [PROTO_5]
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R9
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R1
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R7
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R5
       87 RETURN                           R10 1
