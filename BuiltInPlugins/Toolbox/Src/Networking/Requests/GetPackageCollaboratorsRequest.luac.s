PROTO_0:
        0 NEWTABLE                         R1 2 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["UserSubjectKey"]
        5 NEWTABLE                         R3 0 0
        7 SETTABLE                         R3 R1 R2
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K1 ["GroupSubjectKey"]
       11 NEWTABLE                         R3 0 0
       13 SETTABLE                         R3 R1 R2
       14 GETIMPORT                        R2 K3 [ipairs]
       16 GETTABLEKS                       R3 R0 K4 ["results"]
       18 CALL                             R2 1 3
       19 FORGPREP_INEXT                   R2
       20 GETUPVAL                         R8 1
       21 GETTABLEKS                       R9 R6 K5 ["subjectType"]
       23 GETTABLE                         R7 R8 R9
       24 JUMPIFNOT                        R7 ; [+23]
       25 GETUPVAL                         R9 1
       26 GETTABLEKS                       R10 R6 K6 ["action"]
       28 GETTABLE                         R8 R9 R10
       29 FASTCALL1                        ASSERT R8 ; [+3]
       30 MOVE                             R10 R8
       31 GETIMPORT                        R9 K8 [assert]
       33 CALL                             R9 1 0
       34 GETTABLE                         R9 R1 R7
       35 GETTABLEKS                       R11 R6 K9 ["subjectId"]
       37 FASTCALL1                        TONUMBER R11 ; [+2]
       38 GETIMPORT                        R10 K11 [tonumber]
       40 CALL                             R10 1 1
       41 NEWTABLE                         R11 1 0
       43 GETUPVAL                         R12 0
       44 GETTABLEKS                       R12 R12 K12 ["ActionKey"]
       46 SETTABLE                         R8 R11 R12
       47 SETTABLE                         R11 R9 R10
       48 FORGLOOP                         R2 2 [inext] ; [-29]
       50 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["sendResultToKibana"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R2 R0 K1 ["responseBody"]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 2
       10 GETUPVAL                         R4 3
       11 MOVE                             R5 R1
       12 CALL                             R4 1 -1
       13 NAMECALL                         R2 R2 K2 ["dispatch"]
       15 CALL                             R2 -1 0
       16 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["sendResultToKibana"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R3 2
        7 MOVE                             R4 R0
        8 CALL                             R3 1 -1
        9 NAMECALL                         R1 R1 K1 ["dispatch"]
       11 CALL                             R1 -1 0
       12 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["getAssetPermissions"]
        4 CALL                             R1 2 1
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U4
       10 NEWCLOSURE                       R4 P1
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U5
       14 NAMECALL                         R1 R1 K1 ["andThen"]
       16 CALL                             R1 3 -1
       17 RETURN                           R1 -1

PROTO_4:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Src"]
       13 GETTABLEKS                       R1 R1 K4 ["Actions"]
       15 GETIMPORT                        R2 K6 [require]
       17 GETTABLEKS                       R3 R0 K3 ["Src"]
       19 GETTABLEKS                       R3 R3 K7 ["Util"]
       21 GETTABLEKS                       R3 R3 K8 ["Analytics"]
       23 GETTABLEKS                       R3 R3 K8 ["Analytics"]
       25 CALL                             R2 1 1
       26 GETIMPORT                        R3 K6 [require]
       28 GETTABLEKS                       R4 R1 K9 ["SetCollaborators"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K6 [require]
       33 GETTABLEKS                       R5 R1 K10 ["NetworkError"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K6 [require]
       38 GETTABLEKS                       R6 R0 K3 ["Src"]
       40 GETTABLEKS                       R6 R6 K11 ["Components"]
       42 GETTABLEKS                       R6 R6 K12 ["AssetConfiguration"]
       44 GETTABLEKS                       R6 R6 K13 ["Permissions"]
       46 GETTABLEKS                       R6 R6 K14 ["PermissionsConstants"]
       48 CALL                             R5 1 1
       49 DUPTABLE                         R6 K21 [{"User", "Group", "Use", "UseView", "Edit", "GrantAssetPermissions"}]
       50 GETTABLEKS                       R7 R5 K22 ["UserSubjectKey"]
       52 SETTABLEKS                       R7 R6 K15 ["User"]
       54 GETTABLEKS                       R7 R5 K23 ["GroupSubjectKey"]
       56 SETTABLEKS                       R7 R6 K16 ["Group"]
       58 GETTABLEKS                       R7 R5 K24 ["UseViewKey"]
       60 SETTABLEKS                       R7 R6 K17 ["Use"]
       62 GETTABLEKS                       R7 R5 K24 ["UseViewKey"]
       64 SETTABLEKS                       R7 R6 K18 ["UseView"]
       66 GETTABLEKS                       R7 R5 K25 ["EditKey"]
       68 SETTABLEKS                       R7 R6 K19 ["Edit"]
       70 GETTABLEKS                       R7 R5 K26 ["OwnKey"]
       72 SETTABLEKS                       R7 R6 K20 ["GrantAssetPermissions"]
       74 DUPCLOSURE                       R7 K27 [PROTO_0]
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R6
       77 DUPCLOSURE                       R8 K28 [PROTO_4]
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R4
       82 RETURN                           R8 1
