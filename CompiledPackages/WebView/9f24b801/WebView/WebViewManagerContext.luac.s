PROTO_0:
        0 GETIMPORT                        R2 K2 [string.find]
        2 MOVE                             R3 R0
        3 LOADK                            R4 K3 ["internal"]
        4 CALL                             R2 2 1
        5 JUMPIFNOT                        R2 ; [+1]
        6 RETURN                           R0 1
        7 GETIMPORT                        R2 K5 [string.format]
        9 LOADK                            R3 K6 ["%s:%s"]
       10 MOVE                             R4 R1
       11 MOVE                             R5 R0
       12 CALL                             R2 3 -1
       13 RETURN                           R2 -1

PROTO_1:
        0 MOVE                             R2 R0
        1 JUMPIFNOT                        R2 ; [+2]
        2 GETTABLEKS                       R2 R0 K0 ["namespace"]
        4 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        6 LOADK                            R3 K1 ["WebViewManagerContext.new expects a namespace"]
        7 GETIMPORT                        R1 K3 [assert]
        9 CALL                             R1 2 0
       10 MOVE                             R2 R0
       11 JUMPIFNOT                        R2 ; [+2]
       12 GETTABLEKS                       R2 R0 K4 ["plugin"]
       14 FASTCALL2K                       ASSERT R2 K5 ; [+4]
       16 LOADK                            R3 K5 ["WebViewManagerContext.new expects a plugin"]
       17 GETIMPORT                        R1 K3 [assert]
       19 CALL                             R1 2 0
       20 DUPTABLE                         R1 K13 [{"_callUuidToCallbackMap", "_namespace", "_plugin", "_listeners", "_isShowInitFail", "_timeout", "_browserUri"}]
       21 NEWTABLE                         R2 0 0
       23 SETTABLEKS                       R2 R1 K6 ["_callUuidToCallbackMap"]
       25 GETTABLEKS                       R2 R0 K0 ["namespace"]
       27 SETTABLEKS                       R2 R1 K7 ["_namespace"]
       29 GETTABLEKS                       R2 R0 K4 ["plugin"]
       31 SETTABLEKS                       R2 R1 K8 ["_plugin"]
       33 NEWTABLE                         R2 0 0
       35 SETTABLEKS                       R2 R1 K9 ["_listeners"]
       37 GETTABLEKS                       R3 R0 K15 ["isShowInitFail"]
       39 ORK                              R2 R3 K14 [False]
       40 SETTABLEKS                       R2 R1 K10 ["_isShowInitFail"]
       42 GETTABLEKS                       R3 R0 K17 ["timeout"]
       44 ORK                              R2 R3 K16 [3]
       45 SETTABLEKS                       R2 R1 K11 ["_timeout"]
       47 GETTABLEKS                       R2 R0 K18 ["browserUri"]
       49 JUMPIF                           R2 ; [+18]
       50 GETUPVAL                         R2 0
       51 GETTABLEKS                       R2 R2 K19 ["Dictionary"]
       53 GETTABLEKS                       R2 R2 K20 ["join"]
       55 GETTABLEKS                       R3 R0 K4 ["plugin"]
       57 NAMECALL                         R3 R3 K21 ["GetUri"]
       59 CALL                             R3 1 1
       60 DUPTABLE                         R4 K25 [{["Category"] = "Widgets", ["ItemId"]}]
       61 GETTABLEKS                       R6 R0 K0 ["namespace"]
       63 LOADK                            R7 K26 [":WebView"]
       64 CONCAT                           R5 R6 R7
       65 SETTABLEKS                       R5 R4 K24 ["ItemId"]
       67 CALL                             R2 2 1
       68 SETTABLEKS                       R2 R1 K12 ["_browserUri"]
       70 GETUPVAL                         R4 1
       71 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       73 MOVE                             R3 R1
       74 GETIMPORT                        R2 K28 [setmetatable]
       76 CALL                             R2 2 0
       77 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["_plugin"]
        2 JUMPIF                           R1 ; [+9]
        3 GETTABLEKS                       R1 R0 K1 ["_isShowInitFail"]
        5 JUMPIFNOT                        R1 ; [+4]
        6 GETIMPORT                        R1 K3 [warn]
        8 LOADK                            R2 K4 ["WebView unable to initialize"]
        9 CALL                             R1 1 0
       10 LOADNIL                          R1
       11 RETURN                           R1 1
       12 GETTABLEKS                       R1 R0 K5 ["_webViewManager"]
       14 JUMPIF                           R1 ; [+8]
       15 GETTABLEKS                       R1 R0 K0 ["_plugin"]
       17 LOADK                            R3 K6 ["WebBrowserManager"]
       18 NAMECALL                         R1 R1 K7 ["GetPluginComponent"]
       20 CALL                             R1 2 1
       21 SETTABLEKS                       R1 R0 K5 ["_webViewManager"]
       23 GETTABLEKS                       R1 R0 K5 ["_webViewManager"]
       25 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["_browserUri"]
        5 NAMECALL                         R1 R1 K1 ["RegisterBrowserAsync"]
        7 CALL                             R1 2 1
        8 SETTABLEKS                       R1 R0 K2 ["_messageReceivedFromWebEvent"]
       10 GETUPVAL                         R0 1
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K0 ["_browserUri"]
       14 NAMECALL                         R0 R0 K3 ["GetWebBrowserContextSignalsAsync"]
       16 CALL                             R0 2 1
       17 GETUPVAL                         R1 0
       18 GETTABLEN                        R2 R0 1
       19 SETTABLEKS                       R2 R1 K4 ["BrowserLoadedEvent"]
       21 GETUPVAL                         R1 0
       22 GETTABLEN                        R2 R0 2
       23 SETTABLEKS                       R2 R1 K5 ["BrowserLoadProgressEvent"]
       25 GETUPVAL                         R1 0
       26 GETTABLEN                        R2 R0 3
       27 SETTABLEKS                       R2 R1 K6 ["BrowserErrorEvent"]
       29 RETURN                           R0 0

