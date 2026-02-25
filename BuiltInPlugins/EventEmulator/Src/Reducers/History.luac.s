PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 GETTABLEKS                       R3 R0 K2 ["HistoryItems"]
        7 NEWTABLE                         R4 1 0
        9 GETTABLEKS                       R6 R1 K3 ["item"]
       11 GETTABLEKS                       R5 R6 K4 ["Name"]
       13 GETTABLEKS                       R6 R1 K3 ["item"]
       15 SETTABLE                         R6 R4 R5
       16 CALL                             R2 2 1
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R4 R5 K0 ["Dictionary"]
       20 GETTABLEKS                       R3 R4 K1 ["join"]
       22 MOVE                             R4 R0
       23 DUPTABLE                         R5 K5 [{"HistoryItems"}]
       24 SETTABLEKS                       R2 R5 K2 ["HistoryItems"]
       26 CALL                             R3 2 -1
       27 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 GETTABLEKS                       R3 R0 K2 ["HistoryItems"]
        7 NEWTABLE                         R4 1 0
        9 GETTABLEKS                       R5 R1 K3 ["historyItem"]
       11 GETUPVAL                         R7 0
       12 GETTABLEKS                       R6 R7 K4 ["None"]
       14 SETTABLE                         R6 R4 R5
       15 CALL                             R2 2 1
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R4 R5 K0 ["Dictionary"]
       19 GETTABLEKS                       R3 R4 K1 ["join"]
       21 MOVE                             R4 R0
       22 DUPTABLE                         R5 K5 [{"HistoryItems"}]
       23 SETTABLEKS                       R2 R5 K2 ["HistoryItems"]
       25 CALL                             R3 2 -1
       26 RETURN                           R3 -1

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
       29 GETTABLEKS                       R5 R3 K10 ["AddHistoryItem"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K4 [require]
       34 GETTABLEKS                       R6 R3 K11 ["RemoveHistoryItem"]
       36 CALL                             R5 1 1
       37 GETTABLEKS                       R6 R1 K12 ["createReducer"]
       39 DUPTABLE                         R7 K14 [{"HistoryItems"}]
       40 NEWTABLE                         R8 0 0
       42 SETTABLEKS                       R8 R7 K13 ["HistoryItems"]
       44 NEWTABLE                         R8 2 0
       46 GETTABLEKS                       R9 R4 K15 ["name"]
       48 DUPCLOSURE                       R10 K16 [PROTO_0]
       49 CAPTURE                          VAL R2
       50 SETTABLE                         R10 R8 R9
       51 GETTABLEKS                       R9 R5 K15 ["name"]
       53 DUPCLOSURE                       R10 K17 [PROTO_1]
       54 CAPTURE                          VAL R2
       55 SETTABLE                         R10 R8 R9
       56 CALL                             R6 2 -1
       57 RETURN                           R6 -1
