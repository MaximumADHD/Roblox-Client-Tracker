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
       47 CALL                             R3 0 1
       48 JUMPIFNOT                        R3 ; [+9]
       49 GETUPVAL                         R3 9
       50 GETTABLEKS                       R3 R3 K2 ["eventEnd"]
       52 GETUPVAL                         R4 10
       53 GETTABLEKS                       R4 R4 K3 ["BenchmarkingEvent"]
       55 GETTABLEKS                       R4 R4 K4 ["Share"]
       57 CALL                             R3 1 0
       58 GETUPVAL                         R3 11
       59 GETUPVAL                         R5 0
       60 NOT                              R4 R5
       61 GETUPVAL                         R5 3
       62 CALL                             R3 2 0
       63 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 LOADB                            R1 0
        4 GETTABLEKS                       R2 R0 K0 ["Action"]
        6 GETTABLEKS                       R3 R0 K1 ["Subject"]
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R4 R4 K2 ["PermissionsSubject"]
       11 GETTABLEKS                       R4 R4 K3 ["Group"]
       13 JUMPIFNOTEQ                      R3 R4 ; [+7]
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R3 R3 K4 ["PermissionsAction"]
       18 GETTABLEKS                       R2 R3 K5 ["Use"]
       20 JUMP                             ; [+10]
       21 GETTABLEKS                       R3 R0 K1 ["Subject"]
       23 GETUPVAL                         R4 2
       24 GETTABLEKS                       R4 R4 K2 ["PermissionsSubject"]
       26 GETTABLEKS                       R4 R4 K6 ["Universe"]
       28 JUMPIFNOTEQ                      R3 R4 ; [+2]
       30 LOADB                            R1 1
       31 GETUPVAL                         R7 3
       32 LENGTH                           R6 R7
       33 GETUPVAL                         R7 4
       34 SUB                              R5 R6 R7
       35 ADDK                             R4 R5 K7 [1]
       36 GETUPVAL                         R5 5
       37 GETTABLEKS                       R5 R5 K8 ["ShareBatchAssetMax"]
       39 FASTCALL2                        MATH_MIN R4 R5 ; [+3]
       41 GETIMPORT                        R3 K11 [math.min]
       43 CALL                             R3 2 1
       44 GETUPVAL                         R4 6
       45 GETTABLEKS                       R4 R4 K12 ["slice"]
       47 GETUPVAL                         R5 3
       48 GETUPVAL                         R6 4
       49 GETUPVAL                         R9 4
       50 ADD                              R8 R9 R3
       51 SUBK                             R7 R8 K7 [1]
       52 CALL                             R4 3 1
       53 GETUPVAL                         R5 4
       54 ADD                              R5 R5 R3
       55 SETUPVAL                         R5 4
       56 GETUPVAL                         R5 7
       57 MOVE                             R7 R4
       58 GETTABLEKS                       R8 R0 K1 ["Subject"]
       60 GETTABLEKS                       R9 R0 K13 ["Id"]
       62 MOVE                             R10 R2
       63 MOVE                             R11 R1
       64 GETUPVAL                         R12 8
       65 NAMECALL                         R5 R5 K14 ["grantAssetsPermissionsAsync"]
       67 CALL                             R5 7 0
       68 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R4 0 0
        2 LOADB                            R5 0
        3 LOADN                            R6 1
        4 LOADN                            R7 1
        5 LOADNIL                          R8
        6 NEWCLOSURE                       R9 P0
        7 CAPTURE                          REF R5
        8 CAPTURE                          VAL R2
        9 CAPTURE                          REF R7
       10 CAPTURE                          VAL R4
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          REF R6
       13 CAPTURE                          VAL R1
       14 CAPTURE                          REF R8
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          VAL R3
       19 NEWCLOSURE                       R8 P1
       20 CAPTURE                          VAL R2
       21 CAPTURE                          REF R7
       22 CAPTURE                          UPVAL U4
       23 CAPTURE                          VAL R1
       24 CAPTURE                          REF R6
       25 CAPTURE                          UPVAL U5
       26 CAPTURE                          UPVAL U0
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R9
       29 LENGTH                           R10 R2
       30 LOADN                            R11 0
       31 JUMPIFNOTLT                      R11 R10 ; [+16]
       33 GETUPVAL                         R10 1
       34 CALL                             R10 0 1
       35 JUMPIFNOT                        R10 ; [+9]
       36 GETUPVAL                         R10 2
       37 GETTABLEKS                       R10 R10 K0 ["eventStart"]
       39 GETUPVAL                         R11 3
       40 GETTABLEKS                       R11 R11 K1 ["BenchmarkingEvent"]
       42 GETTABLEKS                       R11 R11 K2 ["Share"]
       44 CALL                             R10 1 0
       45 MOVE                             R10 R8
       46 CALL                             R10 0 0
       47 JUMP                             ; [+5]
       48 MOVE                             R10 R3
       49 LOADB                            R11 1
       50 NEWTABLE                         R12 0 0
       52 CALL                             R10 2 0
       53 CLOSEUPVALS                      R5
       54 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Analytics"]
       27 GETTABLEKS                       R4 R4 K9 ["Types"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K8 ["Src"]
       34 GETTABLEKS                       R5 R5 K11 ["Resources"]
       36 GETTABLEKS                       R5 R5 K12 ["Constants"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K8 ["Src"]
       43 GETTABLEKS                       R6 R6 K10 ["Analytics"]
       45 GETTABLEKS                       R6 R6 K13 ["Benchmarking"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K8 ["Src"]
       52 GETTABLEKS                       R7 R7 K14 ["Flags"]
       54 GETTABLEKS                       R7 R7 K15 ["getFFlagAmrEnableBenchmarking"]
       56 CALL                             R6 1 1
       57 DUPCLOSURE                       R7 K16 [PROTO_2]
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R4
       64 RETURN                           R7 1
