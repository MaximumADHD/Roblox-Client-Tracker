PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Observable"]
        3 GETTABLEKS                       R1 R1 K1 ["useState"]
        5 GETIMPORT                        R2 K4 [table.freeze]
        7 DUPTABLE                         R3 K9 [{["ColorDisplayType"] = "EngineDefault", ["Color3DisplayMode"] = "RGB"}]
        8 CALL                             R2 1 -1
        9 CALL                             R1 -1 2
       10 GETUPVAL                         R3 1
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K10 ["Components"]
       14 GETTABLEKS                       R4 R4 K11 ["Contexts"]
       16 GETTABLEKS                       R4 R4 K12 ["SettingsContextProvider"]
       18 DUPTABLE                         R5 K15 [{"colorDisplaySettingObservable", "setColorDisplaySetting"}]
       19 SETTABLEKS                       R1 R5 K13 ["colorDisplaySettingObservable"]
       21 SETTABLEKS                       R2 R5 K14 ["setColorDisplaySetting"]
       23 GETTABLEKS                       R6 R0 K16 ["children"]
       25 CALL                             R3 3 -1
       26 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PropertiesPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Properties"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["createElement"]
       23 DUPCLOSURE                       R4 K10 [PROTO_0]
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R3
       26 RETURN                           R4 1
