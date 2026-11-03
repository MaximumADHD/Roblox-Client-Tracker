PROTO_0:
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

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["success"]
        2 GETTABLEKS                       R2 R0 K1 ["results"]
        4 GETUPVAL                         R3 0
        5 JUMPIF                           R3 ; [+1]
        6 NOT                              R3 R1
        7 SETUPVAL                         R3 0
        8 LOADN                            R5 1
        9 GETUPVAL                         R6 1
       10 LENGTH                           R3 R6
       11 LOADN                            R4 1
       12 FORNPREP                         R3
       13 GETUPVAL                         R6 2
       14 GETUPVAL                         R8 1
       15 GETTABLE                         R7 R8 R5
       16 GETTABLE                         R8 R2 R5
       17 SETTABLE                         R8 R6 R7
       18 FORNLOOP                         R3
       19 GETUPVAL                         R3 3
       20 GETUPVAL                         R5 4
       21 LENGTH                           R4 R5
       22 JUMPIFNOTLE                      R3 R4 ; [+4]
       24 GETUPVAL                         R3 5
       25 CALL                             R3 0 0
       26 RETURN                           R0 0
       27 GETUPVAL                         R3 6
       28 GETUPVAL                         R5 0
       29 NOT                              R4 R5
       30 GETUPVAL                         R5 2
       31 CALL                             R3 2 0
       32 RETURN                           R0 0

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
       27 CALL                             R2 0 1
       28 JUMPIFNOT                        R2 ; [+34]
       29 GETUPVAL                         R2 6
       30 GETTABLEKS                       R2 R2 K6 ["Networking"]
       32 GETTABLEKS                       R2 R2 K7 ["checkAssetsPermissionsAsync"]
       34 MOVE                             R3 R1
       35 GETUPVAL                         R4 6
       36 GETTABLEKS                       R4 R4 K8 ["Enums"]
       38 GETTABLEKS                       R4 R4 K9 ["PermissionsSubject"]
       40 GETTABLEKS                       R4 R4 K10 ["User"]
       42 GETUPVAL                         R5 7
       43 GETUPVAL                         R6 6
       44 GETTABLEKS                       R6 R6 K8 ["Enums"]
       46 GETTABLEKS                       R6 R6 K11 ["PermissionsAction"]
       48 GETTABLEKS                       R6 R6 K12 ["GrantAssetPermissions"]
       50 CALL                             R2 4 1
       51 NEWCLOSURE                       R4 P0
       52 CAPTURE                          UPVAL U8
       53 CAPTURE                          UPVAL U4
       54 CAPTURE                          UPVAL U9
       55 CAPTURE                          UPVAL U1
       56 CAPTURE                          UPVAL U0
       57 CAPTURE                          UPVAL U10
       58 CAPTURE                          UPVAL U11
       59 NAMECALL                         R2 R2 K13 ["andThen"]
       61 CALL                             R2 2 0
       62 RETURN                           R0 0
       63 GETUPVAL                         R2 12
       64 MOVE                             R4 R1
       65 GETUPVAL                         R5 6
       66 GETTABLEKS                       R5 R5 K8 ["Enums"]
       68 GETTABLEKS                       R5 R5 K9 ["PermissionsSubject"]
       70 GETTABLEKS                       R5 R5 K10 ["User"]
       72 GETUPVAL                         R6 7
       73 GETUPVAL                         R7 6
       74 GETTABLEKS                       R7 R7 K8 ["Enums"]
       76 GETTABLEKS                       R7 R7 K11 ["PermissionsAction"]
       78 GETTABLEKS                       R7 R7 K12 ["GrantAssetPermissions"]
       80 GETUPVAL                         R8 13
       81 NAMECALL                         R2 R2 K7 ["checkAssetsPermissionsAsync"]
       83 CALL                             R2 6 0
       84 RETURN                           R0 0

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
       25 CAPTURE                          UPVAL U3
       26 CAPTURE                          UPVAL U4
       27 CAPTURE                          VAL R3
       28 CAPTURE                          REF R4
       29 CAPTURE                          VAL R5
       30 CAPTURE                          REF R8
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R0
       33 CAPTURE                          VAL R9
       34 LENGTH                           R10 R1
       35 LOADN                            R11 0
       36 JUMPIFNOTLT                      R11 R10 ; [+4]
       38 MOVE                             R10 R8
       39 CALL                             R10 0 0
       40 JUMP                             ; [+5]
       41 MOVE                             R10 R2
       42 LOADB                            R11 1
       43 NEWTABLE                         R12 0 0
       45 CALL                             R10 2 0
       46 CLOSEUPVALS                      R4
       47 RETURN                           R0 0

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
       32 GETTABLEKS                       R5 R5 K11 ["Resources"]
       34 GETTABLEKS                       R5 R5 K12 ["Constants"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K9 ["Src"]
       41 GETTABLEKS                       R6 R6 K13 ["Util"]
       43 GETTABLEKS                       R6 R6 K14 ["Services"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R6 R5 K15 ["GetService"]
       48 LOADK                            R7 K16 ["StudioService"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K5 [require]
       52 GETTABLEKS                       R8 R0 K9 ["Src"]
       54 GETTABLEKS                       R8 R8 K17 ["Flags"]
       56 GETTABLEKS                       R8 R8 K18 ["getFFlagAmrUseAssetManagementNetworking"]
       58 CALL                             R7 1 1
       59 DUPCLOSURE                       R8 K19 [PROTO_3]
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R1
       65 RETURN                           R8 1
