PROTO_0:
        0 NEWTABLE                         R1 4 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["Outdated"]
        5 LOADB                            R3 0
        6 SETTABLE                         R3 R1 R2
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K1 ["Deleted"]
       10 GETTABLEKS                       R4 R0 K2 ["Parent"]
       12 JUMPIFEQKNIL                     R4 ; [+2]
       14 LOADB                            R3 0 +1
       15 LOADB                            R3 1
       16 SETTABLE                         R3 R1 R2
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R2 R3 K3 ["Committed"]
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R3 R4 K4 ["Uncommitted"]
       23 SETTABLE                         R3 R1 R2
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R2 R3 K5 ["Autosaved"]
       27 GETUPVAL                         R4 2
       28 GETTABLEKS                       R3 R4 K6 ["Saved"]
       30 SETTABLE                         R3 R1 R2
       31 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["Draft"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K1 ["Dictionary"]
        5 GETTABLEKS                       R3 R4 K2 ["join"]
        7 MOVE                             R4 R0
        8 NEWTABLE                         R5 1 0
       10 NEWTABLE                         R6 4 0
       12 GETUPVAL                         R8 1
       13 GETTABLEKS                       R7 R8 K3 ["Outdated"]
       15 LOADB                            R8 0
       16 SETTABLE                         R8 R6 R7
       17 GETUPVAL                         R8 1
       18 GETTABLEKS                       R7 R8 K4 ["Deleted"]
       20 GETTABLEKS                       R9 R2 K5 ["Parent"]
       22 JUMPIFEQKNIL                     R9 ; [+2]
       24 LOADB                            R8 0 +1
       25 LOADB                            R8 1
       26 SETTABLE                         R8 R6 R7
       27 GETUPVAL                         R8 1
       28 GETTABLEKS                       R7 R8 K6 ["Committed"]
       30 GETUPVAL                         R9 2
       31 GETTABLEKS                       R8 R9 K7 ["Uncommitted"]
       33 SETTABLE                         R8 R6 R7
       34 GETUPVAL                         R8 1
       35 GETTABLEKS                       R7 R8 K8 ["Autosaved"]
       37 GETUPVAL                         R9 3
       38 GETTABLEKS                       R8 R9 K9 ["Saved"]
       40 SETTABLE                         R8 R6 R7
       41 SETTABLE                         R6 R5 R2
       42 CALL                             R3 2 -1
       43 RETURN                           R3 -1

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["Draft"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K1 ["Dictionary"]
        5 GETTABLEKS                       R3 R4 K2 ["join"]
        7 MOVE                             R4 R0
        8 NEWTABLE                         R5 1 0
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R6 R7 K3 ["None"]
       13 SETTABLE                         R6 R5 R2
       14 CALL                             R3 2 -1
       15 RETURN                           R3 -1

PROTO_3:
        0 GETTABLEKS                       R2 R1 K0 ["Drafts"]
        2 NEWTABLE                         R3 0 0
        4 GETIMPORT                        R4 K2 [ipairs]
        6 MOVE                             R5 R2
        7 CALL                             R4 1 3
        8 FORGPREP_INEXT                   R4
        9 NEWTABLE                         R9 4 0
       11 GETUPVAL                         R11 0
       12 GETTABLEKS                       R10 R11 K3 ["Outdated"]
       14 LOADB                            R11 0
       15 SETTABLE                         R11 R9 R10
       16 GETUPVAL                         R11 0
       17 GETTABLEKS                       R10 R11 K4 ["Deleted"]
       19 GETTABLEKS                       R12 R8 K5 ["Parent"]
       21 JUMPIFEQKNIL                     R12 ; [+2]
       23 LOADB                            R11 0 +1
       24 LOADB                            R11 1
       25 SETTABLE                         R11 R9 R10
       26 GETUPVAL                         R11 0
       27 GETTABLEKS                       R10 R11 K6 ["Committed"]
       29 GETUPVAL                         R12 1
       30 GETTABLEKS                       R11 R12 K7 ["Uncommitted"]
       32 SETTABLE                         R11 R9 R10
       33 GETUPVAL                         R11 0
       34 GETTABLEKS                       R10 R11 K8 ["Autosaved"]
       36 GETUPVAL                         R12 2
       37 GETTABLEKS                       R11 R12 K9 ["Saved"]
       39 SETTABLE                         R11 R9 R10
       40 SETTABLE                         R9 R3 R8
       41 FORGLOOP                         R4 2 [inext] ; [-33]
       43 GETUPVAL                         R6 3
       44 GETTABLEKS                       R5 R6 K10 ["Dictionary"]
       46 GETTABLEKS                       R4 R5 K11 ["join"]
       48 MOVE                             R5 R0
       49 MOVE                             R6 R3
       50 CALL                             R4 2 -1
       51 RETURN                           R4 -1

PROTO_4:
        0 GETTABLEKS                       R2 R1 K0 ["Draft"]
        2 GETTABLEKS                       R3 R1 K1 ["StateType"]
        4 GETTABLEKS                       R4 R1 K2 ["StateValue"]
        6 GETTABLE                         R5 R0 R2
        7 JUMPIFNOTEQKNIL                  R5 ; [+2]
        9 RETURN                           R0 1
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R6 R7 K3 ["Dictionary"]
       13 GETTABLEKS                       R5 R6 K4 ["join"]
       15 MOVE                             R6 R0
       16 NEWTABLE                         R7 1 0
       18 GETUPVAL                         R10 0
       19 GETTABLEKS                       R9 R10 K3 ["Dictionary"]
       21 GETTABLEKS                       R8 R9 K4 ["join"]
       23 GETTABLE                         R9 R0 R2
       24 NEWTABLE                         R10 1 0
       26 SETTABLE                         R4 R10 R3
       27 CALL                             R8 2 1
       28 SETTABLE                         R8 R7 R2
       29 CALL                             R5 2 -1
       30 RETURN                           R5 -1

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
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R6 K9 ["Symbols"]
       29 GETTABLEKS                       R4 R5 K10 ["DraftState"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R7 R0 K8 ["Src"]
       36 GETTABLEKS                       R6 R7 K9 ["Symbols"]
       38 GETTABLEKS                       R5 R6 K11 ["CommitState"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K4 [require]
       43 GETTABLEKS                       R8 R0 K8 ["Src"]
       45 GETTABLEKS                       R7 R8 K9 ["Symbols"]
       47 GETTABLEKS                       R6 R7 K12 ["AutosaveState"]
       49 CALL                             R5 1 1
       50 DUPCLOSURE                       R6 K13 [PROTO_0]
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R5
       54 GETTABLEKS                       R7 R1 K14 ["createReducer"]
       56 NEWTABLE                         R8 0 0
       58 DUPTABLE                         R9 K19 [{"DraftAddedAction", "DraftRemovedAction", "DraftsLoadedAction", "DraftStateChangedAction"}]
       59 DUPCLOSURE                       R10 K20 [PROTO_1]
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R5
       64 SETTABLEKS                       R10 R9 K15 ["DraftAddedAction"]
       66 DUPCLOSURE                       R10 K21 [PROTO_2]
       67 CAPTURE                          VAL R2
       68 SETTABLEKS                       R10 R9 K16 ["DraftRemovedAction"]
       70 DUPCLOSURE                       R10 K22 [PROTO_3]
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R2
       75 SETTABLEKS                       R10 R9 K17 ["DraftsLoadedAction"]
       77 DUPCLOSURE                       R10 K23 [PROTO_4]
       78 CAPTURE                          VAL R2
       79 SETTABLEKS                       R10 R9 K18 ["DraftStateChangedAction"]
       81 CALL                             R7 2 1
       82 RETURN                           R7 1
