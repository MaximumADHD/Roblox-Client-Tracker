PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["isOpen"]
        3 JUMPIFNOT                        R0 ; [+8]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["logCounter"]
        7 GETUPVAL                         R1 2
        8 LOADNIL                          R2
        9 LOADN                            R3 1
       10 CALL                             R0 3 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R0 R1 K1 ["logCounter"]
       15 GETUPVAL                         R1 3
       16 LOADNIL                          R2
       17 LOADN                            R3 1
       18 CALL                             R0 3 0
       19 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["AnalyticsContext"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K0 ["useContext"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R2 R3 K2 ["Context"]
       13 CALL                             R1 1 1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K3 ["useEffect"]
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
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Analytics"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Contexts"]
       25 GETTABLEKS                       R4 R5 K10 ["VisibleContext"]
       27 CALL                             R3 1 1
       28 DUPTABLE                         R4 K16 [{"eventName", "backends", "throttlingPercentage", "lastUpdated", "description"}]
       29 LOADK                            R5 K17 ["AnimationEditorOpened"]
       30 SETTABLEKS                       R5 R4 K11 ["eventName"]
       32 NEWTABLE                         R5 0 1
       34 LOADK                            R6 K18 ["RobloxTelemetryCounter"]
       35 SETLIST                          R5 R6 1 [1]
       37 SETTABLEKS                       R5 R4 K12 ["backends"]
       39 GETIMPORT                        R5 K20 [game]
       41 LOADK                            R7 K21 ["AnimationEditorAnalyticsOpenedThrottlingPercentage"]
       42 LOADN                            R8 16
       43 NAMECALL                         R5 R5 K22 ["DefineFastInt"]
       45 CALL                             R5 3 1
       46 SETTABLEKS                       R5 R4 K13 ["throttlingPercentage"]
       48 LOADK                            R5 K23 ["2026-03-25"]
       49 SETTABLEKS                       R5 R4 K14 ["lastUpdated"]
       51 LOADK                            R5 K24 ["Fired when animation editor opens"]
       52 SETTABLEKS                       R5 R4 K15 ["description"]
       54 DUPTABLE                         R5 K16 [{"eventName", "backends", "throttlingPercentage", "lastUpdated", "description"}]
       55 LOADK                            R6 K25 ["AnimationEditorClosed"]
       56 SETTABLEKS                       R6 R5 K11 ["eventName"]
       58 NEWTABLE                         R6 0 1
       60 LOADK                            R7 K18 ["RobloxTelemetryCounter"]
       61 SETLIST                          R6 R7 1 [1]
       63 SETTABLEKS                       R6 R5 K12 ["backends"]
       65 GETIMPORT                        R6 K20 [game]
       67 LOADK                            R8 K26 ["AnimationEditorAnalyticsClosedThrottlingPercentage"]
       68 LOADN                            R9 16
       69 NAMECALL                         R6 R6 K22 ["DefineFastInt"]
       71 CALL                             R6 3 1
       72 SETTABLEKS                       R6 R5 K13 ["throttlingPercentage"]
       74 LOADK                            R6 K23 ["2026-03-25"]
       75 SETTABLEKS                       R6 R5 K14 ["lastUpdated"]
       77 LOADK                            R6 K27 ["Fired when animation editor closes"]
       78 SETTABLEKS                       R6 R5 K15 ["description"]
       80 DUPCLOSURE                       R6 K28 [PROTO_1]
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R1
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R5
       86 RETURN                           R6 1
