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
        1 GETTABLEKS                       R0 R0 K0 ["FFlagStudioAssistantCloseTooltip"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["closeTooltipShown"]
        7 NOT                              R0 R1
        8 JUMPIFNOT                        R0 ; [+4]
        9 GETUPVAL                         R1 1
       10 LOADB                            R2 1
       11 SETTABLEKS                       R2 R1 K1 ["closeTooltipShown"]
       13 GETUPVAL                         R1 1
       14 DUPTABLE                         R3 K5 [{["enabled"] = False, ["showCloseTooltip"]}]
       15 SETTABLEKS                       R0 R3 K4 ["showCloseTooltip"]
       17 NAMECALL                         R1 R1 K6 ["setState"]
       19 CALL                             R1 2 0
       20 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Plugin"]
        3 LOADK                            R2 K1 ["AssistantCloseTooltipShown"]
        4 LOADB                            R3 1
        5 NAMECALL                         R0 R0 K2 ["SetSetting"]
        7 CALL                             R0 3 0
        8 GETUPVAL                         R0 1
        9 DUPTABLE                         R2 K5 [{["showCloseTooltip"] = False}]
       10 NAMECALL                         R0 R0 K6 ["setState"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"enabled"}]
        2 SETTABLEKS                       R0 R3 K0 ["enabled"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"enabled"}]
        2 GETTABLEKS                       R4 R0 K2 ["Enabled"]
        4 SETTABLEKS                       R4 R3 K0 ["enabled"]
        6 NAMECALL                         R1 R1 K3 ["setState"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+15]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["props"]
        5 GETTABLEKS                       R0 R0 K1 ["PluginLoaderContext"]
        7 GETTABLEKS                       R0 R0 K2 ["mainButton"]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K3 ["state"]
       12 GETTABLEKS                       R2 R2 K4 ["enabled"]
       14 NAMECALL                         R0 R0 K5 ["SetActive"]
       16 CALL                             R0 2 0
       17 GETUPVAL                         R0 1
       18 GETTABLEKS                       R0 R0 K0 ["props"]
       20 GETTABLEKS                       R0 R0 K1 ["PluginLoaderContext"]
       22 GETTABLEKS                       R0 R0 K6 ["mainButtonClickedSignal"]
       24 GETUPVAL                         R2 1
       25 GETTABLEKS                       R2 R2 K7 ["toggleEnabled"]
       27 NAMECALL                         R0 R0 K8 ["Connect"]
       29 CALL                             R0 2 0
       30 RETURN                           R0 0

