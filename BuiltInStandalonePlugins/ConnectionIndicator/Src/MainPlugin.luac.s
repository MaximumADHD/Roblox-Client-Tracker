PROTO_0:
        0 DUPTABLE                         R1 K1 [{"enabled"}]
        1 GETTABLEKS                       R3 R0 K0 ["enabled"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["enabled"]
        6 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_0]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"enabled"}]
        2 SETTABLEKS                       R0 R3 K0 ["enabled"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"enabled"}]
        2 GETTABLEKS                       R4 R0 K2 ["Enabled"]
        4 SETTABLEKS                       R4 R3 K0 ["enabled"]
        6 NAMECALL                         R1 R1 K3 ["setState"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["PluginLoaderContext"]
        5 GETTABLEKS                       R0 R0 K2 ["mainButtonClickedSignal"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K3 ["toggleEnabled"]
       10 NAMECALL                         R0 R0 K4 ["Connect"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_6:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_7:
        0 DUPTABLE                         R2 K2 [{[1] = False}]
        1 SETTABLEKS                       R2 R0 K3 ["state"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R2 R0 K4 ["toggleEnabled"]
        7 NEWCLOSURE                       R2 P1
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R2 R0 K5 ["onClose"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R2 R0 K6 ["onRestore"]
       15 NEWCLOSURE                       R2 P3
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R2 R0 K7 ["onWidgetEnabledChanged"]
       19 NEWCLOSURE                       R2 P4
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R2 R0 K8 ["onDockWidgetCreated"]
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R2 R2 K9 ["Localization"]
       26 GETTABLEKS                       R2 R2 K10 ["new"]
       28 DUPTABLE                         R3 K15 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "ConnectionIndicator"}]
       29 GETUPVAL                         R4 1
       30 SETTABLEKS                       R4 R3 K11 ["stringResourceTable"]
       32 GETUPVAL                         R4 2
       33 SETTABLEKS                       R4 R3 K12 ["translationResourceTable"]
       35 CALL                             R2 1 1
       36 SETTABLEKS                       R2 R0 K16 ["localization"]
       38 GETUPVAL                         R2 0
       39 GETTABLEKS                       R2 R2 K17 ["Analytics"]
       41 GETTABLEKS                       R2 R2 K10 ["new"]
       43 DUPCLOSURE                       R3 K18 [PROTO_6]
       44 NEWTABLE                         R4 0 0
       46 CALL                             R2 2 1
       47 SETTABLEKS                       R2 R0 K19 ["analytics"]
       49 GETUPVAL                         R2 3
       50 GETTABLEKS                       R2 R2 K10 ["new"]
       52 CALL                             R2 0 1
       53 SETTABLEKS                       R2 R0 K20 ["DEPRECATED_stylizer"]
       55 GETUPVAL                         R2 4
       56 GETTABLEKS                       R3 R1 K21 ["Plugin"]
       58 CALL                             R2 1 1
       59 SETTABLEKS                       R2 R0 K22 ["design"]
       61 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["PluginLoaderContext"]
        4 GETTABLEKS                       R1 R1 K2 ["mainButton"]
        6 GETTABLEKS                       R3 R0 K3 ["state"]
        8 GETTABLEKS                       R3 R3 K4 ["enabled"]
       10 NAMECALL                         R1 R1 K5 ["SetActive"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETTABLEKS                       R4 R2 K3 ["enabled"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K4 ["provide"]
       11 NEWTABLE                         R6 0 4
       13 GETUPVAL                         R7 1
       14 GETTABLEKS                       R7 R7 K5 ["new"]
       16 MOVE                             R8 R3
       17 CALL                             R7 1 1
       18 GETUPVAL                         R8 2
       19 GETTABLEKS                       R8 R8 K5 ["new"]
       21 NAMECALL                         R9 R3 K6 ["getMouse"]
       23 CALL                             R9 1 -1
       24 CALL                             R8 -1 1
       25 GETTABLEKS                       R9 R0 K7 ["localization"]
       27 GETTABLEKS                       R10 R0 K8 ["analytics"]
       29 SETLIST                          R6 R7 4 [1]
       31 DUPTABLE                         R7 K10 [{"MainWidget"}]
       32 GETUPVAL                         R8 3
       33 GETTABLEKS                       R8 R8 K11 ["createElement"]
       35 GETUPVAL                         R9 4
       36 NEWTABLE                         R10 16 0
       38 LOADK                            R11 K12 ["ConnectionIndicator"]
       39 SETTABLEKS                       R11 R10 K13 ["Id"]
       41 SETTABLEKS                       R4 R10 K14 ["Enabled"]
       43 GETTABLEKS                       R11 R0 K7 ["localization"]
       45 LOADK                            R13 K2 ["Plugin"]
       46 LOADK                            R14 K15 ["Name"]
       47 NAMECALL                         R11 R11 K16 ["getText"]
       49 CALL                             R11 3 1
       50 SETTABLEKS                       R11 R10 K17 ["Title"]
       52 GETIMPORT                        R11 K21 [Enum.ZIndexBehavior.Sibling]
       54 SETTABLEKS                       R11 R10 K19 ["ZIndexBehavior"]
       56 GETIMPORT                        R11 K24 [Enum.InitialDockState.Bottom]
       58 SETTABLEKS                       R11 R10 K22 ["InitialDockState"]
       60 GETIMPORT                        R11 K26 [Vector2.new]
       62 LOADN                            R12 640
       63 LOADN                            R13 480
       64 CALL                             R11 2 1
       65 SETTABLEKS                       R11 R10 K27 ["Size"]
       67 GETIMPORT                        R11 K26 [Vector2.new]
       69 LOADN                            R12 250
       70 LOADN                            R13 200
       71 CALL                             R11 2 1
       72 SETTABLEKS                       R11 R10 K28 ["MinSize"]
       74 GETTABLEKS                       R11 R0 K29 ["onClose"]
       76 SETTABLEKS                       R11 R10 K30 ["OnClose"]
       78 GETTABLEKS                       R11 R1 K31 ["PluginLoaderContext"]
       80 GETTABLEKS                       R11 R11 K32 ["mainDockWidget"]
       82 SETTABLEKS                       R11 R10 K33 ["Widget"]
       84 GETTABLEKS                       R11 R0 K34 ["onDockWidgetCreated"]
       86 SETTABLEKS                       R11 R10 K35 ["OnWidgetCreated"]
       88 GETUPVAL                         R11 3
       89 GETTABLEKS                       R11 R11 K36 ["Change"]
       91 GETTABLEKS                       R11 R11 K14 ["Enabled"]
       93 GETTABLEKS                       R12 R0 K37 ["onWidgetEnabledChanged"]
       95 SETTABLE                         R12 R10 R11
       96 GETUPVAL                         R12 5
       97 JUMPIFNOT                        R12 ; [+3]
       98 GETTABLEKS                       R11 R0 K38 ["design"]
      100 JUMP                             ; [+1]
      101 LOADNIL                          R11
      102 SETTABLEKS                       R11 R10 K39 ["PluginDesign"]
      104 DUPTABLE                         R11 K42 [{"Wrapper", "StyleLink"}]
      105 GETUPVAL                         R12 3
      106 GETTABLEKS                       R12 R12 K11 ["createElement"]
      108 LOADK                            R13 K43 ["Frame"]
      109 NEWTABLE                         R14 1 0
      111 GETUPVAL                         R15 3
      112 GETTABLEKS                       R15 R15 K44 ["Tag"]
      114 LOADK                            R16 K45 ["X-Fill X-Column X-Center"]
      115 SETTABLE                         R16 R14 R15
      116 DUPTABLE                         R15 K47 [{"BasicExample"}]
      117 GETUPVAL                         R16 3
      118 GETTABLEKS                       R16 R16 K11 ["createElement"]
      120 GETUPVAL                         R17 6
      121 DUPTABLE                         R18 K50 [{["showContent"] = True}]
      122 CALL                             R16 2 1
      123 SETTABLEKS                       R16 R15 K46 ["BasicExample"]
      125 CALL                             R12 3 1
      126 SETTABLEKS                       R12 R11 K40 ["Wrapper"]
      128 GETUPVAL                         R13 5
      129 JUMPIF                           R13 ; [+11]
      130 GETUPVAL                         R12 3
      131 GETTABLEKS                       R12 R12 K11 ["createElement"]
      133 LOADK                            R13 K41 ["StyleLink"]
      134 DUPTABLE                         R14 K52 [{"StyleSheet"}]
      135 GETTABLEKS                       R15 R0 K38 ["design"]
      137 SETTABLEKS                       R15 R14 K51 ["StyleSheet"]
      139 CALL                             R12 2 1
      140 JUMP                             ; [+1]
      141 LOADNIL                          R12
      142 SETTABLEKS                       R12 R11 K41 ["StyleLink"]
      144 CALL                             R8 3 1
      145 SETTABLEKS                       R8 R7 K9 ["MainWidget"]
      147 CALL                             R5 2 -1
      148 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ConnectionIndicator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["SharedFlags"]
       23 GETTABLEKS                       R3 R3 K10 ["getFFlagDevFrameworkUsePluginDesign"]
       25 CALL                             R3 0 1
       26 GETTABLEKS                       R4 R2 K11 ["UI"]
       28 GETTABLEKS                       R4 R4 K12 ["DockWidget"]
       30 GETTABLEKS                       R5 R2 K13 ["ContextServices"]
       32 GETTABLEKS                       R6 R5 K14 ["Plugin"]
       34 GETTABLEKS                       R7 R5 K15 ["Mouse"]
       36 GETTABLEKS                       R8 R2 K16 ["Style"]
       38 GETTABLEKS                       R8 R8 K17 ["Themes"]
       40 GETTABLEKS                       R8 R8 K18 ["StudioTheme"]
       42 GETTABLEKS                       R9 R2 K19 ["Styling"]
       44 GETTABLEKS                       R9 R9 K20 ["registerPluginStyles"]
       46 GETTABLEKS                       R10 R0 K21 ["Src"]
       48 GETTABLEKS                       R10 R10 K22 ["Resources"]
       50 GETTABLEKS                       R10 R10 K23 ["Localization"]
       52 GETTABLEKS                       R10 R10 K24 ["SourceStrings"]
       54 GETTABLEKS                       R11 R0 K21 ["Src"]
       56 GETTABLEKS                       R11 R11 K22 ["Resources"]
       58 GETTABLEKS                       R11 R11 K23 ["Localization"]
       60 GETTABLEKS                       R11 R11 K25 ["LocalizedStrings"]
       62 GETTABLEKS                       R12 R0 K21 ["Src"]
       64 GETTABLEKS                       R12 R12 K26 ["Components"]
       66 GETIMPORT                        R13 K5 [require]
       68 GETTABLEKS                       R14 R12 K27 ["BasicExample"]
       70 CALL                             R13 1 1
       71 GETTABLEKS                       R14 R1 K28 ["PureComponent"]
       73 LOADK                            R16 K29 ["MainPlugin"]
       74 NAMECALL                         R14 R14 K30 ["extend"]
       76 CALL                             R14 2 1
       77 DUPCLOSURE                       R15 K31 [PROTO_7]
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R10
       80 CAPTURE                          VAL R11
       81 CAPTURE                          VAL R8
       82 CAPTURE                          VAL R9
       83 SETTABLEKS                       R15 R14 K32 ["init"]
       85 DUPCLOSURE                       R15 K33 [PROTO_8]
       86 SETTABLEKS                       R15 R14 K34 ["didUpdate"]
       88 DUPCLOSURE                       R15 K35 [PROTO_9]
       89 CAPTURE                          VAL R5
       90 CAPTURE                          VAL R6
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R1
       93 CAPTURE                          VAL R4
       94 CAPTURE                          VAL R3
       95 CAPTURE                          VAL R13
       96 SETTABLEKS                       R15 R14 K36 ["render"]
       98 RETURN                           R14 1
