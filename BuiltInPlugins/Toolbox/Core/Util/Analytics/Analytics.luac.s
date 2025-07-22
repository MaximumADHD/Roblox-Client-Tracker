PROTO_0:
  GETUPVAL R0 1
  NAMECALL R0 R0 K0 ["GetSessionId"]
  CALL R0 1 1
  SETUPVAL R0 0
  RETURN R0 0

PROTO_1:
  LOADNIL R0
  GETIMPORT R1 K1 [pcall]
  NEWCLOSURE R2 P0
  CAPTURE REF R0
  CAPTURE UPVAL U0
  CALL R1 1 0
  CLOSEUPVALS R0
  RETURN R0 1

PROTO_2:
  GETUPVAL R0 1
  NAMECALL R0 R0 K0 ["GetClientId"]
  CALL R0 1 1
  SETUPVAL R0 0
  RETURN R0 0

PROTO_3:
  LOADNIL R0
  GETIMPORT R1 K1 [pcall]
  NEWCLOSURE R2 P0
  CAPTURE REF R0
  CAPTURE UPVAL U0
  CALL R1 1 0
  CLOSEUPVALS R0
  RETURN R0 1

PROTO_4:
  LOADN R0 0
  RETURN R0 1

PROTO_5:
  GETUPVAL R0 0
  RETURN R0 1

PROTO_6:
  JUMPIFNOT R0 [+15]
  GETUPVAL R1 0
  LOADK R3 K0 ["%*:%*:%*"]
  GETTABLEKS R5 R0 K1 ["PluginId"]
  GETTABLEKS R6 R0 K2 ["DataModel"]
  GETTABLEKS R7 R0 K3 ["PluginType"]
  NAMECALL R3 R3 K4 ["format"]
  CALL R3 4 1
  MOVE R2 R3
  SETTABLEKS R2 R1 K5 ["pluginUri"]
  RETURN R0 0
  GETUPVAL R1 0
  LOADK R2 K6 ["unknown"]
  SETTABLEKS R2 R1 K5 ["pluginUri"]
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  SETTABLEKS R0 R1 K0 ["eventTarget"]
  RETURN R0 0

