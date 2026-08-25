PROTO_0:
        0 DUPTABLE                         R1 K2 [{"colorDisplaySettingObservable", "setColorDisplaySetting"}]
        1 GETTABLEKS                       R2 R0 K0 ["colorDisplaySettingObservable"]
        3 SETTABLEKS                       R2 R1 K0 ["colorDisplaySettingObservable"]
        5 GETTABLEKS                       R2 R0 K1 ["setColorDisplaySetting"]
        7 SETTABLEKS                       R2 R1 K1 ["setColorDisplaySetting"]
        9 GETUPVAL                         R2 0
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K3 ["Provider"]
       13 DUPTABLE                         R4 K5 [{"value"}]
       14 SETTABLEKS                       R1 R4 K4 ["value"]
       16 GETTABLEKS                       R5 R0 K6 ["children"]
       18 CALL                             R2 3 -1
       19 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Observable"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K11 ["createUnimplemented"]
       30 GETTABLEKS                       R5 R2 K12 ["createElement"]
       32 DUPTABLE                         R6 K15 [{"colorDisplaySettingObservable", "setColorDisplaySetting"}]
       33 GETTABLEKS                       R7 R1 K16 ["create"]
       35 DUPTABLE                         R8 K21 [{["ColorDisplayType"] = "EngineDefault", ["Color3DisplayMode"] = "RGB"}]
       36 CALL                             R7 1 1
       37 SETTABLEKS                       R7 R6 K13 ["colorDisplaySettingObservable"]
       39 MOVE                             R7 R4
       40 LOADK                            R8 K14 ["setColorDisplaySetting"]
       41 CALL                             R7 1 1
       42 SETTABLEKS                       R7 R6 K14 ["setColorDisplaySetting"]
       44 GETTABLEKS                       R7 R2 K22 ["createContext"]
       46 MOVE                             R8 R6
       47 CALL                             R7 1 1
       48 DUPCLOSURE                       R8 K23 [PROTO_0]
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R7
       51 DUPTABLE                         R9 K26 [{"Context", "Provider"}]
       52 SETTABLEKS                       R7 R9 K24 ["Context"]
       54 SETTABLEKS                       R8 R9 K25 ["Provider"]
       56 RETURN                           R9 1
