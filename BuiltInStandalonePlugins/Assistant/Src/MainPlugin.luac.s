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
       13 DUPTABLE                         R3 K9 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "Assistant"}]
       14 GETUPVAL                         R4 1
       15 SETTABLEKS                       R4 R3 K5 ["stringResourceTable"]
       17 GETUPVAL                         R4 2
       18 SETTABLEKS                       R4 R3 K6 ["translationResourceTable"]
       20 CALL                             R2 1 1
       21 SETTABLEKS                       R2 R0 K10 ["localization"]
       23 LOADB                            R2 0
       24 GETUPVAL                         R3 3
       25 JUMPIFNOT                        R3 ; [+13]
       26 GETTABLEKS                       R3 R1 K11 ["PluginLoaderContext"]
       28 JUMPIFNOT                        R3 ; [+10]
       29 GETTABLEKS                       R3 R1 K11 ["PluginLoaderContext"]
       31 GETTABLEKS                       R3 R3 K12 ["mainDockWidget"]
       33 LOADB                            R4 0
       34 JUMPIFEQKNIL                     R3 ; [+3]
       36 GETTABLEKS                       R4 R3 K13 ["Enabled"]
       38 MOVE                             R2 R4
       39 DUPTABLE                         R3 K16 [{"enabled", "dockWidgetTitle"}]
       40 SETTABLEKS                       R2 R3 K14 ["enabled"]
       42 GETTABLEKS                       R4 R0 K10 ["localization"]
       44 LOADK                            R6 K0 ["Plugin"]
       45 LOADK                            R7 K17 ["Name"]
       46 NAMECALL                         R4 R4 K18 ["getText"]
       48 CALL                             R4 3 1
       49 SETTABLEKS                       R4 R3 K15 ["dockWidgetTitle"]
       51 SETTABLEKS                       R3 R0 K19 ["state"]
       53 NEWCLOSURE                       R3 P0
       54 CAPTURE                          VAL R0
       55 SETTABLEKS                       R3 R0 K20 ["toggleEnabled"]
       57 NEWCLOSURE                       R3 P1
       58 CAPTURE                          VAL R0
       59 SETTABLEKS                       R3 R0 K21 ["onClose"]
       61 NEWCLOSURE                       R3 P2
       62 CAPTURE                          VAL R0
       63 SETTABLEKS                       R3 R0 K22 ["onRestore"]
       65 NEWCLOSURE                       R3 P3
       66 CAPTURE                          VAL R0
       67 SETTABLEKS                       R3 R0 K23 ["onWidgetEnabledChanged"]
       69 NEWCLOSURE                       R3 P4
       70 CAPTURE                          UPVAL U3
       71 CAPTURE                          VAL R0
       72 SETTABLEKS                       R3 R0 K24 ["onDockWidgetCreated"]
       74 GETUPVAL                         R3 0
       75 GETTABLEKS                       R3 R3 K25 ["Analytics"]
       77 GETTABLEKS                       R3 R3 K4 ["new"]
       79 DUPCLOSURE                       R4 K26 [PROTO_6]
       80 NEWTABLE                         R5 0 0
       82 CALL                             R3 2 1
       83 SETTABLEKS                       R3 R0 K27 ["analytics"]
       85 GETUPVAL                         R3 4
       86 GETTABLEKS                       R3 R3 K4 ["new"]
       88 CALL                             R3 0 1
       89 SETTABLEKS                       R3 R0 K28 ["DEPRECATED_stylizer"]
       91 GETUPVAL                         R3 5
       92 GETTABLEKS                       R3 R3 K29 ["Util"]
       94 GETTABLEKS                       R3 R3 K30 ["createFoundationDesignBinding"]
       96 CALL                             R3 0 2
       97 SETTABLEKS                       R4 R0 K31 ["onFoundationStyleSheetChange"]
       99 GETUPVAL                         R5 6
      100 GETTABLEKS                       R6 R1 K0 ["Plugin"]
      102 LOADNIL                          R7
      103 LOADNIL                          R8
      104 NEWTABLE                         R9 0 1
      106 MOVE                             R10 R3
      107 SETLIST                          R9 R10 1 [1]
      109 CALL                             R5 4 1
      110 SETTABLEKS                       R5 R0 K32 ["design"]
      112 GETUPVAL                         R5 7
      113 GETTABLEKS                       R5 R5 K4 ["new"]
      115 GETTABLEKS                       R6 R1 K0 ["Plugin"]
      117 NAMECALL                         R6 R6 K33 ["getMouse"]
      119 CALL                             R6 1 -1
      120 CALL                             R5 -1 1
      121 SETTABLEKS                       R5 R0 K34 ["mouse"]
      123 GETTABLEKS                       R5 R0 K34 ["mouse"]
      125 LOADK                            R7 K35 ["Arrow"]
      126 LOADN                            R8 0
      127 NAMECALL                         R5 R5 K36 ["__pushCursor"]
      129 CALL                             R5 3 0
      130 NEWCLOSURE                       R5 P6
      131 CAPTURE                          VAL R0
      132 SETTABLEKS                       R5 R0 K37 ["setDockWidgetTitle"]
      134 GETUPVAL                         R5 8
      135 GETTABLEKS                       R5 R5 K38 ["createRef"]
      137 CALL                             R5 0 1
      138 SETTABLEKS                       R5 R0 K39 ["textBoxRef"]
      140 NEWCLOSURE                       R5 P7
      141 CAPTURE                          VAL R0
      142 SETTABLEKS                       R5 R0 K40 ["onFocus"]
      144 NEWCLOSURE                       R5 P8
      145 CAPTURE                          VAL R1
      146 CAPTURE                          VAL R0
      147 SETTABLEKS                       R5 R0 K41 ["openAssistant"]
      149 NAMECALL                         R5 R0 K42 ["setupActionBindings"]
      151 CALL                             R5 1 0
      152 RETURN                           R0 0

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
       40 DUPTABLE                         R6 K20 [{["text"], ["retry"] = False}]
       41 SETTABLEKS                       R3 R6 K17 ["text"]
       43 CALL                             R5 1 0
       44 RETURN                           R0 0

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
       67 LOADN                            R13 640
       68 LOADN                            R14 480
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
       53 GETIMPORT                        R7 K17 [game]
       55 LOADK                            R9 K18 ["RaiseAssistantVisibility"]
       56 NAMECALL                         R7 R7 K19 ["GetEngineFeature"]
       58 CALL                             R7 2 1
       59 GETTABLEKS                       R8 R3 K20 ["UI"]
       61 GETTABLEKS                       R8 R8 K21 ["DockWidget"]
       63 GETTABLEKS                       R9 R3 K22 ["ContextServices"]
       65 GETTABLEKS                       R10 R9 K23 ["Design"]
       67 GETTABLEKS                       R11 R9 K24 ["Plugin"]
       69 GETTABLEKS                       R12 R9 K25 ["Mouse"]
       71 GETTABLEKS                       R13 R3 K26 ["Style"]
       73 GETTABLEKS                       R13 R13 K27 ["Themes"]
       75 GETTABLEKS                       R13 R13 K28 ["StudioTheme"]
       77 GETTABLEKS                       R14 R3 K29 ["Styling"]
       79 GETTABLEKS                       R14 R14 K30 ["registerPluginStyles"]
       81 GETTABLEKS                       R15 R0 K6 ["Src"]
       83 GETTABLEKS                       R15 R15 K31 ["Resources"]
       85 GETTABLEKS                       R15 R15 K32 ["Localization"]
       87 GETTABLEKS                       R15 R15 K33 ["SourceStrings"]
       89 GETTABLEKS                       R16 R0 K6 ["Src"]
       91 GETTABLEKS                       R16 R16 K31 ["Resources"]
       93 GETTABLEKS                       R16 R16 K32 ["Localization"]
       95 GETTABLEKS                       R16 R16 K34 ["LocalizedStrings"]
       97 GETTABLEKS                       R17 R4 K35 ["createElement"]
       99 GETTABLEKS                       R18 R4 K36 ["PureComponent"]
      101 LOADK                            R20 K37 ["MainPlugin"]
      102 NAMECALL                         R18 R18 K38 ["extend"]
      104 CALL                             R18 2 1
      105 DUPTABLE                         R19 K44 [{["Category"] = "Actions", ["ItemId"] = "FocusAssistant", ["PluginId"] = "Assistant"}]
      106 DUPCLOSURE                       R20 K45 [PROTO_10]
      107 CAPTURE                          VAL R9
      108 CAPTURE                          VAL R15
      109 CAPTURE                          VAL R16
      110 CAPTURE                          VAL R7
      111 CAPTURE                          VAL R13
      112 CAPTURE                          VAL R5
      113 CAPTURE                          VAL R14
      114 CAPTURE                          VAL R12
      115 CAPTURE                          VAL R4
      116 SETTABLEKS                       R20 R18 K46 ["init"]
      118 DUPCLOSURE                       R20 K47 [PROTO_14]
      119 CAPTURE                          VAL R6
      120 CAPTURE                          VAL R2
      121 CAPTURE                          VAL R19
      122 SETTABLEKS                       R20 R18 K48 ["setupActionBindings"]
      124 DUPCLOSURE                       R20 K49 [PROTO_15]
      125 SETTABLEKS                       R20 R18 K50 ["didUpdate"]
      127 DUPCLOSURE                       R20 K51 [PROTO_16]
      128 SETTABLEKS                       R20 R18 K52 ["willUnmount"]
      130 DUPCLOSURE                       R20 K53 [PROTO_17]
      131 CAPTURE                          VAL R9
      132 CAPTURE                          VAL R11
      133 CAPTURE                          VAL R10
      134 CAPTURE                          VAL R17
      135 CAPTURE                          VAL R8
      136 CAPTURE                          VAL R4
      137 CAPTURE                          VAL R1
      138 SETTABLEKS                       R20 R18 K54 ["render"]
      140 RETURN                           R18 1
