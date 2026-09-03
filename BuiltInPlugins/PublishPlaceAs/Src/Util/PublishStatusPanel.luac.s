PROTO_0:
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

PROTO_1:
        0 GETIMPORT                        R1 K1 [game]
        2 GETTABLEKS                       R1 R1 K2 ["GameId"]
        4 JUMPIFNOTEQKN                    R1 K3 [0] ; [+3]
        6 LOADB                            R1 0
        7 RETURN                           R1 1
        8 NAMECALL                         R1 R0 K4 ["_createWidget"]
       10 CALL                             R1 1 0
       11 NAMECALL                         R1 R0 K5 ["_mount"]
       13 CALL                             R1 1 0
       14 GETTABLEKS                       R1 R0 K6 ["_widget"]
       16 LOADB                            R2 1
       17 SETTABLEKS                       R2 R1 K7 ["Enabled"]
       19 LOADB                            R1 1
       20 RETURN                           R1 1

PROTO_2:
        0 NAMECALL                         R1 R0 K0 ["_unmount"]
        2 CALL                             R1 1 0
        3 GETTABLEKS                       R1 R0 K1 ["_widget"]
        5 JUMPIFNOT                        R1 ; [+14]
        6 GETTABLEKS                       R1 R0 K1 ["_widget"]
        8 LOADNIL                          R3
        9 NAMECALL                         R1 R1 K2 ["BindToClose"]
       11 CALL                             R1 2 0
       12 GETTABLEKS                       R1 R0 K1 ["_widget"]
       14 NAMECALL                         R1 R1 K3 ["Destroy"]
       16 CALL                             R1 1 0
       17 LOADNIL                          R1
       18 SETTABLEKS                       R1 R0 K1 ["_widget"]
       20 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_unmount"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_widget"]
        3 LOADB                            R1 0
        4 SETTABLEKS                       R1 R0 K1 ["Enabled"]
        6 GETIMPORT                        R0 K4 [task.defer]
        8 NEWCLOSURE                       R1 P0
        9 CAPTURE                          UPVAL U0
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["_widget"]
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R1 R0 K1 ["_plugin"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K2 ["WidgetId"]
        9 DUPTABLE                         R4 K10 [{["Size"], ["MinSize"], ["Resizable"] = True, ["Modal"] = True, ["InitialEnabled"] = False}]
       10 GETIMPORT                        R5 K13 [Vector2.new]
       12 LOADN                            R6 640
       13 LOADN                            R7 480
       14 CALL                             R5 2 1
       15 SETTABLEKS                       R5 R4 K3 ["Size"]
       17 GETIMPORT                        R5 K13 [Vector2.new]
       19 LOADN                            R6 250
       20 LOADN                            R7 200
       21 CALL                             R5 2 1
       22 SETTABLEKS                       R5 R4 K4 ["MinSize"]
       24 NAMECALL                         R1 R1 K14 ["CreateQWidgetPluginGui"]
       26 CALL                             R1 3 1
       27 SETTABLEKS                       R1 R0 K0 ["_widget"]
       29 GETTABLEKS                       R1 R0 K0 ["_widget"]
       31 GETUPVAL                         R2 0
       32 GETTABLEKS                       R2 R2 K2 ["WidgetId"]
       34 SETTABLEKS                       R2 R1 K15 ["Name"]
       36 GETTABLEKS                       R1 R0 K0 ["_widget"]
       38 GETTABLEKS                       R2 R0 K16 ["_localization"]
       40 GETUPVAL                         R4 0
       41 GETTABLEKS                       R4 R4 K17 ["LocalizationNamespace"]
       43 LOADK                            R5 K18 ["Title"]
       44 NAMECALL                         R2 R2 K19 ["getText"]
       46 CALL                             R2 3 1
       47 SETTABLEKS                       R2 R1 K18 ["Title"]
       49 GETTABLEKS                       R1 R0 K0 ["_widget"]
       51 GETIMPORT                        R2 K23 [Enum.ZIndexBehavior.Sibling]
       53 SETTABLEKS                       R2 R1 K21 ["ZIndexBehavior"]
       55 GETTABLEKS                       R1 R0 K0 ["_widget"]
       57 NEWCLOSURE                       R3 P0
       58 CAPTURE                          VAL R0
       59 NAMECALL                         R1 R1 K24 ["BindToClose"]
       61 CALL                             R1 2 0
       62 GETUPVAL                         R1 1
       63 GETTABLEKS                       R1 R1 K12 ["new"]
       65 DUPTABLE                         R2 K27 [{"namespace", "plugin"}]
       66 GETUPVAL                         R3 0
       67 GETTABLEKS                       R3 R3 K28 ["MessageBusNamespace"]
       69 SETTABLEKS                       R3 R2 K25 ["namespace"]
       71 GETTABLEKS                       R3 R0 K1 ["_plugin"]
       73 SETTABLEKS                       R3 R2 K26 ["plugin"]
       75 CALL                             R1 1 1
       76 SETTABLEKS                       R1 R0 K29 ["_webViewManagerContext"]
       78 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["_handle"]
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["createElement"]
        7 GETUPVAL                         R2 1
        8 DUPTABLE                         R3 K8 [{"focusGui", "localization", "mouse", "plugin", "store", "theme"}]
        9 GETTABLEKS                       R4 R0 K9 ["_widget"]
       11 SETTABLEKS                       R4 R3 K2 ["focusGui"]
       13 GETTABLEKS                       R4 R0 K10 ["_localization"]
       15 SETTABLEKS                       R4 R3 K3 ["localization"]
       17 GETTABLEKS                       R4 R0 K11 ["_plugin"]
       19 NAMECALL                         R4 R4 K12 ["getMouse"]
       21 CALL                             R4 1 1
       22 SETTABLEKS                       R4 R3 K4 ["mouse"]
       24 GETTABLEKS                       R4 R0 K11 ["_plugin"]
       26 SETTABLEKS                       R4 R3 K5 ["plugin"]
       28 GETTABLEKS                       R4 R0 K13 ["_store"]
       30 SETTABLEKS                       R4 R3 K6 ["store"]
       32 GETUPVAL                         R4 2
       33 CALL                             R4 0 1
       34 SETTABLEKS                       R4 R3 K7 ["theme"]
       36 NEWTABLE                         R4 0 1
       38 GETUPVAL                         R5 0
       39 GETTABLEKS                       R5 R5 K1 ["createElement"]
       41 GETUPVAL                         R6 3
       42 DUPTABLE                         R7 K16 [{"Plugin", "WebViewManagerContext"}]
       43 GETTABLEKS                       R8 R0 K11 ["_plugin"]
       45 SETTABLEKS                       R8 R7 K14 ["Plugin"]
       47 GETTABLEKS                       R8 R0 K17 ["_webViewManagerContext"]
       49 SETTABLEKS                       R8 R7 K15 ["WebViewManagerContext"]
       51 CALL                             R5 2 -1
       52 SETLIST                          R4 R5 -1 [1]
       54 CALL                             R1 3 1
       55 GETUPVAL                         R2 0
       56 GETTABLEKS                       R2 R2 K18 ["mount"]
       58 MOVE                             R3 R1
       59 GETTABLEKS                       R4 R0 K9 ["_widget"]
       61 GETUPVAL                         R5 4
       62 GETTABLEKS                       R5 R5 K19 ["WidgetId"]
       64 CALL                             R2 3 1
       65 SETTABLEKS                       R2 R0 K0 ["_handle"]
       67 RETURN                           R0 0

PROTO_7:
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
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R3 K9 ["ContextItem"]
       27 GETIMPORT                        R5 K4 [require]
       29 GETTABLEKS                       R6 R0 K5 ["Packages"]
       31 GETTABLEKS                       R6 R6 K10 ["WebView"]
       33 CALL                             R5 1 1
       34 GETTABLEKS                       R5 R5 K11 ["WebViewManagerContext"]
       36 GETIMPORT                        R6 K4 [require]
       38 GETTABLEKS                       R7 R0 K12 ["Src"]
       40 GETTABLEKS                       R7 R7 K13 ["Resources"]
       42 GETTABLEKS                       R7 R7 K14 ["MakeTheme"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K4 [require]
       47 GETTABLEKS                       R8 R0 K12 ["Src"]
       49 GETTABLEKS                       R8 R8 K15 ["Util"]
       51 GETTABLEKS                       R8 R8 K16 ["PublishStatusInfo"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K4 [require]
       56 GETTABLEKS                       R9 R0 K12 ["Src"]
       58 GETTABLEKS                       R9 R9 K17 ["Components"]
       60 GETTABLEKS                       R9 R9 K18 ["PublishStatusWebView"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K4 [require]
       65 GETTABLEKS                       R10 R0 K12 ["Src"]
       67 GETTABLEKS                       R10 R10 K17 ["Components"]
       69 GETTABLEKS                       R10 R10 K19 ["ServiceWrapper"]
       71 CALL                             R9 1 1
       72 LOADK                            R12 K20 ["PublishStatusPanel"]
       73 NAMECALL                         R10 R4 K21 ["extend"]
       75 CALL                             R10 2 1
       76 DUPCLOSURE                       R11 K22 [PROTO_0]
       77 CAPTURE                          VAL R10
       78 SETTABLEKS                       R11 R10 K23 ["new"]
       80 DUPCLOSURE                       R11 K24 [PROTO_1]
       81 SETTABLEKS                       R11 R10 K25 ["open"]
       83 DUPCLOSURE                       R11 K26 [PROTO_2]
       84 SETTABLEKS                       R11 R10 K27 ["destroy"]
       86 DUPCLOSURE                       R11 K28 [PROTO_5]
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R5
       89 SETTABLEKS                       R11 R10 K29 ["_createWidget"]
       91 DUPCLOSURE                       R11 K30 [PROTO_6]
       92 CAPTURE                          VAL R1
       93 CAPTURE                          VAL R9
       94 CAPTURE                          VAL R6
       95 CAPTURE                          VAL R8
       96 CAPTURE                          VAL R7
       97 SETTABLEKS                       R11 R10 K31 ["_mount"]
       99 DUPCLOSURE                       R11 K32 [PROTO_7]
      100 CAPTURE                          VAL R1
      101 SETTABLEKS                       R11 R10 K33 ["_unmount"]
      103 RETURN                           R10 1
