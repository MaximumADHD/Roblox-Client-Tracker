PROTO_0:
        0 DUPTABLE                         R1 K1 [{"enabled"}]
        1 GETTABLEKS                       R3 R0 K0 ["enabled"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["enabled"]
        6 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["analytics"]
        3 LOADK                            R2 K1 ["panelToggled"]
        4 GETUPVAL                         R6 0
        5 GETTABLEKS                       R5 R6 K2 ["state"]
        7 GETTABLEKS                       R4 R5 K3 ["enabled"]
        9 NOT                              R3 R4
       10 NAMECALL                         R0 R0 K4 ["report"]
       12 CALL                             R0 3 0
       13 GETUPVAL                         R0 0
       14 DUPCLOSURE                       R2 K5 [PROTO_0]
       15 NAMECALL                         R0 R0 K6 ["setState"]
       17 CALL                             R0 2 0
       18 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["analytics"]
        3 LOADK                            R2 K1 ["panelToggled"]
        4 LOADB                            R3 0
        5 NAMECALL                         R0 R0 K2 ["report"]
        7 CALL                             R0 3 0
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K3 ["state"]
       11 GETTABLEKS                       R0 R1 K4 ["enabled"]
       13 JUMPIFNOT                        R0 ; [+6]
       14 GETIMPORT                        R0 K7 [task.spawn]
       16 NEWCLOSURE                       R1 P0
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          UPVAL U2
       19 CALL                             R0 1 0
       20 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 NEWTABLE                         R5 0 1
        4 GETUPVAL                         R6 2
        5 SETLIST                          R5 R6 1 [1]
        7 NAMECALL                         R3 R3 K0 ["GetAsync"]
        9 CALL                             R3 2 1
       10 GETTABLEN                        R2 R3 1
       11 GETTABLEKS                       R1 R2 K1 ["Checked"]
       13 JUMPIFEQ                         R0 R1 ; [+6]
       15 GETUPVAL                         R0 1
       16 GETUPVAL                         R2 2
       17 NAMECALL                         R0 R0 K2 ["ActivateAsync"]
       19 CALL                             R0 2 0
       20 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["Checked"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["state"]
        5 GETTABLEKS                       R2 R3 K2 ["enabled"]
        7 JUMPIFEQ                         R1 R2 ; [+5]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R1 R2 K3 ["toggleEnabled"]
       12 CALL                             R1 0 0
       13 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R1 K0 ["Plugin"]
        2 LOADK                            R4 K1 ["Actions"]
        3 NAMECALL                         R2 R2 K2 ["GetPluginComponent"]
        5 CALL                             R2 2 1
        6 DUPTABLE                         R5 K4 [{"enabled"}]
        7 NEWTABLE                         R10 0 1
        9 GETUPVAL                         R11 0
       10 SETLIST                          R10 R11 1 [1]
       12 NAMECALL                         R8 R2 K5 ["GetAsync"]
       14 CALL                             R8 2 1
       15 GETTABLEN                        R7 R8 1
       16 GETTABLEKS                       R6 R7 K6 ["Checked"]
       18 SETTABLEKS                       R6 R5 K3 ["enabled"]
       20 NAMECALL                         R3 R0 K7 ["setState"]
       22 CALL                             R3 2 0
       23 NEWCLOSURE                       R3 P0
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R3 R0 K8 ["toggleEnabled"]
       27 NEWCLOSURE                       R3 P1
       28 CAPTURE                          VAL R0
       29 CAPTURE                          VAL R2
       30 CAPTURE                          UPVAL U0
       31 SETTABLEKS                       R3 R0 K9 ["onClose"]
       33 NEWCLOSURE                       R3 P2
       34 CAPTURE                          VAL R2
       35 CAPTURE                          UPVAL U0
       36 SETTABLEKS                       R3 R0 K10 ["onRestore"]
       38 GETUPVAL                         R5 1
       39 GETTABLEKS                       R4 R5 K11 ["Localization"]
       41 GETTABLEKS                       R3 R4 K12 ["new"]
       43 DUPTABLE                         R4 K16 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       44 GETUPVAL                         R5 2
       45 SETTABLEKS                       R5 R4 K13 ["stringResourceTable"]
       47 GETUPVAL                         R5 3
       48 SETTABLEKS                       R5 R4 K14 ["translationResourceTable"]
       50 LOADK                            R5 K17 ["SocialPresence"]
       51 SETTABLEKS                       R5 R4 K15 ["pluginName"]
       53 CALL                             R3 1 1
       54 SETTABLEKS                       R3 R0 K18 ["localization"]
       56 GETUPVAL                         R5 1
       57 GETTABLEKS                       R4 R5 K19 ["Analytics"]
       59 GETTABLEKS                       R3 R4 K12 ["new"]
       61 GETUPVAL                         R4 4
       62 CALL                             R3 1 1
       63 SETTABLEKS                       R3 R0 K20 ["analytics"]
       65 GETUPVAL                         R5 0
       66 NAMECALL                         R3 R2 K21 ["BindToChangedAsync"]
       68 CALL                             R3 2 1
       69 NEWCLOSURE                       R5 P3
       70 CAPTURE                          VAL R0
       71 NAMECALL                         R3 R3 K22 ["Connect"]
       73 CALL                             R3 2 1
       74 SETTABLEKS                       R3 R0 K23 ["onActionActivated"]
       76 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["onActionActivated"]
        2 NAMECALL                         R1 R1 K1 ["Disconnect"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R1 K1 [game]
        2 LOADK                            R3 K2 ["CollaboratorsService"]
        3 NAMECALL                         R1 R1 K3 ["GetService"]
        5 CALL                             R1 2 1
        6 GETIMPORT                        R2 K1 [game]
        8 LOADK                            R4 K4 ["StudioPublishService"]
        9 NAMECALL                         R2 R2 K3 ["GetService"]
       11 CALL                             R2 2 1
       12 GETTABLEKS                       R3 R0 K5 ["props"]
       14 GETTABLEKS                       R4 R0 K6 ["state"]
       16 GETTABLEKS                       R5 R3 K7 ["Plugin"]
       18 GETTABLEKS                       R6 R4 K8 ["enabled"]
       20 GETUPVAL                         R8 0
       21 GETTABLEKS                       R7 R8 K9 ["provide"]
       23 NEWTABLE                         R8 0 7
       25 GETUPVAL                         R10 1
       26 GETTABLEKS                       R9 R10 K10 ["new"]
       28 MOVE                             R10 R5
       29 CALL                             R9 1 1
       30 GETUPVAL                         R11 2
       31 GETTABLEKS                       R10 R11 K10 ["new"]
       33 NAMECALL                         R11 R5 K11 ["getMouse"]
       35 CALL                             R11 1 -1
       36 CALL                             R10 -1 1
       37 GETUPVAL                         R11 3
       38 CALL                             R11 0 1
       39 GETTABLEKS                       R12 R0 K12 ["localization"]
       41 GETTABLEKS                       R13 R0 K13 ["analytics"]
       43 GETUPVAL                         R15 4
       44 GETTABLEKS                       R14 R15 K10 ["new"]
       46 MOVE                             R15 R1
       47 CALL                             R14 1 1
       48 GETUPVAL                         R16 5
       49 GETTABLEKS                       R15 R16 K10 ["new"]
       51 MOVE                             R16 R2
       52 CALL                             R15 1 -1
       53 SETLIST                          R8 R9 -1 [1]
       55 DUPTABLE                         R9 K15 [{"MainWidget"}]
       56 GETUPVAL                         R11 6
       57 GETTABLEKS                       R10 R11 K16 ["createElement"]
       59 GETUPVAL                         R11 7
       60 DUPTABLE                         R12 K27 [{"Id", "Enabled", "Title", "ZIndexBehavior", "InitialDockState", "Size", "MinSize", "OnClose", "ShouldRestore", "OnWidgetRestored"}]
       61 LOADK                            R13 K28 ["SocialPresence"]
       62 SETTABLEKS                       R13 R12 K17 ["Id"]
       64 MOVE                             R13 R6
       65 JUMPIFNOT                        R13 ; [+4]
       66 GETUPVAL                         R13 8
       67 NAMECALL                         R13 R13 K29 ["IsEdit"]
       69 CALL                             R13 1 1
       70 SETTABLEKS                       R13 R12 K18 ["Enabled"]
       72 GETTABLEKS                       R13 R0 K12 ["localization"]
       74 LOADK                            R15 K7 ["Plugin"]
       75 LOADK                            R16 K30 ["Name"]
       76 NAMECALL                         R13 R13 K31 ["getText"]
       78 CALL                             R13 3 1
       79 SETTABLEKS                       R13 R12 K19 ["Title"]
       81 GETIMPORT                        R13 K34 [Enum.ZIndexBehavior.Sibling]
       83 SETTABLEKS                       R13 R12 K20 ["ZIndexBehavior"]
       85 GETIMPORT                        R13 K36 [Enum.InitialDockState.Right]
       87 SETTABLEKS                       R13 R12 K21 ["InitialDockState"]
       89 GETIMPORT                        R13 K38 [Vector2.new]
       91 LOADN                            R14 128
       92 LOADN                            R15 224
       93 CALL                             R13 2 1
       94 SETTABLEKS                       R13 R12 K22 ["Size"]
       96 GETIMPORT                        R13 K38 [Vector2.new]
       98 LOADN                            R14 250
       99 LOADN                            R15 200
      100 CALL                             R13 2 1
      101 SETTABLEKS                       R13 R12 K23 ["MinSize"]
      103 GETTABLEKS                       R13 R0 K39 ["onClose"]
      105 SETTABLEKS                       R13 R12 K24 ["OnClose"]
      107 LOADB                            R13 1
      108 SETTABLEKS                       R13 R12 K25 ["ShouldRestore"]
      110 GETTABLEKS                       R13 R0 K40 ["onRestore"]
      112 SETTABLEKS                       R13 R12 K26 ["OnWidgetRestored"]
      114 DUPTABLE                         R13 K42 [{"CollaboratorList"}]
      115 GETUPVAL                         R15 6
      116 GETTABLEKS                       R14 R15 K16 ["createElement"]
      118 GETUPVAL                         R15 9
      119 CALL                             R14 1 1
      120 SETTABLEKS                       R14 R13 K41 ["CollaboratorList"]
      122 CALL                             R10 3 1
      123 SETTABLEKS                       R10 R9 K14 ["MainWidget"]
      125 CALL                             R7 2 -1
      126 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["Packages"]
       11 GETTABLEKS                       R2 R3 K6 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R4 R0 K5 ["Packages"]
       18 GETTABLEKS                       R3 R4 K7 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K8 ["UI"]
       23 GETTABLEKS                       R4 R3 K9 ["DockWidget"]
       25 GETTABLEKS                       R5 R2 K10 ["ContextServices"]
       27 GETTABLEKS                       R6 R5 K11 ["Plugin"]
       29 GETTABLEKS                       R7 R5 K12 ["Mouse"]
       31 GETIMPORT                        R8 K4 [require]
       33 GETTABLEKS                       R11 R0 K13 ["Src"]
       35 GETTABLEKS                       R10 R11 K14 ["Resources"]
       37 GETTABLEKS                       R9 R10 K15 ["MakeTheme"]
       39 CALL                             R8 1 1
       40 GETTABLEKS                       R12 R0 K13 ["Src"]
       42 GETTABLEKS                       R11 R12 K14 ["Resources"]
       44 GETTABLEKS                       R10 R11 K16 ["Localization"]
       46 GETTABLEKS                       R9 R10 K17 ["SourceStrings"]
       48 GETTABLEKS                       R13 R0 K13 ["Src"]
       50 GETTABLEKS                       R12 R13 K14 ["Resources"]
       52 GETTABLEKS                       R11 R12 K16 ["Localization"]
       54 GETTABLEKS                       R10 R11 K18 ["LocalizedStrings"]
       56 GETTABLEKS                       R12 R0 K13 ["Src"]
       58 GETTABLEKS                       R11 R12 K19 ["Components"]
       60 GETIMPORT                        R12 K4 [require]
       62 GETTABLEKS                       R13 R11 K20 ["CollaboratorList"]
       64 CALL                             R12 1 1
       65 GETIMPORT                        R13 K4 [require]
       67 GETTABLEKS                       R16 R0 K13 ["Src"]
       69 GETTABLEKS                       R15 R16 K10 ["ContextServices"]
       71 GETTABLEKS                       R14 R15 K21 ["CollaboratorsServiceContext"]
       73 CALL                             R13 1 1
       74 GETIMPORT                        R14 K4 [require]
       76 GETIMPORT                        R18 K1 [script]
       78 GETTABLEKS                       R17 R18 K2 ["Parent"]
       80 GETTABLEKS                       R16 R17 K10 ["ContextServices"]
       82 GETTABLEKS                       R15 R16 K22 ["StudioPublishServiceContext"]
       84 CALL                             R14 1 1
       85 GETIMPORT                        R15 K4 [require]
       87 GETTABLEKS                       R18 R0 K13 ["Src"]
       89 GETTABLEKS                       R17 R18 K23 ["Util"]
       91 GETTABLEKS                       R16 R17 K24 ["AnalyticsHandlers"]
       93 CALL                             R15 1 1
       94 GETIMPORT                        R16 K26 [game]
       96 LOADK                            R18 K27 ["RunService"]
       97 NAMECALL                         R16 R16 K28 ["GetService"]
       99 CALL                             R16 2 1
      100 GETTABLEKS                       R17 R1 K29 ["PureComponent"]
      102 LOADK                            R19 K30 ["MainPlugin"]
      103 NAMECALL                         R17 R17 K31 ["extend"]
      105 CALL                             R17 2 1
      106 DUPTABLE                         R18 K37 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
      107 LOADK                            R19 K38 ["Standalone"]
      108 SETTABLEKS                       R19 R18 K32 ["DataModel"]
      110 LOADK                            R19 K39 ["Unknown"]
      111 SETTABLEKS                       R19 R18 K33 ["PluginType"]
      113 LOADK                            R19 K40 ["LiveCollaborators"]
      114 SETTABLEKS                       R19 R18 K34 ["PluginId"]
      116 LOADK                            R19 K41 ["Actions"]
      117 SETTABLEKS                       R19 R18 K35 ["Category"]
      119 LOADK                            R19 K42 ["Toggle"]
      120 SETTABLEKS                       R19 R18 K36 ["ItemId"]
      122 DUPCLOSURE                       R19 K43 [PROTO_7]
      123 CAPTURE                          VAL R18
      124 CAPTURE                          VAL R5
      125 CAPTURE                          VAL R9
      126 CAPTURE                          VAL R10
      127 CAPTURE                          VAL R15
      128 SETTABLEKS                       R19 R17 K44 ["init"]
      130 DUPCLOSURE                       R19 K45 [PROTO_8]
      131 SETTABLEKS                       R19 R17 K46 ["componentWillUnmount"]
      133 DUPCLOSURE                       R19 K47 [PROTO_9]
      134 CAPTURE                          VAL R5
      135 CAPTURE                          VAL R6
      136 CAPTURE                          VAL R7
      137 CAPTURE                          VAL R8
      138 CAPTURE                          VAL R13
      139 CAPTURE                          VAL R14
      140 CAPTURE                          VAL R1
      141 CAPTURE                          VAL R4
      142 CAPTURE                          VAL R16
      143 CAPTURE                          VAL R12
      144 SETTABLEKS                       R19 R17 K48 ["render"]
      146 RETURN                           R17 1
