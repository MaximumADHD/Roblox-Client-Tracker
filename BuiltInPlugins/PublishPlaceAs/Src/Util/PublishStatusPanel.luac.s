PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["StudioWidgetsService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 SETUPVAL                         R0 0
        7 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R2 K3 [{"_plugin", "_localization", "_store"}]
        1 GETTABLEKS                       R3 R0 K4 ["plugin"]
        3 SETTABLEKS                       R3 R2 K0 ["_plugin"]
        5 GETTABLEKS                       R3 R0 K5 ["localization"]
        7 SETTABLEKS                       R3 R2 K1 ["_localization"]
        9 GETTABLEKS                       R3 R0 K6 ["store"]
       11 SETTABLEKS                       R3 R2 K2 ["_store"]
       13 GETUPVAL                         R3 0
       14 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
       16 GETIMPORT                        R1 K8 [setmetatable]
       18 CALL                             R1 2 1
       19 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+7]
        3 JUMPIFNOT                        R1 ; [+6]
        4 GETTABLEKS                       R3 R1 K0 ["universeId"]
        6 JUMPIFNOT                        R3 ; [+3]
        7 GETTABLEKS                       R2 R1 K0 ["universeId"]
        9 JUMP                             ; [+4]
       10 GETIMPORT                        R2 K2 [game]
       12 GETTABLEKS                       R2 R2 K3 ["GameId"]
       14 JUMPIFNOTEQKN                    R2 K4 [0] ; [+3]
       16 LOADB                            R3 0
       17 RETURN                           R3 1
       18 NAMECALL                         R3 R0 K5 ["_createWidget"]
       20 CALL                             R3 1 0
       21 GETTABLEKS                       R3 R0 K6 ["_widget"]
       23 GETTABLEKS                       R3 R3 K7 ["Enabled"]
       25 JUMPIF                           R3 ; [+3]
       26 NAMECALL                         R3 R0 K8 ["_resetWindow"]
       28 CALL                             R3 1 0
       29 MOVE                             R5 R2
       30 NAMECALL                         R3 R0 K9 ["_mount"]
       32 CALL                             R3 2 0
       33 GETUPVAL                         R4 0
       34 CALL                             R4 0 1
       35 JUMPIFNOT                        R4 ; [+4]
       36 JUMPIFNOT                        R1 ; [+3]
       37 GETTABLEKS                       R3 R1 K10 ["onClose"]
       39 JUMP                             ; [+1]
       40 LOADNIL                          R3
       41 SETTABLEKS                       R3 R0 K11 ["_onClose"]
       43 GETTABLEKS                       R3 R0 K6 ["_widget"]
       45 LOADB                            R4 1
       46 SETTABLEKS                       R4 R3 K7 ["Enabled"]
       48 LOADB                            R3 1
       49 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_unmount"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+2]
        6 GETUPVAL                         R0 1
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["_widget"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R1 R0 K0 ["_widget"]
        6 LOADB                            R2 0
        7 SETTABLEKS                       R2 R1 K1 ["Enabled"]
        9 GETUPVAL                         R2 0
       10 CALL                             R2 0 1
       11 JUMPIFNOT                        R2 ; [+3]
       12 GETTABLEKS                       R1 R0 K2 ["_onClose"]
       14 JUMP                             ; [+1]
       15 LOADNIL                          R1
       16 LOADNIL                          R2
       17 SETTABLEKS                       R2 R0 K2 ["_onClose"]
       19 GETIMPORT                        R2 K5 [task.defer]
       21 NEWCLOSURE                       R3 P0
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R1
       24 CALL                             R2 1 0
       25 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_plugin"]
        3 LOADK                            R2 K1 ["Actions"]
        4 NAMECALL                         R0 R0 K2 ["GetPluginComponent"]
        6 CALL                             R0 2 1
        7 GETUPVAL                         R3 1
        8 NAMECALL                         R1 R0 K3 ["ActivateAsync"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 2
        6 JUMPIF                           R0 ; [+8]
        7 GETIMPORT                        R2 K3 [warn]
        9 LOADK                            R3 K4 ["Failed to activate Studio action: %*"]
       10 MOVE                             R5 R1
       11 NAMECALL                         R3 R3 K5 ["format"]
       13 CALL                             R3 2 1
       14 CALL                             R2 1 0
       15 RETURN                           R0 0

PROTO_7:
        0 NAMECALL                         R2 R0 K0 ["close"]
        2 CALL                             R2 1 0
        3 GETIMPORT                        R2 K3 [task.spawn]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["_widget"]
        4 NAMECALL                         R0 R0 K1 ["GetWidgetFromPluginGui"]
        6 CALL                             R0 2 1
        7 GETUPVAL                         R2 2
        8 GETUPVAL                         R3 3
        9 NAMECALL                         R0 R0 K2 ["SetFixedSize"]
       11 CALL                             R0 3 0
       12 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R3 R0 K0 ["_widget"]
        2 JUMPIFNOT                        R3 ; [+2]
        3 GETUPVAL                         R3 0
        4 JUMPIF                           R3 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K1 ["getMinContentSize"]
        9 CALL                             R3 0 1
       10 GETTABLEKS                       R6 R3 K2 ["X"]
       12 FASTCALL2                        MATH_MAX R1 R6 ; [+4]
       14 MOVE                             R5 R1
       15 GETIMPORT                        R4 K5 [math.max]
       17 CALL                             R4 2 1
       18 GETTABLEKS                       R7 R3 K6 ["Y"]
       20 FASTCALL2                        MATH_MAX R2 R7 ; [+4]
       22 MOVE                             R6 R2
       23 GETIMPORT                        R5 K5 [math.max]
       25 CALL                             R5 2 1
       26 GETIMPORT                        R6 K8 [pcall]
       28 NEWCLOSURE                       R7 P0
       29 CAPTURE                          UPVAL U0
       30 CAPTURE                          VAL R0
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R5
       33 CALL                             R6 1 2
       34 JUMPIF                           R6 ; [+8]
       35 GETIMPORT                        R8 K10 [warn]
       37 LOADK                            R9 K11 ["Failed to resize the Publish Status widget: %*"]
       38 MOVE                             R11 R7
       39 NAMECALL                         R9 R9 K12 ["format"]
       41 CALL                             R9 2 1
       42 CALL                             R8 1 0
       43 RETURN                           R0 0

PROTO_10:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["_onClose"]
        3 NAMECALL                         R1 R0 K1 ["_unmount"]
        5 CALL                             R1 1 0
        6 GETTABLEKS                       R1 R0 K2 ["_widget"]
        8 JUMPIFNOT                        R1 ; [+14]
        9 GETTABLEKS                       R1 R0 K2 ["_widget"]
       11 LOADNIL                          R3
       12 NAMECALL                         R1 R1 K3 ["BindToClose"]
       14 CALL                             R1 2 0
       15 GETTABLEKS                       R1 R0 K2 ["_widget"]
       17 NAMECALL                         R1 R1 K4 ["Destroy"]
       19 CALL                             R1 1 0
       20 LOADNIL                          R1
       21 SETTABLEKS                       R1 R0 K2 ["_widget"]
       23 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["close"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["_widget"]
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R1 R0 K1 ["_plugin"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K2 ["WidgetId"]
        9 DUPTABLE                         R4 K10 [{["Size"], ["Resizable"] = False, ["Modal"] = True, ["InitialEnabled"] = False, ["KeepCenterOnResize"]}]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K11 ["getDefaultContentSize"]
       13 CALL                             R5 0 1
       14 SETTABLEKS                       R5 R4 K3 ["Size"]
       16 GETUPVAL                         R6 1
       17 CALL                             R6 0 1
       18 JUMPIFNOT                        R6 ; [+2]
       19 LOADB                            R5 1
       20 JUMP                             ; [+1]
       21 LOADNIL                          R5
       22 SETTABLEKS                       R5 R4 K9 ["KeepCenterOnResize"]
       24 NAMECALL                         R1 R1 K12 ["CreateQWidgetPluginGui"]
       26 CALL                             R1 3 1
       27 SETTABLEKS                       R1 R0 K0 ["_widget"]
       29 GETTABLEKS                       R1 R0 K0 ["_widget"]
       31 GETUPVAL                         R2 0
       32 GETTABLEKS                       R2 R2 K2 ["WidgetId"]
       34 SETTABLEKS                       R2 R1 K13 ["Name"]
       36 GETTABLEKS                       R1 R0 K0 ["_widget"]
       38 GETIMPORT                        R2 K17 [Enum.ZIndexBehavior.Sibling]
       40 SETTABLEKS                       R2 R1 K15 ["ZIndexBehavior"]
       42 GETTABLEKS                       R1 R0 K0 ["_widget"]
       44 NEWCLOSURE                       R3 P0
       45 CAPTURE                          VAL R0
       46 NAMECALL                         R1 R1 K18 ["BindToClose"]
       48 CALL                             R1 2 0
       49 GETUPVAL                         R1 2
       50 GETTABLEKS                       R1 R1 K19 ["new"]
       52 DUPTABLE                         R2 K22 [{"namespace", "plugin"}]
       53 GETUPVAL                         R3 0
       54 GETTABLEKS                       R3 R3 K23 ["MessageBusNamespace"]
       56 SETTABLEKS                       R3 R2 K20 ["namespace"]
       58 GETTABLEKS                       R3 R0 K1 ["_plugin"]
       60 SETTABLEKS                       R3 R2 K21 ["plugin"]
       62 CALL                             R1 1 1
       63 SETTABLEKS                       R1 R0 K24 ["_webViewManagerContext"]
       65 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["_widget"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R1 R0 K0 ["_widget"]
        6 LOADK                            R2 K1 [""]
        7 SETTABLEKS                       R2 R1 K2 ["Title"]
        9 GETTABLEKS                       R1 R0 K0 ["_widget"]
       11 GETTABLEKS                       R2 R0 K3 ["_localization"]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K4 ["LocalizationNamespace"]
       16 LOADK                            R5 K2 ["Title"]
       17 NAMECALL                         R2 R2 K5 ["getText"]
       19 CALL                             R2 3 1
       20 SETTABLEKS                       R2 R1 K2 ["Title"]
       22 GETUPVAL                         R1 0
       23 GETTABLEKS                       R1 R1 K6 ["getDefaultContentSize"]
       25 CALL                             R1 0 1
       26 GETTABLEKS                       R4 R1 K7 ["X"]
       28 GETTABLEKS                       R5 R1 K8 ["Y"]
       30 NAMECALL                         R2 R0 K9 ["setContentSize"]
       32 CALL                             R2 3 0
       33 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["close"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["setContentSize"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["activateStudioAction"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R2 R0 K0 ["_handle"]
        2 JUMPIFNOT                        R2 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["createElement"]
        7 GETUPVAL                         R3 1
        8 DUPTABLE                         R4 K8 [{"focusGui", "localization", "mouse", "plugin", "store", "theme"}]
        9 GETTABLEKS                       R5 R0 K9 ["_widget"]
       11 SETTABLEKS                       R5 R4 K2 ["focusGui"]
       13 GETTABLEKS                       R5 R0 K10 ["_localization"]
       15 SETTABLEKS                       R5 R4 K3 ["localization"]
       17 GETTABLEKS                       R5 R0 K11 ["_plugin"]
       19 NAMECALL                         R5 R5 K12 ["getMouse"]
       21 CALL                             R5 1 1
       22 SETTABLEKS                       R5 R4 K4 ["mouse"]
       24 GETTABLEKS                       R5 R0 K11 ["_plugin"]
       26 SETTABLEKS                       R5 R4 K5 ["plugin"]
       28 GETTABLEKS                       R5 R0 K13 ["_store"]
       30 SETTABLEKS                       R5 R4 K6 ["store"]
       32 GETUPVAL                         R5 2
       33 CALL                             R5 0 1
       34 SETTABLEKS                       R5 R4 K7 ["theme"]
       36 NEWTABLE                         R5 0 1
       38 GETUPVAL                         R6 0
       39 GETTABLEKS                       R6 R6 K1 ["createElement"]
       41 GETUPVAL                         R7 3
       42 DUPTABLE                         R8 K20 [{"Plugin", "WebViewManagerContext", "UniverseId", "OnCloseRequested", "OnContentSizeRequested", "OnStudioActionRequested"}]
       43 GETTABLEKS                       R9 R0 K11 ["_plugin"]
       45 SETTABLEKS                       R9 R8 K14 ["Plugin"]
       47 GETTABLEKS                       R9 R0 K21 ["_webViewManagerContext"]
       49 SETTABLEKS                       R9 R8 K15 ["WebViewManagerContext"]
       51 GETUPVAL                         R10 4
       52 CALL                             R10 0 1
       53 JUMPIFNOT                        R10 ; [+2]
       54 MOVE                             R9 R1
       55 JUMP                             ; [+1]
       56 LOADNIL                          R9
       57 SETTABLEKS                       R9 R8 K16 ["UniverseId"]
       59 NEWCLOSURE                       R9 P0
       60 CAPTURE                          VAL R0
       61 SETTABLEKS                       R9 R8 K17 ["OnCloseRequested"]
       63 NEWCLOSURE                       R9 P1
       64 CAPTURE                          VAL R0
       65 SETTABLEKS                       R9 R8 K18 ["OnContentSizeRequested"]
       67 NEWCLOSURE                       R9 P2
       68 CAPTURE                          VAL R0
       69 SETTABLEKS                       R9 R8 K19 ["OnStudioActionRequested"]
       71 CALL                             R6 2 -1
       72 SETLIST                          R5 R6 -1 [1]
       74 CALL                             R2 3 1
       75 GETUPVAL                         R3 0
       76 GETTABLEKS                       R3 R3 K22 ["mount"]
       78 MOVE                             R4 R2
       79 GETTABLEKS                       R5 R0 K9 ["_widget"]
       81 GETUPVAL                         R6 5
       82 GETTABLEKS                       R6 R6 K23 ["WidgetId"]
       84 CALL                             R3 3 1
       85 SETTABLEKS                       R3 R0 K0 ["_handle"]
       87 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["_handle"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["unmount"]
        7 GETTABLEKS                       R2 R0 K0 ["_handle"]
        9 CALL                             R1 1 0
       10 LOADNIL                          R1
       11 SETTABLEKS                       R1 R0 K0 ["_handle"]
       13 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 LOADNIL                          R1
       10 GETIMPORT                        R2 K4 [pcall]
       12 NEWCLOSURE                       R3 P0
       13 CAPTURE                          REF R1
       14 CALL                             R2 1 0
       15 GETIMPORT                        R2 K6 [require]
       17 GETTABLEKS                       R3 R0 K7 ["Packages"]
       19 GETTABLEKS                       R3 R3 K8 ["Roact"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K6 [require]
       24 GETTABLEKS                       R4 R0 K7 ["Packages"]
       26 GETTABLEKS                       R4 R4 K9 ["Framework"]
       28 CALL                             R3 1 1
       29 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       31 GETTABLEKS                       R5 R4 K11 ["ContextItem"]
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K7 ["Packages"]
       37 GETTABLEKS                       R7 R7 K12 ["WebView"]
       39 CALL                             R6 1 1
       40 GETTABLEKS                       R6 R6 K13 ["WebViewManagerContext"]
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K14 ["Src"]
       46 GETTABLEKS                       R8 R8 K15 ["Flags"]
       48 GETTABLEKS                       R8 R8 K16 ["getEngineFeatureStudioUnifiedPublishAction"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K6 [require]
       53 GETTABLEKS                       R9 R0 K14 ["Src"]
       55 GETTABLEKS                       R9 R9 K17 ["Resources"]
       57 GETTABLEKS                       R9 R9 K18 ["MakeTheme"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K6 [require]
       62 GETTABLEKS                       R10 R0 K14 ["Src"]
       64 GETTABLEKS                       R10 R10 K19 ["Util"]
       66 GETTABLEKS                       R10 R10 K20 ["PublishStatusInfo"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K6 [require]
       71 GETTABLEKS                       R11 R0 K14 ["Src"]
       73 GETTABLEKS                       R11 R11 K21 ["Components"]
       75 GETTABLEKS                       R11 R11 K22 ["PublishStatusWebView"]
       77 CALL                             R10 1 1
       78 GETIMPORT                        R11 K6 [require]
       80 GETTABLEKS                       R12 R0 K14 ["Src"]
       82 GETTABLEKS                       R12 R12 K21 ["Components"]
       84 GETTABLEKS                       R12 R12 K23 ["ServiceWrapper"]
       86 CALL                             R11 1 1
       87 GETIMPORT                        R12 K6 [require]
       89 GETTABLEKS                       R13 R0 K14 ["Src"]
       91 GETTABLEKS                       R13 R13 K15 ["Flags"]
       93 GETTABLEKS                       R13 R13 K24 ["getFFlagPluginQWidgetKeepCenterOnResize"]
       95 CALL                             R12 1 1
       96 LOADK                            R15 K25 ["PublishStatusPanel"]
       97 NAMECALL                         R13 R5 K26 ["extend"]
       99 CALL                             R13 2 1
      100 DUPCLOSURE                       R14 K27 [PROTO_1]
      101 CAPTURE                          VAL R13
      102 SETTABLEKS                       R14 R13 K28 ["new"]
      104 DUPCLOSURE                       R14 K29 [PROTO_2]
      105 CAPTURE                          VAL R7
      106 SETTABLEKS                       R14 R13 K30 ["open"]
      108 DUPCLOSURE                       R14 K31 [PROTO_4]
      109 CAPTURE                          VAL R7
      110 SETTABLEKS                       R14 R13 K32 ["close"]
      112 DUPCLOSURE                       R14 K33 [PROTO_7]
      113 SETTABLEKS                       R14 R13 K34 ["activateStudioAction"]
      115 NEWCLOSURE                       R14 P5
      116 CAPTURE                          REF R1
      117 CAPTURE                          VAL R9
      118 SETTABLEKS                       R14 R13 K35 ["setContentSize"]
      120 DUPCLOSURE                       R14 K36 [PROTO_10]
      121 SETTABLEKS                       R14 R13 K37 ["destroy"]
      123 DUPCLOSURE                       R14 K38 [PROTO_12]
      124 CAPTURE                          VAL R9
      125 CAPTURE                          VAL R12
      126 CAPTURE                          VAL R6
      127 SETTABLEKS                       R14 R13 K39 ["_createWidget"]
      129 DUPCLOSURE                       R14 K40 [PROTO_13]
      130 CAPTURE                          VAL R9
      131 SETTABLEKS                       R14 R13 K41 ["_resetWindow"]
      133 DUPCLOSURE                       R14 K42 [PROTO_17]
      134 CAPTURE                          VAL R2
      135 CAPTURE                          VAL R11
      136 CAPTURE                          VAL R8
      137 CAPTURE                          VAL R10
      138 CAPTURE                          VAL R7
      139 CAPTURE                          VAL R9
      140 SETTABLEKS                       R14 R13 K43 ["_mount"]
      142 DUPCLOSURE                       R14 K44 [PROTO_18]
      143 CAPTURE                          VAL R2
      144 SETTABLEKS                       R14 R13 K45 ["_unmount"]
      146 CLOSEUPVALS                      R1
      147 RETURN                           R13 1
