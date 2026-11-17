PROTO_0:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+1]
        2 NOT                              R2 R0
        3 SETUPVAL                         R2 0
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R4 2
        6 GETTABLE                         R2 R3 R4
        7 LENGTH                           R3 R1
        8 LOADN                            R4 0
        9 JUMPIFNOTLT                      R4 R3 ; [+15]
       11 GETUPVAL                         R3 3
       12 GETUPVAL                         R5 3
       13 GETTABLE                         R4 R5 R2
       14 JUMPIF                           R4 ; [+2]
       15 NEWTABLE                         R4 0 0
       17 SETTABLE                         R4 R3 R2
       18 GETUPVAL                         R3 4
       19 GETTABLEKS                       R3 R3 K0 ["append"]
       21 GETUPVAL                         R5 3
       22 GETTABLE                         R4 R5 R2
       23 MOVE                             R5 R1
       24 CALL                             R3 2 0
       25 GETUPVAL                         R3 5
       26 GETUPVAL                         R5 6
       27 LENGTH                           R4 R5
       28 JUMPIFNOTLE                      R3 R4 ; [+4]
       30 GETUPVAL                         R3 7
       31 CALL                             R3 0 0
       32 RETURN                           R0 0
       33 GETUPVAL                         R3 2
       34 ADDK                             R3 R3 K1 [1]
       35 SETUPVAL                         R3 2
       36 GETUPVAL                         R3 2
       37 GETUPVAL                         R5 1
       38 LENGTH                           R4 R5
       39 JUMPIFNOTLE                      R3 R4 ; [+6]
       41 LOADN                            R3 1
       42 SETUPVAL                         R3 5
       43 GETUPVAL                         R3 7
       44 CALL                             R3 0 0
       45 RETURN                           R0 0
       46 GETUPVAL                         R3 8
       47 GETTABLEKS                       R3 R3 K2 ["eventEnd"]
       49 GETUPVAL                         R4 9
       50 GETTABLEKS                       R4 R4 K3 ["BenchmarkingEvent"]
       52 GETTABLEKS                       R4 R4 K4 ["Share"]
       54 CALL                             R3 1 0
       55 GETUPVAL                         R3 10
       56 GETUPVAL                         R5 0
       57 NOT                              R4 R5
       58 GETUPVAL                         R5 3
       59 CALL                             R3 2 0
       60 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETUPVAL                         R1 1
        4 NAMECALL                         R1 R1 K0 ["invalidateAssetSharing"]
        6 CALL                             R1 1 0
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R2 R0 K1 ["success"]
       10 GETTABLEKS                       R3 R0 K2 ["errors"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 LOADB                            R1 0
        4 GETTABLEKS                       R2 R0 K0 ["Action"]
        6 GETTABLEKS                       R3 R0 K1 ["Subject"]
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R4 R4 K2 ["Enums"]
       11 GETTABLEKS                       R4 R4 K3 ["PermissionsSubject"]
       13 GETTABLEKS                       R4 R4 K4 ["Group"]
       15 JUMPIFNOTEQ                      R3 R4 ; [+9]
       17 GETUPVAL                         R3 2
       18 GETTABLEKS                       R3 R3 K2 ["Enums"]
       20 GETTABLEKS                       R3 R3 K5 ["PermissionsAction"]
       22 GETTABLEKS                       R2 R3 K6 ["Use"]
       24 JUMP                             ; [+12]
       25 GETTABLEKS                       R3 R0 K1 ["Subject"]
       27 GETUPVAL                         R4 2
       28 GETTABLEKS                       R4 R4 K2 ["Enums"]
       30 GETTABLEKS                       R4 R4 K3 ["PermissionsSubject"]
       32 GETTABLEKS                       R4 R4 K7 ["Universe"]
       34 JUMPIFNOTEQ                      R3 R4 ; [+2]
       36 LOADB                            R1 1
       37 GETUPVAL                         R7 3
       38 LENGTH                           R6 R7
       39 GETUPVAL                         R7 4
       40 SUB                              R5 R6 R7
       41 ADDK                             R4 R5 K8 [1]
       42 GETUPVAL                         R5 5
       43 GETTABLEKS                       R5 R5 K9 ["ShareBatchAssetMax"]
       45 FASTCALL2                        MATH_MIN R4 R5 ; [+3]
       47 GETIMPORT                        R3 K12 [math.min]
       49 CALL                             R3 2 1
       50 GETUPVAL                         R4 6
       51 GETTABLEKS                       R4 R4 K13 ["slice"]
       53 GETUPVAL                         R5 3
       54 GETUPVAL                         R6 4
       55 GETUPVAL                         R9 4
       56 ADD                              R8 R9 R3
       57 SUBK                             R7 R8 K8 [1]
       58 CALL                             R4 3 1
       59 GETUPVAL                         R5 4
       60 ADD                              R5 R5 R3
       61 SETUPVAL                         R5 4
       62 GETUPVAL                         R5 7
       63 CALL                             R5 0 1
       64 JUMPIFNOT                        R5 ; [+21]
       65 GETUPVAL                         R5 2
       66 GETTABLEKS                       R5 R5 K14 ["Networking"]
       68 GETTABLEKS                       R5 R5 K15 ["grantAssetsPermissionsAsync"]
       70 MOVE                             R6 R4
       71 GETTABLEKS                       R7 R0 K1 ["Subject"]
       73 GETTABLEKS                       R8 R0 K16 ["Id"]
       75 MOVE                             R9 R2
       76 MOVE                             R10 R1
       77 CALL                             R5 5 1
       78 NEWCLOSURE                       R7 P0
       79 CAPTURE                          UPVAL U8
       80 CAPTURE                          UPVAL U9
       81 CAPTURE                          UPVAL U10
       82 NAMECALL                         R5 R5 K17 ["andThen"]
       84 CALL                             R5 2 0
       85 RETURN                           R0 0
       86 GETUPVAL                         R5 11
       87 MOVE                             R7 R4
       88 GETTABLEKS                       R8 R0 K1 ["Subject"]
       90 GETTABLEKS                       R9 R0 K16 ["Id"]
       92 MOVE                             R10 R2
       93 MOVE                             R11 R1
       94 GETUPVAL                         R12 10
       95 NAMECALL                         R5 R5 K15 ["grantAssetsPermissionsAsync"]
       97 CALL                             R5 7 0
       98 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R5 0 0
        2 LOADB                            R6 0
        3 LOADN                            R7 1
        4 LOADN                            R8 1
        5 LOADNIL                          R9
        6 NEWCLOSURE                       R10 P0
        7 CAPTURE                          REF R6
        8 CAPTURE                          VAL R3
        9 CAPTURE                          REF R8
       10 CAPTURE                          VAL R5
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          REF R7
       13 CAPTURE                          VAL R2
       14 CAPTURE                          REF R9
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          VAL R4
       18 NEWCLOSURE                       R9 P1
       19 CAPTURE                          VAL R3
       20 CAPTURE                          REF R8
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          VAL R2
       23 CAPTURE                          REF R7
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          UPVAL U0
       26 CAPTURE                          UPVAL U5
       27 CAPTURE                          UPVAL U6
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R10
       30 CAPTURE                          VAL R0
       31 LENGTH                           R11 R3
       32 LOADN                            R12 0
       33 JUMPIFNOTLT                      R12 R11 ; [+13]
       35 GETUPVAL                         R11 1
       36 GETTABLEKS                       R11 R11 K0 ["eventStart"]
       38 GETUPVAL                         R12 2
       39 GETTABLEKS                       R12 R12 K1 ["BenchmarkingEvent"]
       41 GETTABLEKS                       R12 R12 K2 ["Share"]
       43 CALL                             R11 1 0
       44 MOVE                             R11 R9
       45 CALL                             R11 0 0
       46 JUMP                             ; [+5]
       47 MOVE                             R11 R4
       48 LOADB                            R12 1
       49 NEWTABLE                         R13 0 0
       51 CALL                             R11 2 0
       52 CLOSEUPVALS                      R6
       53 RETURN                           R0 0

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
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Dash"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K9 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Analytics"]
       34 GETTABLEKS                       R5 R5 K10 ["Types"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K9 ["Src"]
       41 GETTABLEKS                       R6 R6 K12 ["Resources"]
       43 GETTABLEKS                       R6 R6 K13 ["Constants"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K9 ["Src"]
       50 GETTABLEKS                       R7 R7 K11 ["Analytics"]
       52 GETTABLEKS                       R7 R7 K14 ["Benchmarking"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K9 ["Src"]
       59 GETTABLEKS                       R8 R8 K15 ["Flags"]
       61 GETTABLEKS                       R8 R8 K16 ["getFFlagAmrAssetDetailView"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K9 ["Src"]
       68 GETTABLEKS                       R9 R9 K15 ["Flags"]
       70 GETTABLEKS                       R9 R9 K17 ["getFFlagAmrUseAssetManagementNetworking"]
       72 CALL                             R8 1 1
       73 DUPCLOSURE                       R9 K18 [PROTO_3]
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R7
       81 RETURN                           R9 1
