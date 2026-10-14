PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 2
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R3 2
        4 GETTABLEKS                       R3 R3 K0 ["plugin"]
        6 GETUPVAL                         R4 3
        7 LOADNIL                          R5
        8 DUPTABLE                         R6 K2 [{"FoundationBinding"}]
        9 SETTABLEKS                       R0 R6 K1 ["FoundationBinding"]
       11 CALL                             R2 4 1
       12 MOVE                             R3 R2
       13 MOVE                             R4 R1
       14 RETURN                           R3 2

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 DUPTABLE                         R1 K5 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "DialogPlugin"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["stringResourceTable"]
        7 GETUPVAL                         R2 2
        8 SETTABLEKS                       R2 R1 K2 ["translationResourceTable"]
       10 CALL                             R0 1 -1
       11 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U3
        8 NEWTABLE                         R3 0 1
       10 GETTABLEKS                       R4 R0 K1 ["plugin"]
       12 SETLIST                          R3 R4 1 [1]
       14 CALL                             R1 2 2
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K0 ["useMemo"]
       18 DUPCLOSURE                       R4 K2 [PROTO_1]
       19 CAPTURE                          UPVAL U4
       20 CAPTURE                          UPVAL U5
       21 CAPTURE                          UPVAL U6
       22 NEWTABLE                         R5 0 0
       24 CALL                             R3 2 1
       25 GETUPVAL                         R4 7
       26 DUPTABLE                         R5 K6 [{"Design", "Localization", "Plugin"}]
       27 GETUPVAL                         R6 8
       28 GETTABLEKS                       R6 R6 K7 ["new"]
       30 MOVE                             R7 R1
       31 CALL                             R6 1 1
       32 SETTABLEKS                       R6 R5 K3 ["Design"]
       34 SETTABLEKS                       R3 R5 K4 ["Localization"]
       36 GETUPVAL                         R6 9
       37 GETTABLEKS                       R6 R6 K7 ["new"]
       39 GETTABLEKS                       R7 R0 K1 ["plugin"]
       41 CALL                             R6 1 1
       42 SETTABLEKS                       R6 R5 K5 ["Plugin"]
       44 DUPTABLE                         R6 K9 [{"Root"}]
       45 GETUPVAL                         R7 10
       46 GETUPVAL                         R8 11
       47 DUPTABLE                         R9 K12 [{"overlayGui", "onStyleSheetChange"}]
       48 GETTABLEKS                       R10 R0 K13 ["rootHandle"]
       50 SETTABLEKS                       R10 R9 K10 ["overlayGui"]
       52 SETTABLEKS                       R2 R9 K11 ["onStyleSheetChange"]
       54 DUPTABLE                         R10 K15 [{"DialogSessionManager"}]
       55 GETUPVAL                         R11 10
       56 GETUPVAL                         R12 12
       57 CALL                             R11 1 1
       58 SETTABLEKS                       R11 R10 K14 ["DialogSessionManager"]
       60 CALL                             R7 3 1
       61 SETTABLEKS                       R7 R6 K8 ["Root"]
       63 CALL                             R4 2 -1
       64 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K8 ["DialogSessionManager"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R3 K10 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K9 ["Packages"]
       27 GETTABLEKS                       R4 R4 K11 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Packages"]
       34 GETTABLEKS                       R5 R5 K12 ["StudioFoundation"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R0 K6 ["Src"]
       39 GETTABLEKS                       R5 R5 K13 ["Resources"]
       41 GETTABLEKS                       R5 R5 K14 ["Localization"]
       43 GETTABLEKS                       R5 R5 K15 ["LocalizedStrings"]
       45 GETTABLEKS                       R6 R0 K6 ["Src"]
       47 GETTABLEKS                       R6 R6 K13 ["Resources"]
       49 GETTABLEKS                       R6 R6 K14 ["Localization"]
       51 GETTABLEKS                       R6 R6 K16 ["SourceStrings"]
       53 GETTABLEKS                       R7 R2 K17 ["ContextServices"]
       55 GETTABLEKS                       R7 R7 K18 ["Design"]
       57 GETTABLEKS                       R8 R4 K7 ["Components"]
       59 GETTABLEKS                       R8 R8 K19 ["FoundationProviderAdapter"]
       61 GETTABLEKS                       R9 R2 K17 ["ContextServices"]
       63 GETTABLEKS                       R9 R9 K14 ["Localization"]
       65 GETTABLEKS                       R10 R2 K17 ["ContextServices"]
       67 GETTABLEKS                       R10 R10 K20 ["Plugin"]
       69 GETTABLEKS                       R11 R4 K21 ["Util"]
       71 GETTABLEKS                       R11 R11 K22 ["createFoundationDesignBinding"]
       73 GETTABLEKS                       R12 R3 K23 ["createElement"]
       75 GETTABLEKS                       R13 R2 K17 ["ContextServices"]
       77 GETTABLEKS                       R13 R13 K24 ["provide"]
       79 GETTABLEKS                       R14 R2 K25 ["Styling"]
       81 GETTABLEKS                       R14 R14 K26 ["registerPluginStyles"]
       83 DUPCLOSURE                       R15 K27 [PROTO_2]
       84 CAPTURE                          VAL R3
       85 CAPTURE                          VAL R11
       86 CAPTURE                          VAL R14
       87 CAPTURE                          VAL R0
       88 CAPTURE                          VAL R9
       89 CAPTURE                          VAL R6
       90 CAPTURE                          VAL R5
       91 CAPTURE                          VAL R13
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R10
       94 CAPTURE                          VAL R12
       95 CAPTURE                          VAL R8
       96 CAPTURE                          VAL R1
       97 GETTABLEKS                       R16 R3 K28 ["memo"]
       99 MOVE                             R17 R15
      100 CALL                             R16 1 -1
      101 RETURN                           R16 -1
