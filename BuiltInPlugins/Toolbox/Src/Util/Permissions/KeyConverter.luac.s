PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["GrantAssetPermissionsAction"]
        3 JUMPIFNOTEQ                      R0 R1 ; [+5]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K1 ["OwnKey"]
        8 RETURN                           R1 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R1 R2 K2 ["UseAction"]
       12 JUMPIFNOTEQ                      R0 R1 ; [+5]
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R1 R2 K3 ["UseViewKey"]
       17 RETURN                           R1 1
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R1 R2 K4 ["EditAction"]
       21 JUMPIFNOTEQ                      R0 R1 ; [+5]
       23 GETUPVAL                         R2 1
       24 GETTABLEKS                       R1 R2 K5 ["EditKey"]
       26 RETURN                           R1 1
       27 GETUPVAL                         R2 0
       28 GETTABLEKS                       R1 R2 K6 ["UseViewAction"]
       30 JUMPIFNOTEQ                      R0 R1 ; [+5]
       32 GETUPVAL                         R2 1
       33 GETTABLEKS                       R1 R2 K3 ["UseViewKey"]
       35 RETURN                           R1 1
       36 GETUPVAL                         R2 0
       37 GETTABLEKS                       R1 R2 K7 ["RevokedAction"]
       39 JUMPIFNOTEQ                      R0 R1 ; [+5]
       41 GETUPVAL                         R2 1
       42 GETTABLEKS                       R1 R2 K8 ["NoAccessKey"]
       44 RETURN                           R1 1
       45 JUMPIFNOTEQKNIL                  R0 ; [+5]
       47 GETUPVAL                         R2 1
       48 GETTABLEKS                       R1 R2 K8 ["NoAccessKey"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["AccountPermissionLevel"]
        3 JUMPIFNOTEQ                      R0 R1 ; [+5]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K0 ["AccountPermissionLevel"]
        8 RETURN                           R1 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R1 R2 K1 ["UniversePermissionLevel"]
       12 JUMPIFNOTEQ                      R0 R1 ; [+5]
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R1 R2 K1 ["UniversePermissionLevel"]
       17 RETURN                           R1 1
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R1 R2 K2 ["AssetPermissionLevel"]
       21 JUMPIFNOTEQ                      R0 R1 ; [+5]
       23 GETUPVAL                         R2 1
       24 GETTABLEKS                       R1 R2 K2 ["AssetPermissionLevel"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["AssetPermissionSource"]
        3 JUMPIFNOTEQ                      R0 R1 ; [+5]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K0 ["AssetPermissionSource"]
        8 RETURN                           R1 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R1 R2 K1 ["GroupPermissionSource"]
       12 JUMPIFNOTEQ                      R0 R1 ; [+5]
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R1 R2 K1 ["GroupPermissionSource"]
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
        1 CALL                             R3 0 1
        2 NOT                              R2 R3
        3 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        5 LOADK                            R3 K0 ["Deprecated by FFlagAACPermissionsPage"]
        6 GETIMPORT                        R1 K2 [assert]
        8 CALL                             R1 2 0
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R1 R2 K3 ["UserSubjectKey"]
       12 JUMPIFNOTEQ                      R0 R1 ; [+5]
       14 GETUPVAL                         R2 2
       15 GETTABLEKS                       R1 R2 K4 ["UserSubject"]
       17 RETURN                           R1 1
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R1 R2 K5 ["GroupSubjectKey"]
       21 JUMPIFNOTEQ                      R0 R1 ; [+5]
       23 GETUPVAL                         R2 2
       24 GETTABLEKS                       R1 R2 K6 ["GroupSubject"]
       26 RETURN                           R1 1
       27 GETUPVAL                         R2 1
       28 GETTABLEKS                       R1 R2 K7 ["RoleSubjectKey"]
       30 JUMPIFNOTEQ                      R0 R1 ; [+5]
       32 GETUPVAL                         R2 2
       33 GETTABLEKS                       R1 R2 K8 ["RoleSubject"]
       35 RETURN                           R1 1
       36 GETIMPORT                        R1 K10 [error]
       38 LOADK                            R3 K11 ["Invalid SubjectType: "]
       39 FASTCALL1                        TOSTRING R0 ; [+3]
       40 MOVE                             R5 R0
       41 GETIMPORT                        R4 K13 [tostring]
       43 CALL                             R4 1 1
       44 CONCAT                           R2 R3 R4
       45 CALL                             R1 1 0
       46 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 NOT                              R2 R3
        3 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        5 LOADK                            R3 K0 ["Deprecated by FFlagAACPermissionsPage"]
        6 GETIMPORT                        R1 K2 [assert]
        8 CALL                             R1 2 0
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R1 R2 K3 ["UseViewKey"]
       12 JUMPIFNOTEQ                      R0 R1 ; [+5]
       14 GETUPVAL                         R2 2
       15 GETTABLEKS                       R1 R2 K4 ["UseViewAction"]
       17 RETURN                           R1 1
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R1 R2 K5 ["EditKey"]
       21 JUMPIFNOTEQ                      R0 R1 ; [+5]
       23 GETUPVAL                         R2 2
       24 GETTABLEKS                       R1 R2 K6 ["EditAction"]
       26 RETURN                           R1 1
       27 GETUPVAL                         R2 1
       28 GETTABLEKS                       R1 R2 K7 ["NoAccessKey"]
       30 JUMPIFNOTEQ                      R0 R1 ; [+5]
       32 GETUPVAL                         R2 2
       33 GETTABLEKS                       R1 R2 K8 ["RevokedAction"]
       35 RETURN                           R1 1
       36 GETUPVAL                         R2 1
       37 GETTABLEKS                       R1 R2 K9 ["RevokedKey"]
       39 JUMPIFNOTEQ                      R0 R1 ; [+5]
       41 GETUPVAL                         R2 2
       42 GETTABLEKS                       R1 R2 K8 ["RevokedAction"]
       44 RETURN                           R1 1
       45 GETIMPORT                        R1 K11 [error]
       47 LOADK                            R3 K12 ["Invalid Action: "]
       48 FASTCALL1                        TOSTRING R0 ; [+3]
       49 MOVE                             R5 R0
       50 GETIMPORT                        R4 K14 [tostring]
       52 CALL                             R4 1 1
       53 CONCAT                           R2 R3 R4
       54 CALL                             R1 1 0
       55 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 NOT                              R2 R3
        3 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        5 LOADK                            R3 K0 ["Deprecated by FFlagAACPermissionsPage"]
        6 GETIMPORT                        R1 K2 [assert]
        8 CALL                             R1 2 0
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R1 R2 K3 ["UseViewAction"]
       12 JUMPIFNOTEQ                      R0 R1 ; [+5]
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R1 R2 K4 ["UseAction"]
       17 RETURN                           R1 1
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R1 R2 K5 ["OwnAction"]
       21 JUMPIFNOTEQ                      R0 R1 ; [+5]
       23 GETUPVAL                         R2 1
       24 GETTABLEKS                       R1 R2 K6 ["EditAction"]
       26 RETURN                           R1 1
       27 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 NOT                              R2 R3
        3 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        5 LOADK                            R3 K0 ["Deprecated by FFlagAACPermissionsPage"]
        6 GETIMPORT                        R1 K2 [assert]
        8 CALL                             R1 2 0
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R1 R2 K3 ["RoleSubject"]
       12 JUMPIFNOTEQ                      R0 R1 ; [+5]
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R1 R2 K4 ["GroupRolesetSubject"]
       17 RETURN                           R1 1
       18 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["UnknownError"]
        3 JUMPIFNOTEQ                      R1 R3 ; [+32]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K1 ["shouldDebugWarnings"]
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
       32 GETUPVAL                         R4 2
       33 GETTABLEKS                       R3 R4 K10 ["NoneKey"]
       35 RETURN                           R3 1
       36 GETUPVAL                         R4 0
       37 GETTABLEKS                       R3 R4 K11 ["HasPermission"]
       39 JUMPIFNOTEQ                      R1 R3 ; [+7]
       41 GETUPVAL                         R4 3
       42 GETTABLEKS                       R3 R4 K12 ["getInternalAction"]
       44 MOVE                             R4 R0
       45 CALL                             R3 1 -1
       46 RETURN                           R3 -1
       47 GETUPVAL                         R4 0
       48 GETTABLEKS                       R3 R4 K13 ["NoPermission"]
       50 JUMPIFNOTEQ                      R1 R3 ; [+5]
       52 GETUPVAL                         R4 2
       53 GETTABLEKS                       R3 R4 K14 ["NoAccessKey"]
       55 RETURN                           R3 1
       56 GETUPVAL                         R4 0
       57 GETTABLEKS                       R3 R4 K15 ["AssetNotFound"]
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
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R6 R0 K5 ["Src"]
       15 GETTABLEKS                       R5 R6 K6 ["Components"]
       17 GETTABLEKS                       R4 R5 K7 ["AssetConfiguration"]
       19 GETTABLEKS                       R3 R4 K8 ["Permissions"]
       21 GETTABLEKS                       R2 R3 K9 ["PermissionsConstants"]
       23 CALL                             R1 1 1
       24 GETIMPORT                        R2 K4 [require]
       26 GETTABLEKS                       R6 R0 K5 ["Src"]
       28 GETTABLEKS                       R5 R6 K10 ["Util"]
       30 GETTABLEKS                       R4 R5 K8 ["Permissions"]
       32 GETTABLEKS                       R3 R4 K11 ["Constants"]
       34 CALL                             R2 1 1
       35 GETTABLEKS                       R3 R2 K12 ["webKeys"]
       37 GETTABLEKS                       R4 R2 K13 ["webValues"]
       39 GETIMPORT                        R5 K4 [require]
       41 GETTABLEKS                       R8 R0 K5 ["Src"]
       43 GETTABLEKS                       R7 R8 K14 ["Flags"]
       45 GETTABLEKS                       R6 R7 K15 ["getFFlagAACPermissionsPage"]
       47 CALL                             R5 1 1
       48 NEWTABLE                         R6 8 0
       50 GETIMPORT                        R7 K4 [require]
       52 GETTABLEKS                       R10 R0 K5 ["Src"]
       54 GETTABLEKS                       R9 R10 K10 ["Util"]
       56 GETTABLEKS                       R8 R9 K16 ["DebugFlags"]
       58 CALL                             R7 1 1
       59 DUPCLOSURE                       R8 K17 [PROTO_0]
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R1
       62 SETTABLEKS                       R8 R6 K18 ["getInternalAction"]
       64 DUPCLOSURE                       R8 K19 [PROTO_1]
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R1
       67 SETTABLEKS                       R8 R6 K20 ["getPermissionLevel"]
       69 DUPCLOSURE                       R8 K21 [PROTO_2]
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R1
       72 SETTABLEKS                       R8 R6 K22 ["getPermissionSource"]
       74 DUPCLOSURE                       R8 K23 [PROTO_3]
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R1
       77 CAPTURE                          VAL R3
       78 SETTABLEKS                       R8 R6 K24 ["getWebSubjectType"]
       80 DUPCLOSURE                       R8 K25 [PROTO_4]
       81 CAPTURE                          VAL R5
       82 CAPTURE                          VAL R1
       83 CAPTURE                          VAL R3
       84 SETTABLEKS                       R8 R6 K26 ["getWebAction"]
       86 DUPCLOSURE                       R8 K27 [PROTO_5]
       87 CAPTURE                          VAL R5
       88 CAPTURE                          VAL R3
       89 SETTABLEKS                       R8 R6 K28 ["getAssetPermissionAction"]
       91 DUPCLOSURE                       R8 K29 [PROTO_6]
       92 CAPTURE                          VAL R5
       93 CAPTURE                          VAL R3
       94 SETTABLEKS                       R8 R6 K30 ["getAssetPermissionSubjectType"]
       96 DUPCLOSURE                       R8 K31 [PROTO_7]
       97 CAPTURE                          VAL R3
       98 CAPTURE                          VAL R7
       99 CAPTURE                          VAL R1
      100 CAPTURE                          VAL R6
      101 SETTABLEKS                       R8 R6 K32 ["resolveActionPermission"]
      103 RETURN                           R6 1
