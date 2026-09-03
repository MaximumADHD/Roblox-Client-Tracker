PROTO_0:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 MOVE                             R0 R1
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["Src"]
        8 GETTABLEKS                       R1 R1 K1 ["Resources"]
       10 GETTABLEKS                       R1 R1 K2 ["Localization"]
       12 GETTABLEKS                       R1 R1 K3 ["SourceStrings"]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K0 ["Src"]
       17 GETTABLEKS                       R2 R2 K1 ["Resources"]
       19 GETTABLEKS                       R2 R2 K2 ["Localization"]
       21 GETTABLEKS                       R2 R2 K4 ["LocalizedStrings"]
       23 GETUPVAL                         R3 1
       24 GETTABLEKS                       R3 R3 K2 ["Localization"]
       26 GETTABLEKS                       R3 R3 K5 ["new"]
       28 DUPTABLE                         R4 K12 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "DeviceSimulatorToolbar", ["libraries"], ["overrideLocaleId"]}]
       29 SETTABLEKS                       R1 R4 K6 ["stringResourceTable"]
       31 SETTABLEKS                       R2 R4 K7 ["translationResourceTable"]
       33 DUPTABLE                         R5 K14 [{"DeviceSimulator"}]
       34 DUPTABLE                         R6 K15 [{"stringResourceTable", "translationResourceTable"}]
       35 SETTABLEKS                       R1 R6 K6 ["stringResourceTable"]
       37 SETTABLEKS                       R2 R6 K7 ["translationResourceTable"]
       39 SETTABLEKS                       R6 R5 K13 ["DeviceSimulator"]
       41 SETTABLEKS                       R5 R4 K10 ["libraries"]
       43 GETTABLEKS                       R5 R0 K11 ["overrideLocaleId"]
       45 SETTABLEKS                       R5 R4 K11 ["overrideLocaleId"]
       47 CALL                             R3 1 -1
       48 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DeviceSimulatorToolbar"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["StudioFoundation"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Contexts"]
       16 GETTABLEKS                       R2 R2 K9 ["Localization"]
       18 DUPTABLE                         R3 K12 [{"Context", "Provider"}]
       19 GETTABLEKS                       R4 R2 K10 ["Context"]
       21 SETTABLEKS                       R4 R3 K10 ["Context"]
       23 GETTABLEKS                       R4 R2 K11 ["Provider"]
       25 SETTABLEKS                       R4 R3 K11 ["Provider"]
       27 DUPCLOSURE                       R4 K13 [PROTO_0]
       28 CAPTURE                          VAL R0
       29 CAPTURE                          VAL R2
       30 SETTABLEKS                       R4 R3 K14 ["new"]
       32 RETURN                           R3 1
