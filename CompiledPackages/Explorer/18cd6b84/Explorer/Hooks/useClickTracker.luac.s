PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOTEQ                      R0 R1 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 0
        7 SETTABLEKS                       R0 R1 K0 ["current"]
        9 JUMPIFNOT                        R0 ; [+12]
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K0 ["current"]
       13 JUMPIFNOTEQKNIL                  R1 ; [+8]
       15 GETUPVAL                         R1 1
       16 GETIMPORT                        R2 K3 [os.clock]
       18 CALL                             R2 0 1
       19 SETTABLEKS                       R2 R1 K0 ["current"]
       21 RETURN                           R0 0
       22 JUMPIF                           R0 ; [+4]
       23 GETUPVAL                         R1 1
       24 LOADNIL                          R2
       25 SETTABLEKS                       R2 R1 K0 ["current"]
       27 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFEQ                         R1 R2 ; [+8]
        6 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        8 GETIMPORT                        R2 K5 [Enum.UserInputType.MouseButton2]
       10 JUMPIFEQ                         R1 R2 ; [+2]
       12 RETURN                           R0 0
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K6 ["logCounter"]
       16 GETUPVAL                         R2 1
       17 CALL                             R1 1 0
       18 GETUPVAL                         R1 2
       19 GETTABLEKS                       R1 R1 K7 ["current"]
       21 JUMPIFNOTEQKNIL                  R1 ; [+2]
       23 RETURN                           R0 0
       24 GETIMPORT                        R3 K10 [os.clock]
       26 CALL                             R3 0 1
       27 SUB                              R2 R3 R1
       28 GETUPVAL                         R3 2
       29 LOADNIL                          R4
       30 SETTABLEKS                       R4 R3 K7 ["current"]
       32 GETUPVAL                         R3 0
       33 GETTABLEKS                       R3 R3 K11 ["logStat"]
       35 DUPTABLE                         R4 K20 [{["eventName"] = "LuaExplorerTimeToFirstClickAfterHovering", ["backends"], ["throttlingPercentage"], ["description"] = "Time since hovering over the window before the user takes their first click or right-click.", ["lastUpdated"] = "2024-12-03"}]
       36 NEWTABLE                         R5 0 1
       38 LOADK                            R6 K21 ["RobloxTelemetryStat"]
       39 SETLIST                          R5 R6 1 [1]
       41 SETTABLEKS                       R5 R4 K14 ["backends"]
       43 GETIMPORT                        R5 K23 [game]
       45 LOADK                            R7 K24 ["LuaExplorerTimeToFirstClickAfterHoveirngThrottlingHundredthsPercent"]
       46 LOADN                            R8 10000
       47 NAMECALL                         R5 R5 K25 ["DefineFastInt"]
       49 CALL                             R5 3 1
       50 SETTABLEKS                       R5 R4 K15 ["throttlingPercentage"]
       52 NEWTABLE                         R5 0 0
       54 MOVE                             R6 R2
       55 CALL                             R3 3 0
       56 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["AnalyticsContext"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["useContext"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K2 ["Context"]
       13 CALL                             R2 1 1
       14 DUPTABLE                         R3 K5 [{["current"] = }]
       15 DUPTABLE                         R4 K7 [{["current"] = False}]
       16 GETUPVAL                         R5 3
       17 GETTABLEKS                       R5 R5 K8 ["useEffect"]
       19 MOVE                             R6 R0
       20 NEWCLOSURE                       R7 P0
       21 CAPTURE                          VAL R4
       22 CAPTURE                          VAL R3
       23 NEWTABLE                         R8 0 0
       25 CALL                             R5 3 0
       26 GETUPVAL                         R5 4
       27 GETTABLEKS                       R6 R2 K9 ["inputBeganSignal"]
       29 NEWCLOSURE                       R7 P1
       30 CAPTURE                          VAL R1
       31 CAPTURE                          UPVAL U5
       32 CAPTURE                          VAL R3
       33 NEWTABLE                         R8 0 1
       35 GETTABLEKS                       R9 R1 K10 ["logCounter"]
       37 SETLIST                          R8 R9 1 [1]
       39 CALL                             R5 3 0
       40 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Analytics"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R3 K9 ["Observable"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Components"]
       32 GETTABLEKS                       R5 R5 K12 ["Contexts"]
       34 GETTABLEKS                       R5 R5 K13 ["WindowInputContext"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K14 ["Hooks"]
       41 GETTABLEKS                       R6 R6 K15 ["useEventConnection"]
       43 CALL                             R5 1 1
       44 DUPTABLE                         R6 K24 [{["eventName"] = "LuaExplorerClicked", ["backends"], ["throttlingPercentage"], ["description"] = "Fires when Explorer is clicked.", ["lastUpdated"] = "2024-11-22"}]
       45 NEWTABLE                         R7 0 1
       47 LOADK                            R8 K25 ["RobloxTelemetryCounter"]
       48 SETLIST                          R7 R8 1 [1]
       50 SETTABLEKS                       R7 R6 K18 ["backends"]
       52 GETIMPORT                        R7 K27 [game]
       54 LOADK                            R9 K28 ["LuaExplorerClickedThrottlingHundredthsPercent"]
       55 LOADN                            R10 10000
       56 NAMECALL                         R7 R7 K29 ["DefineFastInt"]
       58 CALL                             R7 3 1
       59 SETTABLEKS                       R7 R6 K19 ["throttlingPercentage"]
       61 DUPCLOSURE                       R7 K30 [PROTO_2]
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R6
       68 RETURN                           R7 1
