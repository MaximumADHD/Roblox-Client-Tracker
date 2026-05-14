PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"enabled"}]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K2 ["state"]
        5 GETTABLEKS                       R4 R4 K0 ["enabled"]
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
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["plugin"]
        4 DUPTABLE                         R2 K4 [{"enabled", "killDockWidget"}]
        5 LOADB                            R3 0
        6 SETTABLEKS                       R3 R2 K2 ["enabled"]
        8 LOADB                            R3 0
        9 SETTABLEKS                       R3 R2 K3 ["killDockWidget"]
       11 SETTABLEKS                       R2 R0 K5 ["state"]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K6 ["Localization"]
       16 GETTABLEKS                       R2 R2 K7 ["new"]
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
       46 GETTABLEKS                       R2 R0 K0 ["props"]
       48 GETTABLEKS                       R2 R2 K1 ["plugin"]
       50 GETTABLEKS                       R2 R2 K18 ["MultipleDocumentInterfaceInstance"]
       52 GETTABLEKS                       R2 R2 K19 ["DataModelSessionEnded"]
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
        8 LOADNIL                          R2
        9 RETURN                           R2 1

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R2 K1 ["enabled"]
        4 DUPTABLE                         R3 K3 [{"Toggle"}]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K4 ["createElement"]
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
       10 GETTABLEKS                       R6 R0 K5 ["state"]
       12 GETTABLEKS                       R6 R6 K6 ["enabled"]
       14 GETUPVAL                         R7 0
       15 GETTABLEKS                       R7 R7 K7 ["provide"]
       17 NEWTABLE                         R8 0 3
       19 GETUPVAL                         R9 0
       20 GETTABLEKS                       R9 R9 K8 ["Plugin"]
       22 GETTABLEKS                       R9 R9 K9 ["new"]
       24 MOVE                             R10 R2
       25 CALL                             R9 1 1
       26 GETUPVAL                         R10 1
       27 GETTABLEKS                       R10 R10 K9 ["new"]
       29 MOVE                             R11 R4
       30 CALL                             R10 1 1
       31 GETUPVAL                         R12 2
       32 CALL                             R12 0 1
       33 JUMPIFNOT                        R12 ; [+3]
       34 GETTABLEKS                       R11 R1 K10 ["pluginManagementApi"]
       36 JUMPIF                           R11 ; [+1]
       37 LOADNIL                          R11
       38 SETLIST                          R8 R9 3 [1]
       40 DUPTABLE                         R9 K13 [{"Toolbar", "MainWidget"}]
       41 GETUPVAL                         R10 3
       42 GETTABLEKS                       R10 R10 K14 ["createElement"]
       44 GETUPVAL                         R11 4
       45 DUPTABLE                         R12 K17 [{"Title", "RenderButtons"}]
       46 LOADK                            R13 K18 ["luaManagePluginsToolbar"]
       47 SETTABLEKS                       R13 R12 K15 ["Title"]
       49 NEWCLOSURE                       R13 P0
       50 CAPTURE                          VAL R0
       51 SETTABLEKS                       R13 R12 K16 ["RenderButtons"]
       53 CALL                             R10 2 1
       54 SETTABLEKS                       R10 R9 K11 ["Toolbar"]
       56 GETTABLEKS                       R11 R0 K5 ["state"]
       58 GETTABLEKS                       R11 R11 K19 ["killDockWidget"]
       60 NOT                              R10 R11
       61 JUMPIFNOT                        R10 ; [+100]
       62 GETUPVAL                         R10 3
       63 GETTABLEKS                       R10 R10 K14 ["createElement"]
       65 GETUPVAL                         R11 5
       66 NEWTABLE                         R12 16 0
       68 LOADK                            R13 K20 ["PluginManagement"]
       69 SETTABLEKS                       R13 R12 K21 ["Id"]
       71 SETTABLEKS                       R6 R12 K22 ["Enabled"]
       73 GETTABLEKS                       R13 R0 K23 ["localization"]
       75 LOADK                            R15 K24 ["Manage"]
       76 LOADK                            R16 K25 ["WindowTitle"]
       77 NAMECALL                         R13 R13 K26 ["getText"]
       79 CALL                             R13 3 1
       80 SETTABLEKS                       R13 R12 K15 ["Title"]
       82 GETIMPORT                        R13 K30 [Enum.ZIndexBehavior.Sibling]
       84 SETTABLEKS                       R13 R12 K28 ["ZIndexBehavior"]
       86 GETIMPORT                        R13 K33 [Enum.InitialDockState.Float]
       88 SETTABLEKS                       R13 R12 K31 ["InitialDockState"]
       90 GETIMPORT                        R13 K35 [Vector2.new]
       92 LOADN                            R14 88
       93 LOADN                            R15 48
       94 CALL                             R13 2 1
       95 SETTABLEKS                       R13 R12 K36 ["Size"]
       97 GETIMPORT                        R13 K35 [Vector2.new]
       99 LOADN                            R14 88
      100 LOADN                            R15 180
      101 CALL                             R13 2 1
      102 SETTABLEKS                       R13 R12 K37 ["MinSize"]
      104 GETTABLEKS                       R13 R0 K38 ["onClose"]
      106 SETTABLEKS                       R13 R12 K39 ["OnClose"]
      108 LOADB                            R13 0
      109 SETTABLEKS                       R13 R12 K40 ["ShouldRestore"]
      111 GETUPVAL                         R13 3
      112 GETTABLEKS                       R13 R13 K41 ["Change"]
      114 GETTABLEKS                       R13 R13 K22 ["Enabled"]
      116 GETTABLEKS                       R14 R0 K42 ["onWidgetEnabledChanged"]
      118 SETTABLE                         R14 R12 R13
      119 DUPTABLE                         R13 K44 [{"MainProvider"}]
      120 MOVE                             R14 R6
      121 JUMPIFNOT                        R14 ; [+37]
      122 GETUPVAL                         R14 0
      123 GETTABLEKS                       R14 R14 K7 ["provide"]
      125 NEWTABLE                         R15 0 5
      127 GETTABLEKS                       R16 R0 K23 ["localization"]
      129 GETTABLEKS                       R17 R0 K45 ["theme"]
      131 GETUPVAL                         R18 0
      132 GETTABLEKS                       R18 R18 K46 ["Store"]
      134 GETTABLEKS                       R18 R18 K9 ["new"]
      136 MOVE                             R19 R3
      137 CALL                             R18 1 1
      138 GETUPVAL                         R19 0
      139 GETTABLEKS                       R19 R19 K47 ["Mouse"]
      141 GETTABLEKS                       R19 R19 K9 ["new"]
      143 NAMECALL                         R20 R2 K48 ["GetMouse"]
      145 CALL                             R20 1 -1
      146 CALL                             R19 -1 1
      147 MOVE                             R20 R5
      148 SETLIST                          R15 R16 5 [1]
      150 DUPTABLE                         R16 K50 [{"MainView"}]
      151 GETUPVAL                         R17 3
      152 GETTABLEKS                       R17 R17 K14 ["createElement"]
      154 GETUPVAL                         R18 6
      155 CALL                             R17 1 1
      156 SETTABLEKS                       R17 R16 K49 ["MainView"]
      158 CALL                             R14 2 1
      159 SETTABLEKS                       R14 R13 K43 ["MainProvider"]
      161 CALL                             R10 3 1
      162 SETTABLEKS                       R10 R9 K12 ["MainWidget"]
      164 CALL                             R7 2 -1
      165 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Bin"]
       13 GETTABLEKS                       R2 R2 K6 ["getFFlagStudioFixPluginManagementPluginTests"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Packages"]
       20 GETTABLEKS                       R3 R3 K8 ["Roact"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K9 ["Src"]
       27 GETTABLEKS                       R4 R4 K10 ["Components"]
       29 GETTABLEKS                       R4 R4 K11 ["ManagementMainView"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R5 R0 K9 ["Src"]
       36 GETTABLEKS                       R5 R5 K10 ["Components"]
       38 GETTABLEKS                       R5 R5 K12 ["Navigation"]
       40 GETTABLEKS                       R5 R5 K13 ["NavigationContainer"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K4 [require]
       45 GETTABLEKS                       R6 R0 K7 ["Packages"]
       47 GETTABLEKS                       R6 R6 K14 ["Framework"]
       49 CALL                             R5 1 1
       50 GETTABLEKS                       R6 R5 K15 ["ContextServices"]
       52 GETIMPORT                        R7 K4 [require]
       54 GETTABLEKS                       R8 R0 K9 ["Src"]
       56 GETTABLEKS                       R8 R8 K15 ["ContextServices"]
       58 GETTABLEKS                       R8 R8 K16 ["PluginAPI2"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K4 [require]
       63 GETTABLEKS                       R9 R0 K9 ["Src"]
       65 GETTABLEKS                       R9 R9 K17 ["Util"]
       67 GETTABLEKS                       R9 R9 K18 ["Constants"]
       69 CALL                             R8 1 1
       70 GETTABLEKS                       R9 R5 K19 ["UI"]
       72 GETTABLEKS                       R10 R9 K20 ["DockWidget"]
       74 GETTABLEKS                       R11 R9 K21 ["PluginButton"]
       76 GETTABLEKS                       R12 R9 K22 ["PluginToolbar"]
       78 GETTABLEKS                       R13 R0 K9 ["Src"]
       80 GETTABLEKS                       R13 R13 K23 ["Resources"]
       82 GETTABLEKS                       R13 R13 K24 ["SourceStrings"]
       84 GETTABLEKS                       R14 R0 K9 ["Src"]
       86 GETTABLEKS                       R14 R14 K23 ["Resources"]
       88 GETTABLEKS                       R14 R14 K25 ["LocalizedStrings"]
       90 GETIMPORT                        R15 K4 [require]
       92 GETTABLEKS                       R16 R0 K9 ["Src"]
       94 GETTABLEKS                       R16 R16 K23 ["Resources"]
       96 GETTABLEKS                       R16 R16 K26 ["makeTheme"]
       98 CALL                             R15 1 1
       99 GETTABLEKS                       R16 R2 K27 ["PureComponent"]
      101 LOADK                            R18 K28 ["ManagementApp"]
      102 NAMECALL                         R16 R16 K29 ["extend"]
      104 CALL                             R16 2 1
      105 DUPCLOSURE                       R17 K30 [PROTO_4]
      106 CAPTURE                          VAL R6
      107 CAPTURE                          VAL R13
      108 CAPTURE                          VAL R14
      109 CAPTURE                          VAL R15
      110 SETTABLEKS                       R17 R16 K31 ["init"]
      112 DUPCLOSURE                       R17 K32 [PROTO_5]
      113 SETTABLEKS                       R17 R16 K33 ["getDerivedStateFromProps"]
      115 DUPCLOSURE                       R17 K34 [PROTO_6]
      116 CAPTURE                          VAL R2
      117 CAPTURE                          VAL R11
      118 SETTABLEKS                       R17 R16 K35 ["renderButtons"]
      120 DUPCLOSURE                       R17 K36 [PROTO_8]
      121 CAPTURE                          VAL R6
      122 CAPTURE                          VAL R7
      123 CAPTURE                          VAL R1
      124 CAPTURE                          VAL R2
      125 CAPTURE                          VAL R12
      126 CAPTURE                          VAL R10
      127 CAPTURE                          VAL R4
      128 SETTABLEKS                       R17 R16 K37 ["render"]
      130 RETURN                           R16 1
