PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["CoreGui"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 GETTABLEKS                       R0 R0 K4 ["ViewSelectorScreenGui"]
        8 JUMPIFNOT                        R0 ; [+6]
        9 GETTABLEKS                       R1 R0 K5 ["Enabled"]
       11 LOADB                            R2 0
       12 SETUPVAL                         R1 0
       13 SETTABLEKS                       R2 R0 K5 ["Enabled"]
       15 RETURN                           R0 0

PROTO_1:
        0 LOADNIL                          R0
        1 GETIMPORT                        R1 K1 [pcall]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          REF R0
        5 CALL                             R1 1 0
        6 CLOSEUPVALS                      R0
        7 RETURN                           R0 1

PROTO_2:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["CoreGui"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 GETTABLEKS                       R0 R0 K4 ["ViewSelectorScreenGui"]
        8 GETUPVAL                         R1 0
        9 SETTABLEKS                       R1 R0 K5 ["Enabled"]
       11 RETURN                           R0 0

PROTO_3:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 RETURN                           R0 0
        3 GETIMPORT                        R1 K1 [pcall]
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          VAL R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["GenerateGUID"]
        3 CALL                             R1 1 -1
        4 RETURN                           R1 -1

PROTO_5:
        0 NEWTABLE                         R1 0 1
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["thunkMiddleware"]
        5 SETLIST                          R1 R2 1 [1]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K1 ["Store"]
       10 GETTABLEKS                       R2 R2 K2 ["new"]
       12 GETUPVAL                         R3 1
       13 LOADNIL                          R4
       14 MOVE                             R5 R1
       15 CALL                             R2 3 1
       16 GETUPVAL                         R5 2
       17 GETUPVAL                         R6 3
       18 GETTABLEKS                       R6 R6 K3 ["SNAP_MODES"]
       20 GETTABLEKS                       R6 R6 K4 ["None"]
       22 CALL                             R5 1 -1
       23 NAMECALL                         R3 R2 K5 ["dispatch"]
       25 CALL                             R3 -1 0
       26 RETURN                           R2 1

PROTO_6:
        0 RETURN                           R0 0

PROTO_7:
        0 NEWTABLE                         R1 1 0
        2 DUPCLOSURE                       R2 K0 [PROTO_6]
        3 SETTABLEKS                       R2 R1 K1 ["Disconnect"]
        5 RETURN                           R1 1

PROTO_8:
        0 NEWTABLE                         R0 1 0
        2 DUPCLOSURE                       R1 K0 [PROTO_7]
        3 SETTABLEKS                       R1 R0 K1 ["Connect"]
        5 RETURN                           R0 1

PROTO_9:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["ScreenGui"]
        3 GETIMPORT                        R2 K5 [game]
        5 GETTABLEKS                       R2 R2 K6 ["CoreGui"]
        7 CALL                             R0 2 1
        8 LOADK                            R1 K7 ["PluginMockGui"]
        9 SETTABLEKS                       R1 R0 K8 ["Name"]
       11 GETIMPORT                        R1 K12 [Enum.ZIndexBehavior.Sibling]
       13 SETTABLEKS                       R1 R0 K10 ["ZIndexBehavior"]
       15 RETURN                           R0 1

PROTO_10:
        0 PREPVARARGS                      1
        1 RETURN                           R0 0

PROTO_11:
        0 RETURN                           R0 0

PROTO_12:
        0 NEWTABLE                         R0 1 0
        2 NEWTABLE                         R2 1 0
        4 DUPCLOSURE                       R3 K0 [PROTO_7]
        5 SETTABLEKS                       R3 R2 K1 ["Connect"]
        7 MOVE                             R1 R2
        8 SETTABLEKS                       R1 R0 K2 ["Button1Down"]
       10 RETURN                           R0 1

PROTO_13:
        0 PREPVARARGS                      1
        1 GETIMPORT                        R2 K2 [Instance.new]
        3 LOADK                            R3 K3 ["ScreenGui"]
        4 GETIMPORT                        R4 K5 [game]
        6 GETTABLEKS                       R4 R4 K6 ["CoreGui"]
        8 CALL                             R2 2 1
        9 LOADK                            R3 K7 ["PluginMockGui"]
       10 SETTABLEKS                       R3 R2 K8 ["Name"]
       12 GETIMPORT                        R3 K12 [Enum.ZIndexBehavior.Sibling]
       14 SETTABLEKS                       R3 R2 K10 ["ZIndexBehavior"]
       16 MOVE                             R1 R2
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K13 ["subWindows"]
       20 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       22 MOVE                             R4 R1
       23 GETIMPORT                        R2 K16 [table.insert]
       25 CALL                             R2 2 0
       26 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 CALL                             R0 0 1
        4 DUPTABLE                         R1 K2 [{"Triggered"}]
        5 SETTABLEKS                       R0 R1 K1 ["Triggered"]
        7 RETURN                           R1 1

PROTO_15:
        0 PREPVARARGS                      1
        1 GETIMPORT                        R2 K2 [Instance.new]
        3 LOADK                            R3 K3 ["ScreenGui"]
        4 GETIMPORT                        R4 K5 [game]
        6 GETTABLEKS                       R4 R4 K6 ["CoreGui"]
        8 CALL                             R2 2 1
        9 LOADK                            R3 K7 ["PluginMockGui"]
       10 SETTABLEKS                       R3 R2 K8 ["Name"]
       12 GETIMPORT                        R3 K12 [Enum.ZIndexBehavior.Sibling]
       14 SETTABLEKS                       R3 R2 K10 ["ZIndexBehavior"]
       16 MOVE                             R1 R2
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K13 ["subWindows"]
       20 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       22 MOVE                             R4 R1
       23 GETIMPORT                        R2 K16 [table.insert]
       25 CALL                             R2 2 0
       26 RETURN                           R1 1

PROTO_16:
        0 DUPCLOSURE                       R2 K0 [PROTO_9]
        1 DUPTABLE                         R3 K9 [{["Activate"], ["Name"] = "MockPlugin", ["Deactivate"], ["GetMouse"], ["CreateDockWidgetPluginGui"], ["CreatePluginAction"], ["CreateQWidgetPluginGui"]}]
        2 DUPCLOSURE                       R4 K10 [PROTO_10]
        3 SETTABLEKS                       R4 R3 K1 ["Activate"]
        5 DUPCLOSURE                       R4 K11 [PROTO_11]
        6 SETTABLEKS                       R4 R3 K4 ["Deactivate"]
        8 DUPCLOSURE                       R4 K12 [PROTO_12]
        9 SETTABLEKS                       R4 R3 K5 ["GetMouse"]
       11 NEWCLOSURE                       R4 P4
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R4 R3 K6 ["CreateDockWidgetPluginGui"]
       15 DUPCLOSURE                       R4 K13 [PROTO_14]
       16 CAPTURE                          UPVAL U0
       17 SETTABLEKS                       R4 R3 K7 ["CreatePluginAction"]
       19 NEWCLOSURE                       R4 P6
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R4 R3 K8 ["CreateQWidgetPluginGui"]
       23 RETURN                           R3 1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["MAIN_TEST_SIZE"]
        3 GETIMPORT                        R2 K3 [Instance.new]
        5 LOADK                            R3 K4 ["ScreenGui"]
        6 GETIMPORT                        R4 K6 [game]
        8 GETTABLEKS                       R4 R4 K7 ["CoreGui"]
       10 CALL                             R2 2 1
       11 LOADK                            R3 K8 ["PluginMockGui"]
       12 SETTABLEKS                       R3 R2 K9 ["Name"]
       14 GETIMPORT                        R3 K13 [Enum.ZIndexBehavior.Sibling]
       16 SETTABLEKS                       R3 R2 K11 ["ZIndexBehavior"]
       18 GETIMPORT                        R3 K3 [Instance.new]
       20 LOADK                            R4 K14 ["Frame"]
       21 MOVE                             R5 R2
       22 CALL                             R3 2 1
       23 LOADK                            R4 K15 ["RhodiumTests"]
       24 SETTABLEKS                       R4 R3 K9 ["Name"]
       26 LOADN                            R4 1
       27 SETTABLEKS                       R4 R3 K16 ["BackgroundTransparency"]
       29 GETIMPORT                        R4 K18 [UDim2.new]
       31 LOADN                            R5 0
       32 GETTABLEKS                       R6 R1 K19 ["X"]
       34 LOADN                            R7 0
       35 GETTABLEKS                       R8 R1 K20 ["Y"]
       37 CALL                             R4 4 1
       38 SETTABLEKS                       R4 R3 K21 ["Size"]
       40 RETURN                           R3 1

PROTO_18:
        0 GETIMPORT                        R2 K1 [tick]
        2 CALL                             R2 0 1
        3 ADDK                             R3 R2 K2 [1]
        4 GETTABLEKS                       R5 R0 K3 ["subWindows"]
        6 GETTABLE                         R4 R5 R1
        7 JUMPIF                           R4 ; [+14]
        8 GETIMPORT                        R4 K5 [wait]
       10 CALL                             R4 0 0
       11 GETIMPORT                        R4 K1 [tick]
       13 CALL                             R4 0 1
       14 ADD                              R5 R2 R3
       15 JUMPIFNOTLT                      R5 R4 ; [+5]
       17 GETIMPORT                        R4 K7 [error]
       19 LOADK                            R5 K8 ["Test did not spawn a sub-window."]
       20 CALL                             R4 1 0
       21 JUMPBACK                         ; [-18]
       22 GETTABLEKS                       R5 R0 K3 ["subWindows"]
       24 GETTABLE                         R4 R5 R1
       25 RETURN                           R4 1

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["store"]
        2 RETURN                           R1 1

PROTO_20:
        0 GETTABLEKS                       R1 R0 K0 ["container"]
        2 RETURN                           R1 1

PROTO_21:
        0 DUPTABLE                         R1 K4 [{"localization", "theme", "plugin", "subWindows"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K5 ["mock"]
        4 CALL                             R2 0 1
        5 SETTABLEKS                       R2 R1 K0 ["localization"]
        7 GETUPVAL                         R2 1
        8 LOADB                            R3 1
        9 CALL                             R2 1 1
       10 SETTABLEKS                       R2 R1 K1 ["theme"]
       12 SETTABLEKS                       R0 R1 K2 ["plugin"]
       14 NEWTABLE                         R2 0 0
       16 SETTABLEKS                       R2 R1 K3 ["subWindows"]
       18 GETUPVAL                         R4 2
       19 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       21 MOVE                             R3 R1
       22 GETIMPORT                        R2 K7 [setmetatable]
       24 CALL                             R2 2 0
       25 NAMECALL                         R2 R1 K8 ["createTestStore"]
       27 CALL                             R2 1 1
       28 SETTABLEKS                       R2 R1 K9 ["store"]
       30 MOVE                             R4 R0
       31 NAMECALL                         R2 R1 K10 ["createMockPlugin"]
       33 CALL                             R2 2 1
       34 SETTABLEKS                       R2 R1 K11 ["mockPlugin"]
       36 NAMECALL                         R2 R1 K12 ["makeContainer"]
       38 CALL                             R2 1 1
       39 SETTABLEKS                       R2 R1 K13 ["container"]
       41 GETUPVAL                         R2 3
       42 GETTABLEKS                       R2 R2 K14 ["Analytics"]
       44 GETTABLEKS                       R2 R2 K5 ["mock"]
       46 CALL                             R2 0 1
       47 SETTABLEKS                       R2 R1 K15 ["analytics"]
       49 GETUPVAL                         R2 3
       50 GETTABLEKS                       R2 R2 K16 ["PluginActions"]
       52 GETTABLEKS                       R2 R2 K17 ["new"]
       54 GETTABLEKS                       R3 R1 K11 ["mockPlugin"]
       56 GETUPVAL                         R4 4
       57 GETTABLEKS                       R5 R1 K11 ["mockPlugin"]
       59 GETTABLEKS                       R6 R1 K0 ["localization"]
       61 CALL                             R4 2 -1
       62 CALL                             R2 -1 1
       63 SETTABLEKS                       R2 R1 K18 ["pluginActions"]
       65 GETUPVAL                         R2 5
       66 GETTABLEKS                       R2 R2 K17 ["new"]
       68 GETUPVAL                         R3 6
       69 GETTABLEKS                       R3 R3 K19 ["SIGNAL_KEYS"]
       71 CALL                             R2 1 1
       72 SETTABLEKS                       R2 R1 K20 ["signals"]
       74 GETUPVAL                         R2 7
       75 GETTABLEKS                       R2 R2 K17 ["new"]
       77 GETUPVAL                         R3 8
       78 GETTABLEKS                       R3 R3 K17 ["new"]
       80 LOADK                            R4 K21 ["CalloutService"]
       81 LOADB                            R5 1
       82 CALL                             R3 2 1
       83 NAMECALL                         R3 R3 K22 ["asService"]
       85 CALL                             R3 1 -1
       86 CALL                             R2 -1 1
       87 SETTABLEKS                       R2 R1 K23 ["calloutController"]
       89 RETURN                           R1 1

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K11 [{"theme", "localization", "store", "plugin", "focusGui", "pluginActions", "mouse", "analytics", "signals", "calloutController"}]
        5 GETTABLEKS                       R5 R0 K1 ["theme"]
        7 SETTABLEKS                       R5 R4 K1 ["theme"]
        9 GETTABLEKS                       R5 R0 K2 ["localization"]
       11 SETTABLEKS                       R5 R4 K2 ["localization"]
       13 GETTABLEKS                       R5 R0 K3 ["store"]
       15 SETTABLEKS                       R5 R4 K3 ["store"]
       17 GETTABLEKS                       R5 R0 K12 ["mockPlugin"]
       19 SETTABLEKS                       R5 R4 K4 ["plugin"]
       21 GETTABLEKS                       R5 R0 K13 ["container"]
       23 GETTABLEKS                       R5 R5 K14 ["Parent"]
       25 SETTABLEKS                       R5 R4 K5 ["focusGui"]
       27 GETTABLEKS                       R5 R0 K6 ["pluginActions"]
       29 SETTABLEKS                       R5 R4 K6 ["pluginActions"]
       31 GETTABLEKS                       R5 R0 K12 ["mockPlugin"]
       33 NAMECALL                         R5 R5 K15 ["GetMouse"]
       35 CALL                             R5 1 1
       36 SETTABLEKS                       R5 R4 K7 ["mouse"]
       38 GETTABLEKS                       R5 R0 K8 ["analytics"]
       40 SETTABLEKS                       R5 R4 K8 ["analytics"]
       42 GETTABLEKS                       R5 R0 K9 ["signals"]
       44 SETTABLEKS                       R5 R4 K9 ["signals"]
       46 GETTABLEKS                       R5 R0 K10 ["calloutController"]
       48 SETTABLEKS                       R5 R4 K10 ["calloutController"]
       50 DUPTABLE                         R5 K17 [{"AnimationClipEditor"}]
       51 GETUPVAL                         R6 0
       52 GETTABLEKS                       R6 R6 K0 ["createElement"]
       54 GETUPVAL                         R7 2
       55 CALL                             R6 1 1
       56 SETTABLEKS                       R6 R5 K16 ["AnimationClipEditor"]
       58 CALL                             R2 3 1
       59 LOADNIL                          R4
       60 GETIMPORT                        R5 K19 [pcall]
       62 NEWCLOSURE                       R6 P0
       63 CAPTURE                          REF R4
       64 CALL                             R5 1 0
       65 MOVE                             R3 R4
       66 CLOSEUPVALS                      R4
       67 GETUPVAL                         R4 0
       68 GETTABLEKS                       R4 R4 K20 ["mount"]
       70 MOVE                             R5 R2
       71 GETTABLEKS                       R6 R0 K13 ["container"]
       73 CALL                             R4 2 1
       74 GETIMPORT                        R5 K19 [pcall]
       76 NEWCLOSURE                       R6 P1
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R0
       79 CALL                             R5 1 2
       80 GETIMPORT                        R7 K22 [wait]
       82 CALL                             R7 0 0
       83 GETUPVAL                         R7 0
       84 GETTABLEKS                       R7 R7 K23 ["unmount"]
       86 MOVE                             R8 R4
       87 CALL                             R7 1 0
       88 JUMPIFNOTEQKNIL                  R3 ; [+2]
       90 RETURN                           R5 2
       91 GETIMPORT                        R7 K19 [pcall]
       93 NEWCLOSURE                       R8 P2
       94 CAPTURE                          VAL R3
       95 CALL                             R7 1 0
       96 RETURN                           R5 2

PROTO_24:
        0 GETTABLEKS                       R1 R0 K0 ["container"]
        2 GETTABLEKS                       R1 R1 K1 ["Parent"]
        4 NAMECALL                         R1 R1 K2 ["Destroy"]
        6 CALL                             R1 1 0
        7 GETTABLEKS                       R1 R0 K3 ["theme"]
        9 NAMECALL                         R1 R1 K4 ["destroy"]
       11 CALL                             R1 1 0
       12 GETTABLEKS                       R1 R0 K5 ["store"]
       14 NAMECALL                         R1 R1 K6 ["destruct"]
       16 CALL                             R1 1 0
       17 GETTABLEKS                       R1 R0 K7 ["localization"]
       19 NAMECALL                         R1 R1 K4 ["destroy"]
       21 CALL                             R1 1 0
       22 GETTABLEKS                       R1 R0 K8 ["calloutController"]
       24 NAMECALL                         R1 R1 K4 ["destroy"]
       26 CALL                             R1 1 0
       27 GETIMPORT                        R1 K10 [ipairs]
       29 GETTABLEKS                       R2 R0 K11 ["subWindows"]
       31 CALL                             R1 1 3
       32 FORGPREP_INEXT                   R1
       33 NAMECALL                         R6 R5 K2 ["Destroy"]
       35 CALL                             R6 1 0
       36 FORGLOOP                         R1 2 [inext] ; [-4]
       38 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AnimationClipEditor"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["Framework"]
       19 CALL                             R2 1 1
       20 GETTABLEKS                       R3 R2 K12 ["Util"]
       22 GETTABLEKS                       R3 R3 K13 ["Signal"]
       24 GETIMPORT                        R4 K9 [require]
       26 GETTABLEKS                       R5 R1 K14 ["Src"]
       28 GETTABLEKS                       R5 R5 K15 ["Context"]
       30 GETTABLEKS                       R5 R5 K16 ["Signals"]
       32 CALL                             R4 1 1
       33 GETTABLEKS                       R5 R2 K17 ["TestHelpers"]
       35 GETTABLEKS                       R5 R5 K18 ["ServiceWrapper"]
       37 GETTABLEKS                       R6 R2 K19 ["ContextServices"]
       39 GETIMPORT                        R7 K9 [require]
       41 GETTABLEKS                       R8 R1 K10 ["Packages"]
       43 GETTABLEKS                       R8 R8 K20 ["Roact"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K9 [require]
       48 GETTABLEKS                       R9 R1 K10 ["Packages"]
       50 GETTABLEKS                       R9 R9 K21 ["Rodux"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K9 [require]
       55 GETTABLEKS                       R10 R1 K14 ["Src"]
       57 GETTABLEKS                       R10 R10 K12 ["Util"]
       59 GETTABLEKS                       R10 R10 K22 ["Constants"]
       61 CALL                             R9 1 1
       62 GETIMPORT                        R10 K9 [require]
       64 GETTABLEKS                       R11 R1 K14 ["Src"]
       66 GETTABLEKS                       R11 R11 K12 ["Util"]
       68 GETTABLEKS                       R11 R11 K23 ["Theme"]
       70 CALL                             R10 1 1
       71 GETIMPORT                        R11 K9 [require]
       73 GETTABLEKS                       R12 R1 K14 ["Src"]
       75 GETTABLEKS                       R12 R12 K12 ["Util"]
       77 GETTABLEKS                       R12 R12 K24 ["MakePluginActions"]
       79 CALL                             R11 1 1
       80 GETTABLEKS                       R12 R6 K25 ["Localization"]
       82 GETIMPORT                        R13 K9 [require]
       84 GETTABLEKS                       R14 R1 K14 ["Src"]
       86 GETTABLEKS                       R14 R14 K26 ["Reducers"]
       88 GETTABLEKS                       R14 R14 K27 ["MainReducer"]
       90 CALL                             R13 1 1
       91 GETIMPORT                        R14 K9 [require]
       93 GETTABLEKS                       R15 R1 K14 ["Src"]
       95 GETTABLEKS                       R15 R15 K12 ["Util"]
       97 GETTABLEKS                       R15 R15 K28 ["CalloutController"]
       99 CALL                             R14 1 1
      100 GETIMPORT                        R15 K9 [require]
      102 GETTABLEKS                       R16 R1 K14 ["Src"]
      104 GETTABLEKS                       R16 R16 K29 ["Components"]
      106 GETTABLEKS                       R16 R16 K6 ["AnimationClipEditor"]
      108 CALL                             R15 1 1
      109 GETIMPORT                        R16 K9 [require]
      111 GETTABLEKS                       R17 R1 K14 ["Src"]
      113 GETTABLEKS                       R17 R17 K15 ["Context"]
      115 GETTABLEKS                       R17 R17 K30 ["MainProvider"]
      117 CALL                             R16 1 1
      118 GETIMPORT                        R17 K9 [require]
      120 GETTABLEKS                       R18 R1 K14 ["Src"]
      122 GETTABLEKS                       R18 R18 K31 ["Actions"]
      124 GETTABLEKS                       R18 R18 K32 ["SetSnapMode"]
      126 CALL                             R17 1 1
      127 NEWTABLE                         R18 16 0
      129 SETTABLEKS                       R18 R18 K33 ["__index"]
      131 DUPCLOSURE                       R19 K34 [PROTO_1]
      132 DUPCLOSURE                       R20 K35 [PROTO_3]
      133 DUPCLOSURE                       R21 K36 [PROTO_4]
      134 CAPTURE                          VAL R0
      135 SETTABLEKS                       R21 R18 K37 ["nextTestId"]
      137 DUPCLOSURE                       R21 K38 [PROTO_5]
      138 CAPTURE                          VAL R8
      139 CAPTURE                          VAL R13
      140 CAPTURE                          VAL R17
      141 CAPTURE                          VAL R9
      142 SETTABLEKS                       R21 R18 K39 ["createTestStore"]
      144 DUPCLOSURE                       R21 K40 [PROTO_8]
      145 DUPCLOSURE                       R22 K41 [PROTO_16]
      146 CAPTURE                          VAL R3
      147 SETTABLEKS                       R22 R18 K42 ["createMockPlugin"]
      149 DUPCLOSURE                       R22 K43 [PROTO_17]
      150 CAPTURE                          VAL R9
      151 SETTABLEKS                       R22 R18 K44 ["makeContainer"]
      153 DUPCLOSURE                       R22 K45 [PROTO_18]
      154 SETTABLEKS                       R22 R18 K46 ["getSubWindow"]
      156 DUPCLOSURE                       R22 K47 [PROTO_19]
      157 SETTABLEKS                       R22 R18 K48 ["getStore"]
      159 DUPCLOSURE                       R22 K49 [PROTO_20]
      160 SETTABLEKS                       R22 R18 K50 ["getContainer"]
      162 DUPCLOSURE                       R22 K51 [PROTO_21]
      163 CAPTURE                          VAL R12
      164 CAPTURE                          VAL R10
      165 CAPTURE                          VAL R18
      166 CAPTURE                          VAL R6
      167 CAPTURE                          VAL R11
      168 CAPTURE                          VAL R4
      169 CAPTURE                          VAL R9
      170 CAPTURE                          VAL R14
      171 CAPTURE                          VAL R5
      172 SETTABLEKS                       R22 R18 K52 ["new"]
      174 DUPCLOSURE                       R22 K53 [PROTO_23]
      175 CAPTURE                          VAL R7
      176 CAPTURE                          VAL R16
      177 CAPTURE                          VAL R15
      178 SETTABLEKS                       R22 R18 K54 ["run"]
      180 DUPCLOSURE                       R22 K55 [PROTO_24]
      181 SETTABLEKS                       R22 R18 K56 ["destroy"]
      183 RETURN                           R18 1
