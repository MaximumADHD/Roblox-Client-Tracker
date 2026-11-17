PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["logEvent"]
        3 DUPTABLE                         R1 K9 [{["eventName"] = "LuaExplorerInitialSettings", ["backends"], ["throttlingPercentage"], ["description"] = "The settings at the time of launch", ["lastUpdated"] = "2024-12-03"}]
        4 NEWTABLE                         R2 0 1
        6 LOADK                            R3 K10 ["EventIngest"]
        7 SETLIST                          R2 R3 1 [1]
        9 SETTABLEKS                       R2 R1 K3 ["backends"]
       11 GETIMPORT                        R2 K12 [game]
       13 LOADK                            R4 K13 ["LuaExplorerInitialSettingsTelemetryThrottlingHundredthsPercent"]
       14 LOADN                            R5 10000
       15 NAMECALL                         R2 R2 K14 ["DefineFastInt"]
       17 CALL                             R2 3 1
       18 SETTABLEKS                       R2 R1 K4 ["throttlingPercentage"]
       20 DUPTABLE                         R2 K17 [{"incrementNames", "expandHierarchy"}]
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R3 R3 K18 ["getIncrementNamesAsync"]
       24 CALL                             R3 0 1
       25 SETTABLEKS                       R3 R2 K15 ["incrementNames"]
       27 GETUPVAL                         R3 1
       28 GETTABLEKS                       R3 R3 K19 ["getExpandHierarchy"]
       30 CALL                             R3 0 1
       31 SETTABLEKS                       R3 R2 K16 ["expandHierarchy"]
       33 CALL                             R0 2 0
       34 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 1
        6 NEWCLOSURE                       R1 P1
        7 CAPTURE                          VAL R0
        8 RETURN                           R1 1

PROTO_3:
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
       18 CAPTURE                          VAL R0
       19 CAPTURE                          VAL R1
       20 NEWTABLE                         R4 0 2
       22 MOVE                             R5 R0
       23 MOVE                             R6 R1
       24 SETLIST                          R4 R5 2 [1]
       26 CALL                             R2 2 0
       27 RETURN                           R0 0

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
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Components"]
       25 GETTABLEKS                       R4 R4 K10 ["Contexts"]
       27 GETTABLEKS                       R4 R4 K11 ["SettingsContext"]
       29 CALL                             R3 1 1
       30 DUPCLOSURE                       R4 K12 [PROTO_3]
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R3
       34 RETURN                           R4 1
