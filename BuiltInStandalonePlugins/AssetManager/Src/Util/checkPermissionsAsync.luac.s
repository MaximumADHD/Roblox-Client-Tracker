PROTO_0:
        0 GETUPVAL                         R3 0
        1 NAMECALL                         R3 R3 K0 ["GetUserId"]
        3 CALL                             R3 1 1
        4 MOVE                             R6 R1
        5 GETUPVAL                         R7 1
        6 GETTABLEKS                       R7 R7 K1 ["PermissionsSubject"]
        8 GETTABLEKS                       R7 R7 K2 ["User"]
       10 MOVE                             R8 R3
       11 GETUPVAL                         R9 1
       12 GETTABLEKS                       R9 R9 K3 ["PermissionsAction"]
       14 GETTABLEKS                       R9 R9 K4 ["GrantAssetPermissions"]
       16 MOVE                             R10 R2
       17 NAMECALL                         R4 R0 K5 ["checkAssetsPermissionsAsync"]
       19 CALL                             R4 6 0
       20 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+1]
        2 NOT                              R2 R0
        3 SETUPVAL                         R2 0
        4 LOADN                            R4 1
        5 GETUPVAL                         R5 1
        6 LENGTH                           R2 R5
        7 LOADN                            R3 1
        8 FORNPREP                         R2
        9 GETUPVAL                         R5 2
       10 GETUPVAL                         R7 1
       11 GETTABLE                         R6 R7 R4
       12 GETTABLE                         R7 R1 R4
       13 SETTABLE                         R7 R5 R6
       14 FORNLOOP                         R2
       15 GETUPVAL                         R2 3
       16 GETUPVAL                         R4 4
       17 LENGTH                           R3 R4
       18 JUMPIFNOTLE                      R2 R3 ; [+4]
       20 GETUPVAL                         R2 5
       21 CALL                             R2 0 0
       22 RETURN                           R0 0
       23 GETUPVAL                         R2 6
       24 GETUPVAL                         R4 0
       25 NOT                              R3 R4
       26 GETUPVAL                         R4 2
       27 CALL                             R2 2 0
       28 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R4 0
        1 LENGTH                           R3 R4
        2 GETUPVAL                         R4 1
        3 SUB                              R2 R3 R4
        4 ADDK                             R1 R2 K0 [1]
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K1 ["ShareBatchAssetMax"]
        8 FASTCALL2                        MATH_MIN R1 R2 ; [+3]
       10 GETIMPORT                        R0 K4 [math.min]
       12 CALL                             R0 2 1
       13 GETUPVAL                         R1 3
       14 GETTABLEKS                       R1 R1 K5 ["slice"]
       16 GETUPVAL                         R2 0
       17 GETUPVAL                         R3 1
       18 GETUPVAL                         R6 1
       19 ADD                              R5 R6 R0
       20 SUBK                             R4 R5 K0 [1]
       21 CALL                             R1 3 1
       22 GETUPVAL                         R2 1
       23 ADD                              R2 R2 R0
       24 SETUPVAL                         R2 1
       25 SETUPVAL                         R1 4
       26 GETUPVAL                         R2 5
       27 MOVE                             R4 R1
       28 GETUPVAL                         R5 6
       29 GETTABLEKS                       R5 R5 K6 ["PermissionsSubject"]
       31 GETTABLEKS                       R5 R5 K7 ["User"]
       33 GETUPVAL                         R6 7
       34 GETUPVAL                         R7 6
       35 GETTABLEKS                       R7 R7 K8 ["PermissionsAction"]
       37 GETTABLEKS                       R7 R7 K9 ["GrantAssetPermissions"]
       39 GETUPVAL                         R8 8
       40 NAMECALL                         R2 R2 K10 ["checkAssetsPermissionsAsync"]
       42 CALL                             R2 6 0
       43 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 NAMECALL                         R3 R3 K0 ["GetUserId"]
        3 CALL                             R3 1 1
        4 LOADB                            R4 0
        5 NEWTABLE                         R5 0 0
        7 LOADN                            R6 1
        8 NEWTABLE                         R7 0 0
       10 LOADNIL                          R8
       11 NEWCLOSURE                       R9 P0
       12 CAPTURE                          REF R4
       13 CAPTURE                          REF R7
       14 CAPTURE                          VAL R5
       15 CAPTURE                          REF R6
       16 CAPTURE                          VAL R1
       17 CAPTURE                          REF R8
       18 CAPTURE                          VAL R2
       19 NEWCLOSURE                       R8 P1
       20 CAPTURE                          VAL R1
       21 CAPTURE                          REF R6
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          REF R7
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R9
       29 LENGTH                           R10 R1
       30 LOADN                            R11 0
       31 JUMPIFNOTLT                      R11 R10 ; [+4]
       33 MOVE                             R10 R8
       34 CALL                             R10 0 0
       35 JUMP                             ; [+5]
       36 MOVE                             R10 R2
       37 LOADB                            R11 1
       38 NEWTABLE                         R12 0 0
       40 CALL                             R10 2 0
       41 CLOSEUPVALS                      R4
       42 RETURN                           R0 0

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
       34 GETTABLEKS                       R5 R5 K12 ["Util"]
       36 GETTABLEKS                       R5 R5 K13 ["Services"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R4 K14 ["GetService"]
       41 LOADK                            R6 K15 ["StudioService"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K5 [require]
       45 GETTABLEKS                       R7 R0 K8 ["Src"]
       47 GETTABLEKS                       R7 R7 K16 ["Flags"]
       49 GETTABLEKS                       R7 R7 K17 ["getFFlagAmrRaiseShareLimits"]
       51 CALL                             R6 1 1
       52 DUPCLOSURE                       R7 K18 [PROTO_0]
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R2
       55 DUPCLOSURE                       R8 K19 [PROTO_3]
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R2
       60 MOVE                             R10 R6
       61 CALL                             R10 0 1
       62 JUMPIFNOT                        R10 ; [+2]
       63 MOVE                             R9 R8
       64 RETURN                           R9 1
       65 MOVE                             R9 R7
       66 RETURN                           R9 1
