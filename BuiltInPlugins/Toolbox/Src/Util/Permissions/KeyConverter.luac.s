PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["GrantAssetPermissionsAction"]
        3 JUMPIFNOTEQ                      R0 R1 ; [+5]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["OwnKey"]
        8 RETURN                           R1 1
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K2 ["UseAction"]
       12 JUMPIFNOTEQ                      R0 R1 ; [+5]
       14 GETUPVAL                         R1 1
       15 GETTABLEKS                       R1 R1 K3 ["UseViewKey"]
       17 RETURN                           R1 1
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K4 ["EditAction"]
       21 JUMPIFNOTEQ                      R0 R1 ; [+5]
       23 GETUPVAL                         R1 1
       24 GETTABLEKS                       R1 R1 K5 ["EditKey"]
       26 RETURN                           R1 1
       27 GETUPVAL                         R1 0
       28 GETTABLEKS                       R1 R1 K6 ["UseViewAction"]
       30 JUMPIFNOTEQ                      R0 R1 ; [+5]
       32 GETUPVAL                         R1 1
       33 GETTABLEKS                       R1 R1 K3 ["UseViewKey"]
       35 RETURN                           R1 1
       36 GETUPVAL                         R1 0
       37 GETTABLEKS                       R1 R1 K7 ["RevokedAction"]
       39 JUMPIFNOTEQ                      R0 R1 ; [+5]
       41 GETUPVAL                         R1 1
       42 GETTABLEKS                       R1 R1 K8 ["NoAccessKey"]
       44 RETURN                           R1 1
       45 JUMPIFNOTEQKNIL                  R0 ; [+5]
       47 GETUPVAL                         R1 1
       48 GETTABLEKS                       R1 R1 K8 ["NoAccessKey"]
       50 RETURN                           R1 1
       51 GETIMPORT                        R1 K10 [error]
       53 LOADK                            R3 K11 ["Unsupported Action: "]
       54 FASTCALL1                        TOSTRING R0 ; [+3]
       55 MOVE                             R5 R0
       56 GETIMPORT                        R4 K13 [tostring]
       58 CALL                             R4 1 1
       59 CONCAT                           R2 R3 R4
       60 CALL                             R1 1 0
       61 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["AccountPermissionLevel"]
        3 JUMPIFNOTEQ                      R0 R1 ; [+5]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K0 ["AccountPermissionLevel"]
        8 RETURN                           R1 1
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K1 ["UniversePermissionLevel"]
       12 JUMPIFNOTEQ                      R0 R1 ; [+5]
       14 GETUPVAL                         R1 1
       15 GETTABLEKS                       R1 R1 K1 ["UniversePermissionLevel"]
       17 RETURN                           R1 1
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K2 ["AssetPermissionLevel"]
       21 JUMPIFNOTEQ                      R0 R1 ; [+5]
       23 GETUPVAL                         R1 1
       24 GETTABLEKS                       R1 R1 K2 ["AssetPermissionLevel"]
       26 RETURN                           R1 1
       27 GETIMPORT                        R1 K4 [error]
       29 LOADK                            R3 K5 ["Unsupported PermissionLevel: "]
       30 FASTCALL1                        TOSTRING R0 ; [+3]
       31 MOVE                             R5 R0
       32 GETIMPORT                        R4 K7 [tostring]
       34 CALL                             R4 1 1
       35 CONCAT                           R2 R3 R4
       36 CALL                             R1 1 0
       37 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["AssetPermissionSource"]
        3 JUMPIFNOTEQ                      R0 R1 ; [+5]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K0 ["AssetPermissionSource"]
        8 RETURN                           R1 1
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K1 ["GroupPermissionSource"]
       12 JUMPIFNOTEQ                      R0 R1 ; [+5]
       14 GETUPVAL                         R1 1
       15 GETTABLEKS                       R1 R1 K1 ["GroupPermissionSource"]
       17 RETURN                           R1 1
       18 GETIMPORT                        R1 K3 [error]
       20 LOADK                            R3 K4 ["Unsupported PermissionSource: "]
       21 FASTCALL1                        TOSTRING R0 ; [+3]
       22 MOVE                             R5 R0
       23 GETIMPORT                        R4 K6 [tostring]
       25 CALL                             R4 1 1
       26 CONCAT                           R2 R3 R4
       27 CALL                             R1 1 0
       28 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["UnknownError"]
        3 JUMPIFNOTEQ                      R1 R3 ; [+32]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["shouldDebugWarnings"]
        8 CALL                             R3 0 1
        9 JUMPIFNOT                        R3 ; [+22]
       10 GETIMPORT                        R3 K3 [warn]
       12 GETIMPORT                        R4 K6 [string.format]
       14 LOADK                            R5 K7 ["Ignoring %s for assetId: %s, webKey: %s"]
       15 FASTCALL1                        TOSTRING R1 ; [+3]
       16 MOVE                             R7 R1
       17 GETIMPORT                        R6 K9 [tostring]
       19 CALL                             R6 1 1
       20 FASTCALL1                        TOSTRING R2 ; [+3]
       21 MOVE                             R8 R2
       22 GETIMPORT                        R7 K9 [tostring]
       24 CALL                             R7 1 1
       25 FASTCALL1                        TOSTRING R0 ; [+3]
       26 MOVE                             R9 R0
       27 GETIMPORT                        R8 K9 [tostring]
       29 CALL                             R8 1 1
       30 CALL                             R4 4 -1
       31 CALL                             R3 -1 0
       32 GETUPVAL                         R3 2
       33 GETTABLEKS                       R3 R3 K10 ["NoneKey"]
       35 RETURN                           R3 1
       36 GETUPVAL                         R3 0
       37 GETTABLEKS                       R3 R3 K11 ["HasPermission"]
       39 JUMPIFNOTEQ                      R1 R3 ; [+7]
       41 GETUPVAL                         R3 3
       42 GETTABLEKS                       R3 R3 K12 ["getInternalAction"]
       44 MOVE                             R4 R0
       45 CALL                             R3 1 -1
       46 RETURN                           R3 -1
       47 GETUPVAL                         R3 0
       48 GETTABLEKS                       R3 R3 K13 ["NoPermission"]
       50 JUMPIFNOTEQ                      R1 R3 ; [+5]
       52 GETUPVAL                         R3 2
       53 GETTABLEKS                       R3 R3 K14 ["NoAccessKey"]
       55 RETURN                           R3 1
       56 GETUPVAL                         R3 0
       57 GETTABLEKS                       R3 R3 K15 ["AssetNotFound"]
       59 JUMPIFNOTEQ                      R1 R3 ; [+19]
       61 GETIMPORT                        R3 K17 [error]
       63 LOADK                            R5 K18 ["Permissions Error: "]
       64 FASTCALL1                        TOSTRING R1 ; [+3]
       65 MOVE                             R10 R1
       66 GETIMPORT                        R9 K9 [tostring]
       68 CALL                             R9 1 1
       69 MOVE                             R6 R9
       70 LOADK                            R7 K19 [", assetId: "]
       71 FASTCALL1                        TOSTRING R2 ; [+3]
       72 MOVE                             R9 R2
       73 GETIMPORT                        R8 K9 [tostring]
       75 CALL                             R8 1 1
       76 CONCAT                           R4 R5 R8
       77 CALL                             R3 1 0
       78 RETURN                           R0 0
       79 GETIMPORT                        R3 K17 [error]
       81 LOADK                            R5 K18 ["Permissions Error: "]
       82 FASTCALL1                        TOSTRING R1 ; [+3]
       83 MOVE                             R10 R1
       84 GETIMPORT                        R9 K9 [tostring]
       86 CALL                             R9 1 1
       87 MOVE                             R6 R9
       88 LOADK                            R7 K19 [", assetId: "]
       89 FASTCALL1                        TOSTRING R2 ; [+3]
       90 MOVE                             R9 R2
       91 GETIMPORT                        R8 K9 [tostring]
       93 CALL                             R8 1 1
       94 CONCAT                           R4 R5 R8
       95 CALL                             R3 1 0
       96 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Components"]
       17 GETTABLEKS                       R2 R2 K7 ["AssetConfiguration"]
       19 GETTABLEKS                       R2 R2 K8 ["Permissions"]
       21 GETTABLEKS                       R2 R2 K9 ["PermissionsConstants"]
       23 CALL                             R1 1 1
       24 GETIMPORT                        R2 K4 [require]
       26 GETTABLEKS                       R3 R0 K5 ["Src"]
       28 GETTABLEKS                       R3 R3 K10 ["Util"]
       30 GETTABLEKS                       R3 R3 K8 ["Permissions"]
       32 GETTABLEKS                       R3 R3 K11 ["Constants"]
       34 CALL                             R2 1 1
       35 GETTABLEKS                       R3 R2 K12 ["webKeys"]
       37 GETTABLEKS                       R4 R2 K13 ["webValues"]
       39 NEWTABLE                         R5 4 0
       41 GETIMPORT                        R6 K4 [require]
       43 GETTABLEKS                       R7 R0 K5 ["Src"]
       45 GETTABLEKS                       R7 R7 K10 ["Util"]
       47 GETTABLEKS                       R7 R7 K14 ["DebugFlags"]
       49 CALL                             R6 1 1
       50 DUPCLOSURE                       R7 K15 [PROTO_0]
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R1
       53 SETTABLEKS                       R7 R5 K16 ["getInternalAction"]
       55 DUPCLOSURE                       R7 K17 [PROTO_1]
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R1
       58 SETTABLEKS                       R7 R5 K18 ["getPermissionLevel"]
       60 DUPCLOSURE                       R7 K19 [PROTO_2]
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R1
       63 SETTABLEKS                       R7 R5 K20 ["getPermissionSource"]
       65 DUPCLOSURE                       R7 K21 [PROTO_3]
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R5
       70 SETTABLEKS                       R7 R5 K22 ["resolveActionPermission"]
       72 RETURN                           R5 1
