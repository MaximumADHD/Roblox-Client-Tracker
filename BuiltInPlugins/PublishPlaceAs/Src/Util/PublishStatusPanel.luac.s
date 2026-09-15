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
       38 GETTABLEKS                       R2 R0 K14 ["_localization"]
       40 GETUPVAL                         R4 0
       41 GETTABLEKS                       R4 R4 K15 ["LocalizationNamespace"]
       43 LOADK                            R5 K16 ["Title"]
       44 NAMECALL                         R2 R2 K17 ["getText"]
       46 CALL                             R2 3 1
       47 SETTABLEKS                       R2 R1 K16 ["Title"]
       49 GETTABLEKS                       R1 R0 K0 ["_widget"]
       51 GETIMPORT                        R2 K21 [Enum.ZIndexBehavior.Sibling]
       53 SETTABLEKS                       R2 R1 K19 ["ZIndexBehavior"]
       55 GETTABLEKS                       R1 R0 K0 ["_widget"]
       57 NEWCLOSURE                       R3 P0
       58 CAPTURE                          VAL R0
       59 NAMECALL                         R1 R1 K22 ["BindToClose"]
       61 CALL                             R1 2 0
       62 GETUPVAL                         R1 2
       63 GETTABLEKS                       R1 R1 K23 ["new"]
       65 DUPTABLE                         R2 K26 [{"namespace", "plugin"}]
       66 GETUPVAL                         R3 0
       67 GETTABLEKS                       R3 R3 K27 ["MessageBusNamespace"]
       69 SETTABLEKS                       R3 R2 K24 ["namespace"]
       71 GETTABLEKS                       R3 R0 K1 ["_plugin"]
       73 SETTABLEKS                       R3 R2 K25 ["plugin"]
       75 CALL                             R1 1 1
       76 SETTABLEKS                       R1 R0 K28 ["_webViewManagerContext"]
       78 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["close"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["setContentSize"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["activateStudioAction"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_16:
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
       42 DUPTABLE                         R7 K19 [{"Plugin", "WebViewManagerContext", "OnCloseRequested", "OnContentSizeRequested", "OnStudioActionRequested"}]
       43 GETTABLEKS                       R8 R0 K11 ["_plugin"]
       45 SETTABLEKS                       R8 R7 K14 ["Plugin"]
       47 GETTABLEKS                       R8 R0 K20 ["_webViewManagerContext"]
       49 SETTABLEKS                       R8 R7 K15 ["WebViewManagerContext"]
       51 NEWCLOSURE                       R8 P0
       52 CAPTURE                          VAL R0
       53 SETTABLEKS                       R8 R7 K16 ["OnCloseRequested"]
       55 NEWCLOSURE                       R8 P1
       56 CAPTURE                          VAL R0
       57 SETTABLEKS                       R8 R7 K17 ["OnContentSizeRequested"]
       59 NEWCLOSURE                       R8 P2
       60 CAPTURE                          VAL R0
       61 SETTABLEKS                       R8 R7 K18 ["OnStudioActionRequested"]
       63 CALL                             R5 2 -1
       64 SETLIST                          R4 R5 -1 [1]
       66 CALL                             R1 3 1
       67 GETUPVAL                         R2 0
       68 GETTABLEKS                       R2 R2 K21 ["mount"]
       70 MOVE                             R3 R1
       71 GETTABLEKS                       R4 R0 K9 ["_widget"]
       73 GETUPVAL                         R5 4
       74 GETTABLEKS                       R5 R5 K22 ["WidgetId"]
       76 CALL                             R2 3 1
       77 SETTABLEKS                       R2 R0 K0 ["_handle"]
       79 RETURN                           R0 0

PROTO_17:
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
       78 GETIMPORT                        R11 K6 [require]
       80 GETTABLEKS                       R12 R0 K14 ["Src"]
       82 GETTABLEKS                       R12 R12 K22 ["Flags"]
       84 GETTABLEKS                       R12 R12 K23 ["getFFlagPluginQWidgetKeepCenterOnResize"]
       86 CALL                             R11 1 1
       87 LOADK                            R14 K24 ["PublishStatusPanel"]
       88 NAMECALL                         R12 R5 K25 ["extend"]
       90 CALL                             R12 2 1
       91 DUPCLOSURE                       R13 K26 [PROTO_1]
       92 CAPTURE                          VAL R12
       93 SETTABLEKS                       R13 R12 K27 ["new"]
       95 DUPCLOSURE                       R13 K28 [PROTO_2]
       96 SETTABLEKS                       R13 R12 K29 ["open"]
       98 DUPCLOSURE                       R13 K30 [PROTO_4]
       99 SETTABLEKS                       R13 R12 K31 ["close"]
      101 DUPCLOSURE                       R13 K32 [PROTO_7]
      102 SETTABLEKS                       R13 R12 K33 ["activateStudioAction"]
      104 NEWCLOSURE                       R13 P5
      105 CAPTURE                          REF R1
      106 CAPTURE                          VAL R8
      107 SETTABLEKS                       R13 R12 K34 ["setContentSize"]
      109 DUPCLOSURE                       R13 K35 [PROTO_10]
      110 SETTABLEKS                       R13 R12 K36 ["destroy"]
      112 DUPCLOSURE                       R13 K37 [PROTO_12]
      113 CAPTURE                          VAL R8
      114 CAPTURE                          VAL R11
      115 CAPTURE                          VAL R6
      116 SETTABLEKS                       R13 R12 K38 ["_createWidget"]
      118 DUPCLOSURE                       R13 K39 [PROTO_16]
      119 CAPTURE                          VAL R2
      120 CAPTURE                          VAL R10
      121 CAPTURE                          VAL R7
      122 CAPTURE                          VAL R9
      123 CAPTURE                          VAL R8
      124 SETTABLEKS                       R13 R12 K40 ["_mount"]
      126 DUPCLOSURE                       R13 K41 [PROTO_17]
      127 CAPTURE                          VAL R2
      128 SETTABLEKS                       R13 R12 K42 ["_unmount"]
      130 CLOSEUPVALS                      R1
      131 RETURN                           R12 1
