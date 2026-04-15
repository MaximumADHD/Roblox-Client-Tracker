PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["UpdateUnitTestOnly"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useEffect"]
        3 DUPCLOSURE                       R2 K1 [PROTO_0]
        4 CAPTURE                          UPVAL U1
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 2
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K2 ["Fragment"]
       10 LOADNIL                          R3
       11 GETTABLEKS                       R4 R0 K3 ["children"]
       13 CALL                             R1 3 -1
       14 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Plugin"]
        2 NAMECALL                         R1 R1 K1 ["FindFirstAncestorWhichIsA"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 1
        6 JUMPIF                           R2 ; [+20]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R3 R4 K2 ["Util"]
       10 GETTABLEKS                       R2 R3 K3 ["createFoundationDesignBinding"]
       12 CALL                             R2 0 2
       13 DUPTABLE                         R4 K6 [{"design", "onStyleSheetChange"}]
       14 GETUPVAL                         R5 3
       15 MOVE                             R6 R1
       16 GETUPVAL                         R7 0
       17 LOADNIL                          R8
       18 DUPTABLE                         R9 K8 [{"FoundationBinding"}]
       19 SETTABLEKS                       R2 R9 K7 ["FoundationBinding"]
       21 CALL                             R5 4 1
       22 SETTABLEKS                       R5 R4 K4 ["design"]
       24 SETTABLEKS                       R3 R4 K5 ["onStyleSheetChange"]
       26 SETUPVAL                         R4 1
       27 GETUPVAL                         R2 4
       28 DUPTABLE                         R3 K11 [{"Design", "Localization", "Plugin"}]
       29 GETUPVAL                         R5 5
       30 GETTABLEKS                       R4 R5 K12 ["new"]
       32 GETUPVAL                         R6 1
       33 GETTABLEKS                       R5 R6 K4 ["design"]
       35 CALL                             R4 1 1
       36 SETTABLEKS                       R4 R3 K9 ["Design"]
       38 GETUPVAL                         R4 6
       39 SETTABLEKS                       R4 R3 K10 ["Localization"]
       41 GETUPVAL                         R5 7
       42 GETTABLEKS                       R4 R5 K12 ["new"]
       44 GETUPVAL                         R6 8
       45 GETTABLEKS                       R5 R6 K12 ["new"]
       47 CALL                             R5 0 -1
       48 CALL                             R4 -1 1
       49 SETTABLEKS                       R4 R3 K0 ["Plugin"]
       51 DUPTABLE                         R4 K14 [{"ContextStack"}]
       52 GETUPVAL                         R5 9
       53 GETUPVAL                         R7 10
       54 GETTABLEKS                       R6 R7 K13 ["ContextStack"]
       56 DUPTABLE                         R7 K16 [{"providers"}]
       57 NEWTABLE                         R8 0 1
       59 GETUPVAL                         R9 9
       60 GETUPVAL                         R10 11
       61 DUPTABLE                         R11 K18 [{"onStyleSheetChange", "overlayGui"}]
       62 GETUPVAL                         R13 1
       63 GETTABLEKS                       R12 R13 K5 ["onStyleSheetChange"]
       65 SETTABLEKS                       R12 R11 K5 ["onStyleSheetChange"]
       67 GETUPVAL                         R13 12
       68 GETTABLEKS                       R12 R13 K19 ["Parent"]
       70 SETTABLEKS                       R12 R11 K17 ["overlayGui"]
       72 CALL                             R9 2 -1
       73 SETLIST                          R8 R9 -1 [1]
       75 SETTABLEKS                       R8 R7 K15 ["providers"]
       77 DUPTABLE                         R8 K21 [{"Children"}]
       78 GETUPVAL                         R9 9
       79 GETUPVAL                         R10 13
       80 LOADNIL                          R11
       81 MOVE                             R12 R0
       82 CALL                             R9 3 1
       83 SETTABLEKS                       R9 R8 K20 ["Children"]
       85 CALL                             R5 3 1
       86 SETTABLEKS                       R5 R4 K13 ["ContextStack"]
       88 CALL                             R2 2 -1
       89 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["StylingService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R0 K10 ["Packages"]
       17 GETTABLEKS                       R3 R4 K11 ["Framework"]
       19 CALL                             R2 1 1
       20 GETTABLEKS                       R6 R0 K12 ["Src"]
       22 GETTABLEKS                       R5 R6 K13 ["Resources"]
       24 GETTABLEKS                       R4 R5 K14 ["Localization"]
       26 GETTABLEKS                       R3 R4 K15 ["LocalizedStrings"]
       28 GETIMPORT                        R4 K9 [require]
       30 GETTABLEKS                       R6 R0 K10 ["Packages"]
       32 GETTABLEKS                       R5 R6 K16 ["React"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R8 R0 K12 ["Src"]
       37 GETTABLEKS                       R7 R8 K13 ["Resources"]
       39 GETTABLEKS                       R6 R7 K14 ["Localization"]
       41 GETTABLEKS                       R5 R6 K17 ["SourceStrings"]
       43 GETIMPORT                        R6 K9 [require]
       45 GETTABLEKS                       R9 R0 K10 ["Packages"]
       47 GETTABLEKS                       R8 R9 K18 ["Dev"]
       49 GETTABLEKS                       R7 R8 K19 ["ReactTestingLibrary"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K9 [require]
       54 GETTABLEKS                       R9 R0 K10 ["Packages"]
       56 GETTABLEKS                       R8 R9 K20 ["ReactUtils"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K9 [require]
       61 GETTABLEKS                       R10 R0 K10 ["Packages"]
       63 GETTABLEKS                       R9 R10 K21 ["StudioFoundation"]
       65 CALL                             R8 1 1
       66 GETTABLEKS                       R10 R2 K22 ["ContextServices"]
       68 GETTABLEKS                       R9 R10 K23 ["Design"]
       70 GETTABLEKS                       R11 R2 K22 ["ContextServices"]
       72 GETTABLEKS                       R10 R11 K14 ["Localization"]
       74 GETTABLEKS                       R12 R8 K24 ["Components"]
       76 GETTABLEKS                       R11 R12 K25 ["FoundationProviderAdapter"]
       78 GETTABLEKS                       R14 R2 K26 ["TestHelpers"]
       80 GETTABLEKS                       R13 R14 K27 ["Instances"]
       82 GETTABLEKS                       R12 R13 K28 ["MockPlugin"]
       84 GETTABLEKS                       R14 R2 K22 ["ContextServices"]
       86 GETTABLEKS                       R13 R14 K29 ["Plugin"]
       88 GETTABLEKS                       R14 R6 K30 ["document"]
       90 GETTABLEKS                       R15 R4 K31 ["createElement"]
       92 GETTABLEKS                       R17 R2 K22 ["ContextServices"]
       94 GETTABLEKS                       R16 R17 K32 ["provide"]
       96 GETTABLEKS                       R18 R2 K33 ["Styling"]
       98 GETTABLEKS                       R17 R18 K34 ["registerPluginStyles"]
      100 LOADNIL                          R18
      101 GETTABLEKS                       R19 R10 K35 ["new"]
      103 DUPTABLE                         R20 K40 [{"stringResourceTable", "translationResourceTable", "pluginName", "overrideLocaleId"}]
      104 SETTABLEKS                       R5 R20 K36 ["stringResourceTable"]
      106 SETTABLEKS                       R3 R20 K37 ["translationResourceTable"]
      108 LOADK                            R21 K41 ["DialogPlugin"]
      109 SETTABLEKS                       R21 R20 K38 ["pluginName"]
      111 LOADK                            R21 K42 ["en-US"]
      112 SETTABLEKS                       R21 R20 K39 ["overrideLocaleId"]
      114 CALL                             R19 1 1
      115 DUPCLOSURE                       R20 K43 [PROTO_1]
      116 CAPTURE                          VAL R4
      117 CAPTURE                          VAL R1
      118 CAPTURE                          VAL R15
      119 NEWCLOSURE                       R21 P1
      120 CAPTURE                          VAL R0
      121 CAPTURE                          REF R18
      122 CAPTURE                          VAL R8
      123 CAPTURE                          VAL R17
      124 CAPTURE                          VAL R16
      125 CAPTURE                          VAL R9
      126 CAPTURE                          VAL R19
      127 CAPTURE                          VAL R13
      128 CAPTURE                          VAL R12
      129 CAPTURE                          VAL R15
      130 CAPTURE                          VAL R7
      131 CAPTURE                          VAL R11
      132 CAPTURE                          VAL R14
      133 CAPTURE                          VAL R20
      134 CLOSEUPVALS                      R18
      135 RETURN                           R21 1
