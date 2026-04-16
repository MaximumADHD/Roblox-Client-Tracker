PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"enabled"}]
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R5 R6 K2 ["state"]
        5 GETTABLEKS                       R4 R5 K0 ["enabled"]
        7 NOT                              R3 R4
        8 SETTABLEKS                       R3 R2 K0 ["enabled"]
       10 NAMECALL                         R0 R0 K3 ["setState"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"enabled"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["enabled"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"enabled"}]
        2 GETTABLEKS                       R4 R0 K2 ["Enabled"]
        4 SETTABLEKS                       R4 R3 K0 ["enabled"]
        6 NAMECALL                         R1 R1 K3 ["setState"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K2 [{"enabled", "killDockWidget"}]
        2 LOADB                            R4 0
        3 SETTABLEKS                       R4 R3 K0 ["enabled"]
        5 LOADB                            R4 1
        6 SETTABLEKS                       R4 R3 K1 ["killDockWidget"]
        8 NAMECALL                         R1 R1 K3 ["setState"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["plugin"]
        4 DUPTABLE                         R2 K4 [{"enabled", "killDockWidget"}]
        5 LOADB                            R3 0
        6 SETTABLEKS                       R3 R2 K2 ["enabled"]
        8 LOADB                            R3 0
        9 SETTABLEKS                       R3 R2 K3 ["killDockWidget"]
       11 SETTABLEKS                       R2 R0 K5 ["state"]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R3 R4 K6 ["Localization"]
       16 GETTABLEKS                       R2 R3 K7 ["new"]
       18 DUPTABLE                         R3 K11 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       19 GETUPVAL                         R4 1
       20 SETTABLEKS                       R4 R3 K8 ["stringResourceTable"]
       22 GETUPVAL                         R4 2
       23 SETTABLEKS                       R4 R3 K9 ["translationResourceTable"]
       25 LOADK                            R4 K12 ["PluginInstallation"]
       26 SETTABLEKS                       R4 R3 K10 ["pluginName"]
       28 CALL                             R2 1 1
       29 SETTABLEKS                       R2 R0 K13 ["localization"]
       31 GETUPVAL                         R2 3
       32 SETTABLEKS                       R2 R0 K14 ["theme"]
       34 NEWCLOSURE                       R2 P0
       35 CAPTURE                          VAL R0
       36 SETTABLEKS                       R2 R0 K15 ["toggleState"]
       38 NEWCLOSURE                       R2 P1
       39 CAPTURE                          VAL R0
       40 SETTABLEKS                       R2 R0 K16 ["onClose"]
       42 NEWCLOSURE                       R2 P2
       43 CAPTURE                          VAL R0
       44 SETTABLEKS                       R2 R0 K17 ["onWidgetEnabledChanged"]
       46 GETTABLEKS                       R5 R0 K0 ["props"]
       48 GETTABLEKS                       R4 R5 K1 ["plugin"]
       50 GETTABLEKS                       R3 R4 K18 ["MultipleDocumentInterfaceInstance"]
       52 GETTABLEKS                       R2 R3 K19 ["DataModelSessionEnded"]
       54 NEWCLOSURE                       R4 P3
       55 CAPTURE                          VAL R0
       56 NAMECALL                         R2 R2 K20 ["connect"]
       58 CALL                             R2 2 0
       59 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R1 K0 ["enabled"]
        2 JUMPIFNOT                        R2 ; [+5]
        3 DUPTABLE                         R2 K2 [{"killDockWidget"}]
        4 LOADB                            R3 0
        5 SETTABLEKS                       R3 R2 K1 ["killDockWidget"]
        7 RETURN                           R2 1
        8 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R3 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R3 K1 ["enabled"]
        4 DUPTABLE                         R3 K3 [{"Toggle"}]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K4 ["createElement"]
        8 GETUPVAL                         R5 1
        9 DUPTABLE                         R6 K9 [{"Toolbar", "Active", "Title", "OnClick"}]
       10 SETTABLEKS                       R1 R6 K5 ["Toolbar"]
       12 SETTABLEKS                       R2 R6 K6 ["Active"]
       14 LOADK                            R7 K10 ["luaManagePluginsButton"]
       15 SETTABLEKS                       R7 R6 K7 ["Title"]
       17 GETTABLEKS                       R7 R0 K11 ["toggleState"]
       19 SETTABLEKS                       R7 R6 K8 ["OnClick"]
       21 CALL                             R4 2 1
       22 SETTABLEKS                       R4 R3 K2 ["Toggle"]
       24 RETURN                           R3 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["renderButtons"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["plugin"]
        4 GETTABLEKS                       R3 R1 K2 ["store"]
        6 GETTABLEKS                       R4 R1 K3 ["api"]
        8 GETTABLEKS                       R5 R1 K4 ["analytics"]
       10 GETTABLEKS                       R7 R0 K5 ["state"]
       12 GETTABLEKS                       R6 R7 K6 ["enabled"]
       14 GETUPVAL                         R8 0
       15 GETTABLEKS                       R7 R8 K7 ["provide"]
       17 NEWTABLE                         R8 0 2
       19 GETUPVAL                         R11 0
       20 GETTABLEKS                       R10 R11 K8 ["Plugin"]
       22 GETTABLEKS                       R9 R10 K9 ["new"]
       24 MOVE                             R10 R2
       25 CALL                             R9 1 1
       26 GETUPVAL                         R11 1
       27 GETTABLEKS                       R10 R11 K9 ["new"]
       29 MOVE                             R11 R4
       30 CALL                             R10 1 -1
       31 SETLIST                          R8 R9 -1 [1]
       33 DUPTABLE                         R9 K12 [{"Toolbar", "MainWidget"}]
       34 GETUPVAL                         R11 2
       35 GETTABLEKS                       R10 R11 K13 ["createElement"]
       37 GETUPVAL                         R11 3
       38 DUPTABLE                         R12 K16 [{"Title", "RenderButtons"}]
       39 LOADK                            R13 K17 ["luaManagePluginsToolbar"]
       40 SETTABLEKS                       R13 R12 K14 ["Title"]
       42 NEWCLOSURE                       R13 P0
       43 CAPTURE                          VAL R0
       44 SETTABLEKS                       R13 R12 K15 ["RenderButtons"]
       46 CALL                             R10 2 1
       47 SETTABLEKS                       R10 R9 K10 ["Toolbar"]
       49 GETTABLEKS                       R12 R0 K5 ["state"]
       51 GETTABLEKS                       R11 R12 K18 ["killDockWidget"]
       53 NOT                              R10 R11
       54 JUMPIFNOT                        R10 ; [+100]
       55 GETUPVAL                         R11 2
       56 GETTABLEKS                       R10 R11 K13 ["createElement"]
       58 GETUPVAL                         R11 4
       59 NEWTABLE                         R12 16 0
       61 LOADK                            R13 K19 ["PluginManagement"]
       62 SETTABLEKS                       R13 R12 K20 ["Id"]
       64 SETTABLEKS                       R6 R12 K21 ["Enabled"]
       66 GETTABLEKS                       R13 R0 K22 ["localization"]
       68 LOADK                            R15 K23 ["Manage"]
       69 LOADK                            R16 K24 ["WindowTitle"]
       70 NAMECALL                         R13 R13 K25 ["getText"]
       72 CALL                             R13 3 1
       73 SETTABLEKS                       R13 R12 K14 ["Title"]
       75 GETIMPORT                        R13 K29 [Enum.ZIndexBehavior.Sibling]
       77 SETTABLEKS                       R13 R12 K27 ["ZIndexBehavior"]
       79 GETIMPORT                        R13 K32 [Enum.InitialDockState.Float]
       81 SETTABLEKS                       R13 R12 K30 ["InitialDockState"]
       83 GETIMPORT                        R13 K34 [Vector2.new]
       85 LOADN                            R14 88
       86 LOADN                            R15 48
       87 CALL                             R13 2 1
       88 SETTABLEKS                       R13 R12 K35 ["Size"]
       90 GETIMPORT                        R13 K34 [Vector2.new]
       92 LOADN                            R14 88
       93 LOADN                            R15 180
       94 CALL                             R13 2 1
       95 SETTABLEKS                       R13 R12 K36 ["MinSize"]
       97 GETTABLEKS                       R13 R0 K37 ["onClose"]
       99 SETTABLEKS                       R13 R12 K38 ["OnClose"]
      101 LOADB                            R13 0
      102 SETTABLEKS                       R13 R12 K39 ["ShouldRestore"]
      104 GETUPVAL                         R15 2
      105 GETTABLEKS                       R14 R15 K40 ["Change"]
      107 GETTABLEKS                       R13 R14 K21 ["Enabled"]
      109 GETTABLEKS                       R14 R0 K41 ["onWidgetEnabledChanged"]
      111 SETTABLE                         R14 R12 R13
      112 DUPTABLE                         R13 K43 [{"MainProvider"}]
      113 MOVE                             R14 R6
      114 JUMPIFNOT                        R14 ; [+37]
      115 GETUPVAL                         R15 0
      116 GETTABLEKS                       R14 R15 K7 ["provide"]
      118 NEWTABLE                         R15 0 5
      120 GETTABLEKS                       R16 R0 K22 ["localization"]
      122 GETTABLEKS                       R17 R0 K44 ["theme"]
      124 GETUPVAL                         R20 0
      125 GETTABLEKS                       R19 R20 K45 ["Store"]
      127 GETTABLEKS                       R18 R19 K9 ["new"]
      129 MOVE                             R19 R3
      130 CALL                             R18 1 1
      131 GETUPVAL                         R21 0
      132 GETTABLEKS                       R20 R21 K46 ["Mouse"]
      134 GETTABLEKS                       R19 R20 K9 ["new"]
      136 NAMECALL                         R20 R2 K47 ["GetMouse"]
      138 CALL                             R20 1 -1
      139 CALL                             R19 -1 1
      140 MOVE                             R20 R5
      141 SETLIST                          R15 R16 5 [1]
      143 DUPTABLE                         R16 K49 [{"MainView"}]
      144 GETUPVAL                         R18 2
      145 GETTABLEKS                       R17 R18 K13 ["createElement"]
      147 GETUPVAL                         R18 5
      148 CALL                             R17 1 1
      149 SETTABLEKS                       R17 R16 K48 ["MainView"]
      151 CALL                             R14 2 1
      152 SETTABLEKS                       R14 R13 K42 ["MainProvider"]
      154 CALL                             R10 3 1
      155 SETTABLEKS                       R10 R9 K11 ["MainWidget"]
      157 CALL                             R7 2 -1
      158 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R5 R0 K7 ["Src"]
       20 GETTABLEKS                       R4 R5 K8 ["Components"]
       22 GETTABLEKS                       R3 R4 K9 ["ManagementMainView"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R7 R0 K7 ["Src"]
       29 GETTABLEKS                       R6 R7 K8 ["Components"]
       31 GETTABLEKS                       R5 R6 K10 ["Navigation"]
       33 GETTABLEKS                       R4 R5 K11 ["NavigationContainer"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K4 [require]
       38 GETTABLEKS                       R6 R0 K5 ["Packages"]
       40 GETTABLEKS                       R5 R6 K12 ["Framework"]
       42 CALL                             R4 1 1
       43 GETTABLEKS                       R5 R4 K13 ["ContextServices"]
       45 GETIMPORT                        R6 K4 [require]
       47 GETTABLEKS                       R9 R0 K7 ["Src"]
       49 GETTABLEKS                       R8 R9 K13 ["ContextServices"]
       51 GETTABLEKS                       R7 R8 K14 ["PluginAPI2"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K4 [require]
       56 GETTABLEKS                       R10 R0 K7 ["Src"]
       58 GETTABLEKS                       R9 R10 K15 ["Util"]
       60 GETTABLEKS                       R8 R9 K16 ["Constants"]
       62 CALL                             R7 1 1
       63 GETTABLEKS                       R8 R4 K17 ["UI"]
       65 GETTABLEKS                       R9 R8 K18 ["DockWidget"]
       67 GETTABLEKS                       R10 R8 K19 ["PluginButton"]
       69 GETTABLEKS                       R11 R8 K20 ["PluginToolbar"]
       71 GETTABLEKS                       R14 R0 K7 ["Src"]
       73 GETTABLEKS                       R13 R14 K21 ["Resources"]
       75 GETTABLEKS                       R12 R13 K22 ["SourceStrings"]
       77 GETTABLEKS                       R15 R0 K7 ["Src"]
       79 GETTABLEKS                       R14 R15 K21 ["Resources"]
       81 GETTABLEKS                       R13 R14 K23 ["LocalizedStrings"]
       83 GETIMPORT                        R14 K4 [require]
       85 GETTABLEKS                       R17 R0 K7 ["Src"]
       87 GETTABLEKS                       R16 R17 K21 ["Resources"]
       89 GETTABLEKS                       R15 R16 K24 ["makeTheme"]
       91 CALL                             R14 1 1
       92 GETTABLEKS                       R15 R1 K25 ["PureComponent"]
       94 LOADK                            R17 K26 ["ManagementApp"]
       95 NAMECALL                         R15 R15 K27 ["extend"]
       97 CALL                             R15 2 1
       98 DUPCLOSURE                       R16 K28 [PROTO_4]
       99 CAPTURE                          VAL R5
      100 CAPTURE                          VAL R12
      101 CAPTURE                          VAL R13
      102 CAPTURE                          VAL R14
      103 SETTABLEKS                       R16 R15 K29 ["init"]
      105 DUPCLOSURE                       R16 K30 [PROTO_5]
      106 SETTABLEKS                       R16 R15 K31 ["getDerivedStateFromProps"]
      108 DUPCLOSURE                       R16 K32 [PROTO_6]
      109 CAPTURE                          VAL R1
      110 CAPTURE                          VAL R10
      111 SETTABLEKS                       R16 R15 K33 ["renderButtons"]
      113 DUPCLOSURE                       R16 K34 [PROTO_8]
      114 CAPTURE                          VAL R5
      115 CAPTURE                          VAL R6
      116 CAPTURE                          VAL R1
      117 CAPTURE                          VAL R11
      118 CAPTURE                          VAL R9
      119 CAPTURE                          VAL R3
      120 SETTABLEKS                       R16 R15 K35 ["render"]
      122 RETURN                           R15 1