PROTO_7:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"dockWidgetTitle"}]
        2 SETTABLEKS                       R0 R3 K0 ["dockWidgetTitle"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["textBoxRef"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R1 R0 K1 ["current"]
        7 JUMPIFNOT                        R1 ; [+7]
        8 NAMECALL                         R2 R1 K2 ["IsFocused"]
       10 CALL                             R2 1 1
       11 JUMPIF                           R2 ; [+3]
       12 NAMECALL                         R2 R1 K3 ["CaptureFocus"]
       14 CALL                             R2 1 0
       15 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["PluginLoaderContext"]
        3 GETTABLEKS                       R0 R0 K1 ["mainDockWidget"]
        5 NAMECALL                         R1 R0 K2 ["RequestRaise"]
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K3 ["onFocus"]
       11 CALL                             R1 0 0
       12 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R2 R1 K0 ["Plugin"]
        2 LOADK                            R4 K1 ["Actions"]
        3 NAMECALL                         R2 R2 K2 ["GetPluginComponent"]
        5 CALL                             R2 2 1
        6 SETTABLEKS                       R2 R0 K1 ["Actions"]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K3 ["Localization"]
       11 GETTABLEKS                       R2 R2 K4 ["new"]
       13 DUPTABLE                         R3 K9 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "Assistant"}]
       14 GETUPVAL                         R4 1
       15 SETTABLEKS                       R4 R3 K5 ["stringResourceTable"]
       17 GETUPVAL                         R4 2
       18 SETTABLEKS                       R4 R3 K6 ["translationResourceTable"]
       20 CALL                             R2 1 1
       21 SETTABLEKS                       R2 R0 K10 ["localization"]
       23 GETUPVAL                         R2 3
       24 GETTABLEKS                       R2 R2 K11 ["FFlagStudioAssistantCloseTooltip"]
       26 JUMPIFNOT                        R2 ; [+11]
       27 GETUPVAL                         R2 3
       28 GETTABLEKS                       R2 R2 K12 ["FFlagDebugAssistantForceCloseTooltip"]
       30 JUMPIFNOT                        R2 ; [+7]
       31 GETTABLEKS                       R2 R1 K0 ["Plugin"]
       33 LOADK                            R4 K13 ["AssistantCloseTooltipShown"]
       34 LOADNIL                          R5
       35 NAMECALL                         R2 R2 K14 ["SetSetting"]
       37 CALL                             R2 3 0
       38 GETUPVAL                         R3 3
       39 GETTABLEKS                       R3 R3 K11 ["FFlagStudioAssistantCloseTooltip"]
       41 JUMPIFNOT                        R3 ; [+11]
       42 GETTABLEKS                       R3 R1 K0 ["Plugin"]
       44 LOADK                            R5 K13 ["AssistantCloseTooltipShown"]
       45 NAMECALL                         R3 R3 K15 ["GetSetting"]
       47 CALL                             R3 2 1
       48 JUMPIFEQKB                       R3 TRUE ; [+2]
       50 LOADB                            R2 0 +1
       51 LOADB                            R2 1
       52 JUMP                             ; [+1]
       53 LOADB                            R2 1
       54 SETTABLEKS                       R2 R0 K16 ["closeTooltipShown"]
       56 LOADB                            R2 0
       57 GETUPVAL                         R3 4
       58 JUMPIFNOT                        R3 ; [+13]
       59 GETTABLEKS                       R3 R1 K17 ["PluginLoaderContext"]
       61 JUMPIFNOT                        R3 ; [+10]
       62 GETTABLEKS                       R3 R1 K17 ["PluginLoaderContext"]
       64 GETTABLEKS                       R3 R3 K18 ["mainDockWidget"]
       66 LOADB                            R4 0
       67 JUMPIFEQKNIL                     R3 ; [+3]
       69 GETTABLEKS                       R4 R3 K19 ["Enabled"]
       71 MOVE                             R2 R4
       72 DUPTABLE                         R3 K23 [{"enabled", "showCloseTooltip", "dockWidgetTitle"}]
       73 SETTABLEKS                       R2 R3 K20 ["enabled"]
       75 GETUPVAL                         R5 3
       76 GETTABLEKS                       R5 R5 K11 ["FFlagStudioAssistantCloseTooltip"]
       78 JUMPIFNOT                        R5 ; [+2]
       79 LOADB                            R4 0
       80 JUMP                             ; [+1]
       81 LOADNIL                          R4
       82 SETTABLEKS                       R4 R3 K21 ["showCloseTooltip"]
       84 GETTABLEKS                       R4 R0 K10 ["localization"]
       86 LOADK                            R6 K0 ["Plugin"]
       87 LOADK                            R7 K24 ["Name"]
       88 NAMECALL                         R4 R4 K25 ["getText"]
       90 CALL                             R4 3 1
       91 SETTABLEKS                       R4 R3 K22 ["dockWidgetTitle"]
       93 SETTABLEKS                       R3 R0 K26 ["state"]
       95 NEWCLOSURE                       R3 P0
       96 CAPTURE                          VAL R0
       97 SETTABLEKS                       R3 R0 K27 ["toggleEnabled"]
       99 NEWCLOSURE                       R3 P1
      100 CAPTURE                          UPVAL U3
      101 CAPTURE                          VAL R0
      102 SETTABLEKS                       R3 R0 K28 ["onClose"]
      104 GETUPVAL                         R4 3
      105 GETTABLEKS                       R4 R4 K11 ["FFlagStudioAssistantCloseTooltip"]
      107 JUMPIFNOT                        R4 ; [+4]
      108 NEWCLOSURE                       R3 P2
      109 CAPTURE                          VAL R1
      110 CAPTURE                          VAL R0
      111 JUMP                             ; [+1]
      112 LOADNIL                          R3
      113 SETTABLEKS                       R3 R0 K29 ["dismissCloseTooltip"]
      115 NEWCLOSURE                       R3 P3
      116 CAPTURE                          VAL R0
      117 SETTABLEKS                       R3 R0 K30 ["onRestore"]
      119 NEWCLOSURE                       R3 P4
      120 CAPTURE                          VAL R0
      121 SETTABLEKS                       R3 R0 K31 ["onWidgetEnabledChanged"]
      123 NEWCLOSURE                       R3 P5
      124 CAPTURE                          UPVAL U4
      125 CAPTURE                          VAL R0
      126 SETTABLEKS                       R3 R0 K32 ["onDockWidgetCreated"]
      128 GETUPVAL                         R3 0
      129 GETTABLEKS                       R3 R3 K33 ["Analytics"]
      131 GETTABLEKS                       R3 R3 K4 ["new"]
      133 DUPCLOSURE                       R4 K34 [PROTO_7]
      134 NEWTABLE                         R5 0 0
      136 CALL                             R3 2 1
      137 SETTABLEKS                       R3 R0 K35 ["analytics"]
      139 GETUPVAL                         R3 5
      140 GETTABLEKS                       R3 R3 K4 ["new"]
      142 CALL                             R3 0 1
      143 SETTABLEKS                       R3 R0 K36 ["DEPRECATED_stylizer"]
      145 GETUPVAL                         R3 6
      146 GETTABLEKS                       R3 R3 K37 ["Util"]
      148 GETTABLEKS                       R3 R3 K38 ["createFoundationDesignBinding"]
      150 CALL                             R3 0 2
      151 SETTABLEKS                       R4 R0 K39 ["onFoundationStyleSheetChange"]
      153 GETUPVAL                         R5 7
      154 GETTABLEKS                       R6 R1 K0 ["Plugin"]
      156 LOADNIL                          R7
      157 LOADNIL                          R8
      158 NEWTABLE                         R9 0 1
      160 MOVE                             R10 R3
      161 SETLIST                          R9 R10 1 [1]
      163 CALL                             R5 4 1
      164 SETTABLEKS                       R5 R0 K40 ["design"]
      166 GETUPVAL                         R5 8
      167 GETTABLEKS                       R5 R5 K4 ["new"]
      169 GETTABLEKS                       R6 R1 K0 ["Plugin"]
      171 NAMECALL                         R6 R6 K41 ["getMouse"]
      173 CALL                             R6 1 -1
      174 CALL                             R5 -1 1
      175 SETTABLEKS                       R5 R0 K42 ["mouse"]
      177 GETTABLEKS                       R5 R0 K42 ["mouse"]
      179 LOADK                            R7 K43 ["Arrow"]
      180 LOADN                            R8 0
      181 NAMECALL                         R5 R5 K44 ["__pushCursor"]
      183 CALL                             R5 3 0
      184 NEWCLOSURE                       R5 P7
      185 CAPTURE                          VAL R0
      186 SETTABLEKS                       R5 R0 K45 ["setDockWidgetTitle"]
      188 GETUPVAL                         R5 9
      189 GETTABLEKS                       R5 R5 K46 ["createRef"]
      191 CALL                             R5 0 1
      192 SETTABLEKS                       R5 R0 K47 ["textBoxRef"]
      194 NEWCLOSURE                       R5 P8
      195 CAPTURE                          VAL R0
      196 SETTABLEKS                       R5 R0 K48 ["onFocus"]
      198 NEWCLOSURE                       R5 P9
      199 CAPTURE                          VAL R1
      200 CAPTURE                          VAL R0
      201 SETTABLEKS                       R5 R0 K49 ["openAssistant"]
      203 NAMECALL                         R5 R0 K50 ["setupActionBindings"]
      205 CALL                             R5 1 0
      206 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Actions"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["BindToActivatedAsync"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Plugin"]
        5 GETTABLEKS                       R1 R0 K2 ["MultipleDocumentInterfaceInstance"]
        7 JUMPIFNOT                        R1 ; [+3]
        8 GETTABLEKS                       R2 R1 K3 ["FocusedDataModelSession"]
       10 JUMPIF                           R2 ; [+1]
       11 RETURN                           R0 0
       12 GETTABLEKS                       R2 R1 K3 ["FocusedDataModelSession"]
       14 GETTABLEKS                       R2 R2 K4 ["CurrentDataModelType"]
       16 GETIMPORT                        R3 K8 [Enum.StudioDataModelType.Edit]
       18 JUMPIFEQ                         R2 R3 ; [+6]
       20 GETIMPORT                        R3 K10 [warn]
       22 LOADK                            R4 K11 ["Explain Code is only available in Edit mode, not during play/run"]
       23 CALL                             R3 1 0
       24 RETURN                           R0 0
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K12 ["openAssistant"]
       28 CALL                             R3 0 0
       29 GETUPVAL                         R3 1
       30 GETTABLEKS                       R3 R3 K13 ["generateExplainCodePrompt"]
       32 CALL                             R3 0 1
       33 GETUPVAL                         R4 2
       34 GETTABLEKS                       R4 R4 K14 ["Components"]
       36 GETTABLEKS                       R4 R4 K15 ["ExternalHooks"]
       38 GETTABLEKS                       R5 R4 K16 ["sendMessage"]
       40 DUPTABLE                         R6 K20 [{["text"], ["retry"] = False}]
       41 SETTABLEKS                       R3 R6 K17 ["text"]
       43 CALL                             R5 1 0
       44 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["textBoxRef"]
        3 GETTABLEKS                       R0 R0 K1 ["current"]
        5 JUMPIFNOT                        R0 ; [+8]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["textBoxRef"]
        9 GETTABLEKS                       R0 R0 K1 ["current"]
       11 NAMECALL                         R0 R0 K2 ["IsFocused"]
       13 CALL                             R0 1 1
       14 JUMPIF                           R0 ; [+4]
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K3 ["openAssistant"]
       18 CALL                             R1 0 0
       19 RETURN                           R0 0