PROTO_8:
  LOADNIL R1
  GETIMPORT R3 K2 [DateTime.now]
  CALL R3 0 1
  GETTABLEKS R2 R3 K3 ["UnixTimestampMillis"]
  DUPTABLE R3 K13 [{"clientId", "isEditMode", "placeId", "platformId", "studioSid", "timestampMs", "toolboxSid", "pluginUri", "userId"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K14 ["getClientId"]
  CALL R4 0 1
  SETTABLEKS R4 R3 K4 ["clientId"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K15 ["getIsEditMode"]
  CALL R4 0 1
  SETTABLEKS R4 R3 K5 ["isEditMode"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K16 ["getPlaceId"]
  CALL R4 0 1
  SETTABLEKS R4 R3 K6 ["placeId"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K17 ["getPlatformId"]
  CALL R4 0 1
  SETTABLEKS R4 R3 K7 ["platformId"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K18 ["getStudioSessionId"]
  CALL R4 0 1
  SETTABLEKS R4 R3 K8 ["studioSid"]
  SETTABLEKS R2 R3 K9 ["timestampMs"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K10 ["toolboxSid"]
  SETTABLEKS R4 R3 K10 ["toolboxSid"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K11 ["pluginUri"]
  SETTABLEKS R4 R3 K11 ["pluginUri"]
  GETUPVAL R4 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K12 ["userId"]
  MOVE R1 R3
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K19 ["WebView"]
  GETTABLEKS R3 R4 K20 ["toolboxInitTimestamp"]
  JUMPIFNOT R3 [+8]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K19 ["WebView"]
  GETTABLEKS R4 R5 K20 ["toolboxInitTimestamp"]
  SUB R3 R2 R4
  SETTABLEKS R3 R1 K21 ["timeMs"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K22 ["join"]
  MOVE R4 R1
  MOVE R5 R0
  CALL R3 2 -1
  RETURN R3 -1

PROTO_9:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["getWebViewTrackingAttributes"]
  DUPTABLE R4 K4 [{"reason", "currentRetryCount", "maxRetryCount"}]
  SETTABLEKS R0 R4 K1 ["reason"]
  SETTABLEKS R1 R4 K2 ["currentRetryCount"]
  SETTABLEKS R2 R4 K3 ["maxRetryCount"]
  CALL R3 1 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K5 ["sendEventDeferred"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K6 ["ANALYTICS_TARGET"]
  GETTABLEKS R5 R6 K7 ["WebView"]
  LOADK R6 K8 ["Marketplace"]
  LOADK R7 K9 ["WebViewInitRetry"]
  MOVE R8 R3
  CALL R4 4 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["getWebViewTrackingAttributes"]
  DUPTABLE R5 K5 [{"reason", "currentRetryCount", "maxRetryCount", "loadingStatus"}]
  SETTABLEKS R2 R5 K1 ["reason"]
  SETTABLEKS R0 R5 K2 ["currentRetryCount"]
  SETTABLEKS R1 R5 K3 ["maxRetryCount"]
  SETTABLEKS R3 R5 K4 ["loadingStatus"]
  CALL R4 1 1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K6 ["sendEventDeferred"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K7 ["ANALYTICS_TARGET"]
  GETTABLEKS R6 R7 K8 ["WebView"]
  LOADK R7 K9 ["marketplace"]
  LOADK R8 K10 ["CreatorStoreWebViewRetryClicked"]
  MOVE R9 R4
  CALL R5 4 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["WebView"]
  GETTABLEKS R2 R3 K1 ["retryShownEventFired"]
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["WebView"]
  LOADB R3 1
  SETTABLEKS R3 R2 K1 ["retryShownEventFired"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["getWebViewTrackingAttributes"]
  DUPTABLE R3 K6 [{"reason", "widgetWidth", "widgetHeight"}]
  SETTABLEKS R0 R3 K3 ["reason"]
  GETTABLEKS R4 R1 K7 ["X"]
  SETTABLEKS R4 R3 K4 ["widgetWidth"]
  GETTABLEKS R4 R1 K8 ["Y"]
  SETTABLEKS R4 R3 K5 ["widgetHeight"]
  CALL R2 1 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K9 ["sendEventDeferred"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K10 ["ANALYTICS_TARGET"]
  GETTABLEKS R4 R5 K0 ["WebView"]
  LOADK R5 K11 ["marketplace"]
  LOADK R6 K12 ["CreatorStoreWebViewRetryShown"]
  MOVE R7 R2
  CALL R3 4 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["WebView"]
  GETTABLEKS R3 R4 K1 ["onWebViewTimingEventFired"]
  JUMPIF R3 [+7]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["WebView"]
  GETTABLEKS R3 R4 K2 ["toolboxInitTimestamp"]
  JUMPIFNOTEQKNIL R3 [+2]
  RETURN R0 0
  JUMPIFEQKNIL R0 [+12]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["WebView"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["WebView"]
  GETTABLEKS R5 R6 K2 ["toolboxInitTimestamp"]
  SUB R4 R0 R5
  SETTABLEKS R4 R3 K3 ["beforeInteractiveTimeMs"]
  JUMPIFEQKNIL R1 [+12]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["WebView"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["WebView"]
  GETTABLEKS R5 R6 K2 ["toolboxInitTimestamp"]
  SUB R4 R1 R5
  SETTABLEKS R4 R3 K4 ["afterInteractiveTimeMs"]
  JUMPIFEQKNIL R2 [+12]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["WebView"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["WebView"]
  GETTABLEKS R5 R6 K2 ["toolboxInitTimestamp"]
  SUB R4 R2 R5
  SETTABLEKS R4 R3 K5 ["loadSuccessTimeMs"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K6 ["getWebViewTrackingAttributes"]
  DUPTABLE R4 K7 [{"beforeInteractiveTimeMs", "afterInteractiveTimeMs", "loadSuccessTimeMs"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["WebView"]
  GETTABLEKS R5 R6 K3 ["beforeInteractiveTimeMs"]
  SETTABLEKS R5 R4 K3 ["beforeInteractiveTimeMs"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["WebView"]
  GETTABLEKS R5 R6 K4 ["afterInteractiveTimeMs"]
  SETTABLEKS R5 R4 K4 ["afterInteractiveTimeMs"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["WebView"]
  GETTABLEKS R5 R6 K5 ["loadSuccessTimeMs"]
  SETTABLEKS R5 R4 K5 ["loadSuccessTimeMs"]
  CALL R3 1 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["WebView"]
  GETTABLEKS R4 R5 K3 ["beforeInteractiveTimeMs"]
  JUMPIFNOT R4 [+30]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["WebView"]
  GETTABLEKS R4 R5 K4 ["afterInteractiveTimeMs"]
  JUMPIFNOT R4 [+24]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["WebView"]
  GETTABLEKS R4 R5 K5 ["loadSuccessTimeMs"]
  JUMPIFNOT R4 [+18]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["WebView"]
  LOADB R5 1
  SETTABLEKS R5 R4 K1 ["onWebViewTimingEventFired"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K8 ["sendEventDeferred"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K9 ["ANALYTICS_TARGET"]
  GETTABLEKS R5 R6 K0 ["WebView"]
  LOADK R6 K10 ["marketplace"]
  LOADK R7 K11 ["CreatorStoreWebViewTiming"]
  MOVE R8 R3
  CALL R4 4 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["getWebViewTrackingAttributes"]
  CALL R0 0 1
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["sendEventDeferred"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K2 ["ANALYTICS_TARGET"]
  GETTABLEKS R2 R3 K3 ["WebView"]
  LOADK R3 K4 ["marketplace"]
  LOADK R4 K5 ["CreatorStoreWebViewInit"]
  MOVE R5 R0
  CALL R1 4 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getWebViewTrackingAttributes"]
  DUPTABLE R2 K2 [{"reason"}]
  SETTABLEKS R0 R2 K1 ["reason"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["sendEventDeferred"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K4 ["ANALYTICS_TARGET"]
  GETTABLEKS R3 R4 K5 ["WebView"]
  LOADK R4 K6 ["marketplace"]
  LOADK R5 K7 ["CreatorStoreFallbackToLuaUi"]
  MOVE R6 R1
  CALL R2 4 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["getWebViewTrackingAttributes"]
  DUPTABLE R3 K11 [{"beforeInteractiveTimeMs", "afterInteractiveTimeMs", "loadSuccessTimeMs"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K5 ["WebView"]
  GETTABLEKS R4 R5 K8 ["beforeInteractiveTimeMs"]
  SETTABLEKS R4 R3 K8 ["beforeInteractiveTimeMs"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K5 ["WebView"]
  GETTABLEKS R4 R5 K9 ["afterInteractiveTimeMs"]
  SETTABLEKS R4 R3 K9 ["afterInteractiveTimeMs"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K5 ["WebView"]
  GETTABLEKS R4 R5 K10 ["loadSuccessTimeMs"]
  SETTABLEKS R4 R3 K10 ["loadSuccessTimeMs"]
  CALL R2 1 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K5 ["WebView"]
  GETTABLEKS R3 R4 K12 ["onWebViewTimingEventFired"]
  JUMPIF R3 [+18]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K5 ["WebView"]
  LOADB R4 1
  SETTABLEKS R4 R3 K12 ["onWebViewTimingEventFired"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["sendEventDeferred"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K4 ["ANALYTICS_TARGET"]
  GETTABLEKS R4 R5 K5 ["WebView"]
  LOADK R5 K6 ["marketplace"]
  LOADK R6 K13 ["CreatorStoreWebViewTiming"]
  MOVE R7 R2
  CALL R3 4 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K14 ["setEventTarget"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K4 ["ANALYTICS_TARGET"]
  GETTABLEKS R4 R5 K15 ["Studio"]
  CALL R3 1 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K5 ["WebView"]
  LOADB R4 1
  SETTABLEKS R4 R3 K16 ["didFallbackToLuaUi"]
  RETURN R0 0

PROTO_15:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["WebView"]
  SETTABLEKS R0 R1 K1 ["initialToolboxTab"]
  RETURN R0 0

PROTO_16:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["WebView"]
  GETTABLEKS R0 R1 K1 ["firstLuaAssetImpressionEventFired"]
  JUMPIF R0 [+24]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K2 ["getWebViewTrackingAttributes"]
  DUPTABLE R1 K4 [{"initialToolboxTab"}]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["WebView"]
  GETTABLEKS R2 R3 K3 ["initialToolboxTab"]
  SETTABLEKS R2 R1 K3 ["initialToolboxTab"]
  CALL R0 1 1
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K5 ["sendEventDeferred"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K6 ["ANALYTICS_TARGET"]
  GETTABLEKS R2 R3 K7 ["Studio"]
  LOADK R3 K8 ["marketplace"]
  LOADK R4 K9 ["ToolboxLuaNoAssetImpressionFired"]
  MOVE R5 R0
  CALL R1 4 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["WebView"]
  GETIMPORT R3 K3 [DateTime.now]
  CALL R3 0 1
  GETTABLEKS R2 R3 K4 ["UnixTimestampMillis"]
  SETTABLEKS R2 R1 K5 ["toolboxInitTimestamp"]
  JUMPIF R0 [+8]
  GETIMPORT R1 K8 [task.delay]
  GETUPVAL R2 1
  DUPCLOSURE R3 K9 [PROTO_16]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CALL R1 2 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["WebView"]
  GETTABLEKS R0 R1 K1 ["firstStoreAssetImpressionEventFired"]
  JUMPIFNOT R0 [+1]
  RETURN R0 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["WebView"]
  GETIMPORT R2 K4 [DateTime.now]
  CALL R2 0 1
  GETTABLEKS R1 R2 K5 ["UnixTimestampMillis"]
  SETTABLEKS R1 R0 K6 ["storeTabOpenTimestamp"]
  RETURN R0 0

PROTO_19:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["WebView"]
  LOADB R1 1
  SETTABLEKS R1 R0 K1 ["firstLuaAssetImpressionEventFired"]
  RETURN R0 0

PROTO_20:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["WebView"]
  GETTABLEKS R1 R2 K1 ["firstStoreAssetImpressionEventFired"]
  JUMPIF R1 [+6]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["WebView"]
  GETTABLEKS R1 R2 K2 ["storeTabOpenTimestamp"]
  JUMPIF R1 [+1]
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["WebView"]
  LOADB R2 1
  SETTABLEKS R2 R1 K1 ["firstStoreAssetImpressionEventFired"]
  GETIMPORT R3 K5 [DateTime.now]
  CALL R3 0 1
  GETTABLEKS R2 R3 K6 ["UnixTimestampMillis"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["WebView"]
  GETTABLEKS R3 R4 K2 ["storeTabOpenTimestamp"]
  SUB R1 R2 R3
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K7 ["getWebViewTrackingAttributes"]
  DUPTABLE R3 K12 [{"afterStoreTabOpenTimeMs", "isWebViewAssetImpression", "didFallbackToLuaUi", "initialToolboxTab"}]
  SETTABLEKS R1 R3 K8 ["afterStoreTabOpenTimeMs"]
  SETTABLEKS R0 R3 K9 ["isWebViewAssetImpression"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["WebView"]
  GETTABLEKS R4 R5 K10 ["didFallbackToLuaUi"]
  SETTABLEKS R4 R3 K10 ["didFallbackToLuaUi"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["WebView"]
  GETTABLEKS R4 R5 K11 ["initialToolboxTab"]
  SETTABLEKS R4 R3 K11 ["initialToolboxTab"]
  CALL R2 1 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K13 ["sendEventDeferred"]
  JUMPIFNOT R0 [+6]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K14 ["ANALYTICS_TARGET"]
  GETTABLEKS R4 R5 K0 ["WebView"]
  JUMP [+5]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K14 ["ANALYTICS_TARGET"]
  GETTABLEKS R4 R5 K15 ["Studio"]
  LOADK R5 K16 ["marketplace"]
  LOADK R6 K17 ["CreatorStoreFirstAssetImpression"]
  MOVE R7 R2
  CALL R3 4 0
  RETURN R0 0

PROTO_21:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["getWebViewTrackingAttributes"]
  DUPTABLE R3 K3 [{"newToolboxTab", "oldToolboxTab"}]
  SETTABLEKS R1 R3 K1 ["newToolboxTab"]
  SETTABLEKS R0 R3 K2 ["oldToolboxTab"]
  CALL R2 1 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["sendEventDeferred"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K5 ["eventTarget"]
  LOADK R5 K6 ["Marketplace"]
  LOADK R6 K7 ["ToolboxTabChanged"]
  MOVE R7 R2
  CALL R3 4 0
  RETURN R0 0

PROTO_22:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["sendEventImmediately"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["eventTarget"]
  LOADK R4 K2 ["toolbox"]
  LOADK R5 K3 ["termSearchedWithoutInsertion"]
  DUPTABLE R6 K10 [{"categoryName", "searchTerm", "studioSid", "clientId", "userId", "isEditMode"}]
  SETTABLEKS R0 R6 K4 ["categoryName"]
  SETTABLEKS R1 R6 K5 ["searchTerm"]
  LOADNIL R8
  GETIMPORT R9 K12 [pcall]
  NEWCLOSURE R10 P0
  CAPTURE REF R8
  CAPTURE UPVAL U2
  CALL R9 1 0
  MOVE R7 R8
  CLOSEUPVALS R8
  SETTABLEKS R7 R6 K6 ["studioSid"]
  LOADNIL R8
  GETIMPORT R9 K12 [pcall]
  NEWCLOSURE R10 P1
  CAPTURE REF R8
  CAPTURE UPVAL U2
  CALL R9 1 0
  MOVE R7 R8
  CLOSEUPVALS R8
  SETTABLEKS R7 R6 K7 ["clientId"]
  GETUPVAL R7 3
  CALL R7 0 1
  SETTABLEKS R7 R6 K8 ["userId"]
  GETUPVAL R7 4
  SETTABLEKS R7 R6 K9 ["isEditMode"]
  CALL R2 4 0
  RETURN R0 0

PROTO_23:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["sendEventImmediately"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["eventTarget"]
  LOADK R5 K2 ["toolbox"]
  LOADK R6 K3 ["creatorSearched"]
  DUPTABLE R7 K11 [{"searchTerm", "creatorId", "studioSid", "clientId", "userId", "type", "isEditMode"}]
  SETTABLEKS R0 R7 K4 ["searchTerm"]
  SETTABLEKS R1 R7 K5 ["creatorId"]
  LOADNIL R9
  GETIMPORT R10 K13 [pcall]
  NEWCLOSURE R11 P0
  CAPTURE REF R9
  CAPTURE UPVAL U2
  CALL R10 1 0
  MOVE R8 R9
  CLOSEUPVALS R9
  SETTABLEKS R8 R7 K6 ["studioSid"]
  LOADNIL R9
  GETIMPORT R10 K13 [pcall]
  NEWCLOSURE R11 P1
  CAPTURE REF R9
  CAPTURE UPVAL U2
  CALL R10 1 0
  MOVE R8 R9
  CLOSEUPVALS R9
  SETTABLEKS R8 R7 K7 ["clientId"]
  GETUPVAL R8 3
  CALL R8 0 1
  SETTABLEKS R8 R7 K8 ["userId"]
  GETUPVAL R9 4
  CALL R9 0 1
  JUMPIFNOT R9 [+2]
  MOVE R8 R2
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K9 ["type"]
  GETUPVAL R8 5
  SETTABLEKS R8 R7 K10 ["isEditMode"]
  CALL R3 4 0
  RETURN R0 0

PROTO_24:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["sendEventImmediately"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["eventTarget"]
  LOADK R3 K2 ["toolbox"]
  LOADK R4 K3 ["tryAsset"]
  DUPTABLE R5 K9 [{"assetId", "studioSid", "clientId", "userId", "isEditMode"}]
  SETTABLEKS R0 R5 K4 ["assetId"]
  LOADNIL R7
  GETIMPORT R8 K11 [pcall]
  NEWCLOSURE R9 P0
  CAPTURE REF R7
  CAPTURE UPVAL U2
  CALL R8 1 0
  MOVE R6 R7
  CLOSEUPVALS R7
  SETTABLEKS R6 R5 K5 ["studioSid"]
  LOADNIL R7
  GETIMPORT R8 K11 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE REF R7
  CAPTURE UPVAL U2
  CALL R8 1 0
  MOVE R6 R7
  CLOSEUPVALS R7
  SETTABLEKS R6 R5 K6 ["clientId"]
  GETUPVAL R6 3
  CALL R6 0 1
  SETTABLEKS R6 R5 K7 ["userId"]
  GETUPVAL R6 4
  SETTABLEKS R6 R5 K8 ["isEditMode"]
  CALL R1 4 0
  RETURN R0 0

PROTO_25:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["sendEventImmediately"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["eventTarget"]
  LOADK R3 K2 ["toolbox"]
  LOADK R4 K3 ["tryAssetFailure"]
  DUPTABLE R5 K9 [{"assetId", "studioSid", "clientId", "userId", "isEditMode"}]
  SETTABLEKS R0 R5 K4 ["assetId"]
  LOADNIL R7
  GETIMPORT R8 K11 [pcall]
  NEWCLOSURE R9 P0
  CAPTURE REF R7
  CAPTURE UPVAL U2
  CALL R8 1 0
  MOVE R6 R7
  CLOSEUPVALS R7
  SETTABLEKS R6 R5 K5 ["studioSid"]
  LOADNIL R7
  GETIMPORT R8 K11 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE REF R7
  CAPTURE UPVAL U2
  CALL R8 1 0
  MOVE R6 R7
  CLOSEUPVALS R7
  SETTABLEKS R6 R5 K6 ["clientId"]
  GETUPVAL R6 3
  CALL R6 0 1
  SETTABLEKS R6 R5 K7 ["userId"]
  GETUPVAL R6 4
  SETTABLEKS R6 R5 K8 ["isEditMode"]
  CALL R1 4 0
  RETURN R0 0

PROTO_26:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["sendEventImmediately"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["eventTarget"]
  LOADK R2 K2 ["toolbox"]
  LOADK R3 K3 ["searchOptionsOpened"]
  DUPTABLE R4 K8 [{"studioSid", "clientId", "userId", "isEditMode"}]
  LOADNIL R6
  GETIMPORT R7 K10 [pcall]
  NEWCLOSURE R8 P0
  CAPTURE REF R6
  CAPTURE UPVAL U2
  CALL R7 1 0
  MOVE R5 R6
  CLOSEUPVALS R6
  SETTABLEKS R5 R4 K4 ["studioSid"]
  LOADNIL R6
  GETIMPORT R7 K10 [pcall]
  NEWCLOSURE R8 P1
  CAPTURE REF R6
  CAPTURE UPVAL U2
  CALL R7 1 0
  MOVE R5 R6
  CLOSEUPVALS R6
  SETTABLEKS R5 R4 K5 ["clientId"]
  GETUPVAL R5 3
  CALL R5 0 1
  SETTABLEKS R5 R4 K6 ["userId"]
  GETUPVAL R5 4
  SETTABLEKS R5 R4 K7 ["isEditMode"]
  CALL R0 4 0
  RETURN R0 0

PROTO_27:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["sendEventImmediately"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["eventTarget"]
  LOADK R4 K2 ["click"]
  LOADK R5 K3 ["toolboxCategorySelection"]
  DUPTABLE R6 K9 [{"oldCategory", "newCategory", "studioSid", "clientId", "isEditMode"}]
  SETTABLEKS R0 R6 K4 ["oldCategory"]
  SETTABLEKS R1 R6 K5 ["newCategory"]
  LOADNIL R8
  GETIMPORT R9 K11 [pcall]
  NEWCLOSURE R10 P0
  CAPTURE REF R8
  CAPTURE UPVAL U2
  CALL R9 1 0
  MOVE R7 R8
  CLOSEUPVALS R8
  SETTABLEKS R7 R6 K6 ["studioSid"]
  LOADNIL R8
  GETIMPORT R9 K11 [pcall]
  NEWCLOSURE R10 P1
  CAPTURE REF R8
  CAPTURE UPVAL U2
  CALL R9 1 0
  MOVE R7 R8
  CLOSEUPVALS R8
  SETTABLEKS R7 R6 K7 ["clientId"]
  GETUPVAL R7 3
  SETTABLEKS R7 R6 K8 ["isEditMode"]
  CALL R2 4 0
  RETURN R0 0

PROTO_28:
  DUPTABLE R5 K9 [{"assetId", "searchText", "assetIndex", "currentCategory", "studioSid", "clientId", "placeId", "userId", "isEditMode"}]
  SETTABLEKS R0 R5 K0 ["assetId"]
  SETTABLEKS R1 R5 K1 ["searchText"]
  SETTABLEKS R2 R5 K2 ["assetIndex"]
  SETTABLEKS R3 R5 K3 ["currentCategory"]
  LOADNIL R7
  GETIMPORT R8 K11 [pcall]
  NEWCLOSURE R9 P0
  CAPTURE REF R7
  CAPTURE UPVAL U0
  CALL R8 1 0
  MOVE R6 R7
  CLOSEUPVALS R7
  SETTABLEKS R6 R5 K4 ["studioSid"]
  LOADNIL R7
  GETIMPORT R8 K11 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE REF R7
  CAPTURE UPVAL U0
  CALL R8 1 0
  MOVE R6 R7
  CLOSEUPVALS R7
  SETTABLEKS R6 R5 K5 ["clientId"]
  GETUPVAL R6 1
  CALL R6 0 1
  SETTABLEKS R6 R5 K6 ["placeId"]
  GETUPVAL R6 2
  CALL R6 0 1
  SETTABLEKS R6 R5 K7 ["userId"]
  GETUPVAL R6 3
  SETTABLEKS R6 R5 K8 ["isEditMode"]
  SETTABLEKS R4 R5 K12 ["layoutMode"]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K13 ["sendEventImmediately"]
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K14 ["eventTarget"]
  LOADK R8 K15 ["click"]
  LOADK R9 K16 ["toolboxInsert"]
  MOVE R10 R5
  CALL R6 4 0
  RETURN R0 0

PROTO_29:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["sendEventImmediately"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K1 ["eventTarget"]
  LOADK R6 K2 ["drag"]
  LOADK R7 K3 ["toolboxInsert"]
  DUPTABLE R8 K13 [{"assetId", "searchText", "assetIndex", "currentCategory", "studioSid", "clientId", "placeId", "userId", "isEditMode"}]
  SETTABLEKS R0 R8 K4 ["assetId"]
  SETTABLEKS R1 R8 K5 ["searchText"]
  SETTABLEKS R2 R8 K6 ["assetIndex"]
  SETTABLEKS R3 R8 K7 ["currentCategory"]
  LOADNIL R10
  GETIMPORT R11 K15 [pcall]
  NEWCLOSURE R12 P0
  CAPTURE REF R10
  CAPTURE UPVAL U2
  CALL R11 1 0
  MOVE R9 R10
  CLOSEUPVALS R10
  SETTABLEKS R9 R8 K8 ["studioSid"]
  LOADNIL R10
  GETIMPORT R11 K15 [pcall]
  NEWCLOSURE R12 P1
  CAPTURE REF R10
  CAPTURE UPVAL U2
  CALL R11 1 0
  MOVE R9 R10
  CLOSEUPVALS R10
  SETTABLEKS R9 R8 K9 ["clientId"]
  GETUPVAL R9 3
  CALL R9 0 1
  SETTABLEKS R9 R8 K10 ["placeId"]
  GETUPVAL R9 4
  CALL R9 0 1
  SETTABLEKS R9 R8 K11 ["userId"]
  GETUPVAL R9 5
  SETTABLEKS R9 R8 K12 ["isEditMode"]
  CALL R4 4 0
  RETURN R0 0

PROTO_30:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["sendEventImmediately"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["eventTarget"]
  LOADK R4 K2 ["Marketplace"]
  LOADK R5 K3 ["DragInsertFinished"]
  DUPTABLE R6 K11 [{"assetId", "assetTypeId", "studioSid", "clientId", "placeId", "userId", "isEditMode"}]
  SETTABLEKS R0 R6 K4 ["assetId"]
  SETTABLEKS R1 R6 K5 ["assetTypeId"]
  LOADNIL R8
  GETIMPORT R9 K13 [pcall]
  NEWCLOSURE R10 P0
  CAPTURE REF R8
  CAPTURE UPVAL U2
  CALL R9 1 0
  MOVE R7 R8
  CLOSEUPVALS R8
  SETTABLEKS R7 R6 K6 ["studioSid"]
  LOADNIL R8
  GETIMPORT R9 K13 [pcall]
  NEWCLOSURE R10 P1
  CAPTURE REF R8
  CAPTURE UPVAL U2
  CALL R9 1 0
  MOVE R7 R8
  CLOSEUPVALS R8
  SETTABLEKS R7 R6 K7 ["clientId"]
  GETUPVAL R7 3
  CALL R7 0 1
  SETTABLEKS R7 R6 K8 ["placeId"]
  GETUPVAL R7 4
  CALL R7 0 1
  SETTABLEKS R7 R6 K9 ["userId"]
  GETUPVAL R7 5
  SETTABLEKS R7 R6 K10 ["isEditMode"]
  CALL R2 4 0
  RETURN R0 0

PROTO_31:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["sendEventImmediately"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["eventTarget"]
  LOADK R5 K2 ["AssetConfig"]
  LOADK R6 K3 ["PackageNoteCreated"]
  DUPTABLE R7 K11 [{"assetId", "assetVersionNumber", "message", "studioSid", "clientId", "placeId", "userId"}]
  SETTABLEKS R0 R7 K4 ["assetId"]
  SETTABLEKS R1 R7 K5 ["assetVersionNumber"]
  SETTABLEKS R2 R7 K6 ["message"]
  LOADNIL R9
  GETIMPORT R10 K13 [pcall]
  NEWCLOSURE R11 P0
  CAPTURE REF R9
  CAPTURE UPVAL U2
  CALL R10 1 0
  MOVE R8 R9
  CLOSEUPVALS R9
  SETTABLEKS R8 R7 K7 ["studioSid"]
  LOADNIL R9
  GETIMPORT R10 K13 [pcall]
  NEWCLOSURE R11 P1
  CAPTURE REF R9
  CAPTURE UPVAL U2
  CALL R10 1 0
  MOVE R8 R9
  CLOSEUPVALS R9
  SETTABLEKS R8 R7 K8 ["clientId"]
  GETUPVAL R8 3
  CALL R8 0 1
  SETTABLEKS R8 R7 K9 ["placeId"]
  GETUPVAL R8 4
  CALL R8 0 1
  SETTABLEKS R8 R7 K10 ["userId"]
  CALL R3 4 0
  RETURN R0 0

PROTO_32:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["sendEventImmediately"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["eventTarget"]
  LOADK R5 K2 ["AssetConfig"]
  LOADK R6 K3 ["PackageNoteDiscarded"]
  DUPTABLE R7 K11 [{"assetId", "assetVersionNumber", "message", "studioSid", "clientId", "placeId", "userId"}]
  SETTABLEKS R0 R7 K4 ["assetId"]
  SETTABLEKS R1 R7 K5 ["assetVersionNumber"]
  SETTABLEKS R2 R7 K6 ["message"]
  LOADNIL R9
  GETIMPORT R10 K13 [pcall]
  NEWCLOSURE R11 P0
  CAPTURE REF R9
  CAPTURE UPVAL U2
  CALL R10 1 0
  MOVE R8 R9
  CLOSEUPVALS R9
  SETTABLEKS R8 R7 K7 ["studioSid"]
  LOADNIL R9
  GETIMPORT R10 K13 [pcall]
  NEWCLOSURE R11 P1
  CAPTURE REF R9
  CAPTURE UPVAL U2
  CALL R10 1 0
  MOVE R8 R9
  CLOSEUPVALS R9
  SETTABLEKS R8 R7 K8 ["clientId"]
  GETUPVAL R8 3
  CALL R8 0 1
  SETTABLEKS R8 R7 K9 ["placeId"]
  GETUPVAL R8 4
  CALL R8 0 1
  SETTABLEKS R8 R7 K10 ["userId"]
  CALL R3 4 0
  RETURN R0 0

PROTO_33:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["sendEventImmediately"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["eventTarget"]
  LOADK R3 K2 ["AssetConfig"]
  LOADK R4 K3 ["PackageNoteCanceled"]
  DUPTABLE R5 K9 [{"assetId", "studioSid", "clientId", "placeId", "userId"}]
  SETTABLEKS R0 R5 K4 ["assetId"]
  LOADNIL R7
  GETIMPORT R8 K11 [pcall]
  NEWCLOSURE R9 P0
  CAPTURE REF R7
  CAPTURE UPVAL U2
  CALL R8 1 0
  MOVE R6 R7
  CLOSEUPVALS R7
  SETTABLEKS R6 R5 K5 ["studioSid"]
  LOADNIL R7
  GETIMPORT R8 K11 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE REF R7
  CAPTURE UPVAL U2
  CALL R8 1 0
  MOVE R6 R7
  CLOSEUPVALS R7
  SETTABLEKS R6 R5 K6 ["clientId"]
  GETUPVAL R6 3
  CALL R6 0 1
  SETTABLEKS R6 R5 K7 ["placeId"]
  GETUPVAL R6 4
  CALL R6 0 1
  SETTABLEKS R6 R5 K8 ["userId"]
  CALL R1 4 0
  RETURN R0 0

PROTO_34:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["reportCounter"]
  LOADK R2 K1 ["Studio.ToolboxInsert.%s"]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R5 R0
  GETIMPORT R4 K3 [tostring]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_35:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["reportCounter"]
  LOADK R2 K1 ["Studio.ToolboxCategoryInsert.%s"]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R5 R0
  GETIMPORT R4 K3 [tostring]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_36:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["reportCounter"]
  LOADK R1 K1 ["StudioWorkspaceInsertCounter"]
  CALL R0 1 0
  RETURN R0 0

PROTO_37:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["reportCounter"]
  LOADK R2 K1 ["Studio.Upload.%s.Success"]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R5 R0
  GETIMPORT R4 K3 [tostring]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_38:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["reportCounter"]
  LOADK R2 K1 ["Studio.Upload.%s.Failure"]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R5 R0
  GETIMPORT R4 K3 [tostring]
  CALL R4 1 1
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_39:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["reportCounter"]
  LOADK R1 K1 ["Studio.ToolboxAudio.Played"]
  CALL R0 1 0
  RETURN R0 0

PROTO_40:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["reportCounter"]
  LOADK R1 K1 ["Studio.ToolboxAudio.Paused"]
  CALL R0 1 0
  RETURN R0 0

PROTO_41:
  GETUPVAL R2 0
  FASTCALL1 ASSERT R2 [+2]
  GETIMPORT R1 K1 [assert]
  CALL R1 1 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["sendResultToKibana"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_42:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["reportCounter"]
  LOADK R1 K1 ["Studio.ToolboxAsset.Impression"]
  CALL R0 1 0
  RETURN R0 0

PROTO_43:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["sendEventDeferred"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["eventTarget"]
  LOADK R3 K2 ["toolbox"]
  LOADK R4 K3 ["assetPreviewOpen"]
  DUPTABLE R5 K9 [{"assetId", "clientId", "userId", "platformId", "isEditMode"}]
  SETTABLEKS R0 R5 K4 ["assetId"]
  LOADNIL R7
  GETIMPORT R8 K11 [pcall]
  NEWCLOSURE R9 P0
  CAPTURE REF R7
  CAPTURE UPVAL U2
  CALL R8 1 0
  MOVE R6 R7
  CLOSEUPVALS R7
  SETTABLEKS R6 R5 K5 ["clientId"]
  GETUPVAL R6 3
  CALL R6 0 1
  SETTABLEKS R6 R5 K6 ["userId"]
  LOADN R6 0
  SETTABLEKS R6 R5 K7 ["platformId"]
  GETUPVAL R6 4
  SETTABLEKS R6 R5 K8 ["isEditMode"]
  CALL R1 4 0
  RETURN R0 0

PROTO_44:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["sendEventDeferred"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["eventTarget"]
  LOADK R4 K2 ["toolbox"]
  LOADK R5 K3 ["modelPreviewInteractionDuration"]
  DUPTABLE R6 K10 [{"assetId", "time", "clientId", "userId", "platformId", "isEditMode"}]
  SETTABLEKS R0 R6 K4 ["assetId"]
  SETTABLEKS R1 R6 K5 ["time"]
  LOADNIL R8
  GETIMPORT R9 K12 [pcall]
  NEWCLOSURE R10 P0
  CAPTURE REF R8
  CAPTURE UPVAL U2
  CALL R9 1 0
  MOVE R7 R8
  CLOSEUPVALS R8
  SETTABLEKS R7 R6 K6 ["clientId"]
  GETUPVAL R7 3
  CALL R7 0 1
  SETTABLEKS R7 R6 K7 ["userId"]
  LOADN R7 0
  SETTABLEKS R7 R6 K8 ["platformId"]
  GETUPVAL R7 4
  SETTABLEKS R7 R6 K9 ["isEditMode"]
  CALL R2 4 0
  RETURN R0 0

PROTO_45:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["sendEventDeferred"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["eventTarget"]
  LOADK R3 K2 ["toolbox"]
  LOADK R4 K3 ["previewInsertion"]
  DUPTABLE R5 K9 [{"assetId", "clientId", "userId", "platformId", "isEditMode"}]
  SETTABLEKS R0 R5 K4 ["assetId"]
  LOADNIL R7
  GETIMPORT R8 K11 [pcall]
  NEWCLOSURE R9 P0
  CAPTURE REF R7
  CAPTURE UPVAL U2
  CALL R8 1 0
  MOVE R6 R7
  CLOSEUPVALS R7
  SETTABLEKS R6 R5 K5 ["clientId"]
  GETUPVAL R6 3
  CALL R6 0 1
  SETTABLEKS R6 R5 K6 ["userId"]
  LOADN R6 0
  SETTABLEKS R6 R5 K7 ["platformId"]
  GETUPVAL R6 4
  SETTABLEKS R6 R5 K8 ["isEditMode"]
  CALL R1 4 0
  RETURN R0 0

PROTO_46:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["getWebViewTrackingAttributes"]
  CALL R0 0 1
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["sendEventDeferred"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["eventTarget"]
  LOADK R3 K3 ["toolbox"]
  LOADK R4 K4 ["MarketplaceOpen"]
  MOVE R5 R0
  CALL R1 4 0
  RETURN R0 0

PROTO_47:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["getWebViewTrackingAttributes"]
  CALL R0 0 1
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["sendEventDeferred"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["eventTarget"]
  LOADK R3 K3 ["toolbox"]
  LOADK R4 K4 ["MarketplaceClosed"]
  MOVE R5 R0
  CALL R1 4 0
  RETURN R0 0

PROTO_48:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["getWebViewTrackingAttributes"]
  CALL R0 0 1
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["sendEventDeferred"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["eventTarget"]
  LOADK R3 K3 ["toolbox"]
  LOADK R4 K4 ["MarketplaceImpression"]
  MOVE R5 R0
  CALL R1 4 0
  RETURN R0 0

PROTO_49:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["getWebViewTrackingAttributes"]
  CALL R0 0 1
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["sendEventDeferred"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["eventTarget"]
  LOADK R3 K3 ["Marketplace"]
  LOADK R4 K4 ["MarketplaceHidden"]
  MOVE R5 R0
  CALL R1 4 0
  RETURN R0 0

PROTO_50:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["getWebViewTrackingAttributes"]
  CALL R0 0 1
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["sendEventDeferred"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["eventTarget"]
  LOADK R3 K3 ["Marketplace"]
  LOADK R4 K4 ["MarketplaceUnmounted"]
  MOVE R5 R0
  CALL R1 4 0
  RETURN R0 0

PROTO_51:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["getWebViewTrackingAttributes"]
  DUPTABLE R5 K5 [{"prevWidth", "prevHeight", "currentWidth", "currentHeight"}]
  SETTABLEKS R0 R5 K1 ["prevWidth"]
  SETTABLEKS R1 R5 K2 ["prevHeight"]
  SETTABLEKS R2 R5 K3 ["currentWidth"]
  SETTABLEKS R3 R5 K4 ["currentHeight"]
  CALL R4 1 1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K6 ["sendEventDeferred"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K7 ["eventTarget"]
  LOADK R7 K8 ["Marketplace"]
  LOADK R8 K9 ["ToolboxInitialSizing"]
  MOVE R9 R4
  CALL R5 4 0
  RETURN R0 0

PROTO_52:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["sendEventImmediately"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K1 ["eventTarget"]
  LOADK R6 K2 ["Marketplace"]
  MOVE R7 R0
  DUPTABLE R8 K11 [{"assetId", "assetTypeId", "clientId", "userId", "platformId", "studioSid", "isEditMode", "currentCategory"}]
  SETTABLEKS R1 R8 K3 ["assetId"]
  SETTABLEKS R2 R8 K4 ["assetTypeId"]
  LOADNIL R10
  GETIMPORT R11 K13 [pcall]
  NEWCLOSURE R12 P0
  CAPTURE REF R10
  CAPTURE UPVAL U2
  CALL R11 1 0
  MOVE R9 R10
  CLOSEUPVALS R10
  SETTABLEKS R9 R8 K5 ["clientId"]
  GETUPVAL R9 3
  CALL R9 0 1
  SETTABLEKS R9 R8 K6 ["userId"]
  LOADN R9 0
  SETTABLEKS R9 R8 K7 ["platformId"]
  LOADNIL R10
  GETIMPORT R11 K13 [pcall]
  NEWCLOSURE R12 P1
  CAPTURE REF R10
  CAPTURE UPVAL U2
  CALL R11 1 0
  MOVE R9 R10
  CLOSEUPVALS R10
  SETTABLEKS R9 R8 K8 ["studioSid"]
  GETUPVAL R9 4
  SETTABLEKS R9 R8 K9 ["isEditMode"]
  SETTABLEKS R3 R8 K10 ["currentCategory"]
  CALL R4 4 0
  RETURN R0 0

PROTO_53:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["sendEventImmediately"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["eventTarget"]
  LOADK R2 K2 ["Marketplace"]
  LOADK R3 K3 ["OpenedFromPluginManagement"]
  DUPTABLE R4 K7 [{"studioSid", "clientId", "isEditMode"}]
  LOADNIL R6
  GETIMPORT R7 K9 [pcall]
  NEWCLOSURE R8 P0
  CAPTURE REF R6
  CAPTURE UPVAL U2
  CALL R7 1 0
  MOVE R5 R6
  CLOSEUPVALS R6
  SETTABLEKS R5 R4 K4 ["studioSid"]
  LOADNIL R6
  GETIMPORT R7 K9 [pcall]
  NEWCLOSURE R8 P1
  CAPTURE REF R6
  CAPTURE UPVAL U2
  CALL R7 1 0
  MOVE R5 R6
  CLOSEUPVALS R6
  SETTABLEKS R5 R4 K5 ["clientId"]
  GETUPVAL R5 3
  SETTABLEKS R5 R4 K6 ["isEditMode"]
  CALL R0 4 0
  RETURN R0 0

PROTO_54:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["sendEventImmediately"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["eventTarget"]
  LOADK R3 K2 ["Marketplace"]
  LOADK R4 K3 ["OpenedExternallyByAssetType"]
  DUPTABLE R5 K8 [{"assetTypeName", "clientId", "isEditMode", "studioSid"}]
  SETTABLEKS R0 R5 K4 ["assetTypeName"]
  LOADNIL R7
  GETIMPORT R8 K10 [pcall]
  NEWCLOSURE R9 P0
  CAPTURE REF R7
  CAPTURE UPVAL U2
  CALL R8 1 0
  MOVE R6 R7
  CLOSEUPVALS R7
  SETTABLEKS R6 R5 K5 ["clientId"]
  GETUPVAL R6 3
  SETTABLEKS R6 R5 K6 ["isEditMode"]
  LOADNIL R7
  GETIMPORT R8 K10 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE REF R7
  CAPTURE UPVAL U2
  CALL R8 1 0
  MOVE R6 R7
  CLOSEUPVALS R7
  SETTABLEKS R6 R5 K7 ["studioSid"]
  CALL R1 4 0
  RETURN R0 0

PROTO_55:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["sendEventImmediately"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["eventTarget"]
  LOADK R4 K2 ["Marketplace"]
  LOADK R5 K3 ["ReportAssetClicked"]
  DUPTABLE R6 K9 [{"studioSid", "clientId", "isEditMode", "assetId", "assetTypeId"}]
  LOADNIL R8
  GETIMPORT R9 K11 [pcall]
  NEWCLOSURE R10 P0
  CAPTURE REF R8
  CAPTURE UPVAL U2
  CALL R9 1 0
  MOVE R7 R8
  CLOSEUPVALS R8
  SETTABLEKS R7 R6 K4 ["studioSid"]
  LOADNIL R8
  GETIMPORT R9 K11 [pcall]
  NEWCLOSURE R10 P1
  CAPTURE REF R8
  CAPTURE UPVAL U2
  CALL R9 1 0
  MOVE R7 R8
  CLOSEUPVALS R8
  SETTABLEKS R7 R6 K5 ["clientId"]
  GETUPVAL R7 3
  SETTABLEKS R7 R6 K6 ["isEditMode"]
  SETTABLEKS R0 R6 K7 ["assetId"]
  SETTABLEKS R1 R6 K8 ["assetTypeId"]
  CALL R2 4 0
  RETURN R0 0

PROTO_56:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["sendEventImmediately"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["eventTarget"]
  LOADK R3 K2 ["Marketplace"]
  LOADK R4 K3 ["MeshPartFiltered"]
  DUPTABLE R5 K9 [{"studioSid", "clientId", "isEditMode", "placeId", "assetId"}]
  LOADNIL R7
  GETIMPORT R8 K11 [pcall]
  NEWCLOSURE R9 P0
  CAPTURE REF R7
  CAPTURE UPVAL U2
  CALL R8 1 0
  MOVE R6 R7
  CLOSEUPVALS R7
  SETTABLEKS R6 R5 K4 ["studioSid"]
  LOADNIL R7
  GETIMPORT R8 K11 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE REF R7
  CAPTURE UPVAL U2
  CALL R8 1 0
  MOVE R6 R7
  CLOSEUPVALS R7
  SETTABLEKS R6 R5 K5 ["clientId"]
  GETUPVAL R6 3
  SETTABLEKS R6 R5 K6 ["isEditMode"]
  GETUPVAL R6 4
  CALL R6 0 1
  SETTABLEKS R6 R5 K7 ["placeId"]
  SETTABLEKS R0 R5 K8 ["assetId"]
  CALL R1 4 0
  RETURN R0 0

PROTO_57:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["sendEventImmediately"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["eventTarget"]
  LOADK R3 K2 ["Marketplace"]
  LOADK R4 K3 ["IdVerificationIconClicked"]
  DUPTABLE R5 K10 [{"assetId", "clientId", "userId", "platformId", "studioSid", "isEditMode"}]
  SETTABLEKS R0 R5 K4 ["assetId"]
  LOADNIL R7
  GETIMPORT R8 K12 [pcall]
  NEWCLOSURE R9 P0
  CAPTURE REF R7
  CAPTURE UPVAL U2
  CALL R8 1 0
  MOVE R6 R7
  CLOSEUPVALS R7
  SETTABLEKS R6 R5 K5 ["clientId"]
  GETUPVAL R6 3
  CALL R6 0 1
  SETTABLEKS R6 R5 K6 ["userId"]
  LOADN R6 0
  SETTABLEKS R6 R5 K7 ["platformId"]
  LOADNIL R7
  GETIMPORT R8 K12 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE REF R7
  CAPTURE UPVAL U2
  CALL R8 1 0
  MOVE R6 R7
  CLOSEUPVALS R7
  SETTABLEKS R6 R5 K8 ["studioSid"]
  GETUPVAL R6 4
  SETTABLEKS R6 R5 K9 ["isEditMode"]
  CALL R1 4 0
  RETURN R0 0

PROTO_58:
  GETUPVAL R4 0
  CALL R4 0 1
  JUMPIFNOT R4 [+112]
  DUPTABLE R3 K20 [{"studioSid", "clientId", "creatorIds", "excludeGroupCreations", "groupIds", "isEditMode", "userId", "ptid", "placeId", "searchKeyword", "isTopKeyword", "categoryName", "includeOnlyVerifiedCreators", "assetType", "searchByCreatorId", "searchId", "sort", "toolboxTab", "toolboxSid", "pluginUri"}]
  LOADNIL R5
  GETIMPORT R6 K22 [pcall]
  NEWCLOSURE R7 P0
  CAPTURE REF R5
  CAPTURE UPVAL U1
  CALL R6 1 0
  MOVE R4 R5
  CLOSEUPVALS R5
  SETTABLEKS R4 R3 K0 ["studioSid"]
  LOADNIL R5
  GETIMPORT R6 K22 [pcall]
  NEWCLOSURE R7 P1
  CAPTURE REF R5
  CAPTURE UPVAL U1
  CALL R6 1 0
  MOVE R4 R5
  CLOSEUPVALS R5
  SETTABLEKS R4 R3 K1 ["clientId"]
  GETUPVAL R5 2
  CALL R5 0 1
  JUMPIFNOT R5 [+3]
  GETTABLEKS R4 R2 K23 ["creatorIDs"]
  JUMP [+1]
  LOADNIL R4
  SETTABLEKS R4 R3 K2 ["creatorIds"]
  GETUPVAL R5 2
  CALL R5 0 1
  JUMPIFNOT R5 [+3]
  GETTABLEKS R4 R2 K3 ["excludeGroupCreations"]
  JUMP [+1]
  LOADNIL R4
  SETTABLEKS R4 R3 K3 ["excludeGroupCreations"]
  GETUPVAL R5 2
  CALL R5 0 1
  JUMPIFNOT R5 [+3]
  GETTABLEKS R4 R2 K24 ["groupIDs"]
  JUMP [+1]
  LOADNIL R4
  SETTABLEKS R4 R3 K4 ["groupIds"]
  GETUPVAL R4 3
  SETTABLEKS R4 R3 K5 ["isEditMode"]
  GETUPVAL R4 4
  CALL R4 0 1
  SETTABLEKS R4 R3 K6 ["userId"]
  LOADN R4 0
  SETTABLEKS R4 R3 K7 ["ptid"]
  GETUPVAL R4 5
  CALL R4 0 1
  SETTABLEKS R4 R3 K8 ["placeId"]
  SETTABLEKS R0 R3 K9 ["searchKeyword"]
  SETTABLEKS R1 R3 K10 ["isTopKeyword"]
  GETTABLEKS R4 R2 K11 ["categoryName"]
  SETTABLEKS R4 R3 K11 ["categoryName"]
  GETTABLEKS R4 R2 K12 ["includeOnlyVerifiedCreators"]
  SETTABLEKS R4 R3 K12 ["includeOnlyVerifiedCreators"]
  GETTABLEKS R4 R2 K13 ["assetType"]
  SETTABLEKS R4 R3 K13 ["assetType"]
  GETUPVAL R5 2
  CALL R5 0 1
  JUMPIFNOT R5 [+2]
  LOADNIL R4
  JUMP [+2]
  GETTABLEKS R4 R2 K25 ["creatorID"]
  SETTABLEKS R4 R3 K14 ["searchByCreatorId"]
  GETTABLEKS R4 R2 K15 ["searchId"]
  SETTABLEKS R4 R3 K15 ["searchId"]
  GETTABLEKS R4 R2 K16 ["sort"]
  SETTABLEKS R4 R3 K16 ["sort"]
  GETTABLEKS R4 R2 K17 ["toolboxTab"]
  SETTABLEKS R4 R3 K17 ["toolboxTab"]
  GETUPVAL R5 6
  GETTABLEKS R4 R5 K18 ["toolboxSid"]
  SETTABLEKS R4 R3 K18 ["toolboxSid"]
  GETUPVAL R5 6
  GETTABLEKS R4 R5 K19 ["pluginUri"]
  SETTABLEKS R4 R3 K19 ["pluginUri"]
  JUMP [+111]
  DUPTABLE R3 K31 [{"studioSid", "clientID", "creatorIDs", "excludeGroupCreations", "groupIDs", "isEditMode", "userID", "ptid", "placeID", "searchKeyword", "isTopKeyword", "categoryName", "includeOnlyVerifiedCreators", "assetType", "searchByCreatorID", "searchID", "sort", "toolboxTab", "toolboxSid", "pluginUri"}]
  LOADNIL R5
  GETIMPORT R6 K22 [pcall]
  NEWCLOSURE R7 P0
  CAPTURE REF R5
  CAPTURE UPVAL U1
  CALL R6 1 0
  MOVE R4 R5
  CLOSEUPVALS R5
  SETTABLEKS R4 R3 K0 ["studioSid"]
  LOADNIL R5
  GETIMPORT R6 K22 [pcall]
  NEWCLOSURE R7 P1
  CAPTURE REF R5
  CAPTURE UPVAL U1
  CALL R6 1 0
  MOVE R4 R5
  CLOSEUPVALS R5
  SETTABLEKS R4 R3 K26 ["clientID"]
  GETUPVAL R5 2
  CALL R5 0 1
  JUMPIFNOT R5 [+3]
  GETTABLEKS R4 R2 K23 ["creatorIDs"]
  JUMP [+1]
  LOADNIL R4
  SETTABLEKS R4 R3 K23 ["creatorIDs"]
  GETUPVAL R5 2
  CALL R5 0 1
  JUMPIFNOT R5 [+3]
  GETTABLEKS R4 R2 K3 ["excludeGroupCreations"]
  JUMP [+1]
  LOADNIL R4
  SETTABLEKS R4 R3 K3 ["excludeGroupCreations"]
  GETUPVAL R5 2
  CALL R5 0 1
  JUMPIFNOT R5 [+3]
  GETTABLEKS R4 R2 K24 ["groupIDs"]
  JUMP [+1]
  LOADNIL R4
  SETTABLEKS R4 R3 K24 ["groupIDs"]
  GETUPVAL R4 3
  SETTABLEKS R4 R3 K5 ["isEditMode"]
  GETUPVAL R4 4
  CALL R4 0 1
  SETTABLEKS R4 R3 K27 ["userID"]
  LOADN R4 0
  SETTABLEKS R4 R3 K7 ["ptid"]
  GETUPVAL R4 5
  CALL R4 0 1
  SETTABLEKS R4 R3 K28 ["placeID"]
  SETTABLEKS R0 R3 K9 ["searchKeyword"]
  SETTABLEKS R1 R3 K10 ["isTopKeyword"]
  GETTABLEKS R4 R2 K11 ["categoryName"]
  SETTABLEKS R4 R3 K11 ["categoryName"]
  GETTABLEKS R4 R2 K12 ["includeOnlyVerifiedCreators"]
  SETTABLEKS R4 R3 K12 ["includeOnlyVerifiedCreators"]
  GETTABLEKS R4 R2 K13 ["assetType"]
  SETTABLEKS R4 R3 K13 ["assetType"]
  GETUPVAL R5 2
  CALL R5 0 1
  JUMPIFNOT R5 [+2]
  LOADNIL R4
  JUMP [+2]
  GETTABLEKS R4 R2 K25 ["creatorID"]
  SETTABLEKS R4 R3 K29 ["searchByCreatorID"]
  GETTABLEKS R4 R2 K15 ["searchId"]
  SETTABLEKS R4 R3 K30 ["searchID"]
  GETTABLEKS R4 R2 K16 ["sort"]
  SETTABLEKS R4 R3 K16 ["sort"]
  GETTABLEKS R4 R2 K17 ["toolboxTab"]
  SETTABLEKS R4 R3 K17 ["toolboxTab"]
  GETUPVAL R5 6
  GETTABLEKS R4 R5 K18 ["toolboxSid"]
  SETTABLEKS R4 R3 K18 ["toolboxSid"]
  GETUPVAL R5 6
  GETTABLEKS R4 R5 K19 ["pluginUri"]
  SETTABLEKS R4 R3 K19 ["pluginUri"]
  GETTABLEKS R4 R2 K32 ["qualityFilterTags"]
  JUMPIFNOT R4 [+8]
  GETTABLEKS R4 R2 K32 ["qualityFilterTags"]
  JUMPIFEQKS R4 K33 [""] [+5]
  GETTABLEKS R4 R2 K32 ["qualityFilterTags"]
  SETTABLEKS R4 R3 K32 ["qualityFilterTags"]
  GETUPVAL R4 7
  CALL R4 0 1
  JUMPIFNOT R4 [+16]
  GETTABLEKS R4 R2 K34 ["previousSearchId"]
  SETTABLEKS R4 R3 K34 ["previousSearchId"]
  GETTABLEKS R4 R2 K35 ["querySource"]
  SETTABLEKS R4 R3 K35 ["querySource"]
  GETTABLEKS R4 R2 K36 ["originalUserQuery"]
  SETTABLEKS R4 R3 K36 ["originalUserQuery"]
  GETTABLEKS R4 R2 K37 ["originalCorrection"]
  SETTABLEKS R4 R3 K37 ["originalCorrection"]
  GETUPVAL R5 8
  GETTABLEKS R4 R5 K38 ["sendEventImmediately"]
  GETUPVAL R6 6
  GETTABLEKS R5 R6 K39 ["eventTarget"]
  LOADK R6 K40 ["Marketplace"]
  LOADK R7 K41 ["MarketplaceSearch"]
  MOVE R8 R3
  CALL R4 4 0
  RETURN R0 0

PROTO_59:
  GETUPVAL R7 0
  CALL R7 0 1
  JUMPIFNOT R7 [+68]
  DUPTABLE R6 K16 [{"studioSid", "clientId", "isEditMode", "userId", "ptid", "placeId", "searchKeyword", "autocompletePrefix", "autocompleteKeyCount", "autocompleteDeleteCount", "autocompleteShown", "assetType", "searchByCreatorId", "searchId", "sort", "toolboxTab"}]
  LOADNIL R8
  GETIMPORT R9 K18 [pcall]
  NEWCLOSURE R10 P0
  CAPTURE REF R8
  CAPTURE UPVAL U1
  CALL R9 1 0
  MOVE R7 R8
  CLOSEUPVALS R8
  SETTABLEKS R7 R6 K0 ["studioSid"]
  LOADNIL R8
  GETIMPORT R9 K18 [pcall]
  NEWCLOSURE R10 P1
  CAPTURE REF R8
  CAPTURE UPVAL U1
  CALL R9 1 0
  MOVE R7 R8
  CLOSEUPVALS R8
  SETTABLEKS R7 R6 K1 ["clientId"]
  GETUPVAL R7 2
  SETTABLEKS R7 R6 K2 ["isEditMode"]
  GETUPVAL R7 3
  CALL R7 0 1
  SETTABLEKS R7 R6 K3 ["userId"]
  LOADN R7 0
  SETTABLEKS R7 R6 K4 ["ptid"]
  GETUPVAL R7 4
  CALL R7 0 1
  SETTABLEKS R7 R6 K5 ["placeId"]
  SETTABLEKS R0 R6 K6 ["searchKeyword"]
  SETTABLEKS R1 R6 K7 ["autocompletePrefix"]
  SETTABLEKS R2 R6 K8 ["autocompleteKeyCount"]
  SETTABLEKS R3 R6 K9 ["autocompleteDeleteCount"]
  SETTABLEKS R4 R6 K10 ["autocompleteShown"]
  GETTABLEKS R7 R5 K11 ["assetType"]
  SETTABLEKS R7 R6 K11 ["assetType"]
  GETTABLEKS R7 R5 K19 ["creatorID"]
  SETTABLEKS R7 R6 K12 ["searchByCreatorId"]
  GETTABLEKS R7 R5 K13 ["searchId"]
  SETTABLEKS R7 R6 K13 ["searchId"]
  GETTABLEKS R7 R5 K14 ["sort"]
  SETTABLEKS R7 R6 K14 ["sort"]
  GETTABLEKS R7 R5 K15 ["toolboxTab"]
  SETTABLEKS R7 R6 K15 ["toolboxTab"]
  JUMP [+67]
  DUPTABLE R6 K25 [{"studioSid", "clientID", "isEditMode", "userID", "ptid", "placeID", "searchKeyword", "autocompletePrefix", "autocompleteKeyCount", "autocompleteDeleteCount", "autocompleteShown", "assetType", "searchByCreatorID", "searchID", "sort", "toolboxTab"}]
  LOADNIL R8
  GETIMPORT R9 K18 [pcall]
  NEWCLOSURE R10 P0
  CAPTURE REF R8
  CAPTURE UPVAL U1
  CALL R9 1 0
  MOVE R7 R8
  CLOSEUPVALS R8
  SETTABLEKS R7 R6 K0 ["studioSid"]
  LOADNIL R8
  GETIMPORT R9 K18 [pcall]
  NEWCLOSURE R10 P1
  CAPTURE REF R8
  CAPTURE UPVAL U1
  CALL R9 1 0
  MOVE R7 R8
  CLOSEUPVALS R8
  SETTABLEKS R7 R6 K20 ["clientID"]
  GETUPVAL R7 2
  SETTABLEKS R7 R6 K2 ["isEditMode"]
  GETUPVAL R7 3
  CALL R7 0 1
  SETTABLEKS R7 R6 K21 ["userID"]
  LOADN R7 0
  SETTABLEKS R7 R6 K4 ["ptid"]
  GETUPVAL R7 4
  CALL R7 0 1
  SETTABLEKS R7 R6 K22 ["placeID"]
  SETTABLEKS R0 R6 K6 ["searchKeyword"]
  SETTABLEKS R1 R6 K7 ["autocompletePrefix"]
  SETTABLEKS R2 R6 K8 ["autocompleteKeyCount"]
  SETTABLEKS R3 R6 K9 ["autocompleteDeleteCount"]
  SETTABLEKS R4 R6 K10 ["autocompleteShown"]
  GETTABLEKS R7 R5 K11 ["assetType"]
  SETTABLEKS R7 R6 K11 ["assetType"]
  GETTABLEKS R7 R5 K19 ["creatorID"]
  SETTABLEKS R7 R6 K23 ["searchByCreatorID"]
  GETTABLEKS R7 R5 K13 ["searchId"]
  SETTABLEKS R7 R6 K24 ["searchID"]
  GETTABLEKS R7 R5 K14 ["sort"]
  SETTABLEKS R7 R6 K14 ["sort"]
  GETTABLEKS R7 R5 K15 ["toolboxTab"]
  SETTABLEKS R7 R6 K15 ["toolboxTab"]
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K26 ["sendEventImmediately"]
  GETUPVAL R9 6
  GETTABLEKS R8 R9 K27 ["eventTarget"]
  LOADK R9 K28 ["Marketplace"]
  LOADK R10 K29 ["MarketplaceAutocompleteSearch"]
  MOVE R11 R6
  CALL R7 4 0
  RETURN R0 0

PROTO_60:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getWebViewTrackingAttributes"]
  DUPTABLE R2 K3 [{"widgetWidth", "widgetHeight"}]
  GETTABLEKS R3 R0 K4 ["X"]
  SETTABLEKS R3 R2 K1 ["widgetWidth"]
  GETTABLEKS R3 R0 K5 ["Y"]
  SETTABLEKS R3 R2 K2 ["widgetHeight"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K6 ["sendEventDeferred"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K7 ["eventTarget"]
  LOADK R4 K8 ["Marketplace"]
  LOADK R5 K9 ["ToolboxWidgetInteraction"]
  MOVE R6 R1
  CALL R2 4 0
  RETURN R0 0

PROTO_61:
  DUPTABLE R6 K10 [{"announcementButtonKey", "announcementDateKey", "announcementDescriptionKey", "announcementHeaderKey", "announcementLinkKey", "announcementLinkLocation", "clientId", "platformId", "studioSid", "userId"}]
  SETTABLEKS R0 R6 K0 ["announcementButtonKey"]
  SETTABLEKS R1 R6 K1 ["announcementDateKey"]
  SETTABLEKS R2 R6 K2 ["announcementDescriptionKey"]
  SETTABLEKS R3 R6 K3 ["announcementHeaderKey"]
  SETTABLEKS R4 R6 K4 ["announcementLinkKey"]
  SETTABLEKS R5 R6 K5 ["announcementLinkLocation"]
  LOADNIL R8
  GETIMPORT R9 K12 [pcall]
  NEWCLOSURE R10 P0
  CAPTURE REF R8
  CAPTURE UPVAL U0
  CALL R9 1 0
  MOVE R7 R8
  CLOSEUPVALS R8
  SETTABLEKS R7 R6 K6 ["clientId"]
  LOADN R7 0
  SETTABLEKS R7 R6 K7 ["platformId"]
  LOADNIL R8
  GETIMPORT R9 K12 [pcall]
  NEWCLOSURE R10 P1
  CAPTURE REF R8
  CAPTURE UPVAL U0
  CALL R9 1 0
  MOVE R7 R8
  CLOSEUPVALS R8
  SETTABLEKS R7 R6 K8 ["studioSid"]
  GETUPVAL R7 1
  CALL R7 0 1
  SETTABLEKS R7 R6 K9 ["userId"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K13 ["sendEventImmediately"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K14 ["eventTarget"]
  LOADK R9 K15 ["Marketplace"]
  LOADK R10 K16 ["AnnouncementViewed"]
  MOVE R11 R6
  CALL R7 4 0
  RETURN R0 0

PROTO_62:
  DUPTABLE R6 K10 [{"announcementButtonKey", "announcementDateKey", "announcementDescriptionKey", "announcementHeaderKey", "announcementLinkKey", "announcementLinkLocation", "clientId", "platformId", "studioSid", "userId"}]
  SETTABLEKS R0 R6 K0 ["announcementButtonKey"]
  SETTABLEKS R1 R6 K1 ["announcementDateKey"]
  SETTABLEKS R2 R6 K2 ["announcementDescriptionKey"]
  SETTABLEKS R3 R6 K3 ["announcementHeaderKey"]
  SETTABLEKS R4 R6 K4 ["announcementLinkKey"]
  SETTABLEKS R5 R6 K5 ["announcementLinkLocation"]
  LOADNIL R8
  GETIMPORT R9 K12 [pcall]
  NEWCLOSURE R10 P0
  CAPTURE REF R8
  CAPTURE UPVAL U0
  CALL R9 1 0
  MOVE R7 R8
  CLOSEUPVALS R8
  SETTABLEKS R7 R6 K6 ["clientId"]
  LOADN R7 0
  SETTABLEKS R7 R6 K7 ["platformId"]
  LOADNIL R8
  GETIMPORT R9 K12 [pcall]
  NEWCLOSURE R10 P1
  CAPTURE REF R8
  CAPTURE UPVAL U0
  CALL R9 1 0
  MOVE R7 R8
  CLOSEUPVALS R8
  SETTABLEKS R7 R6 K8 ["studioSid"]
  GETUPVAL R7 1
  CALL R7 0 1
  SETTABLEKS R7 R6 K9 ["userId"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K13 ["sendEventImmediately"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K14 ["eventTarget"]
  LOADK R9 K15 ["Marketplace"]
  LOADK R10 K16 ["AnnouncementLinkClicked"]
  MOVE R11 R6
  CALL R7 4 0
  RETURN R0 0

PROTO_63:
  DUPTABLE R7 K11 [{"announcementButtonKey", "announcementDateKey", "announcementDescriptionKey", "announcementHeaderKey", "announcementLinkKey", "announcementLinkLocation", "durationBeforeClosed", "clientId", "platformId", "studioSid", "userId"}]
  SETTABLEKS R0 R7 K0 ["announcementButtonKey"]
  SETTABLEKS R1 R7 K1 ["announcementDateKey"]
  SETTABLEKS R2 R7 K2 ["announcementDescriptionKey"]
  SETTABLEKS R3 R7 K3 ["announcementHeaderKey"]
  SETTABLEKS R4 R7 K4 ["announcementLinkKey"]
  SETTABLEKS R5 R7 K5 ["announcementLinkLocation"]
  SETTABLEKS R6 R7 K6 ["durationBeforeClosed"]
  LOADNIL R9
  GETIMPORT R10 K13 [pcall]
  NEWCLOSURE R11 P0
  CAPTURE REF R9
  CAPTURE UPVAL U0
  CALL R10 1 0
  MOVE R8 R9
  CLOSEUPVALS R9
  SETTABLEKS R8 R7 K7 ["clientId"]
  LOADN R8 0
  SETTABLEKS R8 R7 K8 ["platformId"]
  LOADNIL R9
  GETIMPORT R10 K13 [pcall]
  NEWCLOSURE R11 P1
  CAPTURE REF R9
  CAPTURE UPVAL U0
  CALL R10 1 0
  MOVE R8 R9
  CLOSEUPVALS R9
  SETTABLEKS R8 R7 K9 ["studioSid"]
  GETUPVAL R8 1
  CALL R8 0 1
  SETTABLEKS R8 R7 K10 ["userId"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K14 ["sendEventImmediately"]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K15 ["eventTarget"]
  LOADK R10 K16 ["Marketplace"]
  LOADK R11 K17 ["AnnouncementClosed"]
  MOVE R12 R7
  CALL R8 4 0
  RETURN R0 0

PROTO_64:
  DUPTABLE R7 K11 [{"announcementButtonKey", "announcementDateKey", "announcementDescriptionKey", "announcementHeaderKey", "announcementLinkKey", "announcementLinkLocation", "durationBeforeClosed", "clientId", "platformId", "studioSid", "userId"}]
  SETTABLEKS R0 R7 K0 ["announcementButtonKey"]
  SETTABLEKS R1 R7 K1 ["announcementDateKey"]
  SETTABLEKS R2 R7 K2 ["announcementDescriptionKey"]
  SETTABLEKS R3 R7 K3 ["announcementHeaderKey"]
  SETTABLEKS R4 R7 K4 ["announcementLinkKey"]
  SETTABLEKS R5 R7 K5 ["announcementLinkLocation"]
  SETTABLEKS R6 R7 K6 ["durationBeforeClosed"]
  LOADNIL R9
  GETIMPORT R10 K13 [pcall]
  NEWCLOSURE R11 P0
  CAPTURE REF R9
  CAPTURE UPVAL U0
  CALL R10 1 0
  MOVE R8 R9
  CLOSEUPVALS R9
  SETTABLEKS R8 R7 K7 ["clientId"]
  LOADN R8 0
  SETTABLEKS R8 R7 K8 ["platformId"]
  LOADNIL R9
  GETIMPORT R10 K13 [pcall]
  NEWCLOSURE R11 P1
  CAPTURE REF R9
  CAPTURE UPVAL U0
  CALL R10 1 0
  MOVE R8 R9
  CLOSEUPVALS R9
  SETTABLEKS R8 R7 K9 ["studioSid"]
  GETUPVAL R8 1
  CALL R8 0 1
  SETTABLEKS R8 R7 K10 ["userId"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K14 ["sendEventImmediately"]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K15 ["eventTarget"]
  LOADK R10 K16 ["Marketplace"]
  LOADK R11 K17 ["AnnouncementAcknowledged"]
  MOVE R12 R7
  CALL R8 4 0
  RETURN R0 0

PROTO_65:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["sendEventDeferred"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["eventTarget"]
  LOADK R5 K2 ["Marketplace"]
  LOADK R6 K3 ["AssetMediaItemsUpdated"]
  DUPTABLE R7 K11 [{"assetId", "assetMediaIds", "assetTypeId", "clientId", "platformId", "studioSid", "userId"}]
  SETTABLEKS R0 R7 K4 ["assetId"]
  GETIMPORT R8 K14 [table.concat]
  MOVE R9 R2
  LOADK R10 K15 [","]
  CALL R8 2 1
  SETTABLEKS R8 R7 K5 ["assetMediaIds"]
  SETTABLEKS R1 R7 K6 ["assetTypeId"]
  LOADNIL R9
  GETIMPORT R10 K17 [pcall]
  NEWCLOSURE R11 P0
  CAPTURE REF R9
  CAPTURE UPVAL U2
  CALL R10 1 0
  MOVE R8 R9
  CLOSEUPVALS R9
  SETTABLEKS R8 R7 K7 ["clientId"]
  LOADN R8 0
  SETTABLEKS R8 R7 K8 ["platformId"]
  LOADNIL R9
  GETIMPORT R10 K17 [pcall]
  NEWCLOSURE R11 P1
  CAPTURE REF R9
  CAPTURE UPVAL U2
  CALL R10 1 0
  MOVE R8 R9
  CLOSEUPVALS R9
  SETTABLEKS R8 R7 K9 ["studioSid"]
  GETUPVAL R8 3
  CALL R8 0 1
  SETTABLEKS R8 R7 K10 ["userId"]
  CALL R3 4 0
  RETURN R0 0

PROTO_66:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["sendEventDeferred"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["eventTarget"]
  LOADK R4 K2 ["Marketplace"]
  LOADK R5 K3 ["MarketplaceListViewToggleClicked"]
  DUPTABLE R6 K9 [{"assetType", "layoutMode", "searchId", "clientId", "userId"}]
  GETTABLEKS R7 R1 K4 ["assetType"]
  SETTABLEKS R7 R6 K4 ["assetType"]
  SETTABLEKS R0 R6 K5 ["layoutMode"]
  GETTABLEKS R7 R1 K6 ["searchId"]
  SETTABLEKS R7 R6 K6 ["searchId"]
  LOADNIL R8
  GETIMPORT R9 K11 [pcall]
  NEWCLOSURE R10 P0
  CAPTURE REF R8
  CAPTURE UPVAL U2
  CALL R9 1 0
  MOVE R7 R8
  CLOSEUPVALS R8
  SETTABLEKS R7 R6 K7 ["clientId"]
  GETUPVAL R7 3
  CALL R7 0 1
  SETTABLEKS R7 R6 K8 ["userId"]
  CALL R2 4 0
  RETURN R0 0

PROTO_67:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["sendEventDeferred"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K1 ["eventTarget"]
  LOADK R6 K2 ["Marketplace"]
  LOADK R7 K3 ["MarketplaceAssetRowExpanded"]
  DUPTABLE R8 K12 [{"assetId", "assetType", "pageNumber", "pagePosition", "searchId", "clientId", "platformId", "userId"}]
  SETTABLEKS R0 R8 K4 ["assetId"]
  GETTABLEKS R9 R3 K5 ["assetType"]
  SETTABLEKS R9 R8 K5 ["assetType"]
  SETTABLEKS R1 R8 K6 ["pageNumber"]
  SETTABLEKS R2 R8 K7 ["pagePosition"]
  GETTABLEKS R9 R3 K8 ["searchId"]
  SETTABLEKS R9 R8 K8 ["searchId"]
  LOADNIL R10
  GETIMPORT R11 K14 [pcall]
  NEWCLOSURE R12 P0
  CAPTURE REF R10
  CAPTURE UPVAL U2
  CALL R11 1 0
  MOVE R9 R10
  CLOSEUPVALS R10
  SETTABLEKS R9 R8 K9 ["clientId"]
  LOADN R9 0
  SETTABLEKS R9 R8 K10 ["platformId"]
  GETUPVAL R9 3
  CALL R9 0 1
  SETTABLEKS R9 R8 K11 ["userId"]
  CALL R4 4 0
  RETURN R0 0

PROTO_68:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["sendEventDeferred"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["eventTarget"]
  LOADK R3 K2 ["Marketplace"]
  LOADK R4 K3 ["MarketplaceRecentSearchClicked"]
  DUPTABLE R5 K7 [{"keyword", "clientId", "userId"}]
  SETTABLEKS R0 R5 K4 ["keyword"]
  LOADNIL R7
  GETIMPORT R8 K9 [pcall]
  NEWCLOSURE R9 P0
  CAPTURE REF R7
  CAPTURE UPVAL U2
  CALL R8 1 0
  MOVE R6 R7
  CLOSEUPVALS R7
  SETTABLEKS R6 R5 K5 ["clientId"]
  GETUPVAL R6 3
  CALL R6 0 1
  SETTABLEKS R6 R5 K6 ["userId"]
  CALL R1 4 0
  RETURN R0 0

PROTO_69:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["sendEventDeferred"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["eventTarget"]
  LOADK R4 K2 ["Marketplace"]
  LOADK R5 K3 ["MarketplaceSearchFilterOpened"]
  DUPTABLE R6 K8 [{"assetTypeId", "clientId", "toolboxTab", "userId"}]
  JUMPIFNOT R0 [+3]
  GETTABLEKS R7 R0 K9 ["Value"]
  JUMP [+1]
  LOADNIL R7
  SETTABLEKS R7 R6 K4 ["assetTypeId"]
  LOADNIL R8
  GETIMPORT R9 K11 [pcall]
  NEWCLOSURE R10 P0
  CAPTURE REF R8
  CAPTURE UPVAL U2
  CALL R9 1 0
  MOVE R7 R8
  CLOSEUPVALS R8
  SETTABLEKS R7 R6 K5 ["clientId"]
  SETTABLEKS R1 R6 K6 ["toolboxTab"]
  GETUPVAL R7 3
  CALL R7 0 1
  SETTABLEKS R7 R6 K7 ["userId"]
  CALL R2 4 0
  RETURN R0 0

PROTO_70:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["sendEventDeferred"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["eventTarget"]
  LOADK R5 K2 ["UGCUploadFlow"]
  LOADK R6 K3 ["UGCBundleValidationEvent"]
  DUPTABLE R7 K8 [{"clientId", "status", "bundleType", "errors"}]
  LOADNIL R9
  GETIMPORT R10 K10 [pcall]
  NEWCLOSURE R11 P0
  CAPTURE REF R9
  CAPTURE UPVAL U2
  CALL R10 1 0
  MOVE R8 R9
  CLOSEUPVALS R9
  SETTABLEKS R8 R7 K4 ["clientId"]
  SETTABLEKS R0 R7 K5 ["status"]
  SETTABLEKS R1 R7 K6 ["bundleType"]
  SETTABLEKS R2 R7 K7 ["errors"]
  CALL R3 4 0
  RETURN R0 0

PROTO_71:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["sendEventDeferred"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K1 ["eventTarget"]
  LOADK R6 K2 ["UGCUploadFlow"]
  LOADK R7 K3 ["UGCUploadRequestOperationIdEvent"]
  DUPTABLE R8 K9 [{"clientId", "status", "bundleType", "operationId", "errors"}]
  LOADNIL R10
  GETIMPORT R11 K11 [pcall]
  NEWCLOSURE R12 P0
  CAPTURE REF R10
  CAPTURE UPVAL U2
  CALL R11 1 0
  MOVE R9 R10
  CLOSEUPVALS R10
  SETTABLEKS R9 R8 K4 ["clientId"]
  SETTABLEKS R0 R8 K5 ["status"]
  SETTABLEKS R1 R8 K6 ["bundleType"]
  SETTABLEKS R2 R8 K7 ["operationId"]
  SETTABLEKS R3 R8 K8 ["errors"]
  CALL R4 4 0
  RETURN R0 0

PROTO_72:
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["sendEventDeferred"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K1 ["eventTarget"]
  LOADK R7 K2 ["UGCUploadFlow"]
  LOADK R8 K3 ["UGCUploadAssetsEvent"]
  DUPTABLE R9 K10 [{"clientId", "status", "bundleType", "operationId", "assetIds", "errors"}]
  LOADNIL R11
  GETIMPORT R12 K12 [pcall]
  NEWCLOSURE R13 P0
  CAPTURE REF R11
  CAPTURE UPVAL U2
  CALL R12 1 0
  MOVE R10 R11
  CLOSEUPVALS R11
  SETTABLEKS R10 R9 K4 ["clientId"]
  SETTABLEKS R0 R9 K5 ["status"]
  SETTABLEKS R1 R9 K6 ["bundleType"]
  SETTABLEKS R2 R9 K7 ["operationId"]
  SETTABLEKS R3 R9 K8 ["assetIds"]
  SETTABLEKS R4 R9 K9 ["errors"]
  CALL R5 4 0
  RETURN R0 0

PROTO_73:
  GETUPVAL R3 0
  CALL R3 0 1
  FASTCALL2K ASSERT R3 K0 [+4]
  LOADK R4 K0 ["not enabled yet"]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["sendEventDeferred"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K4 ["eventTarget"]
  LOADK R4 K5 ["UGCUploadFlow"]
  LOADK R5 K6 ["UGCIndividualAssetUploadEvent"]
  DUPTABLE R6 K12 [{"placeId", "studioSid", "clientId", "assetId", "underlyingAssetIds"}]
  GETUPVAL R7 3
  CALL R7 0 1
  SETTABLEKS R7 R6 K7 ["placeId"]
  LOADNIL R8
  GETIMPORT R9 K14 [pcall]
  NEWCLOSURE R10 P0
  CAPTURE REF R8
  CAPTURE UPVAL U4
  CALL R9 1 0
  MOVE R7 R8
  CLOSEUPVALS R8
  SETTABLEKS R7 R6 K8 ["studioSid"]
  LOADNIL R8
  GETIMPORT R9 K14 [pcall]
  NEWCLOSURE R10 P1
  CAPTURE REF R8
  CAPTURE UPVAL U4
  CALL R9 1 0
  MOVE R7 R8
  CLOSEUPVALS R8
  SETTABLEKS R7 R6 K9 ["clientId"]
  SETTABLEKS R0 R6 K10 ["assetId"]
  SETTABLEKS R1 R6 K11 ["underlyingAssetIds"]
  CALL R2 4 0
  RETURN R0 0

PROTO_74:
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["sendEventDeferred"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K1 ["eventTarget"]
  LOADK R8 K2 ["UGCUploadFlow"]
  LOADK R9 K3 ["UGCUploadRequestBundleCreationStatusEvent"]
  DUPTABLE R10 K11 [{"clientId", "status", "bundleType", "operationId", "assetIds", "creationStatusId", "errors"}]
  LOADNIL R12
  GETIMPORT R13 K13 [pcall]
  NEWCLOSURE R14 P0
  CAPTURE REF R12
  CAPTURE UPVAL U2
  CALL R13 1 0
  MOVE R11 R12
  CLOSEUPVALS R12
  SETTABLEKS R11 R10 K4 ["clientId"]
  SETTABLEKS R0 R10 K5 ["status"]
  SETTABLEKS R1 R10 K6 ["bundleType"]
  SETTABLEKS R2 R10 K7 ["operationId"]
  SETTABLEKS R3 R10 K8 ["assetIds"]
  SETTABLEKS R4 R10 K9 ["creationStatusId"]
  SETTABLEKS R5 R10 K10 ["errors"]
  CALL R6 4 0
  RETURN R0 0

PROTO_75:
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["sendEventDeferred"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K1 ["eventTarget"]
  LOADK R9 K2 ["UGCUploadFlow"]
  LOADK R10 K3 ["UGCUploadGetBundleCreationStatusEvent"]
  DUPTABLE R11 K12 [{"clientId", "status", "bundleType", "operationId", "assetIds", "creationStatusId", "bundleId", "errors"}]
  LOADNIL R13
  GETIMPORT R14 K14 [pcall]
  NEWCLOSURE R15 P0
  CAPTURE REF R13
  CAPTURE UPVAL U2
  CALL R14 1 0
  MOVE R12 R13
  CLOSEUPVALS R13
  SETTABLEKS R12 R11 K4 ["clientId"]
  SETTABLEKS R0 R11 K5 ["status"]
  SETTABLEKS R1 R11 K6 ["bundleType"]
  SETTABLEKS R2 R11 K7 ["operationId"]
  SETTABLEKS R3 R11 K8 ["assetIds"]
  SETTABLEKS R4 R11 K9 ["creationStatusId"]
  SETTABLEKS R5 R11 K10 ["bundleId"]
  SETTABLEKS R6 R11 K11 ["errors"]
  CALL R7 4 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R1 K6 ["Dash"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R7 R0 K7 ["Core"]
  GETTABLEKS R6 R7 K8 ["Util"]
  GETTABLEKS R5 R6 K9 ["Analytics"]
  GETTABLEKS R4 R5 K10 ["Senders"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K7 ["Core"]
  GETTABLEKS R6 R7 K8 ["Util"]
  GETTABLEKS R5 R6 K11 ["Constants"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K7 ["Core"]
  GETTABLEKS R7 R8 K12 ["Types"]
  GETTABLEKS R6 R7 K13 ["AnalyticsTypes"]
  CALL R5 1 1
  GETIMPORT R6 K15 [game]
  LOADK R8 K16 ["RbxAnalyticsService"]
  NAMECALL R6 R6 K17 ["GetService"]
  CALL R6 2 1
  GETIMPORT R7 K15 [game]
  LOADK R9 K18 ["HttpService"]
  NAMECALL R7 R7 K17 ["GetService"]
  CALL R7 2 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K7 ["Core"]
  GETTABLEKS R10 R11 K8 ["Util"]
  GETTABLEKS R9 R10 K19 ["getUserId"]
  CALL R8 1 1
  GETIMPORT R9 K15 [game]
  LOADK R11 K20 ["NewPackageAnalyticsWithRefactor2"]
  NAMECALL R9 R9 K21 ["GetFastFlag"]
  CALL R9 2 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R14 R0 K7 ["Core"]
  GETTABLEKS R13 R14 K8 ["Util"]
  GETTABLEKS R12 R13 K22 ["SharedFlags"]
  GETTABLEKS R11 R12 K23 ["getFFlagToolboxAddAutocorrect"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R15 R0 K7 ["Core"]
  GETTABLEKS R14 R15 K8 ["Util"]
  GETTABLEKS R13 R14 K22 ["SharedFlags"]
  GETTABLEKS R12 R13 K24 ["getFFlagToolboxEnableSearchOptionsRefactor"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R16 R0 K7 ["Core"]
  GETTABLEKS R15 R16 K8 ["Util"]
  GETTABLEKS R14 R15 K22 ["SharedFlags"]
  GETTABLEKS R13 R14 K25 ["getFFlagToolboxAddCreationsFilterToListView"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R17 R0 K7 ["Core"]
  GETTABLEKS R16 R17 K8 ["Util"]
  GETTABLEKS R15 R16 K22 ["SharedFlags"]
  GETTABLEKS R14 R15 K26 ["getFFlagEnableUGCUploadFlowAnalytics"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K7 ["Core"]
  GETTABLEKS R16 R17 K27 ["Flags"]
  GETTABLEKS R15 R16 K28 ["getFFlagEnableUGCIndividualAssetUploadAnalytics"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R19 R0 K7 ["Core"]
  GETTABLEKS R18 R19 K8 ["Util"]
  GETTABLEKS R17 R18 K22 ["SharedFlags"]
  GETTABLEKS R16 R17 K29 ["getFFlagToolboxFixAnalyticCapitalization"]
  CALL R15 1 1
  GETIMPORT R16 K15 [game]
  LOADK R18 K30 ["ToolboxNoLuaAITimer"]
  LOADN R19 10
  NAMECALL R16 R16 K31 ["DefineFastInt"]
  CALL R16 3 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R20 R0 K7 ["Core"]
  GETTABLEKS R19 R20 K8 ["Util"]
  GETTABLEKS R18 R19 K32 ["getPlaceId"]
  CALL R17 1 1
  DUPCLOSURE R18 K33 [PROTO_1]
  CAPTURE VAL R6
  DUPCLOSURE R19 K34 [PROTO_3]
  CAPTURE VAL R6
  DUPCLOSURE R20 K35 [PROTO_4]
  NEWTABLE R21 128 0
  GETIMPORT R22 K15 [game]
  LOADK R24 K36 ["RunService"]
  NAMECALL R22 R22 K17 ["GetService"]
  CALL R22 2 1
  NAMECALL R22 R22 K37 ["IsEdit"]
  CALL R22 1 1
  DUPCLOSURE R23 K38 [PROTO_5]
  CAPTURE VAL R22
  SETTABLEKS R23 R21 K39 ["getIsEditMode"]
  SETTABLEKS R17 R21 K32 ["getPlaceId"]
  SETTABLEKS R20 R21 K40 ["getPlatformId"]
  SETTABLEKS R19 R21 K41 ["getClientId"]
  SETTABLEKS R18 R21 K42 ["getStudioSessionId"]
  DUPCLOSURE R24 K43 [PROTO_6]
  CAPTURE VAL R21
  SETTABLEKS R24 R21 K44 ["setPluginUri"]
  LOADB R26 0
  NAMECALL R24 R7 K45 ["GenerateGUID"]
  CALL R24 2 1
  SETTABLEKS R24 R21 K46 ["toolboxSid"]
  GETTABLEKS R25 R4 K47 ["ANALYTICS_TARGET"]
  GETTABLEKS R24 R25 K48 ["Studio"]
  SETTABLEKS R24 R21 K49 ["eventTarget"]
  DUPTABLE R24 K61 [{"toolboxInitTimestamp", "storeTabOpenTimestamp", "firstStoreAssetImpressionEventFired", "firstLuaAssetImpressionEventFired", "retryShownEventFired", "didFallbackToLuaUi", "initialToolboxTab", "onWebViewTimingEventFired", "beforeInteractiveTimeMs", "afterInteractiveTimeMs", "loadSuccessTimeMs"}]
  LOADNIL R25
  SETTABLEKS R25 R24 K50 ["toolboxInitTimestamp"]
  LOADNIL R25
  SETTABLEKS R25 R24 K51 ["storeTabOpenTimestamp"]
  LOADB R25 0
  SETTABLEKS R25 R24 K52 ["firstStoreAssetImpressionEventFired"]
  LOADB R25 0
  SETTABLEKS R25 R24 K53 ["firstLuaAssetImpressionEventFired"]
  LOADB R25 0
  SETTABLEKS R25 R24 K54 ["retryShownEventFired"]
  LOADB R25 0
  SETTABLEKS R25 R24 K55 ["didFallbackToLuaUi"]
  LOADNIL R25
  SETTABLEKS R25 R24 K56 ["initialToolboxTab"]
  LOADB R25 0
  SETTABLEKS R25 R24 K57 ["onWebViewTimingEventFired"]
  LOADNIL R25
  SETTABLEKS R25 R24 K58 ["beforeInteractiveTimeMs"]
  LOADNIL R25
  SETTABLEKS R25 R24 K59 ["afterInteractiveTimeMs"]
  LOADNIL R25
  SETTABLEKS R25 R24 K60 ["loadSuccessTimeMs"]
  SETTABLEKS R24 R21 K62 ["WebView"]
  DUPCLOSURE R24 K63 [PROTO_7]
  CAPTURE VAL R21
  SETTABLEKS R24 R21 K64 ["setEventTarget"]
  DUPCLOSURE R24 K65 [PROTO_8]
  CAPTURE VAL R21
  CAPTURE VAL R8
  CAPTURE VAL R2
  SETTABLEKS R24 R21 K66 ["getWebViewTrackingAttributes"]
  DUPCLOSURE R24 K67 [PROTO_9]
  CAPTURE VAL R21
  CAPTURE VAL R3
  CAPTURE VAL R4
  SETTABLEKS R24 R21 K68 ["onRetryWebViewInit"]
  DUPCLOSURE R24 K69 [PROTO_10]
  CAPTURE VAL R21
  CAPTURE VAL R3
  CAPTURE VAL R4
  SETTABLEKS R24 R21 K70 ["onWebViewRetryClicked"]
  DUPCLOSURE R24 K71 [PROTO_11]
  CAPTURE VAL R21
  CAPTURE VAL R3
  CAPTURE VAL R4
  SETTABLEKS R24 R21 K72 ["onWebViewRetryShown"]
  DUPCLOSURE R24 K73 [PROTO_12]
  CAPTURE VAL R21
  CAPTURE VAL R3
  CAPTURE VAL R4
  SETTABLEKS R24 R21 K74 ["onWebViewTimingEvent"]
  DUPCLOSURE R24 K75 [PROTO_13]
  CAPTURE VAL R21
  CAPTURE VAL R3
  CAPTURE VAL R4
  SETTABLEKS R24 R21 K76 ["onWebViewInit"]
  DUPCLOSURE R24 K77 [PROTO_14]
  CAPTURE VAL R21
  CAPTURE VAL R3
  CAPTURE VAL R4
  SETTABLEKS R24 R21 K78 ["onFallbackToLuaUi"]
  DUPCLOSURE R24 K79 [PROTO_15]
  CAPTURE VAL R21
  SETTABLEKS R24 R21 K80 ["setInitialToolboxTab"]
  DUPCLOSURE R24 K81 [PROTO_17]
  CAPTURE VAL R21
  CAPTURE VAL R16
  CAPTURE VAL R3
  CAPTURE VAL R4
  SETTABLEKS R24 R21 K82 ["setToolboxInitTimestamp"]
  DUPCLOSURE R24 K83 [PROTO_18]
  CAPTURE VAL R21
  SETTABLEKS R24 R21 K84 ["onStoreTabOpened"]
  DUPCLOSURE R24 K85 [PROTO_19]
  CAPTURE VAL R21
  SETTABLEKS R24 R21 K86 ["logFirstLuaAssetImpression"]
  DUPCLOSURE R24 K87 [PROTO_20]
  CAPTURE VAL R21
  CAPTURE VAL R3
  CAPTURE VAL R4
  SETTABLEKS R24 R21 K88 ["logFirstStoreAssetImpression"]
  DUPCLOSURE R24 K89 [PROTO_21]
  CAPTURE VAL R21
  CAPTURE VAL R3
  SETTABLEKS R24 R21 K90 ["onToolboxTabChanged"]
  MOVE R24 R13
  CALL R24 0 1
  JUMPIFNOT R24 [+12]
  DUPTABLE R24 K94 [{"Start", "Success", "Failure"}]
  LOADK R25 K91 ["Start"]
  SETTABLEKS R25 R24 K91 ["Start"]
  LOADK R25 K92 ["Success"]
  SETTABLEKS R25 R24 K92 ["Success"]
  LOADK R25 K93 ["Failure"]
  SETTABLEKS R25 R24 K93 ["Failure"]
  SETTABLEKS R24 R21 K95 ["Status"]
  DUPCLOSURE R24 K96 [PROTO_22]
  CAPTURE VAL R3
  CAPTURE VAL R21
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R22
  SETTABLEKS R24 R21 K97 ["onTermSearchedWithoutInsertion"]
  DUPCLOSURE R24 K98 [PROTO_23]
  CAPTURE VAL R3
  CAPTURE VAL R21
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R11
  CAPTURE VAL R22
  SETTABLEKS R24 R21 K99 ["onCreatorSearched"]
  DUPCLOSURE R24 K100 [PROTO_24]
  CAPTURE VAL R3
  CAPTURE VAL R21
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R22
  SETTABLEKS R24 R21 K101 ["onTryAsset"]
  DUPCLOSURE R24 K102 [PROTO_25]
  CAPTURE VAL R3
  CAPTURE VAL R21
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R22
  SETTABLEKS R24 R21 K103 ["onTryAssetFailure"]
  DUPCLOSURE R24 K104 [PROTO_26]
  CAPTURE VAL R3
  CAPTURE VAL R21
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R22
  SETTABLEKS R24 R21 K105 ["onSearchOptionsOpened"]
  DUPCLOSURE R24 K106 [PROTO_27]
  CAPTURE VAL R3
  CAPTURE VAL R21
  CAPTURE VAL R6
  CAPTURE VAL R22
  SETTABLEKS R24 R21 K107 ["onCategorySelected"]
  DUPCLOSURE R24 K108 [PROTO_28]
  CAPTURE VAL R6
  CAPTURE VAL R17
  CAPTURE VAL R8
  CAPTURE VAL R22
  CAPTURE VAL R3
  CAPTURE VAL R21
  SETTABLEKS R24 R21 K109 ["onAssetInserted"]
  DUPCLOSURE R24 K110 [PROTO_29]
  CAPTURE VAL R3
  CAPTURE VAL R21
  CAPTURE VAL R6
  CAPTURE VAL R17
  CAPTURE VAL R8
  CAPTURE VAL R22
  SETTABLEKS R24 R21 K111 ["onAssetDragInserted"]
  DUPCLOSURE R24 K112 [PROTO_30]
  CAPTURE VAL R3
  CAPTURE VAL R21
  CAPTURE VAL R6
  CAPTURE VAL R17
  CAPTURE VAL R8
  CAPTURE VAL R22
  SETTABLEKS R24 R21 K113 ["reportDragInsertFinished"]
  DUPCLOSURE R24 K114 [PROTO_31]
  CAPTURE VAL R3
  CAPTURE VAL R21
  CAPTURE VAL R6
  CAPTURE VAL R17
  CAPTURE VAL R8
  SETTABLEKS R24 R21 K115 ["onPackageNoteCreated"]
  DUPCLOSURE R24 K116 [PROTO_32]
  CAPTURE VAL R3
  CAPTURE VAL R21
  CAPTURE VAL R6
  CAPTURE VAL R17
  CAPTURE VAL R8
  SETTABLEKS R24 R21 K117 ["onPackageNoteDiscarded"]
  DUPCLOSURE R24 K118 [PROTO_33]
  CAPTURE VAL R3
  CAPTURE VAL R21
  CAPTURE VAL R6
  CAPTURE VAL R17
  CAPTURE VAL R8
  SETTABLEKS R24 R21 K119 ["onPackageNoteCanceled"]
  DUPCLOSURE R24 K120 [PROTO_34]
  CAPTURE VAL R3
  SETTABLEKS R24 R21 K121 ["incrementToolboxInsertCounter"]
  DUPCLOSURE R24 K122 [PROTO_35]
  CAPTURE VAL R3
  SETTABLEKS R24 R21 K123 ["incrementToolboxCategoryInsertCounter"]
  DUPCLOSURE R24 K124 [PROTO_36]
  CAPTURE VAL R3
  SETTABLEKS R24 R21 K125 ["incrementWorkspaceInsertCounter"]
  DUPCLOSURE R24 K126 [PROTO_37]
  CAPTURE VAL R3
  SETTABLEKS R24 R21 K127 ["incrementUploadAssetSuccess"]
  DUPCLOSURE R24 K128 [PROTO_38]
  CAPTURE VAL R3
  SETTABLEKS R24 R21 K129 ["incrementUploadAssetFailure"]
  DUPCLOSURE R24 K130 [PROTO_39]
  CAPTURE VAL R3
  SETTABLEKS R24 R21 K131 ["onSoundPlayedCounter"]
  DUPCLOSURE R24 K132 [PROTO_40]
  CAPTURE VAL R3
  SETTABLEKS R24 R21 K133 ["onSoundPausedCounter"]
  DUPCLOSURE R24 K134 [PROTO_41]
  CAPTURE VAL R9
  CAPTURE VAL R3
  SETTABLEKS R24 R21 K135 ["sendResultToKibana"]
  DUPCLOSURE R24 K136 [PROTO_42]
  CAPTURE VAL R3
  SETTABLEKS R24 R21 K137 ["incrementAssetImpressionCounter"]
  DUPCLOSURE R24 K138 [PROTO_43]
  CAPTURE VAL R3
  CAPTURE VAL R21
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R22
  SETTABLEKS R24 R21 K139 ["onAssetPreviewSelected"]
  DUPCLOSURE R24 K140 [PROTO_44]
  CAPTURE VAL R3
  CAPTURE VAL R21
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R22
  SETTABLEKS R24 R21 K141 ["onAssetPreviewEnded"]
  DUPCLOSURE R24 K142 [PROTO_45]
  CAPTURE VAL R3
  CAPTURE VAL R21
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R22
  SETTABLEKS R24 R21 K143 ["onAssetInsertedFromAssetPreview"]
  DUPCLOSURE R24 K144 [PROTO_46]
  CAPTURE VAL R21
  CAPTURE VAL R3
  SETTABLEKS R24 R21 K145 ["onPluginButtonClickOpen"]
  DUPCLOSURE R24 K146 [PROTO_47]
  CAPTURE VAL R21
  CAPTURE VAL R3
  SETTABLEKS R24 R21 K147 ["onPluginButtonClickClose"]
  DUPCLOSURE R24 K148 [PROTO_48]
  CAPTURE VAL R21
  CAPTURE VAL R3
  SETTABLEKS R24 R21 K149 ["onToolboxDisplayed"]
  DUPCLOSURE R24 K150 [PROTO_49]
  CAPTURE VAL R21
  CAPTURE VAL R3
  SETTABLEKS R24 R21 K151 ["onToolboxHidden"]
  DUPCLOSURE R24 K152 [PROTO_50]
  CAPTURE VAL R21
  CAPTURE VAL R3
  SETTABLEKS R24 R21 K153 ["onToolboxUnmounted"]
  DUPCLOSURE R24 K154 [PROTO_51]
  CAPTURE VAL R21
  CAPTURE VAL R3
  SETTABLEKS R24 R21 K155 ["onToolboxInitialSizing"]
  DUPCLOSURE R24 K156 [PROTO_52]
  CAPTURE VAL R3
  CAPTURE VAL R21
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R22
  SETTABLEKS R24 R21 K157 ["onContextMenuClicked"]
  DUPCLOSURE R24 K158 [PROTO_53]
  CAPTURE VAL R3
  CAPTURE VAL R21
  CAPTURE VAL R6
  CAPTURE VAL R22
  SETTABLEKS R24 R21 K159 ["openedFromPluginManagement"]
  DUPCLOSURE R24 K160 [PROTO_54]
  CAPTURE VAL R3
  CAPTURE VAL R21
  CAPTURE VAL R6
  CAPTURE VAL R22
  SETTABLEKS R24 R21 K161 ["openedExternallyByAssetType"]
  DUPCLOSURE R24 K162 [PROTO_55]
  CAPTURE VAL R3
  CAPTURE VAL R21
  CAPTURE VAL R6
  CAPTURE VAL R22
  SETTABLEKS R24 R21 K163 ["reportAssetClicked"]
  DUPCLOSURE R24 K164 [PROTO_56]
  CAPTURE VAL R3
  CAPTURE VAL R21
  CAPTURE VAL R6
  CAPTURE VAL R22
  CAPTURE VAL R17
  SETTABLEKS R24 R21 K165 ["reportMeshPartFiltered"]
  DUPCLOSURE R24 K166 [PROTO_57]
  CAPTURE VAL R3
  CAPTURE VAL R21
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R22
  SETTABLEKS R24 R21 K167 ["onIdVerificationIconClicked"]
  DUPCLOSURE R24 K168 [PROTO_58]
  CAPTURE VAL R15
  CAPTURE VAL R6
  CAPTURE VAL R12
  CAPTURE VAL R22
  CAPTURE VAL R8
  CAPTURE VAL R17
  CAPTURE VAL R21
  CAPTURE VAL R10
  CAPTURE VAL R3
  SETTABLEKS R24 R21 K169 ["marketplaceSearch"]
  DUPCLOSURE R24 K170 [PROTO_59]
  CAPTURE VAL R15
  CAPTURE VAL R6
  CAPTURE VAL R22
  CAPTURE VAL R8
  CAPTURE VAL R17
  CAPTURE VAL R3
  CAPTURE VAL R21
  SETTABLEKS R24 R21 K171 ["marketplaceAutocompleteSearch"]
  DUPCLOSURE R24 K172 [PROTO_60]
  CAPTURE VAL R21
  CAPTURE VAL R3
  SETTABLEKS R24 R21 K173 ["onToolboxWidgetInteraction"]
  DUPCLOSURE R24 K174 [PROTO_61]
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R3
  CAPTURE VAL R21
  SETTABLEKS R24 R21 K175 ["AnnouncementViewed"]
  DUPCLOSURE R24 K176 [PROTO_62]
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R3
  CAPTURE VAL R21
  SETTABLEKS R24 R21 K177 ["AnnouncementLinkClicked"]
  DUPCLOSURE R24 K178 [PROTO_63]
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R3
  CAPTURE VAL R21
  SETTABLEKS R24 R21 K179 ["AnnouncementClosed"]
  DUPCLOSURE R24 K180 [PROTO_64]
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R3
  CAPTURE VAL R21
  SETTABLEKS R24 R21 K181 ["AnnouncementAcknowledged"]
  DUPCLOSURE R24 K182 [PROTO_65]
  CAPTURE VAL R3
  CAPTURE VAL R21
  CAPTURE VAL R6
  CAPTURE VAL R8
  SETTABLEKS R24 R21 K183 ["AssetMediaItemsUpdated"]
  DUPCLOSURE R24 K184 [PROTO_66]
  CAPTURE VAL R3
  CAPTURE VAL R21
  CAPTURE VAL R6
  CAPTURE VAL R8
  SETTABLEKS R24 R21 K185 ["MarketplaceListViewToggleClicked"]
  DUPCLOSURE R24 K186 [PROTO_67]
  CAPTURE VAL R3
  CAPTURE VAL R21
  CAPTURE VAL R6
  CAPTURE VAL R8
  SETTABLEKS R24 R21 K187 ["MarketplaceAssetRowExpanded"]
  DUPCLOSURE R24 K188 [PROTO_68]
  CAPTURE VAL R3
  CAPTURE VAL R21
  CAPTURE VAL R6
  CAPTURE VAL R8
  SETTABLEKS R24 R21 K189 ["MarketplaceRecentSearchClicked"]
  DUPCLOSURE R24 K190 [PROTO_69]
  CAPTURE VAL R3
  CAPTURE VAL R21
  CAPTURE VAL R6
  CAPTURE VAL R8
  SETTABLEKS R24 R21 K191 ["MarketplaceSearchFilterOpened"]
  MOVE R24 R13
  CALL R24 0 1
  JUMPIFNOT R24 [+38]
  DUPCLOSURE R24 K192 [PROTO_70]
  CAPTURE VAL R3
  CAPTURE VAL R21
  CAPTURE VAL R6
  SETTABLEKS R24 R21 K193 ["UGCBundleValidationEvent"]
  DUPCLOSURE R24 K194 [PROTO_71]
  CAPTURE VAL R3
  CAPTURE VAL R21
  CAPTURE VAL R6
  SETTABLEKS R24 R21 K195 ["UGCUploadRequestOperationIdEvent"]
  DUPCLOSURE R24 K196 [PROTO_72]
  CAPTURE VAL R3
  CAPTURE VAL R21
  CAPTURE VAL R6
  SETTABLEKS R24 R21 K197 ["UGCUploadAssetsEvent"]
  DUPCLOSURE R24 K198 [PROTO_73]
  CAPTURE VAL R14
  CAPTURE VAL R3
  CAPTURE VAL R21
  CAPTURE VAL R17
  CAPTURE VAL R6
  SETTABLEKS R24 R21 K199 ["UGCIndividualAssetUploadEvent"]
  DUPCLOSURE R24 K200 [PROTO_74]
  CAPTURE VAL R3
  CAPTURE VAL R21
  CAPTURE VAL R6
  SETTABLEKS R24 R21 K201 ["UGCUploadRequestBundleCreationStatusEvent"]
  DUPCLOSURE R24 K202 [PROTO_75]
  CAPTURE VAL R3
  CAPTURE VAL R21
  CAPTURE VAL R6
  SETTABLEKS R24 R21 K203 ["UGCUploadGetBundleCreationStatusEvent"]
  RETURN R21 1
