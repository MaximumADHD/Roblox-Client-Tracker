PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"SessionStartTimestamp"}]
        3 GETTABLEKS                       R5 R1 K2 ["startTimestamp"]
        5 SETTABLEKS                       R5 R4 K0 ["SessionStartTimestamp"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"PluginFocusPeriodStartTimestamp"}]
        3 GETTABLEKS                       R5 R1 K2 ["focusStartTimestamp"]
        5 SETTABLEKS                       R5 R4 K0 ["PluginFocusPeriodStartTimestamp"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["PluginFocusEndWithStartCount"]
        2 GETTABLEKS                       R3 R0 K1 ["PluginFocusEndWithoutStartCount"]
        4 LOADN                            R4 0
        5 GETTABLEKS                       R5 R0 K2 ["PluginFocusPeriodStartTimestamp"]
        7 JUMPIFNOT                        R5 ; [+7]
        8 GETTABLEKS                       R5 R1 K3 ["focusEndTimestamp"]
       10 GETTABLEKS                       R6 R0 K2 ["PluginFocusPeriodStartTimestamp"]
       12 SUB                              R4 R5 R6
       13 ADDK                             R2 R2 K4 [1]
       14 JUMP                             ; [+1]
       15 ADDK                             R3 R3 K4 [1]
       16 GETTABLEKS                       R6 R0 K5 ["TotalPluginFocusTimeSeconds"]
       18 ADD                              R5 R6 R4
       19 GETUPVAL                         R6 0
       20 MOVE                             R7 R0
       21 DUPTABLE                         R8 K6 [{"PluginFocusPeriodStartTimestamp", "TotalPluginFocusTimeSeconds", "PluginFocusEndWithStartCount", "PluginFocusEndWithoutStartCount"}]
       22 GETUPVAL                         R9 1
       23 GETTABLEKS                       R9 R9 K7 ["None"]
       25 SETTABLEKS                       R9 R8 K2 ["PluginFocusPeriodStartTimestamp"]
       27 SETTABLEKS                       R5 R8 K5 ["TotalPluginFocusTimeSeconds"]
       29 SETTABLEKS                       R2 R8 K0 ["PluginFocusEndWithStartCount"]
       31 SETTABLEKS                       R3 R8 K1 ["PluginFocusEndWithoutStartCount"]
       33 CALL                             R6 2 -1
       34 RETURN                           R6 -1

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
       20 GETTABLEKS                       R3 R3 K7 ["Dash"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["join"]
       25 GETTABLEKS                       R4 R0 K9 ["Src"]
       27 GETTABLEKS                       R4 R4 K10 ["Actions"]
       29 GETIMPORT                        R5 K4 [require]
       31 GETTABLEKS                       R6 R4 K11 ["SessionStats"]
       33 GETTABLEKS                       R6 R6 K12 ["PluginFocusEnd"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K4 [require]
       38 GETTABLEKS                       R7 R4 K11 ["SessionStats"]
       40 GETTABLEKS                       R7 R7 K13 ["PluginFocusStart"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K4 [require]
       45 GETTABLEKS                       R8 R4 K11 ["SessionStats"]
       47 GETTABLEKS                       R8 R8 K14 ["SetSessionStartTimestamp"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K4 [require]
       52 GETTABLEKS                       R9 R0 K9 ["Src"]
       54 GETTABLEKS                       R9 R9 K15 ["Types"]
       56 CALL                             R8 1 1
       57 DUPTABLE                         R9 K24 [{["SessionStartTimestamp"] = 0, ["TotalPluginFocusTimeSeconds"] = 0, ["PluginFocusPeriodStartTimestamp"] = , ["PluginFocusEndWithStartCount"] = 0, ["PluginFocusEndWithoutStartCount"] = 0, ["ButtonPressCounts"]}]
       58 NEWTABLE                         R10 0 0
       60 SETTABLEKS                       R10 R9 K23 ["ButtonPressCounts"]
       62 GETTABLEKS                       R10 R1 K25 ["createReducer"]
       64 MOVE                             R11 R9
       65 NEWTABLE                         R12 4 0
       67 GETTABLEKS                       R13 R7 K26 ["name"]
       69 DUPCLOSURE                       R14 K27 [PROTO_0]
       70 CAPTURE                          VAL R3
       71 SETTABLE                         R14 R12 R13
       72 GETTABLEKS                       R13 R6 K26 ["name"]
       74 DUPCLOSURE                       R14 K28 [PROTO_1]
       75 CAPTURE                          VAL R3
       76 SETTABLE                         R14 R12 R13
       77 GETTABLEKS                       R13 R5 K26 ["name"]
       79 DUPCLOSURE                       R14 K29 [PROTO_2]
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R2
       82 SETTABLE                         R14 R12 R13
       83 CALL                             R10 2 -1
       84 RETURN                           R10 -1