PROTO_15:
        0 DUPTABLE                         R1 K8 [{[1] = "Standalone", ["PluginId"] = "AssistantPlugin", ["Category"] = "Actions", ["ItemId"] = "MCPExplainCode"}]
        1 GETIMPORT                        R2 K10 [pcall]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CALL                             R2 1 2
        7 JUMPIFNOT                        R2 ; [+9]
        8 NEWCLOSURE                       R6 P1
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          UPVAL U1
       12 NAMECALL                         R4 R3 K11 ["Connect"]
       14 CALL                             R4 2 1
       15 SETTABLEKS                       R4 R0 K12 ["mcpExplainCodeConnection"]
       17 GETTABLEKS                       R4 R0 K5 ["Actions"]
       19 GETUPVAL                         R6 2
       20 NAMECALL                         R4 R4 K13 ["BindToActivatedAsync"]
       22 CALL                             R4 2 1
       23 NEWCLOSURE                       R6 P2
       24 CAPTURE                          VAL R0
       25 NAMECALL                         R4 R4 K11 ["Connect"]
       27 CALL                             R4 2 1
       28 SETTABLEKS                       R4 R0 K14 ["askAssistantConnection"]
       30 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["PluginLoaderContext"]
        4 GETTABLEKS                       R1 R1 K2 ["mainButton"]
        6 GETTABLEKS                       R3 R0 K3 ["state"]
        8 GETTABLEKS                       R3 R3 K4 ["enabled"]
       10 NAMECALL                         R1 R1 K5 ["SetActive"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["mcpExplainCodeConnection"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["mcpExplainCodeConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["mcpExplainCodeConnection"]
       11 GETTABLEKS                       R1 R0 K2 ["askAssistantConnection"]
       13 JUMPIFNOT                        R1 ; [+8]
       14 GETTABLEKS                       R1 R0 K2 ["askAssistantConnection"]
       16 NAMECALL                         R1 R1 K1 ["Disconnect"]
       18 CALL                             R1 1 0
       19 LOADNIL                          R1
       20 SETTABLEKS                       R1 R0 K2 ["askAssistantConnection"]
       22 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETTABLEKS                       R4 R2 K3 ["enabled"]
        8 GETTABLEKS                       R5 R2 K4 ["dockWidgetTitle"]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K5 ["provide"]
       13 DUPTABLE                         R7 K11 [{"Plugin", "Mouse", "Stylizer", "Localization", "Analytics", "Design"}]
       14 GETUPVAL                         R8 1
       15 GETTABLEKS                       R8 R8 K12 ["new"]
       17 MOVE                             R9 R3
       18 CALL                             R8 1 1
       19 SETTABLEKS                       R8 R7 K2 ["Plugin"]
       21 GETTABLEKS                       R8 R0 K13 ["mouse"]
       23 SETTABLEKS                       R8 R7 K6 ["Mouse"]
       25 GETTABLEKS                       R8 R0 K14 ["DEPRECATED_stylizer"]
       27 SETTABLEKS                       R8 R7 K7 ["Stylizer"]
       29 GETTABLEKS                       R8 R0 K15 ["localization"]
       31 SETTABLEKS                       R8 R7 K8 ["Localization"]
       33 GETTABLEKS                       R8 R0 K16 ["analytics"]
       35 SETTABLEKS                       R8 R7 K9 ["Analytics"]
       37 GETUPVAL                         R8 2
       38 GETTABLEKS                       R8 R8 K12 ["new"]
       40 GETTABLEKS                       R9 R0 K17 ["design"]
       42 CALL                             R8 1 1
       43 SETTABLEKS                       R8 R7 K10 ["Design"]
       45 DUPTABLE                         R8 K20 [{"MainWidget", "CloseTooltip"}]
       46 GETUPVAL                         R9 3
       47 GETUPVAL                         R10 4
       48 NEWTABLE                         R11 16 0
       50 LOADK                            R12 K21 ["Assistant"]
       51 SETTABLEKS                       R12 R11 K22 ["Id"]
       53 SETTABLEKS                       R4 R11 K23 ["Enabled"]
       55 SETTABLEKS                       R5 R11 K24 ["Title"]
       57 GETIMPORT                        R12 K28 [Enum.ZIndexBehavior.Sibling]
       59 SETTABLEKS                       R12 R11 K26 ["ZIndexBehavior"]
       61 GETIMPORT                        R12 K31 [Enum.InitialDockState.Left]
       63 SETTABLEKS                       R12 R11 K29 ["InitialDockState"]
       65 GETIMPORT                        R12 K33 [Vector2.new]
       67 LOADN                            R13 640
       68 LOADN                            R14 480
       69 CALL                             R12 2 1
       70 SETTABLEKS                       R12 R11 K34 ["Size"]
       72 GETIMPORT                        R12 K33 [Vector2.new]
       74 LOADN                            R13 250
       75 LOADN                            R14 200
       76 CALL                             R12 2 1
       77 SETTABLEKS                       R12 R11 K35 ["MinSize"]
       79 GETTABLEKS                       R12 R0 K36 ["onClose"]
       81 SETTABLEKS                       R12 R11 K37 ["OnClose"]
       83 GETTABLEKS                       R12 R1 K38 ["PluginLoaderContext"]
       85 GETTABLEKS                       R12 R12 K39 ["mainDockWidget"]
       87 SETTABLEKS                       R12 R11 K40 ["Widget"]
       89 GETTABLEKS                       R12 R0 K41 ["onFocus"]
       91 SETTABLEKS                       R12 R11 K42 ["OnWidgetFocused"]
       93 GETTABLEKS                       R12 R0 K43 ["onDockWidgetCreated"]
       95 SETTABLEKS                       R12 R11 K44 ["OnWidgetCreated"]
       97 GETTABLEKS                       R12 R0 K45 ["onRestore"]
       99 SETTABLEKS                       R12 R11 K46 ["OnWidgetRestored"]
      101 LOADB                            R12 1
      102 SETTABLEKS                       R12 R11 K47 ["ShouldRestore"]
      104 GETUPVAL                         R12 5
      105 GETTABLEKS                       R12 R12 K48 ["Change"]
      107 GETTABLEKS                       R12 R12 K23 ["Enabled"]
      109 GETTABLEKS                       R13 R0 K49 ["onWidgetEnabledChanged"]
      111 SETTABLE                         R13 R11 R12
      112 DUPTABLE                         R12 K51 [{"App"}]
      113 GETUPVAL                         R13 3
      114 GETUPVAL                         R14 6
      115 DUPTABLE                         R15 K57 [{"args", "dockWidget", "onFoundationStyleSheetChange", "setDockWidgetTitle", "textBoxRef"}]
      116 GETTABLEKS                       R16 R1 K58 ["Args"]
      118 SETTABLEKS                       R16 R15 K52 ["args"]
      120 GETTABLEKS                       R16 R1 K38 ["PluginLoaderContext"]
      122 GETTABLEKS                       R16 R16 K39 ["mainDockWidget"]
      124 SETTABLEKS                       R16 R15 K53 ["dockWidget"]
      126 GETTABLEKS                       R16 R0 K54 ["onFoundationStyleSheetChange"]
      128 SETTABLEKS                       R16 R15 K54 ["onFoundationStyleSheetChange"]
      130 GETTABLEKS                       R16 R0 K55 ["setDockWidgetTitle"]
      132 SETTABLEKS                       R16 R15 K55 ["setDockWidgetTitle"]
      134 GETTABLEKS                       R16 R0 K56 ["textBoxRef"]
      136 SETTABLEKS                       R16 R15 K56 ["textBoxRef"]
      138 CALL                             R13 2 1
      139 SETTABLEKS                       R13 R12 K50 ["App"]
      141 CALL                             R9 3 1
      142 SETTABLEKS                       R9 R8 K18 ["MainWidget"]
      144 GETUPVAL                         R10 7
      145 GETTABLEKS                       R10 R10 K59 ["FFlagStudioAssistantCloseTooltip"]
      147 JUMPIFNOT                        R10 ; [+14]
      148 GETTABLEKS                       R10 R2 K60 ["showCloseTooltip"]
      150 JUMPIFNOT                        R10 ; [+11]
      151 GETUPVAL                         R9 3
      152 GETUPVAL                         R10 8
      153 DUPTABLE                         R11 K63 [{"plugin", "onDismiss"}]
      154 SETTABLEKS                       R3 R11 K61 ["plugin"]
      156 GETTABLEKS                       R12 R0 K64 ["dismissCloseTooltip"]
      158 SETTABLEKS                       R12 R11 K62 ["onDismiss"]
      160 CALL                             R9 2 1
      161 JUMP                             ; [+1]
      162 LOADNIL                          R9
      163 SETTABLEKS                       R9 R8 K19 ["CloseTooltip"]
      165 CALL                             R6 2 -1
      166 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K8 ["App"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R3 K10 ["AssistantUI"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K7 ["Components"]
       29 GETTABLEKS                       R4 R4 K11 ["CloseTooltip"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Src"]
       36 GETTABLEKS                       R5 R5 K12 ["Flags"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K9 ["Packages"]
       43 GETTABLEKS                       R6 R6 K13 ["Framework"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K9 ["Packages"]
       50 GETTABLEKS                       R7 R7 K14 ["React"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K9 ["Packages"]
       57 GETTABLEKS                       R8 R8 K15 ["StudioFoundation"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K6 ["Src"]
       64 GETTABLEKS                       R9 R9 K16 ["Util"]
       66 GETTABLEKS                       R9 R9 K17 ["StudioScriptHelper"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K19 [game]
       71 LOADK                            R11 K20 ["RaiseAssistantVisibility"]
       72 NAMECALL                         R9 R9 K21 ["GetEngineFeature"]
       74 CALL                             R9 2 1
       75 GETTABLEKS                       R10 R5 K22 ["UI"]
       77 GETTABLEKS                       R10 R10 K23 ["DockWidget"]
       79 GETTABLEKS                       R11 R5 K24 ["ContextServices"]
       81 GETTABLEKS                       R12 R11 K25 ["Design"]
       83 GETTABLEKS                       R13 R11 K26 ["Plugin"]
       85 GETTABLEKS                       R14 R11 K27 ["Mouse"]
       87 GETTABLEKS                       R15 R5 K28 ["Style"]
       89 GETTABLEKS                       R15 R15 K29 ["Themes"]
       91 GETTABLEKS                       R15 R15 K30 ["StudioTheme"]
       93 GETTABLEKS                       R16 R5 K31 ["Styling"]
       95 GETTABLEKS                       R16 R16 K32 ["registerPluginStyles"]
       97 GETTABLEKS                       R17 R0 K6 ["Src"]
       99 GETTABLEKS                       R17 R17 K33 ["Resources"]
      101 GETTABLEKS                       R17 R17 K34 ["Localization"]
      103 GETTABLEKS                       R17 R17 K35 ["SourceStrings"]
      105 GETTABLEKS                       R18 R0 K6 ["Src"]
      107 GETTABLEKS                       R18 R18 K33 ["Resources"]
      109 GETTABLEKS                       R18 R18 K34 ["Localization"]
      111 GETTABLEKS                       R18 R18 K36 ["LocalizedStrings"]
      113 GETTABLEKS                       R19 R6 K37 ["createElement"]
      115 GETTABLEKS                       R20 R6 K38 ["PureComponent"]
      117 LOADK                            R22 K39 ["MainPlugin"]
      118 NAMECALL                         R20 R20 K40 ["extend"]
      120 CALL                             R20 2 1
      121 DUPTABLE                         R21 K46 [{["Category"] = "Actions", ["ItemId"] = "FocusAssistant", ["PluginId"] = "Assistant"}]
      122 DUPCLOSURE                       R22 K47 [PROTO_11]
      123 CAPTURE                          VAL R11
      124 CAPTURE                          VAL R17
      125 CAPTURE                          VAL R18
      126 CAPTURE                          VAL R4
      127 CAPTURE                          VAL R9
      128 CAPTURE                          VAL R15
      129 CAPTURE                          VAL R7
      130 CAPTURE                          VAL R16
      131 CAPTURE                          VAL R14
      132 CAPTURE                          VAL R6
      133 SETTABLEKS                       R22 R20 K48 ["init"]
      135 DUPCLOSURE                       R22 K49 [PROTO_15]
      136 CAPTURE                          VAL R8
      137 CAPTURE                          VAL R2
      138 CAPTURE                          VAL R21
      139 SETTABLEKS                       R22 R20 K50 ["setupActionBindings"]
      141 DUPCLOSURE                       R22 K51 [PROTO_16]
      142 SETTABLEKS                       R22 R20 K52 ["didUpdate"]
      144 DUPCLOSURE                       R22 K53 [PROTO_17]
      145 SETTABLEKS                       R22 R20 K54 ["willUnmount"]
      147 DUPCLOSURE                       R22 K55 [PROTO_18]
      148 CAPTURE                          VAL R11
      149 CAPTURE                          VAL R13
      150 CAPTURE                          VAL R12
      151 CAPTURE                          VAL R19
      152 CAPTURE                          VAL R10
      153 CAPTURE                          VAL R6
      154 CAPTURE                          VAL R1
      155 CAPTURE                          VAL R4
      156 CAPTURE                          VAL R3
      157 SETTABLEKS                       R22 R20 K56 ["render"]
      159 RETURN                           R20 1
