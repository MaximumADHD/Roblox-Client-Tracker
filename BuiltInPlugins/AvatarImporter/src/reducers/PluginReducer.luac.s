PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["screen"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["SCREENS"]
        5 GETTABLEKS                       R3 R3 K2 ["LOADING"]
        7 JUMPIFNOTEQ                      R2 R3 ; [+4]
        9 GETTABLEKS                       R2 R1 K3 ["force"]
       11 JUMPIFNOT                        R2 ; [+9]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K4 ["Dictionary"]
       15 GETTABLEKS                       R2 R2 K5 ["join"]
       17 MOVE                             R3 R0
       18 DUPTABLE                         R4 K8 [{["enabled"] = False}]
       19 CALL                             R2 2 -1
       20 RETURN                           R2 -1
       21 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Dictionary"]
        3 GETTABLEKS                       R1 R1 K1 ["join"]
        5 MOVE                             R2 R0
        6 DUPTABLE                         R3 K4 [{"enabled", "screen"}]
        7 GETTABLEKS                       R5 R0 K2 ["enabled"]
        9 NOT                              R4 R5
       10 SETTABLEKS                       R4 R3 K2 ["enabled"]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K5 ["SCREENS"]
       15 GETTABLEKS                       R4 R4 K6 ["AVATAR"]
       17 SETTABLEKS                       R4 R3 K3 ["screen"]
       19 CALL                             R1 2 -1
       20 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"screen"}]
        7 GETTABLEKS                       R5 R1 K2 ["screen"]
        9 SETTABLEKS                       R5 R4 K2 ["screen"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"avatarType"}]
        7 GETTABLEKS                       R5 R1 K2 ["avatarType"]
        9 SETTABLEKS                       R5 R4 K2 ["avatarType"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Rodux"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K8 ["src"]
       27 GETTABLEKS                       R4 R4 K9 ["Constants"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R0 K8 ["src"]
       32 GETTABLEKS                       R4 R4 K10 ["actions"]
       34 GETIMPORT                        R5 K4 [require]
       36 GETTABLEKS                       R6 R4 K11 ["ClosePlugin"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K4 [require]
       41 GETTABLEKS                       R7 R4 K12 ["TogglePlugin"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K4 [require]
       46 GETTABLEKS                       R8 R4 K13 ["SetScreen"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K4 [require]
       51 GETTABLEKS                       R9 R4 K14 ["SetOriginalAvatarType"]
       53 CALL                             R8 1 1
       54 GETTABLEKS                       R9 R1 K15 ["createReducer"]
       56 DUPTABLE                         R10 K21 [{["enabled"] = False, ["screen"], ["avatarType"] = }]
       57 GETTABLEKS                       R11 R3 K22 ["SCREENS"]
       59 GETTABLEKS                       R11 R11 K23 ["AVATAR"]
       61 SETTABLEKS                       R11 R10 K18 ["screen"]
       63 NEWTABLE                         R11 4 0
       65 GETTABLEKS                       R12 R5 K24 ["name"]
       67 DUPCLOSURE                       R13 K25 [PROTO_0]
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R2
       70 SETTABLE                         R13 R11 R12
       71 GETTABLEKS                       R12 R6 K24 ["name"]
       73 DUPCLOSURE                       R13 K26 [PROTO_1]
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R3
       76 SETTABLE                         R13 R11 R12
       77 GETTABLEKS                       R12 R7 K24 ["name"]
       79 DUPCLOSURE                       R13 K27 [PROTO_2]
       80 CAPTURE                          VAL R2
       81 SETTABLE                         R13 R11 R12
       82 GETTABLEKS                       R12 R8 K24 ["name"]
       84 DUPCLOSURE                       R13 K28 [PROTO_3]
       85 CAPTURE                          VAL R2
       86 SETTABLE                         R13 R11 R12
       87 CALL                             R9 2 -1
       88 RETURN                           R9 -1
