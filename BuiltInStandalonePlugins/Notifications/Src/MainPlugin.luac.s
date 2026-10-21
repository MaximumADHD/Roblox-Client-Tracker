PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["RibbonNotificationService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["state"]
        3 GETTABLEKS                       R5 R5 K1 ["enabled"]
        5 NOT                              R4 R5
        6 AND                              R3 R4 R0
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K0 ["state"]
       10 GETTABLEKS                       R4 R4 K2 ["widget"]
       12 JUMPIFNOT                        R4 ; [+65]
       13 JUMPIF                           R3 ; [+1]
       14 JUMPIFNOT                        R1 ; [+63]
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K3 ["Plugin"]
       18 NAMECALL                         R4 R4 K4 ["GetUri"]
       20 CALL                             R4 1 1
       21 DUPTABLE                         R5 K12 [{["DataModel"], ["PluginType"], ["PluginId"], ["Category"] = "Panels", ["ItemId"] = "Notifications"}]
       22 GETTABLEKS                       R6 R4 K5 ["DataModel"]
       24 SETTABLEKS                       R6 R5 K5 ["DataModel"]
       26 GETTABLEKS                       R6 R4 K6 ["PluginType"]
       28 SETTABLEKS                       R6 R5 K6 ["PluginType"]
       30 GETTABLEKS                       R6 R4 K7 ["PluginId"]
       32 SETTABLEKS                       R6 R5 K7 ["PluginId"]
       34 GETUPVAL                         R6 1
       35 GETTABLEKS                       R6 R6 K3 ["Plugin"]
       37 LOADK                            R8 K9 ["Panels"]
       38 NAMECALL                         R6 R6 K13 ["GetPluginComponent"]
       40 CALL                             R6 2 1
       41 DUPTABLE                         R7 K18 [{["DataModel"] = "Standalone", ["PluginType"] = "Standalone", ["PluginId"] = "Ribbon", ["Category"] = "Widgets", ["ItemId"] = "RightMezzanine/Notifications"}]
       42 MOVE                             R10 R5
       43 DUPTABLE                         R11 K23 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
       44 SETTABLEKS                       R7 R11 K19 ["TargetWidgetUri"]
       46 GETIMPORT                        R12 K26 [Vector2.new]
       48 LOADN                            R13 1
       49 LOADN                            R14 1
       50 CALL                             R12 2 1
       51 SETTABLEKS                       R12 R11 K20 ["TargetAnchorPoint"]
       53 GETIMPORT                        R12 K26 [Vector2.new]
       55 LOADN                            R13 1
       56 LOADN                            R14 0
       57 CALL                             R12 2 1
       58 SETTABLEKS                       R12 R11 K21 ["SubjectAnchorPoint"]
       60 GETIMPORT                        R12 K26 [Vector2.new]
       62 LOADN                            R13 0
       63 LOADN                            R14 0
       64 CALL                             R12 2 1
       65 SETTABLEKS                       R12 R11 K22 ["Offset"]
       67 NAMECALL                         R8 R6 K27 ["SetAttachmentAsync"]
       69 CALL                             R8 3 0
       70 GETUPVAL                         R8 0
       71 GETTABLEKS                       R8 R8 K0 ["state"]
       73 GETTABLEKS                       R8 R8 K2 ["widget"]
       75 LOADB                            R9 1
       76 SETTABLEKS                       R9 R8 K28 ["Enabled"]
       78 GETUPVAL                         R4 0
       79 GETTABLEKS                       R4 R4 K0 ["state"]
       81 GETTABLEKS                       R4 R4 K2 ["widget"]
       83 JUMPIFNOT                        R4 ; [+8]
       84 JUMPIFNOT                        R3 ; [+7]
       85 JUMPIFNOT                        R2 ; [+6]
       86 GETUPVAL                         R4 2
       87 GETTABLEKS                       R4 R4 K29 ["eventHandlers"]
       89 GETTABLEKS                       R4 R4 K30 ["trayOpened"]
       91 CALL                             R4 0 0
       92 GETUPVAL                         R4 0
       93 DUPTABLE                         R6 K31 [{"enabled"}]
       94 SETTABLEKS                       R0 R6 K1 ["enabled"]
       96 NAMECALL                         R4 R4 K32 ["setState"]
       98 CALL                             R4 2 0
       99 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"enabled"}]
        2 SETTABLEKS                       R0 R3 K0 ["enabled"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"enabled"}]
        2 GETTABLEKS                       R4 R0 K2 ["Enabled"]
        4 SETTABLEKS                       R4 R3 K0 ["enabled"]
        6 NAMECALL                         R1 R1 K3 ["setState"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["toggleEnabled"]
        3 MOVE                             R3 R0
        4 LOADB                            R4 0
        5 MOVE                             R5 R1
        6 CALL                             R2 3 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["DatamodelSessionLoadedAttachmentInfo"]
        4 SETTABLEKS                       R2 R1 K1 ["attachmentInfo"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K2 ["state"]
        9 GETTABLEKS                       R1 R1 K3 ["enabled"]
       11 JUMPIFNOT                        R1 ; [+11]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K4 ["toggleEnabled"]
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K2 ["state"]
       18 GETTABLEKS                       R2 R2 K3 ["enabled"]
       20 LOADB                            R3 1
       21 LOADB                            R4 0
       22 CALL                             R1 3 0
       23 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["DatamodelSessionUnloadedAttachmentInfo"]
        4 SETTABLEKS                       R2 R1 K1 ["attachmentInfo"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K2 ["state"]
        9 GETTABLEKS                       R1 R1 K3 ["enabled"]
       11 JUMPIFNOT                        R1 ; [+11]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K4 ["toggleEnabled"]
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K2 ["state"]
       18 GETTABLEKS                       R2 R2 K3 ["enabled"]
       20 LOADB                            R3 1
       21 LOADB                            R4 0
       22 CALL                             R1 3 0
       23 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R2 K4 [{[1] = False, ["widget"] = }]
        1 SETTABLEKS                       R2 R0 K5 ["state"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K6 ["DatamodelSessionUnloadedAttachmentInfo"]
        6 SETTABLEKS                       R2 R0 K7 ["attachmentInfo"]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R1
       11 CAPTURE                          UPVAL U1
       12 SETTABLEKS                       R2 R0 K8 ["toggleEnabled"]
       14 NEWCLOSURE                       R2 P1
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R2 R0 K9 ["onRestore"]
       18 NEWCLOSURE                       R2 P2
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R2 R0 K10 ["onWidgetEnabledChanged"]
       22 GETUPVAL                         R2 2
       23 GETTABLEKS                       R2 R2 K11 ["Localization"]
       25 GETTABLEKS                       R2 R2 K12 ["new"]
       27 DUPTABLE                         R3 K17 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "Notifications"}]
       28 GETUPVAL                         R4 3
       29 SETTABLEKS                       R4 R3 K13 ["stringResourceTable"]
       31 GETUPVAL                         R4 4
       32 SETTABLEKS                       R4 R3 K14 ["translationResourceTable"]
       34 CALL                             R2 1 1
       35 SETTABLEKS                       R2 R0 K18 ["localization"]
       37 GETUPVAL                         R2 5
       38 GETTABLEKS                       R3 R1 K19 ["Plugin"]
       40 CALL                             R2 1 1
       41 SETTABLEKS                       R2 R0 K20 ["design"]
       43 GETUPVAL                         R2 6
       44 GETTABLEKS                       R2 R2 K21 ["ToggleNotificationTray"]
       46 NEWCLOSURE                       R4 P3
       47 CAPTURE                          VAL R0
       48 NAMECALL                         R2 R2 K22 ["Connect"]
       50 CALL                             R2 2 1
       51 SETTABLEKS                       R2 R0 K23 ["toggleNotificationTrayConnection"]
       53 GETTABLEKS                       R2 R1 K19 ["Plugin"]
       55 GETTABLEKS                       R2 R2 K24 ["MultipleDocumentInterfaceInstance"]
       57 GETTABLEKS                       R3 R2 K25 ["DataModelSessionStarted"]
       59 NEWCLOSURE                       R5 P4
       60 CAPTURE                          VAL R0
       61 CAPTURE                          UPVAL U0
       62 NAMECALL                         R3 R3 K22 ["Connect"]
       64 CALL                             R3 2 1
       65 SETTABLEKS                       R3 R0 K26 ["dmOpenSession"]
       67 GETTABLEKS                       R3 R2 K27 ["DataModelSessionEnded"]
       69 NEWCLOSURE                       R5 P5
       70 CAPTURE                          VAL R0
       71 CAPTURE                          UPVAL U0
       72 NAMECALL                         R3 R3 K22 ["Connect"]
       74 CALL                             R3 2 1
       75 SETTABLEKS                       R3 R0 K28 ["dmCloseSession"]
       77 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R1 R1 K1 ["widget"]
        4 JUMPIFNOT                        R1 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R1 R0 K2 ["props"]
        8 GETTABLEKS                       R1 R1 K3 ["Plugin"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K4 ["Name"]
       13 DUPTABLE                         R4 K12 [{["Size"], ["MinSize"], ["Modal"] = False, ["Callout"] = True, ["InitialEnabled"] = False}]
       14 GETIMPORT                        R5 K15 [Vector2.new]
       16 GETUPVAL                         R6 1
       17 GETUPVAL                         R7 2
       18 CALL                             R5 2 1
       19 SETTABLEKS                       R5 R4 K5 ["Size"]
       21 GETIMPORT                        R5 K15 [Vector2.new]
       23 GETUPVAL                         R6 1
       24 GETUPVAL                         R7 2
       25 CALL                             R5 2 1
       26 SETTABLEKS                       R5 R4 K6 ["MinSize"]
       28 NAMECALL                         R1 R1 K16 ["CreateQWidgetPluginGui"]
       30 CALL                             R1 3 1
       31 DUPTABLE                         R4 K17 [{"widget"}]
       32 SETTABLEKS                       R1 R4 K1 ["widget"]
       34 NAMECALL                         R2 R0 K18 ["setState"]
       36 CALL                             R2 2 0
       37 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["toggleNotificationTrayConnection"]
        2 NAMECALL                         R1 R1 K1 ["Disconnect"]
        4 CALL                             R1 1 0
        5 GETTABLEKS                       R1 R0 K2 ["dmOpenSession"]
        7 NAMECALL                         R1 R1 K1 ["Disconnect"]
        9 CALL                             R1 1 0
       10 GETTABLEKS                       R1 R0 K3 ["dmCloseSession"]
       12 NAMECALL                         R1 R1 K1 ["Disconnect"]
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETTABLEKS                       R4 R2 K3 ["enabled"]
        8 GETTABLEKS                       R5 R0 K1 ["state"]
       10 GETTABLEKS                       R5 R5 K4 ["widget"]
       12 JUMPIF                           R5 ; [+1]
       13 RETURN                           R0 0
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K5 ["provide"]
       17 NEWTABLE                         R6 0 6
       19 GETUPVAL                         R7 1
       20 GETTABLEKS                       R7 R7 K6 ["new"]
       22 MOVE                             R8 R3
       23 CALL                             R7 1 1
       24 GETUPVAL                         R8 2
       25 GETTABLEKS                       R8 R8 K6 ["new"]
       27 NAMECALL                         R9 R3 K7 ["getMouse"]
       29 CALL                             R9 1 -1
       30 CALL                             R8 -1 1
       31 GETUPVAL                         R9 3
       32 GETTABLEKS                       R9 R9 K6 ["new"]
       34 GETTABLEKS                       R10 R0 K1 ["state"]
       36 GETTABLEKS                       R10 R10 K4 ["widget"]
       38 CALL                             R9 1 1
       39 GETUPVAL                         R10 4
       40 CALL                             R10 0 1
       41 GETTABLEKS                       R11 R0 K8 ["localization"]
       43 GETUPVAL                         R12 5
       44 SETLIST                          R6 R7 6 [1]
       46 DUPTABLE                         R7 K10 [{"MainWidget"}]
       47 GETUPVAL                         R8 6
       48 GETTABLEKS                       R8 R8 K11 ["createElement"]
       50 GETUPVAL                         R9 7
       51 NEWTABLE                         R10 16 0
       53 LOADK                            R11 K12 ["StudioNotifications"]
       54 SETTABLEKS                       R11 R10 K13 ["Id"]
       56 SETTABLEKS                       R4 R10 K14 ["Enabled"]
       58 GETTABLEKS                       R11 R0 K8 ["localization"]
       60 LOADK                            R13 K2 ["Plugin"]
       61 LOADK                            R14 K15 ["Name"]
       62 NAMECALL                         R11 R11 K16 ["getText"]
       64 CALL                             R11 3 1
       65 SETTABLEKS                       R11 R10 K17 ["Title"]
       67 GETIMPORT                        R11 K21 [Enum.ZIndexBehavior.Sibling]
       69 SETTABLEKS                       R11 R10 K19 ["ZIndexBehavior"]
       71 GETIMPORT                        R11 K24 [Enum.InitialDockState.Left]
       73 SETTABLEKS                       R11 R10 K22 ["InitialDockState"]
       75 GETIMPORT                        R11 K26 [Vector2.new]
       77 GETUPVAL                         R12 8
       78 GETUPVAL                         R13 9
       79 CALL                             R11 2 1
       80 SETTABLEKS                       R11 R10 K27 ["Size"]
       82 GETIMPORT                        R11 K26 [Vector2.new]
       84 GETUPVAL                         R12 8
       85 GETUPVAL                         R13 9
       86 CALL                             R11 2 1
       87 SETTABLEKS                       R11 R10 K28 ["MinSize"]
       89 LOADB                            R11 1
       90 SETTABLEKS                       R11 R10 K29 ["ShouldRestore"]
       92 GETTABLEKS                       R11 R0 K30 ["onRestore"]
       94 SETTABLEKS                       R11 R10 K31 ["OnWidgetRestored"]
       96 GETTABLEKS                       R11 R0 K1 ["state"]
       98 GETTABLEKS                       R11 R11 K4 ["widget"]
      100 SETTABLEKS                       R11 R10 K32 ["Widget"]
      102 GETUPVAL                         R11 6
      103 GETTABLEKS                       R11 R11 K33 ["Change"]
      105 GETTABLEKS                       R11 R11 K14 ["Enabled"]
      107 GETTABLEKS                       R12 R0 K34 ["onWidgetEnabledChanged"]
      109 SETTABLE                         R12 R10 R11
      110 GETUPVAL                         R12 10
      111 JUMPIFNOT                        R12 ; [+3]
      112 GETTABLEKS                       R11 R0 K35 ["design"]
      114 JUMP                             ; [+1]
      115 LOADNIL                          R11
      116 SETTABLEKS                       R11 R10 K36 ["PluginDesign"]
      118 DUPTABLE                         R11 K39 [{"AppWithProvider", "StyleLink"}]
      119 GETUPVAL                         R12 6
      120 GETTABLEKS                       R12 R12 K11 ["createElement"]
      122 GETUPVAL                         R13 11
      123 DUPTABLE                         R14 K41 [{"trayVisible"}]
      124 SETTABLEKS                       R4 R14 K40 ["trayVisible"]
      126 DUPTABLE                         R15 K43 [{"App"}]
      127 GETUPVAL                         R16 6
      128 GETTABLEKS                       R16 R16 K11 ["createElement"]
      130 GETUPVAL                         R17 12
      131 CALL                             R16 1 1
      132 SETTABLEKS                       R16 R15 K42 ["App"]
      134 CALL                             R12 3 1
      135 SETTABLEKS                       R12 R11 K37 ["AppWithProvider"]
      137 GETUPVAL                         R13 10
      138 JUMPIF                           R13 ; [+11]
      139 GETUPVAL                         R12 6
      140 GETTABLEKS                       R12 R12 K11 ["createElement"]
      142 LOADK                            R13 K38 ["StyleLink"]
      143 DUPTABLE                         R14 K45 [{"StyleSheet"}]
      144 GETTABLEKS                       R15 R0 K35 ["design"]
      146 SETTABLEKS                       R15 R14 K44 ["StyleSheet"]
      148 CALL                             R12 2 1
      149 JUMP                             ; [+1]
      150 LOADNIL                          R12
      151 SETTABLEKS                       R12 R11 K38 ["StyleLink"]
      153 CALL                             R8 3 1
      154 SETTABLEKS                       R8 R7 K9 ["MainWidget"]
      156 LOADB                            R8 1
      157 CALL                             R5 3 -1
      158 RETURN                           R5 -1

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
       21 GETTABLEKS                       R3 R2 K8 ["SharedFlags"]
       23 GETTABLEKS                       R3 R3 K9 ["getFFlagDevFrameworkUsePluginDesign"]
       25 CALL                             R3 0 1
       26 GETTABLEKS                       R4 R2 K10 ["UI"]
       28 GETTABLEKS                       R5 R2 K11 ["Styling"]
       30 GETTABLEKS                       R6 R4 K12 ["DockWidget"]
       32 GETIMPORT                        R7 K14 [pcall]
       34 DUPCLOSURE                       R8 K15 [PROTO_0]
       35 CALL                             R7 1 2
       36 JUMPIFNOT                        R7 ; [+2]
       37 MOVE                             R9 R8
       38 JUMP                             ; [+1]
       39 LOADNIL                          R9
       40 GETTABLEKS                       R10 R2 K16 ["ContextServices"]
       42 GETTABLEKS                       R11 R5 K17 ["registerPluginStyles"]
       44 GETTABLEKS                       R12 R10 K18 ["Plugin"]
       46 GETTABLEKS                       R13 R10 K19 ["Mouse"]
       48 GETTABLEKS                       R14 R10 K20 ["Focus"]
       50 GETIMPORT                        R15 K4 [require]
       52 GETTABLEKS                       R16 R0 K21 ["Src"]
       54 GETTABLEKS                       R16 R16 K22 ["Contexts"]
       56 GETTABLEKS                       R16 R16 K23 ["AnalyticsContext"]
       58 CALL                             R15 1 1
       59 GETIMPORT                        R16 K4 [require]
       61 GETTABLEKS                       R17 R0 K21 ["Src"]
       63 GETTABLEKS                       R17 R17 K22 ["Contexts"]
       65 GETTABLEKS                       R17 R17 K24 ["TrayVisibleProvider"]
       67 CALL                             R16 1 1
       68 GETIMPORT                        R17 K4 [require]
       70 GETTABLEKS                       R18 R0 K21 ["Src"]
       72 GETTABLEKS                       R18 R18 K25 ["Resources"]
       74 GETTABLEKS                       R18 R18 K26 ["MakeTheme"]
       76 CALL                             R17 1 1
       77 GETIMPORT                        R18 K4 [require]
       79 GETTABLEKS                       R19 R0 K21 ["Src"]
       81 GETTABLEKS                       R19 R19 K27 ["Util"]
       83 GETTABLEKS                       R19 R19 K28 ["AttachmentConstants"]
       85 CALL                             R18 1 1
       86 GETTABLEKS                       R19 R0 K21 ["Src"]
       88 GETTABLEKS                       R19 R19 K25 ["Resources"]
       90 GETTABLEKS                       R19 R19 K29 ["Localization"]
       92 GETTABLEKS                       R19 R19 K30 ["SourceStrings"]
       94 GETTABLEKS                       R20 R0 K21 ["Src"]
       96 GETTABLEKS                       R20 R20 K25 ["Resources"]
       98 GETTABLEKS                       R20 R20 K29 ["Localization"]
      100 GETTABLEKS                       R20 R20 K31 ["LocalizedStrings"]
      102 GETIMPORT                        R21 K4 [require]
      104 GETTABLEKS                       R22 R0 K21 ["Src"]
      106 GETTABLEKS                       R22 R22 K27 ["Util"]
      108 GETTABLEKS                       R22 R22 K32 ["TraySize"]
      110 CALL                             R21 1 1
      111 GETTABLEKS                       R22 R21 K33 ["TRAY_WIDTH"]
      113 GETTABLEKS                       R23 R21 K34 ["TRAY_HEIGHT"]
      115 GETTABLEKS                       R24 R0 K21 ["Src"]
      117 GETTABLEKS                       R24 R24 K35 ["Components"]
      119 GETIMPORT                        R25 K4 [require]
      121 GETTABLEKS                       R26 R24 K36 ["App"]
      123 CALL                             R25 1 1
      124 GETTABLEKS                       R26 R1 K37 ["PureComponent"]
      126 LOADK                            R28 K38 ["MainPlugin"]
      127 NAMECALL                         R26 R26 K39 ["extend"]
      129 CALL                             R26 2 1
      130 DUPCLOSURE                       R27 K40 [PROTO_7]
      131 CAPTURE                          VAL R18
      132 CAPTURE                          VAL R15
      133 CAPTURE                          VAL R10
      134 CAPTURE                          VAL R19
      135 CAPTURE                          VAL R20
      136 CAPTURE                          VAL R11
      137 CAPTURE                          VAL R9
      138 SETTABLEKS                       R27 R26 K41 ["init"]
      140 DUPCLOSURE                       R27 K42 [PROTO_8]
      141 CAPTURE                          VAL R0
      142 CAPTURE                          VAL R22
      143 CAPTURE                          VAL R23
      144 SETTABLEKS                       R27 R26 K43 ["didMount"]
      146 DUPCLOSURE                       R27 K44 [PROTO_9]
      147 SETTABLEKS                       R27 R26 K45 ["willUnmount"]
      149 DUPCLOSURE                       R27 K46 [PROTO_10]
      150 CAPTURE                          VAL R10
      151 CAPTURE                          VAL R12
      152 CAPTURE                          VAL R13
      153 CAPTURE                          VAL R14
      154 CAPTURE                          VAL R17
      155 CAPTURE                          VAL R15
      156 CAPTURE                          VAL R1
      157 CAPTURE                          VAL R6
      158 CAPTURE                          VAL R22
      159 CAPTURE                          VAL R23
      160 CAPTURE                          VAL R3
      161 CAPTURE                          VAL R16
      162 CAPTURE                          VAL R25
      163 SETTABLEKS                       R27 R26 K47 ["render"]
      165 RETURN                           R26 1
