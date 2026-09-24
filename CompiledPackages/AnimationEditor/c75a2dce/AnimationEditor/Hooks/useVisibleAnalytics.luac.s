PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isOpen"]
        3 JUMPIFNOT                        R0 ; [+8]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["logCounter"]
        7 GETUPVAL                         R1 2
        8 LOADNIL                          R2
        9 LOADN                            R3 1
       10 CALL                             R0 3 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R0 1
       13 GETTABLEKS                       R0 R0 K1 ["logCounter"]
       15 GETUPVAL                         R1 3
       16 LOADNIL                          R2
       17 LOADN                            R3 1
       18 CALL                             R0 3 0
       19 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["AnalyticsContext"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["useContext"]
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K2 ["Context"]
       13 CALL                             R1 1 1
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K3 ["useEffect"]
       17 NEWCLOSURE                       R3 P0
       18 CAPTURE                          VAL R1
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          UPVAL U4
       22 NEWTABLE                         R4 0 2
       24 GETTABLEKS                       R5 R1 K4 ["isOpen"]
       26 GETTABLEKS                       R6 R0 K5 ["logCounter"]
       28 SETLIST                          R4 R5 2 [1]
       30 CALL                             R2 2 0
       31 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Analytics"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Contexts"]
       25 GETTABLEKS                       R4 R4 K10 ["VisibleContext"]
       27 CALL                             R3 1 1
       28 DUPTABLE                         R4 K19 [{["eventName"] = "AnimationEditorOpened", ["backends"], ["throttlingPercentage"], ["lastUpdated"] = "2026-03-25", ["description"] = "Fired when animation editor opens"}]
       29 NEWTABLE                         R5 0 1
       31 LOADK                            R6 K20 ["RobloxTelemetryCounter"]
       32 SETLIST                          R5 R6 1 [1]
       34 SETTABLEKS                       R5 R4 K13 ["backends"]
       36 GETIMPORT                        R5 K22 [game]
       38 LOADK                            R7 K23 ["AnimationEditorAnalyticsOpenedThrottlingPercentage"]
       39 LOADN                            R8 10000
       40 NAMECALL                         R5 R5 K24 ["DefineFastInt"]
       42 CALL                             R5 3 1
       43 SETTABLEKS                       R5 R4 K14 ["throttlingPercentage"]
       45 DUPTABLE                         R5 K27 [{["eventName"] = "AnimationEditorClosed", ["backends"], ["throttlingPercentage"], ["lastUpdated"] = "2026-03-25", ["description"] = "Fired when animation editor closes"}]
       46 NEWTABLE                         R6 0 1
       48 LOADK                            R7 K20 ["RobloxTelemetryCounter"]
       49 SETLIST                          R6 R7 1 [1]
       51 SETTABLEKS                       R6 R5 K13 ["backends"]
       53 GETIMPORT                        R6 K22 [game]
       55 LOADK                            R8 K28 ["AnimationEditorAnalyticsClosedThrottlingPercentage"]
       56 LOADN                            R9 10000
       57 NAMECALL                         R6 R6 K24 ["DefineFastInt"]
       59 CALL                             R6 3 1
       60 SETTABLEKS                       R6 R5 K14 ["throttlingPercentage"]
       62 DUPCLOSURE                       R6 K29 [PROTO_1]
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R5
       68 RETURN                           R6 1
