PROTO_0:
        0 LOADK                            R0 K0 ["ShowLabelsTokens"]
        1 RETURN                           R0 1

PROTO_1:
        0 NEWTABLE                         R0 0 1
        2 LOADK                            R1 K0 ["ShowLabelsTokens"]
        3 SETLIST                          R0 R1 1 [1]
        5 RETURN                           R0 1

PROTO_2:
        0 LOADK                            R0 K0 ["DensityCompact"]
        1 RETURN                           R0 1

PROTO_3:
        0 NEWTABLE                         R0 0 1
        2 LOADK                            R1 K0 ["DensityCompact"]
        3 SETLIST                          R0 R1 1 [1]
        5 RETURN                           R0 1

PROTO_4:
        0 LOADK                            R0 K0 ["GeneralTokens"]
        1 RETURN                           R0 1

PROTO_5:
        0 NEWTABLE                         R0 0 1
        2 LOADK                            R1 K0 ["GeneralTokens"]
        3 SETLIST                          R0 R1 1 [1]
        5 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+59]
        2 GETIMPORT                        R1 K1 [print]
        4 LOADK                            R2 K2 ["Creating Design for StoryMiddleware"]
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 1
        7 LOADK                            R3 K3 ["Plugin"]
        8 NAMECALL                         R1 R1 K4 ["FindFirstChild"]
       10 CALL                             R1 2 1
       11 DUPTABLE                         R2 K7 [{"GetCurrentName", "GetNames"}]
       12 DUPCLOSURE                       R3 K8 [PROTO_0]
       13 SETTABLEKS                       R3 R2 K5 ["GetCurrentName"]
       15 DUPCLOSURE                       R3 K9 [PROTO_1]
       16 SETTABLEKS                       R3 R2 K6 ["GetNames"]
       18 DUPTABLE                         R3 K7 [{"GetCurrentName", "GetNames"}]
       19 DUPCLOSURE                       R4 K10 [PROTO_2]
       20 SETTABLEKS                       R4 R3 K5 ["GetCurrentName"]
       22 DUPCLOSURE                       R4 K11 [PROTO_3]
       23 SETTABLEKS                       R4 R3 K6 ["GetNames"]
       25 NEWTABLE                         R4 0 3
       27 DUPTABLE                         R5 K7 [{"GetCurrentName", "GetNames"}]
       28 DUPCLOSURE                       R6 K12 [PROTO_4]
       29 SETTABLEKS                       R6 R5 K5 ["GetCurrentName"]
       31 DUPCLOSURE                       R6 K13 [PROTO_5]
       32 SETTABLEKS                       R6 R5 K6 ["GetNames"]
       34 MOVE                             R6 R2
       35 MOVE                             R7 R3
       36 SETLIST                          R4 R5 3 [1]
       38 GETUPVAL                         R5 2
       39 GETTABLEKS                       R5 R5 K14 ["Util"]
       41 GETTABLEKS                       R5 R5 K15 ["createFoundationDesignBinding"]
       43 CALL                             R5 0 2
       44 SETUPVAL                         R6 3
       45 GETUPVAL                         R7 4
       46 NEWTABLE                         R8 0 0
       48 MOVE                             R9 R4
       49 DUPTABLE                         R10 K17 [{"FoundationBinding"}]
       50 SETTABLEKS                       R5 R10 K16 ["FoundationBinding"]
       52 CALL                             R7 3 1
       53 GETUPVAL                         R8 5
       54 GETTABLEKS                       R9 R1 K18 ["Value"]
       56 GETUPVAL                         R10 1
       57 LOADNIL                          R11
       58 MOVE                             R12 R7
       59 CALL                             R8 4 1
       60 SETUPVAL                         R8 0
       61 NEWTABLE                         R1 0 7
       63 GETUPVAL                         R2 6
       64 GETUPVAL                         R3 7
       65 GETUPVAL                         R4 8
       66 GETTABLEKS                       R4 R4 K19 ["new"]
       68 GETTABLEKS                       R5 R0 K20 ["focus"]
       70 CALL                             R4 1 1
       71 GETUPVAL                         R5 9
       72 GETTABLEKS                       R5 R5 K19 ["new"]
       74 GETTABLEKS                       R6 R0 K21 ["plugin"]
       76 CALL                             R5 1 1
       77 GETUPVAL                         R6 10
       78 GETTABLEKS                       R6 R6 K19 ["new"]
       80 GETTABLEKS                       R7 R0 K21 ["plugin"]
       82 NAMECALL                         R7 R7 K22 ["GetMouse"]
       84 CALL                             R7 1 -1
       85 CALL                             R6 -1 1
       86 GETUPVAL                         R7 11
       87 GETTABLEKS                       R7 R7 K23 ["mock"]
       89 CALL                             R7 0 1
       90 GETUPVAL                         R8 12
       91 GETTABLEKS                       R8 R8 K19 ["new"]
       93 GETUPVAL                         R9 0
       94 CALL                             R8 1 -1
       95 SETLIST                          R1 R2 -1 [1]
       97 GETUPVAL                         R2 13
       98 GETTABLEKS                       R2 R2 K24 ["provide"]
      100 MOVE                             R3 R1
      101 DUPTABLE                         R4 K26 [{"FoundationProvider"}]
      102 GETUPVAL                         R5 14
      103 GETUPVAL                         R6 15
      104 DUPTABLE                         R7 K28 [{"onStyleSheetChange"}]
      105 GETUPVAL                         R8 3
      106 SETTABLEKS                       R8 R7 K27 ["onStyleSheetChange"]
      108 DUPTABLE                         R8 K31 [{"Child", "Link"}]
      109 GETUPVAL                         R9 14
      110 GETUPVAL                         R10 16
      111 MOVE                             R11 R0
      112 CALL                             R9 2 1
      113 SETTABLEKS                       R9 R8 K29 ["Child"]
      115 GETUPVAL                         R9 14
      116 LOADK                            R10 K32 ["StyleLink"]
      117 DUPTABLE                         R11 K34 [{"StyleSheet"}]
      118 GETUPVAL                         R12 0
      119 SETTABLEKS                       R12 R11 K33 ["StyleSheet"]
      121 CALL                             R9 2 1
      122 SETTABLEKS                       R9 R8 K30 ["Link"]
      124 CALL                             R5 3 1
      125 SETTABLEKS                       R5 R4 K25 ["FoundationProvider"]
      127 CALL                             R2 2 -1
      128 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 DUPTABLE                         R2 K4 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
        4 GETUPVAL                         R3 1
        5 SETTABLEKS                       R3 R2 K1 ["stringResourceTable"]
        7 GETUPVAL                         R3 2
        8 SETTABLEKS                       R3 R2 K2 ["translationResourceTable"]
       10 LOADK                            R3 K5 ["Ribbon"]
       11 SETTABLEKS                       R3 R2 K3 ["pluginName"]
       13 CALL                             R1 1 1
       14 LOADNIL                          R2
       15 GETUPVAL                         R3 3
       16 GETTABLEKS                       R3 R3 K0 ["new"]
       18 CALL                             R3 0 1
       19 NEWCLOSURE                       R4 P0
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          UPVAL U5
       22 CAPTURE                          UPVAL U6
       23 CAPTURE                          REF R2
       24 CAPTURE                          UPVAL U7
       25 CAPTURE                          UPVAL U8
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R1
       28 CAPTURE                          UPVAL U9
       29 CAPTURE                          UPVAL U10
       30 CAPTURE                          UPVAL U11
       31 CAPTURE                          UPVAL U12
       32 CAPTURE                          UPVAL U13
       33 CAPTURE                          UPVAL U14
       34 CAPTURE                          UPVAL U15
       35 CAPTURE                          UPVAL U16
       36 CAPTURE                          VAL R0
       37 CLOSEUPVALS                      R2
       38 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["StudioFoundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["Components"]
       30 GETTABLEKS                       R4 R4 K11 ["FoundationProviderAdapter"]
       32 GETTABLEKS                       R5 R2 K12 ["createElement"]
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R7 R0 K6 ["Packages"]
       38 GETTABLEKS                       R7 R7 K13 ["Dash"]
       40 CALL                             R6 1 1
       41 GETTABLEKS                       R7 R6 K14 ["append"]
       43 GETTABLEKS                       R8 R0 K15 ["Src"]
       45 GETTABLEKS                       R8 R8 K16 ["Resources"]
       47 GETTABLEKS                       R8 R8 K17 ["Localization"]
       49 GETTABLEKS                       R8 R8 K18 ["SourceStrings"]
       51 GETTABLEKS                       R9 R0 K15 ["Src"]
       53 GETTABLEKS                       R9 R9 K16 ["Resources"]
       55 GETTABLEKS                       R9 R9 K17 ["Localization"]
       57 GETTABLEKS                       R9 R9 K19 ["LocalizedStrings"]
       59 GETTABLEKS                       R10 R1 K20 ["ContextServices"]
       61 GETTABLEKS                       R11 R10 K21 ["Analytics"]
       63 GETTABLEKS                       R12 R10 K22 ["Design"]
       65 GETTABLEKS                       R13 R10 K17 ["Localization"]
       67 GETTABLEKS                       R14 R10 K23 ["Focus"]
       69 GETTABLEKS                       R15 R10 K24 ["Mouse"]
       71 GETTABLEKS                       R16 R10 K25 ["Plugin"]
       73 GETTABLEKS                       R17 R1 K26 ["Style"]
       75 GETTABLEKS                       R17 R17 K27 ["ThemeSwitcher"]
       77 GETTABLEKS                       R18 R1 K28 ["Styling"]
       79 GETTABLEKS                       R18 R18 K29 ["registerPluginStyles"]
       81 LOADNIL                          R19
       82 NEWCLOSURE                       R20 P0
       83 CAPTURE                          VAL R13
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R9
       86 CAPTURE                          VAL R17
       87 CAPTURE                          REF R19
       88 CAPTURE                          VAL R0
       89 CAPTURE                          VAL R3
       90 CAPTURE                          VAL R7
       91 CAPTURE                          VAL R18
       92 CAPTURE                          VAL R14
       93 CAPTURE                          VAL R16
       94 CAPTURE                          VAL R15
       95 CAPTURE                          VAL R11
       96 CAPTURE                          VAL R12
       97 CAPTURE                          VAL R10
       98 CAPTURE                          VAL R5
       99 CAPTURE                          VAL R4
      100 CLOSEUPVALS                      R19
      101 RETURN                           R20 1
