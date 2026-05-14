PROTO_0:
        0 DUPTABLE                         R1 K1 [{"enabled"}]
        1 GETTABLEKS                       R3 R0 K0 ["enabled"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["enabled"]
        6 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETTABLEKS                       R0 R0 K1 ["enabled"]
        5 JUMPIFNOT                        R0 ; [+15]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K2 ["analytics"]
        9 LOADK                            R2 K3 ["menuClose"]
       10 NAMECALL                         R0 R0 K4 ["report"]
       12 CALL                             R0 2 0
       13 GETUPVAL                         R0 0
       14 GETTABLEKS                       R0 R0 K2 ["analytics"]
       16 LOADK                            R2 K5 ["menuCloseManual"]
       17 NAMECALL                         R0 R0 K4 ["report"]
       19 CALL                             R0 2 0
       20 JUMP                             ; [+7]
       21 GETUPVAL                         R0 0
       22 GETTABLEKS                       R0 R0 K2 ["analytics"]
       24 LOADK                            R2 K6 ["menuOpen"]
       25 NAMECALL                         R0 R0 K4 ["report"]
       27 CALL                             R0 2 0
       28 GETUPVAL                         R0 0
       29 DUPCLOSURE                       R2 K7 [PROTO_0]
       30 NAMECALL                         R0 R0 K8 ["setState"]
       32 CALL                             R0 2 0
       33 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["analytics"]
        3 LOADK                            R2 K1 ["menuClose"]
        4 NAMECALL                         R0 R0 K2 ["report"]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 0
        8 DUPTABLE                         R2 K4 [{"enabled"}]
        9 LOADB                            R3 0
       10 SETTABLEKS                       R3 R2 K3 ["enabled"]
       12 NAMECALL                         R0 R0 K5 ["setState"]
       14 CALL                             R0 2 0
       15 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"enabled"}]
        2 GETTABLEKS                       R4 R0 K2 ["Enabled"]
        4 SETTABLEKS                       R4 R3 K0 ["enabled"]
        6 NAMECALL                         R1 R1 K3 ["setState"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R4 K1 [{"enabled"}]
        1 LOADB                            R5 0
        2 SETTABLEKS                       R5 R4 K0 ["enabled"]
        4 NAMECALL                         R2 R0 K2 ["setState"]
        6 CALL                             R2 2 0
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R2 R0 K3 ["toggleEnabled"]
       11 NEWCLOSURE                       R2 P1
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R2 R0 K4 ["onClose"]
       15 NEWCLOSURE                       R2 P2
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R2 R0 K5 ["onWidgetEnabledChanged"]
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K6 ["Store"]
       22 GETTABLEKS                       R2 R2 K7 ["new"]
       24 GETUPVAL                         R3 1
       25 LOADNIL                          R4
       26 NEWTABLE                         R5 0 1
       28 GETUPVAL                         R6 0
       29 GETTABLEKS                       R6 R6 K8 ["thunkMiddleware"]
       31 SETLIST                          R5 R6 1 [1]
       33 LOADNIL                          R6
       34 CALL                             R2 4 1
       35 SETTABLEKS                       R2 R0 K9 ["store"]
       37 GETUPVAL                         R2 2
       38 GETTABLEKS                       R2 R2 K10 ["Localization"]
       40 GETTABLEKS                       R2 R2 K7 ["new"]
       42 DUPTABLE                         R3 K14 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       43 GETUPVAL                         R4 3
       44 SETTABLEKS                       R4 R3 K11 ["stringResourceTable"]
       46 GETUPVAL                         R4 4
       47 SETTABLEKS                       R4 R3 K12 ["translationResourceTable"]
       49 LOADK                            R4 K15 ["RigGenerator"]
       50 SETTABLEKS                       R4 R3 K13 ["pluginName"]
       52 CALL                             R2 1 1
       53 SETTABLEKS                       R2 R0 K16 ["localization"]
       55 GETUPVAL                         R2 2
       56 GETTABLEKS                       R2 R2 K17 ["Analytics"]
       58 GETTABLEKS                       R2 R2 K7 ["new"]
       60 GETUPVAL                         R3 5
       61 CALL                             R2 1 1
       62 SETTABLEKS                       R2 R0 K18 ["analytics"]
       64 MOVE                             R4 R1
       65 NAMECALL                         R2 R0 K19 ["initToolbarAndButton"]
       67 CALL                             R2 2 0
       68 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R1 K0 ["PluginLoaderContext"]
        2 GETTABLEKS                       R2 R2 K1 ["toolbar"]
        4 SETTABLEKS                       R2 R0 K1 ["toolbar"]
        6 GETTABLEKS                       R2 R1 K0 ["PluginLoaderContext"]
        8 GETTABLEKS                       R2 R2 K2 ["mainButton"]
       10 SETTABLEKS                       R2 R0 K2 ["mainButton"]
       12 GETTABLEKS                       R2 R0 K2 ["mainButton"]
       14 GETTABLEKS                       R4 R0 K3 ["state"]
       16 GETTABLEKS                       R4 R4 K4 ["enabled"]
       18 NAMECALL                         R2 R2 K5 ["SetActive"]
       20 CALL                             R2 2 0
       21 GETTABLEKS                       R2 R1 K0 ["PluginLoaderContext"]
       23 GETTABLEKS                       R2 R2 K6 ["mainButtonClickedSignal"]
       25 GETTABLEKS                       R4 R0 K7 ["toggleEnabled"]
       27 NAMECALL                         R2 R2 K8 ["Connect"]
       29 CALL                             R2 2 0
       30 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["onClose"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETTABLEKS                       R4 R2 K3 ["enabled"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K4 ["provide"]
       11 NEWTABLE                         R6 0 6
       13 GETUPVAL                         R7 1
       14 GETTABLEKS                       R7 R7 K5 ["new"]
       16 MOVE                             R8 R3
       17 CALL                             R7 1 1
       18 GETUPVAL                         R8 2
       19 GETTABLEKS                       R8 R8 K5 ["new"]
       21 GETTABLEKS                       R9 R0 K6 ["store"]
       23 CALL                             R8 1 1
       24 GETUPVAL                         R9 3
       25 GETTABLEKS                       R9 R9 K5 ["new"]
       27 NAMECALL                         R10 R3 K7 ["getMouse"]
       29 CALL                             R10 1 -1
       30 CALL                             R9 -1 1
       31 GETUPVAL                         R10 4
       32 CALL                             R10 0 1
       33 GETTABLEKS                       R11 R0 K8 ["localization"]
       35 GETTABLEKS                       R12 R0 K9 ["analytics"]
       37 SETLIST                          R6 R7 6 [1]
       39 DUPTABLE                         R7 K11 [{"MainWidget"}]
       40 GETUPVAL                         R8 5
       41 GETTABLEKS                       R8 R8 K12 ["createPortal"]
       43 DUPTABLE                         R9 K14 [{"RigGenerator"}]
       44 GETUPVAL                         R10 6
       45 GETTABLEKS                       R10 R10 K15 ["createElement"]
       47 LOADK                            R11 K16 ["ScreenGui"]
       48 NEWTABLE                         R12 4 0
       50 SETTABLEKS                       R4 R12 K17 ["Enabled"]
       52 GETIMPORT                        R13 K21 [Enum.ZIndexBehavior.Sibling]
       54 SETTABLEKS                       R13 R12 K19 ["ZIndexBehavior"]
       56 GETUPVAL                         R13 5
       57 GETTABLEKS                       R13 R13 K22 ["Change"]
       59 GETTABLEKS                       R13 R13 K17 ["Enabled"]
       61 GETTABLEKS                       R14 R0 K23 ["onWidgetEnabledChanged"]
       63 SETTABLE                         R14 R12 R13
       64 DUPTABLE                         R13 K26 [{"ExampleRoactRoduxComponent", "RigSelector"}]
       65 GETUPVAL                         R14 6
       66 GETTABLEKS                       R14 R14 K15 ["createElement"]
       68 GETUPVAL                         R15 7
       69 CALL                             R14 1 1
       70 SETTABLEKS                       R14 R13 K24 ["ExampleRoactRoduxComponent"]
       72 GETUPVAL                         R14 6
       73 GETTABLEKS                       R14 R14 K15 ["createElement"]
       75 GETUPVAL                         R15 8
       76 DUPTABLE                         R16 K28 [{"MenuCompleted"}]
       77 NEWCLOSURE                       R17 P0
       78 CAPTURE                          VAL R0
       79 SETTABLEKS                       R17 R16 K27 ["MenuCompleted"]
       81 CALL                             R14 2 1
       82 SETTABLEKS                       R14 R13 K25 ["RigSelector"]
       84 CALL                             R10 3 1
       85 SETTABLEKS                       R10 R9 K13 ["RigGenerator"]
       87 GETUPVAL                         R10 9
       88 CALL                             R8 2 1
       89 SETTABLEKS                       R8 R7 K10 ["MainWidget"]
       91 CALL                             R5 2 -1
       92 RETURN                           R5 -1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["mainButton"]
        2 GETTABLEKS                       R3 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R3 K2 ["enabled"]
        6 NAMECALL                         R1 R1 K3 ["SetActive"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Packages"]
       11 GETTABLEKS                       R2 R2 K6 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K5 ["Packages"]
       18 GETTABLEKS                       R3 R3 K7 ["ReactRoblox"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R4 R0 K5 ["Packages"]
       25 GETTABLEKS                       R4 R4 K8 ["Rodux"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K4 [require]
       30 GETTABLEKS                       R5 R0 K5 ["Packages"]
       32 GETTABLEKS                       R5 R5 K9 ["Framework"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K10 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K11 ["Plugin"]
       39 GETTABLEKS                       R7 R5 K12 ["Mouse"]
       41 GETTABLEKS                       R8 R5 K13 ["Store"]
       43 GETIMPORT                        R9 K4 [require]
       45 GETTABLEKS                       R10 R0 K14 ["Src"]
       47 GETTABLEKS                       R10 R10 K15 ["Resources"]
       49 GETTABLEKS                       R10 R10 K16 ["AnalyticsHandlers"]
       51 CALL                             R9 1 1
       52 GETIMPORT                        R10 K4 [require]
       54 GETTABLEKS                       R11 R0 K14 ["Src"]
       56 GETTABLEKS                       R11 R11 K17 ["Reducers"]
       58 GETTABLEKS                       R11 R11 K18 ["MainReducer"]
       60 CALL                             R10 1 1
       61 GETIMPORT                        R11 K4 [require]
       63 GETTABLEKS                       R12 R0 K14 ["Src"]
       65 GETTABLEKS                       R12 R12 K15 ["Resources"]
       67 GETTABLEKS                       R12 R12 K19 ["MakeTheme"]
       69 CALL                             R11 1 1
       70 GETTABLEKS                       R12 R0 K14 ["Src"]
       72 GETTABLEKS                       R12 R12 K15 ["Resources"]
       74 GETTABLEKS                       R12 R12 K20 ["Localization"]
       76 GETTABLEKS                       R12 R12 K21 ["SourceStrings"]
       78 GETTABLEKS                       R13 R0 K14 ["Src"]
       80 GETTABLEKS                       R13 R13 K15 ["Resources"]
       82 GETTABLEKS                       R13 R13 K20 ["Localization"]
       84 GETTABLEKS                       R13 R13 K22 ["LocalizedStrings"]
       86 GETTABLEKS                       R14 R0 K14 ["Src"]
       88 GETTABLEKS                       R14 R14 K23 ["Components"]
       90 GETIMPORT                        R15 K4 [require]
       92 GETTABLEKS                       R16 R14 K24 ["RigSelector"]
       94 CALL                             R15 1 1
       95 GETIMPORT                        R16 K4 [require]
       97 GETTABLEKS                       R17 R14 K25 ["ExampleRoactRoduxComponent"]
       99 CALL                             R16 1 1
      100 GETIMPORT                        R17 K27 [game]
      102 LOADK                            R19 K28 ["CoreGui"]
      103 NAMECALL                         R17 R17 K29 ["GetService"]
      105 CALL                             R17 2 1
      106 GETTABLEKS                       R18 R1 K30 ["PureComponent"]
      108 LOADK                            R20 K31 ["MainPlugin"]
      109 NAMECALL                         R18 R18 K32 ["extend"]
      111 CALL                             R18 2 1
      112 DUPCLOSURE                       R19 K33 [PROTO_4]
      113 CAPTURE                          VAL R3
      114 CAPTURE                          VAL R10
      115 CAPTURE                          VAL R5
      116 CAPTURE                          VAL R12
      117 CAPTURE                          VAL R13
      118 CAPTURE                          VAL R9
      119 SETTABLEKS                       R19 R18 K34 ["init"]
      121 DUPCLOSURE                       R19 K35 [PROTO_5]
      122 SETTABLEKS                       R19 R18 K36 ["initToolbarAndButton"]
      124 DUPCLOSURE                       R19 K37 [PROTO_7]
      125 CAPTURE                          VAL R5
      126 CAPTURE                          VAL R6
      127 CAPTURE                          VAL R8
      128 CAPTURE                          VAL R7
      129 CAPTURE                          VAL R11
      130 CAPTURE                          VAL R2
      131 CAPTURE                          VAL R1
      132 CAPTURE                          VAL R16
      133 CAPTURE                          VAL R15
      134 CAPTURE                          VAL R17
      135 SETTABLEKS                       R19 R18 K38 ["render"]
      137 DUPCLOSURE                       R19 K39 [PROTO_8]
      138 SETTABLEKS                       R19 R18 K40 ["didUpdate"]
      140 RETURN                           R18 1
