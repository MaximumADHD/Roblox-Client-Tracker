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
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K9 ["getClientId"]
        4 CALL                             R1 0 1
        5 SETTABLEKS                       R1 R0 K0 ["clientId"]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K10 ["getIsEditMode"]
       10 CALL                             R1 0 1
       11 SETTABLEKS                       R1 R0 K1 ["isEditMode"]
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K11 ["getPlaceId"]
       16 CALL                             R1 0 1
       17 SETTABLEKS                       R1 R0 K2 ["placeId"]
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R1 R1 K12 ["getPlatformId"]
       22 CALL                             R1 0 1
       23 SETTABLEKS                       R1 R0 K3 ["platformId"]
       25 GETUPVAL                         R1 0
       26 GETTABLEKS                       R1 R1 K13 ["getStudioSessionId"]
       28 CALL                             R1 0 1
       29 SETTABLEKS                       R1 R0 K4 ["studioSid"]
       31 GETUPVAL                         R1 0
       32 GETTABLEKS                       R1 R1 K5 ["toolboxSid"]
       34 SETTABLEKS                       R1 R0 K5 ["toolboxSid"]
       36 GETUPVAL                         R1 0
       37 GETTABLEKS                       R1 R1 K6 ["pluginUri"]
       39 SETTABLEKS                       R1 R0 K6 ["pluginUri"]
       41 GETUPVAL                         R1 0
       42 GETTABLEKS                       R1 R1 K14 ["WebView"]
       44 GETTABLEKS                       R1 R1 K15 ["toolboxInitTimestamp"]
       46 SETTABLEKS                       R1 R0 K7 ["pluginInitTimestamp"]
       48 RETURN                           R0 1

