PROTO_0:
        0 DUPTABLE                         R0 K1 [{"CurrentGroupMetadata"}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["CurrentGroupMetadata"]
        5 RETURN                           R0 1

PROTO_1:
        0 DUPTABLE                         R2 K1 [{"CurrentGroupMetadata"}]
        1 NEWTABLE                         R3 0 0
        3 SETTABLEKS                       R3 R2 K0 ["CurrentGroupMetadata"]
        5 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["newGroupMetadata"]
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
       16 GETTABLEKS                       R4 R0 K6 ["CurrentGroupMetadata"]
       18 MOVE                             R5 R2
       19 CALL                             R3 2 1
       20 JUMPIFNOT                        R3 ; [+3]
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R2 R3 K7 ["None"]
       24 GETUPVAL                         R5 1
       25 GETTABLEKS                       R4 R5 K8 ["Dictionary"]
       27 GETTABLEKS                       R3 R4 K9 ["join"]
       29 MOVE                             R4 R0
       30 DUPTABLE                         R5 K11 [{"NewGroupMetadata"}]
       31 SETTABLEKS                       R2 R5 K10 ["NewGroupMetadata"]
       33 CALL                             R3 2 -1
       34 RETURN                           R3 -1

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"CurrentGroupMetadata"}]
        7 GETTABLEKS                       R5 R1 K4 ["currentGroupMetadata"]
        9 SETTABLEKS                       R5 R4 K2 ["CurrentGroupMetadata"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Rodux"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R3 R4 K9 ["Actions"]
       27 GETIMPORT                        R4 K4 [require]
       29 GETTABLEKS                       R5 R3 K10 ["SetGroupMetadata"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K4 [require]
       34 GETTABLEKS                       R6 R3 K11 ["SetCurrentGroupMetadata"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K4 [require]
       39 GETTABLEKS                       R9 R0 K8 ["Src"]
       41 GETTABLEKS                       R8 R9 K12 ["Util"]
       43 GETTABLEKS                       R7 R8 K13 ["IsEqualCheck"]
       45 CALL                             R6 1 1
       46 DUPCLOSURE                       R7 K14 [PROTO_0]
       47 GETTABLEKS                       R8 R1 K15 ["createReducer"]
       49 DUPTABLE                         R9 K17 [{"CurrentGroupMetadata"}]
       50 NEWTABLE                         R10 0 0
       52 SETTABLEKS                       R10 R9 K16 ["CurrentGroupMetadata"]
       54 NEWTABLE                         R10 4 0
       56 DUPCLOSURE                       R11 K18 [PROTO_1]
       57 SETTABLEKS                       R11 R10 K19 ["ResetStore"]
       59 GETTABLEKS                       R11 R4 K20 ["name"]
       61 DUPCLOSURE                       R12 K21 [PROTO_2]
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R2
       64 SETTABLE                         R12 R10 R11
       65 GETTABLEKS                       R11 R5 K20 ["name"]
       67 DUPCLOSURE                       R12 K22 [PROTO_3]
       68 CAPTURE                          VAL R2
       69 SETTABLE                         R12 R10 R11
       70 CALL                             R8 2 -1
       71 RETURN                           R8 -1