PROTO_4:
        0 NAMECALL                         R1 R0 K0 ["getWebViewManager"]
        2 CALL                             R1 1 1
        3 GETIMPORT                        R2 K2 [pcall]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 CALL                             R2 1 2
        9 JUMPIFNOT                        R3 ; [+9]
       10 GETIMPORT                        R4 K4 [warn]
       12 LOADK                            R6 K5 ["Failed to register browser context: %*"]
       13 MOVE                             R8 R3
       14 NAMECALL                         R6 R6 K6 ["format"]
       16 CALL                             R6 2 1
       17 MOVE                             R5 R6
       18 CALL                             R4 1 0
       19 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["_browserUri"]
        2 RETURN                           R1 1

PROTO_6:
        0 RETURN                           R0 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["_webViewManager"]
        2 JUMPIFNOT                        R1 ; [+7]
        3 GETTABLEKS                       R1 R0 K0 ["_webViewManager"]
        5 GETTABLEKS                       R3 R0 K1 ["_browserUri"]
        7 NAMECALL                         R1 R1 K2 ["DeregisterBrowserAsync"]
        9 CALL                             R1 2 0
       10 LOADNIL                          R1
       11 SETTABLEKS                       R1 R0 K0 ["_webViewManager"]
       13 NAMECALL                         R1 R0 K3 ["resetListeners"]
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["_messageReceivedFromWebConnection"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["_messageReceivedFromWebConnection"]
        5 NAMECALL                         R1 R1 K1 ["disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["_messageReceivedFromWebConnection"]
       11 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R1
        2 NAMECALL                         R3 R3 K0 ["JSONDecode"]
        4 CALL                             R3 2 1
        5 GETUPVAL                         R4 0
        6 MOVE                             R6 R2
        7 NAMECALL                         R4 R4 K0 ["JSONDecode"]
        9 CALL                             R4 2 1
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R6 R6 K1 ["_listeners"]
       13 GETTABLE                         R5 R6 R0
       14 JUMPIF                           R5 ; [+2]
       15 NEWTABLE                         R5 0 0
       17 GETIMPORT                        R6 K3 [pairs]
       19 MOVE                             R7 R5
       20 CALL                             R6 1 3
       21 FORGPREP_NEXT                    R6
       22 MOVE                             R11 R10
       23 MOVE                             R12 R4
       24 MOVE                             R13 R3
       25 CALL                             R11 2 0
       26 FORGLOOP                         R6 2 ; [-5]
       28 RETURN                           R0 0

PROTO_10:
        0 NAMECALL                         R1 R0 K0 ["getWebViewManager"]
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+6]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["MessageBusErrorCode"]
        7 GETTABLEKS                       R2 R2 K2 ["WEBVIEW_NOT_INITIALIZED"]
        9 RETURN                           R2 1
       10 NAMECALL                         R2 R0 K3 ["resetListeners"]
       12 CALL                             R2 1 0
       13 GETTABLEKS                       R2 R0 K4 ["_messageReceivedFromWebEvent"]
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          VAL R0
       18 NAMECALL                         R3 R2 K5 ["connect"]
       20 CALL                             R3 2 1
       21 SETTABLEKS                       R3 R0 K6 ["_messageReceivedFromWebConnection"]
       23 LOADNIL                          R3
       24 RETURN                           R3 1

PROTO_11:
        0 NAMECALL                         R4 R0 K0 ["getWebViewManager"]
        2 CALL                             R4 1 1
        3 JUMPIF                           R4 ; [+6]
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R5 R5 K1 ["MessageBusErrorCode"]
        7 GETTABLEKS                       R5 R5 K2 ["WEBVIEW_NOT_FOUND"]
        9 RETURN                           R5 1
       10 GETUPVAL                         R5 1
       11 MOVE                             R7 R2
       12 NAMECALL                         R5 R5 K3 ["JSONEncode"]
       14 CALL                             R5 2 1
       15 GETUPVAL                         R6 1
       16 MOVE                             R8 R3
       17 NAMECALL                         R6 R6 K3 ["JSONEncode"]
       19 CALL                             R6 2 1
       20 GETTABLEKS                       R9 R0 K4 ["_browserUri"]
       22 MOVE                             R10 R1
       23 MOVE                             R11 R5
       24 MOVE                             R12 R6
       25 NAMECALL                         R7 R4 K5 ["FireMessageToWebAsync"]
       27 CALL                             R7 5 -1
       28 RETURN                           R7 -1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 0
        4 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R4 R0 K0 ["_namespace"]
        2 GETIMPORT                        R5 K3 [string.find]
        4 MOVE                             R6 R1
        5 LOADK                            R7 K4 ["internal"]
        6 CALL                             R5 2 1
        7 JUMPIFNOT                        R5 ; [+2]
        8 MOVE                             R3 R1
        9 JUMP                             ; [+7]
       10 GETIMPORT                        R5 K6 [string.format]
       12 LOADK                            R6 K7 ["%s:%s"]
       13 MOVE                             R7 R4
       14 MOVE                             R8 R1
       15 CALL                             R5 3 1
       16 MOVE                             R3 R5
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          VAL R2
       19 GETTABLEKS                       R6 R0 K8 ["_listeners"]
       21 GETTABLE                         R5 R6 R3
       22 JUMPIF                           R5 ; [+2]
       23 NEWTABLE                         R5 0 0
       25 FASTCALL2                        TABLE_INSERT R5 R4 ; [+5]
       27 MOVE                             R7 R5
       28 MOVE                             R8 R4
       29 GETIMPORT                        R6 K11 [table.insert]
       31 CALL                             R6 2 0
       32 GETUPVAL                         R6 0
       33 GETTABLEKS                       R6 R6 K12 ["Dictionary"]
       35 GETTABLEKS                       R6 R6 K13 ["join"]
       37 GETTABLEKS                       R7 R0 K8 ["_listeners"]
       39 NEWTABLE                         R8 1 0
       41 SETTABLE                         R5 R8 R3
       42 CALL                             R6 2 1
       43 SETTABLEKS                       R6 R0 K8 ["_listeners"]
       45 RETURN                           R4 1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIF                           R2 ; [+2]
        4 NEWTABLE                         R2 0 0
        6 GETTABLEKS                       R3 R1 K0 ["type"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K1 ["MessageBusEventType"]
       11 GETTABLEKS                       R4 R4 K2 ["Request"]
       13 JUMPIFNOTEQ                      R3 R4 ; [+19]
       15 GETUPVAL                         R3 2
       16 GETUPVAL                         R5 3
       17 DUPTABLE                         R6 K4 [{"type", "uuid"}]
       18 GETUPVAL                         R7 1
       19 GETTABLEKS                       R7 R7 K1 ["MessageBusEventType"]
       21 GETTABLEKS                       R7 R7 K5 ["Response"]
       23 SETTABLEKS                       R7 R6 K0 ["type"]
       25 GETTABLEKS                       R7 R1 K3 ["uuid"]
       27 SETTABLEKS                       R7 R6 K3 ["uuid"]
       29 MOVE                             R7 R2
       30 NAMECALL                         R3 R3 K6 ["postMessage"]
       32 CALL                             R3 4 0
       33 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R4 R0 K0 ["_namespace"]
        2 GETIMPORT                        R5 K3 [string.find]
        4 MOVE                             R6 R1
        5 LOADK                            R7 K4 ["internal"]
        6 CALL                             R5 2 1
        7 JUMPIFNOT                        R5 ; [+2]
        8 MOVE                             R3 R1
        9 JUMP                             ; [+7]
       10 GETIMPORT                        R5 K6 [string.format]
       12 LOADK                            R6 K7 ["%s:%s"]
       13 MOVE                             R7 R4
       14 MOVE                             R8 R1
       15 CALL                             R5 3 1
       16 MOVE                             R3 R5
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          VAL R2
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          VAL R0
       21 CAPTURE                          VAL R3
       22 GETTABLEKS                       R6 R0 K8 ["_listeners"]
       24 GETTABLE                         R5 R6 R3
       25 JUMPIF                           R5 ; [+2]
       26 NEWTABLE                         R5 0 0
       28 FASTCALL2                        TABLE_INSERT R5 R4 ; [+5]
       30 MOVE                             R7 R5
       31 MOVE                             R8 R4
       32 GETIMPORT                        R6 K11 [table.insert]
       34 CALL                             R6 2 0
       35 GETUPVAL                         R6 1
       36 GETTABLEKS                       R6 R6 K12 ["Dictionary"]
       38 GETTABLEKS                       R6 R6 K13 ["join"]
       40 GETTABLEKS                       R7 R0 K8 ["_listeners"]
       42 NEWTABLE                         R8 1 0
       44 SETTABLE                         R5 R8 R3
       45 CALL                             R6 2 1
       46 SETTABLEKS                       R6 R0 K8 ["_listeners"]
       48 RETURN                           R4 1

PROTO_16:
        0 GETTABLEKS                       R4 R0 K0 ["_namespace"]
        2 GETIMPORT                        R5 K3 [string.find]
        4 MOVE                             R6 R1
        5 LOADK                            R7 K4 ["internal"]
        6 CALL                             R5 2 1
        7 JUMPIFNOT                        R5 ; [+2]
        8 MOVE                             R3 R1
        9 JUMP                             ; [+7]
       10 GETIMPORT                        R5 K6 [string.format]
       12 LOADK                            R6 K7 ["%s:%s"]
       13 MOVE                             R7 R4
       14 MOVE                             R8 R1
       15 CALL                             R5 3 1
       16 MOVE                             R3 R5
       17 GETTABLEKS                       R5 R0 K8 ["_listeners"]
       19 GETTABLE                         R4 R5 R3
       20 JUMPIF                           R4 ; [+2]
       21 NEWTABLE                         R4 0 0
       23 GETIMPORT                        R5 K10 [pairs]
       25 MOVE                             R6 R4
       26 CALL                             R5 1 3
       27 FORGPREP_NEXT                    R5
       28 JUMPIFNOTEQ                      R9 R2 ; [+7]
       30 GETIMPORT                        R10 K13 [table.remove]
       32 MOVE                             R11 R4
       33 MOVE                             R12 R8
       34 CALL                             R10 2 0
       35 RETURN                           R0 0
       36 FORGLOOP                         R5 2 ; [-9]
       38 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R2 R1 K0 ["uuid"]
        2 GETUPVAL                         R3 0
        3 JUMPIFEQ                         R2 R3 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K1 ["_callUuidToCallbackMap"]
        9 GETUPVAL                         R4 0
       10 GETTABLE                         R2 R3 R4
       11 JUMPIFNOT                        R2 ; [+14]
       12 GETUPVAL                         R3 1
       13 GETUPVAL                         R5 2
       14 MOVE                             R6 R2
       15 NAMECALL                         R3 R3 K2 ["removeListener"]
       17 CALL                             R3 3 0
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R3 R3 K1 ["_callUuidToCallbackMap"]
       21 GETUPVAL                         R4 0
       22 GETUPVAL                         R5 3
       23 GETTABLEKS                       R5 R5 K3 ["None"]
       25 SETTABLE                         R5 R3 R4
       26 SETUPVAL                         R0 4
       27 RETURN                           R0 0

PROTO_18:
        0 LOADNIL                          R3
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          VAL R2
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          REF R3
        7 GETUPVAL                         R5 0
        8 GETUPVAL                         R7 1
        9 MOVE                             R8 R4
       10 NAMECALL                         R5 R5 K0 ["setListenerInternal"]
       12 CALL                             R5 3 1
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R6 R6 K1 ["_callUuidToCallbackMap"]
       16 SETTABLE                         R5 R6 R2
       17 GETUPVAL                         R6 0
       18 GETUPVAL                         R9 1
       19 GETUPVAL                         R10 0
       20 GETTABLEKS                       R10 R10 K2 ["_namespace"]
       22 GETIMPORT                        R11 K5 [string.find]
       24 MOVE                             R12 R9
       25 LOADK                            R13 K6 ["internal"]
       26 CALL                             R11 2 1
       27 JUMPIFNOT                        R11 ; [+2]
       28 MOVE                             R8 R9
       29 JUMP                             ; [+7]
       30 GETIMPORT                        R11 K8 [string.format]
       32 LOADK                            R12 K9 ["%s:%s"]
       33 MOVE                             R13 R10
       34 MOVE                             R14 R9
       35 CALL                             R11 3 1
       36 MOVE                             R8 R11
       37 DUPTABLE                         R9 K12 [{"type", "uuid"}]
       38 GETUPVAL                         R10 3
       39 GETTABLEKS                       R10 R10 K13 ["MessageBusEventType"]
       41 GETTABLEKS                       R10 R10 K14 ["Request"]
       43 SETTABLEKS                       R10 R9 K10 ["type"]
       45 SETTABLEKS                       R2 R9 K11 ["uuid"]
       47 GETUPVAL                         R10 4
       48 NAMECALL                         R6 R6 K15 ["postMessage"]
       50 CALL                             R6 4 0
       51 LOADN                            R6 0
       52 GETUPVAL                         R7 0
       53 GETTABLEKS                       R7 R7 K16 ["_timeout"]
       55 JUMPIFNOTLE                      R6 R7 ; [+22]
       57 GETUPVAL                         R8 0
       58 GETTABLEKS                       R8 R8 K1 ["_callUuidToCallbackMap"]
       60 GETTABLE                         R7 R8 R2
       61 JUMPIFEQKNIL                     R7 ; [+16]
       63 GETUPVAL                         R8 0
       64 GETTABLEKS                       R8 R8 K1 ["_callUuidToCallbackMap"]
       66 GETTABLE                         R7 R8 R2
       67 GETUPVAL                         R8 2
       68 GETTABLEKS                       R8 R8 K17 ["None"]
       70 JUMPIFEQ                         R7 R8 ; [+7]
       72 GETIMPORT                        R7 K19 [wait]
       74 LOADK                            R8 K20 [0.5]
       75 CALL                             R7 1 0
       76 ADDK                             R6 R6 K20 [0.5]
       77 JUMPBACK                         ; [-26]
       78 GETUPVAL                         R7 0
       79 GETTABLEKS                       R7 R7 K16 ["_timeout"]
       81 JUMPIFNOTLT                      R7 R6 ; [+23]
       83 GETUPVAL                         R7 0
       84 GETUPVAL                         R9 1
       85 MOVE                             R10 R5
       86 NAMECALL                         R7 R7 K21 ["removeListener"]
       88 CALL                             R7 3 0
       89 GETUPVAL                         R7 0
       90 GETTABLEKS                       R7 R7 K1 ["_callUuidToCallbackMap"]
       92 GETUPVAL                         R8 2
       93 GETTABLEKS                       R8 R8 K17 ["None"]
       95 SETTABLE                         R8 R7 R2
       96 MOVE                             R7 R1
       97 GETUPVAL                         R8 3
       98 GETTABLEKS                       R8 R8 K22 ["MessageBusErrorCode"]
      100 GETTABLEKS                       R8 R8 K23 ["TIMED_OUT"]
      102 CALL                             R7 1 -1
      103 CLOSEUPVALS                      R3
      104 RETURN                           R7 -1
      105 MOVE                             R7 R0
      106 MOVE                             R8 R3
      107 CALL                             R7 1 -1
      108 CLOSEUPVALS                      R3
      109 RETURN                           R7 -1

PROTO_19:
        0 GETIMPORT                        R2 K2 [coroutine.resume]
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 GETUPVAL                         R6 1
        6 LOADB                            R8 0
        7 NAMECALL                         R6 R6 K3 ["GenerateGUID"]
        9 CALL                             R6 2 -1
       10 CALL                             R2 -1 0
       11 RETURN                           R0 0

PROTO_20:
        0 GETIMPORT                        R3 K2 [coroutine.create]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R2
        8 CALL                             R3 1 1
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K3 ["new"]
       12 NEWCLOSURE                       R5 P1
       13 CAPTURE                          VAL R3
       14 CAPTURE                          UPVAL U3
       15 CALL                             R4 1 -1
       16 RETURN                           R4 -1

PROTO_21:
        0 GETUPVAL                         R3 0
        1 LOADB                            R5 0
        2 NAMECALL                         R3 R3 K0 ["GenerateGUID"]
        4 CALL                             R3 2 1
        5 GETTABLEKS                       R7 R0 K1 ["_namespace"]
        7 GETIMPORT                        R8 K4 [string.find]
        9 MOVE                             R9 R1
       10 LOADK                            R10 K5 ["internal"]
       11 CALL                             R8 2 1
       12 JUMPIFNOT                        R8 ; [+2]
       13 MOVE                             R6 R1
       14 JUMP                             ; [+7]
       15 GETIMPORT                        R8 K7 [string.format]
       17 LOADK                            R9 K8 ["%s:%s"]
       18 MOVE                             R10 R7
       19 MOVE                             R11 R1
       20 CALL                             R8 3 1
       21 MOVE                             R6 R8
       22 DUPTABLE                         R7 K11 [{"type", "uuid"}]
       23 GETUPVAL                         R8 1
       24 GETTABLEKS                       R8 R8 K12 ["MessageBusEventType"]
       26 GETTABLEKS                       R8 R8 K13 ["Fire"]
       28 SETTABLEKS                       R8 R7 K9 ["type"]
       30 SETTABLEKS                       R3 R7 K10 ["uuid"]
       32 MOVE                             R8 R2
       33 NAMECALL                         R4 R0 K14 ["postMessage"]
       35 CALL                             R4 4 0
       36 RETURN                           R0 0

PROTO_22:
        0 NAMECALL                         R1 R0 K0 ["getWebViewManager"]
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+6]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["MessageBusErrorCode"]
        7 GETTABLEKS                       R2 R2 K2 ["WEBVIEW_NOT_FOUND"]
        9 RETURN                           R2 1
       10 GETTABLEKS                       R4 R0 K3 ["_browserUri"]
       12 NAMECALL                         R2 R1 K4 ["ReloadWebBrowserWidgetAsync"]
       14 CALL                             R2 2 0
       15 LOADNIL                          R2
       16 RETURN                           R2 1

PROTO_23:
        0 NAMECALL                         R1 R0 K0 ["getWebViewManager"]
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+6]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["MessageBusErrorCode"]
        7 GETTABLEKS                       R2 R2 K2 ["WEBVIEW_NOT_FOUND"]
        9 RETURN                           R2 1
       10 GETTABLEKS                       R4 R0 K3 ["_browserUri"]
       12 NAMECALL                         R2 R1 K4 ["ShowWebBrowserWidgetAsync"]
       14 CALL                             R2 2 0
       15 LOADNIL                          R2
       16 RETURN                           R2 1

