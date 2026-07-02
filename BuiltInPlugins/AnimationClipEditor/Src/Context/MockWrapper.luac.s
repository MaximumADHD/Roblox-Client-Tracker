PROTO_0:
        0 JUMPIF                           R0 ; [+2]
        1 NEWTABLE                         R0 0 0
        3 GETTABLEKS                       R1 R0 K0 ["localization"]
        5 JUMPIF                           R1 ; [+5]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["mock"]
        9 CALL                             R2 0 1
       10 MOVE                             R1 R2
       11 GETTABLEKS                       R2 R0 K2 ["focusGui"]
       13 JUMPIF                           R2 ; [+5]
       14 GETIMPORT                        R3 K5 [Instance.new]
       16 LOADK                            R4 K6 ["ScreenGui"]
       17 CALL                             R3 1 1
       18 MOVE                             R2 R3
       19 LOADK                            R3 K7 ["FocusGuiMock"]
       20 SETTABLEKS                       R3 R2 K8 ["Name"]
       22 GETTABLEKS                       R3 R0 K9 ["Container"]
       24 JUMPIFNOT                        R3 ; [+4]
       25 GETTABLEKS                       R3 R0 K9 ["Container"]
       27 SETTABLEKS                       R3 R2 K10 ["Parent"]
       29 GETTABLEKS                       R3 R0 K11 ["plugin"]
       31 JUMPIF                           R3 ; [+5]
       32 GETUPVAL                         R4 1
       33 GETTABLEKS                       R4 R4 K4 ["new"]
       35 CALL                             R4 0 1
       36 MOVE                             R3 R4
       37 GETTABLEKS                       R4 R0 K12 ["mouse"]
       39 JUMPIF                           R4 ; [+4]
       40 NAMECALL                         R5 R3 K13 ["GetMouse"]
       42 CALL                             R5 1 1
       43 MOVE                             R4 R5
       44 GETTABLEKS                       R5 R0 K14 ["storeState"]
       46 GETUPVAL                         R6 2
       47 GETTABLEKS                       R6 R6 K15 ["Store"]
       49 GETTABLEKS                       R6 R6 K4 ["new"]
       51 GETUPVAL                         R7 3
       52 MOVE                             R8 R5
       53 NEWTABLE                         R9 0 1
       55 GETUPVAL                         R10 2
       56 GETTABLEKS                       R10 R10 K16 ["thunkMiddleware"]
       58 SETLIST                          R9 R10 1 [1]
       60 CALL                             R6 3 1
       61 GETTABLEKS                       R7 R0 K17 ["theme"]
       63 JUMPIF                           R7 ; [+4]
       64 GETUPVAL                         R8 4
       65 LOADB                            R9 1
       66 CALL                             R8 1 1
       67 MOVE                             R7 R8
       68 GETUPVAL                         R8 5
       69 GETTABLEKS                       R8 R8 K18 ["PluginActions"]
       71 GETTABLEKS                       R8 R8 K4 ["new"]
       73 MOVE                             R9 R3
       74 NEWTABLE                         R10 0 1
       76 DUPTABLE                         R11 K23 [{["id"] = "rerunLastStory", ["text"] = "MOCK"}]
       77 SETLIST                          R10 R11 1 [1]
       79 CALL                             R8 2 1
       80 GETUPVAL                         R9 6
       81 GETTABLEKS                       R9 R9 K4 ["new"]
       83 GETUPVAL                         R10 7
       84 GETTABLEKS                       R10 R10 K24 ["SIGNAL_KEYS"]
       86 CALL                             R9 1 1
       87 GETUPVAL                         R10 5
       88 GETTABLEKS                       R10 R10 K25 ["Analytics"]
       90 GETTABLEKS                       R10 R10 K1 ["mock"]
       92 CALL                             R10 0 1
       93 GETUPVAL                         R11 8
       94 GETTABLEKS                       R11 R11 K4 ["new"]
       96 GETUPVAL                         R12 9
       97 GETTABLEKS                       R12 R12 K4 ["new"]
       99 LOADK                            R13 K26 ["CalloutService"]
      100 LOADB                            R14 1
      101 CALL                             R12 2 1
      102 NAMECALL                         R12 R12 K27 ["asService"]
      104 CALL                             R12 1 -1
      105 CALL                             R11 -1 1
      106 DUPTABLE                         R12 K33 [{"focusGui", "plugin", "localization", "theme", "mouse", "store", "analytics", "pluginActions", "signals", "calloutController"}]
      107 SETTABLEKS                       R2 R12 K2 ["focusGui"]
      109 SETTABLEKS                       R3 R12 K11 ["plugin"]
      111 SETTABLEKS                       R1 R12 K0 ["localization"]
      113 SETTABLEKS                       R7 R12 K17 ["theme"]
      115 SETTABLEKS                       R4 R12 K12 ["mouse"]
      117 SETTABLEKS                       R6 R12 K28 ["store"]
      119 SETTABLEKS                       R10 R12 K29 ["analytics"]
      121 SETTABLEKS                       R8 R12 K30 ["pluginActions"]
      123 SETTABLEKS                       R9 R12 K31 ["signals"]
      125 SETTABLEKS                       R11 R12 K32 ["calloutController"]
      127 RETURN                           R12 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getMockGlobals"]
        3 GETTABLEKS                       R2 R0 K1 ["props"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["createElement"]
        9 GETUPVAL                         R3 2
       10 MOVE                             R4 R1
       11 GETTABLEKS                       R6 R0 K1 ["props"]
       13 GETUPVAL                         R7 1
       14 GETTABLEKS                       R7 R7 K3 ["Children"]
       16 GETTABLE                         R5 R6 R7
       17 CALL                             R2 3 -1
       18 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Rodux"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R3 K11 ["TestHelpers"]
       32 GETTABLEKS                       R5 R5 K12 ["ServiceWrapper"]
       34 GETTABLEKS                       R6 R3 K11 ["TestHelpers"]
       36 GETTABLEKS                       R6 R6 K13 ["Instances"]
       38 GETTABLEKS                       R6 R6 K14 ["MockPlugin"]
       40 GETIMPORT                        R7 K5 [require]
       42 GETTABLEKS                       R8 R0 K15 ["Src"]
       44 GETTABLEKS                       R8 R8 K16 ["Context"]
       46 GETTABLEKS                       R8 R8 K17 ["MainProvider"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K5 [require]
       51 GETTABLEKS                       R9 R0 K15 ["Src"]
       53 GETTABLEKS                       R9 R9 K18 ["Util"]
       55 GETTABLEKS                       R9 R9 K19 ["Theme"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K5 [require]
       60 GETTABLEKS                       R10 R0 K15 ["Src"]
       62 GETTABLEKS                       R10 R10 K20 ["Reducers"]
       64 GETTABLEKS                       R10 R10 K21 ["MainReducer"]
       66 CALL                             R9 1 1
       67 GETTABLEKS                       R10 R4 K22 ["Localization"]
       69 GETIMPORT                        R11 K5 [require]
       71 GETTABLEKS                       R12 R0 K15 ["Src"]
       73 GETTABLEKS                       R12 R12 K16 ["Context"]
       75 GETTABLEKS                       R12 R12 K23 ["Signals"]
       77 CALL                             R11 1 1
       78 GETIMPORT                        R12 K5 [require]
       80 GETTABLEKS                       R13 R0 K15 ["Src"]
       82 GETTABLEKS                       R13 R13 K18 ["Util"]
       84 GETTABLEKS                       R13 R13 K24 ["Constants"]
       86 CALL                             R12 1 1
       87 GETIMPORT                        R13 K5 [require]
       89 GETTABLEKS                       R14 R0 K15 ["Src"]
       91 GETTABLEKS                       R14 R14 K18 ["Util"]
       93 GETTABLEKS                       R14 R14 K25 ["CalloutController"]
       95 CALL                             R13 1 1
       96 GETTABLEKS                       R14 R1 K26 ["Component"]
       98 LOADK                            R16 K27 ["MockWrapper"]
       99 NAMECALL                         R14 R14 K28 ["extend"]
      101 CALL                             R14 2 1
      102 DUPCLOSURE                       R15 K29 [PROTO_0]
      103 CAPTURE                          VAL R10
      104 CAPTURE                          VAL R6
      105 CAPTURE                          VAL R2
      106 CAPTURE                          VAL R9
      107 CAPTURE                          VAL R8
      108 CAPTURE                          VAL R4
      109 CAPTURE                          VAL R11
      110 CAPTURE                          VAL R12
      111 CAPTURE                          VAL R13
      112 CAPTURE                          VAL R5
      113 SETTABLEKS                       R15 R14 K30 ["getMockGlobals"]
      115 DUPCLOSURE                       R15 K31 [PROTO_1]
      116 CAPTURE                          VAL R14
      117 CAPTURE                          VAL R1
      118 CAPTURE                          VAL R7
      119 SETTABLEKS                       R15 R14 K32 ["render"]
      121 RETURN                           R14 1
