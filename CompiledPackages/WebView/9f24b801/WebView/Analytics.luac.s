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
        0 LOADNIL                          R1
        1 GETIMPORT                        R2 K2 [DateTime.now]
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R2 R2 K3 ["UnixTimestampMillis"]
        6 DUPTABLE                         R3 K13 [{"clientId", "isEditMode", "placeId", "platformId", "studioSid", "timestampMs", "analyticsSid", "pluginUri", "userId"}]
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
       40 GETTABLEKS                       R4 R4 K10 ["analyticsSid"]
       42 SETTABLEKS                       R4 R3 K10 ["analyticsSid"]
       44 GETUPVAL                         R4 0
       45 GETTABLEKS                       R4 R4 K11 ["pluginUri"]
       47 SETTABLEKS                       R4 R3 K11 ["pluginUri"]
       49 GETUPVAL                         R4 1
       50 CALL                             R4 0 1
       51 SETTABLEKS                       R4 R3 K12 ["userId"]
       53 MOVE                             R1 R3
       54 GETUPVAL                         R3 0
       55 GETTABLEKS                       R3 R3 K19 ["WebView"]
       57 GETTABLEKS                       R3 R3 K20 ["initTimestamp"]
       59 JUMPIFNOT                        R3 ; [+8]
       60 GETUPVAL                         R4 0
       61 GETTABLEKS                       R4 R4 K19 ["WebView"]
       63 GETTABLEKS                       R4 R4 K20 ["initTimestamp"]
       65 SUB                              R3 R2 R4
       66 SETTABLEKS                       R3 R1 K21 ["timeMs"]
       68 GETUPVAL                         R3 2
       69 GETTABLEKS                       R3 R3 K22 ["join"]
       71 MOVE                             R4 R1
       72 MOVE                             R5 R0
       73 CALL                             R3 2 -1
       74 RETURN                           R3 -1

