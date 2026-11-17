PROTO_0:
        0 DUPTABLE                         R1 K1 [{"enabled"}]
        1 GETTABLEKS                       R3 R0 K0 ["enabled"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["enabled"]
        6 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["analytics"]
        3 LOADK                            R2 K1 ["panelToggled"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K2 ["state"]
        7 GETTABLEKS                       R4 R4 K3 ["enabled"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["analytics"]
        3 LOADK                            R2 K1 ["panelToggled"]
        4 LOADB                            R3 0
        5 NAMECALL                         R0 R0 K2 ["report"]
        7 CALL                             R0 3 0
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K3 ["state"]
       11 GETTABLEKS                       R0 R0 K4 ["enabled"]
       13 JUMPIFNOT                        R0 ; [+6]
       14 GETIMPORT                        R0 K7 [task.spawn]
       16 NEWCLOSURE                       R1 P0
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          UPVAL U2
       19 CALL                             R0 1 0
       20 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NEWTABLE                         R4 0 1
        4 GETUPVAL                         R5 2
        5 SETLIST                          R4 R5 1 [1]
        7 NAMECALL                         R2 R2 K0 ["GetAsync"]
        9 CALL                             R2 2 1
       10 GETTABLEN                        R1 R2 1
       11 GETTABLEKS                       R1 R1 K1 ["Checked"]
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
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["state"]
        5 GETTABLEKS                       R2 R2 K2 ["enabled"]
        7 JUMPIFEQ                         R1 R2 ; [+5]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K3 ["toggleEnabled"]
       12 CALL                             R1 0 0
       13 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R1 K0 ["Plugin"]
        2 LOADK                            R4 K1 ["Actions"]
        3 NAMECALL                         R2 R2 K2 ["GetPluginComponent"]
        5 CALL                             R2 2 1
        6 DUPTABLE                         R5 K4 [{"enabled"}]
        7 NEWTABLE                         R9 0 1
        9 GETUPVAL                         R10 0
       10 SETLIST                          R9 R10 1 [1]
       12 NAMECALL                         R7 R2 K5 ["GetAsync"]
       14 CALL                             R7 2 1
       15 GETTABLEN                        R6 R7 1
       16 GETTABLEKS                       R6 R6 K6 ["Checked"]
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
       38 GETUPVAL                         R3 1
       39 GETTABLEKS                       R3 R3 K11 ["Localization"]
       41 GETTABLEKS                       R3 R3 K12 ["new"]
       43 DUPTABLE                         R4 K17 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "SocialPresence"}]
       44 GETUPVAL                         R5 2
       45 SETTABLEKS                       R5 R4 K13 ["stringResourceTable"]
       47 GETUPVAL                         R5 3
       48 SETTABLEKS                       R5 R4 K14 ["translationResourceTable"]
       50 CALL                             R3 1 1
       51 SETTABLEKS                       R3 R0 K18 ["localization"]
       53 GETUPVAL                         R3 1
       54 GETTABLEKS                       R3 R3 K19 ["Analytics"]
       56 GETTABLEKS                       R3 R3 K12 ["new"]
       58 GETUPVAL                         R4 4
       59 CALL                             R3 1 1
       60 SETTABLEKS                       R3 R0 K20 ["analytics"]
       62 GETUPVAL                         R5 0
       63 NAMECALL                         R3 R2 K21 ["BindToChangedAsync"]
       65 CALL                             R3 2 1
       66 NEWCLOSURE                       R5 P3
       67 CAPTURE                          VAL R0
       68 NAMECALL                         R3 R3 K22 ["Connect"]
       70 CALL                             R3 2 1
       71 SETTABLEKS                       R3 R0 K23 ["onActionActivated"]
       73 RETURN                           R0 0

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
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R7 R7 K9 ["provide"]
       23 NEWTABLE                         R8 0 7
       25 GETUPVAL                         R9 1
       26 GETTABLEKS                       R9 R9 K10 ["new"]
       28 MOVE                             R10 R5
       29 CALL                             R9 1 1
       30 GETUPVAL                         R10 2
       31 GETTABLEKS                       R10 R10 K10 ["new"]
       33 NAMECALL                         R11 R5 K11 ["getMouse"]
       35 CALL                             R11 1 -1
       36 CALL                             R10 -1 1
       37 GETUPVAL                         R11 3
       38 CALL                             R11 0 1
       39 GETTABLEKS                       R12 R0 K12 ["localization"]
       41 GETTABLEKS                       R13 R0 K13 ["analytics"]
       43 GETUPVAL                         R14 4
       44 GETTABLEKS                       R14 R14 K10 ["new"]
       46 MOVE                             R15 R1
       47 CALL                             R14 1 1
       48 GETUPVAL                         R15 5
       49 GETTABLEKS                       R15 R15 K10 ["new"]
       51 MOVE                             R16 R2
       52 CALL                             R15 1 -1
       53 SETLIST                          R8 R9 -1 [1]
       55 DUPTABLE                         R9 K15 [{"MainWidget"}]
       56 GETUPVAL                         R10 6
       57 GETTABLEKS                       R10 R10 K16 ["createElement"]
       59 GETUPVAL                         R11 7
       60 DUPTABLE                         R12 K29 [{["Id"] = "SocialPresence", ["Enabled"], ["Title"], ["ZIndexBehavior"], ["InitialDockState"], ["Size"], ["MinSize"], ["OnClose"], ["ShouldRestore"] = True, ["OnWidgetRestored"]}]
       61 MOVE                             R13 R6
       62 JUMPIFNOT                        R13 ; [+4]
       63 GETUPVAL                         R13 8
       64 NAMECALL                         R13 R13 K30 ["IsEdit"]
       66 CALL                             R13 1 1
       67 SETTABLEKS                       R13 R12 K19 ["Enabled"]
       69 GETTABLEKS                       R13 R0 K12 ["localization"]
       71 LOADK                            R15 K7 ["Plugin"]
       72 LOADK                            R16 K31 ["Name"]
       73 NAMECALL                         R13 R13 K32 ["getText"]
       75 CALL                             R13 3 1
       76 SETTABLEKS                       R13 R12 K20 ["Title"]
       78 GETIMPORT                        R13 K35 [Enum.ZIndexBehavior.Sibling]
       80 SETTABLEKS                       R13 R12 K21 ["ZIndexBehavior"]
       82 GETIMPORT                        R13 K37 [Enum.InitialDockState.Right]
       84 SETTABLEKS                       R13 R12 K22 ["InitialDockState"]
       86 GETIMPORT                        R13 K39 [Vector2.new]
       88 LOADN                            R14 640
       89 LOADN                            R15 480
       90 CALL                             R13 2 1
       91 SETTABLEKS                       R13 R12 K23 ["Size"]
       93 GETIMPORT                        R13 K39 [Vector2.new]
       95 LOADN                            R14 250
       96 LOADN                            R15 200
       97 CALL                             R13 2 1
       98 SETTABLEKS                       R13 R12 K24 ["MinSize"]
      100 GETTABLEKS                       R13 R0 K40 ["onClose"]
      102 SETTABLEKS                       R13 R12 K25 ["OnClose"]
      104 GETTABLEKS                       R13 R0 K41 ["onRestore"]
      106 SETTABLEKS                       R13 R12 K28 ["OnWidgetRestored"]
      108 DUPTABLE                         R13 K43 [{"CollaboratorList"}]
      109 GETUPVAL                         R14 6
      110 GETTABLEKS                       R14 R14 K16 ["createElement"]
      112 GETUPVAL                         R15 9
      113 CALL                             R14 1 1
      114 SETTABLEKS                       R14 R13 K42 ["CollaboratorList"]
      116 CALL                             R10 3 1
      117 SETTABLEKS                       R10 R9 K14 ["MainWidget"]
      119 CALL                             R7 2 -1
      120 RETURN                           R7 -1

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
       18 GETTABLEKS                       R3 R3 K7 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K8 ["UI"]
       23 GETTABLEKS                       R4 R3 K9 ["DockWidget"]
       25 GETTABLEKS                       R5 R2 K10 ["ContextServices"]
       27 GETTABLEKS                       R6 R5 K11 ["Plugin"]
       29 GETTABLEKS                       R7 R5 K12 ["Mouse"]
       31 GETIMPORT                        R8 K4 [require]
       33 GETTABLEKS                       R9 R0 K13 ["Src"]
       35 GETTABLEKS                       R9 R9 K14 ["Resources"]
       37 GETTABLEKS                       R9 R9 K15 ["MakeTheme"]
       39 CALL                             R8 1 1
       40 GETTABLEKS                       R9 R0 K13 ["Src"]
       42 GETTABLEKS                       R9 R9 K14 ["Resources"]
       44 GETTABLEKS                       R9 R9 K16 ["Localization"]
       46 GETTABLEKS                       R9 R9 K17 ["SourceStrings"]
       48 GETTABLEKS                       R10 R0 K13 ["Src"]
       50 GETTABLEKS                       R10 R10 K14 ["Resources"]
       52 GETTABLEKS                       R10 R10 K16 ["Localization"]
       54 GETTABLEKS                       R10 R10 K18 ["LocalizedStrings"]
       56 GETTABLEKS                       R11 R0 K13 ["Src"]
       58 GETTABLEKS                       R11 R11 K19 ["Components"]
       60 GETIMPORT                        R12 K4 [require]
       62 GETTABLEKS                       R13 R11 K20 ["CollaboratorList"]
       64 CALL                             R12 1 1
       65 GETIMPORT                        R13 K4 [require]
       67 GETTABLEKS                       R14 R0 K13 ["Src"]
       69 GETTABLEKS                       R14 R14 K10 ["ContextServices"]
       71 GETTABLEKS                       R14 R14 K21 ["CollaboratorsServiceContext"]
       73 CALL                             R13 1 1
       74 GETIMPORT                        R14 K4 [require]
       76 GETIMPORT                        R15 K1 [script]
       78 GETTABLEKS                       R15 R15 K2 ["Parent"]
       80 GETTABLEKS                       R15 R15 K10 ["ContextServices"]
       82 GETTABLEKS                       R15 R15 K22 ["StudioPublishServiceContext"]
       84 CALL                             R14 1 1
       85 GETIMPORT                        R15 K4 [require]
       87 GETTABLEKS                       R16 R0 K13 ["Src"]
       89 GETTABLEKS                       R16 R16 K23 ["Util"]
       91 GETTABLEKS                       R16 R16 K24 ["AnalyticsHandlers"]
       93 CALL                             R15 1 1
       94 GETIMPORT                        R16 K26 [game]
       96 LOADK                            R18 K27 ["RunService"]
       97 NAMECALL                         R16 R16 K28 ["GetService"]
       99 CALL                             R16 2 1
      100 GETTABLEKS                       R17 R1 K29 ["PureComponent"]
      102 LOADK                            R19 K30 ["MainPlugin"]
      103 NAMECALL                         R17 R17 K31 ["extend"]
      105 CALL                             R17 2 1
      106 DUPTABLE                         R18 K42 [{["DataModel"] = "Standalone", ["PluginType"] = "Unknown", ["PluginId"] = "LiveCollaborators", ["Category"] = "Actions", ["ItemId"] = "Toggle"}]
      107 DUPCLOSURE                       R19 K43 [PROTO_7]
      108 CAPTURE                          VAL R18
      109 CAPTURE                          VAL R5
      110 CAPTURE                          VAL R9
      111 CAPTURE                          VAL R10
      112 CAPTURE                          VAL R15
      113 SETTABLEKS                       R19 R17 K44 ["init"]
      115 DUPCLOSURE                       R19 K45 [PROTO_8]
      116 SETTABLEKS                       R19 R17 K46 ["componentWillUnmount"]
      118 DUPCLOSURE                       R19 K47 [PROTO_9]
      119 CAPTURE                          VAL R5
      120 CAPTURE                          VAL R6
      121 CAPTURE                          VAL R7
      122 CAPTURE                          VAL R8
      123 CAPTURE                          VAL R13
      124 CAPTURE                          VAL R14
      125 CAPTURE                          VAL R1
      126 CAPTURE                          VAL R4
      127 CAPTURE                          VAL R16
      128 CAPTURE                          VAL R12
      129 SETTABLEKS                       R19 R17 K48 ["render"]
      131 RETURN                           R17 1
