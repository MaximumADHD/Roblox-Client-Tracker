PROTO_0:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 NOT                              R2 R3
        3 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        5 LOADK                            R3 K0 ["This component should not be used with FFlagStudioDialogFoundationDesignBinding on"]
        6 GETIMPORT                        R1 K2 [assert]
        8 CALL                             R1 2 0
        9 GETUPVAL                         R1 1
       10 CALL                             R1 0 1
       11 GETUPVAL                         R2 2
       12 GETUPVAL                         R3 3
       13 DUPTABLE                         R4 K5 [{"theme", "device"}]
       14 SETTABLEKS                       R1 R4 K3 ["theme"]
       16 GETUPVAL                         R5 4
       17 GETTABLEKS                       R5 R5 K6 ["Enums"]
       19 GETTABLEKS                       R5 R5 K7 ["Device"]
       21 GETTABLEKS                       R5 R5 K8 ["Desktop"]
       23 SETTABLEKS                       R5 R4 K4 ["device"]
       25 GETTABLEKS                       R5 R0 K9 ["children"]
       27 CALL                             R2 3 -1
       28 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+15]
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 2
        5 GETUPVAL                         R2 2
        6 GETUPVAL                         R3 3
        7 GETTABLEKS                       R3 R3 K0 ["plugin"]
        9 GETUPVAL                         R4 4
       10 LOADNIL                          R5
       11 DUPTABLE                         R6 K2 [{"FoundationBinding"}]
       12 SETTABLEKS                       R0 R6 K1 ["FoundationBinding"]
       14 CALL                             R2 4 1
       15 MOVE                             R3 R2
       16 MOVE                             R4 R1
       17 RETURN                           R3 2
       18 GETUPVAL                         R0 2
       19 GETUPVAL                         R1 3
       20 GETTABLEKS                       R1 R1 K0 ["plugin"]
       22 GETUPVAL                         R2 4
       23 CALL                             R0 2 1
       24 LOADNIL                          R1
       25 RETURN                           R0 2

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 DUPTABLE                         R1 K5 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "DialogPlugin"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["stringResourceTable"]
        7 GETUPVAL                         R2 2
        8 SETTABLEKS                       R2 R1 K2 ["translationResourceTable"]
       10 CALL                             R0 1 -1
       11 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U4
        9 NEWTABLE                         R3 0 1
       11 GETTABLEKS                       R4 R0 K1 ["plugin"]
       13 SETLIST                          R3 R4 1 [1]
       15 CALL                             R1 2 2
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K0 ["useMemo"]
       19 DUPCLOSURE                       R4 K2 [PROTO_2]
       20 CAPTURE                          UPVAL U5
       21 CAPTURE                          UPVAL U6
       22 CAPTURE                          UPVAL U7
       23 NEWTABLE                         R5 0 0
       25 CALL                             R3 2 1
       26 GETUPVAL                         R4 1
       27 CALL                             R4 0 1
       28 JUMPIFNOT                        R4 ; [+40]
       29 GETUPVAL                         R4 8
       30 DUPTABLE                         R5 K6 [{"Design", "Localization", "Plugin"}]
       31 GETUPVAL                         R6 9
       32 GETTABLEKS                       R6 R6 K7 ["new"]
       34 MOVE                             R7 R1
       35 CALL                             R6 1 1
       36 SETTABLEKS                       R6 R5 K3 ["Design"]
       38 SETTABLEKS                       R3 R5 K4 ["Localization"]
       40 GETUPVAL                         R6 10
       41 GETTABLEKS                       R6 R6 K7 ["new"]
       43 GETTABLEKS                       R7 R0 K1 ["plugin"]
       45 CALL                             R6 1 1
       46 SETTABLEKS                       R6 R5 K5 ["Plugin"]
       48 DUPTABLE                         R6 K9 [{"Root"}]
       49 GETUPVAL                         R7 11
       50 GETUPVAL                         R8 12
       51 DUPTABLE                         R9 K12 [{"overlayGui", "onStyleSheetChange"}]
       52 GETTABLEKS                       R10 R0 K13 ["rootHandle"]
       54 SETTABLEKS                       R10 R9 K10 ["overlayGui"]
       56 SETTABLEKS                       R2 R9 K11 ["onStyleSheetChange"]
       58 DUPTABLE                         R10 K15 [{"DialogSessionManager"}]
       59 GETUPVAL                         R11 11
       60 GETUPVAL                         R12 13
       61 CALL                             R11 1 1
       62 SETTABLEKS                       R11 R10 K14 ["DialogSessionManager"]
       64 CALL                             R7 3 1
       65 SETTABLEKS                       R7 R6 K8 ["Root"]
       67 CALL                             R4 2 -1
       68 RETURN                           R4 -1
       69 GETUPVAL                         R4 8
       70 DUPTABLE                         R5 K6 [{"Design", "Localization", "Plugin"}]
       71 GETUPVAL                         R6 9
       72 GETTABLEKS                       R6 R6 K7 ["new"]
       74 MOVE                             R7 R1
       75 CALL                             R6 1 1
       76 SETTABLEKS                       R6 R5 K3 ["Design"]
       78 SETTABLEKS                       R3 R5 K4 ["Localization"]
       80 GETUPVAL                         R6 10
       81 GETTABLEKS                       R6 R6 K7 ["new"]
       83 GETTABLEKS                       R7 R0 K1 ["plugin"]
       85 CALL                             R6 1 1
       86 SETTABLEKS                       R6 R5 K5 ["Plugin"]
       88 DUPTABLE                         R6 K17 [{"StudioTheme"}]
       89 GETUPVAL                         R7 11
       90 GETUPVAL                         R8 14
       91 LOADNIL                          R9
       92 DUPTABLE                         R10 K19 [{"FoundationTokens"}]
       93 GETUPVAL                         R11 11
       94 GETUPVAL                         R12 15
       95 LOADNIL                          R13
       96 DUPTABLE                         R14 K15 [{"DialogSessionManager"}]
       97 GETUPVAL                         R15 11
       98 GETUPVAL                         R16 13
       99 CALL                             R15 1 1
      100 SETTABLEKS                       R15 R14 K14 ["DialogSessionManager"]
      102 CALL                             R11 3 1
      103 SETTABLEKS                       R11 R10 K18 ["FoundationTokens"]
      105 CALL                             R7 3 1
      106 SETTABLEKS                       R7 R6 K16 ["StudioTheme"]
      108 CALL                             R4 2 -1
      109 RETURN                           R4 -1

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
       20 GETTABLEKS                       R3 R3 K10 ["Foundation"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K9 ["Packages"]
       27 GETTABLEKS                       R4 R4 K11 ["Framework"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Packages"]
       34 GETTABLEKS                       R5 R5 K12 ["React"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K9 ["Packages"]
       41 GETTABLEKS                       R6 R6 K13 ["StudioFoundation"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K6 ["Src"]
       48 GETTABLEKS                       R7 R7 K14 ["Flags"]
       50 GETTABLEKS                       R7 R7 K15 ["getFFlagStudioDialogFoundationDesignBinding"]
       52 CALL                             R6 1 1
       53 GETTABLEKS                       R7 R0 K6 ["Src"]
       55 GETTABLEKS                       R7 R7 K16 ["Resources"]
       57 GETTABLEKS                       R7 R7 K17 ["Localization"]
       59 GETTABLEKS                       R7 R7 K18 ["LocalizedStrings"]
       61 GETTABLEKS                       R8 R0 K6 ["Src"]
       63 GETTABLEKS                       R8 R8 K16 ["Resources"]
       65 GETTABLEKS                       R8 R8 K17 ["Localization"]
       67 GETTABLEKS                       R8 R8 K19 ["SourceStrings"]
       69 GETTABLEKS                       R9 R3 K20 ["ContextServices"]
       71 GETTABLEKS                       R9 R9 K21 ["Design"]
       73 GETTABLEKS                       R10 R2 K22 ["FoundationProvider"]
       75 GETTABLEKS                       R11 R5 K7 ["Components"]
       77 GETTABLEKS                       R11 R11 K23 ["FoundationProviderAdapter"]
       79 GETTABLEKS                       R12 R3 K20 ["ContextServices"]
       81 GETTABLEKS                       R12 R12 K17 ["Localization"]
       83 GETTABLEKS                       R13 R3 K20 ["ContextServices"]
       85 GETTABLEKS                       R13 R13 K24 ["Plugin"]
       87 GETTABLEKS                       R14 R5 K25 ["Contexts"]
       89 GETTABLEKS                       R14 R14 K26 ["StudioThemeContextProvider"]
       91 GETTABLEKS                       R15 R5 K27 ["Util"]
       93 GETTABLEKS                       R15 R15 K28 ["createFoundationDesignBinding"]
       95 GETTABLEKS                       R16 R4 K29 ["createElement"]
       97 GETTABLEKS                       R17 R3 K20 ["ContextServices"]
       99 GETTABLEKS                       R17 R17 K30 ["provide"]
      101 GETTABLEKS                       R18 R3 K31 ["Styling"]
      103 GETTABLEKS                       R18 R18 K32 ["registerPluginStyles"]
      105 GETTABLEKS                       R19 R5 K33 ["Hooks"]
      107 GETTABLEKS                       R19 R19 K34 ["useThemeName"]
      109 DUPCLOSURE                       R20 K35 [PROTO_0]
      110 CAPTURE                          VAL R6
      111 CAPTURE                          VAL R19
      112 CAPTURE                          VAL R16
      113 CAPTURE                          VAL R10
      114 CAPTURE                          VAL R2
      115 DUPCLOSURE                       R21 K36 [PROTO_3]
      116 CAPTURE                          VAL R4
      117 CAPTURE                          VAL R6
      118 CAPTURE                          VAL R15
      119 CAPTURE                          VAL R18
      120 CAPTURE                          VAL R0
      121 CAPTURE                          VAL R12
      122 CAPTURE                          VAL R8
      123 CAPTURE                          VAL R7
      124 CAPTURE                          VAL R17
      125 CAPTURE                          VAL R9
      126 CAPTURE                          VAL R13
      127 CAPTURE                          VAL R16
      128 CAPTURE                          VAL R11
      129 CAPTURE                          VAL R1
      130 CAPTURE                          VAL R14
      131 CAPTURE                          VAL R20
      132 GETTABLEKS                       R22 R4 K37 ["memo"]
      134 MOVE                             R23 R21
      135 CALL                             R22 1 -1
      136 RETURN                           R22 -1
