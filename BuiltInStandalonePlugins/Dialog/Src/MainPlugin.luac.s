PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R3 2
        4 DUPTABLE                         R4 K2 [{"theme", "device"}]
        5 SETTABLEKS                       R1 R4 K0 ["theme"]
        7 GETUPVAL                         R5 3
        8 GETTABLEKS                       R5 R5 K3 ["Enums"]
       10 GETTABLEKS                       R5 R5 K4 ["Device"]
       12 GETTABLEKS                       R5 R5 K5 ["Desktop"]
       14 SETTABLEKS                       R5 R4 K1 ["device"]
       16 GETTABLEKS                       R5 R0 K6 ["children"]
       18 CALL                             R2 3 -1
       19 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["plugin"]
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

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
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U2
        7 NEWTABLE                         R3 0 1
        9 GETTABLEKS                       R4 R0 K1 ["plugin"]
       11 SETLIST                          R3 R4 1 [1]
       13 CALL                             R1 2 1
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K0 ["useMemo"]
       17 DUPCLOSURE                       R3 K2 [PROTO_2]
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          UPVAL U4
       20 CAPTURE                          UPVAL U5
       21 NEWTABLE                         R4 0 0
       23 CALL                             R2 2 1
       24 GETUPVAL                         R3 6
       25 JUMPIFNOT                        R3 ; [+41]
       26 GETUPVAL                         R3 7
       27 DUPTABLE                         R4 K6 [{"Design", "Localization", "Plugin"}]
       28 GETUPVAL                         R5 8
       29 GETTABLEKS                       R5 R5 K7 ["new"]
       31 MOVE                             R6 R1
       32 CALL                             R5 1 1
       33 SETTABLEKS                       R5 R4 K3 ["Design"]
       35 SETTABLEKS                       R2 R4 K4 ["Localization"]
       37 GETUPVAL                         R5 9
       38 GETTABLEKS                       R5 R5 K7 ["new"]
       40 GETTABLEKS                       R6 R0 K1 ["plugin"]
       42 CALL                             R5 1 1
       43 SETTABLEKS                       R5 R4 K5 ["Plugin"]
       45 DUPTABLE                         R5 K9 [{"StudioTheme"}]
       46 GETUPVAL                         R6 10
       47 GETUPVAL                         R7 11
       48 LOADNIL                          R8
       49 DUPTABLE                         R9 K11 [{"FoundationTokens"}]
       50 GETUPVAL                         R10 10
       51 GETUPVAL                         R11 12
       52 LOADNIL                          R12
       53 DUPTABLE                         R13 K13 [{"DialogSessionManager"}]
       54 GETUPVAL                         R14 10
       55 GETUPVAL                         R15 13
       56 CALL                             R14 1 1
       57 SETTABLEKS                       R14 R13 K12 ["DialogSessionManager"]
       59 CALL                             R10 3 1
       60 SETTABLEKS                       R10 R9 K10 ["FoundationTokens"]
       62 CALL                             R6 3 1
       63 SETTABLEKS                       R6 R5 K8 ["StudioTheme"]
       65 CALL                             R3 2 -1
       66 RETURN                           R3 -1
       67 GETUPVAL                         R3 7
       68 DUPTABLE                         R4 K6 [{"Design", "Localization", "Plugin"}]
       69 GETUPVAL                         R5 8
       70 GETTABLEKS                       R5 R5 K7 ["new"]
       72 MOVE                             R6 R1
       73 CALL                             R5 1 1
       74 SETTABLEKS                       R5 R4 K3 ["Design"]
       76 SETTABLEKS                       R2 R4 K4 ["Localization"]
       78 GETUPVAL                         R5 9
       79 GETTABLEKS                       R5 R5 K7 ["new"]
       81 GETTABLEKS                       R6 R0 K1 ["plugin"]
       83 CALL                             R5 1 1
       84 SETTABLEKS                       R5 R4 K5 ["Plugin"]
       86 DUPTABLE                         R5 K13 [{"DialogSessionManager"}]
       87 GETUPVAL                         R6 10
       88 GETUPVAL                         R7 13
       89 CALL                             R6 1 1
       90 SETTABLEKS                       R6 R5 K12 ["DialogSessionManager"]
       92 CALL                             R3 2 -1
       93 RETURN                           R3 -1

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
       50 GETTABLEKS                       R7 R7 K15 ["getFFlagEnableStudioPluginTitleBarColor"]
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
       73 MOVE                             R10 R6
       74 CALL                             R10 0 1
       75 GETTABLEKS                       R11 R2 K22 ["FoundationProvider"]
       77 GETTABLEKS                       R12 R3 K20 ["ContextServices"]
       79 GETTABLEKS                       R12 R12 K17 ["Localization"]
       81 GETTABLEKS                       R13 R3 K20 ["ContextServices"]
       83 GETTABLEKS                       R13 R13 K23 ["Plugin"]
       85 GETTABLEKS                       R14 R5 K24 ["Contexts"]
       87 GETTABLEKS                       R14 R14 K25 ["StudioThemeContextProvider"]
       89 GETTABLEKS                       R15 R4 K26 ["createElement"]
       91 GETTABLEKS                       R16 R3 K20 ["ContextServices"]
       93 GETTABLEKS                       R16 R16 K27 ["provide"]
       95 GETTABLEKS                       R17 R3 K28 ["Styling"]
       97 GETTABLEKS                       R17 R17 K29 ["registerPluginStyles"]
       99 GETTABLEKS                       R18 R5 K30 ["Hooks"]
      101 GETTABLEKS                       R18 R18 K31 ["useThemeName"]
      103 DUPCLOSURE                       R19 K32 [PROTO_0]
      104 CAPTURE                          VAL R18
      105 CAPTURE                          VAL R15
      106 CAPTURE                          VAL R11
      107 CAPTURE                          VAL R2
      108 DUPCLOSURE                       R20 K33 [PROTO_3]
      109 CAPTURE                          VAL R4
      110 CAPTURE                          VAL R17
      111 CAPTURE                          VAL R0
      112 CAPTURE                          VAL R12
      113 CAPTURE                          VAL R8
      114 CAPTURE                          VAL R7
      115 CAPTURE                          VAL R10
      116 CAPTURE                          VAL R16
      117 CAPTURE                          VAL R9
      118 CAPTURE                          VAL R13
      119 CAPTURE                          VAL R15
      120 CAPTURE                          VAL R14
      121 CAPTURE                          VAL R19
      122 CAPTURE                          VAL R1
      123 GETTABLEKS                       R21 R4 K34 ["memo"]
      125 MOVE                             R22 R20
      126 CALL                             R21 1 -1
      127 RETURN                           R21 -1