PROTO_8:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["getWebViewTrackingAttributes"]
        3 DUPTABLE                         R5 K4 [{"reason", "currentRetryCount", "maxRetryCount"}]
        4 SETTABLEKS                       R1 R5 K1 ["reason"]
        6 SETTABLEKS                       R2 R5 K2 ["currentRetryCount"]
        8 SETTABLEKS                       R3 R5 K3 ["maxRetryCount"]
       10 CALL                             R4 1 1
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R5 R5 K5 ["sendEventDeferred"]
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R6 R6 K6 ["ANALYTICS_TARGET"]
       17 GETTABLEKS                       R6 R6 K7 ["WebView"]
       19 MOVE                             R7 R0
       20 LOADK                            R8 K8 ["WebViewInitRetryV2"]
       21 MOVE                             R9 R4
       22 CALL                             R5 4 0
       23 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["WebView"]
        3 GETIMPORT                        R2 K3 [DateTime.now]
        5 CALL                             R2 0 1
        6 GETTABLEKS                       R2 R2 K4 ["UnixTimestampMillis"]
        8 SETTABLEKS                       R2 R1 K5 ["initTimestamp"]
       10 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["analyticsSid"]
        3 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["WebView"]
        3 GETTABLEKS                       R4 R4 K1 ["onWebViewTimingEventFired"]
        5 JUMPIF                           R4 ; [+7]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K0 ["WebView"]
        9 GETTABLEKS                       R4 R4 K2 ["initTimestamp"]
       11 JUMPIFNOTEQKNIL                  R4 ; [+2]
       13 RETURN                           R0 0
       14 JUMPIFEQKNIL                     R1 ; [+12]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K0 ["WebView"]
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R6 R6 K0 ["WebView"]
       22 GETTABLEKS                       R6 R6 K2 ["initTimestamp"]
       24 SUB                              R5 R1 R6
       25 SETTABLEKS                       R5 R4 K3 ["beforeInteractiveTimeMs"]
       27 JUMPIFEQKNIL                     R2 ; [+12]
       29 GETUPVAL                         R4 0
       30 GETTABLEKS                       R4 R4 K0 ["WebView"]
       32 GETUPVAL                         R6 0
       33 GETTABLEKS                       R6 R6 K0 ["WebView"]
       35 GETTABLEKS                       R6 R6 K2 ["initTimestamp"]
       37 SUB                              R5 R2 R6
       38 SETTABLEKS                       R5 R4 K4 ["afterInteractiveTimeMs"]
       40 JUMPIFEQKNIL                     R3 ; [+12]
       42 GETUPVAL                         R4 0
       43 GETTABLEKS                       R4 R4 K0 ["WebView"]
       45 GETUPVAL                         R6 0
       46 GETTABLEKS                       R6 R6 K0 ["WebView"]
       48 GETTABLEKS                       R6 R6 K2 ["initTimestamp"]
       50 SUB                              R5 R3 R6
       51 SETTABLEKS                       R5 R4 K5 ["loadSuccessTimeMs"]
       53 GETUPVAL                         R4 0
       54 GETTABLEKS                       R4 R4 K6 ["getWebViewTrackingAttributes"]
       56 DUPTABLE                         R5 K7 [{"beforeInteractiveTimeMs", "afterInteractiveTimeMs", "loadSuccessTimeMs"}]
       57 GETUPVAL                         R6 0
       58 GETTABLEKS                       R6 R6 K0 ["WebView"]
       60 GETTABLEKS                       R6 R6 K3 ["beforeInteractiveTimeMs"]
       62 SETTABLEKS                       R6 R5 K3 ["beforeInteractiveTimeMs"]
       64 GETUPVAL                         R6 0
       65 GETTABLEKS                       R6 R6 K0 ["WebView"]
       67 GETTABLEKS                       R6 R6 K4 ["afterInteractiveTimeMs"]
       69 SETTABLEKS                       R6 R5 K4 ["afterInteractiveTimeMs"]
       71 GETUPVAL                         R6 0
       72 GETTABLEKS                       R6 R6 K0 ["WebView"]
       74 GETTABLEKS                       R6 R6 K5 ["loadSuccessTimeMs"]
       76 SETTABLEKS                       R6 R5 K5 ["loadSuccessTimeMs"]
       78 CALL                             R4 1 1
       79 GETUPVAL                         R5 0
       80 GETTABLEKS                       R5 R5 K0 ["WebView"]
       82 GETTABLEKS                       R5 R5 K3 ["beforeInteractiveTimeMs"]
       84 JUMPIFNOT                        R5 ; [+50]
       85 GETUPVAL                         R5 0
       86 GETTABLEKS                       R5 R5 K0 ["WebView"]
       88 GETTABLEKS                       R5 R5 K4 ["afterInteractiveTimeMs"]
       90 JUMPIFNOT                        R5 ; [+44]
       91 GETUPVAL                         R5 0
       92 GETTABLEKS                       R5 R5 K0 ["WebView"]
       94 GETTABLEKS                       R5 R5 K5 ["loadSuccessTimeMs"]
       96 JUMPIFNOT                        R5 ; [+38]
       97 GETUPVAL                         R5 0
       98 GETTABLEKS                       R5 R5 K0 ["WebView"]
      100 LOADB                            R6 1
      101 SETTABLEKS                       R6 R5 K1 ["onWebViewTimingEventFired"]
      103 JUMPIFNOTEQKS                    R0 K8 ["marketplace"] ; [+19]
      105 GETUPVAL                         R5 0
      106 GETTABLEKS                       R5 R5 K9 ["analyticsSid"]
      108 SETTABLEKS                       R5 R4 K10 ["toolboxSid"]
      110 GETUPVAL                         R5 1
      111 GETTABLEKS                       R5 R5 K11 ["sendEventDeferred"]
      113 GETUPVAL                         R6 2
      114 GETTABLEKS                       R6 R6 K12 ["ANALYTICS_TARGET"]
      116 GETTABLEKS                       R6 R6 K0 ["WebView"]
      118 MOVE                             R7 R0
      119 LOADK                            R8 K13 ["CreatorStoreWebViewTiming"]
      120 MOVE                             R9 R4
      121 CALL                             R5 4 0
      122 RETURN                           R0 0
      123 GETUPVAL                         R5 1
      124 GETTABLEKS                       R5 R5 K11 ["sendEventDeferred"]
      126 GETUPVAL                         R6 2
      127 GETTABLEKS                       R6 R6 K12 ["ANALYTICS_TARGET"]
      129 GETTABLEKS                       R6 R6 K0 ["WebView"]
      131 MOVE                             R7 R0
      132 LOADK                            R8 K14 ["WebViewTiming"]
      133 MOVE                             R9 R4
      134 CALL                             R5 4 0
      135 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getWebViewTrackingAttributes"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["sendEventDeferred"]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K2 ["ANALYTICS_TARGET"]
       10 GETTABLEKS                       R3 R3 K3 ["WebView"]
       12 MOVE                             R4 R0
       13 LOADK                            R5 K4 ["WebViewInit"]
       14 MOVE                             R6 R1
       15 CALL                             R2 4 0
       16 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getWebViewTrackingAttributes"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["sendEventDeferred"]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K2 ["ANALYTICS_TARGET"]
       10 GETTABLEKS                       R3 R3 K3 ["WebView"]
       12 MOVE                             R4 R0
       13 LOADK                            R5 K4 ["WebViewMounted"]
       14 MOVE                             R6 R1
       15 CALL                             R2 4 0
       16 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["getWebViewTrackingAttributes"]
        3 DUPTABLE                         R6 K5 [{"prevWidth", "prevHeight", "currentWidth", "currentHeight"}]
        4 SETTABLEKS                       R1 R6 K1 ["prevWidth"]
        6 SETTABLEKS                       R2 R6 K2 ["prevHeight"]
        8 SETTABLEKS                       R3 R6 K3 ["currentWidth"]
       10 SETTABLEKS                       R4 R6 K4 ["currentHeight"]
       12 CALL                             R5 1 1
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R6 R6 K6 ["sendEventDeferred"]
       16 GETUPVAL                         R7 2
       17 GETTABLEKS                       R7 R7 K7 ["ANALYTICS_TARGET"]
       19 GETTABLEKS                       R7 R7 K8 ["WebView"]
       21 MOVE                             R8 R0
       22 LOADK                            R9 K9 ["WebViewInitialSizing"]
       23 MOVE                             R10 R5
       24 CALL                             R6 4 0
       25 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["WebView"]
        3 GETTABLEKS                       R3 R3 K1 ["retryShownEventFired"]
        5 JUMPIFNOT                        R3 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K0 ["WebView"]
       10 LOADB                            R4 1
       11 SETTABLEKS                       R4 R3 K1 ["retryShownEventFired"]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K2 ["getWebViewTrackingAttributes"]
       16 DUPTABLE                         R4 K6 [{"reason", "widgetWidth", "widgetHeight"}]
       17 SETTABLEKS                       R1 R4 K3 ["reason"]
       19 GETTABLEKS                       R5 R2 K7 ["X"]
       21 SETTABLEKS                       R5 R4 K4 ["widgetWidth"]
       23 GETTABLEKS                       R5 R2 K8 ["Y"]
       25 SETTABLEKS                       R5 R4 K5 ["widgetHeight"]
       27 CALL                             R3 1 1
       28 GETUPVAL                         R4 1
       29 GETTABLEKS                       R4 R4 K9 ["sendEventDeferred"]
       31 GETUPVAL                         R5 2
       32 GETTABLEKS                       R5 R5 K10 ["ANALYTICS_TARGET"]
       34 GETTABLEKS                       R5 R5 K0 ["WebView"]
       36 MOVE                             R6 R0
       37 LOADK                            R7 K11 ["WebViewRetryShown"]
       38 MOVE                             R8 R3
       39 CALL                             R4 4 0
       40 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["getWebViewTrackingAttributes"]
        3 DUPTABLE                         R6 K5 [{"reason", "currentRetryCount", "maxRetryCount", "loadingStatus"}]
        4 SETTABLEKS                       R3 R6 K1 ["reason"]
        6 SETTABLEKS                       R1 R6 K2 ["currentRetryCount"]
        8 SETTABLEKS                       R2 R6 K3 ["maxRetryCount"]
       10 SETTABLEKS                       R4 R6 K4 ["loadingStatus"]
       12 CALL                             R5 1 1
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R6 R6 K6 ["sendEventDeferred"]
       16 GETUPVAL                         R7 2
       17 GETTABLEKS                       R7 R7 K7 ["ANALYTICS_TARGET"]
       19 GETTABLEKS                       R7 R7 K8 ["WebView"]
       21 MOVE                             R8 R0
       22 LOADK                            R9 K9 ["WebViewRetryClicked"]
       23 MOVE                             R10 R5
       24 CALL                             R6 4 0
       25 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["WebView"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [script]
        9 LOADK                            R3 K4 ["Packages"]
       10 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [require]
       15 GETTABLEKS                       R3 R1 K7 ["Dash"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R0 K8 ["Util"]
       22 GETTABLEKS                       R4 R4 K9 ["Constants"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R0 K10 ["AnalyticsSenders"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K12 [game]
       32 LOADK                            R7 K13 ["RbxAnalyticsService"]
       33 NAMECALL                         R5 R5 K14 ["GetService"]
       35 CALL                             R5 2 1
       36 GETIMPORT                        R6 K12 [game]
       38 LOADK                            R8 K15 ["HttpService"]
       39 NAMECALL                         R6 R6 K14 ["GetService"]
       41 CALL                             R6 2 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K8 ["Util"]
       46 GETTABLEKS                       R8 R8 K16 ["getUserId"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K8 ["Util"]
       53 GETTABLEKS                       R9 R9 K17 ["getPlaceId"]
       55 CALL                             R8 1 1
       56 DUPCLOSURE                       R9 K18 [PROTO_1]
       57 CAPTURE                          VAL R5
       58 DUPCLOSURE                       R10 K19 [PROTO_3]
       59 CAPTURE                          VAL R5
       60 DUPCLOSURE                       R11 K20 [PROTO_4]
       61 NEWTABLE                         R12 32 0
       63 GETIMPORT                        R13 K12 [game]
       65 LOADK                            R15 K21 ["RunService"]
       66 NAMECALL                         R13 R13 K14 ["GetService"]
       68 CALL                             R13 2 1
       69 NAMECALL                         R13 R13 K22 ["IsEdit"]
       71 CALL                             R13 1 1
       72 DUPCLOSURE                       R14 K23 [PROTO_5]
       73 CAPTURE                          VAL R13
       74 SETTABLEKS                       R14 R12 K24 ["getIsEditMode"]
       76 SETTABLEKS                       R8 R12 K17 ["getPlaceId"]
       78 SETTABLEKS                       R11 R12 K25 ["getPlatformId"]
       80 SETTABLEKS                       R10 R12 K26 ["getClientId"]
       82 SETTABLEKS                       R9 R12 K27 ["getStudioSessionId"]
       84 DUPCLOSURE                       R15 K28 [PROTO_6]
       85 CAPTURE                          VAL R12
       86 SETTABLEKS                       R15 R12 K29 ["setPluginUri"]
       88 LOADB                            R17 0
       89 NAMECALL                         R15 R6 K30 ["GenerateGUID"]
       91 CALL                             R15 2 1
       92 SETTABLEKS                       R15 R12 K31 ["analyticsSid"]
       94 DUPTABLE                         R15 K40 [{["initTimestamp"] = , ["onWebViewTimingEventFired"] = False, ["beforeInteractiveTimeMs"] = , ["afterInteractiveTimeMs"] = , ["loadSuccessTimeMs"] = , ["retryShownEventFired"] = False}]
       95 SETTABLEKS                       R15 R12 K2 ["WebView"]
       97 DUPCLOSURE                       R15 K41 [PROTO_7]
       98 CAPTURE                          VAL R12
       99 CAPTURE                          VAL R7
      100 CAPTURE                          VAL R2
      101 SETTABLEKS                       R15 R12 K42 ["getWebViewTrackingAttributes"]
      103 DUPCLOSURE                       R15 K43 [PROTO_8]
      104 CAPTURE                          VAL R12
      105 CAPTURE                          VAL R4
      106 CAPTURE                          VAL R3
      107 SETTABLEKS                       R15 R12 K44 ["onRetryWebViewInit"]
      109 DUPCLOSURE                       R15 K45 [PROTO_9]
      110 CAPTURE                          VAL R12
      111 SETTABLEKS                       R15 R12 K46 ["setInitTimestamp"]
      113 DUPCLOSURE                       R15 K47 [PROTO_10]
      114 CAPTURE                          VAL R12
      115 SETTABLEKS                       R15 R12 K48 ["setAnalyticsSid"]
      117 DUPCLOSURE                       R15 K49 [PROTO_11]
      118 CAPTURE                          VAL R12
      119 CAPTURE                          VAL R4
      120 CAPTURE                          VAL R3
      121 SETTABLEKS                       R15 R12 K50 ["onWebViewTimingEvent"]
      123 DUPCLOSURE                       R15 K51 [PROTO_12]
      124 CAPTURE                          VAL R12
      125 CAPTURE                          VAL R4
      126 CAPTURE                          VAL R3
      127 SETTABLEKS                       R15 R12 K52 ["onWebViewInit"]
      129 DUPCLOSURE                       R15 K53 [PROTO_13]
      130 CAPTURE                          VAL R12
      131 CAPTURE                          VAL R4
      132 CAPTURE                          VAL R3
      133 SETTABLEKS                       R15 R12 K54 ["onWebViewMounted"]
      135 DUPCLOSURE                       R15 K55 [PROTO_14]
      136 CAPTURE                          VAL R12
      137 CAPTURE                          VAL R4
      138 CAPTURE                          VAL R3
      139 SETTABLEKS                       R15 R12 K56 ["onWebViewInitialSizing"]
      141 DUPCLOSURE                       R15 K57 [PROTO_15]
      142 CAPTURE                          VAL R12
      143 CAPTURE                          VAL R4
      144 CAPTURE                          VAL R3
      145 SETTABLEKS                       R15 R12 K58 ["onWebViewRetryShown"]
      147 DUPCLOSURE                       R15 K59 [PROTO_16]
      148 CAPTURE                          VAL R12
      149 CAPTURE                          VAL R4
      150 CAPTURE                          VAL R3
      151 SETTABLEKS                       R15 R12 K60 ["onWebViewRetryClicked"]
      153 RETURN                           R12 1
