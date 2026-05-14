PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Observable"]
        3 GETTABLEKS                       R1 R1 K1 ["useState"]
        5 LOADK                            R2 K2 ["RGB"]
        6 CALL                             R1 1 2
        7 GETUPVAL                         R3 1
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K3 ["Components"]
       11 GETTABLEKS                       R4 R4 K4 ["Contexts"]
       13 GETTABLEKS                       R4 R4 K5 ["SettingsContextProvider"]
       15 DUPTABLE                         R5 K8 [{"colorDisplayModeObservable", "setColorDisplayMode"}]
       16 SETTABLEKS                       R1 R5 K6 ["colorDisplayModeObservable"]
       18 SETTABLEKS                       R2 R5 K7 ["setColorDisplayMode"]
       20 GETTABLEKS                       R6 R0 K9 ["children"]
       22 CALL                             R3 3 -1
       23 RETURN                           R3 -1

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
