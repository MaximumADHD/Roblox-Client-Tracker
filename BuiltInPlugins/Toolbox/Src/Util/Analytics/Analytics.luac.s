PROTO_0:
        0 GETUPVAL                         R0 1
        1 NAMECALL                         R0 R0 K0 ["GetSessionId"]
        3 CALL                             R0 1 1
        4 SETUPVAL                         R0 0
        5 RETURN                           R0 0

PROTO_1:
        0 LOADNIL                          R0
        1 GETIMPORT                        R1 K1 [pcall]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          REF R0
        5 CAPTURE                          UPVAL U0
        6 CALL                             R1 1 0
        7 CLOSEUPVALS                      R0
        8 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 1
        1 NAMECALL                         R0 R0 K0 ["GetClientId"]
        3 CALL                             R0 1 1
        4 SETUPVAL                         R0 0
        5 RETURN                           R0 0

PROTO_3:
        0 LOADNIL                          R0
        1 GETIMPORT                        R1 K1 [pcall]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          REF R0
        5 CAPTURE                          UPVAL U0
        6 CALL                             R1 1 0
        7 CLOSEUPVALS                      R0
        8 RETURN                           R0 1

PROTO_4:
        0 LOADN                            R0 0
        1 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_6:
        0 JUMPIFNOT                        R0 ; [+15]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K0 ["%*:%*:%*"]
        3 GETTABLEKS                       R5 R0 K1 ["PluginId"]
        5 GETTABLEKS                       R6 R0 K2 ["DataModel"]
        7 GETTABLEKS                       R7 R0 K3 ["PluginType"]
        9 NAMECALL                         R3 R3 K4 ["format"]
       11 CALL                             R3 4 1
       12 MOVE                             R2 R3
       13 SETTABLEKS                       R2 R1 K5 ["pluginUri"]
       15 RETURN                           R0 0
       16 GETUPVAL                         R1 0
       17 LOADK                            R2 K6 ["unknown"]
       18 SETTABLEKS                       R2 R1 K5 ["pluginUri"]
       20 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["eventTarget"]
        3 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R0 K8 [{"clientId", "isEditMode", "placeId", "platformId", "studioSid", "toolboxSid", "pluginUri", "pluginInitTimestamp"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K9 ["getClientId"]
        4 CALL                             R1 0 1
        5 SETTABLEKS                       R1 R0 K0 ["clientId"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K10 ["getIsEditMode"]
       10 CALL                             R1 0 1
       11 SETTABLEKS                       R1 R0 K1 ["isEditMode"]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R1 R2 K11 ["getPlaceId"]
       16 CALL                             R1 0 1
       17 SETTABLEKS                       R1 R0 K2 ["placeId"]
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R1 R2 K12 ["getPlatformId"]
       22 CALL                             R1 0 1
       23 SETTABLEKS                       R1 R0 K3 ["platformId"]
       25 GETUPVAL                         R2 0
       26 GETTABLEKS                       R1 R2 K13 ["getStudioSessionId"]
       28 CALL                             R1 0 1
       29 SETTABLEKS                       R1 R0 K4 ["studioSid"]
       31 GETUPVAL                         R2 0
       32 GETTABLEKS                       R1 R2 K5 ["toolboxSid"]
       34 SETTABLEKS                       R1 R0 K5 ["toolboxSid"]
       36 GETUPVAL                         R2 0
       37 GETTABLEKS                       R1 R2 K6 ["pluginUri"]
       39 SETTABLEKS                       R1 R0 K6 ["pluginUri"]
       41 GETUPVAL                         R3 0
       42 GETTABLEKS                       R2 R3 K14 ["WebView"]
       44 GETTABLEKS                       R1 R2 K15 ["toolboxInitTimestamp"]
       46 SETTABLEKS                       R1 R0 K7 ["pluginInitTimestamp"]
       48 RETURN                           R0 1

PROTO_9:
        0 LOADNIL                          R1
        1 GETIMPORT                        R3 K2 [DateTime.now]
        3 CALL                             R3 0 1
        4 GETTABLEKS                       R2 R3 K3 ["UnixTimestampMillis"]
        6 DUPTABLE                         R3 K13 [{"clientId", "isEditMode", "placeId", "platformId", "studioSid", "timestampMs", "toolboxSid", "pluginUri", "userId"}]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K14 ["getClientId"]
       10 CALL                             R4 0 1
       11 SETTABLEKS                       R4 R3 K4 ["clientId"]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R4 R5 K15 ["getIsEditMode"]
       16 CALL                             R4 0 1
       17 SETTABLEKS                       R4 R3 K5 ["isEditMode"]
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R4 R5 K16 ["getPlaceId"]
       22 CALL                             R4 0 1
       23 SETTABLEKS                       R4 R3 K6 ["placeId"]
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R4 R5 K17 ["getPlatformId"]
       28 CALL                             R4 0 1
       29 SETTABLEKS                       R4 R3 K7 ["platformId"]
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R4 R5 K18 ["getStudioSessionId"]
       34 CALL                             R4 0 1
       35 SETTABLEKS                       R4 R3 K8 ["studioSid"]
       37 SETTABLEKS                       R2 R3 K9 ["timestampMs"]
       39 GETUPVAL                         R5 0
       40 GETTABLEKS                       R4 R5 K10 ["toolboxSid"]
       42 SETTABLEKS                       R4 R3 K10 ["toolboxSid"]
       44 GETUPVAL                         R5 0
       45 GETTABLEKS                       R4 R5 K11 ["pluginUri"]
       47 SETTABLEKS                       R4 R3 K11 ["pluginUri"]
       49 GETUPVAL                         R4 1
       50 CALL                             R4 0 1
       51 SETTABLEKS                       R4 R3 K12 ["userId"]
       53 MOVE                             R1 R3
       54 GETUPVAL                         R5 0
       55 GETTABLEKS                       R4 R5 K19 ["WebView"]
       57 GETTABLEKS                       R3 R4 K20 ["toolboxInitTimestamp"]
       59 JUMPIFNOT                        R3 ; [+8]
       60 GETUPVAL                         R6 0
       61 GETTABLEKS                       R5 R6 K19 ["WebView"]
       63 GETTABLEKS                       R4 R5 K20 ["toolboxInitTimestamp"]
       65 SUB                              R3 R2 R4
       66 SETTABLEKS                       R3 R1 K21 ["timeMs"]
       68 GETUPVAL                         R4 2
       69 GETTABLEKS                       R3 R4 K22 ["join"]
       71 MOVE                             R4 R1
       72 MOVE                             R5 R0
       73 CALL                             R3 2 -1
       74 RETURN                           R3 -1

PROTO_10:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["getWebViewTrackingAttributes"]
        3 DUPTABLE                         R4 K4 [{"reason", "currentRetryCount", "maxRetryCount"}]
        4 SETTABLEKS                       R0 R4 K1 ["reason"]
        6 SETTABLEKS                       R1 R4 K2 ["currentRetryCount"]
        8 SETTABLEKS                       R2 R4 K3 ["maxRetryCount"]
       10 CALL                             R3 1 1
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R4 R5 K5 ["sendEventDeferred"]
       14 GETUPVAL                         R7 2
       15 GETTABLEKS                       R6 R7 K6 ["ANALYTICS_TARGET"]
       17 GETTABLEKS                       R5 R6 K7 ["WebView"]
       19 LOADK                            R6 K8 ["Marketplace"]
       20 LOADK                            R7 K9 ["WebViewInitRetry"]
       21 MOVE                             R8 R3
       22 CALL                             R4 4 0
       23 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["getWebViewTrackingAttributes"]
        3 DUPTABLE                         R5 K5 [{"reason", "currentRetryCount", "maxRetryCount", "loadingStatus"}]
        4 SETTABLEKS                       R2 R5 K1 ["reason"]
        6 SETTABLEKS                       R0 R5 K2 ["currentRetryCount"]
        8 SETTABLEKS                       R1 R5 K3 ["maxRetryCount"]
       10 SETTABLEKS                       R3 R5 K4 ["loadingStatus"]
       12 CALL                             R4 1 1
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R5 R6 K6 ["sendEventDeferred"]
       16 GETUPVAL                         R8 2
       17 GETTABLEKS                       R7 R8 K7 ["ANALYTICS_TARGET"]
       19 GETTABLEKS                       R6 R7 K8 ["WebView"]
       21 LOADK                            R7 K9 ["marketplace"]
       22 LOADK                            R8 K10 ["CreatorStoreWebViewRetryClicked"]
       23 MOVE                             R9 R4
       24 CALL                             R5 4 0
       25 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["WebView"]
        3 GETTABLEKS                       R2 R3 K1 ["retryShownEventFired"]
        5 JUMPIFNOT                        R2 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K0 ["WebView"]
       10 LOADB                            R3 1
       11 SETTABLEKS                       R3 R2 K1 ["retryShownEventFired"]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R2 R3 K2 ["getWebViewTrackingAttributes"]
       16 DUPTABLE                         R3 K6 [{"reason", "widgetWidth", "widgetHeight"}]
       17 SETTABLEKS                       R0 R3 K3 ["reason"]
       19 GETTABLEKS                       R4 R1 K7 ["X"]
       21 SETTABLEKS                       R4 R3 K4 ["widgetWidth"]
       23 GETTABLEKS                       R4 R1 K8 ["Y"]
       25 SETTABLEKS                       R4 R3 K5 ["widgetHeight"]
       27 CALL                             R2 1 1
       28 GETUPVAL                         R4 1
       29 GETTABLEKS                       R3 R4 K9 ["sendEventDeferred"]
       31 GETUPVAL                         R6 2
       32 GETTABLEKS                       R5 R6 K10 ["ANALYTICS_TARGET"]
       34 GETTABLEKS                       R4 R5 K0 ["WebView"]
       36 LOADK                            R5 K11 ["marketplace"]
       37 LOADK                            R6 K12 ["CreatorStoreWebViewRetryShown"]
       38 MOVE                             R7 R2
       39 CALL                             R3 4 0
       40 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["WebView"]
        3 GETTABLEKS                       R3 R4 K1 ["onWebViewTimingEventFired"]
        5 JUMPIF                           R3 ; [+7]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K0 ["WebView"]
        9 GETTABLEKS                       R3 R4 K2 ["toolboxInitTimestamp"]
       11 JUMPIFNOTEQKNIL                  R3 ; [+2]
       13 RETURN                           R0 0
       14 JUMPIFEQKNIL                     R0 ; [+12]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R3 R4 K0 ["WebView"]
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R6 R7 K0 ["WebView"]
       22 GETTABLEKS                       R5 R6 K2 ["toolboxInitTimestamp"]
       24 SUB                              R4 R0 R5
       25 SETTABLEKS                       R4 R3 K3 ["beforeInteractiveTimeMs"]
       27 JUMPIFEQKNIL                     R1 ; [+12]
       29 GETUPVAL                         R4 0
       30 GETTABLEKS                       R3 R4 K0 ["WebView"]
       32 GETUPVAL                         R7 0
       33 GETTABLEKS                       R6 R7 K0 ["WebView"]
       35 GETTABLEKS                       R5 R6 K2 ["toolboxInitTimestamp"]
       37 SUB                              R4 R1 R5
       38 SETTABLEKS                       R4 R3 K4 ["afterInteractiveTimeMs"]
       40 JUMPIFEQKNIL                     R2 ; [+12]
       42 GETUPVAL                         R4 0
       43 GETTABLEKS                       R3 R4 K0 ["WebView"]
       45 GETUPVAL                         R7 0
       46 GETTABLEKS                       R6 R7 K0 ["WebView"]
       48 GETTABLEKS                       R5 R6 K2 ["toolboxInitTimestamp"]
       50 SUB                              R4 R2 R5
       51 SETTABLEKS                       R4 R3 K5 ["loadSuccessTimeMs"]
       53 GETUPVAL                         R4 0
       54 GETTABLEKS                       R3 R4 K6 ["getWebViewTrackingAttributes"]
       56 DUPTABLE                         R4 K7 [{"beforeInteractiveTimeMs", "afterInteractiveTimeMs", "loadSuccessTimeMs"}]
       57 GETUPVAL                         R7 0
       58 GETTABLEKS                       R6 R7 K0 ["WebView"]
       60 GETTABLEKS                       R5 R6 K3 ["beforeInteractiveTimeMs"]
       62 SETTABLEKS                       R5 R4 K3 ["beforeInteractiveTimeMs"]
       64 GETUPVAL                         R7 0
       65 GETTABLEKS                       R6 R7 K0 ["WebView"]
       67 GETTABLEKS                       R5 R6 K4 ["afterInteractiveTimeMs"]
       69 SETTABLEKS                       R5 R4 K4 ["afterInteractiveTimeMs"]
       71 GETUPVAL                         R7 0
       72 GETTABLEKS                       R6 R7 K0 ["WebView"]
       74 GETTABLEKS                       R5 R6 K5 ["loadSuccessTimeMs"]
       76 SETTABLEKS                       R5 R4 K5 ["loadSuccessTimeMs"]
       78 CALL                             R3 1 1
       79 GETUPVAL                         R6 0
       80 GETTABLEKS                       R5 R6 K0 ["WebView"]
       82 GETTABLEKS                       R4 R5 K3 ["beforeInteractiveTimeMs"]
       84 JUMPIFNOT                        R4 ; [+30]
       85 GETUPVAL                         R6 0
       86 GETTABLEKS                       R5 R6 K0 ["WebView"]
       88 GETTABLEKS                       R4 R5 K4 ["afterInteractiveTimeMs"]
       90 JUMPIFNOT                        R4 ; [+24]
       91 GETUPVAL                         R6 0
       92 GETTABLEKS                       R5 R6 K0 ["WebView"]
       94 GETTABLEKS                       R4 R5 K5 ["loadSuccessTimeMs"]
       96 JUMPIFNOT                        R4 ; [+18]
       97 GETUPVAL                         R5 0
       98 GETTABLEKS                       R4 R5 K0 ["WebView"]
      100 LOADB                            R5 1
      101 SETTABLEKS                       R5 R4 K1 ["onWebViewTimingEventFired"]
      103 GETUPVAL                         R5 1
      104 GETTABLEKS                       R4 R5 K8 ["sendEventDeferred"]
      106 GETUPVAL                         R7 2
      107 GETTABLEKS                       R6 R7 K9 ["ANALYTICS_TARGET"]
      109 GETTABLEKS                       R5 R6 K0 ["WebView"]
      111 LOADK                            R6 K10 ["marketplace"]
      112 LOADK                            R7 K11 ["CreatorStoreWebViewTiming"]
      113 MOVE                             R8 R3
      114 CALL                             R4 4 0
      115 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getWebViewTrackingAttributes"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K1 ["sendEventDeferred"]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R3 R4 K2 ["ANALYTICS_TARGET"]
       10 GETTABLEKS                       R2 R3 K3 ["WebView"]
       12 LOADK                            R3 K4 ["marketplace"]
       13 LOADK                            R4 K5 ["CreatorStoreWebViewInit"]
       14 MOVE                             R5 R0
       15 CALL                             R1 4 0
       16 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getWebViewTrackingAttributes"]
        3 DUPTABLE                         R2 K2 [{"reason"}]
        4 SETTABLEKS                       R0 R2 K1 ["reason"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K3 ["sendEventDeferred"]
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R4 R5 K4 ["ANALYTICS_TARGET"]
       13 GETTABLEKS                       R3 R4 K5 ["WebView"]
       15 LOADK                            R4 K6 ["marketplace"]
       16 LOADK                            R5 K7 ["CreatorStoreFallbackToLuaUi"]
       17 MOVE                             R6 R1
       18 CALL                             R2 4 0
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R2 R3 K0 ["getWebViewTrackingAttributes"]
       22 DUPTABLE                         R3 K11 [{"beforeInteractiveTimeMs", "afterInteractiveTimeMs", "loadSuccessTimeMs"}]
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R5 R6 K5 ["WebView"]
       26 GETTABLEKS                       R4 R5 K8 ["beforeInteractiveTimeMs"]
       28 SETTABLEKS                       R4 R3 K8 ["beforeInteractiveTimeMs"]
       30 GETUPVAL                         R6 0
       31 GETTABLEKS                       R5 R6 K5 ["WebView"]
       33 GETTABLEKS                       R4 R5 K9 ["afterInteractiveTimeMs"]
       35 SETTABLEKS                       R4 R3 K9 ["afterInteractiveTimeMs"]
       37 GETUPVAL                         R6 0
       38 GETTABLEKS                       R5 R6 K5 ["WebView"]
       40 GETTABLEKS                       R4 R5 K10 ["loadSuccessTimeMs"]
       42 SETTABLEKS                       R4 R3 K10 ["loadSuccessTimeMs"]
       44 CALL                             R2 1 1
       45 GETUPVAL                         R5 0
       46 GETTABLEKS                       R4 R5 K5 ["WebView"]
       48 GETTABLEKS                       R3 R4 K12 ["onWebViewTimingEventFired"]
       50 JUMPIF                           R3 ; [+18]
       51 GETUPVAL                         R4 0
       52 GETTABLEKS                       R3 R4 K5 ["WebView"]
       54 LOADB                            R4 1
       55 SETTABLEKS                       R4 R3 K12 ["onWebViewTimingEventFired"]
       57 GETUPVAL                         R4 1
       58 GETTABLEKS                       R3 R4 K3 ["sendEventDeferred"]
       60 GETUPVAL                         R6 2
       61 GETTABLEKS                       R5 R6 K4 ["ANALYTICS_TARGET"]
       63 GETTABLEKS                       R4 R5 K5 ["WebView"]
       65 LOADK                            R5 K6 ["marketplace"]
       66 LOADK                            R6 K13 ["CreatorStoreWebViewTiming"]
       67 MOVE                             R7 R2
       68 CALL                             R3 4 0
       69 GETUPVAL                         R4 0
       70 GETTABLEKS                       R3 R4 K14 ["setEventTarget"]
       72 GETUPVAL                         R6 2
       73 GETTABLEKS                       R5 R6 K4 ["ANALYTICS_TARGET"]
       75 GETTABLEKS                       R4 R5 K15 ["Studio"]
       77 CALL                             R3 1 0
       78 GETUPVAL                         R4 0
       79 GETTABLEKS                       R3 R4 K5 ["WebView"]
       81 LOADB                            R4 1
       82 SETTABLEKS                       R4 R3 K16 ["didFallbackToLuaUi"]
       84 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["WebView"]
        3 SETTABLEKS                       R0 R1 K1 ["initialToolboxTab"]
        5 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["WebView"]
        3 GETTABLEKS                       R0 R1 K1 ["firstLuaAssetImpressionEventFired"]
        5 JUMPIF                           R0 ; [+24]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R0 R1 K2 ["getWebViewTrackingAttributes"]
        9 DUPTABLE                         R1 K4 [{"initialToolboxTab"}]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K0 ["WebView"]
       13 GETTABLEKS                       R2 R3 K3 ["initialToolboxTab"]
       15 SETTABLEKS                       R2 R1 K3 ["initialToolboxTab"]
       17 CALL                             R0 1 1
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R1 R2 K5 ["sendEventDeferred"]
       21 GETUPVAL                         R4 2
       22 GETTABLEKS                       R3 R4 K6 ["ANALYTICS_TARGET"]
       24 GETTABLEKS                       R2 R3 K7 ["Studio"]
       26 LOADK                            R3 K8 ["marketplace"]
       27 LOADK                            R4 K9 ["ToolboxLuaNoAssetImpressionFired"]
       28 MOVE                             R5 R0
       29 CALL                             R1 4 0
       30 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["WebView"]
        3 GETIMPORT                        R3 K3 [DateTime.now]
        5 CALL                             R3 0 1
        6 GETTABLEKS                       R2 R3 K4 ["UnixTimestampMillis"]
        8 SETTABLEKS                       R2 R1 K5 ["toolboxInitTimestamp"]
       10 JUMPIF                           R0 ; [+8]
       11 GETIMPORT                        R1 K8 [task.delay]
       13 GETUPVAL                         R2 1
       14 DUPCLOSURE                       R3 K9 [PROTO_17]
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          UPVAL U3
       18 CALL                             R1 2 0
       19 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["WebView"]
        3 GETTABLEKS                       R0 R1 K1 ["firstStoreAssetImpressionEventFired"]
        5 JUMPIFNOT                        R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R0 R1 K0 ["WebView"]
       10 GETIMPORT                        R2 K4 [DateTime.now]
       12 CALL                             R2 0 1
       13 GETTABLEKS                       R1 R2 K5 ["UnixTimestampMillis"]
       15 SETTABLEKS                       R1 R0 K6 ["storeTabOpenTimestamp"]
       17 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["WebView"]
        3 LOADB                            R1 1
        4 SETTABLEKS                       R1 R0 K1 ["firstLuaAssetImpressionEventFired"]
        6 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["WebView"]
        3 GETTABLEKS                       R1 R2 K1 ["firstStoreAssetImpressionEventFired"]
        5 JUMPIF                           R1 ; [+6]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K0 ["WebView"]
        9 GETTABLEKS                       R1 R2 K2 ["storeTabOpenTimestamp"]
       11 JUMPIF                           R1 ; [+1]
       12 RETURN                           R0 0
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R1 R2 K0 ["WebView"]
       16 LOADB                            R2 1
       17 SETTABLEKS                       R2 R1 K1 ["firstStoreAssetImpressionEventFired"]
       19 GETIMPORT                        R3 K5 [DateTime.now]
       21 CALL                             R3 0 1
       22 GETTABLEKS                       R2 R3 K6 ["UnixTimestampMillis"]
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R4 R5 K0 ["WebView"]
       27 GETTABLEKS                       R3 R4 K2 ["storeTabOpenTimestamp"]
       29 SUB                              R1 R2 R3
       30 GETUPVAL                         R3 0
       31 GETTABLEKS                       R2 R3 K7 ["getWebViewTrackingAttributes"]
       33 DUPTABLE                         R3 K12 [{"afterStoreTabOpenTimeMs", "isWebViewAssetImpression", "didFallbackToLuaUi", "initialToolboxTab"}]
       34 SETTABLEKS                       R1 R3 K8 ["afterStoreTabOpenTimeMs"]
       36 SETTABLEKS                       R0 R3 K9 ["isWebViewAssetImpression"]
       38 GETUPVAL                         R6 0
       39 GETTABLEKS                       R5 R6 K0 ["WebView"]
       41 GETTABLEKS                       R4 R5 K10 ["didFallbackToLuaUi"]
       43 SETTABLEKS                       R4 R3 K10 ["didFallbackToLuaUi"]
       45 GETUPVAL                         R6 0
       46 GETTABLEKS                       R5 R6 K0 ["WebView"]
       48 GETTABLEKS                       R4 R5 K11 ["initialToolboxTab"]
       50 SETTABLEKS                       R4 R3 K11 ["initialToolboxTab"]
       52 CALL                             R2 1 1
       53 GETUPVAL                         R4 1
       54 GETTABLEKS                       R3 R4 K13 ["sendEventDeferred"]
       56 JUMPIFNOT                        R0 ; [+6]
       57 GETUPVAL                         R6 2
       58 GETTABLEKS                       R5 R6 K14 ["ANALYTICS_TARGET"]
       60 GETTABLEKS                       R4 R5 K0 ["WebView"]
       62 JUMP                             ; [+5]
       63 GETUPVAL                         R6 2
       64 GETTABLEKS                       R5 R6 K14 ["ANALYTICS_TARGET"]
       66 GETTABLEKS                       R4 R5 K15 ["Studio"]
       68 LOADK                            R5 K16 ["marketplace"]
       69 LOADK                            R6 K17 ["CreatorStoreFirstAssetImpression"]
       70 MOVE                             R7 R2
       71 CALL                             R3 4 0
       72 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["getWebViewTrackingAttributes"]
        3 DUPTABLE                         R3 K3 [{"newToolboxTab", "oldToolboxTab"}]
        4 SETTABLEKS                       R1 R3 K1 ["newToolboxTab"]
        6 SETTABLEKS                       R0 R3 K2 ["oldToolboxTab"]
        8 CALL                             R2 1 1
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R3 R4 K4 ["sendEventDeferred"]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R4 R5 K5 ["eventTarget"]
       15 LOADK                            R5 K6 ["Marketplace"]
       16 LOADK                            R6 K7 ["ToolboxTabChanged"]
       17 MOVE                             R7 R2
       18 CALL                             R3 4 0
       19 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["sendEventImmediately"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["eventTarget"]
        6 LOADK                            R4 K2 ["toolbox"]
        7 LOADK                            R5 K3 ["termSearchedWithoutInsertion"]
        8 DUPTABLE                         R6 K10 [{"categoryName", "searchTerm", "studioSid", "clientId", "userId", "isEditMode"}]
        9 SETTABLEKS                       R0 R6 K4 ["categoryName"]
       11 SETTABLEKS                       R1 R6 K5 ["searchTerm"]
       13 LOADNIL                          R8
       14 GETIMPORT                        R9 K12 [pcall]
       16 NEWCLOSURE                       R10 P0
       17 CAPTURE                          REF R8
       18 CAPTURE                          UPVAL U2
       19 CALL                             R9 1 0
       20 MOVE                             R7 R8
       21 CLOSEUPVALS                      R8
       22 SETTABLEKS                       R7 R6 K6 ["studioSid"]
       24 LOADNIL                          R8
       25 GETIMPORT                        R9 K12 [pcall]
       27 NEWCLOSURE                       R10 P1
       28 CAPTURE                          REF R8
       29 CAPTURE                          UPVAL U2
       30 CALL                             R9 1 0
       31 MOVE                             R7 R8
       32 CLOSEUPVALS                      R8
       33 SETTABLEKS                       R7 R6 K7 ["clientId"]
       35 GETUPVAL                         R7 3
       36 CALL                             R7 0 1
       37 SETTABLEKS                       R7 R6 K8 ["userId"]
       39 GETUPVAL                         R7 4
       40 SETTABLEKS                       R7 R6 K9 ["isEditMode"]
       42 CALL                             R2 4 0
       43 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["sendEventImmediately"]
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R4 R5 K1 ["eventTarget"]
        6 LOADK                            R5 K2 ["toolbox"]
        7 LOADK                            R6 K3 ["creatorSearched"]
        8 DUPTABLE                         R7 K11 [{"searchTerm", "creatorId", "studioSid", "clientId", "userId", "type", "isEditMode"}]
        9 SETTABLEKS                       R0 R7 K4 ["searchTerm"]
       11 SETTABLEKS                       R1 R7 K5 ["creatorId"]
       13 LOADNIL                          R9
       14 GETIMPORT                        R10 K13 [pcall]
       16 NEWCLOSURE                       R11 P0
       17 CAPTURE                          REF R9
       18 CAPTURE                          UPVAL U2
       19 CALL                             R10 1 0
       20 MOVE                             R8 R9
       21 CLOSEUPVALS                      R9
       22 SETTABLEKS                       R8 R7 K6 ["studioSid"]
       24 LOADNIL                          R9
       25 GETIMPORT                        R10 K13 [pcall]
       27 NEWCLOSURE                       R11 P1
       28 CAPTURE                          REF R9
       29 CAPTURE                          UPVAL U2
       30 CALL                             R10 1 0
       31 MOVE                             R8 R9
       32 CLOSEUPVALS                      R9
       33 SETTABLEKS                       R8 R7 K7 ["clientId"]
       35 GETUPVAL                         R8 3
       36 CALL                             R8 0 1
       37 SETTABLEKS                       R8 R7 K8 ["userId"]
       39 GETUPVAL                         R9 4
       40 CALL                             R9 0 1
       41 JUMPIFNOT                        R9 ; [+2]
       42 MOVE                             R8 R2
       43 JUMP                             ; [+1]
       44 LOADNIL                          R8
       45 SETTABLEKS                       R8 R7 K9 ["type"]
       47 GETUPVAL                         R8 5
       48 SETTABLEKS                       R8 R7 K10 ["isEditMode"]
       50 CALL                             R3 4 0
       51 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["sendEventImmediately"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["eventTarget"]
        6 LOADK                            R3 K2 ["toolbox"]
        7 LOADK                            R4 K3 ["tryAsset"]
        8 DUPTABLE                         R5 K9 [{"assetId", "studioSid", "clientId", "userId", "isEditMode"}]
        9 SETTABLEKS                       R0 R5 K4 ["assetId"]
       11 LOADNIL                          R7
       12 GETIMPORT                        R8 K11 [pcall]
       14 NEWCLOSURE                       R9 P0
       15 CAPTURE                          REF R7
       16 CAPTURE                          UPVAL U2
       17 CALL                             R8 1 0
       18 MOVE                             R6 R7
       19 CLOSEUPVALS                      R7
       20 SETTABLEKS                       R6 R5 K5 ["studioSid"]
       22 LOADNIL                          R7
       23 GETIMPORT                        R8 K11 [pcall]
       25 NEWCLOSURE                       R9 P1
       26 CAPTURE                          REF R7
       27 CAPTURE                          UPVAL U2
       28 CALL                             R8 1 0
       29 MOVE                             R6 R7
       30 CLOSEUPVALS                      R7
       31 SETTABLEKS                       R6 R5 K6 ["clientId"]
       33 GETUPVAL                         R6 3
       34 CALL                             R6 0 1
       35 SETTABLEKS                       R6 R5 K7 ["userId"]
       37 GETUPVAL                         R6 4
       38 SETTABLEKS                       R6 R5 K8 ["isEditMode"]
       40 CALL                             R1 4 0
       41 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["sendEventImmediately"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["eventTarget"]
        6 LOADK                            R3 K2 ["toolbox"]
        7 LOADK                            R4 K3 ["tryAssetFailure"]
        8 DUPTABLE                         R5 K9 [{"assetId", "studioSid", "clientId", "userId", "isEditMode"}]
        9 SETTABLEKS                       R0 R5 K4 ["assetId"]
       11 LOADNIL                          R7
       12 GETIMPORT                        R8 K11 [pcall]
       14 NEWCLOSURE                       R9 P0
       15 CAPTURE                          REF R7
       16 CAPTURE                          UPVAL U2
       17 CALL                             R8 1 0
       18 MOVE                             R6 R7
       19 CLOSEUPVALS                      R7
       20 SETTABLEKS                       R6 R5 K5 ["studioSid"]
       22 LOADNIL                          R7
       23 GETIMPORT                        R8 K11 [pcall]
       25 NEWCLOSURE                       R9 P1
       26 CAPTURE                          REF R7
       27 CAPTURE                          UPVAL U2
       28 CALL                             R8 1 0
       29 MOVE                             R6 R7
       30 CLOSEUPVALS                      R7
       31 SETTABLEKS                       R6 R5 K6 ["clientId"]
       33 GETUPVAL                         R6 3
       34 CALL                             R6 0 1
       35 SETTABLEKS                       R6 R5 K7 ["userId"]
       37 GETUPVAL                         R6 4
       38 SETTABLEKS                       R6 R5 K8 ["isEditMode"]
       40 CALL                             R1 4 0
       41 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["sendEventImmediately"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["eventTarget"]
        6 LOADK                            R2 K2 ["toolbox"]
        7 LOADK                            R3 K3 ["searchOptionsOpened"]
        8 DUPTABLE                         R4 K8 [{"studioSid", "clientId", "userId", "isEditMode"}]
        9 LOADNIL                          R6
       10 GETIMPORT                        R7 K10 [pcall]
       12 NEWCLOSURE                       R8 P0
       13 CAPTURE                          REF R6
       14 CAPTURE                          UPVAL U2
       15 CALL                             R7 1 0
       16 MOVE                             R5 R6
       17 CLOSEUPVALS                      R6
       18 SETTABLEKS                       R5 R4 K4 ["studioSid"]
       20 LOADNIL                          R6
       21 GETIMPORT                        R7 K10 [pcall]
       23 NEWCLOSURE                       R8 P1
       24 CAPTURE                          REF R6
       25 CAPTURE                          UPVAL U2
       26 CALL                             R7 1 0
       27 MOVE                             R5 R6
       28 CLOSEUPVALS                      R6
       29 SETTABLEKS                       R5 R4 K5 ["clientId"]
       31 GETUPVAL                         R5 3
       32 CALL                             R5 0 1
       33 SETTABLEKS                       R5 R4 K6 ["userId"]
       35 GETUPVAL                         R5 4
       36 SETTABLEKS                       R5 R4 K7 ["isEditMode"]
       38 CALL                             R0 4 0
       39 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["sendEventImmediately"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["eventTarget"]
        6 LOADK                            R4 K2 ["click"]
        7 LOADK                            R5 K3 ["toolboxCategorySelection"]
        8 DUPTABLE                         R6 K9 [{"oldCategory", "newCategory", "studioSid", "clientId", "isEditMode"}]
        9 SETTABLEKS                       R0 R6 K4 ["oldCategory"]
       11 SETTABLEKS                       R1 R6 K5 ["newCategory"]
       13 LOADNIL                          R8
       14 GETIMPORT                        R9 K11 [pcall]
       16 NEWCLOSURE                       R10 P0
       17 CAPTURE                          REF R8
       18 CAPTURE                          UPVAL U2
       19 CALL                             R9 1 0
       20 MOVE                             R7 R8
       21 CLOSEUPVALS                      R8
       22 SETTABLEKS                       R7 R6 K6 ["studioSid"]
       24 LOADNIL                          R8
       25 GETIMPORT                        R9 K11 [pcall]
       27 NEWCLOSURE                       R10 P1
       28 CAPTURE                          REF R8
       29 CAPTURE                          UPVAL U2
       30 CALL                             R9 1 0
       31 MOVE                             R7 R8
       32 CLOSEUPVALS                      R8
       33 SETTABLEKS                       R7 R6 K7 ["clientId"]
       35 GETUPVAL                         R7 3
       36 SETTABLEKS                       R7 R6 K8 ["isEditMode"]
       38 CALL                             R2 4 0
       39 RETURN                           R0 0

PROTO_29:
        0 DUPTABLE                         R5 K9 [{"assetId", "searchText", "assetIndex", "currentCategory", "studioSid", "clientId", "placeId", "userId", "isEditMode"}]
        1 SETTABLEKS                       R0 R5 K0 ["assetId"]
        3 SETTABLEKS                       R1 R5 K1 ["searchText"]
        5 SETTABLEKS                       R2 R5 K2 ["assetIndex"]
        7 SETTABLEKS                       R3 R5 K3 ["currentCategory"]
        9 LOADNIL                          R7
       10 GETIMPORT                        R8 K11 [pcall]
       12 NEWCLOSURE                       R9 P0
       13 CAPTURE                          REF R7
       14 CAPTURE                          UPVAL U0
       15 CALL                             R8 1 0
       16 MOVE                             R6 R7
       17 CLOSEUPVALS                      R7
       18 SETTABLEKS                       R6 R5 K4 ["studioSid"]
       20 LOADNIL                          R7
       21 GETIMPORT                        R8 K11 [pcall]
       23 NEWCLOSURE                       R9 P1
       24 CAPTURE                          REF R7
       25 CAPTURE                          UPVAL U0
       26 CALL                             R8 1 0
       27 MOVE                             R6 R7
       28 CLOSEUPVALS                      R7
       29 SETTABLEKS                       R6 R5 K5 ["clientId"]
       31 GETUPVAL                         R6 1
       32 CALL                             R6 0 1
       33 SETTABLEKS                       R6 R5 K6 ["placeId"]
       35 GETUPVAL                         R6 2
       36 CALL                             R6 0 1
       37 SETTABLEKS                       R6 R5 K7 ["userId"]
       39 GETUPVAL                         R6 3
       40 SETTABLEKS                       R6 R5 K8 ["isEditMode"]
       42 SETTABLEKS                       R4 R5 K12 ["layoutMode"]
       44 GETUPVAL                         R7 4
       45 GETTABLEKS                       R6 R7 K13 ["sendEventImmediately"]
       47 GETUPVAL                         R8 5
       48 GETTABLEKS                       R7 R8 K14 ["eventTarget"]
       50 LOADK                            R8 K15 ["click"]
       51 LOADK                            R9 K16 ["toolboxInsert"]
       52 MOVE                             R10 R5
       53 CALL                             R6 4 0
       54 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["sendEventImmediately"]
        3 GETUPVAL                         R6 1
        4 GETTABLEKS                       R5 R6 K1 ["eventTarget"]
        6 LOADK                            R6 K2 ["drag"]
        7 LOADK                            R7 K3 ["toolboxInsert"]
        8 DUPTABLE                         R8 K13 [{"assetId", "searchText", "assetIndex", "currentCategory", "studioSid", "clientId", "placeId", "userId", "isEditMode"}]
        9 SETTABLEKS                       R0 R8 K4 ["assetId"]
       11 SETTABLEKS                       R1 R8 K5 ["searchText"]
       13 SETTABLEKS                       R2 R8 K6 ["assetIndex"]
       15 SETTABLEKS                       R3 R8 K7 ["currentCategory"]
       17 LOADNIL                          R10
       18 GETIMPORT                        R11 K15 [pcall]
       20 NEWCLOSURE                       R12 P0
       21 CAPTURE                          REF R10
       22 CAPTURE                          UPVAL U2
       23 CALL                             R11 1 0
       24 MOVE                             R9 R10
       25 CLOSEUPVALS                      R10
       26 SETTABLEKS                       R9 R8 K8 ["studioSid"]
       28 LOADNIL                          R10
       29 GETIMPORT                        R11 K15 [pcall]
       31 NEWCLOSURE                       R12 P1
       32 CAPTURE                          REF R10
       33 CAPTURE                          UPVAL U2
       34 CALL                             R11 1 0
       35 MOVE                             R9 R10
       36 CLOSEUPVALS                      R10
       37 SETTABLEKS                       R9 R8 K9 ["clientId"]
       39 GETUPVAL                         R9 3
       40 CALL                             R9 0 1
       41 SETTABLEKS                       R9 R8 K10 ["placeId"]
       43 GETUPVAL                         R9 4
       44 CALL                             R9 0 1
       45 SETTABLEKS                       R9 R8 K11 ["userId"]
       47 GETUPVAL                         R9 5
       48 SETTABLEKS                       R9 R8 K12 ["isEditMode"]
       50 CALL                             R4 4 0
       51 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["sendEventImmediately"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["eventTarget"]
        6 LOADK                            R4 K2 ["Marketplace"]
        7 LOADK                            R5 K3 ["DragInsertFinished"]
        8 DUPTABLE                         R6 K11 [{"assetId", "assetTypeId", "studioSid", "clientId", "placeId", "userId", "isEditMode"}]
        9 SETTABLEKS                       R0 R6 K4 ["assetId"]
       11 SETTABLEKS                       R1 R6 K5 ["assetTypeId"]
       13 LOADNIL                          R8
       14 GETIMPORT                        R9 K13 [pcall]
       16 NEWCLOSURE                       R10 P0
       17 CAPTURE                          REF R8
       18 CAPTURE                          UPVAL U2
       19 CALL                             R9 1 0
       20 MOVE                             R7 R8
       21 CLOSEUPVALS                      R8
       22 SETTABLEKS                       R7 R6 K6 ["studioSid"]
       24 LOADNIL                          R8
       25 GETIMPORT                        R9 K13 [pcall]
       27 NEWCLOSURE                       R10 P1
       28 CAPTURE                          REF R8
       29 CAPTURE                          UPVAL U2
       30 CALL                             R9 1 0
       31 MOVE                             R7 R8
       32 CLOSEUPVALS                      R8
       33 SETTABLEKS                       R7 R6 K7 ["clientId"]
       35 GETUPVAL                         R7 3
       36 CALL                             R7 0 1
       37 SETTABLEKS                       R7 R6 K8 ["placeId"]
       39 GETUPVAL                         R7 4
       40 CALL                             R7 0 1
       41 SETTABLEKS                       R7 R6 K9 ["userId"]
       43 GETUPVAL                         R7 5
       44 SETTABLEKS                       R7 R6 K10 ["isEditMode"]
       46 CALL                             R2 4 0
       47 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["sendEventImmediately"]
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R4 R5 K1 ["eventTarget"]
        6 LOADK                            R5 K2 ["AssetConfig"]
        7 LOADK                            R6 K3 ["PackageNoteCreated"]
        8 DUPTABLE                         R7 K11 [{"assetId", "assetVersionNumber", "message", "studioSid", "clientId", "placeId", "userId"}]
        9 SETTABLEKS                       R0 R7 K4 ["assetId"]
       11 SETTABLEKS                       R1 R7 K5 ["assetVersionNumber"]
       13 SETTABLEKS                       R2 R7 K6 ["message"]
       15 LOADNIL                          R9
       16 GETIMPORT                        R10 K13 [pcall]
       18 NEWCLOSURE                       R11 P0
       19 CAPTURE                          REF R9
       20 CAPTURE                          UPVAL U2
       21 CALL                             R10 1 0
       22 MOVE                             R8 R9
       23 CLOSEUPVALS                      R9
       24 SETTABLEKS                       R8 R7 K7 ["studioSid"]
       26 LOADNIL                          R9
       27 GETIMPORT                        R10 K13 [pcall]
       29 NEWCLOSURE                       R11 P1
       30 CAPTURE                          REF R9
       31 CAPTURE                          UPVAL U2
       32 CALL                             R10 1 0
       33 MOVE                             R8 R9
       34 CLOSEUPVALS                      R9
       35 SETTABLEKS                       R8 R7 K8 ["clientId"]
       37 GETUPVAL                         R8 3
       38 CALL                             R8 0 1
       39 SETTABLEKS                       R8 R7 K9 ["placeId"]
       41 GETUPVAL                         R8 4
       42 CALL                             R8 0 1
       43 SETTABLEKS                       R8 R7 K10 ["userId"]
       45 CALL                             R3 4 0
       46 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["sendEventImmediately"]
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R4 R5 K1 ["eventTarget"]
        6 LOADK                            R5 K2 ["AssetConfig"]
        7 LOADK                            R6 K3 ["PackageNoteDiscarded"]
        8 DUPTABLE                         R7 K11 [{"assetId", "assetVersionNumber", "message", "studioSid", "clientId", "placeId", "userId"}]
        9 SETTABLEKS                       R0 R7 K4 ["assetId"]
       11 SETTABLEKS                       R1 R7 K5 ["assetVersionNumber"]
       13 SETTABLEKS                       R2 R7 K6 ["message"]
       15 LOADNIL                          R9
       16 GETIMPORT                        R10 K13 [pcall]
       18 NEWCLOSURE                       R11 P0
       19 CAPTURE                          REF R9
       20 CAPTURE                          UPVAL U2
       21 CALL                             R10 1 0
       22 MOVE                             R8 R9
       23 CLOSEUPVALS                      R9
       24 SETTABLEKS                       R8 R7 K7 ["studioSid"]
       26 LOADNIL                          R9
       27 GETIMPORT                        R10 K13 [pcall]
       29 NEWCLOSURE                       R11 P1
       30 CAPTURE                          REF R9
       31 CAPTURE                          UPVAL U2
       32 CALL                             R10 1 0
       33 MOVE                             R8 R9
       34 CLOSEUPVALS                      R9
       35 SETTABLEKS                       R8 R7 K8 ["clientId"]
       37 GETUPVAL                         R8 3
       38 CALL                             R8 0 1
       39 SETTABLEKS                       R8 R7 K9 ["placeId"]
       41 GETUPVAL                         R8 4
       42 CALL                             R8 0 1
       43 SETTABLEKS                       R8 R7 K10 ["userId"]
       45 CALL                             R3 4 0
       46 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["sendEventImmediately"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["eventTarget"]
        6 LOADK                            R3 K2 ["AssetConfig"]
        7 LOADK                            R4 K3 ["PackageNoteCanceled"]
        8 DUPTABLE                         R5 K9 [{"assetId", "studioSid", "clientId", "placeId", "userId"}]
        9 SETTABLEKS                       R0 R5 K4 ["assetId"]
       11 LOADNIL                          R7
       12 GETIMPORT                        R8 K11 [pcall]
       14 NEWCLOSURE                       R9 P0
       15 CAPTURE                          REF R7
       16 CAPTURE                          UPVAL U2
       17 CALL                             R8 1 0
       18 MOVE                             R6 R7
       19 CLOSEUPVALS                      R7
       20 SETTABLEKS                       R6 R5 K5 ["studioSid"]
       22 LOADNIL                          R7
       23 GETIMPORT                        R8 K11 [pcall]
       25 NEWCLOSURE                       R9 P1
       26 CAPTURE                          REF R7
       27 CAPTURE                          UPVAL U2
       28 CALL                             R8 1 0
       29 MOVE                             R6 R7
       30 CLOSEUPVALS                      R7
       31 SETTABLEKS                       R6 R5 K6 ["clientId"]
       33 GETUPVAL                         R6 3
       34 CALL                             R6 0 1
       35 SETTABLEKS                       R6 R5 K7 ["placeId"]
       37 GETUPVAL                         R6 4
       38 CALL                             R6 0 1
       39 SETTABLEKS                       R6 R5 K8 ["userId"]
       41 CALL                             R1 4 0
       42 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["reportCounter"]
        3 LOADK                            R2 K1 ["Studio.ToolboxInsert.%s"]
        4 FASTCALL1                        TOSTRING R0 ; [+3]
        5 MOVE                             R5 R0
        6 GETIMPORT                        R4 K3 [tostring]
        8 CALL                             R4 1 1
        9 NAMECALL                         R2 R2 K4 ["format"]
       11 CALL                             R2 2 -1
       12 CALL                             R1 -1 0
       13 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["reportCounter"]
        3 LOADK                            R2 K1 ["Studio.ToolboxCategoryInsert.%s"]
        4 FASTCALL1                        TOSTRING R0 ; [+3]
        5 MOVE                             R5 R0
        6 GETIMPORT                        R4 K3 [tostring]
        8 CALL                             R4 1 1
        9 NAMECALL                         R2 R2 K4 ["format"]
       11 CALL                             R2 2 -1
       12 CALL                             R1 -1 0
       13 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["reportCounter"]
        3 LOADK                            R1 K1 ["StudioWorkspaceInsertCounter"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["reportCounter"]
        3 LOADK                            R2 K1 ["Studio.Upload.%s.Success"]
        4 FASTCALL1                        TOSTRING R0 ; [+3]
        5 MOVE                             R5 R0
        6 GETIMPORT                        R4 K3 [tostring]
        8 CALL                             R4 1 1
        9 NAMECALL                         R2 R2 K4 ["format"]
       11 CALL                             R2 2 -1
       12 CALL                             R1 -1 0
       13 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["reportCounter"]
        3 LOADK                            R2 K1 ["Studio.Upload.%s.Failure"]
        4 FASTCALL1                        TOSTRING R0 ; [+3]
        5 MOVE                             R5 R0
        6 GETIMPORT                        R4 K3 [tostring]
        8 CALL                             R4 1 1
        9 NAMECALL                         R2 R2 K4 ["format"]
       11 CALL                             R2 2 -1
       12 CALL                             R1 -1 0
       13 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["reportCounter"]
        3 LOADK                            R1 K1 ["Studio.ToolboxAudio.Played"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["reportCounter"]
        3 LOADK                            R1 K1 ["Studio.ToolboxAudio.Paused"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R2 0
        1 FASTCALL1                        ASSERT R2 ; [+2]
        2 GETIMPORT                        R1 K1 [assert]
        4 CALL                             R1 1 0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K2 ["sendResultToKibana"]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["reportCounter"]
        3 LOADK                            R1 K1 ["Studio.ToolboxAsset.Impression"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["sendEventDeferred"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["eventTarget"]
        6 LOADK                            R3 K2 ["toolbox"]
        7 LOADK                            R4 K3 ["assetPreviewOpen"]
        8 DUPTABLE                         R5 K9 [{"assetId", "clientId", "userId", "platformId", "isEditMode"}]
        9 SETTABLEKS                       R0 R5 K4 ["assetId"]
       11 LOADNIL                          R7
       12 GETIMPORT                        R8 K11 [pcall]
       14 NEWCLOSURE                       R9 P0
       15 CAPTURE                          REF R7
       16 CAPTURE                          UPVAL U2
       17 CALL                             R8 1 0
       18 MOVE                             R6 R7
       19 CLOSEUPVALS                      R7
       20 SETTABLEKS                       R6 R5 K5 ["clientId"]
       22 GETUPVAL                         R6 3
       23 CALL                             R6 0 1
       24 SETTABLEKS                       R6 R5 K6 ["userId"]
       26 LOADN                            R6 0
       27 SETTABLEKS                       R6 R5 K7 ["platformId"]
       29 GETUPVAL                         R6 4
       30 SETTABLEKS                       R6 R5 K8 ["isEditMode"]
       32 CALL                             R1 4 0
       33 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["sendEventDeferred"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["eventTarget"]
        6 LOADK                            R4 K2 ["toolbox"]
        7 LOADK                            R5 K3 ["modelPreviewInteractionDuration"]
        8 DUPTABLE                         R6 K10 [{"assetId", "time", "clientId", "userId", "platformId", "isEditMode"}]
        9 SETTABLEKS                       R0 R6 K4 ["assetId"]
       11 SETTABLEKS                       R1 R6 K5 ["time"]
       13 LOADNIL                          R8
       14 GETIMPORT                        R9 K12 [pcall]
       16 NEWCLOSURE                       R10 P0
       17 CAPTURE                          REF R8
       18 CAPTURE                          UPVAL U2
       19 CALL                             R9 1 0
       20 MOVE                             R7 R8
       21 CLOSEUPVALS                      R8
       22 SETTABLEKS                       R7 R6 K6 ["clientId"]
       24 GETUPVAL                         R7 3
       25 CALL                             R7 0 1
       26 SETTABLEKS                       R7 R6 K7 ["userId"]
       28 LOADN                            R7 0
       29 SETTABLEKS                       R7 R6 K8 ["platformId"]
       31 GETUPVAL                         R7 4
       32 SETTABLEKS                       R7 R6 K9 ["isEditMode"]
       34 CALL                             R2 4 0
       35 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["sendEventDeferred"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["eventTarget"]
        6 LOADK                            R3 K2 ["toolbox"]
        7 LOADK                            R4 K3 ["previewInsertion"]
        8 DUPTABLE                         R5 K9 [{"assetId", "clientId", "userId", "platformId", "isEditMode"}]
        9 SETTABLEKS                       R0 R5 K4 ["assetId"]
       11 LOADNIL                          R7
       12 GETIMPORT                        R8 K11 [pcall]
       14 NEWCLOSURE                       R9 P0
       15 CAPTURE                          REF R7
       16 CAPTURE                          UPVAL U2
       17 CALL                             R8 1 0
       18 MOVE                             R6 R7
       19 CLOSEUPVALS                      R7
       20 SETTABLEKS                       R6 R5 K5 ["clientId"]
       22 GETUPVAL                         R6 3
       23 CALL                             R6 0 1
       24 SETTABLEKS                       R6 R5 K6 ["userId"]
       26 LOADN                            R6 0
       27 SETTABLEKS                       R6 R5 K7 ["platformId"]
       29 GETUPVAL                         R6 4
       30 SETTABLEKS                       R6 R5 K8 ["isEditMode"]
       32 CALL                             R1 4 0
       33 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getWebViewTrackingAttributes"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K1 ["sendEventDeferred"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K2 ["eventTarget"]
       10 LOADK                            R3 K3 ["toolbox"]
       11 LOADK                            R4 K4 ["MarketplaceOpen"]
       12 MOVE                             R5 R0
       13 CALL                             R1 4 0
       14 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getWebViewTrackingAttributes"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K1 ["sendEventDeferred"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K2 ["eventTarget"]
       10 LOADK                            R3 K3 ["toolbox"]
       11 LOADK                            R4 K4 ["MarketplaceClosed"]
       12 MOVE                             R5 R0
       13 CALL                             R1 4 0
       14 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getWebViewTrackingAttributes"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K1 ["sendEventDeferred"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K2 ["eventTarget"]
       10 LOADK                            R3 K3 ["toolbox"]
       11 LOADK                            R4 K4 ["MarketplaceImpression"]
       12 MOVE                             R5 R0
       13 CALL                             R1 4 0
       14 RETURN                           R0 0

PROTO_50:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getWebViewTrackingAttributes"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K1 ["sendEventDeferred"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K2 ["eventTarget"]
       10 LOADK                            R3 K3 ["Marketplace"]
       11 LOADK                            R4 K4 ["MarketplaceHidden"]
       12 MOVE                             R5 R0
       13 CALL                             R1 4 0
       14 RETURN                           R0 0

PROTO_51:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["getWebViewTrackingAttributes"]
        3 DUPTABLE                         R6 K6 [{"isWebViewEnabled", "isWebViewAvailable", "isAbTestFlagEnabled", "isWebViewIxpEnabled", "isChannelOverrideEnabled"}]
        4 SETTABLEKS                       R0 R6 K1 ["isWebViewEnabled"]
        6 SETTABLEKS                       R1 R6 K2 ["isWebViewAvailable"]
        8 GETUPVAL                         R8 1
        9 CALL                             R8 0 1
       10 JUMPIFNOT                        R8 ; [+2]
       11 LOADNIL                          R7
       12 JUMP                             ; [+1]
       13 MOVE                             R7 R2
       14 SETTABLEKS                       R7 R6 K3 ["isAbTestFlagEnabled"]
       16 GETUPVAL                         R8 1
       17 CALL                             R8 0 1
       18 JUMPIFNOT                        R8 ; [+2]
       19 LOADNIL                          R7
       20 JUMP                             ; [+1]
       21 MOVE                             R7 R3
       22 SETTABLEKS                       R7 R6 K4 ["isWebViewIxpEnabled"]
       24 GETUPVAL                         R8 1
       25 CALL                             R8 0 1
       26 JUMPIFNOT                        R8 ; [+2]
       27 LOADNIL                          R7
       28 JUMP                             ; [+1]
       29 MOVE                             R7 R4
       30 SETTABLEKS                       R7 R6 K5 ["isChannelOverrideEnabled"]
       32 CALL                             R5 1 1
       33 GETUPVAL                         R7 2
       34 GETTABLEKS                       R6 R7 K7 ["sendEventDeferred"]
       36 GETUPVAL                         R8 0
       37 GETTABLEKS                       R7 R8 K8 ["eventTarget"]
       39 LOADK                            R8 K9 ["Marketplace"]
       40 LOADK                            R9 K10 ["MarketplaceMounted"]
       41 MOVE                             R10 R5
       42 CALL                             R6 4 0
       43 RETURN                           R0 0

PROTO_52:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getWebViewTrackingAttributes"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K1 ["sendEventDeferred"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K2 ["eventTarget"]
       10 LOADK                            R3 K3 ["Marketplace"]
       11 LOADK                            R4 K4 ["MarketplaceUnmounted"]
       12 MOVE                             R5 R0
       13 CALL                             R1 4 0
       14 RETURN                           R0 0

PROTO_53:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["getWebViewTrackingAttributes"]
        3 DUPTABLE                         R5 K5 [{"prevWidth", "prevHeight", "currentWidth", "currentHeight"}]
        4 SETTABLEKS                       R0 R5 K1 ["prevWidth"]
        6 SETTABLEKS                       R1 R5 K2 ["prevHeight"]
        8 SETTABLEKS                       R2 R5 K3 ["currentWidth"]
       10 SETTABLEKS                       R3 R5 K4 ["currentHeight"]
       12 CALL                             R4 1 1
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R5 R6 K6 ["sendEventDeferred"]
       16 GETUPVAL                         R7 0
       17 GETTABLEKS                       R6 R7 K7 ["eventTarget"]
       19 LOADK                            R7 K8 ["Marketplace"]
       20 LOADK                            R8 K9 ["ToolboxInitialSizing"]
       21 MOVE                             R9 R4
       22 CALL                             R5 4 0
       23 RETURN                           R0 0

PROTO_54:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["sendEventImmediately"]
        3 GETUPVAL                         R6 1
        4 GETTABLEKS                       R5 R6 K1 ["eventTarget"]
        6 LOADK                            R6 K2 ["Marketplace"]
        7 MOVE                             R7 R0
        8 DUPTABLE                         R8 K11 [{"assetId", "assetTypeId", "clientId", "userId", "platformId", "studioSid", "isEditMode", "currentCategory"}]
        9 SETTABLEKS                       R1 R8 K3 ["assetId"]
       11 SETTABLEKS                       R2 R8 K4 ["assetTypeId"]
       13 LOADNIL                          R10
       14 GETIMPORT                        R11 K13 [pcall]
       16 NEWCLOSURE                       R12 P0
       17 CAPTURE                          REF R10
       18 CAPTURE                          UPVAL U2
       19 CALL                             R11 1 0
       20 MOVE                             R9 R10
       21 CLOSEUPVALS                      R10
       22 SETTABLEKS                       R9 R8 K5 ["clientId"]
       24 GETUPVAL                         R9 3
       25 CALL                             R9 0 1
       26 SETTABLEKS                       R9 R8 K6 ["userId"]
       28 LOADN                            R9 0
       29 SETTABLEKS                       R9 R8 K7 ["platformId"]
       31 LOADNIL                          R10
       32 GETIMPORT                        R11 K13 [pcall]
       34 NEWCLOSURE                       R12 P1
       35 CAPTURE                          REF R10
       36 CAPTURE                          UPVAL U2
       37 CALL                             R11 1 0
       38 MOVE                             R9 R10
       39 CLOSEUPVALS                      R10
       40 SETTABLEKS                       R9 R8 K8 ["studioSid"]
       42 GETUPVAL                         R9 4
       43 SETTABLEKS                       R9 R8 K9 ["isEditMode"]
       45 SETTABLEKS                       R3 R8 K10 ["currentCategory"]
       47 CALL                             R4 4 0
       48 RETURN                           R0 0

PROTO_55:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["sendEventImmediately"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["eventTarget"]
        6 LOADK                            R2 K2 ["Marketplace"]
        7 LOADK                            R3 K3 ["OpenedFromPluginManagement"]
        8 DUPTABLE                         R4 K7 [{"studioSid", "clientId", "isEditMode"}]
        9 LOADNIL                          R6
       10 GETIMPORT                        R7 K9 [pcall]
       12 NEWCLOSURE                       R8 P0
       13 CAPTURE                          REF R6
       14 CAPTURE                          UPVAL U2
       15 CALL                             R7 1 0
       16 MOVE                             R5 R6
       17 CLOSEUPVALS                      R6
       18 SETTABLEKS                       R5 R4 K4 ["studioSid"]
       20 LOADNIL                          R6
       21 GETIMPORT                        R7 K9 [pcall]
       23 NEWCLOSURE                       R8 P1
       24 CAPTURE                          REF R6
       25 CAPTURE                          UPVAL U2
       26 CALL                             R7 1 0
       27 MOVE                             R5 R6
       28 CLOSEUPVALS                      R6
       29 SETTABLEKS                       R5 R4 K5 ["clientId"]
       31 GETUPVAL                         R5 3
       32 SETTABLEKS                       R5 R4 K6 ["isEditMode"]
       34 CALL                             R0 4 0
       35 RETURN                           R0 0

PROTO_56:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["sendEventImmediately"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["eventTarget"]
        6 LOADK                            R3 K2 ["Marketplace"]
        7 LOADK                            R4 K3 ["OpenedExternallyByAssetType"]
        8 DUPTABLE                         R5 K8 [{"assetTypeName", "clientId", "isEditMode", "studioSid"}]
        9 SETTABLEKS                       R0 R5 K4 ["assetTypeName"]
       11 LOADNIL                          R7
       12 GETIMPORT                        R8 K10 [pcall]
       14 NEWCLOSURE                       R9 P0
       15 CAPTURE                          REF R7
       16 CAPTURE                          UPVAL U2
       17 CALL                             R8 1 0
       18 MOVE                             R6 R7
       19 CLOSEUPVALS                      R7
       20 SETTABLEKS                       R6 R5 K5 ["clientId"]
       22 GETUPVAL                         R6 3
       23 SETTABLEKS                       R6 R5 K6 ["isEditMode"]
       25 LOADNIL                          R7
       26 GETIMPORT                        R8 K10 [pcall]
       28 NEWCLOSURE                       R9 P1
       29 CAPTURE                          REF R7
       30 CAPTURE                          UPVAL U2
       31 CALL                             R8 1 0
       32 MOVE                             R6 R7
       33 CLOSEUPVALS                      R7
       34 SETTABLEKS                       R6 R5 K7 ["studioSid"]
       36 CALL                             R1 4 0
       37 RETURN                           R0 0

PROTO_57:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["sendEventImmediately"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["eventTarget"]
        6 LOADK                            R4 K2 ["Marketplace"]
        7 LOADK                            R5 K3 ["ReportAssetClicked"]
        8 DUPTABLE                         R6 K9 [{"studioSid", "clientId", "isEditMode", "assetId", "assetTypeId"}]
        9 LOADNIL                          R8
       10 GETIMPORT                        R9 K11 [pcall]
       12 NEWCLOSURE                       R10 P0
       13 CAPTURE                          REF R8
       14 CAPTURE                          UPVAL U2
       15 CALL                             R9 1 0
       16 MOVE                             R7 R8
       17 CLOSEUPVALS                      R8
       18 SETTABLEKS                       R7 R6 K4 ["studioSid"]
       20 LOADNIL                          R8
       21 GETIMPORT                        R9 K11 [pcall]
       23 NEWCLOSURE                       R10 P1
       24 CAPTURE                          REF R8
       25 CAPTURE                          UPVAL U2
       26 CALL                             R9 1 0
       27 MOVE                             R7 R8
       28 CLOSEUPVALS                      R8
       29 SETTABLEKS                       R7 R6 K5 ["clientId"]
       31 GETUPVAL                         R7 3
       32 SETTABLEKS                       R7 R6 K6 ["isEditMode"]
       34 SETTABLEKS                       R0 R6 K7 ["assetId"]
       36 SETTABLEKS                       R1 R6 K8 ["assetTypeId"]
       38 CALL                             R2 4 0
       39 RETURN                           R0 0

PROTO_58:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["sendEventImmediately"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["eventTarget"]
        6 LOADK                            R3 K2 ["Marketplace"]
        7 LOADK                            R4 K3 ["MeshPartFiltered"]
        8 DUPTABLE                         R5 K9 [{"studioSid", "clientId", "isEditMode", "placeId", "assetId"}]
        9 LOADNIL                          R7
       10 GETIMPORT                        R8 K11 [pcall]
       12 NEWCLOSURE                       R9 P0
       13 CAPTURE                          REF R7
       14 CAPTURE                          UPVAL U2
       15 CALL                             R8 1 0
       16 MOVE                             R6 R7
       17 CLOSEUPVALS                      R7
       18 SETTABLEKS                       R6 R5 K4 ["studioSid"]
       20 LOADNIL                          R7
       21 GETIMPORT                        R8 K11 [pcall]
       23 NEWCLOSURE                       R9 P1
       24 CAPTURE                          REF R7
       25 CAPTURE                          UPVAL U2
       26 CALL                             R8 1 0
       27 MOVE                             R6 R7
       28 CLOSEUPVALS                      R7
       29 SETTABLEKS                       R6 R5 K5 ["clientId"]
       31 GETUPVAL                         R6 3
       32 SETTABLEKS                       R6 R5 K6 ["isEditMode"]
       34 GETUPVAL                         R6 4
       35 CALL                             R6 0 1
       36 SETTABLEKS                       R6 R5 K7 ["placeId"]
       38 SETTABLEKS                       R0 R5 K8 ["assetId"]
       40 CALL                             R1 4 0
       41 RETURN                           R0 0

PROTO_59:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["sendEventImmediately"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["eventTarget"]
        6 LOADK                            R3 K2 ["Marketplace"]
        7 LOADK                            R4 K3 ["IdVerificationIconClicked"]
        8 DUPTABLE                         R5 K10 [{"assetId", "clientId", "userId", "platformId", "studioSid", "isEditMode"}]
        9 SETTABLEKS                       R0 R5 K4 ["assetId"]
       11 LOADNIL                          R7
       12 GETIMPORT                        R8 K12 [pcall]
       14 NEWCLOSURE                       R9 P0
       15 CAPTURE                          REF R7
       16 CAPTURE                          UPVAL U2
       17 CALL                             R8 1 0
       18 MOVE                             R6 R7
       19 CLOSEUPVALS                      R7
       20 SETTABLEKS                       R6 R5 K5 ["clientId"]
       22 GETUPVAL                         R6 3
       23 CALL                             R6 0 1
       24 SETTABLEKS                       R6 R5 K6 ["userId"]
       26 LOADN                            R6 0
       27 SETTABLEKS                       R6 R5 K7 ["platformId"]
       29 LOADNIL                          R7
       30 GETIMPORT                        R8 K12 [pcall]
       32 NEWCLOSURE                       R9 P1
       33 CAPTURE                          REF R7
       34 CAPTURE                          UPVAL U2
       35 CALL                             R8 1 0
       36 MOVE                             R6 R7
       37 CLOSEUPVALS                      R7
       38 SETTABLEKS                       R6 R5 K8 ["studioSid"]
       40 GETUPVAL                         R6 4
       41 SETTABLEKS                       R6 R5 K9 ["isEditMode"]
       43 CALL                             R1 4 0
       44 RETURN                           R0 0

PROTO_60:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 JUMPIFNOT                        R4 ; [+112]
        3 DUPTABLE                         R3 K20 [{"studioSid", "clientId", "creatorIds", "excludeGroupCreations", "groupIds", "isEditMode", "userId", "ptid", "placeId", "searchKeyword", "isTopKeyword", "categoryName", "includeOnlyVerifiedCreators", "assetType", "searchByCreatorId", "searchId", "sort", "toolboxTab", "toolboxSid", "pluginUri"}]
        4 LOADNIL                          R5
        5 GETIMPORT                        R6 K22 [pcall]
        7 NEWCLOSURE                       R7 P0
        8 CAPTURE                          REF R5
        9 CAPTURE                          UPVAL U1
       10 CALL                             R6 1 0
       11 MOVE                             R4 R5
       12 CLOSEUPVALS                      R5
       13 SETTABLEKS                       R4 R3 K0 ["studioSid"]
       15 LOADNIL                          R5
       16 GETIMPORT                        R6 K22 [pcall]
       18 NEWCLOSURE                       R7 P1
       19 CAPTURE                          REF R5
       20 CAPTURE                          UPVAL U1
       21 CALL                             R6 1 0
       22 MOVE                             R4 R5
       23 CLOSEUPVALS                      R5
       24 SETTABLEKS                       R4 R3 K1 ["clientId"]
       26 GETUPVAL                         R5 2
       27 CALL                             R5 0 1
       28 JUMPIFNOT                        R5 ; [+3]
       29 GETTABLEKS                       R4 R2 K23 ["creatorIDs"]
       31 JUMP                             ; [+1]
       32 LOADNIL                          R4
       33 SETTABLEKS                       R4 R3 K2 ["creatorIds"]
       35 GETUPVAL                         R5 2
       36 CALL                             R5 0 1
       37 JUMPIFNOT                        R5 ; [+3]
       38 GETTABLEKS                       R4 R2 K3 ["excludeGroupCreations"]
       40 JUMP                             ; [+1]
       41 LOADNIL                          R4
       42 SETTABLEKS                       R4 R3 K3 ["excludeGroupCreations"]
       44 GETUPVAL                         R5 2
       45 CALL                             R5 0 1
       46 JUMPIFNOT                        R5 ; [+3]
       47 GETTABLEKS                       R4 R2 K24 ["groupIDs"]
       49 JUMP                             ; [+1]
       50 LOADNIL                          R4
       51 SETTABLEKS                       R4 R3 K4 ["groupIds"]
       53 GETUPVAL                         R4 3
       54 SETTABLEKS                       R4 R3 K5 ["isEditMode"]
       56 GETUPVAL                         R4 4
       57 CALL                             R4 0 1
       58 SETTABLEKS                       R4 R3 K6 ["userId"]
       60 LOADN                            R4 0
       61 SETTABLEKS                       R4 R3 K7 ["ptid"]
       63 GETUPVAL                         R4 5
       64 CALL                             R4 0 1
       65 SETTABLEKS                       R4 R3 K8 ["placeId"]
       67 SETTABLEKS                       R0 R3 K9 ["searchKeyword"]
       69 SETTABLEKS                       R1 R3 K10 ["isTopKeyword"]
       71 GETTABLEKS                       R4 R2 K11 ["categoryName"]
       73 SETTABLEKS                       R4 R3 K11 ["categoryName"]
       75 GETTABLEKS                       R4 R2 K12 ["includeOnlyVerifiedCreators"]
       77 SETTABLEKS                       R4 R3 K12 ["includeOnlyVerifiedCreators"]
       79 GETTABLEKS                       R4 R2 K13 ["assetType"]
       81 SETTABLEKS                       R4 R3 K13 ["assetType"]
       83 GETUPVAL                         R5 2
       84 CALL                             R5 0 1
       85 JUMPIFNOT                        R5 ; [+2]
       86 LOADNIL                          R4
       87 JUMP                             ; [+2]
       88 GETTABLEKS                       R4 R2 K25 ["creatorID"]
       90 SETTABLEKS                       R4 R3 K14 ["searchByCreatorId"]
       92 GETTABLEKS                       R4 R2 K15 ["searchId"]
       94 SETTABLEKS                       R4 R3 K15 ["searchId"]
       96 GETTABLEKS                       R4 R2 K16 ["sort"]
       98 SETTABLEKS                       R4 R3 K16 ["sort"]
      100 GETTABLEKS                       R4 R2 K17 ["toolboxTab"]
      102 SETTABLEKS                       R4 R3 K17 ["toolboxTab"]
      104 GETUPVAL                         R5 6
      105 GETTABLEKS                       R4 R5 K18 ["toolboxSid"]
      107 SETTABLEKS                       R4 R3 K18 ["toolboxSid"]
      109 GETUPVAL                         R5 6
      110 GETTABLEKS                       R4 R5 K19 ["pluginUri"]
      112 SETTABLEKS                       R4 R3 K19 ["pluginUri"]
      114 JUMP                             ; [+111]
      115 DUPTABLE                         R3 K31 [{"studioSid", "clientID", "creatorIDs", "excludeGroupCreations", "groupIDs", "isEditMode", "userID", "ptid", "placeID", "searchKeyword", "isTopKeyword", "categoryName", "includeOnlyVerifiedCreators", "assetType", "searchByCreatorID", "searchID", "sort", "toolboxTab", "toolboxSid", "pluginUri"}]
      116 LOADNIL                          R5
      117 GETIMPORT                        R6 K22 [pcall]
      119 NEWCLOSURE                       R7 P0
      120 CAPTURE                          REF R5
      121 CAPTURE                          UPVAL U1
      122 CALL                             R6 1 0
      123 MOVE                             R4 R5
      124 CLOSEUPVALS                      R5
      125 SETTABLEKS                       R4 R3 K0 ["studioSid"]
      127 LOADNIL                          R5
      128 GETIMPORT                        R6 K22 [pcall]
      130 NEWCLOSURE                       R7 P1
      131 CAPTURE                          REF R5
      132 CAPTURE                          UPVAL U1
      133 CALL                             R6 1 0
      134 MOVE                             R4 R5
      135 CLOSEUPVALS                      R5
      136 SETTABLEKS                       R4 R3 K26 ["clientID"]
      138 GETUPVAL                         R5 2
      139 CALL                             R5 0 1
      140 JUMPIFNOT                        R5 ; [+3]
      141 GETTABLEKS                       R4 R2 K23 ["creatorIDs"]
      143 JUMP                             ; [+1]
      144 LOADNIL                          R4
      145 SETTABLEKS                       R4 R3 K23 ["creatorIDs"]
      147 GETUPVAL                         R5 2
      148 CALL                             R5 0 1
      149 JUMPIFNOT                        R5 ; [+3]
      150 GETTABLEKS                       R4 R2 K3 ["excludeGroupCreations"]
      152 JUMP                             ; [+1]
      153 LOADNIL                          R4
      154 SETTABLEKS                       R4 R3 K3 ["excludeGroupCreations"]
      156 GETUPVAL                         R5 2
      157 CALL                             R5 0 1
      158 JUMPIFNOT                        R5 ; [+3]
      159 GETTABLEKS                       R4 R2 K24 ["groupIDs"]
      161 JUMP                             ; [+1]
      162 LOADNIL                          R4
      163 SETTABLEKS                       R4 R3 K24 ["groupIDs"]
      165 GETUPVAL                         R4 3
      166 SETTABLEKS                       R4 R3 K5 ["isEditMode"]
      168 GETUPVAL                         R4 4
      169 CALL                             R4 0 1
      170 SETTABLEKS                       R4 R3 K27 ["userID"]
      172 LOADN                            R4 0
      173 SETTABLEKS                       R4 R3 K7 ["ptid"]
      175 GETUPVAL                         R4 5
      176 CALL                             R4 0 1
      177 SETTABLEKS                       R4 R3 K28 ["placeID"]
      179 SETTABLEKS                       R0 R3 K9 ["searchKeyword"]
      181 SETTABLEKS                       R1 R3 K10 ["isTopKeyword"]
      183 GETTABLEKS                       R4 R2 K11 ["categoryName"]
      185 SETTABLEKS                       R4 R3 K11 ["categoryName"]
      187 GETTABLEKS                       R4 R2 K12 ["includeOnlyVerifiedCreators"]
      189 SETTABLEKS                       R4 R3 K12 ["includeOnlyVerifiedCreators"]
      191 GETTABLEKS                       R4 R2 K13 ["assetType"]
      193 SETTABLEKS                       R4 R3 K13 ["assetType"]
      195 GETUPVAL                         R5 2
      196 CALL                             R5 0 1
      197 JUMPIFNOT                        R5 ; [+2]
      198 LOADNIL                          R4
      199 JUMP                             ; [+2]
      200 GETTABLEKS                       R4 R2 K25 ["creatorID"]
      202 SETTABLEKS                       R4 R3 K29 ["searchByCreatorID"]
      204 GETTABLEKS                       R4 R2 K15 ["searchId"]
      206 SETTABLEKS                       R4 R3 K30 ["searchID"]
      208 GETTABLEKS                       R4 R2 K16 ["sort"]
      210 SETTABLEKS                       R4 R3 K16 ["sort"]
      212 GETTABLEKS                       R4 R2 K17 ["toolboxTab"]
      214 SETTABLEKS                       R4 R3 K17 ["toolboxTab"]
      216 GETUPVAL                         R5 6
      217 GETTABLEKS                       R4 R5 K18 ["toolboxSid"]
      219 SETTABLEKS                       R4 R3 K18 ["toolboxSid"]
      221 GETUPVAL                         R5 6
      222 GETTABLEKS                       R4 R5 K19 ["pluginUri"]
      224 SETTABLEKS                       R4 R3 K19 ["pluginUri"]
      226 GETTABLEKS                       R4 R2 K32 ["qualityFilterTags"]
      228 JUMPIFNOT                        R4 ; [+8]
      229 GETTABLEKS                       R4 R2 K32 ["qualityFilterTags"]
      231 JUMPIFEQKS                       R4 K33 [""] ; [+5]
      233 GETTABLEKS                       R4 R2 K32 ["qualityFilterTags"]
      235 SETTABLEKS                       R4 R3 K32 ["qualityFilterTags"]
      237 GETTABLEKS                       R4 R2 K34 ["previousSearchId"]
      239 SETTABLEKS                       R4 R3 K34 ["previousSearchId"]
      241 GETTABLEKS                       R4 R2 K35 ["querySource"]
      243 SETTABLEKS                       R4 R3 K35 ["querySource"]
      245 GETTABLEKS                       R4 R2 K36 ["originalUserQuery"]
      247 SETTABLEKS                       R4 R3 K36 ["originalUserQuery"]
      249 GETTABLEKS                       R4 R2 K37 ["originalCorrection"]
      251 SETTABLEKS                       R4 R3 K37 ["originalCorrection"]
      253 GETUPVAL                         R5 7
      254 GETTABLEKS                       R4 R5 K38 ["sendEventImmediately"]
      256 GETUPVAL                         R6 6
      257 GETTABLEKS                       R5 R6 K39 ["eventTarget"]
      259 LOADK                            R6 K40 ["Marketplace"]
      260 LOADK                            R7 K41 ["MarketplaceSearch"]
      261 MOVE                             R8 R3
      262 CALL                             R4 4 0
      263 RETURN                           R0 0

PROTO_61:
        0 GETUPVAL                         R7 0
        1 CALL                             R7 0 1
        2 JUMPIFNOT                        R7 ; [+68]
        3 DUPTABLE                         R6 K16 [{"studioSid", "clientId", "isEditMode", "userId", "ptid", "placeId", "searchKeyword", "autocompletePrefix", "autocompleteKeyCount", "autocompleteDeleteCount", "autocompleteShown", "assetType", "searchByCreatorId", "searchId", "sort", "toolboxTab"}]
        4 LOADNIL                          R8
        5 GETIMPORT                        R9 K18 [pcall]
        7 NEWCLOSURE                       R10 P0
        8 CAPTURE                          REF R8
        9 CAPTURE                          UPVAL U1
       10 CALL                             R9 1 0
       11 MOVE                             R7 R8
       12 CLOSEUPVALS                      R8
       13 SETTABLEKS                       R7 R6 K0 ["studioSid"]
       15 LOADNIL                          R8
       16 GETIMPORT                        R9 K18 [pcall]
       18 NEWCLOSURE                       R10 P1
       19 CAPTURE                          REF R8
       20 CAPTURE                          UPVAL U1
       21 CALL                             R9 1 0
       22 MOVE                             R7 R8
       23 CLOSEUPVALS                      R8
       24 SETTABLEKS                       R7 R6 K1 ["clientId"]
       26 GETUPVAL                         R7 2
       27 SETTABLEKS                       R7 R6 K2 ["isEditMode"]
       29 GETUPVAL                         R7 3
       30 CALL                             R7 0 1
       31 SETTABLEKS                       R7 R6 K3 ["userId"]
       33 LOADN                            R7 0
       34 SETTABLEKS                       R7 R6 K4 ["ptid"]
       36 GETUPVAL                         R7 4
       37 CALL                             R7 0 1
       38 SETTABLEKS                       R7 R6 K5 ["placeId"]
       40 SETTABLEKS                       R0 R6 K6 ["searchKeyword"]
       42 SETTABLEKS                       R1 R6 K7 ["autocompletePrefix"]
       44 SETTABLEKS                       R2 R6 K8 ["autocompleteKeyCount"]
       46 SETTABLEKS                       R3 R6 K9 ["autocompleteDeleteCount"]
       48 SETTABLEKS                       R4 R6 K10 ["autocompleteShown"]
       50 GETTABLEKS                       R7 R5 K11 ["assetType"]
       52 SETTABLEKS                       R7 R6 K11 ["assetType"]
       54 GETTABLEKS                       R7 R5 K19 ["creatorID"]
       56 SETTABLEKS                       R7 R6 K12 ["searchByCreatorId"]
       58 GETTABLEKS                       R7 R5 K13 ["searchId"]
       60 SETTABLEKS                       R7 R6 K13 ["searchId"]
       62 GETTABLEKS                       R7 R5 K14 ["sort"]
       64 SETTABLEKS                       R7 R6 K14 ["sort"]
       66 GETTABLEKS                       R7 R5 K15 ["toolboxTab"]
       68 SETTABLEKS                       R7 R6 K15 ["toolboxTab"]
       70 JUMP                             ; [+67]
       71 DUPTABLE                         R6 K25 [{"studioSid", "clientID", "isEditMode", "userID", "ptid", "placeID", "searchKeyword", "autocompletePrefix", "autocompleteKeyCount", "autocompleteDeleteCount", "autocompleteShown", "assetType", "searchByCreatorID", "searchID", "sort", "toolboxTab"}]
       72 LOADNIL                          R8
       73 GETIMPORT                        R9 K18 [pcall]
       75 NEWCLOSURE                       R10 P0
       76 CAPTURE                          REF R8
       77 CAPTURE                          UPVAL U1
       78 CALL                             R9 1 0
       79 MOVE                             R7 R8
       80 CLOSEUPVALS                      R8
       81 SETTABLEKS                       R7 R6 K0 ["studioSid"]
       83 LOADNIL                          R8
       84 GETIMPORT                        R9 K18 [pcall]
       86 NEWCLOSURE                       R10 P1
       87 CAPTURE                          REF R8
       88 CAPTURE                          UPVAL U1
       89 CALL                             R9 1 0
       90 MOVE                             R7 R8
       91 CLOSEUPVALS                      R8
       92 SETTABLEKS                       R7 R6 K20 ["clientID"]
       94 GETUPVAL                         R7 2
       95 SETTABLEKS                       R7 R6 K2 ["isEditMode"]
       97 GETUPVAL                         R7 3
       98 CALL                             R7 0 1
       99 SETTABLEKS                       R7 R6 K21 ["userID"]
      101 LOADN                            R7 0
      102 SETTABLEKS                       R7 R6 K4 ["ptid"]
      104 GETUPVAL                         R7 4
      105 CALL                             R7 0 1
      106 SETTABLEKS                       R7 R6 K22 ["placeID"]
      108 SETTABLEKS                       R0 R6 K6 ["searchKeyword"]
      110 SETTABLEKS                       R1 R6 K7 ["autocompletePrefix"]
      112 SETTABLEKS                       R2 R6 K8 ["autocompleteKeyCount"]
      114 SETTABLEKS                       R3 R6 K9 ["autocompleteDeleteCount"]
      116 SETTABLEKS                       R4 R6 K10 ["autocompleteShown"]
      118 GETTABLEKS                       R7 R5 K11 ["assetType"]
      120 SETTABLEKS                       R7 R6 K11 ["assetType"]
      122 GETTABLEKS                       R7 R5 K19 ["creatorID"]
      124 SETTABLEKS                       R7 R6 K23 ["searchByCreatorID"]
      126 GETTABLEKS                       R7 R5 K13 ["searchId"]
      128 SETTABLEKS                       R7 R6 K24 ["searchID"]
      130 GETTABLEKS                       R7 R5 K14 ["sort"]
      132 SETTABLEKS                       R7 R6 K14 ["sort"]
      134 GETTABLEKS                       R7 R5 K15 ["toolboxTab"]
      136 SETTABLEKS                       R7 R6 K15 ["toolboxTab"]
      138 GETUPVAL                         R8 5
      139 GETTABLEKS                       R7 R8 K26 ["sendEventImmediately"]
      141 GETUPVAL                         R9 6
      142 GETTABLEKS                       R8 R9 K27 ["eventTarget"]
      144 LOADK                            R9 K28 ["Marketplace"]
      145 LOADK                            R10 K29 ["MarketplaceAutocompleteSearch"]
      146 MOVE                             R11 R6
      147 CALL                             R7 4 0
      148 RETURN                           R0 0

PROTO_62:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getWebViewTrackingAttributes"]
        3 DUPTABLE                         R2 K3 [{"widgetWidth", "widgetHeight"}]
        4 GETTABLEKS                       R3 R0 K4 ["X"]
        6 SETTABLEKS                       R3 R2 K1 ["widgetWidth"]
        8 GETTABLEKS                       R3 R0 K5 ["Y"]
       10 SETTABLEKS                       R3 R2 K2 ["widgetHeight"]
       12 CALL                             R1 1 1
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R2 R3 K6 ["sendEventDeferred"]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R3 R4 K7 ["eventTarget"]
       19 LOADK                            R4 K8 ["Marketplace"]
       20 LOADK                            R5 K9 ["ToolboxWidgetInteraction"]
       21 MOVE                             R6 R1
       22 CALL                             R2 4 0
       23 RETURN                           R0 0

PROTO_63:
        0 DUPTABLE                         R6 K10 [{"announcementButtonKey", "announcementDateKey", "announcementDescriptionKey", "announcementHeaderKey", "announcementLinkKey", "announcementLinkLocation", "clientId", "platformId", "studioSid", "userId"}]
        1 SETTABLEKS                       R0 R6 K0 ["announcementButtonKey"]
        3 SETTABLEKS                       R1 R6 K1 ["announcementDateKey"]
        5 SETTABLEKS                       R2 R6 K2 ["announcementDescriptionKey"]
        7 SETTABLEKS                       R3 R6 K3 ["announcementHeaderKey"]
        9 SETTABLEKS                       R4 R6 K4 ["announcementLinkKey"]
       11 SETTABLEKS                       R5 R6 K5 ["announcementLinkLocation"]
       13 LOADNIL                          R8
       14 GETIMPORT                        R9 K12 [pcall]
       16 NEWCLOSURE                       R10 P0
       17 CAPTURE                          REF R8
       18 CAPTURE                          UPVAL U0
       19 CALL                             R9 1 0
       20 MOVE                             R7 R8
       21 CLOSEUPVALS                      R8
       22 SETTABLEKS                       R7 R6 K6 ["clientId"]
       24 LOADN                            R7 0
       25 SETTABLEKS                       R7 R6 K7 ["platformId"]
       27 LOADNIL                          R8
       28 GETIMPORT                        R9 K12 [pcall]
       30 NEWCLOSURE                       R10 P1
       31 CAPTURE                          REF R8
       32 CAPTURE                          UPVAL U0
       33 CALL                             R9 1 0
       34 MOVE                             R7 R8
       35 CLOSEUPVALS                      R8
       36 SETTABLEKS                       R7 R6 K8 ["studioSid"]
       38 GETUPVAL                         R7 1
       39 CALL                             R7 0 1
       40 SETTABLEKS                       R7 R6 K9 ["userId"]
       42 GETUPVAL                         R8 2
       43 GETTABLEKS                       R7 R8 K13 ["sendEventImmediately"]
       45 GETUPVAL                         R9 3
       46 GETTABLEKS                       R8 R9 K14 ["eventTarget"]
       48 LOADK                            R9 K15 ["Marketplace"]
       49 LOADK                            R10 K16 ["AnnouncementViewed"]
       50 MOVE                             R11 R6
       51 CALL                             R7 4 0
       52 RETURN                           R0 0

PROTO_64:
        0 DUPTABLE                         R6 K10 [{"announcementButtonKey", "announcementDateKey", "announcementDescriptionKey", "announcementHeaderKey", "announcementLinkKey", "announcementLinkLocation", "clientId", "platformId", "studioSid", "userId"}]
        1 SETTABLEKS                       R0 R6 K0 ["announcementButtonKey"]
        3 SETTABLEKS                       R1 R6 K1 ["announcementDateKey"]
        5 SETTABLEKS                       R2 R6 K2 ["announcementDescriptionKey"]
        7 SETTABLEKS                       R3 R6 K3 ["announcementHeaderKey"]
        9 SETTABLEKS                       R4 R6 K4 ["announcementLinkKey"]
       11 SETTABLEKS                       R5 R6 K5 ["announcementLinkLocation"]
       13 LOADNIL                          R8
       14 GETIMPORT                        R9 K12 [pcall]
       16 NEWCLOSURE                       R10 P0
       17 CAPTURE                          REF R8
       18 CAPTURE                          UPVAL U0
       19 CALL                             R9 1 0
       20 MOVE                             R7 R8
       21 CLOSEUPVALS                      R8
       22 SETTABLEKS                       R7 R6 K6 ["clientId"]
       24 LOADN                            R7 0
       25 SETTABLEKS                       R7 R6 K7 ["platformId"]
       27 LOADNIL                          R8
       28 GETIMPORT                        R9 K12 [pcall]
       30 NEWCLOSURE                       R10 P1
       31 CAPTURE                          REF R8
       32 CAPTURE                          UPVAL U0
       33 CALL                             R9 1 0
       34 MOVE                             R7 R8
       35 CLOSEUPVALS                      R8
       36 SETTABLEKS                       R7 R6 K8 ["studioSid"]
       38 GETUPVAL                         R7 1
       39 CALL                             R7 0 1
       40 SETTABLEKS                       R7 R6 K9 ["userId"]
       42 GETUPVAL                         R8 2
       43 GETTABLEKS                       R7 R8 K13 ["sendEventImmediately"]
       45 GETUPVAL                         R9 3
       46 GETTABLEKS                       R8 R9 K14 ["eventTarget"]
       48 LOADK                            R9 K15 ["Marketplace"]
       49 LOADK                            R10 K16 ["AnnouncementLinkClicked"]
       50 MOVE                             R11 R6
       51 CALL                             R7 4 0
       52 RETURN                           R0 0

PROTO_65:
        0 DUPTABLE                         R7 K11 [{"announcementButtonKey", "announcementDateKey", "announcementDescriptionKey", "announcementHeaderKey", "announcementLinkKey", "announcementLinkLocation", "durationBeforeClosed", "clientId", "platformId", "studioSid", "userId"}]
        1 SETTABLEKS                       R0 R7 K0 ["announcementButtonKey"]
        3 SETTABLEKS                       R1 R7 K1 ["announcementDateKey"]
        5 SETTABLEKS                       R2 R7 K2 ["announcementDescriptionKey"]
        7 SETTABLEKS                       R3 R7 K3 ["announcementHeaderKey"]
        9 SETTABLEKS                       R4 R7 K4 ["announcementLinkKey"]
       11 SETTABLEKS                       R5 R7 K5 ["announcementLinkLocation"]
       13 SETTABLEKS                       R6 R7 K6 ["durationBeforeClosed"]
       15 LOADNIL                          R9
       16 GETIMPORT                        R10 K13 [pcall]
       18 NEWCLOSURE                       R11 P0
       19 CAPTURE                          REF R9
       20 CAPTURE                          UPVAL U0
       21 CALL                             R10 1 0
       22 MOVE                             R8 R9
       23 CLOSEUPVALS                      R9
       24 SETTABLEKS                       R8 R7 K7 ["clientId"]
       26 LOADN                            R8 0
       27 SETTABLEKS                       R8 R7 K8 ["platformId"]
       29 LOADNIL                          R9
       30 GETIMPORT                        R10 K13 [pcall]
       32 NEWCLOSURE                       R11 P1
       33 CAPTURE                          REF R9
       34 CAPTURE                          UPVAL U0
       35 CALL                             R10 1 0
       36 MOVE                             R8 R9
       37 CLOSEUPVALS                      R9
       38 SETTABLEKS                       R8 R7 K9 ["studioSid"]
       40 GETUPVAL                         R8 1
       41 CALL                             R8 0 1
       42 SETTABLEKS                       R8 R7 K10 ["userId"]
       44 GETUPVAL                         R9 2
       45 GETTABLEKS                       R8 R9 K14 ["sendEventImmediately"]
       47 GETUPVAL                         R10 3
       48 GETTABLEKS                       R9 R10 K15 ["eventTarget"]
       50 LOADK                            R10 K16 ["Marketplace"]
       51 LOADK                            R11 K17 ["AnnouncementClosed"]
       52 MOVE                             R12 R7
       53 CALL                             R8 4 0
       54 RETURN                           R0 0

PROTO_66:
        0 DUPTABLE                         R7 K11 [{"announcementButtonKey", "announcementDateKey", "announcementDescriptionKey", "announcementHeaderKey", "announcementLinkKey", "announcementLinkLocation", "durationBeforeClosed", "clientId", "platformId", "studioSid", "userId"}]
        1 SETTABLEKS                       R0 R7 K0 ["announcementButtonKey"]
        3 SETTABLEKS                       R1 R7 K1 ["announcementDateKey"]
        5 SETTABLEKS                       R2 R7 K2 ["announcementDescriptionKey"]
        7 SETTABLEKS                       R3 R7 K3 ["announcementHeaderKey"]
        9 SETTABLEKS                       R4 R7 K4 ["announcementLinkKey"]
       11 SETTABLEKS                       R5 R7 K5 ["announcementLinkLocation"]
       13 SETTABLEKS                       R6 R7 K6 ["durationBeforeClosed"]
       15 LOADNIL                          R9
       16 GETIMPORT                        R10 K13 [pcall]
       18 NEWCLOSURE                       R11 P0
       19 CAPTURE                          REF R9
       20 CAPTURE                          UPVAL U0
       21 CALL                             R10 1 0
       22 MOVE                             R8 R9
       23 CLOSEUPVALS                      R9
       24 SETTABLEKS                       R8 R7 K7 ["clientId"]
       26 LOADN                            R8 0
       27 SETTABLEKS                       R8 R7 K8 ["platformId"]
       29 LOADNIL                          R9
       30 GETIMPORT                        R10 K13 [pcall]
       32 NEWCLOSURE                       R11 P1
       33 CAPTURE                          REF R9
       34 CAPTURE                          UPVAL U0
       35 CALL                             R10 1 0
       36 MOVE                             R8 R9
       37 CLOSEUPVALS                      R9
       38 SETTABLEKS                       R8 R7 K9 ["studioSid"]
       40 GETUPVAL                         R8 1
       41 CALL                             R8 0 1
       42 SETTABLEKS                       R8 R7 K10 ["userId"]
       44 GETUPVAL                         R9 2
       45 GETTABLEKS                       R8 R9 K14 ["sendEventImmediately"]
       47 GETUPVAL                         R10 3
       48 GETTABLEKS                       R9 R10 K15 ["eventTarget"]
       50 LOADK                            R10 K16 ["Marketplace"]
       51 LOADK                            R11 K17 ["AnnouncementAcknowledged"]
       52 MOVE                             R12 R7
       53 CALL                             R8 4 0
       54 RETURN                           R0 0

PROTO_67:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["sendEventDeferred"]
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R4 R5 K1 ["eventTarget"]
        6 LOADK                            R5 K2 ["Marketplace"]
        7 LOADK                            R6 K3 ["AssetMediaItemsUpdated"]
        8 DUPTABLE                         R7 K11 [{"assetId", "assetMediaIds", "assetTypeId", "clientId", "platformId", "studioSid", "userId"}]
        9 SETTABLEKS                       R0 R7 K4 ["assetId"]
       11 GETIMPORT                        R8 K14 [table.concat]
       13 MOVE                             R9 R2
       14 LOADK                            R10 K15 [","]
       15 CALL                             R8 2 1
       16 SETTABLEKS                       R8 R7 K5 ["assetMediaIds"]
       18 SETTABLEKS                       R1 R7 K6 ["assetTypeId"]
       20 LOADNIL                          R9
       21 GETIMPORT                        R10 K17 [pcall]
       23 NEWCLOSURE                       R11 P0
       24 CAPTURE                          REF R9
       25 CAPTURE                          UPVAL U2
       26 CALL                             R10 1 0
       27 MOVE                             R8 R9
       28 CLOSEUPVALS                      R9
       29 SETTABLEKS                       R8 R7 K7 ["clientId"]
       31 LOADN                            R8 0
       32 SETTABLEKS                       R8 R7 K8 ["platformId"]
       34 LOADNIL                          R9
       35 GETIMPORT                        R10 K17 [pcall]
       37 NEWCLOSURE                       R11 P1
       38 CAPTURE                          REF R9
       39 CAPTURE                          UPVAL U2
       40 CALL                             R10 1 0
       41 MOVE                             R8 R9
       42 CLOSEUPVALS                      R9
       43 SETTABLEKS                       R8 R7 K9 ["studioSid"]
       45 GETUPVAL                         R8 3
       46 CALL                             R8 0 1
       47 SETTABLEKS                       R8 R7 K10 ["userId"]
       49 CALL                             R3 4 0
       50 RETURN                           R0 0

PROTO_68:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["sendEventDeferred"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["eventTarget"]
        6 LOADK                            R4 K2 ["Marketplace"]
        7 LOADK                            R5 K3 ["MarketplaceListViewToggleClicked"]
        8 DUPTABLE                         R6 K9 [{"assetType", "layoutMode", "searchId", "clientId", "userId"}]
        9 GETTABLEKS                       R7 R1 K4 ["assetType"]
       11 SETTABLEKS                       R7 R6 K4 ["assetType"]
       13 SETTABLEKS                       R0 R6 K5 ["layoutMode"]
       15 GETTABLEKS                       R7 R1 K6 ["searchId"]
       17 SETTABLEKS                       R7 R6 K6 ["searchId"]
       19 LOADNIL                          R8
       20 GETIMPORT                        R9 K11 [pcall]
       22 NEWCLOSURE                       R10 P0
       23 CAPTURE                          REF R8
       24 CAPTURE                          UPVAL U2
       25 CALL                             R9 1 0
       26 MOVE                             R7 R8
       27 CLOSEUPVALS                      R8
       28 SETTABLEKS                       R7 R6 K7 ["clientId"]
       30 GETUPVAL                         R7 3
       31 CALL                             R7 0 1
       32 SETTABLEKS                       R7 R6 K8 ["userId"]
       34 CALL                             R2 4 0
       35 RETURN                           R0 0

PROTO_69:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["sendEventDeferred"]
        3 GETUPVAL                         R6 1
        4 GETTABLEKS                       R5 R6 K1 ["eventTarget"]
        6 LOADK                            R6 K2 ["Marketplace"]
        7 LOADK                            R7 K3 ["MarketplaceAssetRowExpanded"]
        8 DUPTABLE                         R8 K12 [{"assetId", "assetType", "pageNumber", "pagePosition", "searchId", "clientId", "platformId", "userId"}]
        9 SETTABLEKS                       R0 R8 K4 ["assetId"]
       11 GETTABLEKS                       R9 R3 K5 ["assetType"]
       13 SETTABLEKS                       R9 R8 K5 ["assetType"]
       15 SETTABLEKS                       R1 R8 K6 ["pageNumber"]
       17 SETTABLEKS                       R2 R8 K7 ["pagePosition"]
       19 GETTABLEKS                       R9 R3 K8 ["searchId"]
       21 SETTABLEKS                       R9 R8 K8 ["searchId"]
       23 LOADNIL                          R10
       24 GETIMPORT                        R11 K14 [pcall]
       26 NEWCLOSURE                       R12 P0
       27 CAPTURE                          REF R10
       28 CAPTURE                          UPVAL U2
       29 CALL                             R11 1 0
       30 MOVE                             R9 R10
       31 CLOSEUPVALS                      R10
       32 SETTABLEKS                       R9 R8 K9 ["clientId"]
       34 LOADN                            R9 0
       35 SETTABLEKS                       R9 R8 K10 ["platformId"]
       37 GETUPVAL                         R9 3
       38 CALL                             R9 0 1
       39 SETTABLEKS                       R9 R8 K11 ["userId"]
       41 CALL                             R4 4 0
       42 RETURN                           R0 0

PROTO_70:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["sendEventDeferred"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["eventTarget"]
        6 LOADK                            R3 K2 ["Marketplace"]
        7 LOADK                            R4 K3 ["MarketplaceRecentSearchClicked"]
        8 DUPTABLE                         R5 K7 [{"keyword", "clientId", "userId"}]
        9 SETTABLEKS                       R0 R5 K4 ["keyword"]
       11 LOADNIL                          R7
       12 GETIMPORT                        R8 K9 [pcall]
       14 NEWCLOSURE                       R9 P0
       15 CAPTURE                          REF R7
       16 CAPTURE                          UPVAL U2
       17 CALL                             R8 1 0
       18 MOVE                             R6 R7
       19 CLOSEUPVALS                      R7
       20 SETTABLEKS                       R6 R5 K5 ["clientId"]
       22 GETUPVAL                         R6 3
       23 CALL                             R6 0 1
       24 SETTABLEKS                       R6 R5 K6 ["userId"]
       26 CALL                             R1 4 0
       27 RETURN                           R0 0

PROTO_71:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["sendEventDeferred"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["eventTarget"]
        6 LOADK                            R4 K2 ["Marketplace"]
        7 LOADK                            R5 K3 ["MarketplaceSearchFilterOpened"]
        8 DUPTABLE                         R6 K8 [{"assetTypeId", "clientId", "toolboxTab", "userId"}]
        9 JUMPIFNOT                        R0 ; [+3]
       10 GETTABLEKS                       R7 R0 K9 ["Value"]
       12 JUMP                             ; [+1]
       13 LOADNIL                          R7
       14 SETTABLEKS                       R7 R6 K4 ["assetTypeId"]
       16 LOADNIL                          R8
       17 GETIMPORT                        R9 K11 [pcall]
       19 NEWCLOSURE                       R10 P0
       20 CAPTURE                          REF R8
       21 CAPTURE                          UPVAL U2
       22 CALL                             R9 1 0
       23 MOVE                             R7 R8
       24 CLOSEUPVALS                      R8
       25 SETTABLEKS                       R7 R6 K5 ["clientId"]
       27 SETTABLEKS                       R1 R6 K6 ["toolboxTab"]
       29 GETUPVAL                         R7 3
       30 CALL                             R7 0 1
       31 SETTABLEKS                       R7 R6 K7 ["userId"]
       33 CALL                             R2 4 0
       34 RETURN                           R0 0

PROTO_72:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["sendEventDeferred"]
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R4 R5 K1 ["eventTarget"]
        6 LOADK                            R5 K2 ["UGCUploadFlow"]
        7 LOADK                            R6 K3 ["UGCBundleValidationEvent"]
        8 DUPTABLE                         R7 K8 [{"clientId", "status", "bundleType", "errors"}]
        9 LOADNIL                          R9
       10 GETIMPORT                        R10 K10 [pcall]
       12 NEWCLOSURE                       R11 P0
       13 CAPTURE                          REF R9
       14 CAPTURE                          UPVAL U2
       15 CALL                             R10 1 0
       16 MOVE                             R8 R9
       17 CLOSEUPVALS                      R9
       18 SETTABLEKS                       R8 R7 K4 ["clientId"]
       20 SETTABLEKS                       R0 R7 K5 ["status"]
       22 SETTABLEKS                       R1 R7 K6 ["bundleType"]
       24 SETTABLEKS                       R2 R7 K7 ["errors"]
       26 CALL                             R3 4 0
       27 RETURN                           R0 0

PROTO_73:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["sendEventDeferred"]
        3 GETUPVAL                         R6 1
        4 GETTABLEKS                       R5 R6 K1 ["eventTarget"]
        6 LOADK                            R6 K2 ["UGCUploadFlow"]
        7 LOADK                            R7 K3 ["UGCUploadRequestOperationIdEvent"]
        8 DUPTABLE                         R8 K9 [{"clientId", "status", "bundleType", "operationId", "errors"}]
        9 LOADNIL                          R10
       10 GETIMPORT                        R11 K11 [pcall]
       12 NEWCLOSURE                       R12 P0
       13 CAPTURE                          REF R10
       14 CAPTURE                          UPVAL U2
       15 CALL                             R11 1 0
       16 MOVE                             R9 R10
       17 CLOSEUPVALS                      R10
       18 SETTABLEKS                       R9 R8 K4 ["clientId"]
       20 SETTABLEKS                       R0 R8 K5 ["status"]
       22 SETTABLEKS                       R1 R8 K6 ["bundleType"]
       24 SETTABLEKS                       R2 R8 K7 ["operationId"]
       26 SETTABLEKS                       R3 R8 K8 ["errors"]
       28 CALL                             R4 4 0
       29 RETURN                           R0 0

PROTO_74:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["sendEventDeferred"]
        3 GETUPVAL                         R7 1
        4 GETTABLEKS                       R6 R7 K1 ["eventTarget"]
        6 LOADK                            R7 K2 ["UGCUploadFlow"]
        7 LOADK                            R8 K3 ["UGCUploadAssetsEvent"]
        8 DUPTABLE                         R9 K10 [{"clientId", "status", "bundleType", "operationId", "assetIds", "errors"}]
        9 LOADNIL                          R11
       10 GETIMPORT                        R12 K12 [pcall]
       12 NEWCLOSURE                       R13 P0
       13 CAPTURE                          REF R11
       14 CAPTURE                          UPVAL U2
       15 CALL                             R12 1 0
       16 MOVE                             R10 R11
       17 CLOSEUPVALS                      R11
       18 SETTABLEKS                       R10 R9 K4 ["clientId"]
       20 SETTABLEKS                       R0 R9 K5 ["status"]
       22 SETTABLEKS                       R1 R9 K6 ["bundleType"]
       24 SETTABLEKS                       R2 R9 K7 ["operationId"]
       26 SETTABLEKS                       R3 R9 K8 ["assetIds"]
       28 SETTABLEKS                       R4 R9 K9 ["errors"]
       30 CALL                             R5 4 0
       31 RETURN                           R0 0

PROTO_75:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["sendEventDeferred"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["eventTarget"]
        6 LOADK                            R4 K2 ["UGCUploadFlow"]
        7 LOADK                            R5 K3 ["UGCIndividualAssetUploadEvent"]
        8 DUPTABLE                         R6 K9 [{"placeId", "studioSid", "clientId", "assetId", "underlyingAssetIds"}]
        9 GETUPVAL                         R7 2
       10 CALL                             R7 0 1
       11 SETTABLEKS                       R7 R6 K4 ["placeId"]
       13 LOADNIL                          R8
       14 GETIMPORT                        R9 K11 [pcall]
       16 NEWCLOSURE                       R10 P0
       17 CAPTURE                          REF R8
       18 CAPTURE                          UPVAL U3
       19 CALL                             R9 1 0
       20 MOVE                             R7 R8
       21 CLOSEUPVALS                      R8
       22 SETTABLEKS                       R7 R6 K5 ["studioSid"]
       24 LOADNIL                          R8
       25 GETIMPORT                        R9 K11 [pcall]
       27 NEWCLOSURE                       R10 P1
       28 CAPTURE                          REF R8
       29 CAPTURE                          UPVAL U3
       30 CALL                             R9 1 0
       31 MOVE                             R7 R8
       32 CLOSEUPVALS                      R8
       33 SETTABLEKS                       R7 R6 K6 ["clientId"]
       35 SETTABLEKS                       R0 R6 K7 ["assetId"]
       37 SETTABLEKS                       R1 R6 K8 ["underlyingAssetIds"]
       39 CALL                             R2 4 0
       40 RETURN                           R0 0

PROTO_76:
        0 GETUPVAL                         R7 0
        1 GETTABLEKS                       R6 R7 K0 ["sendEventDeferred"]
        3 GETUPVAL                         R8 1
        4 GETTABLEKS                       R7 R8 K1 ["eventTarget"]
        6 LOADK                            R8 K2 ["UGCUploadFlow"]
        7 LOADK                            R9 K3 ["UGCUploadRequestBundleCreationStatusEvent"]
        8 DUPTABLE                         R10 K11 [{"clientId", "status", "bundleType", "operationId", "assetIds", "creationStatusId", "errors"}]
        9 LOADNIL                          R12
       10 GETIMPORT                        R13 K13 [pcall]
       12 NEWCLOSURE                       R14 P0
       13 CAPTURE                          REF R12
       14 CAPTURE                          UPVAL U2
       15 CALL                             R13 1 0
       16 MOVE                             R11 R12
       17 CLOSEUPVALS                      R12
       18 SETTABLEKS                       R11 R10 K4 ["clientId"]
       20 SETTABLEKS                       R0 R10 K5 ["status"]
       22 SETTABLEKS                       R1 R10 K6 ["bundleType"]
       24 SETTABLEKS                       R2 R10 K7 ["operationId"]
       26 SETTABLEKS                       R3 R10 K8 ["assetIds"]
       28 SETTABLEKS                       R4 R10 K9 ["creationStatusId"]
       30 SETTABLEKS                       R5 R10 K10 ["errors"]
       32 CALL                             R6 4 0
       33 RETURN                           R0 0

PROTO_77:
        0 GETUPVAL                         R8 0
        1 GETTABLEKS                       R7 R8 K0 ["sendEventDeferred"]
        3 GETUPVAL                         R9 1
        4 GETTABLEKS                       R8 R9 K1 ["eventTarget"]
        6 LOADK                            R9 K2 ["UGCUploadFlow"]
        7 LOADK                            R10 K3 ["UGCUploadGetBundleCreationStatusEvent"]
        8 DUPTABLE                         R11 K12 [{"clientId", "status", "bundleType", "operationId", "assetIds", "creationStatusId", "bundleId", "errors"}]
        9 LOADNIL                          R13
       10 GETIMPORT                        R14 K14 [pcall]
       12 NEWCLOSURE                       R15 P0
       13 CAPTURE                          REF R13
       14 CAPTURE                          UPVAL U2
       15 CALL                             R14 1 0
       16 MOVE                             R12 R13
       17 CLOSEUPVALS                      R13
       18 SETTABLEKS                       R12 R11 K4 ["clientId"]
       20 SETTABLEKS                       R0 R11 K5 ["status"]
       22 SETTABLEKS                       R1 R11 K6 ["bundleType"]
       24 SETTABLEKS                       R2 R11 K7 ["operationId"]
       26 SETTABLEKS                       R3 R11 K8 ["assetIds"]
       28 SETTABLEKS                       R4 R11 K9 ["creationStatusId"]
       30 SETTABLEKS                       R5 R11 K10 ["bundleId"]
       32 SETTABLEKS                       R6 R11 K11 ["errors"]
       34 CALL                             R7 4 0
       35 RETURN                           R0 0

PROTO_78:
        0 GETUPVAL                         R8 0
        1 CALL                             R8 0 1
        2 JUMPIFNOT                        R8 ; [+31]
        3 GETUPVAL                         R9 1
        4 GETTABLEKS                       R8 R9 K0 ["getWebViewTrackingAttributes"]
        6 DUPTABLE                         R9 K9 [{"assetId", "addedCapabilities", "removedCapabilities", "currentCapabilities", "currentSandboxedValue", "instanceId", "instanceFullName", "telemetryOrigin"}]
        7 SETTABLEKS                       R0 R9 K1 ["assetId"]
        9 SETTABLEKS                       R1 R9 K2 ["addedCapabilities"]
       11 SETTABLEKS                       R2 R9 K3 ["removedCapabilities"]
       13 SETTABLEKS                       R3 R9 K4 ["currentCapabilities"]
       15 SETTABLEKS                       R4 R9 K5 ["currentSandboxedValue"]
       17 SETTABLEKS                       R5 R9 K6 ["instanceId"]
       19 SETTABLEKS                       R6 R9 K7 ["instanceFullName"]
       21 SETTABLEKS                       R7 R9 K8 ["telemetryOrigin"]
       23 CALL                             R8 1 1
       24 GETUPVAL                         R10 2
       25 GETTABLEKS                       R9 R10 K10 ["sendEventDeferred"]
       27 GETUPVAL                         R11 1
       28 GETTABLEKS                       R10 R11 K11 ["eventTarget"]
       30 LOADK                            R11 K12 ["toolbox"]
       31 LOADK                            R12 K13 ["StoreAssetCapabilitiesChangedLua"]
       32 MOVE                             R13 R8
       33 CALL                             R9 4 0
       34 RETURN                           R0 0

PROTO_79:
        0 GETUPVAL                         R8 0
        1 CALL                             R8 0 1
        2 JUMPIFNOT                        R8 ; [+31]
        3 GETUPVAL                         R9 1
        4 GETTABLEKS                       R8 R9 K0 ["getWebViewTrackingAttributes"]
        6 DUPTABLE                         R9 K9 [{"assetId", "addedCapabilities", "removedCapabilities", "currentCapabilities", "currentSandboxedValue", "instanceId", "instanceFullName", "telemetryOrigin"}]
        7 SETTABLEKS                       R0 R9 K1 ["assetId"]
        9 SETTABLEKS                       R1 R9 K2 ["addedCapabilities"]
       11 SETTABLEKS                       R2 R9 K3 ["removedCapabilities"]
       13 SETTABLEKS                       R3 R9 K4 ["currentCapabilities"]
       15 SETTABLEKS                       R4 R9 K5 ["currentSandboxedValue"]
       17 SETTABLEKS                       R5 R9 K6 ["instanceId"]
       19 SETTABLEKS                       R6 R9 K7 ["instanceFullName"]
       21 SETTABLEKS                       R7 R9 K8 ["telemetryOrigin"]
       23 CALL                             R8 1 1
       24 GETUPVAL                         R10 2
       25 GETTABLEKS                       R9 R10 K10 ["sendEventDeferred"]
       27 GETUPVAL                         R11 1
       28 GETTABLEKS                       R10 R11 K11 ["eventTarget"]
       30 LOADK                            R11 K12 ["toolbox"]
       31 LOADK                            R12 K13 ["StoreAssetSandboxChangedLua"]
       32 MOVE                             R13 R8
       33 CALL                             R9 4 0
       34 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Dash"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R7 R0 K7 ["Src"]
       22 GETTABLEKS                       R6 R7 K8 ["Util"]
       24 GETTABLEKS                       R5 R6 K9 ["Analytics"]
       26 GETTABLEKS                       R4 R5 K10 ["Senders"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K5 [require]
       31 GETTABLEKS                       R7 R0 K7 ["Src"]
       33 GETTABLEKS                       R6 R7 K8 ["Util"]
       35 GETTABLEKS                       R5 R6 K11 ["Constants"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K5 [require]
       40 GETTABLEKS                       R8 R0 K7 ["Src"]
       42 GETTABLEKS                       R7 R8 K12 ["Types"]
       44 GETTABLEKS                       R6 R7 K13 ["AnalyticsTypes"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K15 [game]
       49 LOADK                            R8 K16 ["RbxAnalyticsService"]
       50 NAMECALL                         R6 R6 K17 ["GetService"]
       52 CALL                             R6 2 1
       53 GETIMPORT                        R7 K15 [game]
       55 LOADK                            R9 K18 ["HttpService"]
       56 NAMECALL                         R7 R7 K17 ["GetService"]
       58 CALL                             R7 2 1
       59 GETIMPORT                        R8 K5 [require]
       61 GETTABLEKS                       R11 R0 K7 ["Src"]
       63 GETTABLEKS                       R10 R11 K8 ["Util"]
       65 GETTABLEKS                       R9 R10 K19 ["getUserId"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K15 [game]
       70 LOADK                            R11 K20 ["NewPackageAnalyticsWithRefactor2"]
       71 NAMECALL                         R9 R9 K21 ["GetFastFlag"]
       73 CALL                             R9 2 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R14 R0 K7 ["Src"]
       78 GETTABLEKS                       R13 R14 K8 ["Util"]
       80 GETTABLEKS                       R12 R13 K22 ["SharedFlags"]
       82 GETTABLEKS                       R11 R12 K23 ["getFFlagToolboxEnableSearchOptionsRefactor"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K5 [require]
       87 GETTABLEKS                       R15 R0 K7 ["Src"]
       89 GETTABLEKS                       R14 R15 K8 ["Util"]
       91 GETTABLEKS                       R13 R14 K22 ["SharedFlags"]
       93 GETTABLEKS                       R12 R13 K24 ["getFFlagToolboxAddCreationsFilterToListView"]
       95 CALL                             R11 1 1
       96 GETIMPORT                        R12 K5 [require]
       98 GETTABLEKS                       R16 R0 K7 ["Src"]
      100 GETTABLEKS                       R15 R16 K8 ["Util"]
      102 GETTABLEKS                       R14 R15 K22 ["SharedFlags"]
      104 GETTABLEKS                       R13 R14 K25 ["getFFlagEnableUGCUploadFlowAnalytics"]
      106 CALL                             R12 1 1
      107 GETIMPORT                        R13 K5 [require]
      109 GETTABLEKS                       R17 R0 K7 ["Src"]
      111 GETTABLEKS                       R16 R17 K8 ["Util"]
      113 GETTABLEKS                       R15 R16 K22 ["SharedFlags"]
      115 GETTABLEKS                       R14 R15 K26 ["getFFlagToolboxFixAnalyticCapitalization"]
      117 CALL                             R13 1 1
      118 GETIMPORT                        R14 K5 [require]
      120 GETTABLEKS                       R18 R0 K7 ["Src"]
      122 GETTABLEKS                       R17 R18 K8 ["Util"]
      124 GETTABLEKS                       R16 R17 K22 ["SharedFlags"]
      126 GETTABLEKS                       R15 R16 K27 ["getFFlagToolboxRemoveWebViewIxp"]
      128 CALL                             R14 1 1
      129 GETIMPORT                        R15 K5 [require]
      131 GETTABLEKS                       R19 R0 K7 ["Src"]
      133 GETTABLEKS                       R18 R19 K8 ["Util"]
      135 GETTABLEKS                       R17 R18 K22 ["SharedFlags"]
      137 GETTABLEKS                       R16 R17 K28 ["getFFlagToolboxCapabilities"]
      139 CALL                             R15 1 1
      140 GETIMPORT                        R16 K15 [game]
      142 LOADK                            R18 K29 ["ToolboxNoLuaAITimer"]
      143 LOADN                            R19 10
      144 NAMECALL                         R16 R16 K30 ["DefineFastInt"]
      146 CALL                             R16 3 1
      147 GETIMPORT                        R17 K5 [require]
      149 GETTABLEKS                       R20 R0 K7 ["Src"]
      151 GETTABLEKS                       R19 R20 K8 ["Util"]
      153 GETTABLEKS                       R18 R19 K31 ["getPlaceId"]
      155 CALL                             R17 1 1
      156 DUPCLOSURE                       R18 K32 [PROTO_1]
      157 CAPTURE                          VAL R6
      158 DUPCLOSURE                       R19 K33 [PROTO_3]
      159 CAPTURE                          VAL R6
      160 DUPCLOSURE                       R20 K34 [PROTO_4]
      161 NEWTABLE                         R21 128 0
      163 GETIMPORT                        R22 K15 [game]
      165 LOADK                            R24 K35 ["RunService"]
      166 NAMECALL                         R22 R22 K17 ["GetService"]
      168 CALL                             R22 2 1
      169 NAMECALL                         R22 R22 K36 ["IsEdit"]
      171 CALL                             R22 1 1
      172 DUPCLOSURE                       R23 K37 [PROTO_5]
      173 CAPTURE                          VAL R22
      174 SETTABLEKS                       R23 R21 K38 ["getIsEditMode"]
      176 SETTABLEKS                       R17 R21 K31 ["getPlaceId"]
      178 SETTABLEKS                       R20 R21 K39 ["getPlatformId"]
      180 SETTABLEKS                       R19 R21 K40 ["getClientId"]
      182 SETTABLEKS                       R18 R21 K41 ["getStudioSessionId"]
      184 DUPCLOSURE                       R24 K42 [PROTO_6]
      185 CAPTURE                          VAL R21
      186 SETTABLEKS                       R24 R21 K43 ["setPluginUri"]
      188 LOADB                            R26 0
      189 NAMECALL                         R24 R7 K44 ["GenerateGUID"]
      191 CALL                             R24 2 1
      192 SETTABLEKS                       R24 R21 K45 ["toolboxSid"]
      194 GETTABLEKS                       R25 R4 K46 ["ANALYTICS_TARGET"]
      196 GETTABLEKS                       R24 R25 K47 ["Studio"]
      198 SETTABLEKS                       R24 R21 K48 ["eventTarget"]
      200 DUPTABLE                         R24 K60 [{"toolboxInitTimestamp", "storeTabOpenTimestamp", "firstStoreAssetImpressionEventFired", "firstLuaAssetImpressionEventFired", "retryShownEventFired", "didFallbackToLuaUi", "initialToolboxTab", "onWebViewTimingEventFired", "beforeInteractiveTimeMs", "afterInteractiveTimeMs", "loadSuccessTimeMs"}]
      201 LOADNIL                          R25
      202 SETTABLEKS                       R25 R24 K49 ["toolboxInitTimestamp"]
      204 LOADNIL                          R25
      205 SETTABLEKS                       R25 R24 K50 ["storeTabOpenTimestamp"]
      207 LOADB                            R25 0
      208 SETTABLEKS                       R25 R24 K51 ["firstStoreAssetImpressionEventFired"]
      210 LOADB                            R25 0
      211 SETTABLEKS                       R25 R24 K52 ["firstLuaAssetImpressionEventFired"]
      213 LOADB                            R25 0
      214 SETTABLEKS                       R25 R24 K53 ["retryShownEventFired"]
      216 LOADB                            R25 0
      217 SETTABLEKS                       R25 R24 K54 ["didFallbackToLuaUi"]
      219 LOADNIL                          R25
      220 SETTABLEKS                       R25 R24 K55 ["initialToolboxTab"]
      222 LOADB                            R25 0
      223 SETTABLEKS                       R25 R24 K56 ["onWebViewTimingEventFired"]
      225 LOADNIL                          R25
      226 SETTABLEKS                       R25 R24 K57 ["beforeInteractiveTimeMs"]
      228 LOADNIL                          R25
      229 SETTABLEKS                       R25 R24 K58 ["afterInteractiveTimeMs"]
      231 LOADNIL                          R25
      232 SETTABLEKS                       R25 R24 K59 ["loadSuccessTimeMs"]
      234 SETTABLEKS                       R24 R21 K61 ["WebView"]
      236 DUPCLOSURE                       R24 K62 [PROTO_7]
      237 CAPTURE                          VAL R21
      238 SETTABLEKS                       R24 R21 K63 ["setEventTarget"]
      240 DUPCLOSURE                       R24 K64 [PROTO_8]
      241 CAPTURE                          VAL R21
      242 SETTABLEKS                       R24 R21 K65 ["getStudioMetadata"]
      244 DUPCLOSURE                       R24 K66 [PROTO_9]
      245 CAPTURE                          VAL R21
      246 CAPTURE                          VAL R8
      247 CAPTURE                          VAL R2
      248 SETTABLEKS                       R24 R21 K67 ["getWebViewTrackingAttributes"]
      250 DUPCLOSURE                       R24 K68 [PROTO_10]
      251 CAPTURE                          VAL R21
      252 CAPTURE                          VAL R3
      253 CAPTURE                          VAL R4
      254 SETTABLEKS                       R24 R21 K69 ["onRetryWebViewInit"]
      256 DUPCLOSURE                       R24 K70 [PROTO_11]
      257 CAPTURE                          VAL R21
      258 CAPTURE                          VAL R3
      259 CAPTURE                          VAL R4
      260 SETTABLEKS                       R24 R21 K71 ["onWebViewRetryClicked"]
      262 DUPCLOSURE                       R24 K72 [PROTO_12]
      263 CAPTURE                          VAL R21
      264 CAPTURE                          VAL R3
      265 CAPTURE                          VAL R4
      266 SETTABLEKS                       R24 R21 K73 ["onWebViewRetryShown"]
      268 DUPCLOSURE                       R24 K74 [PROTO_13]
      269 CAPTURE                          VAL R21
      270 CAPTURE                          VAL R3
      271 CAPTURE                          VAL R4
      272 SETTABLEKS                       R24 R21 K75 ["onWebViewTimingEvent"]
      274 DUPCLOSURE                       R24 K76 [PROTO_14]
      275 CAPTURE                          VAL R21
      276 CAPTURE                          VAL R3
      277 CAPTURE                          VAL R4
      278 SETTABLEKS                       R24 R21 K77 ["onWebViewInit"]
      280 DUPCLOSURE                       R24 K78 [PROTO_15]
      281 CAPTURE                          VAL R21
      282 CAPTURE                          VAL R3
      283 CAPTURE                          VAL R4
      284 SETTABLEKS                       R24 R21 K79 ["onFallbackToLuaUi"]
      286 DUPCLOSURE                       R24 K80 [PROTO_16]
      287 CAPTURE                          VAL R21
      288 SETTABLEKS                       R24 R21 K81 ["setInitialToolboxTab"]
      290 DUPCLOSURE                       R24 K82 [PROTO_18]
      291 CAPTURE                          VAL R21
      292 CAPTURE                          VAL R16
      293 CAPTURE                          VAL R3
      294 CAPTURE                          VAL R4
      295 SETTABLEKS                       R24 R21 K83 ["setToolboxInitTimestamp"]
      297 DUPCLOSURE                       R24 K84 [PROTO_19]
      298 CAPTURE                          VAL R21
      299 SETTABLEKS                       R24 R21 K85 ["onStoreTabOpened"]
      301 DUPCLOSURE                       R24 K86 [PROTO_20]
      302 CAPTURE                          VAL R21
      303 SETTABLEKS                       R24 R21 K87 ["logFirstLuaAssetImpression"]
      305 DUPCLOSURE                       R24 K88 [PROTO_21]
      306 CAPTURE                          VAL R21
      307 CAPTURE                          VAL R3
      308 CAPTURE                          VAL R4
      309 SETTABLEKS                       R24 R21 K89 ["logFirstStoreAssetImpression"]
      311 DUPCLOSURE                       R24 K90 [PROTO_22]
      312 CAPTURE                          VAL R21
      313 CAPTURE                          VAL R3
      314 SETTABLEKS                       R24 R21 K91 ["onToolboxTabChanged"]
      316 MOVE                             R24 R12
      317 CALL                             R24 0 1
      318 JUMPIFNOT                        R24 ; [+12]
      319 DUPTABLE                         R24 K95 [{"Start", "Success", "Failure"}]
      320 LOADK                            R25 K92 ["Start"]
      321 SETTABLEKS                       R25 R24 K92 ["Start"]
      323 LOADK                            R25 K93 ["Success"]
      324 SETTABLEKS                       R25 R24 K93 ["Success"]
      326 LOADK                            R25 K94 ["Failure"]
      327 SETTABLEKS                       R25 R24 K94 ["Failure"]
      329 SETTABLEKS                       R24 R21 K96 ["Status"]
      331 DUPCLOSURE                       R24 K97 [PROTO_23]
      332 CAPTURE                          VAL R3
      333 CAPTURE                          VAL R21
      334 CAPTURE                          VAL R6
      335 CAPTURE                          VAL R8
      336 CAPTURE                          VAL R22
      337 SETTABLEKS                       R24 R21 K98 ["onTermSearchedWithoutInsertion"]
      339 DUPCLOSURE                       R24 K99 [PROTO_24]
      340 CAPTURE                          VAL R3
      341 CAPTURE                          VAL R21
      342 CAPTURE                          VAL R6
      343 CAPTURE                          VAL R8
      344 CAPTURE                          VAL R10
      345 CAPTURE                          VAL R22
      346 SETTABLEKS                       R24 R21 K100 ["onCreatorSearched"]
      348 DUPCLOSURE                       R24 K101 [PROTO_25]
      349 CAPTURE                          VAL R3
      350 CAPTURE                          VAL R21
      351 CAPTURE                          VAL R6
      352 CAPTURE                          VAL R8
      353 CAPTURE                          VAL R22
      354 SETTABLEKS                       R24 R21 K102 ["onTryAsset"]
      356 DUPCLOSURE                       R24 K103 [PROTO_26]
      357 CAPTURE                          VAL R3
      358 CAPTURE                          VAL R21
      359 CAPTURE                          VAL R6
      360 CAPTURE                          VAL R8
      361 CAPTURE                          VAL R22
      362 SETTABLEKS                       R24 R21 K104 ["onTryAssetFailure"]
      364 DUPCLOSURE                       R24 K105 [PROTO_27]
      365 CAPTURE                          VAL R3
      366 CAPTURE                          VAL R21
      367 CAPTURE                          VAL R6
      368 CAPTURE                          VAL R8
      369 CAPTURE                          VAL R22
      370 SETTABLEKS                       R24 R21 K106 ["onSearchOptionsOpened"]
      372 DUPCLOSURE                       R24 K107 [PROTO_28]
      373 CAPTURE                          VAL R3
      374 CAPTURE                          VAL R21
      375 CAPTURE                          VAL R6
      376 CAPTURE                          VAL R22
      377 SETTABLEKS                       R24 R21 K108 ["onCategorySelected"]
      379 DUPCLOSURE                       R24 K109 [PROTO_29]
      380 CAPTURE                          VAL R6
      381 CAPTURE                          VAL R17
      382 CAPTURE                          VAL R8
      383 CAPTURE                          VAL R22
      384 CAPTURE                          VAL R3
      385 CAPTURE                          VAL R21
      386 SETTABLEKS                       R24 R21 K110 ["onAssetInserted"]
      388 DUPCLOSURE                       R24 K111 [PROTO_30]
      389 CAPTURE                          VAL R3
      390 CAPTURE                          VAL R21
      391 CAPTURE                          VAL R6
      392 CAPTURE                          VAL R17
      393 CAPTURE                          VAL R8
      394 CAPTURE                          VAL R22
      395 SETTABLEKS                       R24 R21 K112 ["onAssetDragInserted"]
      397 DUPCLOSURE                       R24 K113 [PROTO_31]
      398 CAPTURE                          VAL R3
      399 CAPTURE                          VAL R21
      400 CAPTURE                          VAL R6
      401 CAPTURE                          VAL R17
      402 CAPTURE                          VAL R8
      403 CAPTURE                          VAL R22
      404 SETTABLEKS                       R24 R21 K114 ["reportDragInsertFinished"]
      406 DUPCLOSURE                       R24 K115 [PROTO_32]
      407 CAPTURE                          VAL R3
      408 CAPTURE                          VAL R21
      409 CAPTURE                          VAL R6
      410 CAPTURE                          VAL R17
      411 CAPTURE                          VAL R8
      412 SETTABLEKS                       R24 R21 K116 ["onPackageNoteCreated"]
      414 DUPCLOSURE                       R24 K117 [PROTO_33]
      415 CAPTURE                          VAL R3
      416 CAPTURE                          VAL R21
      417 CAPTURE                          VAL R6
      418 CAPTURE                          VAL R17
      419 CAPTURE                          VAL R8
      420 SETTABLEKS                       R24 R21 K118 ["onPackageNoteDiscarded"]
      422 DUPCLOSURE                       R24 K119 [PROTO_34]
      423 CAPTURE                          VAL R3
      424 CAPTURE                          VAL R21
      425 CAPTURE                          VAL R6
      426 CAPTURE                          VAL R17
      427 CAPTURE                          VAL R8
      428 SETTABLEKS                       R24 R21 K120 ["onPackageNoteCanceled"]
      430 DUPCLOSURE                       R24 K121 [PROTO_35]
      431 CAPTURE                          VAL R3
      432 SETTABLEKS                       R24 R21 K122 ["incrementToolboxInsertCounter"]
      434 DUPCLOSURE                       R24 K123 [PROTO_36]
      435 CAPTURE                          VAL R3
      436 SETTABLEKS                       R24 R21 K124 ["incrementToolboxCategoryInsertCounter"]
      438 DUPCLOSURE                       R24 K125 [PROTO_37]
      439 CAPTURE                          VAL R3
      440 SETTABLEKS                       R24 R21 K126 ["incrementWorkspaceInsertCounter"]
      442 DUPCLOSURE                       R24 K127 [PROTO_38]
      443 CAPTURE                          VAL R3
      444 SETTABLEKS                       R24 R21 K128 ["incrementUploadAssetSuccess"]
      446 DUPCLOSURE                       R24 K129 [PROTO_39]
      447 CAPTURE                          VAL R3
      448 SETTABLEKS                       R24 R21 K130 ["incrementUploadAssetFailure"]
      450 DUPCLOSURE                       R24 K131 [PROTO_40]
      451 CAPTURE                          VAL R3
      452 SETTABLEKS                       R24 R21 K132 ["onSoundPlayedCounter"]
      454 DUPCLOSURE                       R24 K133 [PROTO_41]
      455 CAPTURE                          VAL R3
      456 SETTABLEKS                       R24 R21 K134 ["onSoundPausedCounter"]
      458 DUPCLOSURE                       R24 K135 [PROTO_42]
      459 CAPTURE                          VAL R9
      460 CAPTURE                          VAL R3
      461 SETTABLEKS                       R24 R21 K136 ["sendResultToKibana"]
      463 DUPCLOSURE                       R24 K137 [PROTO_43]
      464 CAPTURE                          VAL R3
      465 SETTABLEKS                       R24 R21 K138 ["incrementAssetImpressionCounter"]
      467 DUPCLOSURE                       R24 K139 [PROTO_44]
      468 CAPTURE                          VAL R3
      469 CAPTURE                          VAL R21
      470 CAPTURE                          VAL R6
      471 CAPTURE                          VAL R8
      472 CAPTURE                          VAL R22
      473 SETTABLEKS                       R24 R21 K140 ["onAssetPreviewSelected"]
      475 DUPCLOSURE                       R24 K141 [PROTO_45]
      476 CAPTURE                          VAL R3
      477 CAPTURE                          VAL R21
      478 CAPTURE                          VAL R6
      479 CAPTURE                          VAL R8
      480 CAPTURE                          VAL R22
      481 SETTABLEKS                       R24 R21 K142 ["onAssetPreviewEnded"]
      483 DUPCLOSURE                       R24 K143 [PROTO_46]
      484 CAPTURE                          VAL R3
      485 CAPTURE                          VAL R21
      486 CAPTURE                          VAL R6
      487 CAPTURE                          VAL R8
      488 CAPTURE                          VAL R22
      489 SETTABLEKS                       R24 R21 K144 ["onAssetInsertedFromAssetPreview"]
      491 DUPCLOSURE                       R24 K145 [PROTO_47]
      492 CAPTURE                          VAL R21
      493 CAPTURE                          VAL R3
      494 SETTABLEKS                       R24 R21 K146 ["onPluginButtonClickOpen"]
      496 DUPCLOSURE                       R24 K147 [PROTO_48]
      497 CAPTURE                          VAL R21
      498 CAPTURE                          VAL R3
      499 SETTABLEKS                       R24 R21 K148 ["onPluginButtonClickClose"]
      501 DUPCLOSURE                       R24 K149 [PROTO_49]
      502 CAPTURE                          VAL R21
      503 CAPTURE                          VAL R3
      504 SETTABLEKS                       R24 R21 K150 ["onToolboxDisplayed"]
      506 DUPCLOSURE                       R24 K151 [PROTO_50]
      507 CAPTURE                          VAL R21
      508 CAPTURE                          VAL R3
      509 SETTABLEKS                       R24 R21 K152 ["onToolboxHidden"]
      511 DUPCLOSURE                       R24 K153 [PROTO_51]
      512 CAPTURE                          VAL R21
      513 CAPTURE                          VAL R14
      514 CAPTURE                          VAL R3
      515 SETTABLEKS                       R24 R21 K154 ["onToolboxMounted"]
      517 DUPCLOSURE                       R24 K155 [PROTO_52]
      518 CAPTURE                          VAL R21
      519 CAPTURE                          VAL R3
      520 SETTABLEKS                       R24 R21 K156 ["onToolboxUnmounted"]
      522 DUPCLOSURE                       R24 K157 [PROTO_53]
      523 CAPTURE                          VAL R21
      524 CAPTURE                          VAL R3
      525 SETTABLEKS                       R24 R21 K158 ["onToolboxInitialSizing"]
      527 DUPCLOSURE                       R24 K159 [PROTO_54]
      528 CAPTURE                          VAL R3
      529 CAPTURE                          VAL R21
      530 CAPTURE                          VAL R6
      531 CAPTURE                          VAL R8
      532 CAPTURE                          VAL R22
      533 SETTABLEKS                       R24 R21 K160 ["onContextMenuClicked"]
      535 DUPCLOSURE                       R24 K161 [PROTO_55]
      536 CAPTURE                          VAL R3
      537 CAPTURE                          VAL R21
      538 CAPTURE                          VAL R6
      539 CAPTURE                          VAL R22
      540 SETTABLEKS                       R24 R21 K162 ["openedFromPluginManagement"]
      542 DUPCLOSURE                       R24 K163 [PROTO_56]
      543 CAPTURE                          VAL R3
      544 CAPTURE                          VAL R21
      545 CAPTURE                          VAL R6
      546 CAPTURE                          VAL R22
      547 SETTABLEKS                       R24 R21 K164 ["openedExternallyByAssetType"]
      549 DUPCLOSURE                       R24 K165 [PROTO_57]
      550 CAPTURE                          VAL R3
      551 CAPTURE                          VAL R21
      552 CAPTURE                          VAL R6
      553 CAPTURE                          VAL R22
      554 SETTABLEKS                       R24 R21 K166 ["reportAssetClicked"]
      556 DUPCLOSURE                       R24 K167 [PROTO_58]
      557 CAPTURE                          VAL R3
      558 CAPTURE                          VAL R21
      559 CAPTURE                          VAL R6
      560 CAPTURE                          VAL R22
      561 CAPTURE                          VAL R17
      562 SETTABLEKS                       R24 R21 K168 ["reportMeshPartFiltered"]
      564 DUPCLOSURE                       R24 K169 [PROTO_59]
      565 CAPTURE                          VAL R3
      566 CAPTURE                          VAL R21
      567 CAPTURE                          VAL R6
      568 CAPTURE                          VAL R8
      569 CAPTURE                          VAL R22
      570 SETTABLEKS                       R24 R21 K170 ["onIdVerificationIconClicked"]
      572 DUPCLOSURE                       R24 K171 [PROTO_60]
      573 CAPTURE                          VAL R13
      574 CAPTURE                          VAL R6
      575 CAPTURE                          VAL R11
      576 CAPTURE                          VAL R22
      577 CAPTURE                          VAL R8
      578 CAPTURE                          VAL R17
      579 CAPTURE                          VAL R21
      580 CAPTURE                          VAL R3
      581 SETTABLEKS                       R24 R21 K172 ["marketplaceSearch"]
      583 DUPCLOSURE                       R24 K173 [PROTO_61]
      584 CAPTURE                          VAL R13
      585 CAPTURE                          VAL R6
      586 CAPTURE                          VAL R22
      587 CAPTURE                          VAL R8
      588 CAPTURE                          VAL R17
      589 CAPTURE                          VAL R3
      590 CAPTURE                          VAL R21
      591 SETTABLEKS                       R24 R21 K174 ["marketplaceAutocompleteSearch"]
      593 DUPCLOSURE                       R24 K175 [PROTO_62]
      594 CAPTURE                          VAL R21
      595 CAPTURE                          VAL R3
      596 SETTABLEKS                       R24 R21 K176 ["onToolboxWidgetInteraction"]
      598 DUPCLOSURE                       R24 K177 [PROTO_63]
      599 CAPTURE                          VAL R6
      600 CAPTURE                          VAL R8
      601 CAPTURE                          VAL R3
      602 CAPTURE                          VAL R21
      603 SETTABLEKS                       R24 R21 K178 ["AnnouncementViewed"]
      605 DUPCLOSURE                       R24 K179 [PROTO_64]
      606 CAPTURE                          VAL R6
      607 CAPTURE                          VAL R8
      608 CAPTURE                          VAL R3
      609 CAPTURE                          VAL R21
      610 SETTABLEKS                       R24 R21 K180 ["AnnouncementLinkClicked"]
      612 DUPCLOSURE                       R24 K181 [PROTO_65]
      613 CAPTURE                          VAL R6
      614 CAPTURE                          VAL R8
      615 CAPTURE                          VAL R3
      616 CAPTURE                          VAL R21
      617 SETTABLEKS                       R24 R21 K182 ["AnnouncementClosed"]
      619 DUPCLOSURE                       R24 K183 [PROTO_66]
      620 CAPTURE                          VAL R6
      621 CAPTURE                          VAL R8
      622 CAPTURE                          VAL R3
      623 CAPTURE                          VAL R21
      624 SETTABLEKS                       R24 R21 K184 ["AnnouncementAcknowledged"]
      626 DUPCLOSURE                       R24 K185 [PROTO_67]
      627 CAPTURE                          VAL R3
      628 CAPTURE                          VAL R21
      629 CAPTURE                          VAL R6
      630 CAPTURE                          VAL R8
      631 SETTABLEKS                       R24 R21 K186 ["AssetMediaItemsUpdated"]
      633 DUPCLOSURE                       R24 K187 [PROTO_68]
      634 CAPTURE                          VAL R3
      635 CAPTURE                          VAL R21
      636 CAPTURE                          VAL R6
      637 CAPTURE                          VAL R8
      638 SETTABLEKS                       R24 R21 K188 ["MarketplaceListViewToggleClicked"]
      640 DUPCLOSURE                       R24 K189 [PROTO_69]
      641 CAPTURE                          VAL R3
      642 CAPTURE                          VAL R21
      643 CAPTURE                          VAL R6
      644 CAPTURE                          VAL R8
      645 SETTABLEKS                       R24 R21 K190 ["MarketplaceAssetRowExpanded"]
      647 DUPCLOSURE                       R24 K191 [PROTO_70]
      648 CAPTURE                          VAL R3
      649 CAPTURE                          VAL R21
      650 CAPTURE                          VAL R6
      651 CAPTURE                          VAL R8
      652 SETTABLEKS                       R24 R21 K192 ["MarketplaceRecentSearchClicked"]
      654 DUPCLOSURE                       R24 K193 [PROTO_71]
      655 CAPTURE                          VAL R3
      656 CAPTURE                          VAL R21
      657 CAPTURE                          VAL R6
      658 CAPTURE                          VAL R8
      659 SETTABLEKS                       R24 R21 K194 ["MarketplaceSearchFilterOpened"]
      661 MOVE                             R24 R12
      662 CALL                             R24 0 1
      663 JUMPIFNOT                        R24 ; [+37]
      664 DUPCLOSURE                       R24 K195 [PROTO_72]
      665 CAPTURE                          VAL R3
      666 CAPTURE                          VAL R21
      667 CAPTURE                          VAL R6
      668 SETTABLEKS                       R24 R21 K196 ["UGCBundleValidationEvent"]
      670 DUPCLOSURE                       R24 K197 [PROTO_73]
      671 CAPTURE                          VAL R3
      672 CAPTURE                          VAL R21
      673 CAPTURE                          VAL R6
      674 SETTABLEKS                       R24 R21 K198 ["UGCUploadRequestOperationIdEvent"]
      676 DUPCLOSURE                       R24 K199 [PROTO_74]
      677 CAPTURE                          VAL R3
      678 CAPTURE                          VAL R21
      679 CAPTURE                          VAL R6
      680 SETTABLEKS                       R24 R21 K200 ["UGCUploadAssetsEvent"]
      682 DUPCLOSURE                       R24 K201 [PROTO_75]
      683 CAPTURE                          VAL R3
      684 CAPTURE                          VAL R21
      685 CAPTURE                          VAL R17
      686 CAPTURE                          VAL R6
      687 SETTABLEKS                       R24 R21 K202 ["UGCIndividualAssetUploadEvent"]
      689 DUPCLOSURE                       R24 K203 [PROTO_76]
      690 CAPTURE                          VAL R3
      691 CAPTURE                          VAL R21
      692 CAPTURE                          VAL R6
      693 SETTABLEKS                       R24 R21 K204 ["UGCUploadRequestBundleCreationStatusEvent"]
      695 DUPCLOSURE                       R24 K205 [PROTO_77]
      696 CAPTURE                          VAL R3
      697 CAPTURE                          VAL R21
      698 CAPTURE                          VAL R6
      699 SETTABLEKS                       R24 R21 K206 ["UGCUploadGetBundleCreationStatusEvent"]
      701 DUPCLOSURE                       R24 K207 [PROTO_78]
      702 CAPTURE                          VAL R15
      703 CAPTURE                          VAL R21
      704 CAPTURE                          VAL R3
      705 SETTABLEKS                       R24 R21 K208 ["StoreAssetCapabilitiesChanged"]
      707 DUPCLOSURE                       R24 K209 [PROTO_79]
      708 CAPTURE                          VAL R15
      709 CAPTURE                          VAL R21
      710 CAPTURE                          VAL R3
      711 SETTABLEKS                       R24 R21 K210 ["StoreAssetSandboxChanged"]
      713 RETURN                           R21 1
