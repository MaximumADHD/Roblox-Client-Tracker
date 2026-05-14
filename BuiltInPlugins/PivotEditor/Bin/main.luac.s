PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["unmount"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["mount"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["provide"]
        6 NEWTABLE                         R2 0 5
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K2 ["Plugin"]
       11 GETTABLEKS                       R3 R3 K3 ["new"]
       13 GETUPVAL                         R4 2
       14 CALL                             R3 1 1
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K4 ["Mouse"]
       18 GETTABLEKS                       R4 R4 K3 ["new"]
       20 GETUPVAL                         R5 2
       21 NAMECALL                         R5 R5 K5 ["GetMouse"]
       23 CALL                             R5 1 -1
       24 CALL                             R4 -1 1
       25 GETUPVAL                         R5 1
       26 GETTABLEKS                       R5 R5 K6 ["Store"]
       28 GETTABLEKS                       R5 R5 K3 ["new"]
       30 GETUPVAL                         R6 3
       31 GETTABLEKS                       R6 R6 K6 ["Store"]
       33 GETTABLEKS                       R6 R6 K3 ["new"]
       35 GETUPVAL                         R7 4
       36 LOADNIL                          R8
       37 NEWTABLE                         R9 0 1
       39 GETUPVAL                         R10 3
       40 GETTABLEKS                       R10 R10 K7 ["thunkMiddleware"]
       42 SETLIST                          R9 R10 1 [1]
       44 CALL                             R6 3 -1
       45 CALL                             R5 -1 1
       46 GETUPVAL                         R6 1
       47 GETTABLEKS                       R6 R6 K8 ["Localization"]
       49 GETTABLEKS                       R6 R6 K3 ["new"]
       51 GETUPVAL                         R7 5
       52 CALL                             R6 1 1
       53 GETUPVAL                         R7 6
       54 GETTABLEKS                       R7 R7 K3 ["new"]
       56 CALL                             R7 0 -1
       57 SETLIST                          R2 R3 -1 [1]
       59 DUPTABLE                         R3 K9 [{"Plugin"}]
       60 GETUPVAL                         R5 7
       61 CALL                             R5 0 1
       62 JUMPIFNOT                        R5 ; [+13]
       63 GETUPVAL                         R4 0
       64 GETTABLEKS                       R4 R4 K10 ["createElement"]
       66 GETUPVAL                         R5 8
       67 DUPTABLE                         R6 K12 [{"Plugin", "pluginLoaderContext"}]
       68 GETUPVAL                         R7 2
       69 SETTABLEKS                       R7 R6 K2 ["Plugin"]
       71 GETUPVAL                         R7 9
       72 SETTABLEKS                       R7 R6 K11 ["pluginLoaderContext"]
       74 CALL                             R4 2 1
       75 JUMP                             ; [+5]
       76 GETUPVAL                         R4 0
       77 GETTABLEKS                       R4 R4 K10 ["createElement"]
       79 GETUPVAL                         R5 8
       80 CALL                             R4 1 1
       81 SETTABLEKS                       R4 R3 K2 ["Plugin"]
       83 CALL                             R1 2 -1
       84 CALL                             R0 -1 1
       85 GETUPVAL                         R1 2
       86 GETTABLEKS                       R1 R1 K13 ["Unloading"]
       88 NEWCLOSURE                       R3 P0
       89 CAPTURE                          UPVAL U0
       90 CAPTURE                          VAL R0
       91 NAMECALL                         R1 R1 K14 ["Connect"]
       93 CALL                             R1 2 0
       94 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R2 K1 [require]
        2 GETIMPORT                        R3 K3 [script]
        4 GETTABLEKS                       R3 R3 K4 ["Parent"]
        6 GETTABLEKS                       R3 R3 K5 ["defineLuaFlags"]
        8 CALL                             R2 1 0
        9 GETIMPORT                        R2 K3 [script]
       11 GETTABLEKS                       R2 R2 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K4 ["Parent"]
       15 GETIMPORT                        R3 K1 [require]
       17 GETTABLEKS                       R4 R2 K6 ["Src"]
       19 GETTABLEKS                       R4 R4 K7 ["Flags"]
       21 GETTABLEKS                       R4 R4 K8 ["getFFlagImprovePluginSpeedPivotEditor"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K1 [require]
       26 GETTABLEKS                       R5 R2 K6 ["Src"]
       28 GETTABLEKS                       R5 R5 K9 ["Utility"]
       30 GETTABLEKS                       R5 R5 K10 ["DebugFlags"]
       32 CALL                             R4 1 1
       33 GETTABLEKS                       R5 R4 K11 ["RunningUnderCLI"]
       35 CALL                             R5 0 1
       36 JUMPIFNOT                        R5 ; [+1]
       37 RETURN                           R0 0
       38 GETIMPORT                        R5 K1 [require]
       40 GETTABLEKS                       R6 R2 K12 ["Packages"]
       42 GETTABLEKS                       R6 R6 K13 ["Roact"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K1 [require]
       47 GETTABLEKS                       R7 R2 K12 ["Packages"]
       49 GETTABLEKS                       R7 R7 K14 ["Rodux"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K1 [require]
       54 GETTABLEKS                       R8 R2 K12 ["Packages"]
       56 GETTABLEKS                       R8 R8 K15 ["Framework"]
       58 CALL                             R7 1 1
       59 GETTABLEKS                       R7 R7 K16 ["ContextServices"]
       61 GETIMPORT                        R8 K1 [require]
       63 GETTABLEKS                       R9 R2 K6 ["Src"]
       65 GETTABLEKS                       R9 R9 K17 ["Reducers"]
       67 GETTABLEKS                       R9 R9 K18 ["MainReducer"]
       69 CALL                             R8 1 1
       70 GETIMPORT                        R9 K1 [require]
       72 GETTABLEKS                       R10 R2 K6 ["Src"]
       74 GETTABLEKS                       R10 R10 K19 ["RoduxComponents"]
       76 GETTABLEKS                       R10 R10 K20 ["EditPivotPlugin"]
       78 CALL                             R9 1 1
       79 GETTABLEKS                       R10 R2 K6 ["Src"]
       81 GETTABLEKS                       R10 R10 K21 ["Resources"]
       83 GETTABLEKS                       R10 R10 K22 ["Localization"]
       85 GETTABLEKS                       R10 R10 K23 ["SourceStrings"]
       87 GETTABLEKS                       R11 R2 K6 ["Src"]
       89 GETTABLEKS                       R11 R11 K21 ["Resources"]
       91 GETTABLEKS                       R11 R11 K22 ["Localization"]
       93 GETTABLEKS                       R11 R11 K24 ["LocalizedStrings"]
       95 GETIMPORT                        R12 K1 [require]
       97 GETTABLEKS                       R13 R2 K6 ["Src"]
       99 GETTABLEKS                       R13 R13 K9 ["Utility"]
      101 GETTABLEKS                       R13 R13 K25 ["ToastNotification"]
      103 CALL                             R12 1 1
      104 DUPTABLE                         R13 K29 [{"pluginName", "stringResourceTable", "translationResourceTable"}]
      105 LOADK                            R14 K30 ["PivotEditor"]
      106 SETTABLEKS                       R14 R13 K26 ["pluginName"]
      108 SETTABLEKS                       R10 R13 K27 ["stringResourceTable"]
      110 SETTABLEKS                       R11 R13 K28 ["translationResourceTable"]
      112 NEWCLOSURE                       R14 P0
      113 CAPTURE                          VAL R5
      114 CAPTURE                          VAL R7
      115 CAPTURE                          VAL R0
      116 CAPTURE                          VAL R6
      117 CAPTURE                          VAL R8
      118 CAPTURE                          VAL R13
      119 CAPTURE                          VAL R12
      120 CAPTURE                          VAL R3
      121 CAPTURE                          VAL R9
      122 CAPTURE                          VAL R1
      123 MOVE                             R15 R14
      124 CALL                             R15 0 0
      125 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_2]
        2 RETURN                           R0 1
