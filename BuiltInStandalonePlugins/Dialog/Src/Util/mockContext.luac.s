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
       28 DUPTABLE                         R3 K10 [{"Design", "Plugin"}]
       29 GETUPVAL                         R5 5
       30 GETTABLEKS                       R4 R5 K11 ["new"]
       32 GETUPVAL                         R6 1
       33 GETTABLEKS                       R5 R6 K4 ["design"]
       35 CALL                             R4 1 1
       36 SETTABLEKS                       R4 R3 K9 ["Design"]
       38 GETUPVAL                         R5 6
       39 GETTABLEKS                       R4 R5 K11 ["new"]
       41 GETUPVAL                         R6 7
       42 GETTABLEKS                       R5 R6 K11 ["new"]
       44 CALL                             R5 0 -1
       45 CALL                             R4 -1 1
       46 SETTABLEKS                       R4 R3 K0 ["Plugin"]
       48 DUPTABLE                         R4 K13 [{"ContextStack"}]
       49 GETUPVAL                         R5 8
       50 GETUPVAL                         R7 9
       51 GETTABLEKS                       R6 R7 K12 ["ContextStack"]
       53 DUPTABLE                         R7 K15 [{"providers"}]
       54 NEWTABLE                         R8 0 1
       56 GETUPVAL                         R9 8
       57 GETUPVAL                         R10 10
       58 DUPTABLE                         R11 K17 [{"onStyleSheetChange", "overlayGui"}]
       59 GETUPVAL                         R13 1
       60 GETTABLEKS                       R12 R13 K5 ["onStyleSheetChange"]
       62 SETTABLEKS                       R12 R11 K5 ["onStyleSheetChange"]
       64 GETUPVAL                         R13 11
       65 GETTABLEKS                       R12 R13 K18 ["Parent"]
       67 SETTABLEKS                       R12 R11 K16 ["overlayGui"]
       69 CALL                             R9 2 -1
       70 SETLIST                          R8 R9 -1 [1]
       72 SETTABLEKS                       R8 R7 K14 ["providers"]
       74 DUPTABLE                         R8 K20 [{"Children"}]
       75 GETUPVAL                         R9 8
       76 GETUPVAL                         R10 12
       77 LOADNIL                          R11
       78 MOVE                             R12 R0
       79 CALL                             R9 3 1
       80 SETTABLEKS                       R9 R8 K19 ["Children"]
       82 CALL                             R5 3 1
       83 SETTABLEKS                       R5 R4 K12 ["ContextStack"]
       85 CALL                             R2 2 -1
       86 RETURN                           R2 -1

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
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R5 R0 K10 ["Packages"]
       24 GETTABLEKS                       R4 R5 K12 ["React"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R7 R0 K10 ["Packages"]
       31 GETTABLEKS                       R6 R7 K13 ["Dev"]
       33 GETTABLEKS                       R5 R6 K14 ["ReactTestingLibrary"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R7 R0 K10 ["Packages"]
       40 GETTABLEKS                       R6 R7 K15 ["ReactUtils"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K9 [require]
       45 GETTABLEKS                       R8 R0 K10 ["Packages"]
       47 GETTABLEKS                       R7 R8 K16 ["StudioFoundation"]
       49 CALL                             R6 1 1
       50 GETTABLEKS                       R8 R2 K17 ["ContextServices"]
       52 GETTABLEKS                       R7 R8 K18 ["Design"]
       54 GETTABLEKS                       R9 R6 K19 ["Components"]
       56 GETTABLEKS                       R8 R9 K20 ["FoundationProviderAdapter"]
       58 GETTABLEKS                       R11 R2 K21 ["TestHelpers"]
       60 GETTABLEKS                       R10 R11 K22 ["Instances"]
       62 GETTABLEKS                       R9 R10 K23 ["MockPlugin"]
       64 GETTABLEKS                       R11 R2 K17 ["ContextServices"]
       66 GETTABLEKS                       R10 R11 K24 ["Plugin"]
       68 GETTABLEKS                       R11 R4 K25 ["document"]
       70 GETTABLEKS                       R12 R3 K26 ["createElement"]
       72 GETTABLEKS                       R14 R2 K17 ["ContextServices"]
       74 GETTABLEKS                       R13 R14 K27 ["provide"]
       76 GETTABLEKS                       R15 R2 K28 ["Styling"]
       78 GETTABLEKS                       R14 R15 K29 ["registerPluginStyles"]
       80 LOADNIL                          R15
       81 DUPCLOSURE                       R16 K30 [PROTO_1]
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R12
       85 NEWCLOSURE                       R17 P1
       86 CAPTURE                          VAL R0
       87 CAPTURE                          REF R15
       88 CAPTURE                          VAL R6
       89 CAPTURE                          VAL R14
       90 CAPTURE                          VAL R13
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R10
       93 CAPTURE                          VAL R9
       94 CAPTURE                          VAL R12
       95 CAPTURE                          VAL R5
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R11
       98 CAPTURE                          VAL R16
       99 CLOSEUPVALS                      R15
      100 RETURN                           R17 1
