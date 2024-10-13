PROTO_0:
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CompositorDebugger"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  DUPTABLE R2 K13 [{"children", "id", "hrpCFrame", "name", "timestamp"}]
  NEWTABLE R3 0 1
  DUPTABLE R4 K18 [{"children", "className", "id", "name", "props", "state", "weight"}]
  NEWTABLE R5 0 1
  DUPTABLE R6 K18 [{"children", "className", "id", "name", "props", "state", "weight"}]
  NEWTABLE R7 0 2
  DUPTABLE R8 K18 [{"children", "className", "id", "name", "props", "state", "weight"}]
  NEWTABLE R9 0 0
  SETTABLEKS R9 R8 K8 ["children"]
  LOADK R9 K19 ["ClipLayer"]
  SETTABLEKS R9 R8 K14 ["className"]
  LOADK R9 K20 ["{91a192be-2369-41cb-801a-26bd4fc053d2}"]
  SETTABLEKS R9 R8 K9 ["id"]
  LOADK R9 K21 ["Tool None"]
  SETTABLEKS R9 R8 K11 ["name"]
  DUPTABLE R9 K31 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
  LOADK R10 K32 ["rbxassetid://507768375"]
  SETTABLEKS R10 R9 K22 ["animationId"]
  LOADK R10 K33 [""]
  SETTABLEKS R10 R9 K23 ["didLoopEventName"]
  LOADK R10 K34 [∞]
  SETTABLEKS R10 R9 K24 ["endTime"]
  LOADN R10 255
  SETTABLEKS R10 R9 K25 ["looping"]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K26 ["markerEvents"]
  LOADB R10 1
  SETTABLEKS R10 R9 K27 ["preload"]
  LOADN R10 1
  SETTABLEKS R10 R9 K28 ["speed"]
  LOADN R10 0
  SETTABLEKS R10 R9 K29 ["startTime"]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K30 ["timePositionEvents"]
  SETTABLEKS R9 R8 K15 ["props"]
  DUPTABLE R9 K41 [{"currentAnimationId", "length", "loadingState", "markerEvents", "prevTimePosition", "timePosition", "timePositionEvents", "timePositionNormalized"}]
  LOADK R10 K32 ["rbxassetid://507768375"]
  SETTABLEKS R10 R9 K35 ["currentAnimationId"]
  LOADK R10 K42 [0.0416666679084301]
  SETTABLEKS R10 R9 K36 ["length"]
  LOADK R10 K43 ["Loaded"]
  SETTABLEKS R10 R9 K37 ["loadingState"]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K26 ["markerEvents"]
  LOADK R10 K44 [0.0333335059694946]
  SETTABLEKS R10 R9 K38 ["prevTimePosition"]
  LOADK R10 K44 [0.0333335059694946]
  SETTABLEKS R10 R9 K39 ["timePosition"]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K30 ["timePositionEvents"]
  LOADK R10 K45 [0.800004119425889]
  SETTABLEKS R10 R9 K40 ["timePositionNormalized"]
  SETTABLEKS R9 R8 K16 ["state"]
  LOADN R9 1
  SETTABLEKS R9 R8 K17 ["weight"]
  SETTABLEN R8 R7 1
  DUPTABLE R8 K46 [{"children", "className", "id", "props", "state", "weight"}]
  NEWTABLE R9 0 10
  DUPTABLE R10 K48 [{"children", "className", "id", "linkData", "name", "props", "state", "weight"}]
  NEWTABLE R11 0 11
  DUPTABLE R12 K50 [{"children", "className", "id", "index", "linkData", "name", "props", "state", "weight"}]
  NEWTABLE R13 0 0
  SETTABLEKS R13 R12 K8 ["children"]
  LOADK R13 K51 ["RestPose"]
  SETTABLEKS R13 R12 K14 ["className"]
  LOADK R13 K52 ["{b93312c4-8c4d-453c-93ed-9541195b7fe7}"]
  SETTABLEKS R13 R12 K9 ["id"]
  LOADN R13 1
  SETTABLEKS R13 R12 K49 ["index"]
  DUPTABLE R13 K54 [{"position"}]
  GETIMPORT R14 K57 [Vector2.new]
  LOADN R15 0
  LOADN R16 0
  CALL R14 2 1
  SETTABLEKS R14 R13 K53 ["position"]
  SETTABLEKS R13 R12 K47 ["linkData"]
  LOADK R13 K58 ["Origin"]
  SETTABLEKS R13 R12 K11 ["name"]
  DUPTABLE R13 K60 [{"duration"}]
  LOADN R14 1
  SETTABLEKS R14 R13 K59 ["duration"]
  SETTABLEKS R13 R12 K15 ["props"]
  DUPTABLE R13 K61 [{"length", "timePositionNormalized"}]
  LOADN R14 1
  SETTABLEKS R14 R13 K36 ["length"]
  LOADN R14 0
  SETTABLEKS R14 R13 K40 ["timePositionNormalized"]
  SETTABLEKS R13 R12 K16 ["state"]
  LOADN R13 0
  SETTABLEKS R13 R12 K17 ["weight"]
  SETTABLEN R12 R11 1
  DUPTABLE R12 K50 [{"children", "className", "id", "index", "linkData", "name", "props", "state", "weight"}]
  NEWTABLE R13 0 0
  SETTABLEKS R13 R12 K8 ["children"]
  LOADK R13 K19 ["ClipLayer"]
  SETTABLEKS R13 R12 K14 ["className"]
  LOADK R13 K62 ["{6556d92c-2ab0-47f6-9633-1e8b22e8c823}"]
  SETTABLEKS R13 R12 K9 ["id"]
  LOADN R13 2
  SETTABLEKS R13 R12 K49 ["index"]
  DUPTABLE R13 K54 [{"position"}]
  GETIMPORT R14 K57 [Vector2.new]
  LOADN R15 1
  LOADN R16 0
  CALL R14 2 1
  SETTABLEKS R14 R13 K53 ["position"]
  SETTABLEKS R13 R12 K47 ["linkData"]
  LOADK R13 K63 ["Right Walk"]
  SETTABLEKS R13 R12 K11 ["name"]
  DUPTABLE R13 K31 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
  LOADK R14 K64 ["rbxassetid://10847107747"]
  SETTABLEKS R14 R13 K22 ["animationId"]
  LOADK R14 K33 [""]
  SETTABLEKS R14 R13 K23 ["didLoopEventName"]
  LOADK R14 K34 [∞]
  SETTABLEKS R14 R13 K24 ["endTime"]
  LOADN R14 255
  SETTABLEKS R14 R13 K25 ["looping"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K26 ["markerEvents"]
  LOADB R14 1
  SETTABLEKS R14 R13 K27 ["preload"]
  LOADN R14 1
  SETTABLEKS R14 R13 K28 ["speed"]
  LOADN R14 0
  SETTABLEKS R14 R13 K29 ["startTime"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K30 ["timePositionEvents"]
  SETTABLEKS R13 R12 K15 ["props"]
  DUPTABLE R13 K65 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
  LOADK R14 K64 ["rbxassetid://10847107747"]
  SETTABLEKS R14 R13 K35 ["currentAnimationId"]
  LOADK R14 K66 [0.625]
  SETTABLEKS R14 R13 K36 ["length"]
  LOADK R14 K43 ["Loaded"]
  SETTABLEKS R14 R13 K37 ["loadingState"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K26 ["markerEvents"]
  LOADN R14 0
  SETTABLEKS R14 R13 K39 ["timePosition"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K30 ["timePositionEvents"]
  LOADN R14 0
  SETTABLEKS R14 R13 K40 ["timePositionNormalized"]
  SETTABLEKS R13 R12 K16 ["state"]
  LOADN R13 0
  SETTABLEKS R13 R12 K17 ["weight"]
  SETTABLEN R12 R11 2
  DUPTABLE R12 K50 [{"children", "className", "id", "index", "linkData", "name", "props", "state", "weight"}]
  NEWTABLE R13 0 0
  SETTABLEKS R13 R12 K8 ["children"]
  LOADK R13 K19 ["ClipLayer"]
  SETTABLEKS R13 R12 K14 ["className"]
  LOADK R13 K67 ["{782abac9-1ad8-46b8-9441-dd901a6e923f}"]
  SETTABLEKS R13 R12 K9 ["id"]
  LOADN R13 3
  SETTABLEKS R13 R12 K49 ["index"]
  DUPTABLE R13 K54 [{"position"}]
  GETIMPORT R14 K57 [Vector2.new]
  LOADN R15 2
  LOADN R16 0
  CALL R14 2 1
  SETTABLEKS R14 R13 K53 ["position"]
  SETTABLEKS R13 R12 K47 ["linkData"]
  LOADK R13 K68 ["Right Run"]
  SETTABLEKS R13 R12 K11 ["name"]
  DUPTABLE R13 K31 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
  LOADK R14 K69 ["rbxassetid://10847291554"]
  SETTABLEKS R14 R13 K22 ["animationId"]
  LOADK R14 K33 [""]
  SETTABLEKS R14 R13 K23 ["didLoopEventName"]
  LOADK R14 K34 [∞]
  SETTABLEKS R14 R13 K24 ["endTime"]
  LOADN R14 255
  SETTABLEKS R14 R13 K25 ["looping"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K26 ["markerEvents"]
  LOADB R14 1
  SETTABLEKS R14 R13 K27 ["preload"]
  LOADN R14 1
  SETTABLEKS R14 R13 K28 ["speed"]
  LOADN R14 0
  SETTABLEKS R14 R13 K29 ["startTime"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K30 ["timePositionEvents"]
  SETTABLEKS R13 R12 K15 ["props"]
  DUPTABLE R13 K65 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
  LOADK R14 K69 ["rbxassetid://10847291554"]
  SETTABLEKS R14 R13 K35 ["currentAnimationId"]
  LOADK R14 K66 [0.625]
  SETTABLEKS R14 R13 K36 ["length"]
  LOADK R14 K43 ["Loaded"]
  SETTABLEKS R14 R13 K37 ["loadingState"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K26 ["markerEvents"]
  LOADN R14 0
  SETTABLEKS R14 R13 K39 ["timePosition"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K30 ["timePositionEvents"]
  LOADN R14 0
  SETTABLEKS R14 R13 K40 ["timePositionNormalized"]
  SETTABLEKS R13 R12 K16 ["state"]
  LOADN R13 0
  SETTABLEKS R13 R12 K17 ["weight"]
  SETTABLEN R12 R11 3
  DUPTABLE R12 K50 [{"children", "className", "id", "index", "linkData", "name", "props", "state", "weight"}]
  NEWTABLE R13 0 0
  SETTABLEKS R13 R12 K8 ["children"]
  LOADK R13 K19 ["ClipLayer"]
  SETTABLEKS R13 R12 K14 ["className"]
  LOADK R13 K70 ["{816c6077-957c-4748-9ed6-72985a98a8af}"]
  SETTABLEKS R13 R12 K9 ["id"]
  LOADN R13 4
  SETTABLEKS R13 R12 K49 ["index"]
  DUPTABLE R13 K54 [{"position"}]
  GETIMPORT R14 K57 [Vector2.new]
  LOADN R15 255
  LOADN R16 0
  CALL R14 2 1
  SETTABLEKS R14 R13 K53 ["position"]
  SETTABLEKS R13 R12 K47 ["linkData"]
  LOADK R13 K71 ["Left Walk"]
  SETTABLEKS R13 R12 K11 ["name"]
  DUPTABLE R13 K31 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
  LOADK R14 K72 ["rbxassetid://10382771806"]
  SETTABLEKS R14 R13 K22 ["animationId"]
  LOADK R14 K33 [""]
  SETTABLEKS R14 R13 K23 ["didLoopEventName"]
  LOADK R14 K34 [∞]
  SETTABLEKS R14 R13 K24 ["endTime"]
  LOADN R14 255
  SETTABLEKS R14 R13 K25 ["looping"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K26 ["markerEvents"]
  LOADB R14 1
  SETTABLEKS R14 R13 K27 ["preload"]
  LOADN R14 1
  SETTABLEKS R14 R13 K28 ["speed"]
  LOADN R14 0
  SETTABLEKS R14 R13 K29 ["startTime"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K30 ["timePositionEvents"]
  SETTABLEKS R13 R12 K15 ["props"]
  DUPTABLE R13 K65 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
  LOADK R14 K72 ["rbxassetid://10382771806"]
  SETTABLEKS R14 R13 K35 ["currentAnimationId"]
  LOADK R14 K66 [0.625]
  SETTABLEKS R14 R13 K36 ["length"]
  LOADK R14 K43 ["Loaded"]
  SETTABLEKS R14 R13 K37 ["loadingState"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K26 ["markerEvents"]
  LOADN R14 0
  SETTABLEKS R14 R13 K39 ["timePosition"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K30 ["timePositionEvents"]
  LOADN R14 0
  SETTABLEKS R14 R13 K40 ["timePositionNormalized"]
  SETTABLEKS R13 R12 K16 ["state"]
  LOADN R13 0
  SETTABLEKS R13 R12 K17 ["weight"]
  SETTABLEN R12 R11 4
  DUPTABLE R12 K50 [{"children", "className", "id", "index", "linkData", "name", "props", "state", "weight"}]
  NEWTABLE R13 0 0
  SETTABLEKS R13 R12 K8 ["children"]
  LOADK R13 K19 ["ClipLayer"]
  SETTABLEKS R13 R12 K14 ["className"]
  LOADK R13 K73 ["{9a4dc8c8-59ec-40a8-88ae-36d8c2e7476d}"]
  SETTABLEKS R13 R12 K9 ["id"]
  LOADN R13 5
  SETTABLEKS R13 R12 K49 ["index"]
  DUPTABLE R13 K54 [{"position"}]
  GETIMPORT R14 K57 [Vector2.new]
  LOADN R15 254
  LOADN R16 0
  CALL R14 2 1
  SETTABLEKS R14 R13 K53 ["position"]
  SETTABLEKS R13 R12 K47 ["linkData"]
  LOADK R13 K74 ["Left Run"]
  SETTABLEKS R13 R12 K11 ["name"]
  DUPTABLE R13 K31 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
  LOADK R14 K75 ["rbxassetid://10847298457"]
  SETTABLEKS R14 R13 K22 ["animationId"]
  LOADK R14 K33 [""]
  SETTABLEKS R14 R13 K23 ["didLoopEventName"]
  LOADK R14 K34 [∞]
  SETTABLEKS R14 R13 K24 ["endTime"]
  LOADN R14 255
  SETTABLEKS R14 R13 K25 ["looping"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K26 ["markerEvents"]
  LOADB R14 1
  SETTABLEKS R14 R13 K27 ["preload"]
  LOADN R14 1
  SETTABLEKS R14 R13 K28 ["speed"]
  LOADN R14 0
  SETTABLEKS R14 R13 K29 ["startTime"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K30 ["timePositionEvents"]
  SETTABLEKS R13 R12 K15 ["props"]
  DUPTABLE R13 K65 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
  LOADK R14 K75 ["rbxassetid://10847298457"]
  SETTABLEKS R14 R13 K35 ["currentAnimationId"]
  LOADK R14 K66 [0.625]
  SETTABLEKS R14 R13 K36 ["length"]
  LOADK R14 K43 ["Loaded"]
  SETTABLEKS R14 R13 K37 ["loadingState"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K26 ["markerEvents"]
  LOADN R14 0
  SETTABLEKS R14 R13 K39 ["timePosition"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K30 ["timePositionEvents"]
  LOADN R14 0
  SETTABLEKS R14 R13 K40 ["timePositionNormalized"]
  SETTABLEKS R13 R12 K16 ["state"]
  LOADN R13 0
  SETTABLEKS R13 R12 K17 ["weight"]
  SETTABLEN R12 R11 5
  DUPTABLE R12 K50 [{"children", "className", "id", "index", "linkData", "name", "props", "state", "weight"}]
  NEWTABLE R13 0 0
  SETTABLEKS R13 R12 K8 ["children"]
  LOADK R13 K19 ["ClipLayer"]
  SETTABLEKS R13 R12 K14 ["className"]
  LOADK R13 K76 ["{ae2f3459-80bc-4487-a5fb-7b82c38f2f8d}"]
  SETTABLEKS R13 R12 K9 ["id"]
  LOADN R13 6
  SETTABLEKS R13 R12 K49 ["index"]
  DUPTABLE R13 K54 [{"position"}]
  GETIMPORT R14 K57 [Vector2.new]
  LOADN R15 0
  LOADN R16 255
  CALL R14 2 1
  SETTABLEKS R14 R13 K53 ["position"]
  SETTABLEKS R13 R12 K47 ["linkData"]
  LOADK R13 K77 ["Backward Walk"]
  SETTABLEKS R13 R12 K11 ["name"]
  DUPTABLE R13 K31 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
  LOADK R14 K78 ["rbxassetid://10358505520"]
  SETTABLEKS R14 R13 K22 ["animationId"]
  LOADK R14 K33 [""]
  SETTABLEKS R14 R13 K23 ["didLoopEventName"]
  LOADK R14 K34 [∞]
  SETTABLEKS R14 R13 K24 ["endTime"]
  LOADN R14 255
  SETTABLEKS R14 R13 K25 ["looping"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K26 ["markerEvents"]
  LOADB R14 1
  SETTABLEKS R14 R13 K27 ["preload"]
  LOADN R14 1
  SETTABLEKS R14 R13 K28 ["speed"]
  LOADN R14 0
  SETTABLEKS R14 R13 K29 ["startTime"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K30 ["timePositionEvents"]
  SETTABLEKS R13 R12 K15 ["props"]
  DUPTABLE R13 K65 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
  LOADK R14 K78 ["rbxassetid://10358505520"]
  SETTABLEKS R14 R13 K35 ["currentAnimationId"]
  LOADK R14 K66 [0.625]
  SETTABLEKS R14 R13 K36 ["length"]
  LOADK R14 K43 ["Loaded"]
  SETTABLEKS R14 R13 K37 ["loadingState"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K26 ["markerEvents"]
  LOADN R14 0
  SETTABLEKS R14 R13 K39 ["timePosition"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K30 ["timePositionEvents"]
  LOADN R14 0
  SETTABLEKS R14 R13 K40 ["timePositionNormalized"]
  SETTABLEKS R13 R12 K16 ["state"]
  LOADN R13 0
  SETTABLEKS R13 R12 K17 ["weight"]
  SETTABLEN R12 R11 6
  DUPTABLE R12 K50 [{"children", "className", "id", "index", "linkData", "name", "props", "state", "weight"}]
  NEWTABLE R13 0 0
  SETTABLEKS R13 R12 K8 ["children"]
  LOADK R13 K19 ["ClipLayer"]
  SETTABLEKS R13 R12 K14 ["className"]
  LOADK R13 K79 ["{c6b01432-2acf-4e04-bca4-ecee93647ac6}"]
  SETTABLEKS R13 R12 K9 ["id"]
  LOADN R13 7
  SETTABLEKS R13 R12 K49 ["index"]
  DUPTABLE R13 K54 [{"position"}]
  GETIMPORT R14 K57 [Vector2.new]
  LOADN R15 0
  LOADN R16 254
  CALL R14 2 1
  SETTABLEKS R14 R13 K53 ["position"]
  SETTABLEKS R13 R12 K47 ["linkData"]
  LOADK R13 K80 ["Backward Run"]
  SETTABLEKS R13 R12 K11 ["name"]
  DUPTABLE R13 K31 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
  LOADK R14 K81 ["rbxassetid://10358526981"]
  SETTABLEKS R14 R13 K22 ["animationId"]
  LOADK R14 K33 [""]
  SETTABLEKS R14 R13 K23 ["didLoopEventName"]
  LOADK R14 K34 [∞]
  SETTABLEKS R14 R13 K24 ["endTime"]
  LOADN R14 255
  SETTABLEKS R14 R13 K25 ["looping"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K26 ["markerEvents"]
  LOADB R14 1
  SETTABLEKS R14 R13 K27 ["preload"]
  LOADN R14 1
  SETTABLEKS R14 R13 K28 ["speed"]
  LOADN R14 0
  SETTABLEKS R14 R13 K29 ["startTime"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K30 ["timePositionEvents"]
  SETTABLEKS R13 R12 K15 ["props"]
  DUPTABLE R13 K65 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
  LOADK R14 K81 ["rbxassetid://10358526981"]
  SETTABLEKS R14 R13 K35 ["currentAnimationId"]
  LOADK R14 K66 [0.625]
  SETTABLEKS R14 R13 K36 ["length"]
  LOADK R14 K43 ["Loaded"]
  SETTABLEKS R14 R13 K37 ["loadingState"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K26 ["markerEvents"]
  LOADN R14 0
  SETTABLEKS R14 R13 K39 ["timePosition"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K30 ["timePositionEvents"]
  LOADN R14 0
  SETTABLEKS R14 R13 K40 ["timePositionNormalized"]
  SETTABLEKS R13 R12 K16 ["state"]
  LOADN R13 0
  SETTABLEKS R13 R12 K17 ["weight"]
  SETTABLEN R12 R11 7
  DUPTABLE R12 K50 [{"children", "className", "id", "index", "linkData", "name", "props", "state", "weight"}]
  NEWTABLE R13 0 0
  SETTABLEKS R13 R12 K8 ["children"]
  LOADK R13 K19 ["ClipLayer"]
  SETTABLEKS R13 R12 K14 ["className"]
  LOADK R13 K82 ["{e466dbc1-f3d2-4271-8ad8-e0ac692c1356}"]
  SETTABLEKS R13 R12 K9 ["id"]
  LOADN R13 8
  SETTABLEKS R13 R12 K49 ["index"]
  DUPTABLE R13 K54 [{"position"}]
  GETIMPORT R14 K57 [Vector2.new]
  LOADK R15 K83 [-0.707106769]
  LOADK R16 K83 [-0.707106769]
  CALL R14 2 1
  SETTABLEKS R14 R13 K53 ["position"]
  SETTABLEKS R13 R12 K47 ["linkData"]
  LOADK R13 K84 ["Backward Left Walk"]
  SETTABLEKS R13 R12 K11 ["name"]
  DUPTABLE R13 K31 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
  LOADK R14 K72 ["rbxassetid://10382771806"]
  SETTABLEKS R14 R13 K22 ["animationId"]
  LOADK R14 K33 [""]
  SETTABLEKS R14 R13 K23 ["didLoopEventName"]
  LOADK R14 K34 [∞]
  SETTABLEKS R14 R13 K24 ["endTime"]
  LOADN R14 255
  SETTABLEKS R14 R13 K25 ["looping"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K26 ["markerEvents"]
  LOADB R14 1
  SETTABLEKS R14 R13 K27 ["preload"]
  LOADN R14 1
  SETTABLEKS R14 R13 K28 ["speed"]
  LOADN R14 0
  SETTABLEKS R14 R13 K29 ["startTime"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K30 ["timePositionEvents"]
  SETTABLEKS R13 R12 K15 ["props"]
  DUPTABLE R13 K65 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
  LOADK R14 K72 ["rbxassetid://10382771806"]
  SETTABLEKS R14 R13 K35 ["currentAnimationId"]
  LOADK R14 K66 [0.625]
  SETTABLEKS R14 R13 K36 ["length"]
  LOADK R14 K43 ["Loaded"]
  SETTABLEKS R14 R13 K37 ["loadingState"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K26 ["markerEvents"]
  LOADN R14 0
  SETTABLEKS R14 R13 K39 ["timePosition"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K30 ["timePositionEvents"]
  LOADN R14 0
  SETTABLEKS R14 R13 K40 ["timePositionNormalized"]
  SETTABLEKS R13 R12 K16 ["state"]
  LOADN R13 0
  SETTABLEKS R13 R12 K17 ["weight"]
  SETTABLEN R12 R11 8
  DUPTABLE R12 K50 [{"children", "className", "id", "index", "linkData", "name", "props", "state", "weight"}]
  NEWTABLE R13 0 0
  SETTABLEKS R13 R12 K8 ["children"]
  LOADK R13 K19 ["ClipLayer"]
  SETTABLEKS R13 R12 K14 ["className"]
  LOADK R13 K85 ["{605421b4-16f3-40f9-a781-561ea5fa97fe}"]
  SETTABLEKS R13 R12 K9 ["id"]
  LOADN R13 9
  SETTABLEKS R13 R12 K49 ["index"]
  DUPTABLE R13 K54 [{"position"}]
  GETIMPORT R14 K57 [Vector2.new]
  LOADK R15 K86 [0.707106769]
  LOADK R16 K83 [-0.707106769]
  CALL R14 2 1
  SETTABLEKS R14 R13 K53 ["position"]
  SETTABLEKS R13 R12 K47 ["linkData"]
  LOADK R13 K87 ["Backward Right Walk"]
  SETTABLEKS R13 R12 K11 ["name"]
  DUPTABLE R13 K31 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
  LOADK R14 K88 ["rbxassetid://10382635795"]
  SETTABLEKS R14 R13 K22 ["animationId"]
  LOADK R14 K33 [""]
  SETTABLEKS R14 R13 K23 ["didLoopEventName"]
  LOADK R14 K34 [∞]
  SETTABLEKS R14 R13 K24 ["endTime"]
  LOADN R14 255
  SETTABLEKS R14 R13 K25 ["looping"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K26 ["markerEvents"]
  LOADB R14 1
  SETTABLEKS R14 R13 K27 ["preload"]
  LOADN R14 1
  SETTABLEKS R14 R13 K28 ["speed"]
  LOADN R14 0
  SETTABLEKS R14 R13 K29 ["startTime"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K30 ["timePositionEvents"]
  SETTABLEKS R13 R12 K15 ["props"]
  DUPTABLE R13 K65 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
  LOADK R14 K88 ["rbxassetid://10382635795"]
  SETTABLEKS R14 R13 K35 ["currentAnimationId"]
  LOADK R14 K66 [0.625]
  SETTABLEKS R14 R13 K36 ["length"]
  LOADK R14 K43 ["Loaded"]
  SETTABLEKS R14 R13 K37 ["loadingState"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K26 ["markerEvents"]
  LOADN R14 0
  SETTABLEKS R14 R13 K39 ["timePosition"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K30 ["timePositionEvents"]
  LOADN R14 0
  SETTABLEKS R14 R13 K40 ["timePositionNormalized"]
  SETTABLEKS R13 R12 K16 ["state"]
  LOADN R13 0
  SETTABLEKS R13 R12 K17 ["weight"]
  SETTABLEN R12 R11 9
  DUPTABLE R12 K50 [{"children", "className", "id", "index", "linkData", "name", "props", "state", "weight"}]
  NEWTABLE R13 0 0
  SETTABLEKS R13 R12 K8 ["children"]
  LOADK R13 K19 ["ClipLayer"]
  SETTABLEKS R13 R12 K14 ["className"]
  LOADK R13 K89 ["{3f08126d-f7f8-405e-bc24-026900d76dc4}"]
  SETTABLEKS R13 R12 K9 ["id"]
  LOADN R13 10
  SETTABLEKS R13 R12 K49 ["index"]
  DUPTABLE R13 K54 [{"position"}]
  GETIMPORT R14 K57 [Vector2.new]
  LOADK R15 K90 [-1.41421354]
  LOADK R16 K90 [-1.41421354]
  CALL R14 2 1
  SETTABLEKS R14 R13 K53 ["position"]
  SETTABLEKS R13 R12 K47 ["linkData"]
  LOADK R13 K91 ["Backward Left Run"]
  SETTABLEKS R13 R12 K11 ["name"]
  DUPTABLE R13 K31 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
  LOADK R14 K92 ["rbxassetid://10382960556"]
  SETTABLEKS R14 R13 K22 ["animationId"]
  LOADK R14 K33 [""]
  SETTABLEKS R14 R13 K23 ["didLoopEventName"]
  LOADK R14 K34 [∞]
  SETTABLEKS R14 R13 K24 ["endTime"]
  LOADN R14 255
  SETTABLEKS R14 R13 K25 ["looping"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K26 ["markerEvents"]
  LOADB R14 1
  SETTABLEKS R14 R13 K27 ["preload"]
  LOADN R14 1
  SETTABLEKS R14 R13 K28 ["speed"]
  LOADN R14 0
  SETTABLEKS R14 R13 K29 ["startTime"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K30 ["timePositionEvents"]
  SETTABLEKS R13 R12 K15 ["props"]
  DUPTABLE R13 K65 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
  LOADK R14 K92 ["rbxassetid://10382960556"]
  SETTABLEKS R14 R13 K35 ["currentAnimationId"]
  LOADK R14 K66 [0.625]
  SETTABLEKS R14 R13 K36 ["length"]
  LOADK R14 K43 ["Loaded"]
  SETTABLEKS R14 R13 K37 ["loadingState"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K26 ["markerEvents"]
  LOADN R14 0
  SETTABLEKS R14 R13 K39 ["timePosition"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K30 ["timePositionEvents"]
  LOADN R14 0
  SETTABLEKS R14 R13 K40 ["timePositionNormalized"]
  SETTABLEKS R13 R12 K16 ["state"]
  LOADN R13 0
  SETTABLEKS R13 R12 K17 ["weight"]
  SETTABLEN R12 R11 10
  DUPTABLE R12 K50 [{"children", "className", "id", "index", "linkData", "name", "props", "state", "weight"}]
  NEWTABLE R13 0 0
  SETTABLEKS R13 R12 K8 ["children"]
  LOADK R13 K19 ["ClipLayer"]
  SETTABLEKS R13 R12 K14 ["className"]
  LOADK R13 K93 ["{bf7bf7ee-c275-4ac6-aa71-86df90705fee}"]
  SETTABLEKS R13 R12 K9 ["id"]
  LOADN R13 11
  SETTABLEKS R13 R12 K49 ["index"]
  DUPTABLE R13 K54 [{"position"}]
  GETIMPORT R14 K57 [Vector2.new]
  LOADK R15 K94 [1.41421354]
  LOADK R16 K90 [-1.41421354]
  CALL R14 2 1
  SETTABLEKS R14 R13 K53 ["position"]
  SETTABLEKS R13 R12 K47 ["linkData"]
  LOADK R13 K95 ["Backward Right Run"]
  SETTABLEKS R13 R12 K11 ["name"]
  DUPTABLE R13 K31 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
  LOADK R14 K96 ["rbxassetid://10382949241"]
  SETTABLEKS R14 R13 K22 ["animationId"]
  LOADK R14 K33 [""]
  SETTABLEKS R14 R13 K23 ["didLoopEventName"]
  LOADK R14 K34 [∞]
  SETTABLEKS R14 R13 K24 ["endTime"]
  LOADN R14 255
  SETTABLEKS R14 R13 K25 ["looping"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K26 ["markerEvents"]
  LOADB R14 1
  SETTABLEKS R14 R13 K27 ["preload"]
  LOADN R14 1
  SETTABLEKS R14 R13 K28 ["speed"]
  LOADN R14 0
  SETTABLEKS R14 R13 K29 ["startTime"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K30 ["timePositionEvents"]
  SETTABLEKS R13 R12 K15 ["props"]
  DUPTABLE R13 K65 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
  LOADK R14 K96 ["rbxassetid://10382949241"]
  SETTABLEKS R14 R13 K35 ["currentAnimationId"]
  LOADK R14 K66 [0.625]
  SETTABLEKS R14 R13 K36 ["length"]
  LOADK R14 K43 ["Loaded"]
  SETTABLEKS R14 R13 K37 ["loadingState"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K26 ["markerEvents"]
  LOADN R14 0
  SETTABLEKS R14 R13 K39 ["timePosition"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K30 ["timePositionEvents"]
  LOADN R14 0
  SETTABLEKS R14 R13 K40 ["timePositionNormalized"]
  SETTABLEKS R13 R12 K16 ["state"]
  LOADN R13 0
  SETTABLEKS R13 R12 K17 ["weight"]
  SETTABLEN R12 R11 11
  SETTABLEKS R11 R10 K8 ["children"]
  LOADK R11 K97 ["BlendSpace"]
  SETTABLEKS R11 R10 K14 ["className"]
  LOADK R11 K98 ["{01378bfa-3123-4277-be55-5105e62f22f2}"]
  SETTABLEKS R11 R10 K9 ["id"]
  NEWTABLE R11 0 1
  LOADK R12 K99 ["LocomotingBackward"]
  SETTABLEN R12 R11 1
  SETTABLEKS R11 R10 K47 ["linkData"]
  LOADK R11 K100 ["Backward Locomotion"]
  SETTABLEKS R11 R10 K11 ["name"]
  DUPTABLE R11 K105 [{"blendSpaceType", "lowLodThreshold", "positionSmoothingTime", "speed", "targetPosition"}]
  LOADK R12 K106 ["Locomotion"]
  SETTABLEKS R12 R11 K101 ["blendSpaceType"]
  LOADN R12 2
  SETTABLEKS R12 R11 K102 ["lowLodThreshold"]
  LOADN R12 0
  SETTABLEKS R12 R11 K103 ["positionSmoothingTime"]
  LOADN R12 0
  SETTABLEKS R12 R11 K28 ["speed"]
  GETIMPORT R12 K57 [Vector2.new]
  LOADN R13 0
  LOADN R14 0
  CALL R12 2 1
  SETTABLEKS R12 R11 K104 ["targetPosition"]
  SETTABLEKS R11 R10 K15 ["props"]
  DUPTABLE R11 K61 [{"length", "timePositionNormalized"}]
  LOADN R12 0
  SETTABLEKS R12 R11 K36 ["length"]
  LOADN R12 0
  SETTABLEKS R12 R11 K40 ["timePositionNormalized"]
  SETTABLEKS R11 R10 K16 ["state"]
  LOADN R11 0
  SETTABLEKS R11 R10 K17 ["weight"]
  SETTABLEN R10 R9 1
  DUPTABLE R10 K48 [{"children", "className", "id", "linkData", "name", "props", "state", "weight"}]
  NEWTABLE R11 0 0
  SETTABLEKS R11 R10 K8 ["children"]
  LOADK R11 K19 ["ClipLayer"]
  SETTABLEKS R11 R10 K14 ["className"]
  LOADK R11 K107 ["{67afe536-0b3e-4542-b392-26a3e7691d57}"]
  SETTABLEKS R11 R10 K9 ["id"]
  NEWTABLE R11 0 1
  LOADK R12 K108 ["Climbing"]
  SETTABLEN R12 R11 1
  SETTABLEKS R11 R10 K47 ["linkData"]
  LOADK R11 K108 ["Climbing"]
  SETTABLEKS R11 R10 K11 ["name"]
  DUPTABLE R11 K31 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
  LOADK R12 K109 ["rbxassetid://507765644"]
  SETTABLEKS R12 R11 K22 ["animationId"]
  LOADK R12 K33 [""]
  SETTABLEKS R12 R11 K23 ["didLoopEventName"]
  LOADK R12 K34 [∞]
  SETTABLEKS R12 R11 K24 ["endTime"]
  LOADN R12 255
  SETTABLEKS R12 R11 K25 ["looping"]
  NEWTABLE R12 0 0
  SETTABLEKS R12 R11 K26 ["markerEvents"]
  LOADB R12 1
  SETTABLEKS R12 R11 K27 ["preload"]
  LOADN R12 0
  SETTABLEKS R12 R11 K28 ["speed"]
  LOADN R12 0
  SETTABLEKS R12 R11 K29 ["startTime"]
  NEWTABLE R12 0 0
  SETTABLEKS R12 R11 K30 ["timePositionEvents"]
  SETTABLEKS R11 R10 K15 ["props"]
  DUPTABLE R11 K65 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
  LOADK R12 K109 ["rbxassetid://507765644"]
  SETTABLEKS R12 R11 K35 ["currentAnimationId"]
  LOADK R12 K110 [1.04167497158051]
  SETTABLEKS R12 R11 K36 ["length"]
  LOADK R12 K43 ["Loaded"]
  SETTABLEKS R12 R11 K37 ["loadingState"]
  NEWTABLE R12 0 0
  SETTABLEKS R12 R11 K26 ["markerEvents"]
  LOADN R12 0
  SETTABLEKS R12 R11 K39 ["timePosition"]
  NEWTABLE R12 0 0
  SETTABLEKS R12 R11 K30 ["timePositionEvents"]
  LOADN R12 0
  SETTABLEKS R12 R11 K40 ["timePositionNormalized"]
  SETTABLEKS R11 R10 K16 ["state"]
  LOADN R11 0
  SETTABLEKS R11 R10 K17 ["weight"]
  SETTABLEN R10 R9 2
  DUPTABLE R10 K48 [{"children", "className", "id", "linkData", "name", "props", "state", "weight"}]
  NEWTABLE R11 0 0
  SETTABLEKS R11 R10 K8 ["children"]
  LOADK R11 K19 ["ClipLayer"]
  SETTABLEKS R11 R10 K14 ["className"]
  LOADK R11 K111 ["{4fee757f-9545-47de-9d1b-832f0de17068}"]
  SETTABLEKS R11 R10 K9 ["id"]
  NEWTABLE R11 0 1
  LOADK R12 K112 ["Emote"]
  SETTABLEN R12 R11 1
  SETTABLEKS R11 R10 K47 ["linkData"]
  LOADK R11 K112 ["Emote"]
  SETTABLEKS R11 R10 K11 ["name"]
  DUPTABLE R11 K113 [{"didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
  LOADK R12 K33 [""]
  SETTABLEKS R12 R11 K23 ["didLoopEventName"]
  LOADK R12 K34 [∞]
  SETTABLEKS R12 R11 K24 ["endTime"]
  LOADN R12 255
  SETTABLEKS R12 R11 K25 ["looping"]
  NEWTABLE R12 0 0
  SETTABLEKS R12 R11 K26 ["markerEvents"]
  LOADB R12 1
  SETTABLEKS R12 R11 K27 ["preload"]
  LOADN R12 1
  SETTABLEKS R12 R11 K28 ["speed"]
  LOADN R12 0
  SETTABLEKS R12 R11 K29 ["startTime"]
  NEWTABLE R12 0 1
  DUPTABLE R13 K115 [{"name", "shouldFireFn", "timePosition"}]
  LOADK R14 K116 ["EmoteEnding"]
  SETTABLEKS R14 R13 K11 ["name"]
  DUPCLOSURE R14 K117 [PROTO_0]
  SETTABLEKS R14 R13 K114 ["shouldFireFn"]
  LOADK R14 K118 [-0.2]
  SETTABLEKS R14 R13 K39 ["timePosition"]
  SETTABLEN R13 R12 1
  SETTABLEKS R12 R11 K30 ["timePositionEvents"]
  SETTABLEKS R11 R10 K15 ["props"]
  DUPTABLE R11 K119 [{"length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
  LOADN R12 0
  SETTABLEKS R12 R11 K36 ["length"]
  LOADK R12 K120 ["Unloaded"]
  SETTABLEKS R12 R11 K37 ["loadingState"]
  NEWTABLE R12 0 0
  SETTABLEKS R12 R11 K26 ["markerEvents"]
  LOADN R12 0
  SETTABLEKS R12 R11 K39 ["timePosition"]
  NEWTABLE R12 0 0
  SETTABLEKS R12 R11 K30 ["timePositionEvents"]
  LOADN R12 0
  SETTABLEKS R12 R11 K40 ["timePositionNormalized"]
  SETTABLEKS R11 R10 K16 ["state"]
  LOADN R11 0
  SETTABLEKS R11 R10 K17 ["weight"]
  SETTABLEN R10 R9 3
  DUPTABLE R10 K48 [{"children", "className", "id", "linkData", "name", "props", "state", "weight"}]
  NEWTABLE R11 0 0
  SETTABLEKS R11 R10 K8 ["children"]
  LOADK R11 K19 ["ClipLayer"]
  SETTABLEKS R11 R10 K14 ["className"]
  LOADK R11 K121 ["{65f0fdf6-733e-42b8-b8a1-19ef18c415c1}"]
  SETTABLEKS R11 R10 K9 ["id"]
  NEWTABLE R11 0 1
  LOADK R12 K122 ["Falling"]
  SETTABLEN R12 R11 1
  SETTABLEKS R11 R10 K47 ["linkData"]
  LOADK R11 K122 ["Falling"]
  SETTABLEKS R11 R10 K11 ["name"]
  DUPTABLE R11 K31 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
  LOADK R12 K123 ["rbxassetid://10921262864"]
  SETTABLEKS R12 R11 K22 ["animationId"]
  LOADK R12 K33 [""]
  SETTABLEKS R12 R11 K23 ["didLoopEventName"]
  LOADK R12 K34 [∞]
  SETTABLEKS R12 R11 K24 ["endTime"]
  LOADN R12 255
  SETTABLEKS R12 R11 K25 ["looping"]
  NEWTABLE R12 0 0
  SETTABLEKS R12 R11 K26 ["markerEvents"]
  LOADB R12 1
  SETTABLEKS R12 R11 K27 ["preload"]
  LOADN R12 1
  SETTABLEKS R12 R11 K28 ["speed"]
  LOADN R12 0
  SETTABLEKS R12 R11 K29 ["startTime"]
  NEWTABLE R12 0 0
  SETTABLEKS R12 R11 K30 ["timePositionEvents"]
  SETTABLEKS R11 R10 K15 ["props"]
  DUPTABLE R11 K65 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
  LOADK R12 K123 ["rbxassetid://10921262864"]
  SETTABLEKS R12 R11 K35 ["currentAnimationId"]
  LOADK R12 K124 [0.75]
  SETTABLEKS R12 R11 K36 ["length"]
  LOADK R12 K43 ["Loaded"]
  SETTABLEKS R12 R11 K37 ["loadingState"]
  NEWTABLE R12 0 0
  SETTABLEKS R12 R11 K26 ["markerEvents"]
  LOADN R12 0
  SETTABLEKS R12 R11 K39 ["timePosition"]
  NEWTABLE R12 0 0
  SETTABLEKS R12 R11 K30 ["timePositionEvents"]
  LOADN R12 0
  SETTABLEKS R12 R11 K40 ["timePositionNormalized"]
  SETTABLEKS R11 R10 K16 ["state"]
  LOADN R11 0
  SETTABLEKS R11 R10 K17 ["weight"]
  SETTABLEN R10 R9 4
  DUPTABLE R10 K48 [{"children", "className", "id", "linkData", "name", "props", "state", "weight"}]
  NEWTABLE R11 0 11
  DUPTABLE R12 K50 [{"children", "className", "id", "index", "linkData", "name", "props", "state", "weight"}]
  NEWTABLE R13 0 0
  SETTABLEKS R13 R12 K8 ["children"]
  LOADK R13 K51 ["RestPose"]
  SETTABLEKS R13 R12 K14 ["className"]
  LOADK R13 K125 ["{3ccee2e5-24c1-46eb-a736-825584054a59}"]
  SETTABLEKS R13 R12 K9 ["id"]
  LOADN R13 1
  SETTABLEKS R13 R12 K49 ["index"]
  DUPTABLE R13 K54 [{"position"}]
  GETIMPORT R14 K57 [Vector2.new]
  LOADN R15 0
  LOADN R16 0
  CALL R14 2 1
  SETTABLEKS R14 R13 K53 ["position"]
  SETTABLEKS R13 R12 K47 ["linkData"]
  LOADK R13 K58 ["Origin"]
  SETTABLEKS R13 R12 K11 ["name"]
  DUPTABLE R13 K60 [{"duration"}]
  LOADN R14 1
  SETTABLEKS R14 R13 K59 ["duration"]
  SETTABLEKS R13 R12 K15 ["props"]
  DUPTABLE R13 K61 [{"length", "timePositionNormalized"}]
  LOADN R14 1
  SETTABLEKS R14 R13 K36 ["length"]
  LOADN R14 0
  SETTABLEKS R14 R13 K40 ["timePositionNormalized"]
  SETTABLEKS R13 R12 K16 ["state"]
  LOADN R13 0
  SETTABLEKS R13 R12 K17 ["weight"]
  SETTABLEN R12 R11 1
  DUPTABLE R12 K50 [{"children", "className", "id", "index", "linkData", "name", "props", "state", "weight"}]
  NEWTABLE R13 0 0
  SETTABLEKS R13 R12 K8 ["children"]
  LOADK R13 K19 ["ClipLayer"]
  SETTABLEKS R13 R12 K14 ["className"]
  LOADK R13 K126 ["{65ac6017-a983-4124-b6b3-558227f7e545}"]
  SETTABLEKS R13 R12 K9 ["id"]
  LOADN R13 2
  SETTABLEKS R13 R12 K49 ["index"]
  DUPTABLE R13 K54 [{"position"}]
  GETIMPORT R14 K57 [Vector2.new]
  LOADN R15 0
  LOADN R16 1
  CALL R14 2 1
  SETTABLEKS R14 R13 K53 ["position"]
  SETTABLEKS R13 R12 K47 ["linkData"]
  LOADK R13 K127 ["Forward Walk"]
  SETTABLEKS R13 R12 K11 ["name"]
  DUPTABLE R13 K31 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
  LOADK R14 K128 ["rbxassetid://14045085169"]
  SETTABLEKS R14 R13 K22 ["animationId"]
  LOADK R14 K33 [""]
  SETTABLEKS R14 R13 K23 ["didLoopEventName"]
  LOADK R14 K34 [∞]
  SETTABLEKS R14 R13 K24 ["endTime"]
  LOADN R14 255
  SETTABLEKS R14 R13 K25 ["looping"]
  DUPTABLE R14 K130 [{"Footstep"}]
  LOADK R15 K129 ["Footstep"]
  SETTABLEKS R15 R14 K129 ["Footstep"]
  SETTABLEKS R14 R13 K26 ["markerEvents"]
  LOADB R14 1
  SETTABLEKS R14 R13 K27 ["preload"]
  LOADN R14 1
  SETTABLEKS R14 R13 K28 ["speed"]
  LOADN R14 0
  SETTABLEKS R14 R13 K29 ["startTime"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K30 ["timePositionEvents"]
  SETTABLEKS R13 R12 K15 ["props"]
  DUPTABLE R13 K65 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
  LOADK R14 K128 ["rbxassetid://14045085169"]
  SETTABLEKS R14 R13 K35 ["currentAnimationId"]
  LOADN R14 0
  SETTABLEKS R14 R13 K36 ["length"]
  LOADK R14 K131 ["Loading"]
  SETTABLEKS R14 R13 K37 ["loadingState"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K26 ["markerEvents"]
  LOADN R14 0
  SETTABLEKS R14 R13 K39 ["timePosition"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K30 ["timePositionEvents"]
  LOADN R14 0
  SETTABLEKS R14 R13 K40 ["timePositionNormalized"]
  SETTABLEKS R13 R12 K16 ["state"]
  LOADN R13 0
  SETTABLEKS R13 R12 K17 ["weight"]
  SETTABLEN R12 R11 2
  DUPTABLE R12 K50 [{"children", "className", "id", "index", "linkData", "name", "props", "state", "weight"}]
  NEWTABLE R13 0 0
  SETTABLEKS R13 R12 K8 ["children"]
  LOADK R13 K19 ["ClipLayer"]
  SETTABLEKS R13 R12 K14 ["className"]
  LOADK R13 K132 ["{1d71c8d7-85ee-4ecf-9c9f-aef68c69a889}"]
  SETTABLEKS R13 R12 K9 ["id"]
  LOADN R13 3
  SETTABLEKS R13 R12 K49 ["index"]
  DUPTABLE R13 K54 [{"position"}]
  GETIMPORT R14 K57 [Vector2.new]
  LOADN R15 0
  LOADN R16 2
  CALL R14 2 1
  SETTABLEKS R14 R13 K53 ["position"]
  SETTABLEKS R13 R12 K47 ["linkData"]
  LOADK R13 K133 ["Forward Run"]
  SETTABLEKS R13 R12 K11 ["name"]
  DUPTABLE R13 K31 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
  LOADK R14 K134 ["rbxassetid://10899968825"]
  SETTABLEKS R14 R13 K22 ["animationId"]
  LOADK R14 K33 [""]
  SETTABLEKS R14 R13 K23 ["didLoopEventName"]
  LOADK R14 K34 [∞]
  SETTABLEKS R14 R13 K24 ["endTime"]
  LOADN R14 255
  SETTABLEKS R14 R13 K25 ["looping"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K26 ["markerEvents"]
  LOADB R14 1
  SETTABLEKS R14 R13 K27 ["preload"]
  LOADN R14 1
  SETTABLEKS R14 R13 K28 ["speed"]
  LOADN R14 0
  SETTABLEKS R14 R13 K29 ["startTime"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K30 ["timePositionEvents"]
  SETTABLEKS R13 R12 K15 ["props"]
  DUPTABLE R13 K65 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
  LOADK R14 K134 ["rbxassetid://10899968825"]
  SETTABLEKS R14 R13 K35 ["currentAnimationId"]
  LOADK R14 K66 [0.625]
  SETTABLEKS R14 R13 K36 ["length"]
  LOADK R14 K43 ["Loaded"]
  SETTABLEKS R14 R13 K37 ["loadingState"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K26 ["markerEvents"]
  LOADN R14 0
  SETTABLEKS R14 R13 K39 ["timePosition"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K30 ["timePositionEvents"]
  LOADN R14 0
  SETTABLEKS R14 R13 K40 ["timePositionNormalized"]
  SETTABLEKS R13 R12 K16 ["state"]
  LOADN R13 0
  SETTABLEKS R13 R12 K17 ["weight"]
  SETTABLEN R12 R11 3
  DUPTABLE R12 K50 [{"children", "className", "id", "index", "linkData", "name", "props", "state", "weight"}]
  NEWTABLE R13 0 0
  SETTABLEKS R13 R12 K8 ["children"]
  LOADK R13 K19 ["ClipLayer"]
  SETTABLEKS R13 R12 K14 ["className"]
  LOADK R13 K135 ["{4512dbbc-91da-45cc-950a-9480266b4b2d}"]
  SETTABLEKS R13 R12 K9 ["id"]
  LOADN R13 4
  SETTABLEKS R13 R12 K49 ["index"]
  DUPTABLE R13 K54 [{"position"}]
  GETIMPORT R14 K57 [Vector2.new]
  LOADN R15 1
  LOADN R16 0
  CALL R14 2 1
  SETTABLEKS R14 R13 K53 ["position"]
  SETTABLEKS R13 R12 K47 ["linkData"]
  LOADK R13 K63 ["Right Walk"]
  SETTABLEKS R13 R12 K11 ["name"]
  DUPTABLE R13 K31 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
  LOADK R14 K136 ["rbxassetid://10404404615"]
  SETTABLEKS R14 R13 K22 ["animationId"]
  LOADK R14 K33 [""]
  SETTABLEKS R14 R13 K23 ["didLoopEventName"]
  LOADK R14 K34 [∞]
  SETTABLEKS R14 R13 K24 ["endTime"]
  LOADN R14 255
  SETTABLEKS R14 R13 K25 ["looping"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K26 ["markerEvents"]
  LOADB R14 1
  SETTABLEKS R14 R13 K27 ["preload"]
  LOADN R14 1
  SETTABLEKS R14 R13 K28 ["speed"]
  LOADN R14 0
  SETTABLEKS R14 R13 K29 ["startTime"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K30 ["timePositionEvents"]
  SETTABLEKS R13 R12 K15 ["props"]
  DUPTABLE R13 K65 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
  LOADK R14 K136 ["rbxassetid://10404404615"]
  SETTABLEKS R14 R13 K35 ["currentAnimationId"]
  LOADK R14 K66 [0.625]
  SETTABLEKS R14 R13 K36 ["length"]
  LOADK R14 K43 ["Loaded"]
  SETTABLEKS R14 R13 K37 ["loadingState"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K26 ["markerEvents"]
  LOADN R14 0
  SETTABLEKS R14 R13 K39 ["timePosition"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K30 ["timePositionEvents"]
  LOADN R14 0
  SETTABLEKS R14 R13 K40 ["timePositionNormalized"]
  SETTABLEKS R13 R12 K16 ["state"]
  LOADN R13 0
  SETTABLEKS R13 R12 K17 ["weight"]
  SETTABLEN R12 R11 4
  DUPTABLE R12 K50 [{"children", "className", "id", "index", "linkData", "name", "props", "state", "weight"}]
  NEWTABLE R13 0 0
  SETTABLEKS R13 R12 K8 ["children"]
  LOADK R13 K19 ["ClipLayer"]
  SETTABLEKS R13 R12 K14 ["className"]
  LOADK R13 K137 ["{6d769e3c-82cf-4869-a72f-71c8138a1f52}"]
  SETTABLEKS R13 R12 K9 ["id"]
  LOADN R13 5
  SETTABLEKS R13 R12 K49 ["index"]
  DUPTABLE R13 K54 [{"position"}]
  GETIMPORT R14 K57 [Vector2.new]
  LOADN R15 2
  LOADN R16 0
  CALL R14 2 1
  SETTABLEKS R14 R13 K53 ["position"]
  SETTABLEKS R13 R12 K47 ["linkData"]
  LOADK R13 K68 ["Right Run"]
  SETTABLEKS R13 R12 K11 ["name"]
  DUPTABLE R13 K31 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
  LOADK R14 K138 ["rbxassetid://10404627994"]
  SETTABLEKS R14 R13 K22 ["animationId"]
  LOADK R14 K33 [""]
  SETTABLEKS R14 R13 K23 ["didLoopEventName"]
  LOADK R14 K34 [∞]
  SETTABLEKS R14 R13 K24 ["endTime"]
  LOADN R14 255
  SETTABLEKS R14 R13 K25 ["looping"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K26 ["markerEvents"]
  LOADB R14 1
  SETTABLEKS R14 R13 K27 ["preload"]
  LOADN R14 1
  SETTABLEKS R14 R13 K28 ["speed"]
  LOADN R14 0
  SETTABLEKS R14 R13 K29 ["startTime"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K30 ["timePositionEvents"]
  SETTABLEKS R13 R12 K15 ["props"]
  DUPTABLE R13 K65 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
  LOADK R14 K138 ["rbxassetid://10404627994"]
  SETTABLEKS R14 R13 K35 ["currentAnimationId"]
  LOADK R14 K66 [0.625]
  SETTABLEKS R14 R13 K36 ["length"]
  LOADK R14 K43 ["Loaded"]
  SETTABLEKS R14 R13 K37 ["loadingState"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K26 ["markerEvents"]
  LOADN R14 0
  SETTABLEKS R14 R13 K39 ["timePosition"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K30 ["timePositionEvents"]
  LOADN R14 0
  SETTABLEKS R14 R13 K40 ["timePositionNormalized"]
  SETTABLEKS R13 R12 K16 ["state"]
  LOADN R13 0
  SETTABLEKS R13 R12 K17 ["weight"]
  SETTABLEN R12 R11 5
  DUPTABLE R12 K50 [{"children", "className", "id", "index", "linkData", "name", "props", "state", "weight"}]
  NEWTABLE R13 0 0
  SETTABLEKS R13 R12 K8 ["children"]
  LOADK R13 K19 ["ClipLayer"]
  SETTABLEKS R13 R12 K14 ["className"]
  LOADK R13 K139 ["{0fc10906-5cea-4e87-84e7-053506e27dbf}"]
  SETTABLEKS R13 R12 K9 ["id"]
  LOADN R13 6
  SETTABLEKS R13 R12 K49 ["index"]
  DUPTABLE R13 K54 [{"position"}]
  GETIMPORT R14 K57 [Vector2.new]
  LOADN R15 255
  LOADN R16 0
  CALL R14 2 1
  SETTABLEKS R14 R13 K53 ["position"]
  SETTABLEKS R13 R12 K47 ["linkData"]
  LOADK R13 K71 ["Left Walk"]
  SETTABLEKS R13 R12 K11 ["name"]
  DUPTABLE R13 K31 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
  LOADK R14 K140 ["rbxassetid://10404377900"]
  SETTABLEKS R14 R13 K22 ["animationId"]
  LOADK R14 K33 [""]
  SETTABLEKS R14 R13 K23 ["didLoopEventName"]
  LOADK R14 K34 [∞]
  SETTABLEKS R14 R13 K24 ["endTime"]
  LOADN R14 255
  SETTABLEKS R14 R13 K25 ["looping"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K26 ["markerEvents"]
  LOADB R14 1
  SETTABLEKS R14 R13 K27 ["preload"]
  LOADN R14 1
  SETTABLEKS R14 R13 K28 ["speed"]
  LOADN R14 0
  SETTABLEKS R14 R13 K29 ["startTime"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K30 ["timePositionEvents"]
  SETTABLEKS R13 R12 K15 ["props"]
  DUPTABLE R13 K65 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
  LOADK R14 K140 ["rbxassetid://10404377900"]
  SETTABLEKS R14 R13 K35 ["currentAnimationId"]
  LOADK R14 K66 [0.625]
  SETTABLEKS R14 R13 K36 ["length"]
  LOADK R14 K43 ["Loaded"]
  SETTABLEKS R14 R13 K37 ["loadingState"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K26 ["markerEvents"]
  LOADN R14 0
  SETTABLEKS R14 R13 K39 ["timePosition"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K30 ["timePositionEvents"]
  LOADN R14 0
  SETTABLEKS R14 R13 K40 ["timePositionNormalized"]
  SETTABLEKS R13 R12 K16 ["state"]
  LOADN R13 0
  SETTABLEKS R13 R12 K17 ["weight"]
  SETTABLEN R12 R11 6
  DUPTABLE R12 K50 [{"children", "className", "id", "index", "linkData", "name", "props", "state", "weight"}]
  NEWTABLE R13 0 0
  SETTABLEKS R13 R12 K8 ["children"]
  LOADK R13 K19 ["ClipLayer"]
  SETTABLEKS R13 R12 K14 ["className"]
  LOADK R13 K141 ["{5f721a47-53cc-4b3b-bc5b-ea223561ebad}"]
  SETTABLEKS R13 R12 K9 ["id"]
  LOADN R13 7
  SETTABLEKS R13 R12 K49 ["index"]
  DUPTABLE R13 K54 [{"position"}]
  GETIMPORT R14 K57 [Vector2.new]
  LOADN R15 254
  LOADN R16 0
  CALL R14 2 1
  SETTABLEKS R14 R13 K53 ["position"]
  SETTABLEKS R13 R12 K47 ["linkData"]
  LOADK R13 K74 ["Left Run"]
  SETTABLEKS R13 R12 K11 ["name"]
  DUPTABLE R13 K31 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
  LOADK R14 K142 ["rbxassetid://10404604071"]
  SETTABLEKS R14 R13 K22 ["animationId"]
  LOADK R14 K33 [""]
  SETTABLEKS R14 R13 K23 ["didLoopEventName"]
  LOADK R14 K34 [∞]
  SETTABLEKS R14 R13 K24 ["endTime"]
  LOADN R14 255
  SETTABLEKS R14 R13 K25 ["looping"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K26 ["markerEvents"]
  LOADB R14 1
  SETTABLEKS R14 R13 K27 ["preload"]
  LOADN R14 1
  SETTABLEKS R14 R13 K28 ["speed"]
  LOADN R14 0
  SETTABLEKS R14 R13 K29 ["startTime"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K30 ["timePositionEvents"]
  SETTABLEKS R13 R12 K15 ["props"]
  DUPTABLE R13 K65 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
  LOADK R14 K142 ["rbxassetid://10404604071"]
  SETTABLEKS R14 R13 K35 ["currentAnimationId"]
  LOADK R14 K66 [0.625]
  SETTABLEKS R14 R13 K36 ["length"]
  LOADK R14 K43 ["Loaded"]
  SETTABLEKS R14 R13 K37 ["loadingState"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K26 ["markerEvents"]
  LOADN R14 0
  SETTABLEKS R14 R13 K39 ["timePosition"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K30 ["timePositionEvents"]
  LOADN R14 0
  SETTABLEKS R14 R13 K40 ["timePositionNormalized"]
  SETTABLEKS R13 R12 K16 ["state"]
  LOADN R13 0
  SETTABLEKS R13 R12 K17 ["weight"]
  SETTABLEN R12 R11 7
  DUPTABLE R12 K50 [{"children", "className", "id", "index", "linkData", "name", "props", "state", "weight"}]
  NEWTABLE R13 0 0
  SETTABLEKS R13 R12 K8 ["children"]
  LOADK R13 K19 ["ClipLayer"]
  SETTABLEKS R13 R12 K14 ["className"]
  LOADK R13 K143 ["{1b1a8b55-c2dc-44bb-999e-eda4f884bd02}"]
  SETTABLEKS R13 R12 K9 ["id"]
  LOADN R13 8
  SETTABLEKS R13 R12 K49 ["index"]
  DUPTABLE R13 K54 [{"position"}]
  GETIMPORT R14 K57 [Vector2.new]
  LOADK R15 K86 [0.707106769]
  LOADK R16 K86 [0.707106769]
  CALL R14 2 1
  SETTABLEKS R14 R13 K53 ["position"]
  SETTABLEKS R13 R12 K47 ["linkData"]
  LOADK R13 K144 ["Forward Right Walk"]
  SETTABLEKS R13 R12 K11 ["name"]
  DUPTABLE R13 K31 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
  LOADK R14 K145 ["rbxassetid://10404269576"]
  SETTABLEKS R14 R13 K22 ["animationId"]
  LOADK R14 K33 [""]
  SETTABLEKS R14 R13 K23 ["didLoopEventName"]
  LOADK R14 K34 [∞]
  SETTABLEKS R14 R13 K24 ["endTime"]
  LOADN R14 255
  SETTABLEKS R14 R13 K25 ["looping"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K26 ["markerEvents"]
  LOADB R14 1
  SETTABLEKS R14 R13 K27 ["preload"]
  LOADN R14 1
  SETTABLEKS R14 R13 K28 ["speed"]
  LOADN R14 0
  SETTABLEKS R14 R13 K29 ["startTime"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K30 ["timePositionEvents"]
  SETTABLEKS R13 R12 K15 ["props"]
  DUPTABLE R13 K65 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
  LOADK R14 K145 ["rbxassetid://10404269576"]
  SETTABLEKS R14 R13 K35 ["currentAnimationId"]
  LOADK R14 K66 [0.625]
  SETTABLEKS R14 R13 K36 ["length"]
  LOADK R14 K43 ["Loaded"]
  SETTABLEKS R14 R13 K37 ["loadingState"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K26 ["markerEvents"]
  LOADN R14 0
  SETTABLEKS R14 R13 K39 ["timePosition"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K30 ["timePositionEvents"]
  LOADN R14 0
  SETTABLEKS R14 R13 K40 ["timePositionNormalized"]
  SETTABLEKS R13 R12 K16 ["state"]
  LOADN R13 0
  SETTABLEKS R13 R12 K17 ["weight"]
  SETTABLEN R12 R11 8
  DUPTABLE R12 K50 [{"children", "className", "id", "index", "linkData", "name", "props", "state", "weight"}]
  NEWTABLE R13 0 0
  SETTABLEKS R13 R12 K8 ["children"]
  LOADK R13 K19 ["ClipLayer"]
  SETTABLEKS R13 R12 K14 ["className"]
  LOADK R13 K146 ["{3423814e-2fd4-4926-803f-334847f77a83}"]
  SETTABLEKS R13 R12 K9 ["id"]
  LOADN R13 9
  SETTABLEKS R13 R12 K49 ["index"]
  DUPTABLE R13 K54 [{"position"}]
  GETIMPORT R14 K57 [Vector2.new]
  LOADK R15 K83 [-0.707106769]
  LOADK R16 K86 [0.707106769]
  CALL R14 2 1
  SETTABLEKS R14 R13 K53 ["position"]
  SETTABLEKS R13 R12 K47 ["linkData"]
  LOADK R13 K147 ["Forward Left Walk"]
  SETTABLEKS R13 R12 K11 ["name"]
  DUPTABLE R13 K31 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
  LOADK R14 K148 ["rbxassetid://10404251500"]
  SETTABLEKS R14 R13 K22 ["animationId"]
  LOADK R14 K33 [""]
  SETTABLEKS R14 R13 K23 ["didLoopEventName"]
  LOADK R14 K34 [∞]
  SETTABLEKS R14 R13 K24 ["endTime"]
  LOADN R14 255
  SETTABLEKS R14 R13 K25 ["looping"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K26 ["markerEvents"]
  LOADB R14 1
  SETTABLEKS R14 R13 K27 ["preload"]
  LOADN R14 1
  SETTABLEKS R14 R13 K28 ["speed"]
  LOADN R14 0
  SETTABLEKS R14 R13 K29 ["startTime"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K30 ["timePositionEvents"]
  SETTABLEKS R13 R12 K15 ["props"]
  DUPTABLE R13 K65 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
  LOADK R14 K148 ["rbxassetid://10404251500"]
  SETTABLEKS R14 R13 K35 ["currentAnimationId"]
  LOADK R14 K66 [0.625]
  SETTABLEKS R14 R13 K36 ["length"]
  LOADK R14 K43 ["Loaded"]
  SETTABLEKS R14 R13 K37 ["loadingState"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K26 ["markerEvents"]
  LOADN R14 0
  SETTABLEKS R14 R13 K39 ["timePosition"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K30 ["timePositionEvents"]
  LOADN R14 0
  SETTABLEKS R14 R13 K40 ["timePositionNormalized"]
  SETTABLEKS R13 R12 K16 ["state"]
  LOADN R13 0
  SETTABLEKS R13 R12 K17 ["weight"]
  SETTABLEN R12 R11 9
  DUPTABLE R12 K50 [{"children", "className", "id", "index", "linkData", "name", "props", "state", "weight"}]
  NEWTABLE R13 0 0
  SETTABLEKS R13 R12 K8 ["children"]
  LOADK R13 K19 ["ClipLayer"]
  SETTABLEKS R13 R12 K14 ["className"]
  LOADK R13 K149 ["{d6493c48-d9cd-4368-820b-0d23c25cb833}"]
  SETTABLEKS R13 R12 K9 ["id"]
  LOADN R13 10
  SETTABLEKS R13 R12 K49 ["index"]
  DUPTABLE R13 K54 [{"position"}]
  GETIMPORT R14 K57 [Vector2.new]
  LOADK R15 K94 [1.41421354]
  LOADK R16 K94 [1.41421354]
  CALL R14 2 1
  SETTABLEKS R14 R13 K53 ["position"]
  SETTABLEKS R13 R12 K47 ["linkData"]
  LOADK R13 K150 ["Forward Right Run"]
  SETTABLEKS R13 R12 K11 ["name"]
  DUPTABLE R13 K31 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
  LOADK R14 K151 ["rbxassetid://10319882993"]
  SETTABLEKS R14 R13 K22 ["animationId"]
  LOADK R14 K33 [""]
  SETTABLEKS R14 R13 K23 ["didLoopEventName"]
  LOADK R14 K34 [∞]
  SETTABLEKS R14 R13 K24 ["endTime"]
  LOADN R14 255
  SETTABLEKS R14 R13 K25 ["looping"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K26 ["markerEvents"]
  LOADB R14 1
  SETTABLEKS R14 R13 K27 ["preload"]
  LOADN R14 1
  SETTABLEKS R14 R13 K28 ["speed"]
  LOADN R14 0
  SETTABLEKS R14 R13 K29 ["startTime"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K30 ["timePositionEvents"]
  SETTABLEKS R13 R12 K15 ["props"]
  DUPTABLE R13 K65 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
  LOADK R14 K151 ["rbxassetid://10319882993"]
  SETTABLEKS R14 R13 K35 ["currentAnimationId"]
  LOADK R14 K66 [0.625]
  SETTABLEKS R14 R13 K36 ["length"]
  LOADK R14 K43 ["Loaded"]
  SETTABLEKS R14 R13 K37 ["loadingState"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K26 ["markerEvents"]
  LOADN R14 0
  SETTABLEKS R14 R13 K39 ["timePosition"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K30 ["timePositionEvents"]
  LOADN R14 0
  SETTABLEKS R14 R13 K40 ["timePositionNormalized"]
  SETTABLEKS R13 R12 K16 ["state"]
  LOADN R13 0
  SETTABLEKS R13 R12 K17 ["weight"]
  SETTABLEN R12 R11 10
  DUPTABLE R12 K50 [{"children", "className", "id", "index", "linkData", "name", "props", "state", "weight"}]
  NEWTABLE R13 0 0
  SETTABLEKS R13 R12 K8 ["children"]
  LOADK R13 K19 ["ClipLayer"]
  SETTABLEKS R13 R12 K14 ["className"]
  LOADK R13 K152 ["{117d88c1-9254-4fea-8bb6-47760516fb0f}"]
  SETTABLEKS R13 R12 K9 ["id"]
  LOADN R13 11
  SETTABLEKS R13 R12 K49 ["index"]
  DUPTABLE R13 K54 [{"position"}]
  GETIMPORT R14 K57 [Vector2.new]
  LOADK R15 K90 [-1.41421354]
  LOADK R16 K94 [1.41421354]
  CALL R14 2 1
  SETTABLEKS R14 R13 K53 ["position"]
  SETTABLEKS R13 R12 K47 ["linkData"]
  LOADK R13 K153 ["Forward Left Run"]
  SETTABLEKS R13 R12 K11 ["name"]
  DUPTABLE R13 K31 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
  LOADK R14 K154 ["rbxassetid://10319903622"]
  SETTABLEKS R14 R13 K22 ["animationId"]
  LOADK R14 K33 [""]
  SETTABLEKS R14 R13 K23 ["didLoopEventName"]
  LOADK R14 K34 [∞]
  SETTABLEKS R14 R13 K24 ["endTime"]
  LOADN R14 255
  SETTABLEKS R14 R13 K25 ["looping"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K26 ["markerEvents"]
  LOADB R14 1
  SETTABLEKS R14 R13 K27 ["preload"]
  LOADN R14 1
  SETTABLEKS R14 R13 K28 ["speed"]
  LOADN R14 0
  SETTABLEKS R14 R13 K29 ["startTime"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K30 ["timePositionEvents"]
  SETTABLEKS R13 R12 K15 ["props"]
  DUPTABLE R13 K65 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
  LOADK R14 K154 ["rbxassetid://10319903622"]
  SETTABLEKS R14 R13 K35 ["currentAnimationId"]
  LOADK R14 K66 [0.625]
  SETTABLEKS R14 R13 K36 ["length"]
  LOADK R14 K43 ["Loaded"]
  SETTABLEKS R14 R13 K37 ["loadingState"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K26 ["markerEvents"]
  LOADN R14 0
  SETTABLEKS R14 R13 K39 ["timePosition"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K30 ["timePositionEvents"]
  LOADN R14 0
  SETTABLEKS R14 R13 K40 ["timePositionNormalized"]
  SETTABLEKS R13 R12 K16 ["state"]
  LOADN R13 0
  SETTABLEKS R13 R12 K17 ["weight"]
  SETTABLEN R12 R11 11
  SETTABLEKS R11 R10 K8 ["children"]
  LOADK R11 K97 ["BlendSpace"]
  SETTABLEKS R11 R10 K14 ["className"]
  LOADK R11 K155 ["{d4597589-d9c5-47df-b379-71b2f6af05fe}"]
  SETTABLEKS R11 R10 K9 ["id"]
  NEWTABLE R11 0 1
  LOADK R12 K156 ["LocomotingForward"]
  SETTABLEN R12 R11 1
  SETTABLEKS R11 R10 K47 ["linkData"]
  LOADK R11 K157 ["Forward Locomotion"]
  SETTABLEKS R11 R10 K11 ["name"]
  DUPTABLE R11 K105 [{"blendSpaceType", "lowLodThreshold", "positionSmoothingTime", "speed", "targetPosition"}]
  LOADK R12 K106 ["Locomotion"]
  SETTABLEKS R12 R11 K101 ["blendSpaceType"]
  LOADN R12 2
  SETTABLEKS R12 R11 K102 ["lowLodThreshold"]
  LOADN R12 0
  SETTABLEKS R12 R11 K103 ["positionSmoothingTime"]
  LOADN R12 0
  SETTABLEKS R12 R11 K28 ["speed"]
  GETIMPORT R12 K57 [Vector2.new]
  LOADN R13 0
  LOADN R14 0
  CALL R12 2 1
  SETTABLEKS R12 R11 K104 ["targetPosition"]
  SETTABLEKS R11 R10 K15 ["props"]
  DUPTABLE R11 K61 [{"length", "timePositionNormalized"}]
  LOADN R12 0
  SETTABLEKS R12 R11 K36 ["length"]
  LOADN R12 0
  SETTABLEKS R12 R11 K40 ["timePositionNormalized"]
  SETTABLEKS R11 R10 K16 ["state"]
  LOADN R11 0
  SETTABLEKS R11 R10 K17 ["weight"]
  SETTABLEN R10 R9 5
  DUPTABLE R10 K48 [{"children", "className", "id", "linkData", "name", "props", "state", "weight"}]
  NEWTABLE R11 0 0
  SETTABLEKS R11 R10 K8 ["children"]
  LOADK R11 K19 ["ClipLayer"]
  SETTABLEKS R11 R10 K14 ["className"]
  LOADK R11 K158 ["{80711aa0-bdf3-49e1-bcdc-a0900eaabf06}"]
  SETTABLEKS R11 R10 K9 ["id"]
  NEWTABLE R11 0 1
  LOADK R12 K159 ["Idle"]
  SETTABLEN R12 R11 1
  SETTABLEKS R11 R10 K47 ["linkData"]
  LOADK R11 K159 ["Idle"]
  SETTABLEKS R11 R10 K11 ["name"]
  DUPTABLE R11 K31 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
  LOADK R12 K160 ["rbxassetid://10921258489"]
  SETTABLEKS R12 R11 K22 ["animationId"]
  LOADK R12 K161 ["IdleDidLoop"]
  SETTABLEKS R12 R11 K23 ["didLoopEventName"]
  LOADK R12 K34 [∞]
  SETTABLEKS R12 R11 K24 ["endTime"]
  LOADN R12 255
  SETTABLEKS R12 R11 K25 ["looping"]
  NEWTABLE R12 0 0
  SETTABLEKS R12 R11 K26 ["markerEvents"]
  LOADB R12 1
  SETTABLEKS R12 R11 K27 ["preload"]
  LOADN R12 1
  SETTABLEKS R12 R11 K28 ["speed"]
  LOADN R12 0
  SETTABLEKS R12 R11 K29 ["startTime"]
  NEWTABLE R12 0 0
  SETTABLEKS R12 R11 K30 ["timePositionEvents"]
  SETTABLEKS R11 R10 K15 ["props"]
  DUPTABLE R11 K41 [{"currentAnimationId", "length", "loadingState", "markerEvents", "prevTimePosition", "timePosition", "timePositionEvents", "timePositionNormalized"}]
  LOADK R12 K160 ["rbxassetid://10921258489"]
  SETTABLEKS R12 R11 K35 ["currentAnimationId"]
  LOADN R12 10
  SETTABLEKS R12 R11 K36 ["length"]
  LOADK R12 K43 ["Loaded"]
  SETTABLEKS R12 R11 K37 ["loadingState"]
  NEWTABLE R12 0 0
  SETTABLEKS R12 R11 K26 ["markerEvents"]
  LOADK R12 K162 [7.2416670541279]
  SETTABLEKS R12 R11 K38 ["prevTimePosition"]
  LOADK R12 K162 [7.2416670541279]
  SETTABLEKS R12 R11 K39 ["timePosition"]
  NEWTABLE R12 0 0
  SETTABLEKS R12 R11 K30 ["timePositionEvents"]
  LOADK R12 K163 [0.72416670541279]
  SETTABLEKS R12 R11 K40 ["timePositionNormalized"]
  SETTABLEKS R11 R10 K16 ["state"]
  LOADN R11 0
  SETTABLEKS R11 R10 K17 ["weight"]
  SETTABLEN R10 R9 6
  DUPTABLE R10 K48 [{"children", "className", "id", "linkData", "name", "props", "state", "weight"}]
  NEWTABLE R11 0 2
  DUPTABLE R12 K164 [{"children", "className", "id", "linkData", "props", "state", "weight"}]
  NEWTABLE R13 0 0
  SETTABLEKS R13 R12 K8 ["children"]
  LOADK R13 K19 ["ClipLayer"]
  SETTABLEKS R13 R12 K14 ["className"]
  LOADK R13 K165 ["{9e60c31d-cf4e-4b81-bb19-b708becd9515}"]
  SETTABLEKS R13 R12 K9 ["id"]
  NEWTABLE R13 0 0
  SETTABLEKS R13 R12 K47 ["linkData"]
  DUPTABLE R13 K31 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
  LOADK R14 K166 ["rbxassetid://10921263860"]
  SETTABLEKS R14 R13 K22 ["animationId"]
  LOADK R14 K33 [""]
  SETTABLEKS R14 R13 K23 ["didLoopEventName"]
  LOADK R14 K34 [∞]
  SETTABLEKS R14 R13 K24 ["endTime"]
  LOADN R14 255
  SETTABLEKS R14 R13 K25 ["looping"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K26 ["markerEvents"]
  LOADB R14 1
  SETTABLEKS R14 R13 K27 ["preload"]
  LOADN R14 1
  SETTABLEKS R14 R13 K28 ["speed"]
  LOADN R14 0
  SETTABLEKS R14 R13 K29 ["startTime"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K30 ["timePositionEvents"]
  SETTABLEKS R13 R12 K15 ["props"]
  DUPTABLE R13 K65 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
  LOADK R14 K166 ["rbxassetid://10921263860"]
  SETTABLEKS R14 R13 K35 ["currentAnimationId"]
  LOADK R14 K167 [1.04200005531311]
  SETTABLEKS R14 R13 K36 ["length"]
  LOADK R14 K43 ["Loaded"]
  SETTABLEKS R14 R13 K37 ["loadingState"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K26 ["markerEvents"]
  LOADN R14 0
  SETTABLEKS R14 R13 K39 ["timePosition"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K30 ["timePositionEvents"]
  LOADN R14 0
  SETTABLEKS R14 R13 K40 ["timePositionNormalized"]
  SETTABLEKS R13 R12 K16 ["state"]
  LOADN R13 0
  SETTABLEKS R13 R12 K17 ["weight"]
  SETTABLEN R12 R11 1
  DUPTABLE R12 K164 [{"children", "className", "id", "linkData", "props", "state", "weight"}]
  NEWTABLE R13 0 0
  SETTABLEKS R13 R12 K8 ["children"]
  LOADK R13 K19 ["ClipLayer"]
  SETTABLEKS R13 R12 K14 ["className"]
  LOADK R13 K168 ["{b1751c84-f579-489b-8490-0b3251969695}"]
  SETTABLEKS R13 R12 K9 ["id"]
  NEWTABLE R13 0 0
  SETTABLEKS R13 R12 K47 ["linkData"]
  DUPTABLE R13 K31 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
  LOADK R14 K123 ["rbxassetid://10921262864"]
  SETTABLEKS R14 R13 K22 ["animationId"]
  LOADK R14 K33 [""]
  SETTABLEKS R14 R13 K23 ["didLoopEventName"]
  LOADK R14 K34 [∞]
  SETTABLEKS R14 R13 K24 ["endTime"]
  LOADN R14 255
  SETTABLEKS R14 R13 K25 ["looping"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K26 ["markerEvents"]
  LOADB R14 1
  SETTABLEKS R14 R13 K27 ["preload"]
  LOADN R14 1
  SETTABLEKS R14 R13 K28 ["speed"]
  LOADN R14 0
  SETTABLEKS R14 R13 K29 ["startTime"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K30 ["timePositionEvents"]
  SETTABLEKS R13 R12 K15 ["props"]
  DUPTABLE R13 K65 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
  LOADK R14 K123 ["rbxassetid://10921262864"]
  SETTABLEKS R14 R13 K35 ["currentAnimationId"]
  LOADK R14 K124 [0.75]
  SETTABLEKS R14 R13 K36 ["length"]
  LOADK R14 K43 ["Loaded"]
  SETTABLEKS R14 R13 K37 ["loadingState"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K26 ["markerEvents"]
  LOADN R14 0
  SETTABLEKS R14 R13 K39 ["timePosition"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K30 ["timePositionEvents"]
  LOADN R14 0
  SETTABLEKS R14 R13 K40 ["timePositionNormalized"]
  SETTABLEKS R13 R12 K16 ["state"]
  LOADN R13 0
  SETTABLEKS R13 R12 K17 ["weight"]
  SETTABLEN R12 R11 2
  SETTABLEKS R11 R10 K8 ["children"]
  LOADK R11 K169 ["SequenceLayer"]
  SETTABLEKS R11 R10 K14 ["className"]
  LOADK R11 K170 ["{5d480bf8-4844-4022-9d45-e56af61bf4e5}"]
  SETTABLEKS R11 R10 K9 ["id"]
  NEWTABLE R11 0 1
  LOADK R12 K171 ["Jumping"]
  SETTABLEN R12 R11 1
  SETTABLEKS R11 R10 K47 ["linkData"]
  LOADK R11 K172 ["Jumping Sequence"]
  SETTABLEKS R11 R10 K11 ["name"]
  DUPTABLE R11 K175 [{"incrementMode", "transitionDurationSeconds"}]
  LOADN R12 1
  SETTABLEKS R12 R11 K173 ["incrementMode"]
  LOADK R12 K176 [0.25]
  SETTABLEKS R12 R11 K174 ["transitionDurationSeconds"]
  SETTABLEKS R11 R10 K15 ["props"]
  NEWTABLE R11 0 0
  SETTABLEKS R11 R10 K16 ["state"]
  LOADN R11 0
  SETTABLEKS R11 R10 K17 ["weight"]
  SETTABLEN R10 R9 7
  DUPTABLE R10 K48 [{"children", "className", "id", "linkData", "name", "props", "state", "weight"}]
  NEWTABLE R11 0 0
  SETTABLEKS R11 R10 K8 ["children"]
  LOADK R11 K19 ["ClipLayer"]
  SETTABLEKS R11 R10 K14 ["className"]
  LOADK R11 K177 ["{14ce7080-803b-435f-93ea-4eb438941c29}"]
  SETTABLEKS R11 R10 K9 ["id"]
  NEWTABLE R11 0 1
  LOADK R12 K178 ["Sitting"]
  SETTABLEN R12 R11 1
  SETTABLEKS R11 R10 K47 ["linkData"]
  LOADK R11 K178 ["Sitting"]
  SETTABLEKS R11 R10 K11 ["name"]
  DUPTABLE R11 K31 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
  LOADK R12 K179 ["rbxassetid://2506281703"]
  SETTABLEKS R12 R11 K22 ["animationId"]
  LOADK R12 K33 [""]
  SETTABLEKS R12 R11 K23 ["didLoopEventName"]
  LOADK R12 K34 [∞]
  SETTABLEKS R12 R11 K24 ["endTime"]
  LOADN R12 255
  SETTABLEKS R12 R11 K25 ["looping"]
  NEWTABLE R12 0 0
  SETTABLEKS R12 R11 K26 ["markerEvents"]
  LOADB R12 1
  SETTABLEKS R12 R11 K27 ["preload"]
  LOADN R12 1
  SETTABLEKS R12 R11 K28 ["speed"]
  LOADN R12 0
  SETTABLEKS R12 R11 K29 ["startTime"]
  NEWTABLE R12 0 0
  SETTABLEKS R12 R11 K30 ["timePositionEvents"]
  SETTABLEKS R11 R10 K15 ["props"]
  DUPTABLE R11 K65 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
  LOADK R12 K179 ["rbxassetid://2506281703"]
  SETTABLEKS R12 R11 K35 ["currentAnimationId"]
  LOADK R12 K180 [0.916999995708466]
  SETTABLEKS R12 R11 K36 ["length"]
  LOADK R12 K43 ["Loaded"]
  SETTABLEKS R12 R11 K37 ["loadingState"]
  NEWTABLE R12 0 0
  SETTABLEKS R12 R11 K26 ["markerEvents"]
  LOADN R12 0
  SETTABLEKS R12 R11 K39 ["timePosition"]
  NEWTABLE R12 0 0
  SETTABLEKS R12 R11 K30 ["timePositionEvents"]
  LOADN R12 0
  SETTABLEKS R12 R11 K40 ["timePositionNormalized"]
  SETTABLEKS R11 R10 K16 ["state"]
  LOADN R11 0
  SETTABLEKS R11 R10 K17 ["weight"]
  SETTABLEN R10 R9 8
  DUPTABLE R10 K48 [{"children", "className", "id", "linkData", "name", "props", "state", "weight"}]
  NEWTABLE R11 0 0
  SETTABLEKS R11 R10 K8 ["children"]
  LOADK R11 K19 ["ClipLayer"]
  SETTABLEKS R11 R10 K14 ["className"]
  LOADK R11 K181 ["{f8703185-c346-4a94-94a5-438a9d9b53f4}"]
  SETTABLEKS R11 R10 K9 ["id"]
  NEWTABLE R11 0 1
  LOADK R12 K182 ["Swimming"]
  SETTABLEN R12 R11 1
  SETTABLEKS R11 R10 K47 ["linkData"]
  LOADK R11 K182 ["Swimming"]
  SETTABLEKS R11 R10 K11 ["name"]
  DUPTABLE R11 K31 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
  LOADK R12 K183 ["rbxassetid://10921264784"]
  SETTABLEKS R12 R11 K22 ["animationId"]
  LOADK R12 K33 [""]
  SETTABLEKS R12 R11 K23 ["didLoopEventName"]
  LOADK R12 K34 [∞]
  SETTABLEKS R12 R11 K24 ["endTime"]
  LOADN R12 255
  SETTABLEKS R12 R11 K25 ["looping"]
  NEWTABLE R12 0 0
  SETTABLEKS R12 R11 K26 ["markerEvents"]
  LOADB R12 1
  SETTABLEKS R12 R11 K27 ["preload"]
  LOADN R12 0
  SETTABLEKS R12 R11 K28 ["speed"]
  LOADN R12 0
  SETTABLEKS R12 R11 K29 ["startTime"]
  NEWTABLE R12 0 0
  SETTABLEKS R12 R11 K30 ["timePositionEvents"]
  SETTABLEKS R11 R10 K15 ["props"]
  DUPTABLE R11 K65 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
  LOADK R12 K183 ["rbxassetid://10921264784"]
  SETTABLEKS R12 R11 K35 ["currentAnimationId"]
  LOADK R12 K184 [2.25]
  SETTABLEKS R12 R11 K36 ["length"]
  LOADK R12 K43 ["Loaded"]
  SETTABLEKS R12 R11 K37 ["loadingState"]
  NEWTABLE R12 0 0
  SETTABLEKS R12 R11 K26 ["markerEvents"]
  LOADN R12 0
  SETTABLEKS R12 R11 K39 ["timePosition"]
  NEWTABLE R12 0 0
  SETTABLEKS R12 R11 K30 ["timePositionEvents"]
  LOADN R12 0
  SETTABLEKS R12 R11 K40 ["timePositionNormalized"]
  SETTABLEKS R11 R10 K16 ["state"]
  LOADN R11 0
  SETTABLEKS R11 R10 K17 ["weight"]
  SETTABLEN R10 R9 9
  DUPTABLE R10 K48 [{"children", "className", "id", "linkData", "name", "props", "state", "weight"}]
  NEWTABLE R11 0 0
  SETTABLEKS R11 R10 K8 ["children"]
  LOADK R11 K19 ["ClipLayer"]
  SETTABLEKS R11 R10 K14 ["className"]
  LOADK R11 K185 ["{85ce8c33-0a03-425b-a7f4-8749f4ef200d}"]
  SETTABLEKS R11 R10 K9 ["id"]
  NEWTABLE R11 0 1
  LOADK R12 K186 ["SwimmingIdle"]
  SETTABLEN R12 R11 1
  SETTABLEKS R11 R10 K47 ["linkData"]
  LOADK R11 K187 ["Swimming Idle"]
  SETTABLEKS R11 R10 K11 ["name"]
  DUPTABLE R11 K31 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
  LOADK R12 K188 ["rbxassetid://10921265698"]
  SETTABLEKS R12 R11 K22 ["animationId"]
  LOADK R12 K33 [""]
  SETTABLEKS R12 R11 K23 ["didLoopEventName"]
  LOADK R12 K34 [∞]
  SETTABLEKS R12 R11 K24 ["endTime"]
  LOADN R12 255
  SETTABLEKS R12 R11 K25 ["looping"]
  NEWTABLE R12 0 0
  SETTABLEKS R12 R11 K26 ["markerEvents"]
  LOADB R12 1
  SETTABLEKS R12 R11 K27 ["preload"]
  LOADN R12 1
  SETTABLEKS R12 R11 K28 ["speed"]
  LOADN R12 0
  SETTABLEKS R12 R11 K29 ["startTime"]
  NEWTABLE R12 0 0
  SETTABLEKS R12 R11 K30 ["timePositionEvents"]
  SETTABLEKS R11 R10 K15 ["props"]
  DUPTABLE R11 K65 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
  LOADK R12 K188 ["rbxassetid://10921265698"]
  SETTABLEKS R12 R11 K35 ["currentAnimationId"]
  LOADK R12 K189 [2.875]
  SETTABLEKS R12 R11 K36 ["length"]
  LOADK R12 K43 ["Loaded"]
  SETTABLEKS R12 R11 K37 ["loadingState"]
  NEWTABLE R12 0 0
  SETTABLEKS R12 R11 K26 ["markerEvents"]
  LOADN R12 0
  SETTABLEKS R12 R11 K39 ["timePosition"]
  NEWTABLE R12 0 0
  SETTABLEKS R12 R11 K30 ["timePositionEvents"]
  LOADN R12 0
  SETTABLEKS R12 R11 K40 ["timePositionNormalized"]
  SETTABLEKS R11 R10 K16 ["state"]
  LOADN R11 0
  SETTABLEKS R11 R10 K17 ["weight"]
  SETTABLEN R10 R9 10
  SETTABLEKS R9 R8 K8 ["children"]
  LOADK R9 K190 ["SelectLayer"]
  SETTABLEKS R9 R8 K14 ["className"]
  LOADK R9 K191 ["{c77cf2a9-8984-419f-b208-f4a337c63839}"]
  SETTABLEKS R9 R8 K9 ["id"]
  DUPTABLE R9 K193 [{"lowLodThreshold", "selection", "transitionDurationSeconds"}]
  LOADN R10 3
  SETTABLEKS R10 R9 K102 ["lowLodThreshold"]
  LOADK R10 K159 ["Idle"]
  SETTABLEKS R10 R9 K192 ["selection"]
  LOADK R10 K194 [0.2]
  SETTABLEKS R10 R9 K174 ["transitionDurationSeconds"]
  SETTABLEKS R9 R8 K15 ["props"]
  NEWTABLE R9 0 0
  SETTABLEKS R9 R8 K16 ["state"]
  LOADN R9 1
  SETTABLEKS R9 R8 K17 ["weight"]
  SETTABLEN R8 R7 2
  SETTABLEKS R7 R6 K8 ["children"]
  LOADK R7 K195 ["Priority"]
  SETTABLEKS R7 R6 K14 ["className"]
  LOADK R7 K196 ["{54b88a48-a872-4b81-ae19-e530bce87fb3}"]
  SETTABLEKS R7 R6 K9 ["id"]
  LOADK R7 K197 ["Priority Blend"]
  SETTABLEKS R7 R6 K11 ["name"]
  DUPTABLE R7 K199 [{"fadeDurationSeconds"}]
  LOADK R8 K200 [0.15]
  SETTABLEKS R8 R7 K198 ["fadeDurationSeconds"]
  SETTABLEKS R7 R6 K15 ["props"]
  DUPTABLE R7 K203 [{"easedWeights", "weights"}]
  NEWTABLE R8 0 0
  SETTABLEKS R8 R7 K201 ["easedWeights"]
  NEWTABLE R8 0 2
  LOADN R9 1
  SETTABLEN R9 R8 1
  LOADN R9 0
  SETTABLEN R9 R8 2
  SETTABLEKS R8 R7 K202 ["weights"]
  SETTABLEKS R7 R6 K16 ["state"]
  LOADN R7 1
  SETTABLEKS R7 R6 K17 ["weight"]
  SETTABLEN R6 R5 1
  SETTABLEKS R5 R4 K8 ["children"]
  LOADK R5 K204 ["HeadRotate"]
  SETTABLEKS R5 R4 K14 ["className"]
  LOADK R5 K205 ["{0fd9dd90-1937-4662-85de-fa87000f549e}"]
  SETTABLEKS R5 R4 K9 ["id"]
  LOADK R5 K206 ["Head Rotation"]
  SETTABLEKS R5 R4 K11 ["name"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K15 ["props"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K16 ["state"]
  LOADN R5 1
  SETTABLEKS R5 R4 K17 ["weight"]
  SETTABLEN R4 R3 1
  SETTABLEKS R3 R2 K8 ["children"]
  LOADK R3 K207 ["foo"]
  SETTABLEKS R3 R2 K9 ["id"]
  GETIMPORT R3 K209 [CFrame.new]
  LOADK R4 K210 [-4.98748732]
  LOADK R5 K211 [4.45460129]
  LOADK R6 K212 [0.635853291]
  LOADN R7 1
  LOADN R8 0
  LOADN R9 0
  LOADN R10 0
  LOADN R11 1
  LOADN R12 0
  LOADN R13 0
  LOADN R14 0
  LOADN R15 1
  CALL R3 12 1
  SETTABLEKS R3 R2 K10 ["hrpCFrame"]
  LOADK R3 K213 ["Parraing"]
  SETTABLEKS R3 R2 K11 ["name"]
  LOADK R3 K162 [7.2416670541279]
  SETTABLEKS R3 R2 K12 ["timestamp"]
  RETURN R2 1
