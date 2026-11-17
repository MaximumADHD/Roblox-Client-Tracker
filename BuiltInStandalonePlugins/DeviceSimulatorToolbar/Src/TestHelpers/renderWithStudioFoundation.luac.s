PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["UpdateUnitTestOnly"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useEffect"]
        3 DUPCLOSURE                       R2 K1 [PROTO_0]
        4 CAPTURE                          UPVAL U1
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 2
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["Fragment"]
       10 LOADNIL                          R3
       11 GETTABLEKS                       R4 R0 K3 ["children"]
       13 CALL                             R1 3 -1
       14 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+24]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["Util"]
        5 GETTABLEKS                       R2 R2 K1 ["createFoundationDesignBinding"]
        7 CALL                             R2 0 2
        8 DUPTABLE                         R4 K4 [{"design", "onStyleSheetChange"}]
        9 GETUPVAL                         R5 2
       10 GETUPVAL                         R6 3
       11 LOADK                            R8 K5 ["Plugin"]
       12 NAMECALL                         R6 R6 K6 ["FindFirstAncestorWhichIsA"]
       14 CALL                             R6 2 1
       15 GETUPVAL                         R7 3
       16 LOADNIL                          R8
       17 DUPTABLE                         R9 K8 [{"FoundationBinding"}]
       18 SETTABLEKS                       R2 R9 K7 ["FoundationBinding"]
       20 CALL                             R5 4 1
       21 SETTABLEKS                       R5 R4 K2 ["design"]
       23 SETTABLEKS                       R3 R4 K3 ["onStyleSheetChange"]
       25 SETUPVAL                         R4 0
       26 GETUPVAL                         R2 4
       27 GETUPVAL                         R3 5
       28 GETTABLEKS                       R3 R3 K9 ["wrap"]
       30 GETUPVAL                         R4 6
       31 DUPTABLE                         R5 K11 [{"Design", "Plugin"}]
       32 GETUPVAL                         R6 7
       33 GETTABLEKS                       R6 R6 K12 ["new"]
       35 GETUPVAL                         R7 0
       36 GETTABLEKS                       R7 R7 K2 ["design"]
       38 CALL                             R6 1 1
       39 SETTABLEKS                       R6 R5 K10 ["Design"]
       41 GETUPVAL                         R6 8
       42 GETTABLEKS                       R6 R6 K12 ["new"]
       44 MOVE                             R7 R0
       45 CALL                             R6 1 1
       46 SETTABLEKS                       R6 R5 K5 ["Plugin"]
       48 DUPTABLE                         R6 K14 [{"FoundationProvider"}]
       49 GETUPVAL                         R7 9
       50 GETUPVAL                         R8 10
       51 DUPTABLE                         R9 K18 [{["theme"] = "Dark", ["overlayGui"], ["onStyleSheetChange"]}]
       52 GETUPVAL                         R10 11
       53 GETTABLEKS                       R10 R10 K19 ["Parent"]
       55 SETTABLEKS                       R10 R9 K17 ["overlayGui"]
       57 GETUPVAL                         R10 0
       58 GETTABLEKS                       R10 R10 K3 ["onStyleSheetChange"]
       60 SETTABLEKS                       R10 R9 K3 ["onStyleSheetChange"]
       62 DUPTABLE                         R10 K21 [{"Children"}]
       63 GETUPVAL                         R11 9
       64 GETUPVAL                         R12 12
       65 LOADNIL                          R13
       66 MOVE                             R14 R1
       67 CALL                             R11 3 1
       68 SETTABLEKS                       R11 R10 K20 ["Children"]
       70 CALL                             R7 3 1
       71 SETTABLEKS                       R7 R6 K13 ["FoundationProvider"]
       73 CALL                             R4 2 -1
       74 CALL                             R3 -1 -1
       75 CALL                             R2 -1 -1
       76 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DeviceSimulatorToolbar"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["StylingService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["Framework"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["React"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R0 K10 ["Packages"]
       31 GETTABLEKS                       R5 R5 K13 ["Dev"]
       33 GETTABLEKS                       R5 R5 K14 ["ReactTestingLibrary"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R6 R0 K10 ["Packages"]
       40 GETTABLEKS                       R6 R6 K15 ["StudioFoundation"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K9 [require]
       45 GETTABLEKS                       R7 R0 K16 ["Src"]
       47 GETTABLEKS                       R7 R7 K17 ["TestHelpers"]
       49 GETTABLEKS                       R7 R7 K18 ["TestLocalization"]
       51 CALL                             R6 1 1
       52 GETTABLEKS                       R7 R2 K19 ["ContextServices"]
       54 GETTABLEKS                       R7 R7 K20 ["Design"]
       56 GETTABLEKS                       R8 R5 K21 ["Components"]
       58 GETTABLEKS                       R8 R8 K22 ["FoundationProviderAdapter"]
       60 GETTABLEKS                       R9 R2 K19 ["ContextServices"]
       62 GETTABLEKS                       R9 R9 K23 ["Plugin"]
       64 GETTABLEKS                       R10 R4 K24 ["document"]
       66 GETTABLEKS                       R11 R3 K25 ["createElement"]
       68 GETTABLEKS                       R12 R2 K19 ["ContextServices"]
       70 GETTABLEKS                       R12 R12 K26 ["provide"]
       72 GETTABLEKS                       R13 R2 K27 ["Styling"]
       74 GETTABLEKS                       R13 R13 K28 ["registerPluginStyles"]
       76 GETTABLEKS                       R14 R4 K29 ["render"]
       78 LOADNIL                          R15
       79 DUPCLOSURE                       R16 K30 [PROTO_1]
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R1
       82 CAPTURE                          VAL R11
       83 NEWCLOSURE                       R17 P1
       84 CAPTURE                          REF R15
       85 CAPTURE                          VAL R5
       86 CAPTURE                          VAL R13
       87 CAPTURE                          VAL R0
       88 CAPTURE                          VAL R14
       89 CAPTURE                          VAL R6
       90 CAPTURE                          VAL R12
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R9
       93 CAPTURE                          VAL R11
       94 CAPTURE                          VAL R8
       95 CAPTURE                          VAL R10
       96 CAPTURE                          VAL R16
       97 CLOSEUPVALS                      R15
       98 RETURN                           R17 1
