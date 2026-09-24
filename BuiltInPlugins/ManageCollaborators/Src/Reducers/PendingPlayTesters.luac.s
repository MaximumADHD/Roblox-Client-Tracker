PROTO_0:
        0 DUPTABLE                         R0 K2 [{"CurrentPlayTesters", "OriginRoles"}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["CurrentPlayTesters"]
        5 NEWTABLE                         R1 0 0
        7 SETTABLEKS                       R1 R0 K1 ["OriginRoles"]
        9 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["NewPlayTesters"]
        2 JUMPIF                           R2 ; [+2]
        3 GETTABLEKS                       R2 R0 K1 ["CurrentPlayTesters"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K2 ["Dictionary"]
        8 GETTABLEKS                       R3 R3 K3 ["join"]
       10 MOVE                             R4 R2
       11 NEWTABLE                         R5 1 0
       13 GETTABLEKS                       R6 R1 K4 ["userId"]
       15 DUPTABLE                         R7 K7 [{"Name", "Id"}]
       16 GETTABLEKS                       R8 R1 K8 ["username"]
       18 SETTABLEKS                       R8 R7 K5 ["Name"]
       20 GETTABLEKS                       R8 R1 K4 ["userId"]
       22 SETTABLEKS                       R8 R7 K6 ["Id"]
       24 SETTABLE                         R7 R5 R6
       25 CALL                             R3 2 1
       26 MOVE                             R2 R3
       27 GETUPVAL                         R3 1
       28 GETTABLEKS                       R4 R0 K1 ["CurrentPlayTesters"]
       30 MOVE                             R5 R2
       31 CALL                             R3 2 1
       32 JUMPIFNOT                        R3 ; [+3]
       33 GETUPVAL                         R3 0
       34 GETTABLEKS                       R2 R3 K9 ["None"]
       36 GETUPVAL                         R3 0
       37 GETTABLEKS                       R3 R3 K2 ["Dictionary"]
       39 GETTABLEKS                       R3 R3 K3 ["join"]
       41 MOVE                             R4 R0
       42 DUPTABLE                         R5 K10 [{"NewPlayTesters"}]
       43 SETTABLEKS                       R2 R5 K0 ["NewPlayTesters"]
       45 CALL                             R3 2 -1
       46 RETURN                           R3 -1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["NewPlayTesters"]
        2 JUMPIF                           R2 ; [+2]
        3 GETTABLEKS                       R2 R0 K1 ["CurrentPlayTesters"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K2 ["Dictionary"]
        8 GETTABLEKS                       R3 R3 K3 ["join"]
       10 MOVE                             R4 R2
       11 NEWTABLE                         R5 1 0
       13 GETTABLEKS                       R6 R1 K4 ["userId"]
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R7 R7 K5 ["None"]
       18 SETTABLE                         R7 R5 R6
       19 CALL                             R3 2 1
       20 MOVE                             R2 R3
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R4 R0 K1 ["CurrentPlayTesters"]
       24 MOVE                             R5 R2
       25 CALL                             R3 2 1
       26 JUMPIFNOT                        R3 ; [+3]
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R2 R3 K5 ["None"]
       30 GETUPVAL                         R3 0
       31 GETTABLEKS                       R3 R3 K2 ["Dictionary"]
       33 GETTABLEKS                       R3 R3 K3 ["join"]
       35 MOVE                             R4 R0
       36 DUPTABLE                         R5 K6 [{"NewPlayTesters"}]
       37 SETTABLEKS                       R2 R5 K0 ["NewPlayTesters"]
       39 CALL                             R3 2 -1
       40 RETURN                           R3 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K5 [{"CurrentPlayTesters", "NewPlayTesters", "OriginRoles"}]
        7 GETTABLEKS                       R5 R1 K6 ["playTesters"]
        9 SETTABLEKS                       R5 R4 K2 ["CurrentPlayTesters"]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K7 ["None"]
       14 SETTABLEKS                       R5 R4 K3 ["NewPlayTesters"]
       16 NEWTABLE                         R5 0 0
       18 SETTABLEKS                       R5 R4 K4 ["OriginRoles"]
       20 CALL                             R2 2 -1
       21 RETURN                           R2 -1

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["OriginRoles"]
        2 GETTABLEKS                       R4 R1 K1 ["userId"]
        4 GETTABLE                         R2 R3 R4
        5 JUMPIFEQKNIL                     R2 ; [+2]
        7 RETURN                           R0 1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K2 ["Dictionary"]
       11 GETTABLEKS                       R2 R2 K3 ["join"]
       13 MOVE                             R3 R0
       14 DUPTABLE                         R4 K4 [{"OriginRoles"}]
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K2 ["Dictionary"]
       18 GETTABLEKS                       R5 R5 K3 ["join"]
       20 GETTABLEKS                       R6 R0 K0 ["OriginRoles"]
       22 NEWTABLE                         R7 1 0
       24 GETTABLEKS                       R8 R1 K1 ["userId"]
       26 GETTABLEKS                       R9 R1 K5 ["role"]
       28 SETTABLE                         R9 R7 R8
       29 CALL                             R5 2 1
       30 SETTABLEKS                       R5 R4 K0 ["OriginRoles"]
       32 CALL                             R2 2 -1
       33 RETURN                           R2 -1

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
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Actions"]
       29 GETTABLEKS                       R4 R4 K10 ["AddPendingPlayTester"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K9 ["Actions"]
       38 GETTABLEKS                       R5 R5 K11 ["RemovePendingPlayTester"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K4 [require]
       43 GETTABLEKS                       R6 R0 K8 ["Src"]
       45 GETTABLEKS                       R6 R6 K9 ["Actions"]
       47 GETTABLEKS                       R6 R6 K12 ["SetCurrentPlayTesters"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K4 [require]
       52 GETTABLEKS                       R7 R0 K8 ["Src"]
       54 GETTABLEKS                       R7 R7 K9 ["Actions"]
       56 GETTABLEKS                       R7 R7 K13 ["RecordAudienceOriginRole"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K4 [require]
       61 GETTABLEKS                       R8 R0 K8 ["Src"]
       63 GETTABLEKS                       R8 R8 K14 ["Util"]
       65 GETTABLEKS                       R8 R8 K15 ["IsEqualCheck"]
       67 CALL                             R7 1 1
       68 DUPCLOSURE                       R8 K16 [PROTO_0]
       69 GETTABLEKS                       R9 R1 K17 ["createReducer"]
       71 MOVE                             R10 R8
       72 CALL                             R10 0 1
       73 NEWTABLE                         R11 8 0
       75 DUPCLOSURE                       R12 K18 [PROTO_1]
       76 CAPTURE                          VAL R8
       77 SETTABLEKS                       R12 R11 K19 ["ResetStore"]
       79 GETTABLEKS                       R12 R3 K20 ["name"]
       81 DUPCLOSURE                       R13 K21 [PROTO_2]
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R7
       84 SETTABLE                         R13 R11 R12
       85 GETTABLEKS                       R12 R4 K20 ["name"]
       87 DUPCLOSURE                       R13 K22 [PROTO_3]
       88 CAPTURE                          VAL R2
       89 CAPTURE                          VAL R7
       90 SETTABLE                         R13 R11 R12
       91 GETTABLEKS                       R12 R5 K20 ["name"]
       93 DUPCLOSURE                       R13 K23 [PROTO_4]
       94 CAPTURE                          VAL R2
       95 SETTABLE                         R13 R11 R12
       96 GETTABLEKS                       R12 R6 K20 ["name"]
       98 DUPCLOSURE                       R13 K24 [PROTO_5]
       99 CAPTURE                          VAL R2
      100 SETTABLE                         R13 R11 R12
      101 CALL                             R9 2 -1
      102 RETURN                           R9 -1
