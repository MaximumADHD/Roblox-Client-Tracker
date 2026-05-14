PROTO_0:
        0 DUPTABLE                         R0 K1 [{"uiDmLoaded"}]
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["uiDmLoaded"]
        4 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPCLOSURE                       R3 K0 [PROTO_0]
        2 NAMECALL                         R1 R1 K1 ["setState"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R0 K1 [{"uiDmLoaded"}]
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["uiDmLoaded"]
        4 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 DUPCLOSURE                       R3 K0 [PROTO_2]
        2 NAMECALL                         R1 R1 K1 ["setState"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R0 K1 [{"uiDmLoaded"}]
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["uiDmLoaded"]
        4 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["state"]
        3 GETTABLEKS                       R1 R1 K1 ["enabled"]
        5 JUMPIFNOTEQ                      R0 R1 ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 0
        9 DUPTABLE                         R3 K2 [{"enabled"}]
       10 SETTABLEKS                       R0 R3 K1 ["enabled"]
       12 NAMECALL                         R1 R1 K3 ["setState"]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R1 1
       16 LOADK                            R3 K4 ["WindowEnabledChanged"]
       17 MOVE                             R4 R0
       18 NAMECALL                         R1 R1 K5 ["Invoke"]
       20 CALL                             R1 3 0
       21 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["state"]
        3 GETTABLEKS                       R1 R1 K1 ["enabled"]
        5 NOT                              R0 R1
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["state"]
        9 GETTABLEKS                       R1 R1 K1 ["enabled"]
       11 JUMPIFNOTEQ                      R0 R1 ; [+2]
       13 RETURN                           R0 0
       14 GETUPVAL                         R1 0
       15 DUPTABLE                         R3 K2 [{"enabled"}]
       16 SETTABLEKS                       R0 R3 K1 ["enabled"]
       18 NAMECALL                         R1 R1 K3 ["setState"]
       20 CALL                             R1 2 0
       21 GETUPVAL                         R1 1
       22 LOADK                            R3 K4 ["WindowEnabledChanged"]
       23 MOVE                             R4 R0
       24 NAMECALL                         R1 R1 K5 ["Invoke"]
       26 CALL                             R1 3 0
       27 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETTABLEKS                       R0 R0 K1 ["enabled"]
        5 JUMPIFNOTEQKB                    R0 FALSE ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 0
        9 DUPTABLE                         R2 K2 [{"enabled"}]
       10 LOADB                            R3 0
       11 SETTABLEKS                       R3 R2 K1 ["enabled"]
       13 NAMECALL                         R0 R0 K3 ["setState"]
       15 CALL                             R0 2 0
       16 GETUPVAL                         R0 1
       17 LOADK                            R2 K4 ["WindowEnabledChanged"]
       18 LOADB                            R3 0
       19 NAMECALL                         R0 R0 K5 ["Invoke"]
       21 CALL                             R0 3 0
       22 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["state"]
        3 GETTABLEKS                       R1 R1 K1 ["enabled"]
        5 JUMPIFNOTEQ                      R0 R1 ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 0
        9 DUPTABLE                         R3 K2 [{"enabled"}]
       10 SETTABLEKS                       R0 R3 K1 ["enabled"]
       12 NAMECALL                         R1 R1 K3 ["setState"]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R1 1
       16 LOADK                            R3 K4 ["WindowEnabledChanged"]
       17 MOVE                             R4 R0
       18 NAMECALL                         R1 R1 K5 ["Invoke"]
       20 CALL                             R1 3 0
       21 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["Enabled"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["state"]
        5 GETTABLEKS                       R2 R2 K2 ["enabled"]
        7 JUMPIFNOTEQ                      R1 R2 ; [+2]
        9 RETURN                           R0 0
       10 GETUPVAL                         R2 0
       11 DUPTABLE                         R4 K3 [{"enabled"}]
       12 SETTABLEKS                       R1 R4 K2 ["enabled"]
       14 NAMECALL                         R2 R2 K4 ["setState"]
       16 CALL                             R2 2 0
       17 GETUPVAL                         R2 1
       18 LOADK                            R4 K5 ["WindowEnabledChanged"]
       19 MOVE                             R5 R1
       20 NAMECALL                         R2 R2 K6 ["Invoke"]
       22 CALL                             R2 3 0
       23 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["WindowEnabledChanged"]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K1 ["state"]
        5 GETTABLEKS                       R3 R3 K2 ["enabled"]
        7 NAMECALL                         R0 R0 K3 ["Invoke"]
        9 CALL                             R0 3 0
       10 RETURN                           R0 0

PROTO_11:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_12:
        0 GETIMPORT                        R0 K1 [print]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["localization"]
        5 LOADK                            R3 K3 ["Info"]
        6 LOADK                            R4 K4 ["CannotModifyInPlayModeMessage"]
        7 NAMECALL                         R1 R1 K5 ["getText"]
        9 CALL                             R1 3 -1
       10 CALL                             R0 -1 0
       11 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"cannotConfigureSelectionDialogVisible"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["cannotConfigureSelectionDialogVisible"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"cannotConfigureSelectionDialogVisible"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["cannotConfigureSelectionDialogVisible"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R2 R1 K0 ["Plugin"]
        2 DUPTABLE                         R3 K4 [{"enabled", "uiDmLoaded", "cannotConfigureSelectionDialogVisible"}]
        3 LOADB                            R4 0
        4 SETTABLEKS                       R4 R3 K1 ["enabled"]
        6 LOADB                            R4 0
        7 SETTABLEKS                       R4 R3 K2 ["uiDmLoaded"]
        9 LOADB                            R4 0
       10 SETTABLEKS                       R4 R3 K3 ["cannotConfigureSelectionDialogVisible"]
       12 SETTABLEKS                       R3 R0 K5 ["state"]
       14 GETTABLEKS                       R3 R2 K6 ["MultipleDocumentInterfaceInstance"]
       16 GETTABLEKS                       R4 R3 K7 ["DataModelSessionStarted"]
       18 NEWCLOSURE                       R6 P0
       19 CAPTURE                          VAL R0
       20 NAMECALL                         R4 R4 K8 ["Connect"]
       22 CALL                             R4 2 0
       23 GETTABLEKS                       R4 R3 K9 ["DataModelSessionEnded"]
       25 NEWCLOSURE                       R6 P1
       26 CAPTURE                          VAL R0
       27 NAMECALL                         R4 R4 K8 ["Connect"]
       29 CALL                             R4 2 0
       30 GETTABLEKS                       R4 R3 K10 ["FocusedDataModelSession"]
       32 JUMPIFNOT                        R4 ; [+4]
       33 DUPCLOSURE                       R6 K11 [PROTO_4]
       34 NAMECALL                         R4 R0 K12 ["setState"]
       36 CALL                             R4 2 0
       37 NEWCLOSURE                       R4 P3
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R2
       40 NEWCLOSURE                       R5 P4
       41 CAPTURE                          VAL R0
       42 CAPTURE                          VAL R2
       43 SETTABLEKS                       R5 R0 K13 ["toggleEnabled"]
       45 NEWCLOSURE                       R5 P5
       46 CAPTURE                          VAL R0
       47 CAPTURE                          VAL R2
       48 SETTABLEKS                       R5 R0 K14 ["onClose"]
       50 NEWCLOSURE                       R5 P6
       51 CAPTURE                          VAL R0
       52 CAPTURE                          VAL R2
       53 SETTABLEKS                       R5 R0 K15 ["onRestore"]
       55 NEWCLOSURE                       R5 P7
       56 CAPTURE                          VAL R0
       57 CAPTURE                          VAL R2
       58 SETTABLEKS                       R5 R0 K16 ["onWidgetEnabledChanged"]
       60 LOADK                            R7 K17 ["PollGuiEnabled"]
       61 NEWCLOSURE                       R8 P8
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R0
       64 NAMECALL                         R5 R2 K18 ["OnInvoke"]
       66 CALL                             R5 3 1
       67 SETTABLEKS                       R5 R0 K19 ["trackPollGuiEnabled"]
       69 GETUPVAL                         R5 0
       70 GETTABLEKS                       R5 R5 K20 ["Localization"]
       72 GETTABLEKS                       R5 R5 K21 ["new"]
       74 DUPTABLE                         R6 K25 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       75 GETUPVAL                         R7 1
       76 SETTABLEKS                       R7 R6 K22 ["stringResourceTable"]
       78 GETUPVAL                         R7 2
       79 SETTABLEKS                       R7 R6 K23 ["translationResourceTable"]
       81 LOADK                            R7 K26 ["CGE"]
       82 SETTABLEKS                       R7 R6 K24 ["pluginName"]
       84 CALL                             R5 1 1
       85 SETTABLEKS                       R5 R0 K27 ["localization"]
       87 GETUPVAL                         R5 0
       88 GETTABLEKS                       R5 R5 K28 ["Analytics"]
       90 GETTABLEKS                       R5 R5 K21 ["new"]
       92 DUPCLOSURE                       R6 K29 [PROTO_11]
       93 NEWTABLE                         R7 0 0
       95 CALL                             R5 2 1
       96 SETTABLEKS                       R5 R0 K30 ["analytics"]
       98 NEWCLOSURE                       R5 P10
       99 CAPTURE                          VAL R0
      100 SETTABLEKS                       R5 R0 K31 ["onAttemptModifyInPlayMode"]
      102 NEWCLOSURE                       R5 P11
      103 CAPTURE                          VAL R0
      104 SETTABLEKS                       R5 R0 K32 ["onCannotConfigureSelection"]
      106 NEWCLOSURE                       R5 P12
      107 CAPTURE                          VAL R0
      108 SETTABLEKS                       R5 R0 K33 ["onCloseCannotConfigureSelectionDialog"]
      110 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R2 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R2 K1 ["enabled"]
        4 DUPTABLE                         R3 K3 [{"Toggle"}]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K4 ["createElement"]
        8 GETUPVAL                         R5 1
        9 DUPTABLE                         R6 K13 [{"Toolbar", "Active", "Id", "Title", "Tooltip", "Icon", "OnClick", "ClickableWhenViewportHidden"}]
       10 SETTABLEKS                       R1 R6 K5 ["Toolbar"]
       12 SETTABLEKS                       R2 R6 K6 ["Active"]
       14 LOADK                            R7 K14 ["collisionGroupsEditorButton"]
       15 SETTABLEKS                       R7 R6 K7 ["Id"]
       17 GETTABLEKS                       R7 R0 K15 ["localization"]
       19 LOADK                            R9 K16 ["Main"]
       20 LOADK                            R10 K8 ["Title"]
       21 NAMECALL                         R7 R7 K17 ["getText"]
       23 CALL                             R7 3 1
       24 SETTABLEKS                       R7 R6 K8 ["Title"]
       26 GETTABLEKS                       R7 R0 K15 ["localization"]
       28 LOADK                            R9 K16 ["Main"]
       29 LOADK                            R10 K8 ["Title"]
       30 NAMECALL                         R7 R7 K17 ["getText"]
       32 CALL                             R7 3 1
       33 SETTABLEKS                       R7 R6 K9 ["Tooltip"]
       35 LOADK                            R7 K18 ["rbxlocaltheme://CollisionGroups"]
       36 SETTABLEKS                       R7 R6 K10 ["Icon"]
       38 GETTABLEKS                       R7 R0 K19 ["toggleEnabled"]
       40 SETTABLEKS                       R7 R6 K11 ["OnClick"]
       42 LOADB                            R7 1
       43 SETTABLEKS                       R7 R6 K12 ["ClickableWhenViewportHidden"]
       45 CALL                             R4 2 1
       46 SETTABLEKS                       R4 R3 K2 ["Toggle"]
       48 RETURN                           R3 1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["renderButtons"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETTABLEKS                       R4 R2 K3 ["enabled"]
        8 JUMPIFNOT                        R4 ; [+2]
        9 GETTABLEKS                       R4 R2 K4 ["uiDmLoaded"]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K5 ["provide"]
       14 NEWTABLE                         R6 0 5
       16 GETUPVAL                         R7 1
       17 GETTABLEKS                       R7 R7 K6 ["new"]
       19 MOVE                             R8 R3
       20 CALL                             R7 1 1
       21 GETUPVAL                         R8 2
       22 GETTABLEKS                       R8 R8 K6 ["new"]
       24 NAMECALL                         R9 R3 K7 ["getMouse"]
       26 CALL                             R9 1 -1
       27 CALL                             R8 -1 1
       28 GETUPVAL                         R9 3
       29 CALL                             R9 0 1
       30 GETTABLEKS                       R10 R0 K8 ["localization"]
       32 GETTABLEKS                       R11 R0 K9 ["analytics"]
       34 SETLIST                          R6 R7 5 [1]
       36 DUPTABLE                         R7 K12 [{"Toolbar", "MainWidget"}]
       37 GETUPVAL                         R8 4
       38 GETTABLEKS                       R8 R8 K13 ["createElement"]
       40 GETUPVAL                         R9 5
       41 DUPTABLE                         R10 K16 [{"Title", "RenderButtons"}]
       42 LOADK                            R11 K17 ["collisionGroupsEditorToolbar"]
       43 SETTABLEKS                       R11 R10 K14 ["Title"]
       45 NEWCLOSURE                       R11 P0
       46 CAPTURE                          VAL R0
       47 SETTABLEKS                       R11 R10 K15 ["RenderButtons"]
       49 CALL                             R8 2 1
       50 SETTABLEKS                       R8 R7 K10 ["Toolbar"]
       52 GETUPVAL                         R8 4
       53 GETTABLEKS                       R8 R8 K13 ["createElement"]
       55 GETUPVAL                         R9 6
       56 NEWTABLE                         R10 16 0
       58 LOADK                            R11 K18 ["CollisionGroupsEditor"]
       59 SETTABLEKS                       R11 R10 K19 ["Id"]
       61 SETTABLEKS                       R4 R10 K20 ["Enabled"]
       63 GETTABLEKS                       R11 R0 K8 ["localization"]
       65 LOADK                            R13 K21 ["Main"]
       66 LOADK                            R14 K14 ["Title"]
       67 NAMECALL                         R11 R11 K22 ["getText"]
       69 CALL                             R11 3 1
       70 SETTABLEKS                       R11 R10 K14 ["Title"]
       72 GETIMPORT                        R11 K26 [Enum.ZIndexBehavior.Sibling]
       74 SETTABLEKS                       R11 R10 K24 ["ZIndexBehavior"]
       76 GETIMPORT                        R11 K29 [Enum.InitialDockState.Right]
       78 SETTABLEKS                       R11 R10 K27 ["InitialDockState"]
       80 GETIMPORT                        R11 K31 [Vector2.new]
       82 LOADN                            R12 128
       83 LOADN                            R13 224
       84 CALL                             R11 2 1
       85 SETTABLEKS                       R11 R10 K32 ["Size"]
       87 GETIMPORT                        R11 K31 [Vector2.new]
       89 LOADN                            R12 128
       90 LOADN                            R13 200
       91 CALL                             R11 2 1
       92 SETTABLEKS                       R11 R10 K33 ["MinSize"]
       94 GETTABLEKS                       R11 R0 K34 ["onClose"]
       96 SETTABLEKS                       R11 R10 K35 ["OnClose"]
       98 LOADB                            R11 1
       99 SETTABLEKS                       R11 R10 K36 ["ShouldRestore"]
      101 GETTABLEKS                       R11 R0 K37 ["onRestore"]
      103 SETTABLEKS                       R11 R10 K38 ["OnWidgetRestored"]
      105 GETUPVAL                         R11 4
      106 GETTABLEKS                       R11 R11 K39 ["Change"]
      108 GETTABLEKS                       R11 R11 K20 ["Enabled"]
      110 GETTABLEKS                       R12 R0 K40 ["onWidgetEnabledChanged"]
      112 SETTABLE                         R12 R10 R11
      113 DUPTABLE                         R11 K43 [{"Gui", "CannotConfigureSelectionDialog"}]
      114 GETUPVAL                         R12 4
      115 GETTABLEKS                       R12 R12 K13 ["createElement"]
      117 GETUPVAL                         R13 7
      118 DUPTABLE                         R14 K47 [{"plugin", "OnAttemptModifyInPlayMode", "OnCannotConfigureSelection"}]
      119 SETTABLEKS                       R3 R14 K44 ["plugin"]
      121 GETTABLEKS                       R15 R0 K48 ["onAttemptModifyInPlayMode"]
      123 SETTABLEKS                       R15 R14 K45 ["OnAttemptModifyInPlayMode"]
      125 GETTABLEKS                       R15 R0 K49 ["onCannotConfigureSelection"]
      127 SETTABLEKS                       R15 R14 K46 ["OnCannotConfigureSelection"]
      129 CALL                             R12 2 1
      130 SETTABLEKS                       R12 R11 K41 ["Gui"]
      132 GETTABLEKS                       R12 R2 K50 ["cannotConfigureSelectionDialogVisible"]
      134 JUMPIFNOT                        R12 ; [+13]
      135 GETUPVAL                         R12 4
      136 GETTABLEKS                       R12 R12 K13 ["createElement"]
      138 GETUPVAL                         R13 8
      139 DUPTABLE                         R14 K51 [{"Enabled", "OnClose"}]
      140 LOADB                            R15 1
      141 SETTABLEKS                       R15 R14 K20 ["Enabled"]
      143 GETTABLEKS                       R15 R0 K52 ["onCloseCannotConfigureSelectionDialog"]
      145 SETTABLEKS                       R15 R14 K35 ["OnClose"]
      147 CALL                             R12 2 1
      148 SETTABLEKS                       R12 R11 K42 ["CannotConfigureSelectionDialog"]
      150 CALL                             R8 3 1
      151 SETTABLEKS                       R8 R7 K11 ["MainWidget"]
      153 CALL                             R5 2 -1
      154 RETURN                           R5 -1

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["trackPollGuiEnabled"]
        2 NAMECALL                         R1 R1 K1 ["Disconnect"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Packages"]
       11 GETTABLEKS                       R2 R2 K6 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K5 ["Packages"]
       18 GETTABLEKS                       R3 R3 K7 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K8 ["UI"]
       23 GETTABLEKS                       R4 R3 K9 ["DockWidget"]
       25 GETTABLEKS                       R5 R3 K10 ["PluginButton"]
       27 GETTABLEKS                       R6 R3 K11 ["PluginToolbar"]
       29 GETTABLEKS                       R7 R2 K12 ["ContextServices"]
       31 GETTABLEKS                       R8 R7 K13 ["Plugin"]
       33 GETTABLEKS                       R9 R7 K14 ["Mouse"]
       35 GETIMPORT                        R10 K4 [require]
       37 GETTABLEKS                       R11 R0 K15 ["Resources"]
       39 GETTABLEKS                       R11 R11 K16 ["MakeTheme"]
       41 CALL                             R10 1 1
       42 GETTABLEKS                       R11 R0 K15 ["Resources"]
       44 GETTABLEKS                       R11 R11 K17 ["SourceStrings"]
       46 GETTABLEKS                       R12 R0 K15 ["Resources"]
       48 GETTABLEKS                       R12 R12 K18 ["LocalizedStrings"]
       50 GETTABLEKS                       R13 R0 K13 ["Plugin"]
       52 GETTABLEKS                       R13 R13 K19 ["Components"]
       54 GETIMPORT                        R14 K4 [require]
       56 GETTABLEKS                       R15 R13 K20 ["Gui"]
       58 CALL                             R14 1 1
       59 GETIMPORT                        R15 K4 [require]
       61 GETTABLEKS                       R16 R13 K21 ["CannotConfigureSelectionDialog"]
       63 CALL                             R15 1 1
       64 GETTABLEKS                       R16 R1 K22 ["PureComponent"]
       66 LOADK                            R18 K23 ["MainPlugin"]
       67 NAMECALL                         R16 R16 K24 ["extend"]
       69 CALL                             R16 2 1
       70 DUPCLOSURE                       R17 K25 [PROTO_15]
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R11
       73 CAPTURE                          VAL R12
       74 SETTABLEKS                       R17 R16 K26 ["init"]
       76 DUPCLOSURE                       R17 K27 [PROTO_16]
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R5
       79 SETTABLEKS                       R17 R16 K28 ["renderButtons"]
       81 DUPCLOSURE                       R17 K29 [PROTO_18]
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R10
       86 CAPTURE                          VAL R1
       87 CAPTURE                          VAL R6
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R14
       90 CAPTURE                          VAL R15
       91 SETTABLEKS                       R17 R16 K30 ["render"]
       93 DUPCLOSURE                       R17 K31 [PROTO_19]
       94 SETTABLEKS                       R17 R16 K32 ["willUnmount"]
       96 RETURN                           R16 1
