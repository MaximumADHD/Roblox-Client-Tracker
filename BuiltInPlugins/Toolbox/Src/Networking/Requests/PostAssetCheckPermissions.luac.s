PROTO_0:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 RETURN                           R1 1
        3 NEWTABLE                         R2 0 0
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K0 ["OwnKey"]
        8 LOADN                            R4 4
        9 SETTABLE                         R4 R2 R3
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K1 ["EditKey"]
       13 LOADN                            R4 3
       14 SETTABLE                         R4 R2 R3
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R3 R4 K2 ["UseViewKey"]
       18 LOADN                            R4 2
       19 SETTABLE                         R4 R2 R3
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R3 R4 K3 ["NoAccessKey"]
       23 LOADN                            R4 1
       24 SETTABLE                         R4 R2 R3
       25 GETTABLE                         R3 R2 R1
       26 GETTABLE                         R4 R2 R0
       27 JUMPIFNOTLT                      R4 R3 ; [+2]
       29 RETURN                           R1 1
       30 RETURN                           R0 1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [ipairs]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 3
        6 FORGPREP_INEXT                   R2
        7 GETUPVAL                         R8 0
        8 GETTABLEKS                       R7 R8 K2 ["resolveActionPermission"]
       10 GETTABLEKS                       R8 R6 K3 ["action"]
       12 GETTABLEKS                       R9 R6 K4 ["status"]
       14 GETTABLEKS                       R10 R6 K5 ["assetId"]
       16 CALL                             R7 3 1
       17 GETUPVAL                         R9 1
       18 GETTABLEKS                       R8 R9 K6 ["NoneKey"]
       20 JUMPIFEQ                         R7 R8 ; [+50]
       22 GETTABLEKS                       R10 R6 K5 ["assetId"]
       24 GETTABLE                         R9 R1 R10
       25 JUMPIFNOTEQKNIL                  R9 ; [+3]
       27 MOVE                             R8 R7
       28 JUMP                             ; [+29]
       29 NEWTABLE                         R10 0 0
       31 GETUPVAL                         R12 1
       32 GETTABLEKS                       R11 R12 K7 ["OwnKey"]
       34 LOADN                            R12 4
       35 SETTABLE                         R12 R10 R11
       36 GETUPVAL                         R12 1
       37 GETTABLEKS                       R11 R12 K8 ["EditKey"]
       39 LOADN                            R12 3
       40 SETTABLE                         R12 R10 R11
       41 GETUPVAL                         R12 1
       42 GETTABLEKS                       R11 R12 K9 ["UseViewKey"]
       44 LOADN                            R12 2
       45 SETTABLE                         R12 R10 R11
       46 GETUPVAL                         R12 1
       47 GETTABLEKS                       R11 R12 K10 ["NoAccessKey"]
       49 LOADN                            R12 1
       50 SETTABLE                         R12 R10 R11
       51 GETTABLE                         R11 R10 R7
       52 GETTABLE                         R12 R10 R9
       53 JUMPIFNOTLT                      R12 R11 ; [+3]
       55 MOVE                             R8 R7
       56 JUMP                             ; [+1]
       57 MOVE                             R8 R9
       58 GETUPVAL                         R11 2
       59 GETTABLEKS                       R10 R11 K11 ["Dictionary"]
       61 GETTABLEKS                       R9 R10 K12 ["join"]
       63 MOVE                             R10 R1
       64 NEWTABLE                         R11 1 0
       66 GETTABLEKS                       R12 R6 K5 ["assetId"]
       68 SETTABLE                         R8 R11 R12
       69 CALL                             R9 2 1
       70 MOVE                             R1 R9
       71 FORGLOOP                         R2 2 [inext] ; [-65]
       73 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["sendResultToKibana"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R2 R3 K1 ["List"]
        8 GETTABLEKS                       R1 R2 K2 ["join"]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R4 R0 K3 ["responseBody"]
       13 GETTABLEKS                       R3 R4 K4 ["results"]
       15 CALL                             R1 2 1
       16 SETUPVAL                         R1 1
       17 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["sendResultToKibana"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R3 2
        7 MOVE                             R4 R0
        8 CALL                             R3 1 -1
        9 NAMECALL                         R1 R1 K1 ["dispatch"]
       11 CALL                             R1 -1 0
       12 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LENGTH                           R0 R1
        2 JUMPIFEQKN                       R0 K0 [0] ; [+11]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 0
        6 CALL                             R0 1 1
        7 GETUPVAL                         R1 2
        8 GETUPVAL                         R3 3
        9 MOVE                             R4 R0
       10 CALL                             R3 1 -1
       11 NAMECALL                         R1 R1 K1 ["dispatch"]
       13 CALL                             R1 -1 0
       14 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [pairs]
        4 GETUPVAL                         R3 0
        5 CALL                             R2 1 3
        6 FORGPREP_NEXT                    R2
        7 GETUPVAL                         R8 1
        8 GETTABLEKS                       R7 R8 K2 ["NoAccessKey"]
       10 SETTABLE                         R7 R1 R6
       11 FORGLOOP                         R2 2 ; [-5]
       13 GETUPVAL                         R4 2
       14 MOVE                             R5 R1
       15 CALL                             R4 1 -1
       16 NAMECALL                         R2 R0 K3 ["dispatch"]
       18 CALL                             R2 -1 0
       19 NEWTABLE                         R2 0 3
       21 LOADK                            R3 K4 ["Edit"]
       22 LOADK                            R4 K5 ["Use"]
       23 LOADK                            R5 K6 ["GrantAssetPermissions"]
       24 SETLIST                          R2 R3 3 [1]
       26 NEWTABLE                         R3 0 0
       28 NEWTABLE                         R4 0 0
       30 LOADN                            R7 1
       31 GETUPVAL                         R8 0
       32 LENGTH                           R5 R8
       33 LOADN                            R6 50
       34 FORNPREP                         R5
       35 NEWTABLE                         R8 0 1
       37 GETUPVAL                         R10 0
       38 ADDK                             R12 R7 K7 [49]
       39 FASTCALL3                        TABLE_UNPACK R10 R7 R12
       41 MOVE                             R11 R7
       42 GETIMPORT                        R9 K10 [table.unpack]
       44 CALL                             R9 3 -1
       45 SETLIST                          R8 R9 -1 [1]
       47 MOVE                             R10 R4
       48 GETUPVAL                         R11 3
       49 MOVE                             R13 R2
       50 MOVE                             R14 R8
       51 NAMECALL                         R11 R11 K11 ["postAssetCheckPermissions"]
       53 CALL                             R11 3 1
       54 NEWCLOSURE                       R13 P0
       55 CAPTURE                          UPVAL U4
       56 CAPTURE                          REF R3
       57 CAPTURE                          UPVAL U5
       58 NEWCLOSURE                       R14 P1
       59 CAPTURE                          UPVAL U4
       60 CAPTURE                          VAL R0
       61 CAPTURE                          UPVAL U6
       62 NAMECALL                         R11 R11 K12 ["andThen"]
       64 CALL                             R11 3 -1
       65 FASTCALL                         TABLE_INSERT ; [+2]
       66 GETIMPORT                        R9 K14 [table.insert]
       68 CALL                             R9 -1 0
       69 FORNLOOP                         R5
       70 GETUPVAL                         R6 7
       71 GETTABLEKS                       R5 R6 K15 ["all"]
       73 MOVE                             R6 R4
       74 CALL                             R5 1 1
       75 NEWCLOSURE                       R7 P2
       76 CAPTURE                          REF R3
       77 CAPTURE                          UPVAL U8
       78 CAPTURE                          VAL R0
       79 CAPTURE                          UPVAL U2
       80 NAMECALL                         R5 R5 K12 ["andThen"]
       82 CALL                             R5 2 0
       83 CLOSEUPVALS                      R3
       84 RETURN                           R0 0

PROTO_6:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Cryo"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R6 R0 K7 ["Src"]
       22 GETTABLEKS                       R5 R6 K8 ["Actions"]
       24 GETTABLEKS                       R4 R5 K9 ["SetPackagePermission"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R7 R0 K7 ["Src"]
       31 GETTABLEKS                       R6 R7 K8 ["Actions"]
       33 GETTABLEKS                       R5 R6 K10 ["NetworkError"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K5 [require]
       38 GETTABLEKS                       R10 R0 K7 ["Src"]
       40 GETTABLEKS                       R9 R10 K11 ["Components"]
       42 GETTABLEKS                       R8 R9 K12 ["AssetConfiguration"]
       44 GETTABLEKS                       R7 R8 K13 ["Permissions"]
       46 GETTABLEKS                       R6 R7 K14 ["PermissionsConstants"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K5 [require]
       51 GETTABLEKS                       R10 R0 K7 ["Src"]
       53 GETTABLEKS                       R9 R10 K15 ["Util"]
       55 GETTABLEKS                       R8 R9 K13 ["Permissions"]
       57 GETTABLEKS                       R7 R8 K16 ["KeyConverter"]
       59 CALL                             R6 1 1
       60 GETIMPORT                        R7 K5 [require]
       62 GETTABLEKS                       R11 R0 K7 ["Src"]
       64 GETTABLEKS                       R10 R11 K15 ["Util"]
       66 GETTABLEKS                       R9 R10 K17 ["Analytics"]
       68 GETTABLEKS                       R8 R9 K17 ["Analytics"]
       70 CALL                             R7 1 1
       71 GETIMPORT                        R10 K5 [require]
       73 GETTABLEKS                       R11 R1 K18 ["Framework"]
       75 CALL                             R10 1 1
       76 GETTABLEKS                       R9 R10 K15 ["Util"]
       78 GETTABLEKS                       R8 R9 K19 ["Promise"]
       80 DUPCLOSURE                       R9 K20 [PROTO_0]
       81 CAPTURE                          VAL R5
       82 DUPCLOSURE                       R10 K21 [PROTO_1]
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R2
       86 DUPCLOSURE                       R11 K22 [PROTO_6]
       87 CAPTURE                          VAL R5
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R7
       90 CAPTURE                          VAL R2
       91 CAPTURE                          VAL R4
       92 CAPTURE                          VAL R8
       93 CAPTURE                          VAL R10
       94 RETURN                           R11 1
