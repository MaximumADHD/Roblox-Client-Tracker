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

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_unmount"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["_widget"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R1 R0 K0 ["_widget"]
        6 LOADB                            R2 0
        7 SETTABLEKS                       R2 R1 K1 ["Enabled"]
        9 GETIMPORT                        R1 K4 [task.defer]
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          VAL R0
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_5:
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

PROTO_6:
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
       34 JUMPIF                           R6 ; [+9]
       35 GETIMPORT                        R8 K10 [warn]
       37 LOADK                            R10 K11 ["Failed to resize the Publish Status widget: %*"]
       38 MOVE                             R12 R7
       39 NAMECALL                         R10 R10 K12 ["format"]
       41 CALL                             R10 2 1
       42 MOVE                             R9 R10
       43 CALL                             R8 1 0
       44 RETURN                           R0 0

PROTO_7:
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

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["close"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["_widget"]
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R1 R0 K1 ["_plugin"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K2 ["WidgetId"]
        9 DUPTABLE                         R4 K9 [{["Size"], ["Resizable"] = False, ["Modal"] = True, ["InitialEnabled"] = False}]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K10 ["getDefaultContentSize"]
       13 CALL                             R5 0 1
       14 SETTABLEKS                       R5 R4 K3 ["Size"]
       16 NAMECALL                         R1 R1 K11 ["CreateQWidgetPluginGui"]
       18 CALL                             R1 3 1
       19 SETTABLEKS                       R1 R0 K0 ["_widget"]
       21 GETTABLEKS                       R1 R0 K0 ["_widget"]
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R2 R2 K2 ["WidgetId"]
       26 SETTABLEKS                       R2 R1 K12 ["Name"]
       28 GETTABLEKS                       R1 R0 K0 ["_widget"]
       30 GETTABLEKS                       R2 R0 K13 ["_localization"]
       32 GETUPVAL                         R4 0
       33 GETTABLEKS                       R4 R4 K14 ["LocalizationNamespace"]
       35 LOADK                            R5 K15 ["Title"]
       36 NAMECALL                         R2 R2 K16 ["getText"]
       38 CALL                             R2 3 1
       39 SETTABLEKS                       R2 R1 K15 ["Title"]
       41 GETTABLEKS                       R1 R0 K0 ["_widget"]
       43 GETIMPORT                        R2 K20 [Enum.ZIndexBehavior.Sibling]
       45 SETTABLEKS                       R2 R1 K18 ["ZIndexBehavior"]
       47 GETTABLEKS                       R1 R0 K0 ["_widget"]
       49 NEWCLOSURE                       R3 P0
       50 CAPTURE                          VAL R0
       51 NAMECALL                         R1 R1 K21 ["BindToClose"]
       53 CALL                             R1 2 0
       54 GETUPVAL                         R1 1
       55 GETTABLEKS                       R1 R1 K22 ["new"]
       57 DUPTABLE                         R2 K25 [{"namespace", "plugin"}]
       58 GETUPVAL                         R3 0
       59 GETTABLEKS                       R3 R3 K26 ["MessageBusNamespace"]
       61 SETTABLEKS                       R3 R2 K23 ["namespace"]
       63 GETTABLEKS                       R3 R0 K1 ["_plugin"]
       65 SETTABLEKS                       R3 R2 K24 ["plugin"]
       67 CALL                             R1 1 1
       68 SETTABLEKS                       R1 R0 K27 ["_webViewManagerContext"]
       70 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["close"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["setContentSize"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_12:
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
       42 DUPTABLE                         R7 K18 [{"Plugin", "WebViewManagerContext", "OnCloseRequested", "OnContentSizeRequested"}]
       43 GETTABLEKS                       R8 R0 K11 ["_plugin"]
       45 SETTABLEKS                       R8 R7 K14 ["Plugin"]
       47 GETTABLEKS                       R8 R0 K19 ["_webViewManagerContext"]
       49 SETTABLEKS                       R8 R7 K15 ["WebViewManagerContext"]
       51 NEWCLOSURE                       R8 P0
       52 CAPTURE                          VAL R0
       53 SETTABLEKS                       R8 R7 K16 ["OnCloseRequested"]
       55 NEWCLOSURE                       R8 P1
       56 CAPTURE                          VAL R0
       57 SETTABLEKS                       R8 R7 K17 ["OnContentSizeRequested"]
       59 CALL                             R5 2 -1
       60 SETLIST                          R4 R5 -1 [1]
       62 CALL                             R1 3 1
       63 GETUPVAL                         R2 0
       64 GETTABLEKS                       R2 R2 K20 ["mount"]
       66 MOVE                             R3 R1
       67 GETTABLEKS                       R4 R0 K9 ["_widget"]
       69 GETUPVAL                         R5 4
       70 GETTABLEKS                       R5 R5 K21 ["WidgetId"]
       72 CALL                             R2 3 1
       73 SETTABLEKS                       R2 R0 K0 ["_handle"]
       75 RETURN                           R0 0

PROTO_13:
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
       46 GETTABLEKS                       R8 R8 K15 ["Resources"]
       48 GETTABLEKS                       R8 R8 K16 ["MakeTheme"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K6 [require]
       53 GETTABLEKS                       R9 R0 K14 ["Src"]
       55 GETTABLEKS                       R9 R9 K17 ["Util"]
       57 GETTABLEKS                       R9 R9 K18 ["PublishStatusInfo"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K6 [require]
       62 GETTABLEKS                       R10 R0 K14 ["Src"]
       64 GETTABLEKS                       R10 R10 K19 ["Components"]
       66 GETTABLEKS                       R10 R10 K20 ["PublishStatusWebView"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K6 [require]
       71 GETTABLEKS                       R11 R0 K14 ["Src"]
       73 GETTABLEKS                       R11 R11 K19 ["Components"]
       75 GETTABLEKS                       R11 R11 K21 ["ServiceWrapper"]
       77 CALL                             R10 1 1
       78 LOADK                            R13 K22 ["PublishStatusPanel"]
       79 NAMECALL                         R11 R5 K23 ["extend"]
       81 CALL                             R11 2 1
       82 DUPCLOSURE                       R12 K24 [PROTO_1]
       83 CAPTURE                          VAL R11
       84 SETTABLEKS                       R12 R11 K25 ["new"]
       86 DUPCLOSURE                       R12 K26 [PROTO_2]
       87 SETTABLEKS                       R12 R11 K27 ["open"]
       89 DUPCLOSURE                       R12 K28 [PROTO_4]
       90 SETTABLEKS                       R12 R11 K29 ["close"]
       92 NEWCLOSURE                       R12 P4
       93 CAPTURE                          REF R1
       94 CAPTURE                          VAL R8
       95 SETTABLEKS                       R12 R11 K30 ["setContentSize"]
       97 DUPCLOSURE                       R12 K31 [PROTO_7]
       98 SETTABLEKS                       R12 R11 K32 ["destroy"]
      100 DUPCLOSURE                       R12 K33 [PROTO_9]
      101 CAPTURE                          VAL R8
      102 CAPTURE                          VAL R6
      103 SETTABLEKS                       R12 R11 K34 ["_createWidget"]
      105 DUPCLOSURE                       R12 K35 [PROTO_12]
      106 CAPTURE                          VAL R2
      107 CAPTURE                          VAL R10
      108 CAPTURE                          VAL R7
      109 CAPTURE                          VAL R9
      110 CAPTURE                          VAL R8
      111 SETTABLEKS                       R12 R11 K36 ["_mount"]
      113 DUPCLOSURE                       R12 K37 [PROTO_13]
      114 CAPTURE                          VAL R2
      115 SETTABLEKS                       R12 R11 K38 ["_unmount"]
      117 CLOSEUPVALS                      R1
      118 RETURN                           R11 1
