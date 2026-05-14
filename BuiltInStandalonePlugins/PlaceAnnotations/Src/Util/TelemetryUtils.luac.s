PROTO_0:
        0 DUPTABLE                         R2 K5 [{"actionName", "placeId", "universeId", "userId", "eventTimeMilliseconds"}]
        1 SETTABLEKS                       R0 R2 K0 ["actionName"]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R5 K6 ["PlaceIdKey"]
        6 NAMECALL                         R3 R1 K7 ["GetItem"]
        8 CALL                             R3 2 1
        9 SETTABLEKS                       R3 R2 K1 ["placeId"]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K8 ["UniverseIdKey"]
       14 NAMECALL                         R3 R1 K7 ["GetItem"]
       16 CALL                             R3 2 1
       17 SETTABLEKS                       R3 R2 K2 ["universeId"]
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R5 R5 K9 ["UserIdKey"]
       22 NAMECALL                         R3 R1 K7 ["GetItem"]
       24 CALL                             R3 2 1
       25 SETTABLEKS                       R3 R2 K3 ["userId"]
       27 GETIMPORT                        R3 K12 [DateTime.now]
       29 CALL                             R3 0 1
       30 GETTABLEKS                       R3 R3 K13 ["UnixTimestampMillis"]
       32 SETTABLEKS                       R3 R2 K4 ["eventTimeMilliseconds"]
       34 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Bin"]
       20 GETTABLEKS                       R3 R3 K10 ["Common"]
       22 GETTABLEKS                       R3 R3 K11 ["defineLuaFlags"]
       24 CALL                             R2 1 1
       25 DUPTABLE                         R3 K18 [{"eventName", "backends", "throttlingPercentage", "lastUpdated", "description", "links"}]
       26 LOADK                            R4 K19 ["StudioAnnotationsAction"]
       27 SETTABLEKS                       R4 R3 K12 ["eventName"]
       29 NEWTABLE                         R4 0 2
       31 LOADK                            R5 K20 ["EventIngest"]
       32 LOADK                            R6 K21 ["Points"]
       33 SETLIST                          R4 R5 2 [1]
       35 SETTABLEKS                       R4 R3 K13 ["backends"]
       37 GETTABLEKS                       R4 R2 K22 ["fintAnnotationsPluginActionThrottleHundredthsPercent"]
       39 SETTABLEKS                       R4 R3 K14 ["throttlingPercentage"]
       41 NEWTABLE                         R4 0 3
       43 LOADN                            R5 25
       44 LOADN                            R6 7
       45 LOADN                            R7 31
       46 SETLIST                          R4 R5 3 [1]
       48 SETTABLEKS                       R4 R3 K15 ["lastUpdated"]
       50 LOADK                            R4 K23 ["Reports when a Studio annotation/comment popup or the annotations plugin widget is opened/closed, including: \n- action name “Plugin” for plugin widget, “Popover” for existing comment popover, “Popup” for new adding comment popup\n- concatenated with \"Open\" or \"Close\" depending on the action taken"]
       51 SETTABLEKS                       R4 R3 K16 ["description"]
       53 LOADK                            R4 K24 ["https://roblox.atlassian.net/wiki/x/RoGF4"]
       54 SETTABLEKS                       R4 R3 K17 ["links"]
       56 DUPCLOSURE                       R4 K25 [PROTO_0]
       57 CAPTURE                          VAL R1
       58 DUPTABLE                         R5 K28 [{"getTelemetryEvent", "AnnotationsPluginActionEvent"}]
       59 SETTABLEKS                       R4 R5 K26 ["getTelemetryEvent"]
       61 SETTABLEKS                       R3 R5 K27 ["AnnotationsPluginActionEvent"]
       63 RETURN                           R5 1
