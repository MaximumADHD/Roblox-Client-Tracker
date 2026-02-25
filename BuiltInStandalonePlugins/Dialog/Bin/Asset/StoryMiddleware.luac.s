PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+51]
        2 GETUPVAL                         R1 1
        3 LOADK                            R3 K0 ["Plugin"]
        4 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        6 CALL                             R1 2 1
        7 MOVE                             R3 R1
        8 JUMPIFNOT                        R3 ; [+4]
        9 LOADK                            R5 K2 ["ObjectValue"]
       10 NAMECALL                         R3 R1 K3 ["IsA"]
       12 CALL                             R3 2 1
       13 FASTCALL2K                       ASSERT R3 K4 ; [+4]
       15 LOADK                            R4 K4 ["Plugin ObjectValue not found in StoryMiddleware"]
       16 GETIMPORT                        R2 K6 [assert]
       18 CALL                             R2 2 0
       19 GETTABLEKS                       R2 R1 K7 ["Value"]
       21 MOVE                             R4 R2
       22 JUMPIFNOT                        R4 ; [+4]
       23 LOADK                            R6 K0 ["Plugin"]
       24 NAMECALL                         R4 R2 K3 ["IsA"]
       26 CALL                             R4 2 1
       27 FASTCALL2K                       ASSERT R4 K8 ; [+4]
       29 LOADK                            R5 K8 ["Plugin value is not a Plugin in StoryMiddleware"]
       30 GETIMPORT                        R3 K6 [assert]
       32 CALL                             R3 2 0
       33 GETUPVAL                         R5 2
       34 GETTABLEKS                       R4 R5 K9 ["Util"]
       36 GETTABLEKS                       R3 R4 K10 ["createFoundationDesignBinding"]
       38 CALL                             R3 0 2
       39 DUPTABLE                         R5 K13 [{"design", "onStyleSheetChange"}]
       40 GETUPVAL                         R6 3
       41 MOVE                             R7 R2
       42 GETUPVAL                         R8 1
       43 LOADNIL                          R9
       44 DUPTABLE                         R10 K15 [{"FoundationBinding"}]
       45 SETTABLEKS                       R3 R10 K14 ["FoundationBinding"]
       47 CALL                             R6 4 1
       48 SETTABLEKS                       R6 R5 K11 ["design"]
       50 SETTABLEKS                       R4 R5 K12 ["onStyleSheetChange"]
       52 SETUPVAL                         R5 0
       53 DUPTABLE                         R1 K19 [{"Design", "Localization", "Plugin", "ThemeSwitcher"}]
       54 GETUPVAL                         R3 4
       55 GETTABLEKS                       R2 R3 K20 ["new"]
       57 GETUPVAL                         R4 0
       58 GETTABLEKS                       R3 R4 K11 ["design"]
       60 CALL                             R2 1 1
       61 SETTABLEKS                       R2 R1 K16 ["Design"]
       63 GETUPVAL                         R2 5
       64 SETTABLEKS                       R2 R1 K17 ["Localization"]
       66 GETUPVAL                         R3 6
       67 GETTABLEKS                       R2 R3 K20 ["new"]
       69 GETTABLEKS                       R3 R0 K21 ["plugin"]
       71 CALL                             R2 1 1
       72 SETTABLEKS                       R2 R1 K0 ["Plugin"]
       74 GETUPVAL                         R3 7
       75 GETTABLEKS                       R2 R3 K20 ["new"]
       77 CALL                             R2 0 1
       78 SETTABLEKS                       R2 R1 K18 ["ThemeSwitcher"]
       80 GETUPVAL                         R2 8
       81 MOVE                             R3 R1
       82 DUPTABLE                         R4 K23 [{"FoundationProvider"}]
       83 GETUPVAL                         R5 9
       84 GETUPVAL                         R6 10
       85 DUPTABLE                         R7 K25 [{"onStyleSheetChange", "overlayGui"}]
       86 GETUPVAL                         R9 0
       87 GETTABLEKS                       R8 R9 K12 ["onStyleSheetChange"]
       89 SETTABLEKS                       R8 R7 K12 ["onStyleSheetChange"]
       91 GETTABLEKS                       R8 R0 K26 ["focus"]
       93 SETTABLEKS                       R8 R7 K24 ["overlayGui"]
       95 DUPTABLE                         R8 K29 [{"Child", "Link"}]
       96 GETUPVAL                         R9 9
       97 GETUPVAL                         R10 11
       98 MOVE                             R11 R0
       99 CALL                             R9 2 1
      100 SETTABLEKS                       R9 R8 K27 ["Child"]
      102 GETUPVAL                         R9 9
      103 LOADK                            R10 K30 ["StyleLink"]
      104 DUPTABLE                         R11 K32 [{"StyleSheet"}]
      105 GETUPVAL                         R13 0
      106 GETTABLEKS                       R12 R13 K11 ["design"]
      108 SETTABLEKS                       R12 R11 K31 ["StyleSheet"]
      110 CALL                             R9 2 1
      111 SETTABLEKS                       R9 R8 K28 ["Link"]
      113 CALL                             R5 3 1
      114 SETTABLEKS                       R5 R4 K22 ["FoundationProvider"]
      116 CALL                             R2 2 -1
      117 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 DUPTABLE                         R2 K4 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
        4 GETUPVAL                         R3 1
        5 SETTABLEKS                       R3 R2 K1 ["stringResourceTable"]
        7 GETUPVAL                         R3 2
        8 SETTABLEKS                       R3 R2 K2 ["translationResourceTable"]
       10 LOADK                            R3 K5 ["Dialog"]
       11 SETTABLEKS                       R3 R2 K3 ["pluginName"]
       13 CALL                             R1 1 1
       14 NEWCLOSURE                       R2 P0
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          UPVAL U4
       17 CAPTURE                          UPVAL U5
       18 CAPTURE                          UPVAL U6
       19 CAPTURE                          UPVAL U7
       20 CAPTURE                          VAL R1
       21 CAPTURE                          UPVAL U8
       22 CAPTURE                          UPVAL U9
       23 CAPTURE                          UPVAL U10
       24 CAPTURE                          UPVAL U11
       25 CAPTURE                          UPVAL U12
       26 CAPTURE                          VAL R0
       27 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["StudioFoundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R5 R1 K10 ["ContextServices"]
       30 GETTABLEKS                       R4 R5 K11 ["Design"]
       32 GETTABLEKS                       R6 R3 K12 ["Components"]
       34 GETTABLEKS                       R5 R6 K13 ["FoundationProviderAdapter"]
       36 GETTABLEKS                       R7 R1 K10 ["ContextServices"]
       38 GETTABLEKS                       R6 R7 K14 ["Localization"]
       40 GETTABLEKS                       R10 R0 K15 ["Src"]
       42 GETTABLEKS                       R9 R10 K16 ["Resources"]
       44 GETTABLEKS                       R8 R9 K14 ["Localization"]
       46 GETTABLEKS                       R7 R8 K17 ["LocalizedStrings"]
       48 GETTABLEKS                       R9 R1 K10 ["ContextServices"]
       50 GETTABLEKS                       R8 R9 K18 ["Plugin"]
       52 GETTABLEKS                       R12 R0 K15 ["Src"]
       54 GETTABLEKS                       R11 R12 K16 ["Resources"]
       56 GETTABLEKS                       R10 R11 K14 ["Localization"]
       58 GETTABLEKS                       R9 R10 K19 ["SourceStrings"]
       60 GETTABLEKS                       R11 R1 K20 ["Style"]
       62 GETTABLEKS                       R10 R11 K21 ["ThemeSwitcher"]
       64 GETTABLEKS                       R11 R2 K22 ["createElement"]
       66 GETTABLEKS                       R13 R1 K10 ["ContextServices"]
       68 GETTABLEKS                       R12 R13 K23 ["provide"]
       70 GETTABLEKS                       R14 R1 K24 ["Styling"]
       72 GETTABLEKS                       R13 R14 K25 ["registerPluginStyles"]
       74 LOADNIL                          R14
       75 NEWCLOSURE                       R15 P0
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R9
       78 CAPTURE                          VAL R7
       79 CAPTURE                          REF R14
       80 CAPTURE                          VAL R0
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R13
       83 CAPTURE                          VAL R4
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R10
       86 CAPTURE                          VAL R12
       87 CAPTURE                          VAL R11
       88 CAPTURE                          VAL R5
       89 CLOSEUPVALS                      R14
       90 RETURN                           R15 1
