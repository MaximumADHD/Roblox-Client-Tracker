PROTO_0:
        0 DUPTABLE                         R0 K3 [{[1] = 0, ["CurrentPermissions"]}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K2 ["CurrentPermissions"]
        5 RETURN                           R0 1

PROTO_1:
        0 DUPTABLE                         R2 K3 [{[1] = 0, ["CurrentPermissions"]}]
        1 NEWTABLE                         R3 0 0
        3 SETTABLEKS                       R3 R2 K2 ["CurrentPermissions"]
        5 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"MinimumAge"}]
        7 GETTABLEKS                       R5 R1 K2 ["MinimumAge"]
        9 SETTABLEKS                       R5 R4 K2 ["MinimumAge"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_3:
        0 GETTABLEKS                       R2 R1 K0 ["newPermissions"]
        2 FASTCALL1                        TYPE R2 ; [+3]
        3 MOVE                             R6 R2
        4 GETIMPORT                        R5 K2 [type]
        6 CALL                             R5 1 1
        7 JUMPIFEQKS                       R5 K3 ["table"] ; [+2]
        9 LOADB                            R4 0 +1
       10 LOADB                            R4 1
       11 FASTCALL1                        ASSERT R4 ; [+2]
       12 GETIMPORT                        R3 K5 [assert]
       14 CALL                             R3 1 0
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R4 R0 K6 ["CurrentPermissions"]
       18 MOVE                             R5 R2
       19 CALL                             R3 2 1
       20 JUMPIFNOT                        R3 ; [+3]
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R2 R3 K7 ["None"]
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R3 R3 K8 ["Dictionary"]
       27 GETTABLEKS                       R3 R3 K9 ["join"]
       29 MOVE                             R4 R0
       30 DUPTABLE                         R5 K11 [{"NewPermissions"}]
       31 SETTABLEKS                       R2 R5 K10 ["NewPermissions"]
       33 CALL                             R3 2 -1
       34 RETURN                           R3 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"CurrentPermissions"}]
        7 GETTABLEKS                       R5 R1 K4 ["currentPermissions"]
        9 SETTABLEKS                       R5 R4 K2 ["CurrentPermissions"]
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
       23 GETTABLEKS                       R3 R0 K8 ["Src"]
       25 GETTABLEKS                       R3 R3 K9 ["Actions"]
       27 GETIMPORT                        R4 K4 [require]
       29 GETTABLEKS                       R5 R3 K10 ["SetUserMinimumAge"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K4 [require]
       34 GETTABLEKS                       R6 R3 K11 ["SetUserPermission"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K4 [require]
       39 GETTABLEKS                       R7 R3 K12 ["SetCurrentUserPermissions"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K4 [require]
       44 GETTABLEKS                       R8 R0 K8 ["Src"]
       46 GETTABLEKS                       R8 R8 K13 ["Util"]
       48 GETTABLEKS                       R8 R8 K14 ["IsEqualCheck"]
       50 CALL                             R7 1 1
       51 DUPCLOSURE                       R8 K15 [PROTO_0]
       52 GETTABLEKS                       R9 R1 K16 ["createReducer"]
       54 DUPTABLE                         R10 K20 [{["MinimumAge"] = 0, ["CurrentPermissions"]}]
       55 NEWTABLE                         R11 0 0
       57 SETTABLEKS                       R11 R10 K19 ["CurrentPermissions"]
       59 NEWTABLE                         R11 4 0
       61 DUPCLOSURE                       R12 K21 [PROTO_1]
       62 SETTABLEKS                       R12 R11 K22 ["ResetStore"]
       64 GETTABLEKS                       R12 R4 K23 ["name"]
       66 DUPCLOSURE                       R13 K24 [PROTO_2]
       67 CAPTURE                          VAL R2
       68 SETTABLE                         R13 R11 R12
       69 GETTABLEKS                       R12 R5 K23 ["name"]
       71 DUPCLOSURE                       R13 K25 [PROTO_3]
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R2
       74 SETTABLE                         R13 R11 R12
       75 GETTABLEKS                       R12 R6 K23 ["name"]
       77 DUPCLOSURE                       R13 K26 [PROTO_4]
       78 CAPTURE                          VAL R2
       79 SETTABLE                         R13 R11 R12
       80 CALL                             R9 2 -1
       81 RETURN                           R9 -1
