PROTO_0:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 MOVE                             R0 R1
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["Localization"]
        8 GETTABLEKS                       R1 R1 K1 ["new"]
       10 DUPTABLE                         R2 K7 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "DeviceSimulatorToolbar", ["overrideLocaleId"]}]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K8 ["Src"]
       14 GETTABLEKS                       R3 R3 K9 ["Resources"]
       16 GETTABLEKS                       R3 R3 K0 ["Localization"]
       18 GETTABLEKS                       R3 R3 K10 ["SourceStrings"]
       20 SETTABLEKS                       R3 R2 K2 ["stringResourceTable"]
       22 GETUPVAL                         R3 1
       23 GETTABLEKS                       R3 R3 K8 ["Src"]
       25 GETTABLEKS                       R3 R3 K9 ["Resources"]
       27 GETTABLEKS                       R3 R3 K0 ["Localization"]
       29 GETTABLEKS                       R3 R3 K11 ["LocalizedStrings"]
       31 SETTABLEKS                       R3 R2 K3 ["translationResourceTable"]
       33 GETTABLEKS                       R3 R0 K6 ["overrideLocaleId"]
       35 SETTABLEKS                       R3 R2 K6 ["overrideLocaleId"]
       37 CALL                             R1 1 -1
       38 RETURN                           R1 -1

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
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R0
       30 SETTABLEKS                       R4 R3 K14 ["new"]
       32 RETURN                           R3 1
