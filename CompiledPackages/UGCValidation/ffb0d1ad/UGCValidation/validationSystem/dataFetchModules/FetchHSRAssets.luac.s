PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 GETUPVAL                         R2 0
        3 NAMECALL                         R0 R0 K2 ["GetObjectsAllOrNone"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["consumerEnv"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["ConsumerEnv"]
        5 GETTABLEKS                       R3 R3 K2 ["IEC"]
        7 JUMPIFNOTEQ                      R2 R3 ; [+4]
        9 NEWTABLE                         R2 0 0
       11 RETURN                           R2 1
       12 NEWTABLE                         R2 0 0
       14 NAMECALL                         R3 R0 K3 ["GetDescendants"]
       16 CALL                             R3 1 1
       17 FASTCALL2                        TABLE_INSERT R3 R0 ; [+5]
       19 MOVE                             R5 R3
       20 MOVE                             R6 R0
       21 GETIMPORT                        R4 K6 [table.insert]
       23 CALL                             R4 2 0
       24 MOVE                             R4 R3
       25 LOADNIL                          R5
       26 LOADNIL                          R6
       27 FORGPREP                         R4
       28 LOADK                            R11 K7 ["WrapLayer"]
       29 NAMECALL                         R9 R8 K8 ["IsA"]
       31 CALL                             R9 2 1
       32 JUMPIFNOT                        R9 ; [+32]
       33 GETTABLEKS                       R9 R8 K9 ["HSRAssetId"]
       35 JUMPIFNOT                        R9 ; [+29]
       36 JUMPIFEQKS                       R9 K10 [""] ; [+28]
       38 GETUPVAL                         R10 1
       39 GETTABLEKS                       R10 R10 K11 ["tryGetAssetIdFromContentId"]
       41 MOVE                             R11 R9
       42 CALL                             R10 1 1
       43 JUMPIFNOT                        R10 ; [+21]
       44 GETTABLE                         R11 R2 R10
       45 JUMPIF                           R11 ; [+19]
       46 GETTABLEKS                       R12 R1 K12 ["preloadedHsrAssets"]
       48 GETTABLE                         R11 R12 R10
       49 JUMPIFNOT                        R11 ; [+2]
       50 SETTABLE                         R11 R2 R10
       51 JUMP                             ; [+13]
       52 GETIMPORT                        R12 K14 [pcall]
       54 NEWCLOSURE                       R13 P0
       55 CAPTURE                          VAL R9
       56 CALL                             R12 1 2
       57 JUMPIF                           R12 ; [+2]
       58 LOADNIL                          R14
       59 RETURN                           R14 1
       60 MOVE                             R14 R13
       61 JUMPIF                           R14 ; [+2]
       62 NEWTABLE                         R14 0 0
       64 SETTABLE                         R14 R2 R10
       65 FORGLOOP                         R4 2 ; [-38]
       67 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["util"]
       13 GETTABLEKS                       R2 R2 K6 ["ParseContentIds"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["validationSystem"]
       20 GETTABLEKS                       R3 R3 K8 ["ValidationEnums"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["util"]
       27 GETTABLEKS                       R4 R4 K9 ["Types"]
       29 CALL                             R3 1 1
       30 NEWTABLE                         R4 1 0
       32 DUPCLOSURE                       R5 K10 [PROTO_1]
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R1
       35 SETTABLEKS                       R5 R4 K11 ["getData"]
       37 RETURN                           R4 1
