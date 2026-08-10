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
        9 JUMPIFNOTLT                      R4 R3 ; [+21]
       11 GETUPVAL                         R3 3
       12 CALL                             R3 0 1
       13 JUMPIFNOT                        R3 ; [+15]
       14 GETUPVAL                         R3 4
       15 GETUPVAL                         R5 4
       16 GETTABLE                         R4 R5 R2
       17 JUMPIF                           R4 ; [+2]
       18 NEWTABLE                         R4 0 0
       20 SETTABLE                         R4 R3 R2
       21 GETUPVAL                         R3 5
       22 GETTABLEKS                       R3 R3 K0 ["append"]
       24 GETUPVAL                         R5 4
       25 GETTABLE                         R4 R5 R2
       26 MOVE                             R5 R1
       27 CALL                             R3 2 0
       28 JUMP                             ; [+2]
       29 GETUPVAL                         R3 4
       30 SETTABLE                         R1 R3 R2
       31 GETUPVAL                         R3 3
       32 CALL                             R3 0 1
       33 JUMPIFNOT                        R3 ; [+8]
       34 GETUPVAL                         R3 6
       35 GETUPVAL                         R5 7
       36 LENGTH                           R4 R5
       37 JUMPIFNOTLE                      R3 R4 ; [+4]
       39 GETUPVAL                         R3 8
       40 CALL                             R3 0 0
       41 RETURN                           R0 0
       42 GETUPVAL                         R3 2
       43 ADDK                             R3 R3 K1 [1]
       44 SETUPVAL                         R3 2
       45 GETUPVAL                         R3 2
       46 GETUPVAL                         R5 1
       47 LENGTH                           R4 R5
       48 JUMPIFNOTLE                      R3 R4 ; [+6]
       50 LOADN                            R3 1
       51 SETUPVAL                         R3 6
       52 GETUPVAL                         R3 8
       53 CALL                             R3 0 0
       54 RETURN                           R0 0
       55 GETUPVAL                         R3 9
       56 GETUPVAL                         R5 0
       57 NOT                              R4 R5
       58 GETUPVAL                         R5 4
       59 CALL                             R3 2 0
       60 RETURN                           R0 0

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
       31 GETUPVAL                         R3 3
       32 CALL                             R3 0 1
       33 JUMPIFNOT                        R3 ; [+38]
       34 GETUPVAL                         R7 4
       35 LENGTH                           R6 R7
       36 GETUPVAL                         R7 5
       37 SUB                              R5 R6 R7
       38 ADDK                             R4 R5 K7 [1]
       39 GETUPVAL                         R5 6
       40 GETTABLEKS                       R5 R5 K8 ["ShareBatchAssetMax"]
       42 FASTCALL2                        MATH_MIN R4 R5 ; [+3]
       44 GETIMPORT                        R3 K11 [math.min]
       46 CALL                             R3 2 1
       47 GETUPVAL                         R4 7
       48 GETTABLEKS                       R4 R4 K12 ["slice"]
       50 GETUPVAL                         R5 4
       51 GETUPVAL                         R6 5
       52 GETUPVAL                         R9 5
       53 ADD                              R8 R9 R3
       54 SUBK                             R7 R8 K7 [1]
       55 CALL                             R4 3 1
       56 GETUPVAL                         R5 5
       57 ADD                              R5 R5 R3
       58 SETUPVAL                         R5 5
       59 GETUPVAL                         R5 8
       60 MOVE                             R7 R4
       61 GETTABLEKS                       R8 R0 K1 ["Subject"]
       63 GETTABLEKS                       R9 R0 K13 ["Id"]
       65 MOVE                             R10 R2
       66 MOVE                             R11 R1
       67 GETUPVAL                         R12 9
       68 NAMECALL                         R5 R5 K14 ["grantAssetsPermissionsAsync"]
       70 CALL                             R5 7 0
       71 RETURN                           R0 0
       72 GETUPVAL                         R3 8
       73 GETUPVAL                         R5 4
       74 GETTABLEKS                       R6 R0 K1 ["Subject"]
       76 GETTABLEKS                       R7 R0 K13 ["Id"]
       78 MOVE                             R8 R2
       79 MOVE                             R9 R1
       80 GETUPVAL                         R10 9
       81 NAMECALL                         R3 R3 K14 ["grantAssetsPermissionsAsync"]
       83 CALL                             R3 7 0
       84 RETURN                           R0 0

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
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          VAL R4
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          REF R6
       14 CAPTURE                          VAL R1
       15 CAPTURE                          REF R8
       16 CAPTURE                          VAL R3
       17 NEWCLOSURE                       R8 P1
       18 CAPTURE                          VAL R2
       19 CAPTURE                          REF R7
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          VAL R1
       23 CAPTURE                          REF R6
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          UPVAL U1
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R9
       28 LENGTH                           R10 R2
       29 LOADN                            R11 0
       30 JUMPIFNOTLT                      R11 R10 ; [+4]
       32 MOVE                             R10 R8
       33 CALL                             R10 0 0
       34 JUMP                             ; [+5]
       35 MOVE                             R10 R3
       36 LOADB                            R11 1
       37 NEWTABLE                         R12 0 0
       39 CALL                             R10 2 0
       40 CLOSEUPVALS                      R5
       41 RETURN                           R0 0

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
       25 GETTABLEKS                       R4 R4 K10 ["Resources"]
       27 GETTABLEKS                       R4 R4 K11 ["Constants"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K8 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Flags"]
       36 GETTABLEKS                       R5 R5 K13 ["getFFlagAmrRaiseShareLimits"]
       38 CALL                             R4 1 1
       39 DUPCLOSURE                       R5 K14 [PROTO_2]
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R3
       44 RETURN                           R5 1
