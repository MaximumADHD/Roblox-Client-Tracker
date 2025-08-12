PROTO_0:
  DUPTABLE R2 K5 [{"actionName", "placeId", "universeId", "userId", "eventTimeMilliseconds"}]
  SETTABLEKS R0 R2 K0 ["actionName"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K6 ["PlaceIdKey"]
  NAMECALL R3 R1 K7 ["GetItem"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K1 ["placeId"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K8 ["UniverseIdKey"]
  NAMECALL R3 R1 K7 ["GetItem"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K2 ["universeId"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K9 ["UserIdKey"]
  NAMECALL R3 R1 K7 ["GetItem"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K3 ["userId"]
  GETIMPORT R4 K12 [DateTime.now]
  CALL R4 0 1
  GETTABLEKS R3 R4 K13 ["UnixTimestampMillis"]
  SETTABLEKS R3 R2 K4 ["eventTimeMilliseconds"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["PlaceAnnotations"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["Constants"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K9 ["Bin"]
  GETTABLEKS R4 R5 K10 ["Common"]
  GETTABLEKS R3 R4 K11 ["defineLuaFlags"]
  CALL R2 1 1
  DUPTABLE R3 K18 [{"eventName", "backends", "throttlingPercentage", "lastUpdated", "description", "links"}]
  LOADK R4 K19 ["StudioAnnotationsAction"]
  SETTABLEKS R4 R3 K12 ["eventName"]
  NEWTABLE R4 0 2
  LOADK R5 K20 ["EventIngest"]
  LOADK R6 K21 ["Points"]
  SETLIST R4 R5 2 [1]
  SETTABLEKS R4 R3 K13 ["backends"]
  GETTABLEKS R4 R2 K22 ["fintAnnotationsPluginActionThrottleHundredthsPercent"]
  SETTABLEKS R4 R3 K14 ["throttlingPercentage"]
  NEWTABLE R4 0 3
  LOADN R5 25
  LOADN R6 7
  LOADN R7 31
  SETLIST R4 R5 3 [1]
  SETTABLEKS R4 R3 K15 ["lastUpdated"]
  LOADK R4 K23 ["Reports when a Studio annotation/comment popup or the annotations plugin widget is opened/closed, including: 
- action name “Plugin” for plugin widget, “Popover” for existing comment popover, “Popup” for new adding comment popup
- concatenated with \"Open\" or \"Close\" depending on the action taken"]
  SETTABLEKS R4 R3 K16 ["description"]
  LOADK R4 K24 ["https://roblox.atlassian.net/wiki/x/RoGF4"]
  SETTABLEKS R4 R3 K17 ["links"]
  DUPCLOSURE R4 K25 [PROTO_0]
  CAPTURE VAL R1
  DUPTABLE R5 K28 [{"getTelemetryEvent", "AnnotationsPluginActionEvent"}]
  SETTABLEKS R4 R5 K26 ["getTelemetryEvent"]
  SETTABLEKS R3 R5 K27 ["AnnotationsPluginActionEvent"]
  RETURN R5 1
