PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getState"]
        3 CALL                             R0 1 1
        4 JUMPIF                           R0 ; [+9]
        5 DUPTABLE                         R0 K3 [{"categories", "recentModes"}]
        6 NEWTABLE                         R1 0 0
        8 SETTABLEKS                       R1 R0 K1 ["categories"]
       10 NEWTABLE                         R1 0 0
       12 SETTABLEKS                       R1 R0 K2 ["recentModes"]
       14 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["destroy"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["destroy"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_4:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["changed"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 NAMECALL                         R0 R0 K1 ["Connect"]
        7 CALL                             R0 2 1
        8 GETUPVAL                         R1 0
        9 NAMECALL                         R1 R1 K2 ["getState"]
       11 CALL                             R1 1 1
       12 JUMPIFNOT                        R1 ; [+3]
       13 GETUPVAL                         R2 1
       14 MOVE                             R3 R1
       15 CALL                             R2 1 0
       16 NEWCLOSURE                       R2 P1
       17 CAPTURE                          VAL R0
       18 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R4 0
        1 MOVE                             R6 R0
        2 MOVE                             R7 R1
        3 MOVE                             R8 R2
        4 NAMECALL                         R4 R4 K0 ["updateVisualizationModeIsEnabled"]
        6 CALL                             R4 4 0
        7 JUMPIFNOT                        R3 ; [+6]
        8 GETUPVAL                         R4 0
        9 MOVE                             R6 R0
       10 MOVE                             R7 R1
       11 NAMECALL                         R4 R4 K1 ["recordRecentVisualizationMode"]
       13 CALL                             R4 3 0
       14 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["updateVisualizationModeCategoryIsEnabled"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["ContextServices"]
        3 GETTABLEKS                       R0 R1 K1 ["Plugin"]
        5 NAMECALL                         R0 R0 K2 ["use"]
        7 CALL                             R0 1 1
        8 NAMECALL                         R0 R0 K3 ["get"]
       10 CALL                             R0 1 1
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R2 R3 K0 ["ContextServices"]
       14 GETTABLEKS                       R1 R2 K4 ["Analytics"]
       16 NAMECALL                         R1 R1 K2 ["use"]
       18 CALL                             R1 1 1
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R2 R3 K5 ["useState"]
       22 NEWCLOSURE                       R3 P0
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          VAL R0
       25 CALL                             R2 1 1
       26 GETUPVAL                         R4 1
       27 GETTABLEKS                       R3 R4 K5 ["useState"]
       29 NEWCLOSURE                       R4 P1
       30 CAPTURE                          UPVAL U3
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R1
       33 CALL                             R3 1 1
       34 GETUPVAL                         R5 1
       35 GETTABLEKS                       R4 R5 K5 ["useState"]
       37 NEWCLOSURE                       R5 P2
       38 CAPTURE                          VAL R2
       39 CALL                             R4 1 2
       40 GETUPVAL                         R7 1
       41 GETTABLEKS                       R6 R7 K6 ["useEffect"]
       43 NEWCLOSURE                       R7 P3
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R2
       46 NEWTABLE                         R8 0 0
       48 CALL                             R6 2 0
       49 GETUPVAL                         R7 1
       50 GETTABLEKS                       R6 R7 K6 ["useEffect"]
       52 NEWCLOSURE                       R7 P4
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R5
       55 NEWTABLE                         R8 0 0
       57 CALL                             R6 2 0
       58 GETUPVAL                         R7 1
       59 GETTABLEKS                       R6 R7 K7 ["useCallback"]
       61 NEWCLOSURE                       R7 P5
       62 CAPTURE                          VAL R2
       63 NEWTABLE                         R8 0 0
       65 CALL                             R6 2 1
       66 GETUPVAL                         R8 1
       67 GETTABLEKS                       R7 R8 K7 ["useCallback"]
       69 NEWCLOSURE                       R8 P6
       70 CAPTURE                          VAL R2
       71 NEWTABLE                         R9 0 0
       73 CALL                             R7 2 1
       74 GETIMPORT                        R8 K10 [table.freeze]
       76 DUPTABLE                         R9 K15 [{"onVisualizationModeToggle", "onVisualizationModeCategoryToggle", "state", "combiner"}]
       77 SETTABLEKS                       R6 R9 K11 ["onVisualizationModeToggle"]
       79 SETTABLEKS                       R7 R9 K12 ["onVisualizationModeCategoryToggle"]
       81 SETTABLEKS                       R4 R9 K13 ["state"]
       83 SETTABLEKS                       R2 R9 K14 ["combiner"]
       85 CALL                             R8 1 -1
       86 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R4 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K6 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Model"]
       27 GETTABLEKS                       R4 R5 K11 ["VisualizationModeCombiner"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K8 ["Packages"]
       34 GETTABLEKS                       R5 R6 K12 ["Framework"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R9 R0 K6 ["Src"]
       41 GETTABLEKS                       R8 R9 K10 ["Model"]
       43 GETTABLEKS                       R7 R8 K13 ["Telemetry"]
       45 GETTABLEKS                       R6 R7 K14 ["VisualizationModeDurationTelemetry"]
       47 CALL                             R5 1 1
       48 DUPCLOSURE                       R6 K15 [PROTO_10]
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R5
       53 RETURN                           R6 1