PROTO_24:
        0 NAMECALL                         R1 R0 K0 ["getWebViewManager"]
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+6]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["MessageBusErrorCode"]
        7 GETTABLEKS                       R2 R2 K2 ["WEBVIEW_NOT_FOUND"]
        9 RETURN                           R2 1
       10 GETTABLEKS                       R4 R0 K3 ["_browserUri"]
       12 NAMECALL                         R2 R1 K4 ["HideWebBrowserWidgetAsync"]
       14 CALL                             R2 2 0
       15 LOADNIL                          R2
       16 RETURN                           R2 1

PROTO_25:
        0 NAMECALL                         R1 R0 K0 ["getWebViewManager"]
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+6]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["MessageBusErrorCode"]
        7 GETTABLEKS                       R2 R2 K2 ["WEBVIEW_NOT_FOUND"]
        9 RETURN                           R2 1
       10 GETTABLEKS                       R4 R0 K3 ["_browserUri"]
       12 NAMECALL                         R2 R1 K4 ["ClearWebBrowserWidgetFocusAsync"]
       14 CALL                             R2 2 0
       15 LOADNIL                          R2
       16 RETURN                           R2 1

PROTO_26:
        0 NAMECALL                         R1 R0 K0 ["getWebViewManager"]
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+2]
        4 LOADB                            R2 0
        5 RETURN                           R2 1
        6 NAMECALL                         R2 R1 K1 ["IsAvailableAsync"]
        8 CALL                             R2 1 1
        9 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["WebView"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [script]
       15 LOADK                            R4 K8 ["Packages"]
       16 NAMECALL                         R2 R2 K3 ["FindFirstAncestor"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R2 K11 ["Framework"]
       23 CALL                             R3 1 1
       24 GETTABLEKS                       R4 R3 K12 ["ContextServices"]
       26 GETTABLEKS                       R4 R4 K13 ["ContextItem"]
       28 GETTABLEKS                       R5 R3 K14 ["Util"]
       30 GETTABLEKS                       R5 R5 K15 ["Promise"]
       32 GETIMPORT                        R6 K10 [require]
       34 GETTABLEKS                       R7 R2 K16 ["Cryo"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K10 [require]
       39 GETTABLEKS                       R8 R0 K17 ["WebViewTypes"]
       41 CALL                             R7 1 1
       42 DUPCLOSURE                       R8 K18 [PROTO_0]
       43 LOADK                            R11 K19 ["WebViewManagerContext"]
       44 NAMECALL                         R9 R4 K20 ["extend"]
       46 CALL                             R9 2 1
       47 DUPCLOSURE                       R10 K21 [PROTO_1]
       48 CAPTURE                          VAL R6
       49 CAPTURE                          VAL R9
       50 SETTABLEKS                       R10 R9 K22 ["new"]
       52 DUPCLOSURE                       R10 K23 [PROTO_2]
       53 SETTABLEKS                       R10 R9 K24 ["getWebViewManager"]
       55 DUPCLOSURE                       R10 K25 [PROTO_4]
       56 SETTABLEKS                       R10 R9 K26 ["registerWebViewBrowserContext"]
       58 DUPCLOSURE                       R10 K27 [PROTO_5]
       59 SETTABLEKS                       R10 R9 K28 ["getBrowserUri"]
       61 DUPCLOSURE                       R10 K29 [PROTO_6]
       62 SETTABLEKS                       R10 R9 K30 ["get"]
       64 DUPCLOSURE                       R10 K31 [PROTO_7]
       65 SETTABLEKS                       R10 R9 K32 ["destroy"]
       67 DUPCLOSURE                       R10 K33 [PROTO_8]
       68 SETTABLEKS                       R10 R9 K34 ["resetListeners"]
       70 DUPCLOSURE                       R10 K35 [PROTO_10]
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R1
       73 SETTABLEKS                       R10 R9 K36 ["connectListeners"]
       75 DUPCLOSURE                       R10 K37 [PROTO_11]
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R1
       78 SETTABLEKS                       R10 R9 K38 ["postMessage"]
       80 DUPCLOSURE                       R10 K39 [PROTO_13]
       81 CAPTURE                          VAL R6
       82 SETTABLEKS                       R10 R9 K40 ["setListenerInternal"]
       84 DUPCLOSURE                       R10 K41 [PROTO_15]
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R6
       87 SETTABLEKS                       R10 R9 K42 ["setListener"]
       89 DUPCLOSURE                       R10 K43 [PROTO_16]
       90 SETTABLEKS                       R10 R9 K44 ["removeListener"]
       92 DUPCLOSURE                       R10 K45 [PROTO_20]
       93 CAPTURE                          VAL R6
       94 CAPTURE                          VAL R7
       95 CAPTURE                          VAL R5
       96 CAPTURE                          VAL R1
       97 SETTABLEKS                       R10 R9 K46 ["call"]
       99 DUPCLOSURE                       R10 K47 [PROTO_21]
      100 CAPTURE                          VAL R1
      101 CAPTURE                          VAL R7
      102 SETTABLEKS                       R10 R9 K48 ["fire"]
      104 DUPCLOSURE                       R10 K49 [PROTO_22]
      105 CAPTURE                          VAL R7
      106 SETTABLEKS                       R10 R9 K50 ["reloadBrowser"]
      108 DUPCLOSURE                       R10 K51 [PROTO_23]
      109 CAPTURE                          VAL R7
      110 SETTABLEKS                       R10 R9 K52 ["showBrowser"]
      112 DUPCLOSURE                       R10 K53 [PROTO_24]
      113 CAPTURE                          VAL R7
      114 SETTABLEKS                       R10 R9 K54 ["hideBrowser"]
      116 DUPCLOSURE                       R10 K55 [PROTO_25]
      117 CAPTURE                          VAL R7
      118 SETTABLEKS                       R10 R9 K56 ["clearBrowserFocus"]
      120 DUPCLOSURE                       R10 K57 [PROTO_26]
      121 SETTABLEKS                       R10 R9 K58 ["isAvailable"]
      123 RETURN                           R9 1