PROTO_9:
        0 LOADNIL                          R1
        1 GETIMPORT                        R2 K2 [DateTime.now]
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R2 R2 K3 ["UnixTimestampMillis"]
        6 DUPTABLE                         R3 K13 [{"clientId", "isEditMode", "placeId", "platformId", "studioSid", "timestampMs", "toolboxSid", "pluginUri", "userId"}]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K14 ["getClientId"]
       10 CALL                             R4 0 1
       11 SETTABLEKS                       R4 R3 K4 ["clientId"]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K15 ["getIsEditMode"]
       16 CALL                             R4 0 1
       17 SETTABLEKS                       R4 R3 K5 ["isEditMode"]
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K16 ["getPlaceId"]
       22 CALL                             R4 0 1
       23 SETTABLEKS                       R4 R3 K6 ["placeId"]
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R4 R4 K17 ["getPlatformId"]
       28 CALL                             R4 0 1
       29 SETTABLEKS                       R4 R3 K7 ["platformId"]
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R4 R4 K18 ["getStudioSessionId"]
       34 CALL                             R4 0 1
       35 SETTABLEKS                       R4 R3 K8 ["studioSid"]
       37 SETTABLEKS                       R2 R3 K9 ["timestampMs"]
       39 GETUPVAL                         R4 0
       40 GETTABLEKS                       R4 R4 K10 ["toolboxSid"]
       42 SETTABLEKS                       R4 R3 K10 ["toolboxSid"]
       44 GETUPVAL                         R4 0
       45 GETTABLEKS                       R4 R4 K11 ["pluginUri"]
       47 SETTABLEKS                       R4 R3 K11 ["pluginUri"]
       49 GETUPVAL                         R4 1
       50 CALL                             R4 0 1
       51 SETTABLEKS                       R4 R3 K12 ["userId"]
       53 MOVE                             R1 R3
       54 GETUPVAL                         R3 0
       55 GETTABLEKS                       R3 R3 K19 ["WebView"]
       57 GETTABLEKS                       R3 R3 K20 ["toolboxInitTimestamp"]
       59 JUMPIFNOT                        R3 ; [+8]
       60 GETUPVAL                         R4 0
       61 GETTABLEKS                       R4 R4 K19 ["WebView"]
       63 GETTABLEKS                       R4 R4 K20 ["toolboxInitTimestamp"]
       65 SUB                              R3 R2 R4
       66 SETTABLEKS                       R3 R1 K21 ["timeMs"]
       68 GETUPVAL                         R3 2
       69 GETTABLEKS                       R3 R3 K22 ["join"]
       71 MOVE                             R4 R1
       72 MOVE                             R5 R0
       73 CALL                             R3 2 -1
       74 RETURN                           R3 -1

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["getWebViewTrackingAttributes"]
        3 DUPTABLE                         R4 K4 [{"reason", "currentRetryCount", "maxRetryCount"}]
        4 SETTABLEKS                       R0 R4 K1 ["reason"]
        6 SETTABLEKS                       R1 R4 K2 ["currentRetryCount"]
        8 SETTABLEKS                       R2 R4 K3 ["maxRetryCount"]
       10 CALL                             R3 1 1
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K5 ["sendEventDeferred"]
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R5 R5 K6 ["ANALYTICS_TARGET"]
       17 GETTABLEKS                       R5 R5 K7 ["WebView"]
       19 LOADK                            R6 K8 ["Marketplace"]
       20 LOADK                            R7 K9 ["WebViewInitRetry"]
       21 MOVE                             R8 R3
       22 CALL                             R4 4 0
       23 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["getWebViewTrackingAttributes"]
        3 DUPTABLE                         R5 K5 [{"reason", "currentRetryCount", "maxRetryCount", "loadingStatus"}]
        4 SETTABLEKS                       R2 R5 K1 ["reason"]
        6 SETTABLEKS                       R0 R5 K2 ["currentRetryCount"]
        8 SETTABLEKS                       R1 R5 K3 ["maxRetryCount"]
       10 SETTABLEKS                       R3 R5 K4 ["loadingStatus"]
       12 CALL                             R4 1 1
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R5 R5 K6 ["sendEventDeferred"]
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R6 R6 K7 ["ANALYTICS_TARGET"]
       19 GETTABLEKS                       R6 R6 K8 ["WebView"]
       21 LOADK                            R7 K9 ["marketplace"]
       22 LOADK                            R8 K10 ["CreatorStoreWebViewRetryClicked"]
       23 MOVE                             R9 R4
       24 CALL                             R5 4 0
       25 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["WebView"]
        3 GETTABLEKS                       R2 R2 K1 ["retryShownEventFired"]
        5 JUMPIFNOT                        R2 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["WebView"]
       10 LOADB                            R3 1
       11 SETTABLEKS                       R3 R2 K1 ["retryShownEventFired"]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K2 ["getWebViewTrackingAttributes"]
       16 DUPTABLE                         R3 K6 [{"reason", "widgetWidth", "widgetHeight"}]
       17 SETTABLEKS                       R0 R3 K3 ["reason"]
       19 GETTABLEKS                       R4 R1 K7 ["X"]
       21 SETTABLEKS                       R4 R3 K4 ["widgetWidth"]
       23 GETTABLEKS                       R4 R1 K8 ["Y"]
       25 SETTABLEKS                       R4 R3 K5 ["widgetHeight"]
       27 CALL                             R2 1 1
       28 GETUPVAL                         R3 1
       29 GETTABLEKS                       R3 R3 K9 ["sendEventDeferred"]
       31 GETUPVAL                         R4 2
       32 GETTABLEKS                       R4 R4 K10 ["ANALYTICS_TARGET"]
       34 GETTABLEKS                       R4 R4 K0 ["WebView"]
       36 LOADK                            R5 K11 ["marketplace"]
       37 LOADK                            R6 K12 ["CreatorStoreWebViewRetryShown"]
       38 MOVE                             R7 R2
       39 CALL                             R3 4 0
       40 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["WebView"]
        3 GETTABLEKS                       R3 R3 K1 ["onWebViewTimingEventFired"]
        5 JUMPIF                           R3 ; [+7]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K0 ["WebView"]
        9 GETTABLEKS                       R3 R3 K2 ["toolboxInitTimestamp"]
       11 JUMPIFNOTEQKNIL                  R3 ; [+2]
       13 RETURN                           R0 0
       14 JUMPIFEQKNIL                     R0 ; [+12]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K0 ["WebView"]
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R5 R5 K0 ["WebView"]
       22 GETTABLEKS                       R5 R5 K2 ["toolboxInitTimestamp"]
       24 SUB                              R4 R0 R5
       25 SETTABLEKS                       R4 R3 K3 ["beforeInteractiveTimeMs"]
       27 JUMPIFEQKNIL                     R1 ; [+12]
       29 GETUPVAL                         R3 0
       30 GETTABLEKS                       R3 R3 K0 ["WebView"]
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R5 R5 K0 ["WebView"]
       35 GETTABLEKS                       R5 R5 K2 ["toolboxInitTimestamp"]
       37 SUB                              R4 R1 R5
       38 SETTABLEKS                       R4 R3 K4 ["afterInteractiveTimeMs"]
       40 JUMPIFEQKNIL                     R2 ; [+12]
       42 GETUPVAL                         R3 0
       43 GETTABLEKS                       R3 R3 K0 ["WebView"]
       45 GETUPVAL                         R5 0
       46 GETTABLEKS                       R5 R5 K0 ["WebView"]
       48 GETTABLEKS                       R5 R5 K2 ["toolboxInitTimestamp"]
       50 SUB                              R4 R2 R5
       51 SETTABLEKS                       R4 R3 K5 ["loadSuccessTimeMs"]
       53 GETUPVAL                         R3 0
       54 GETTABLEKS                       R3 R3 K6 ["getWebViewTrackingAttributes"]
       56 DUPTABLE                         R4 K7 [{"beforeInteractiveTimeMs", "afterInteractiveTimeMs", "loadSuccessTimeMs"}]
       57 GETUPVAL                         R5 0
       58 GETTABLEKS                       R5 R5 K0 ["WebView"]
       60 GETTABLEKS                       R5 R5 K3 ["beforeInteractiveTimeMs"]
       62 SETTABLEKS                       R5 R4 K3 ["beforeInteractiveTimeMs"]
       64 GETUPVAL                         R5 0
       65 GETTABLEKS                       R5 R5 K0 ["WebView"]
       67 GETTABLEKS                       R5 R5 K4 ["afterInteractiveTimeMs"]
       69 SETTABLEKS                       R5 R4 K4 ["afterInteractiveTimeMs"]
       71 GETUPVAL                         R5 0
       72 GETTABLEKS                       R5 R5 K0 ["WebView"]
       74 GETTABLEKS                       R5 R5 K5 ["loadSuccessTimeMs"]
       76 SETTABLEKS                       R5 R4 K5 ["loadSuccessTimeMs"]
       78 CALL                             R3 1 1
       79 GETUPVAL                         R4 0
       80 GETTABLEKS                       R4 R4 K0 ["WebView"]
       82 GETTABLEKS                       R4 R4 K3 ["beforeInteractiveTimeMs"]
       84 JUMPIFNOT                        R4 ; [+30]
       85 GETUPVAL                         R4 0
       86 GETTABLEKS                       R4 R4 K0 ["WebView"]
       88 GETTABLEKS                       R4 R4 K4 ["afterInteractiveTimeMs"]
       90 JUMPIFNOT                        R4 ; [+24]
       91 GETUPVAL                         R4 0
       92 GETTABLEKS                       R4 R4 K0 ["WebView"]
       94 GETTABLEKS                       R4 R4 K5 ["loadSuccessTimeMs"]
       96 JUMPIFNOT                        R4 ; [+18]
       97 GETUPVAL                         R4 0
       98 GETTABLEKS                       R4 R4 K0 ["WebView"]
      100 LOADB                            R5 1
      101 SETTABLEKS                       R5 R4 K1 ["onWebViewTimingEventFired"]
      103 GETUPVAL                         R4 1
      104 GETTABLEKS                       R4 R4 K8 ["sendEventDeferred"]
      106 GETUPVAL                         R5 2
      107 GETTABLEKS                       R5 R5 K9 ["ANALYTICS_TARGET"]
      109 GETTABLEKS                       R5 R5 K0 ["WebView"]
      111 LOADK                            R6 K10 ["marketplace"]
      112 LOADK                            R7 K11 ["CreatorStoreWebViewTiming"]
      113 MOVE                             R8 R3
      114 CALL                             R4 4 0
      115 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getWebViewTrackingAttributes"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["sendEventDeferred"]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["ANALYTICS_TARGET"]
       10 GETTABLEKS                       R2 R2 K3 ["WebView"]
       12 LOADK                            R3 K4 ["marketplace"]
       13 LOADK                            R4 K5 ["CreatorStoreWebViewInit"]
       14 MOVE                             R5 R0
       15 CALL                             R1 4 0
       16 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getWebViewTrackingAttributes"]
        3 DUPTABLE                         R2 K2 [{"reason"}]
        4 SETTABLEKS                       R0 R2 K1 ["reason"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K3 ["sendEventDeferred"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K4 ["ANALYTICS_TARGET"]
       13 GETTABLEKS                       R3 R3 K5 ["WebView"]
       15 LOADK                            R4 K6 ["marketplace"]
       16 LOADK                            R5 K7 ["CreatorStoreFallbackToLuaUi"]
       17 MOVE                             R6 R1
       18 CALL                             R2 4 0
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K0 ["getWebViewTrackingAttributes"]
       22 DUPTABLE                         R3 K11 [{"beforeInteractiveTimeMs", "afterInteractiveTimeMs", "loadSuccessTimeMs"}]
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R4 R4 K5 ["WebView"]
       26 GETTABLEKS                       R4 R4 K8 ["beforeInteractiveTimeMs"]
       28 SETTABLEKS                       R4 R3 K8 ["beforeInteractiveTimeMs"]
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R4 R4 K5 ["WebView"]
       33 GETTABLEKS                       R4 R4 K9 ["afterInteractiveTimeMs"]
       35 SETTABLEKS                       R4 R3 K9 ["afterInteractiveTimeMs"]
       37 GETUPVAL                         R4 0
       38 GETTABLEKS                       R4 R4 K5 ["WebView"]
       40 GETTABLEKS                       R4 R4 K10 ["loadSuccessTimeMs"]
       42 SETTABLEKS                       R4 R3 K10 ["loadSuccessTimeMs"]
       44 CALL                             R2 1 1
       45 GETUPVAL                         R3 0
       46 GETTABLEKS                       R3 R3 K5 ["WebView"]
       48 GETTABLEKS                       R3 R3 K12 ["onWebViewTimingEventFired"]
       50 JUMPIF                           R3 ; [+18]
       51 GETUPVAL                         R3 0
       52 GETTABLEKS                       R3 R3 K5 ["WebView"]
       54 LOADB                            R4 1
       55 SETTABLEKS                       R4 R3 K12 ["onWebViewTimingEventFired"]
       57 GETUPVAL                         R3 1
       58 GETTABLEKS                       R3 R3 K3 ["sendEventDeferred"]
       60 GETUPVAL                         R4 2
       61 GETTABLEKS                       R4 R4 K4 ["ANALYTICS_TARGET"]
       63 GETTABLEKS                       R4 R4 K5 ["WebView"]
       65 LOADK                            R5 K6 ["marketplace"]
       66 LOADK                            R6 K13 ["CreatorStoreWebViewTiming"]
       67 MOVE                             R7 R2
       68 CALL                             R3 4 0
       69 GETUPVAL                         R3 0
       70 GETTABLEKS                       R3 R3 K14 ["setEventTarget"]
       72 GETUPVAL                         R4 2
       73 GETTABLEKS                       R4 R4 K4 ["ANALYTICS_TARGET"]
       75 GETTABLEKS                       R4 R4 K15 ["Studio"]
       77 CALL                             R3 1 0
       78 GETUPVAL                         R3 0
       79 GETTABLEKS                       R3 R3 K5 ["WebView"]
       81 LOADB                            R4 1
       82 SETTABLEKS                       R4 R3 K16 ["didFallbackToLuaUi"]
       84 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["WebView"]
        3 SETTABLEKS                       R0 R1 K1 ["initialToolboxTab"]
        5 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["WebView"]
        3 GETTABLEKS                       R0 R0 K1 ["firstLuaAssetImpressionEventFired"]
        5 JUMPIF                           R0 ; [+24]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K2 ["getWebViewTrackingAttributes"]
        9 DUPTABLE                         R1 K4 [{"initialToolboxTab"}]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K0 ["WebView"]
       13 GETTABLEKS                       R2 R2 K3 ["initialToolboxTab"]
       15 SETTABLEKS                       R2 R1 K3 ["initialToolboxTab"]
       17 CALL                             R0 1 1
       18 GETUPVAL                         R1 1
       19 GETTABLEKS                       R1 R1 K5 ["sendEventDeferred"]
       21 GETUPVAL                         R2 2
       22 GETTABLEKS                       R2 R2 K6 ["ANALYTICS_TARGET"]
       24 GETTABLEKS                       R2 R2 K7 ["Studio"]
       26 LOADK                            R3 K8 ["marketplace"]
       27 LOADK                            R4 K9 ["ToolboxLuaNoAssetImpressionFired"]
       28 MOVE                             R5 R0
       29 CALL                             R1 4 0
       30 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["WebView"]
        3 GETIMPORT                        R2 K3 [DateTime.now]
        5 CALL                             R2 0 1
        6 GETTABLEKS                       R2 R2 K4 ["UnixTimestampMillis"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["WebView"]
        3 GETTABLEKS                       R0 R0 K1 ["firstStoreAssetImpressionEventFired"]
        5 JUMPIFNOT                        R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K0 ["WebView"]
       10 GETIMPORT                        R1 K4 [DateTime.now]
       12 CALL                             R1 0 1
       13 GETTABLEKS                       R1 R1 K5 ["UnixTimestampMillis"]
       15 SETTABLEKS                       R1 R0 K6 ["storeTabOpenTimestamp"]
       17 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["WebView"]
        3 LOADB                            R1 1
        4 SETTABLEKS                       R1 R0 K1 ["firstLuaAssetImpressionEventFired"]
        6 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["WebView"]
        3 GETTABLEKS                       R1 R1 K1 ["firstStoreAssetImpressionEventFired"]
        5 JUMPIF                           R1 ; [+6]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["WebView"]
        9 GETTABLEKS                       R1 R1 K2 ["storeTabOpenTimestamp"]
       11 JUMPIF                           R1 ; [+1]
       12 RETURN                           R0 0
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K0 ["WebView"]
       16 LOADB                            R2 1
       17 SETTABLEKS                       R2 R1 K1 ["firstStoreAssetImpressionEventFired"]
       19 GETIMPORT                        R2 K5 [DateTime.now]
       21 CALL                             R2 0 1
       22 GETTABLEKS                       R2 R2 K6 ["UnixTimestampMillis"]
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R3 R3 K0 ["WebView"]
       27 GETTABLEKS                       R3 R3 K2 ["storeTabOpenTimestamp"]
       29 SUB                              R1 R2 R3
       30 GETUPVAL                         R2 0
       31 GETTABLEKS                       R2 R2 K7 ["getWebViewTrackingAttributes"]
       33 DUPTABLE                         R3 K12 [{"afterStoreTabOpenTimeMs", "isWebViewAssetImpression", "didFallbackToLuaUi", "initialToolboxTab"}]
       34 SETTABLEKS                       R1 R3 K8 ["afterStoreTabOpenTimeMs"]
       36 SETTABLEKS                       R0 R3 K9 ["isWebViewAssetImpression"]
       38 GETUPVAL                         R4 0
       39 GETTABLEKS                       R4 R4 K0 ["WebView"]
       41 GETTABLEKS                       R4 R4 K10 ["didFallbackToLuaUi"]
       43 SETTABLEKS                       R4 R3 K10 ["didFallbackToLuaUi"]
       45 GETUPVAL                         R4 0
       46 GETTABLEKS                       R4 R4 K0 ["WebView"]
       48 GETTABLEKS                       R4 R4 K11 ["initialToolboxTab"]
       50 SETTABLEKS                       R4 R3 K11 ["initialToolboxTab"]
       52 CALL                             R2 1 1
       53 GETUPVAL                         R3 1
       54 GETTABLEKS                       R3 R3 K13 ["sendEventDeferred"]
       56 JUMPIFNOT                        R0 ; [+6]
       57 GETUPVAL                         R4 2
       58 GETTABLEKS                       R4 R4 K14 ["ANALYTICS_TARGET"]
       60 GETTABLEKS                       R4 R4 K0 ["WebView"]
       62 JUMP                             ; [+5]
       63 GETUPVAL                         R4 2
       64 GETTABLEKS                       R4 R4 K14 ["ANALYTICS_TARGET"]
       66 GETTABLEKS                       R4 R4 K15 ["Studio"]
       68 LOADK                            R5 K16 ["marketplace"]
       69 LOADK                            R6 K17 ["CreatorStoreFirstAssetImpression"]
       70 MOVE                             R7 R2
       71 CALL                             R3 4 0
       72 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getWebViewTrackingAttributes"]
        3 DUPTABLE                         R3 K3 [{"newToolboxTab", "oldToolboxTab"}]
        4 SETTABLEKS                       R1 R3 K1 ["newToolboxTab"]
        6 SETTABLEKS                       R0 R3 K2 ["oldToolboxTab"]
        8 CALL                             R2 1 1
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K4 ["sendEventDeferred"]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K5 ["eventTarget"]
       15 LOADK                            R5 K6 ["Marketplace"]
       16 LOADK                            R6 K7 ["ToolboxTabChanged"]
       17 MOVE                             R7 R2
       18 CALL                             R3 4 0
       19 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["sendEventImmediately"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["eventTarget"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["sendEventImmediately"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K1 ["eventTarget"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["sendEventImmediately"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["eventTarget"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["sendEventImmediately"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["eventTarget"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["sendEventImmediately"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["eventTarget"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["sendEventImmediately"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["eventTarget"]
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
       44 GETUPVAL                         R6 4
       45 GETTABLEKS                       R6 R6 K13 ["sendEventImmediately"]
       47 GETUPVAL                         R7 5
       48 GETTABLEKS                       R7 R7 K14 ["eventTarget"]
       50 LOADK                            R8 K15 ["click"]
       51 LOADK                            R9 K16 ["toolboxInsert"]
       52 MOVE                             R10 R5
       53 CALL                             R6 4 0
       54 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["sendEventImmediately"]
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R5 R5 K1 ["eventTarget"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["sendEventImmediately"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["eventTarget"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["sendEventImmediately"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K1 ["eventTarget"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["sendEventImmediately"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K1 ["eventTarget"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["sendEventImmediately"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["eventTarget"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["reportCounter"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["reportCounter"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["reportCounter"]
        3 LOADK                            R1 K1 ["StudioWorkspaceInsertCounter"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["reportCounter"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["reportCounter"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["reportCounter"]
        3 LOADK                            R1 K1 ["Studio.ToolboxAudio.Played"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["reportCounter"]
        3 LOADK                            R1 K1 ["Studio.ToolboxAudio.Paused"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["sendResultToKibana"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["reportCounter"]
        3 LOADK                            R1 K1 ["Studio.ToolboxAsset.Impression"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["sendEventDeferred"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["eventTarget"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["sendEventDeferred"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["eventTarget"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["sendEventDeferred"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["eventTarget"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getWebViewTrackingAttributes"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["sendEventDeferred"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["eventTarget"]
       10 LOADK                            R3 K3 ["toolbox"]
       11 LOADK                            R4 K4 ["MarketplaceOpen"]
       12 MOVE                             R5 R0
       13 CALL                             R1 4 0
       14 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getWebViewTrackingAttributes"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["sendEventDeferred"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["eventTarget"]
       10 LOADK                            R3 K3 ["toolbox"]
       11 LOADK                            R4 K4 ["MarketplaceClosed"]
       12 MOVE                             R5 R0
       13 CALL                             R1 4 0
       14 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getWebViewTrackingAttributes"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["sendEventDeferred"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["eventTarget"]
       10 LOADK                            R3 K3 ["toolbox"]
       11 LOADK                            R4 K4 ["MarketplaceImpression"]
       12 MOVE                             R5 R0
       13 CALL                             R1 4 0
       14 RETURN                           R0 0

PROTO_50:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getWebViewTrackingAttributes"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["sendEventDeferred"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["eventTarget"]
       10 LOADK                            R3 K3 ["Marketplace"]
       11 LOADK                            R4 K4 ["MarketplaceHidden"]
       12 MOVE                             R5 R0
       13 CALL                             R1 4 0
       14 RETURN                           R0 0

PROTO_51:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getWebViewTrackingAttributes"]
        3 DUPTABLE                         R3 K3 [{"isWebViewEnabled", "isWebViewAvailable"}]
        4 SETTABLEKS                       R0 R3 K1 ["isWebViewEnabled"]
        6 SETTABLEKS                       R1 R3 K2 ["isWebViewAvailable"]
        8 CALL                             R2 1 1
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K4 ["sendEventDeferred"]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K5 ["eventTarget"]
       15 LOADK                            R5 K6 ["Marketplace"]
       16 LOADK                            R6 K7 ["MarketplaceMounted"]
       17 MOVE                             R7 R2
       18 CALL                             R3 4 0
       19 RETURN                           R0 0

PROTO_52:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getWebViewTrackingAttributes"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["sendEventDeferred"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["eventTarget"]
       10 LOADK                            R3 K3 ["Marketplace"]
       11 LOADK                            R4 K4 ["MarketplaceUnmounted"]
       12 MOVE                             R5 R0
       13 CALL                             R1 4 0
       14 RETURN                           R0 0

PROTO_53:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["getWebViewTrackingAttributes"]
        3 DUPTABLE                         R5 K5 [{"prevWidth", "prevHeight", "currentWidth", "currentHeight"}]
        4 SETTABLEKS                       R0 R5 K1 ["prevWidth"]
        6 SETTABLEKS                       R1 R5 K2 ["prevHeight"]
        8 SETTABLEKS                       R2 R5 K3 ["currentWidth"]
       10 SETTABLEKS                       R3 R5 K4 ["currentHeight"]
       12 CALL                             R4 1 1
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R5 R5 K6 ["sendEventDeferred"]
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R6 R6 K7 ["eventTarget"]
       19 LOADK                            R7 K8 ["Marketplace"]
       20 LOADK                            R8 K9 ["ToolboxInitialSizing"]
       21 MOVE                             R9 R4
       22 CALL                             R5 4 0
       23 RETURN                           R0 0

PROTO_54:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["sendEventImmediately"]
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R5 R5 K1 ["eventTarget"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["sendEventImmediately"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["eventTarget"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["sendEventImmediately"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["eventTarget"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["sendEventImmediately"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["eventTarget"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["sendEventImmediately"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["eventTarget"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["sendEventImmediately"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["eventTarget"]
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
      104 GETUPVAL                         R4 6
      105 GETTABLEKS                       R4 R4 K18 ["toolboxSid"]
      107 SETTABLEKS                       R4 R3 K18 ["toolboxSid"]
      109 GETUPVAL                         R4 6
      110 GETTABLEKS                       R4 R4 K19 ["pluginUri"]
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
      216 GETUPVAL                         R4 6
      217 GETTABLEKS                       R4 R4 K18 ["toolboxSid"]
      219 SETTABLEKS                       R4 R3 K18 ["toolboxSid"]
      221 GETUPVAL                         R4 6
      222 GETTABLEKS                       R4 R4 K19 ["pluginUri"]
      224 SETTABLEKS                       R4 R3 K19 ["pluginUri"]
      226 GETTABLEKS                       R4 R2 K32 ["previousSearchId"]
      228 SETTABLEKS                       R4 R3 K32 ["previousSearchId"]
      230 GETTABLEKS                       R4 R2 K33 ["querySource"]
      232 SETTABLEKS                       R4 R3 K33 ["querySource"]
      234 GETTABLEKS                       R4 R2 K34 ["originalUserQuery"]
      236 SETTABLEKS                       R4 R3 K34 ["originalUserQuery"]
      238 GETTABLEKS                       R4 R2 K35 ["originalCorrection"]
      240 SETTABLEKS                       R4 R3 K35 ["originalCorrection"]
      242 GETUPVAL                         R4 7
      243 GETTABLEKS                       R4 R4 K36 ["sendEventImmediately"]
      245 GETUPVAL                         R5 6
      246 GETTABLEKS                       R5 R5 K37 ["eventTarget"]
      248 LOADK                            R6 K38 ["Marketplace"]
      249 LOADK                            R7 K39 ["MarketplaceSearch"]
      250 MOVE                             R8 R3
      251 CALL                             R4 4 0
      252 RETURN                           R0 0

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
      138 GETUPVAL                         R7 5
      139 GETTABLEKS                       R7 R7 K26 ["sendEventImmediately"]
      141 GETUPVAL                         R8 6
      142 GETTABLEKS                       R8 R8 K27 ["eventTarget"]
      144 LOADK                            R9 K28 ["Marketplace"]
      145 LOADK                            R10 K29 ["MarketplaceAutocompleteSearch"]
      146 MOVE                             R11 R6
      147 CALL                             R7 4 0
      148 RETURN                           R0 0

PROTO_62:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getWebViewTrackingAttributes"]
        3 DUPTABLE                         R2 K3 [{"widgetWidth", "widgetHeight"}]
        4 GETTABLEKS                       R3 R0 K4 ["X"]
        6 SETTABLEKS                       R3 R2 K1 ["widgetWidth"]
        8 GETTABLEKS                       R3 R0 K5 ["Y"]
       10 SETTABLEKS                       R3 R2 K2 ["widgetHeight"]
       12 CALL                             R1 1 1
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K6 ["sendEventDeferred"]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K7 ["eventTarget"]
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
       42 GETUPVAL                         R7 2
       43 GETTABLEKS                       R7 R7 K13 ["sendEventImmediately"]
       45 GETUPVAL                         R8 3
       46 GETTABLEKS                       R8 R8 K14 ["eventTarget"]
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
       42 GETUPVAL                         R7 2
       43 GETTABLEKS                       R7 R7 K13 ["sendEventImmediately"]
       45 GETUPVAL                         R8 3
       46 GETTABLEKS                       R8 R8 K14 ["eventTarget"]
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
       44 GETUPVAL                         R8 2
       45 GETTABLEKS                       R8 R8 K14 ["sendEventImmediately"]
       47 GETUPVAL                         R9 3
       48 GETTABLEKS                       R9 R9 K15 ["eventTarget"]
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
       44 GETUPVAL                         R8 2
       45 GETTABLEKS                       R8 R8 K14 ["sendEventImmediately"]
       47 GETUPVAL                         R9 3
       48 GETTABLEKS                       R9 R9 K15 ["eventTarget"]
       50 LOADK                            R10 K16 ["Marketplace"]
       51 LOADK                            R11 K17 ["AnnouncementAcknowledged"]
       52 MOVE                             R12 R7
       53 CALL                             R8 4 0
       54 RETURN                           R0 0

PROTO_67:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["sendEventDeferred"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K1 ["eventTarget"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["sendEventDeferred"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["eventTarget"]
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
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["sendEventDeferred"]
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R5 R5 K1 ["eventTarget"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["sendEventDeferred"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["eventTarget"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["sendEventDeferred"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["eventTarget"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["sendEventDeferred"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K1 ["eventTarget"]
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
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["sendEventDeferred"]
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R5 R5 K1 ["eventTarget"]
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
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["sendEventDeferred"]
        3 GETUPVAL                         R6 1
        4 GETTABLEKS                       R6 R6 K1 ["eventTarget"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["sendEventDeferred"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["eventTarget"]
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
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["sendEventDeferred"]
        3 GETUPVAL                         R7 1
        4 GETTABLEKS                       R7 R7 K1 ["eventTarget"]
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
        0 GETUPVAL                         R7 0
        1 GETTABLEKS                       R7 R7 K0 ["sendEventDeferred"]
        3 GETUPVAL                         R8 1
        4 GETTABLEKS                       R8 R8 K1 ["eventTarget"]
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

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Dash"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R0 K7 ["Src"]
       22 GETTABLEKS                       R4 R4 K8 ["Util"]
       24 GETTABLEKS                       R4 R4 K9 ["Analytics"]
       26 GETTABLEKS                       R4 R4 K10 ["Senders"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K5 [require]
       31 GETTABLEKS                       R5 R0 K7 ["Src"]
       33 GETTABLEKS                       R5 R5 K8 ["Util"]
       35 GETTABLEKS                       R5 R5 K11 ["Constants"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K5 [require]
       40 GETTABLEKS                       R6 R0 K7 ["Src"]
       42 GETTABLEKS                       R6 R6 K12 ["Types"]
       44 GETTABLEKS                       R6 R6 K13 ["AnalyticsTypes"]
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
       61 GETTABLEKS                       R9 R0 K7 ["Src"]
       63 GETTABLEKS                       R9 R9 K8 ["Util"]
       65 GETTABLEKS                       R9 R9 K19 ["getUserId"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K5 [require]
       70 GETTABLEKS                       R10 R0 K7 ["Src"]
       72 GETTABLEKS                       R10 R10 K8 ["Util"]
       74 GETTABLEKS                       R10 R10 K20 ["SharedFlags"]
       76 GETTABLEKS                       R10 R10 K21 ["getFFlagToolboxEnableSearchOptionsRefactor"]
       78 CALL                             R9 1 1
       79 GETIMPORT                        R10 K5 [require]
       81 GETTABLEKS                       R11 R0 K7 ["Src"]
       83 GETTABLEKS                       R11 R11 K8 ["Util"]
       85 GETTABLEKS                       R11 R11 K20 ["SharedFlags"]
       87 GETTABLEKS                       R11 R11 K22 ["getFFlagToolboxAddCreationsFilterToListView"]
       89 CALL                             R10 1 1
       90 GETIMPORT                        R11 K5 [require]
       92 GETTABLEKS                       R12 R0 K7 ["Src"]
       94 GETTABLEKS                       R12 R12 K8 ["Util"]
       96 GETTABLEKS                       R12 R12 K20 ["SharedFlags"]
       98 GETTABLEKS                       R12 R12 K23 ["getFFlagEnableUGCUploadFlowAnalytics"]
      100 CALL                             R11 1 1
      101 GETIMPORT                        R12 K5 [require]
      103 GETTABLEKS                       R13 R0 K7 ["Src"]
      105 GETTABLEKS                       R13 R13 K8 ["Util"]
      107 GETTABLEKS                       R13 R13 K20 ["SharedFlags"]
      109 GETTABLEKS                       R13 R13 K24 ["getFFlagToolboxFixAnalyticCapitalization"]
      111 CALL                             R12 1 1
      112 GETIMPORT                        R13 K15 [game]
      114 LOADK                            R15 K25 ["ToolboxNoLuaAITimer"]
      115 LOADN                            R16 10
      116 NAMECALL                         R13 R13 K26 ["DefineFastInt"]
      118 CALL                             R13 3 1
      119 GETIMPORT                        R14 K5 [require]
      121 GETTABLEKS                       R15 R0 K7 ["Src"]
      123 GETTABLEKS                       R15 R15 K8 ["Util"]
      125 GETTABLEKS                       R15 R15 K27 ["getPlaceId"]
      127 CALL                             R14 1 1
      128 DUPCLOSURE                       R15 K28 [PROTO_1]
      129 CAPTURE                          VAL R6
      130 DUPCLOSURE                       R16 K29 [PROTO_3]
      131 CAPTURE                          VAL R6
      132 DUPCLOSURE                       R17 K30 [PROTO_4]
      133 NEWTABLE                         R18 128 0
      135 GETIMPORT                        R19 K15 [game]
      137 LOADK                            R21 K31 ["RunService"]
      138 NAMECALL                         R19 R19 K17 ["GetService"]
      140 CALL                             R19 2 1
      141 NAMECALL                         R19 R19 K32 ["IsEdit"]
      143 CALL                             R19 1 1
      144 DUPCLOSURE                       R20 K33 [PROTO_5]
      145 CAPTURE                          VAL R19
      146 SETTABLEKS                       R20 R18 K34 ["getIsEditMode"]
      148 SETTABLEKS                       R14 R18 K27 ["getPlaceId"]
      150 SETTABLEKS                       R17 R18 K35 ["getPlatformId"]
      152 SETTABLEKS                       R16 R18 K36 ["getClientId"]
      154 SETTABLEKS                       R15 R18 K37 ["getStudioSessionId"]
      156 DUPCLOSURE                       R21 K38 [PROTO_6]
      157 CAPTURE                          VAL R18
      158 SETTABLEKS                       R21 R18 K39 ["setPluginUri"]
      160 LOADB                            R23 0
      161 NAMECALL                         R21 R7 K40 ["GenerateGUID"]
      163 CALL                             R21 2 1
      164 SETTABLEKS                       R21 R18 K41 ["toolboxSid"]
      166 GETTABLEKS                       R21 R4 K42 ["ANALYTICS_TARGET"]
      168 GETTABLEKS                       R21 R21 K43 ["Studio"]
      170 SETTABLEKS                       R21 R18 K44 ["eventTarget"]
      172 DUPTABLE                         R21 K58 [{["toolboxInitTimestamp"] = , ["storeTabOpenTimestamp"] = , ["firstStoreAssetImpressionEventFired"] = False, ["firstLuaAssetImpressionEventFired"] = False, ["retryShownEventFired"] = False, ["didFallbackToLuaUi"] = False, ["initialToolboxTab"] = , ["onWebViewTimingEventFired"] = False, ["beforeInteractiveTimeMs"] = , ["afterInteractiveTimeMs"] = , ["loadSuccessTimeMs"] = }]
      173 SETTABLEKS                       R21 R18 K59 ["WebView"]
      175 DUPCLOSURE                       R21 K60 [PROTO_7]
      176 CAPTURE                          VAL R18
      177 SETTABLEKS                       R21 R18 K61 ["setEventTarget"]
      179 DUPCLOSURE                       R21 K62 [PROTO_8]
      180 CAPTURE                          VAL R18
      181 SETTABLEKS                       R21 R18 K63 ["getStudioMetadata"]
      183 DUPCLOSURE                       R21 K64 [PROTO_9]
      184 CAPTURE                          VAL R18
      185 CAPTURE                          VAL R8
      186 CAPTURE                          VAL R2
      187 SETTABLEKS                       R21 R18 K65 ["getWebViewTrackingAttributes"]
      189 DUPCLOSURE                       R21 K66 [PROTO_10]
      190 CAPTURE                          VAL R18
      191 CAPTURE                          VAL R3
      192 CAPTURE                          VAL R4
      193 SETTABLEKS                       R21 R18 K67 ["onRetryWebViewInit"]
      195 DUPCLOSURE                       R21 K68 [PROTO_11]
      196 CAPTURE                          VAL R18
      197 CAPTURE                          VAL R3
      198 CAPTURE                          VAL R4
      199 SETTABLEKS                       R21 R18 K69 ["onWebViewRetryClicked"]
      201 DUPCLOSURE                       R21 K70 [PROTO_12]
      202 CAPTURE                          VAL R18
      203 CAPTURE                          VAL R3
      204 CAPTURE                          VAL R4
      205 SETTABLEKS                       R21 R18 K71 ["onWebViewRetryShown"]
      207 DUPCLOSURE                       R21 K72 [PROTO_13]
      208 CAPTURE                          VAL R18
      209 CAPTURE                          VAL R3
      210 CAPTURE                          VAL R4
      211 SETTABLEKS                       R21 R18 K73 ["onWebViewTimingEvent"]
      213 DUPCLOSURE                       R21 K74 [PROTO_14]
      214 CAPTURE                          VAL R18
      215 CAPTURE                          VAL R3
      216 CAPTURE                          VAL R4
      217 SETTABLEKS                       R21 R18 K75 ["onWebViewInit"]
      219 DUPCLOSURE                       R21 K76 [PROTO_15]
      220 CAPTURE                          VAL R18
      221 CAPTURE                          VAL R3
      222 CAPTURE                          VAL R4
      223 SETTABLEKS                       R21 R18 K77 ["onFallbackToLuaUi"]
      225 DUPCLOSURE                       R21 K78 [PROTO_16]
      226 CAPTURE                          VAL R18
      227 SETTABLEKS                       R21 R18 K79 ["setInitialToolboxTab"]
      229 DUPCLOSURE                       R21 K80 [PROTO_18]
      230 CAPTURE                          VAL R18
      231 CAPTURE                          VAL R13
      232 CAPTURE                          VAL R3
      233 CAPTURE                          VAL R4
      234 SETTABLEKS                       R21 R18 K81 ["setToolboxInitTimestamp"]
      236 DUPCLOSURE                       R21 K82 [PROTO_19]
      237 CAPTURE                          VAL R18
      238 SETTABLEKS                       R21 R18 K83 ["onStoreTabOpened"]
      240 DUPCLOSURE                       R21 K84 [PROTO_20]
      241 CAPTURE                          VAL R18
      242 SETTABLEKS                       R21 R18 K85 ["logFirstLuaAssetImpression"]
      244 DUPCLOSURE                       R21 K86 [PROTO_21]
      245 CAPTURE                          VAL R18
      246 CAPTURE                          VAL R3
      247 CAPTURE                          VAL R4
      248 SETTABLEKS                       R21 R18 K87 ["logFirstStoreAssetImpression"]
      250 DUPCLOSURE                       R21 K88 [PROTO_22]
      251 CAPTURE                          VAL R18
      252 CAPTURE                          VAL R3
      253 SETTABLEKS                       R21 R18 K89 ["onToolboxTabChanged"]
      255 MOVE                             R21 R11
      256 CALL                             R21 0 1
      257 JUMPIFNOT                        R21 ; [+3]
      258 DUPTABLE                         R21 K93 [{["Start"] = "Start", ["Success"] = "Success", ["Failure"] = "Failure"}]
      259 SETTABLEKS                       R21 R18 K94 ["Status"]
      261 DUPCLOSURE                       R21 K95 [PROTO_23]
      262 CAPTURE                          VAL R3
      263 CAPTURE                          VAL R18
      264 CAPTURE                          VAL R6
      265 CAPTURE                          VAL R8
      266 CAPTURE                          VAL R19
      267 SETTABLEKS                       R21 R18 K96 ["onTermSearchedWithoutInsertion"]
      269 DUPCLOSURE                       R21 K97 [PROTO_24]
      270 CAPTURE                          VAL R3
      271 CAPTURE                          VAL R18
      272 CAPTURE                          VAL R6
      273 CAPTURE                          VAL R8
      274 CAPTURE                          VAL R9
      275 CAPTURE                          VAL R19
      276 SETTABLEKS                       R21 R18 K98 ["onCreatorSearched"]
      278 DUPCLOSURE                       R21 K99 [PROTO_25]
      279 CAPTURE                          VAL R3
      280 CAPTURE                          VAL R18
      281 CAPTURE                          VAL R6
      282 CAPTURE                          VAL R8
      283 CAPTURE                          VAL R19
      284 SETTABLEKS                       R21 R18 K100 ["onTryAsset"]
      286 DUPCLOSURE                       R21 K101 [PROTO_26]
      287 CAPTURE                          VAL R3
      288 CAPTURE                          VAL R18
      289 CAPTURE                          VAL R6
      290 CAPTURE                          VAL R8
      291 CAPTURE                          VAL R19
      292 SETTABLEKS                       R21 R18 K102 ["onTryAssetFailure"]
      294 DUPCLOSURE                       R21 K103 [PROTO_27]
      295 CAPTURE                          VAL R3
      296 CAPTURE                          VAL R18
      297 CAPTURE                          VAL R6
      298 CAPTURE                          VAL R8
      299 CAPTURE                          VAL R19
      300 SETTABLEKS                       R21 R18 K104 ["onSearchOptionsOpened"]
      302 DUPCLOSURE                       R21 K105 [PROTO_28]
      303 CAPTURE                          VAL R3
      304 CAPTURE                          VAL R18
      305 CAPTURE                          VAL R6
      306 CAPTURE                          VAL R19
      307 SETTABLEKS                       R21 R18 K106 ["onCategorySelected"]
      309 DUPCLOSURE                       R21 K107 [PROTO_29]
      310 CAPTURE                          VAL R6
      311 CAPTURE                          VAL R14
      312 CAPTURE                          VAL R8
      313 CAPTURE                          VAL R19
      314 CAPTURE                          VAL R3
      315 CAPTURE                          VAL R18
      316 SETTABLEKS                       R21 R18 K108 ["onAssetInserted"]
      318 DUPCLOSURE                       R21 K109 [PROTO_30]
      319 CAPTURE                          VAL R3
      320 CAPTURE                          VAL R18
      321 CAPTURE                          VAL R6
      322 CAPTURE                          VAL R14
      323 CAPTURE                          VAL R8
      324 CAPTURE                          VAL R19
      325 SETTABLEKS                       R21 R18 K110 ["onAssetDragInserted"]
      327 DUPCLOSURE                       R21 K111 [PROTO_31]
      328 CAPTURE                          VAL R3
      329 CAPTURE                          VAL R18
      330 CAPTURE                          VAL R6
      331 CAPTURE                          VAL R14
      332 CAPTURE                          VAL R8
      333 CAPTURE                          VAL R19
      334 SETTABLEKS                       R21 R18 K112 ["reportDragInsertFinished"]
      336 DUPCLOSURE                       R21 K113 [PROTO_32]
      337 CAPTURE                          VAL R3
      338 CAPTURE                          VAL R18
      339 CAPTURE                          VAL R6
      340 CAPTURE                          VAL R14
      341 CAPTURE                          VAL R8
      342 SETTABLEKS                       R21 R18 K114 ["onPackageNoteCreated"]
      344 DUPCLOSURE                       R21 K115 [PROTO_33]
      345 CAPTURE                          VAL R3
      346 CAPTURE                          VAL R18
      347 CAPTURE                          VAL R6
      348 CAPTURE                          VAL R14
      349 CAPTURE                          VAL R8
      350 SETTABLEKS                       R21 R18 K116 ["onPackageNoteDiscarded"]
      352 DUPCLOSURE                       R21 K117 [PROTO_34]
      353 CAPTURE                          VAL R3
      354 CAPTURE                          VAL R18
      355 CAPTURE                          VAL R6
      356 CAPTURE                          VAL R14
      357 CAPTURE                          VAL R8
      358 SETTABLEKS                       R21 R18 K118 ["onPackageNoteCanceled"]
      360 DUPCLOSURE                       R21 K119 [PROTO_35]
      361 CAPTURE                          VAL R3
      362 SETTABLEKS                       R21 R18 K120 ["incrementToolboxInsertCounter"]
      364 DUPCLOSURE                       R21 K121 [PROTO_36]
      365 CAPTURE                          VAL R3
      366 SETTABLEKS                       R21 R18 K122 ["incrementToolboxCategoryInsertCounter"]
      368 DUPCLOSURE                       R21 K123 [PROTO_37]
      369 CAPTURE                          VAL R3
      370 SETTABLEKS                       R21 R18 K124 ["incrementWorkspaceInsertCounter"]
      372 DUPCLOSURE                       R21 K125 [PROTO_38]
      373 CAPTURE                          VAL R3
      374 SETTABLEKS                       R21 R18 K126 ["incrementUploadAssetSuccess"]
      376 DUPCLOSURE                       R21 K127 [PROTO_39]
      377 CAPTURE                          VAL R3
      378 SETTABLEKS                       R21 R18 K128 ["incrementUploadAssetFailure"]
      380 DUPCLOSURE                       R21 K129 [PROTO_40]
      381 CAPTURE                          VAL R3
      382 SETTABLEKS                       R21 R18 K130 ["onSoundPlayedCounter"]
      384 DUPCLOSURE                       R21 K131 [PROTO_41]
      385 CAPTURE                          VAL R3
      386 SETTABLEKS                       R21 R18 K132 ["onSoundPausedCounter"]
      388 DUPCLOSURE                       R21 K133 [PROTO_42]
      389 CAPTURE                          VAL R3
      390 SETTABLEKS                       R21 R18 K134 ["sendResultToKibana"]
      392 DUPCLOSURE                       R21 K135 [PROTO_43]
      393 CAPTURE                          VAL R3
      394 SETTABLEKS                       R21 R18 K136 ["incrementAssetImpressionCounter"]
      396 DUPCLOSURE                       R21 K137 [PROTO_44]
      397 CAPTURE                          VAL R3
      398 CAPTURE                          VAL R18
      399 CAPTURE                          VAL R6
      400 CAPTURE                          VAL R8
      401 CAPTURE                          VAL R19
      402 SETTABLEKS                       R21 R18 K138 ["onAssetPreviewSelected"]
      404 DUPCLOSURE                       R21 K139 [PROTO_45]
      405 CAPTURE                          VAL R3
      406 CAPTURE                          VAL R18
      407 CAPTURE                          VAL R6
      408 CAPTURE                          VAL R8
      409 CAPTURE                          VAL R19
      410 SETTABLEKS                       R21 R18 K140 ["onAssetPreviewEnded"]
      412 DUPCLOSURE                       R21 K141 [PROTO_46]
      413 CAPTURE                          VAL R3
      414 CAPTURE                          VAL R18
      415 CAPTURE                          VAL R6
      416 CAPTURE                          VAL R8
      417 CAPTURE                          VAL R19
      418 SETTABLEKS                       R21 R18 K142 ["onAssetInsertedFromAssetPreview"]
      420 DUPCLOSURE                       R21 K143 [PROTO_47]
      421 CAPTURE                          VAL R18
      422 CAPTURE                          VAL R3
      423 SETTABLEKS                       R21 R18 K144 ["onPluginButtonClickOpen"]
      425 DUPCLOSURE                       R21 K145 [PROTO_48]
      426 CAPTURE                          VAL R18
      427 CAPTURE                          VAL R3
      428 SETTABLEKS                       R21 R18 K146 ["onPluginButtonClickClose"]
      430 DUPCLOSURE                       R21 K147 [PROTO_49]
      431 CAPTURE                          VAL R18
      432 CAPTURE                          VAL R3
      433 SETTABLEKS                       R21 R18 K148 ["onToolboxDisplayed"]
      435 DUPCLOSURE                       R21 K149 [PROTO_50]
      436 CAPTURE                          VAL R18
      437 CAPTURE                          VAL R3
      438 SETTABLEKS                       R21 R18 K150 ["onToolboxHidden"]
      440 DUPCLOSURE                       R21 K151 [PROTO_51]
      441 CAPTURE                          VAL R18
      442 CAPTURE                          VAL R3
      443 SETTABLEKS                       R21 R18 K152 ["onToolboxMounted"]
      445 DUPCLOSURE                       R21 K153 [PROTO_52]
      446 CAPTURE                          VAL R18
      447 CAPTURE                          VAL R3
      448 SETTABLEKS                       R21 R18 K154 ["onToolboxUnmounted"]
      450 DUPCLOSURE                       R21 K155 [PROTO_53]
      451 CAPTURE                          VAL R18
      452 CAPTURE                          VAL R3
      453 SETTABLEKS                       R21 R18 K156 ["onToolboxInitialSizing"]
      455 DUPCLOSURE                       R21 K157 [PROTO_54]
      456 CAPTURE                          VAL R3
      457 CAPTURE                          VAL R18
      458 CAPTURE                          VAL R6
      459 CAPTURE                          VAL R8
      460 CAPTURE                          VAL R19
      461 SETTABLEKS                       R21 R18 K158 ["onContextMenuClicked"]
      463 DUPCLOSURE                       R21 K159 [PROTO_55]
      464 CAPTURE                          VAL R3
      465 CAPTURE                          VAL R18
      466 CAPTURE                          VAL R6
      467 CAPTURE                          VAL R19
      468 SETTABLEKS                       R21 R18 K160 ["openedFromPluginManagement"]
      470 DUPCLOSURE                       R21 K161 [PROTO_56]
      471 CAPTURE                          VAL R3
      472 CAPTURE                          VAL R18
      473 CAPTURE                          VAL R6
      474 CAPTURE                          VAL R19
      475 SETTABLEKS                       R21 R18 K162 ["openedExternallyByAssetType"]
      477 DUPCLOSURE                       R21 K163 [PROTO_57]
      478 CAPTURE                          VAL R3
      479 CAPTURE                          VAL R18
      480 CAPTURE                          VAL R6
      481 CAPTURE                          VAL R19
      482 SETTABLEKS                       R21 R18 K164 ["reportAssetClicked"]
      484 DUPCLOSURE                       R21 K165 [PROTO_58]
      485 CAPTURE                          VAL R3
      486 CAPTURE                          VAL R18
      487 CAPTURE                          VAL R6
      488 CAPTURE                          VAL R19
      489 CAPTURE                          VAL R14
      490 SETTABLEKS                       R21 R18 K166 ["reportMeshPartFiltered"]
      492 DUPCLOSURE                       R21 K167 [PROTO_59]
      493 CAPTURE                          VAL R3
      494 CAPTURE                          VAL R18
      495 CAPTURE                          VAL R6
      496 CAPTURE                          VAL R8
      497 CAPTURE                          VAL R19
      498 SETTABLEKS                       R21 R18 K168 ["onIdVerificationIconClicked"]
      500 DUPCLOSURE                       R21 K169 [PROTO_60]
      501 CAPTURE                          VAL R12
      502 CAPTURE                          VAL R6
      503 CAPTURE                          VAL R10
      504 CAPTURE                          VAL R19
      505 CAPTURE                          VAL R8
      506 CAPTURE                          VAL R14
      507 CAPTURE                          VAL R18
      508 CAPTURE                          VAL R3
      509 SETTABLEKS                       R21 R18 K170 ["marketplaceSearch"]
      511 DUPCLOSURE                       R21 K171 [PROTO_61]
      512 CAPTURE                          VAL R12
      513 CAPTURE                          VAL R6
      514 CAPTURE                          VAL R19
      515 CAPTURE                          VAL R8
      516 CAPTURE                          VAL R14
      517 CAPTURE                          VAL R3
      518 CAPTURE                          VAL R18
      519 SETTABLEKS                       R21 R18 K172 ["marketplaceAutocompleteSearch"]
      521 DUPCLOSURE                       R21 K173 [PROTO_62]
      522 CAPTURE                          VAL R18
      523 CAPTURE                          VAL R3
      524 SETTABLEKS                       R21 R18 K174 ["onToolboxWidgetInteraction"]
      526 DUPCLOSURE                       R21 K175 [PROTO_63]
      527 CAPTURE                          VAL R6
      528 CAPTURE                          VAL R8
      529 CAPTURE                          VAL R3
      530 CAPTURE                          VAL R18
      531 SETTABLEKS                       R21 R18 K176 ["AnnouncementViewed"]
      533 DUPCLOSURE                       R21 K177 [PROTO_64]
      534 CAPTURE                          VAL R6
      535 CAPTURE                          VAL R8
      536 CAPTURE                          VAL R3
      537 CAPTURE                          VAL R18
      538 SETTABLEKS                       R21 R18 K178 ["AnnouncementLinkClicked"]
      540 DUPCLOSURE                       R21 K179 [PROTO_65]
      541 CAPTURE                          VAL R6
      542 CAPTURE                          VAL R8
      543 CAPTURE                          VAL R3
      544 CAPTURE                          VAL R18
      545 SETTABLEKS                       R21 R18 K180 ["AnnouncementClosed"]
      547 DUPCLOSURE                       R21 K181 [PROTO_66]
      548 CAPTURE                          VAL R6
      549 CAPTURE                          VAL R8
      550 CAPTURE                          VAL R3
      551 CAPTURE                          VAL R18
      552 SETTABLEKS                       R21 R18 K182 ["AnnouncementAcknowledged"]
      554 DUPCLOSURE                       R21 K183 [PROTO_67]
      555 CAPTURE                          VAL R3
      556 CAPTURE                          VAL R18
      557 CAPTURE                          VAL R6
      558 CAPTURE                          VAL R8
      559 SETTABLEKS                       R21 R18 K184 ["AssetMediaItemsUpdated"]
      561 DUPCLOSURE                       R21 K185 [PROTO_68]
      562 CAPTURE                          VAL R3
      563 CAPTURE                          VAL R18
      564 CAPTURE                          VAL R6
      565 CAPTURE                          VAL R8
      566 SETTABLEKS                       R21 R18 K186 ["MarketplaceListViewToggleClicked"]
      568 DUPCLOSURE                       R21 K187 [PROTO_69]
      569 CAPTURE                          VAL R3
      570 CAPTURE                          VAL R18
      571 CAPTURE                          VAL R6
      572 CAPTURE                          VAL R8
      573 SETTABLEKS                       R21 R18 K188 ["MarketplaceAssetRowExpanded"]
      575 DUPCLOSURE                       R21 K189 [PROTO_70]
      576 CAPTURE                          VAL R3
      577 CAPTURE                          VAL R18
      578 CAPTURE                          VAL R6
      579 CAPTURE                          VAL R8
      580 SETTABLEKS                       R21 R18 K190 ["MarketplaceRecentSearchClicked"]
      582 DUPCLOSURE                       R21 K191 [PROTO_71]
      583 CAPTURE                          VAL R3
      584 CAPTURE                          VAL R18
      585 CAPTURE                          VAL R6
      586 CAPTURE                          VAL R8
      587 SETTABLEKS                       R21 R18 K192 ["MarketplaceSearchFilterOpened"]
      589 MOVE                             R21 R11
      590 CALL                             R21 0 1
      591 JUMPIFNOT                        R21 ; [+37]
      592 DUPCLOSURE                       R21 K193 [PROTO_72]
      593 CAPTURE                          VAL R3
      594 CAPTURE                          VAL R18
      595 CAPTURE                          VAL R6
      596 SETTABLEKS                       R21 R18 K194 ["UGCBundleValidationEvent"]
      598 DUPCLOSURE                       R21 K195 [PROTO_73]
      599 CAPTURE                          VAL R3
      600 CAPTURE                          VAL R18
      601 CAPTURE                          VAL R6
      602 SETTABLEKS                       R21 R18 K196 ["UGCUploadRequestOperationIdEvent"]
      604 DUPCLOSURE                       R21 K197 [PROTO_74]
      605 CAPTURE                          VAL R3
      606 CAPTURE                          VAL R18
      607 CAPTURE                          VAL R6
      608 SETTABLEKS                       R21 R18 K198 ["UGCUploadAssetsEvent"]
      610 DUPCLOSURE                       R21 K199 [PROTO_75]
      611 CAPTURE                          VAL R3
      612 CAPTURE                          VAL R18
      613 CAPTURE                          VAL R14
      614 CAPTURE                          VAL R6
      615 SETTABLEKS                       R21 R18 K200 ["UGCIndividualAssetUploadEvent"]
      617 DUPCLOSURE                       R21 K201 [PROTO_76]
      618 CAPTURE                          VAL R3
      619 CAPTURE                          VAL R18
      620 CAPTURE                          VAL R6
      621 SETTABLEKS                       R21 R18 K202 ["UGCUploadRequestBundleCreationStatusEvent"]
      623 DUPCLOSURE                       R21 K203 [PROTO_77]
      624 CAPTURE                          VAL R3
      625 CAPTURE                          VAL R18
      626 CAPTURE                          VAL R6
      627 SETTABLEKS                       R21 R18 K204 ["UGCUploadGetBundleCreationStatusEvent"]
      629 RETURN                           R18 1
