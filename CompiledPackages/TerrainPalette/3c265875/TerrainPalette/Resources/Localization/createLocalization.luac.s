PROTO_0:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K0 ["Localization"]
        7 GETTABLEKS                       R2 R2 K1 ["new"]
        9 DUPTABLE                         R3 K9 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "TerrainPaletteEditor", ["libraries"], ["getLocale"], ["overrideLocaleChangedSignal"]}]
       10 GETUPVAL                         R4 1
       11 SETTABLEKS                       R4 R3 K2 ["stringResourceTable"]
       13 GETUPVAL                         R4 2
       14 SETTABLEKS                       R4 R3 K3 ["translationResourceTable"]
       16 DUPTABLE                         R4 K11 [{"Common"}]
       17 DUPTABLE                         R5 K12 [{"stringResourceTable", "translationResourceTable"}]
       18 GETUPVAL                         R6 1
       19 SETTABLEKS                       R6 R5 K2 ["stringResourceTable"]
       21 GETUPVAL                         R6 2
       22 SETTABLEKS                       R6 R5 K3 ["translationResourceTable"]
       24 SETTABLEKS                       R5 R4 K10 ["Common"]
       26 SETTABLEKS                       R4 R3 K6 ["libraries"]
       28 GETTABLEKS                       R4 R1 K7 ["getLocale"]
       30 SETTABLEKS                       R4 R3 K7 ["getLocale"]
       32 GETTABLEKS                       R4 R1 K8 ["overrideLocaleChangedSignal"]
       34 SETTABLEKS                       R4 R3 K8 ["overrideLocaleChangedSignal"]
       36 CALL                             R2 1 -1
       37 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainPalette"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["StudioFoundation"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Contexts"]
       16 GETTABLEKS                       R2 R2 K9 ["Localization"]
       18 GETTABLEKS                       R3 R0 K10 ["Resources"]
       20 GETTABLEKS                       R3 R3 K9 ["Localization"]
       22 GETTABLEKS                       R3 R3 K11 ["SourceStrings"]
       24 GETTABLEKS                       R4 R0 K10 ["Resources"]
       26 GETTABLEKS                       R4 R4 K9 ["Localization"]
       28 GETTABLEKS                       R4 R4 K12 ["LocalizedStrings"]
       30 DUPCLOSURE                       R5 K13 [PROTO_0]
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R4
       34 RETURN                           R5 1
