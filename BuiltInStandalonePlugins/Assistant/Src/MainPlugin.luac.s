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
        1 DUPTABLE                         R2 K1 [{"enabled"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["enabled"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

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
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"dockWidgetTitle"}]
        2 SETTABLEKS                       R0 R3 K0 ["dockWidgetTitle"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["PluginLoaderContext"]
        3 GETTABLEKS                       R0 R0 K1 ["mainDockWidget"]
        5 NAMECALL                         R1 R0 K2 ["RequestRaise"]
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K3 ["onFocus"]
       11 CALL                             R1 0 0
       12 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R2 R1 K0 ["Plugin"]
        2 LOADK                            R4 K1 ["Actions"]
        3 NAMECALL                         R2 R2 K2 ["GetPluginComponent"]
        5 CALL                             R2 2 1
        6 SETTABLEKS                       R2 R0 K1 ["Actions"]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K3 ["Localization"]
       11 GETTABLEKS                       R2 R2 K4 ["new"]
       13 DUPTABLE                         R3 K8 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       14 GETUPVAL                         R4 1
       15 SETTABLEKS                       R4 R3 K5 ["stringResourceTable"]
       17 GETUPVAL                         R4 2
       18 SETTABLEKS                       R4 R3 K6 ["translationResourceTable"]
       20 LOADK                            R4 K9 ["Assistant"]
       21 SETTABLEKS                       R4 R3 K7 ["pluginName"]
       23 CALL                             R2 1 1
       24 SETTABLEKS                       R2 R0 K10 ["localization"]
       26 DUPTABLE                         R2 K13 [{"enabled", "dockWidgetTitle"}]
       27 LOADB                            R3 0
       28 SETTABLEKS                       R3 R2 K11 ["enabled"]
       30 GETTABLEKS                       R3 R0 K10 ["localization"]
       32 LOADK                            R5 K0 ["Plugin"]
       33 LOADK                            R6 K14 ["Name"]
       34 NAMECALL                         R3 R3 K15 ["getText"]
       36 CALL                             R3 3 1
       37 SETTABLEKS                       R3 R2 K12 ["dockWidgetTitle"]
       39 SETTABLEKS                       R2 R0 K16 ["state"]
       41 NEWCLOSURE                       R2 P0
       42 CAPTURE                          VAL R0
       43 SETTABLEKS                       R2 R0 K17 ["toggleEnabled"]
       45 NEWCLOSURE                       R2 P1
       46 CAPTURE                          VAL R0
       47 SETTABLEKS                       R2 R0 K18 ["onClose"]
       49 NEWCLOSURE                       R2 P2
       50 CAPTURE                          VAL R0
       51 SETTABLEKS                       R2 R0 K19 ["onRestore"]
       53 NEWCLOSURE                       R2 P3
       54 CAPTURE                          VAL R0
       55 SETTABLEKS                       R2 R0 K20 ["onWidgetEnabledChanged"]
       57 NEWCLOSURE                       R2 P4
       58 CAPTURE                          VAL R0
       59 SETTABLEKS                       R2 R0 K21 ["onDockWidgetCreated"]
       61 GETUPVAL                         R2 0
       62 GETTABLEKS                       R2 R2 K22 ["Analytics"]
       64 GETTABLEKS                       R2 R2 K4 ["new"]
       66 DUPCLOSURE                       R3 K23 [PROTO_6]
       67 NEWTABLE                         R4 0 0
       69 CALL                             R2 2 1
       70 SETTABLEKS                       R2 R0 K24 ["analytics"]
       72 GETUPVAL                         R2 3
       73 GETTABLEKS                       R2 R2 K4 ["new"]
       75 CALL                             R2 0 1
       76 SETTABLEKS                       R2 R0 K25 ["DEPRECATED_stylizer"]
       78 GETUPVAL                         R2 4
       79 GETTABLEKS                       R2 R2 K26 ["Util"]
       81 GETTABLEKS                       R2 R2 K27 ["createFoundationDesignBinding"]
       83 CALL                             R2 0 2
       84 SETTABLEKS                       R3 R0 K28 ["onFoundationStyleSheetChange"]
       86 GETUPVAL                         R4 5
       87 GETTABLEKS                       R5 R1 K0 ["Plugin"]
       89 LOADNIL                          R6
       90 LOADNIL                          R7
       91 NEWTABLE                         R8 0 1
       93 MOVE                             R9 R2
       94 SETLIST                          R8 R9 1 [1]
       96 CALL                             R4 4 1
       97 SETTABLEKS                       R4 R0 K29 ["design"]
       99 GETUPVAL                         R4 6
      100 GETTABLEKS                       R4 R4 K4 ["new"]
      102 GETTABLEKS                       R5 R1 K0 ["Plugin"]
      104 NAMECALL                         R5 R5 K30 ["getMouse"]
      106 CALL                             R5 1 -1
      107 CALL                             R4 -1 1
      108 SETTABLEKS                       R4 R0 K31 ["mouse"]
      110 GETTABLEKS                       R4 R0 K31 ["mouse"]
      112 LOADK                            R6 K32 ["Arrow"]
      113 LOADN                            R7 0
      114 NAMECALL                         R4 R4 K33 ["__pushCursor"]
      116 CALL                             R4 3 0
      117 NEWCLOSURE                       R4 P6
      118 CAPTURE                          VAL R0
      119 SETTABLEKS                       R4 R0 K34 ["setDockWidgetTitle"]
      121 GETUPVAL                         R4 7
      122 GETTABLEKS                       R4 R4 K35 ["createRef"]
      124 CALL                             R4 0 1
      125 SETTABLEKS                       R4 R0 K36 ["textBoxRef"]
      127 NEWCLOSURE                       R4 P7
      128 CAPTURE                          VAL R0
      129 SETTABLEKS                       R4 R0 K37 ["onFocus"]
      131 NEWCLOSURE                       R4 P8
      132 CAPTURE                          VAL R1
      133 CAPTURE                          VAL R0
      134 SETTABLEKS                       R4 R0 K38 ["openAssistant"]
      136 NAMECALL                         R4 R0 K39 ["setupActionBindings"]
      138 CALL                             R4 1 0
      139 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Actions"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["BindToActivatedAsync"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_12:
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
       40 DUPTABLE                         R6 K19 [{"text", "retry"}]
       41 SETTABLEKS                       R3 R6 K17 ["text"]
       43 LOADB                            R7 0
       44 SETTABLEKS                       R7 R6 K18 ["retry"]
       46 CALL                             R5 1 0
       47 RETURN                           R0 0

PROTO_13:
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

PROTO_14:
        0 DUPTABLE                         R1 K4 [{"DataModel", "PluginId", "Category", "ItemId"}]
        1 LOADK                            R2 K5 ["Standalone"]
        2 SETTABLEKS                       R2 R1 K0 ["DataModel"]
        4 LOADK                            R2 K6 ["AssistantPlugin"]
        5 SETTABLEKS                       R2 R1 K1 ["PluginId"]
        7 LOADK                            R2 K7 ["Actions"]
        8 SETTABLEKS                       R2 R1 K2 ["Category"]
       10 LOADK                            R2 K8 ["MCPExplainCode"]
       11 SETTABLEKS                       R2 R1 K3 ["ItemId"]
       13 GETIMPORT                        R2 K10 [pcall]
       15 NEWCLOSURE                       R3 P0
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R1
       18 CALL                             R2 1 2
       19 JUMPIFNOT                        R2 ; [+9]
       20 NEWCLOSURE                       R6 P1
       21 CAPTURE                          VAL R0
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          UPVAL U1
       24 NAMECALL                         R4 R3 K11 ["Connect"]
       26 CALL                             R4 2 1
       27 SETTABLEKS                       R4 R0 K12 ["mcpExplainCodeConnection"]
       29 GETTABLEKS                       R4 R0 K7 ["Actions"]
       31 GETUPVAL                         R6 2
       32 NAMECALL                         R4 R4 K13 ["BindToActivatedAsync"]
       34 CALL                             R4 2 1
       35 NEWCLOSURE                       R6 P2
       36 CAPTURE                          VAL R0
       37 NAMECALL                         R4 R4 K11 ["Connect"]
       39 CALL                             R4 2 1
       40 SETTABLEKS                       R4 R0 K14 ["askAssistantConnection"]
       42 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["PluginLoaderContext"]
        4 GETTABLEKS                       R1 R1 K2 ["mainButton"]
        6 GETTABLEKS                       R3 R0 K3 ["state"]
        8 GETTABLEKS                       R3 R3 K4 ["enabled"]
       10 NAMECALL                         R1 R1 K5 ["SetActive"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_16:
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

PROTO_17:
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
       45 DUPTABLE                         R8 K19 [{"MainWidget"}]
       46 GETUPVAL                         R9 3
       47 GETUPVAL                         R10 4
       48 NEWTABLE                         R11 16 0
       50 LOADK                            R12 K20 ["Assistant"]
       51 SETTABLEKS                       R12 R11 K21 ["Id"]
       53 SETTABLEKS                       R4 R11 K22 ["Enabled"]
       55 SETTABLEKS                       R5 R11 K23 ["Title"]
       57 GETIMPORT                        R12 K27 [Enum.ZIndexBehavior.Sibling]
       59 SETTABLEKS                       R12 R11 K25 ["ZIndexBehavior"]
       61 GETIMPORT                        R12 K30 [Enum.InitialDockState.Left]
       63 SETTABLEKS                       R12 R11 K28 ["InitialDockState"]
       65 GETIMPORT                        R12 K32 [Vector2.new]
       67 LOADN                            R13 128
       68 LOADN                            R14 224
       69 CALL                             R12 2 1
       70 SETTABLEKS                       R12 R11 K33 ["Size"]
       72 GETIMPORT                        R12 K32 [Vector2.new]
       74 LOADN                            R13 250
       75 LOADN                            R14 200
       76 CALL                             R12 2 1
       77 SETTABLEKS                       R12 R11 K34 ["MinSize"]
       79 GETTABLEKS                       R12 R0 K35 ["onClose"]
       81 SETTABLEKS                       R12 R11 K36 ["OnClose"]
       83 GETTABLEKS                       R12 R1 K37 ["PluginLoaderContext"]
       85 GETTABLEKS                       R12 R12 K38 ["mainDockWidget"]
       87 SETTABLEKS                       R12 R11 K39 ["Widget"]
       89 GETTABLEKS                       R12 R0 K40 ["onFocus"]
       91 SETTABLEKS                       R12 R11 K41 ["OnWidgetFocused"]
       93 GETTABLEKS                       R12 R0 K42 ["onDockWidgetCreated"]
       95 SETTABLEKS                       R12 R11 K43 ["OnWidgetCreated"]
       97 GETTABLEKS                       R12 R0 K44 ["onRestore"]
       99 SETTABLEKS                       R12 R11 K45 ["OnWidgetRestored"]
      101 LOADB                            R12 1
      102 SETTABLEKS                       R12 R11 K46 ["ShouldRestore"]
      104 GETUPVAL                         R12 5
      105 GETTABLEKS                       R12 R12 K47 ["Change"]
      107 GETTABLEKS                       R12 R12 K22 ["Enabled"]
      109 GETTABLEKS                       R13 R0 K48 ["onWidgetEnabledChanged"]
      111 SETTABLE                         R13 R11 R12
      112 DUPTABLE                         R12 K50 [{"App"}]
      113 GETUPVAL                         R13 3
      114 GETUPVAL                         R14 6
      115 DUPTABLE                         R15 K56 [{"args", "dockWidget", "onFoundationStyleSheetChange", "setDockWidgetTitle", "textBoxRef"}]
      116 GETTABLEKS                       R16 R1 K57 ["Args"]
      118 SETTABLEKS                       R16 R15 K51 ["args"]
      120 GETTABLEKS                       R16 R1 K37 ["PluginLoaderContext"]
      122 GETTABLEKS                       R16 R16 K38 ["mainDockWidget"]
      124 SETTABLEKS                       R16 R15 K52 ["dockWidget"]
      126 GETTABLEKS                       R16 R0 K53 ["onFoundationStyleSheetChange"]
      128 SETTABLEKS                       R16 R15 K53 ["onFoundationStyleSheetChange"]
      130 GETTABLEKS                       R16 R0 K54 ["setDockWidgetTitle"]
      132 SETTABLEKS                       R16 R15 K54 ["setDockWidgetTitle"]
      134 GETTABLEKS                       R16 R0 K55 ["textBoxRef"]
      136 SETTABLEKS                       R16 R15 K55 ["textBoxRef"]
      138 CALL                             R13 2 1
      139 SETTABLEKS                       R13 R12 K49 ["App"]
      141 CALL                             R9 3 1
      142 SETTABLEKS                       R9 R8 K18 ["MainWidget"]
      144 CALL                             R6 2 -1
      145 RETURN                           R6 -1

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
       25 GETTABLEKS                       R4 R0 K9 ["Packages"]
       27 GETTABLEKS                       R4 R4 K11 ["Framework"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Packages"]
       34 GETTABLEKS                       R5 R5 K12 ["React"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K9 ["Packages"]
       41 GETTABLEKS                       R6 R6 K13 ["StudioFoundation"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K6 ["Src"]
       48 GETTABLEKS                       R7 R7 K14 ["Util"]
       50 GETTABLEKS                       R7 R7 K15 ["StudioScriptHelper"]
       52 CALL                             R6 1 1
       53 GETTABLEKS                       R7 R3 K16 ["UI"]
       55 GETTABLEKS                       R7 R7 K17 ["DockWidget"]
       57 GETTABLEKS                       R8 R3 K18 ["ContextServices"]
       59 GETTABLEKS                       R9 R8 K19 ["Design"]
       61 GETTABLEKS                       R10 R8 K20 ["Plugin"]
       63 GETTABLEKS                       R11 R8 K21 ["Mouse"]
       65 GETTABLEKS                       R12 R3 K22 ["Style"]
       67 GETTABLEKS                       R12 R12 K23 ["Themes"]
       69 GETTABLEKS                       R12 R12 K24 ["StudioTheme"]
       71 GETTABLEKS                       R13 R3 K25 ["Styling"]
       73 GETTABLEKS                       R13 R13 K26 ["registerPluginStyles"]
       75 GETTABLEKS                       R14 R0 K6 ["Src"]
       77 GETTABLEKS                       R14 R14 K27 ["Resources"]
       79 GETTABLEKS                       R14 R14 K28 ["Localization"]
       81 GETTABLEKS                       R14 R14 K29 ["SourceStrings"]
       83 GETTABLEKS                       R15 R0 K6 ["Src"]
       85 GETTABLEKS                       R15 R15 K27 ["Resources"]
       87 GETTABLEKS                       R15 R15 K28 ["Localization"]
       89 GETTABLEKS                       R15 R15 K30 ["LocalizedStrings"]
       91 GETTABLEKS                       R16 R4 K31 ["createElement"]
       93 GETTABLEKS                       R17 R4 K32 ["PureComponent"]
       95 LOADK                            R19 K33 ["MainPlugin"]
       96 NAMECALL                         R17 R17 K34 ["extend"]
       98 CALL                             R17 2 1
       99 DUPTABLE                         R18 K38 [{"Category", "ItemId", "PluginId"}]
      100 LOADK                            R19 K39 ["Actions"]
      101 SETTABLEKS                       R19 R18 K35 ["Category"]
      103 LOADK                            R19 K40 ["FocusAssistant"]
      104 SETTABLEKS                       R19 R18 K36 ["ItemId"]
      106 LOADK                            R19 K2 ["Assistant"]
      107 SETTABLEKS                       R19 R18 K37 ["PluginId"]
      109 DUPCLOSURE                       R19 K41 [PROTO_10]
      110 CAPTURE                          VAL R8
      111 CAPTURE                          VAL R14
      112 CAPTURE                          VAL R15
      113 CAPTURE                          VAL R12
      114 CAPTURE                          VAL R5
      115 CAPTURE                          VAL R13
      116 CAPTURE                          VAL R11
      117 CAPTURE                          VAL R4
      118 SETTABLEKS                       R19 R17 K42 ["init"]
      120 DUPCLOSURE                       R19 K43 [PROTO_14]
      121 CAPTURE                          VAL R6
      122 CAPTURE                          VAL R2
      123 CAPTURE                          VAL R18
      124 SETTABLEKS                       R19 R17 K44 ["setupActionBindings"]
      126 DUPCLOSURE                       R19 K45 [PROTO_15]
      127 SETTABLEKS                       R19 R17 K46 ["didUpdate"]
      129 DUPCLOSURE                       R19 K47 [PROTO_16]
      130 SETTABLEKS                       R19 R17 K48 ["willUnmount"]
      132 DUPCLOSURE                       R19 K49 [PROTO_17]
      133 CAPTURE                          VAL R8
      134 CAPTURE                          VAL R10
      135 CAPTURE                          VAL R9
      136 CAPTURE                          VAL R16
      137 CAPTURE                          VAL R7
      138 CAPTURE                          VAL R4
      139 CAPTURE                          VAL R1
      140 SETTABLEKS                       R19 R17 K50 ["render"]
      142 RETURN                           R17 1
