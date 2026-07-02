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
       96 DUPTABLE                         R11 K40 [{"Wrapper", "StyleLink"}]
       97 GETUPVAL                         R12 3
       98 GETTABLEKS                       R12 R12 K11 ["createElement"]
      100 LOADK                            R13 K41 ["Frame"]
      101 NEWTABLE                         R14 1 0
      103 GETUPVAL                         R15 3
      104 GETTABLEKS                       R15 R15 K42 ["Tag"]
      106 LOADK                            R16 K43 ["X-Fill X-Column X-Center"]
      107 SETTABLE                         R16 R14 R15
      108 DUPTABLE                         R15 K45 [{"BasicExample"}]
      109 GETUPVAL                         R16 3
      110 GETTABLEKS                       R16 R16 K11 ["createElement"]
      112 GETUPVAL                         R17 5
      113 DUPTABLE                         R18 K48 [{["showContent"] = True}]
      114 CALL                             R16 2 1
      115 SETTABLEKS                       R16 R15 K44 ["BasicExample"]
      117 CALL                             R12 3 1
      118 SETTABLEKS                       R12 R11 K38 ["Wrapper"]
      120 GETUPVAL                         R12 3
      121 GETTABLEKS                       R12 R12 K11 ["createElement"]
      123 LOADK                            R13 K39 ["StyleLink"]
      124 DUPTABLE                         R14 K50 [{"StyleSheet"}]
      125 GETTABLEKS                       R15 R0 K51 ["design"]
      127 SETTABLEKS                       R15 R14 K49 ["StyleSheet"]
      129 CALL                             R12 2 1
      130 SETTABLEKS                       R12 R11 K39 ["StyleLink"]
      132 CALL                             R8 3 1
      133 SETTABLEKS                       R8 R7 K9 ["MainWidget"]
      135 CALL                             R5 2 -1
      136 RETURN                           R5 -1

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
       21 GETTABLEKS                       R3 R2 K9 ["UI"]
       23 GETTABLEKS                       R3 R3 K10 ["DockWidget"]
       25 GETTABLEKS                       R4 R2 K11 ["ContextServices"]
       27 GETTABLEKS                       R5 R4 K12 ["Plugin"]
       29 GETTABLEKS                       R6 R4 K13 ["Mouse"]
       31 GETTABLEKS                       R7 R2 K14 ["Style"]
       33 GETTABLEKS                       R7 R7 K15 ["Themes"]
       35 GETTABLEKS                       R7 R7 K16 ["StudioTheme"]
       37 GETTABLEKS                       R8 R2 K17 ["Styling"]
       39 GETTABLEKS                       R8 R8 K18 ["registerPluginStyles"]
       41 GETTABLEKS                       R9 R0 K19 ["Src"]
       43 GETTABLEKS                       R9 R9 K20 ["Resources"]
       45 GETTABLEKS                       R9 R9 K21 ["Localization"]
       47 GETTABLEKS                       R9 R9 K22 ["SourceStrings"]
       49 GETTABLEKS                       R10 R0 K19 ["Src"]
       51 GETTABLEKS                       R10 R10 K20 ["Resources"]
       53 GETTABLEKS                       R10 R10 K21 ["Localization"]
       55 GETTABLEKS                       R10 R10 K23 ["LocalizedStrings"]
       57 GETTABLEKS                       R11 R0 K19 ["Src"]
       59 GETTABLEKS                       R11 R11 K24 ["Components"]
       61 GETIMPORT                        R12 K5 [require]
       63 GETTABLEKS                       R13 R11 K25 ["BasicExample"]
       65 CALL                             R12 1 1
       66 GETTABLEKS                       R13 R1 K26 ["PureComponent"]
       68 LOADK                            R15 K27 ["MainPlugin"]
       69 NAMECALL                         R13 R13 K28 ["extend"]
       71 CALL                             R13 2 1
       72 DUPCLOSURE                       R14 K29 [PROTO_7]
       73 CAPTURE                          VAL R4
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R10
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R8
       78 SETTABLEKS                       R14 R13 K30 ["init"]
       80 DUPCLOSURE                       R14 K31 [PROTO_8]
       81 SETTABLEKS                       R14 R13 K32 ["didUpdate"]
       83 DUPCLOSURE                       R14 K33 [PROTO_9]
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R5
       86 CAPTURE                          VAL R6
       87 CAPTURE                          VAL R1
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R12
       90 SETTABLEKS                       R14 R13 K34 ["render"]
       92 RETURN                           R13 1
