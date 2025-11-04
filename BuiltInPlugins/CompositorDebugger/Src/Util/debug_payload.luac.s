PROTO_0:
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CompositorDebugger"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["AnimationEditor"]
  CALL R1 1 1
  DUPTABLE R2 K10 [{"lookup", "output"}]
  NEWTABLE R3 64 0
  DUPTABLE R4 K16 [{"children", "id", "hrpCFrame", "name", "timestamp"}]
  NEWTABLE R5 0 1
  LOADK R6 K17 ["{0fd9dd90-1937-4662-85de-fa87000f549e}"]
  SETLIST R5 R6 1 [1]
  SETTABLEKS R5 R4 K11 ["children"]
  LOADK R5 K18 ["foo"]
  SETTABLEKS R5 R4 K12 ["id"]
  GETIMPORT R5 K21 [CFrame.new]
  LOADK R6 K22 [-4.98748732]
  LOADK R7 K23 [4.45460129]
  LOADK R8 K24 [0.635853291]
  LOADN R9 1
  LOADN R10 0
  LOADN R11 0
  LOADN R12 0
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  LOADN R16 0
  LOADN R17 1
  CALL R5 12 1
  SETTABLEKS R5 R4 K13 ["hrpCFrame"]
  LOADK R5 K25 ["Parraing"]
  SETTABLEKS R5 R4 K14 ["name"]
  LOADK R5 K26 [7.2416670541279]
  SETTABLEKS R5 R4 K15 ["timestamp"]
  SETTABLEKS R4 R3 K18 ["foo"]
  DUPTABLE R4 K32 [{"children", "className", "id", "name", "parentId", "props", "state", "weight"}]
  NEWTABLE R5 0 1
  LOADK R6 K33 ["{54b88a48-a872-4b81-ae19-e530bce87fb3}"]
  SETLIST R5 R6 1 [1]
  SETTABLEKS R5 R4 K11 ["children"]
  LOADK R5 K34 ["HeadRotate"]
  SETTABLEKS R5 R4 K27 ["className"]
  LOADK R5 K17 ["{0fd9dd90-1937-4662-85de-fa87000f549e}"]
  SETTABLEKS R5 R4 K12 ["id"]
  LOADK R5 K35 ["Head Rotation"]
  SETTABLEKS R5 R4 K14 ["name"]
  LOADK R5 K18 ["foo"]
  SETTABLEKS R5 R4 K28 ["parentId"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K29 ["props"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K30 ["state"]
  LOADN R5 1
  SETTABLEKS R5 R4 K31 ["weight"]
  SETTABLEKS R4 R3 K17 ["{0fd9dd90-1937-4662-85de-fa87000f549e}"]
  DUPTABLE R4 K32 [{"children", "className", "id", "name", "parentId", "props", "state", "weight"}]
  NEWTABLE R5 0 2
  LOADK R6 K36 ["{91a192be-2369-41cb-801a-26bd4fc053d2}"]
  LOADK R7 K37 ["{c77cf2a9-8984-419f-b208-f4a337c63839}"]
  SETLIST R5 R6 2 [1]
  SETTABLEKS R5 R4 K11 ["children"]
  LOADK R5 K38 ["Priority"]
  SETTABLEKS R5 R4 K27 ["className"]
  LOADK R5 K33 ["{54b88a48-a872-4b81-ae19-e530bce87fb3}"]
  SETTABLEKS R5 R4 K12 ["id"]
  LOADK R5 K39 ["Priority Blend"]
  SETTABLEKS R5 R4 K14 ["name"]
  LOADK R5 K17 ["{0fd9dd90-1937-4662-85de-fa87000f549e}"]
  SETTABLEKS R5 R4 K28 ["parentId"]
  DUPTABLE R5 K41 [{"fadeDurationSeconds"}]
  LOADK R6 K42 [0.15]
  SETTABLEKS R6 R5 K40 ["fadeDurationSeconds"]
  SETTABLEKS R5 R4 K29 ["props"]
  DUPTABLE R5 K45 [{"easedWeights", "weights"}]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K43 ["easedWeights"]
  NEWTABLE R6 0 2
  LOADN R7 1
  SETTABLEN R7 R6 1
  LOADN R7 0
  SETTABLEN R7 R6 2
  SETTABLEKS R6 R5 K44 ["weights"]
  SETTABLEKS R5 R4 K30 ["state"]
  LOADN R5 1
  SETTABLEKS R5 R4 K31 ["weight"]
  SETTABLEKS R4 R3 K33 ["{54b88a48-a872-4b81-ae19-e530bce87fb3}"]
  DUPTABLE R4 K32 [{"children", "className", "id", "name", "parentId", "props", "state", "weight"}]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K11 ["children"]
  LOADK R5 K46 ["ClipLayer"]
  SETTABLEKS R5 R4 K27 ["className"]
  LOADK R5 K36 ["{91a192be-2369-41cb-801a-26bd4fc053d2}"]
  SETTABLEKS R5 R4 K12 ["id"]
  LOADK R5 K47 ["Tool None"]
  SETTABLEKS R5 R4 K14 ["name"]
  LOADK R5 K33 ["{54b88a48-a872-4b81-ae19-e530bce87fb3}"]
  SETTABLEKS R5 R4 K28 ["parentId"]
  DUPTABLE R5 K57 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
  LOADK R6 K58 ["rbxassetid://507768375"]
  SETTABLEKS R6 R5 K48 ["animationId"]
  LOADK R6 K59 [""]
  SETTABLEKS R6 R5 K49 ["didLoopEventName"]
  LOADK R6 K60 [∞]
  SETTABLEKS R6 R5 K50 ["endTime"]
  LOADN R6 255
  SETTABLEKS R6 R5 K51 ["looping"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K52 ["markerEvents"]
  LOADB R6 1
  SETTABLEKS R6 R5 K53 ["preload"]
  LOADN R6 1
  SETTABLEKS R6 R5 K54 ["speed"]
  LOADN R6 0
  SETTABLEKS R6 R5 K55 ["startTime"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K56 ["timePositionEvents"]
  SETTABLEKS R5 R4 K29 ["props"]
  DUPTABLE R5 K67 [{"currentAnimationId", "length", "loadingState", "markerEvents", "prevTimePosition", "timePosition", "timePositionEvents", "timePositionNormalized"}]
  LOADK R6 K58 ["rbxassetid://507768375"]
  SETTABLEKS R6 R5 K61 ["currentAnimationId"]
  LOADK R6 K68 [0.0416666679084301]
  SETTABLEKS R6 R5 K62 ["length"]
  LOADK R6 K69 ["Loaded"]
  SETTABLEKS R6 R5 K63 ["loadingState"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K52 ["markerEvents"]
  LOADK R6 K70 [0.0333335059694946]
  SETTABLEKS R6 R5 K64 ["prevTimePosition"]
  LOADK R6 K70 [0.0333335059694946]
  SETTABLEKS R6 R5 K65 ["timePosition"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K56 ["timePositionEvents"]
  LOADK R6 K71 [0.800004119425889]
  SETTABLEKS R6 R5 K66 ["timePositionNormalized"]
  SETTABLEKS R5 R4 K30 ["state"]
  LOADN R5 1
  SETTABLEKS R5 R4 K31 ["weight"]
  SETTABLEKS R4 R3 K36 ["{91a192be-2369-41cb-801a-26bd4fc053d2}"]
  DUPTABLE R4 K72 [{"children", "className", "id", "parentId", "props", "state", "weight"}]
  NEWTABLE R5 0 10
  LOADK R6 K73 ["{01378bfa-3123-4277-be55-5105e62f22f2}"]
  LOADK R7 K74 ["{67afe536-0b3e-4542-b392-26a3e7691d57}"]
  LOADK R8 K75 ["{4fee757f-9545-47de-9d1b-832f0de17068}"]
  LOADK R9 K76 ["{65f0fdf6-733e-42b8-b8a1-19ef18c415c1}"]
  LOADK R10 K77 ["{d4597589-d9c5-47df-b379-71b2f6af05fe}"]
  LOADK R11 K78 ["{80711aa0-bdf3-49e1-bcdc-a0900eaabf06}"]
  LOADK R12 K79 ["{5d480bf8-4844-4022-9d45-e56af61bf4e5}"]
  LOADK R13 K80 ["{14ce7080-803b-435f-93ea-4eb438941c29}"]
  LOADK R14 K81 ["{f8703185-c346-4a94-94a5-438a9d9b53f4}"]
  LOADK R15 K82 ["{85ce8c33-0a03-425b-a7f4-8749f4ef200d}"]
  SETLIST R5 R6 10 [1]
  SETTABLEKS R5 R4 K11 ["children"]
  LOADK R5 K83 ["SelectLayer"]
  SETTABLEKS R5 R4 K27 ["className"]
  LOADK R5 K37 ["{c77cf2a9-8984-419f-b208-f4a337c63839}"]
  SETTABLEKS R5 R4 K12 ["id"]
  LOADK R5 K33 ["{54b88a48-a872-4b81-ae19-e530bce87fb3}"]
  SETTABLEKS R5 R4 K28 ["parentId"]
  DUPTABLE R5 K87 [{"lowLodThreshold", "selection", "transitionDurationSeconds"}]
  LOADN R6 3
  SETTABLEKS R6 R5 K84 ["lowLodThreshold"]
  LOADK R6 K88 ["Idle"]
  SETTABLEKS R6 R5 K85 ["selection"]
  LOADK R6 K89 [0.2]
  SETTABLEKS R6 R5 K86 ["transitionDurationSeconds"]
  SETTABLEKS R5 R4 K29 ["props"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K30 ["state"]
  LOADN R5 1
  SETTABLEKS R5 R4 K31 ["weight"]
  SETTABLEKS R4 R3 K37 ["{c77cf2a9-8984-419f-b208-f4a337c63839}"]
  DUPTABLE R4 K91 [{"children", "className", "id", "linkData", "name", "parentId", "props", "state", "weight"}]
  NEWTABLE R5 0 11
  LOADK R6 K92 ["{b93312c4-8c4d-453c-93ed-9541195b7fe7}"]
  LOADK R7 K93 ["{6556d92c-2ab0-47f6-9633-1e8b22e8c823}"]
  LOADK R8 K94 ["{782abac9-1ad8-46b8-9441-dd901a6e923f}"]
  LOADK R9 K95 ["{816c6077-957c-4748-9ed6-72985a98a8af}"]
  LOADK R10 K96 ["{9a4dc8c8-59ec-40a8-88ae-36d8c2e7476d}"]
  LOADK R11 K97 ["{ae2f3459-80bc-4487-a5fb-7b82c38f2f8d}"]
  LOADK R12 K98 ["{c6b01432-2acf-4e04-bca4-ecee93647ac6}"]
  LOADK R13 K99 ["{e466dbc1-f3d2-4271-8ad8-e0ac692c1356}"]
  LOADK R14 K100 ["{605421b4-16f3-40f9-a781-561ea5fa97fe}"]
  LOADK R15 K101 ["{3f08126d-f7f8-405e-bc24-026900d76dc4}"]
  LOADK R16 K102 ["{bf7bf7ee-c275-4ac6-aa71-86df90705fee}"]
  SETLIST R5 R6 11 [1]
  SETTABLEKS R5 R4 K11 ["children"]
  LOADK R5 K103 ["BlendSpace"]
  SETTABLEKS R5 R4 K27 ["className"]
  LOADK R5 K73 ["{01378bfa-3123-4277-be55-5105e62f22f2}"]
  SETTABLEKS R5 R4 K12 ["id"]
  NEWTABLE R5 0 1
  LOADK R6 K104 ["LocomotingBackward"]
  SETTABLEN R6 R5 1
  SETTABLEKS R5 R4 K90 ["linkData"]
  LOADK R5 K105 ["Backward Locomotion"]
  SETTABLEKS R5 R4 K14 ["name"]
  LOADK R5 K37 ["{c77cf2a9-8984-419f-b208-f4a337c63839}"]
  SETTABLEKS R5 R4 K28 ["parentId"]
  DUPTABLE R5 K109 [{"blendSpaceType", "lowLodThreshold", "positionSmoothingTime", "speed", "targetPosition"}]
  LOADK R6 K110 ["Locomotion"]
  SETTABLEKS R6 R5 K106 ["blendSpaceType"]
  LOADN R6 2
  SETTABLEKS R6 R5 K84 ["lowLodThreshold"]
  LOADN R6 0
  SETTABLEKS R6 R5 K107 ["positionSmoothingTime"]
  LOADN R6 0
  SETTABLEKS R6 R5 K54 ["speed"]
  GETIMPORT R6 K112 [Vector2.new]
  LOADN R7 0
  LOADN R8 0
  CALL R6 2 1
  SETTABLEKS R6 R5 K108 ["targetPosition"]
  SETTABLEKS R5 R4 K29 ["props"]
  DUPTABLE R5 K113 [{"length", "timePositionNormalized"}]
  LOADN R6 0
  SETTABLEKS R6 R5 K62 ["length"]
  LOADN R6 0
  SETTABLEKS R6 R5 K66 ["timePositionNormalized"]
  SETTABLEKS R5 R4 K30 ["state"]
  LOADN R5 0
  SETTABLEKS R5 R4 K31 ["weight"]
  SETTABLEKS R4 R3 K73 ["{01378bfa-3123-4277-be55-5105e62f22f2}"]
  DUPTABLE R4 K91 [{"children", "className", "id", "linkData", "name", "parentId", "props", "state", "weight"}]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K11 ["children"]
  LOADK R5 K46 ["ClipLayer"]
  SETTABLEKS R5 R4 K27 ["className"]
  LOADK R5 K74 ["{67afe536-0b3e-4542-b392-26a3e7691d57}"]
  SETTABLEKS R5 R4 K12 ["id"]
  NEWTABLE R5 0 1
  LOADK R6 K114 ["Climbing"]
  SETTABLEN R6 R5 1
  SETTABLEKS R5 R4 K90 ["linkData"]
  LOADK R5 K114 ["Climbing"]
  SETTABLEKS R5 R4 K14 ["name"]
  LOADK R5 K37 ["{c77cf2a9-8984-419f-b208-f4a337c63839}"]
  SETTABLEKS R5 R4 K28 ["parentId"]
  DUPTABLE R5 K57 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
  LOADK R6 K115 ["rbxassetid://507765644"]
  SETTABLEKS R6 R5 K48 ["animationId"]
  LOADK R6 K59 [""]
  SETTABLEKS R6 R5 K49 ["didLoopEventName"]
  LOADK R6 K60 [∞]
  SETTABLEKS R6 R5 K50 ["endTime"]
  LOADN R6 255
  SETTABLEKS R6 R5 K51 ["looping"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K52 ["markerEvents"]
  LOADB R6 1
  SETTABLEKS R6 R5 K53 ["preload"]
  LOADN R6 0
  SETTABLEKS R6 R5 K54 ["speed"]
  LOADN R6 0
  SETTABLEKS R6 R5 K55 ["startTime"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K56 ["timePositionEvents"]
  SETTABLEKS R5 R4 K29 ["props"]
  DUPTABLE R5 K116 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
  LOADK R6 K115 ["rbxassetid://507765644"]
  SETTABLEKS R6 R5 K61 ["currentAnimationId"]
  LOADK R6 K117 [1.04167497158051]
  SETTABLEKS R6 R5 K62 ["length"]
  LOADK R6 K69 ["Loaded"]
  SETTABLEKS R6 R5 K63 ["loadingState"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K52 ["markerEvents"]
  LOADN R6 0
  SETTABLEKS R6 R5 K65 ["timePosition"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K56 ["timePositionEvents"]
  LOADN R6 0
  SETTABLEKS R6 R5 K66 ["timePositionNormalized"]
  SETTABLEKS R5 R4 K30 ["state"]
  LOADN R5 0
  SETTABLEKS R5 R4 K31 ["weight"]
  SETTABLEKS R4 R3 K74 ["{67afe536-0b3e-4542-b392-26a3e7691d57}"]
  DUPTABLE R4 K91 [{"children", "className", "id", "linkData", "name", "parentId", "props", "state", "weight"}]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K11 ["children"]
  LOADK R5 K46 ["ClipLayer"]
  SETTABLEKS R5 R4 K27 ["className"]
  LOADK R5 K75 ["{4fee757f-9545-47de-9d1b-832f0de17068}"]
  SETTABLEKS R5 R4 K12 ["id"]
  NEWTABLE R5 0 1
  LOADK R6 K118 ["Emote"]
  SETTABLEN R6 R5 1
  SETTABLEKS R5 R4 K90 ["linkData"]
  LOADK R5 K118 ["Emote"]
  SETTABLEKS R5 R4 K14 ["name"]
  LOADK R5 K37 ["{c77cf2a9-8984-419f-b208-f4a337c63839}"]
  SETTABLEKS R5 R4 K28 ["parentId"]
  DUPTABLE R5 K119 [{"didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
  LOADK R6 K59 [""]
  SETTABLEKS R6 R5 K49 ["didLoopEventName"]
  LOADK R6 K60 [∞]
  SETTABLEKS R6 R5 K50 ["endTime"]
  LOADN R6 255
  SETTABLEKS R6 R5 K51 ["looping"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K52 ["markerEvents"]
  LOADB R6 1
  SETTABLEKS R6 R5 K53 ["preload"]
  LOADN R6 1
  SETTABLEKS R6 R5 K54 ["speed"]
  LOADN R6 0
  SETTABLEKS R6 R5 K55 ["startTime"]
  NEWTABLE R6 0 1
  DUPTABLE R7 K121 [{"name", "shouldFireFn", "timePosition"}]
  LOADK R8 K122 ["EmoteEnding"]
  SETTABLEKS R8 R7 K14 ["name"]
  DUPCLOSURE R8 K123 [PROTO_0]
  SETTABLEKS R8 R7 K120 ["shouldFireFn"]
  LOADK R8 K124 [-0.2]
  SETTABLEKS R8 R7 K65 ["timePosition"]
  SETTABLEN R7 R6 1
  SETTABLEKS R6 R5 K56 ["timePositionEvents"]
  SETTABLEKS R5 R4 K29 ["props"]
  DUPTABLE R5 K125 [{"length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
  LOADN R6 0
  SETTABLEKS R6 R5 K62 ["length"]
  LOADK R6 K126 ["Unloaded"]
  SETTABLEKS R6 R5 K63 ["loadingState"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K52 ["markerEvents"]
  LOADN R6 0
  SETTABLEKS R6 R5 K65 ["timePosition"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K56 ["timePositionEvents"]
  LOADN R6 0
  SETTABLEKS R6 R5 K66 ["timePositionNormalized"]
  SETTABLEKS R5 R4 K30 ["state"]
  LOADN R5 0
  SETTABLEKS R5 R4 K31 ["weight"]
  SETTABLEKS R4 R3 K75 ["{4fee757f-9545-47de-9d1b-832f0de17068}"]
  DUPTABLE R4 K91 [{"children", "className", "id", "linkData", "name", "parentId", "props", "state", "weight"}]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K11 ["children"]
  LOADK R5 K46 ["ClipLayer"]
  SETTABLEKS R5 R4 K27 ["className"]
  LOADK R5 K76 ["{65f0fdf6-733e-42b8-b8a1-19ef18c415c1}"]
  SETTABLEKS R5 R4 K12 ["id"]
  NEWTABLE R5 0 1
  LOADK R6 K127 ["Falling"]
  SETTABLEN R6 R5 1
  SETTABLEKS R5 R4 K90 ["linkData"]
  LOADK R5 K127 ["Falling"]
  SETTABLEKS R5 R4 K14 ["name"]
  LOADK R5 K37 ["{c77cf2a9-8984-419f-b208-f4a337c63839}"]
  SETTABLEKS R5 R4 K28 ["parentId"]
  DUPTABLE R5 K57 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
  LOADK R6 K128 ["rbxassetid://10921262864"]
  SETTABLEKS R6 R5 K48 ["animationId"]
  LOADK R6 K59 [""]
  SETTABLEKS R6 R5 K49 ["didLoopEventName"]
  LOADK R6 K60 [∞]
  SETTABLEKS R6 R5 K50 ["endTime"]
  LOADN R6 255
  SETTABLEKS R6 R5 K51 ["looping"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K52 ["markerEvents"]
  LOADB R6 1
  SETTABLEKS R6 R5 K53 ["preload"]
  LOADN R6 1
  SETTABLEKS R6 R5 K54 ["speed"]
  LOADN R6 0
  SETTABLEKS R6 R5 K55 ["startTime"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K56 ["timePositionEvents"]
  SETTABLEKS R5 R4 K29 ["props"]
  DUPTABLE R5 K116 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
  LOADK R6 K128 ["rbxassetid://10921262864"]
  SETTABLEKS R6 R5 K61 ["currentAnimationId"]
  LOADK R6 K129 [0.75]
  SETTABLEKS R6 R5 K62 ["length"]
  LOADK R6 K69 ["Loaded"]
  SETTABLEKS R6 R5 K63 ["loadingState"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K52 ["markerEvents"]
  LOADN R6 0
  SETTABLEKS R6 R5 K65 ["timePosition"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K56 ["timePositionEvents"]
  LOADN R6 0
  SETTABLEKS R6 R5 K66 ["timePositionNormalized"]
  SETTABLEKS R5 R4 K30 ["state"]
  LOADN R5 0
  SETTABLEKS R5 R4 K31 ["weight"]
  SETTABLEKS R4 R3 K76 ["{65f0fdf6-733e-42b8-b8a1-19ef18c415c1}"]
  DUPTABLE R4 K91 [{"children", "className", "id", "linkData", "name", "parentId", "props", "state", "weight"}]
  NEWTABLE R5 0 11
  LOADK R6 K130 ["{3ccee2e5-24c1-46eb-a736-825584054a59}"]
  LOADK R7 K131 ["{65ac6017-a983-4124-b6b3-558227f7e545}"]
  LOADK R8 K132 ["{1d71c8d7-85ee-4ecf-9c9f-aef68c69a889}"]
  LOADK R9 K133 ["{4512dbbc-91da-45cc-950a-9480266b4b2d}"]
  LOADK R10 K134 ["{6d769e3c-82cf-4869-a72f-71c8138a1f52}"]
  LOADK R11 K135 ["{0fc10906-5cea-4e87-84e7-053506e27dbf}"]
  LOADK R12 K136 ["{5f721a47-53cc-4b3b-bc5b-ea223561ebad}"]
  LOADK R13 K137 ["{1b1a8b55-c2dc-44bb-999e-eda4f884bd02}"]
  LOADK R14 K138 ["{3423814e-2fd4-4926-803f-334847f77a83}"]
  LOADK R15 K139 ["{d6493c48-d9cd-4368-820b-0d23c25cb833}"]
  LOADK R16 K140 ["{117d88c1-9254-4fea-8bb6-47760516fb0f}"]
  SETLIST R5 R6 11 [1]
  SETTABLEKS R5 R4 K11 ["children"]
  LOADK R5 K103 ["BlendSpace"]
  SETTABLEKS R5 R4 K27 ["className"]
  LOADK R5 K77 ["{d4597589-d9c5-47df-b379-71b2f6af05fe}"]
  SETTABLEKS R5 R4 K12 ["id"]
  NEWTABLE R5 0 1
  LOADK R6 K141 ["LocomotingForward"]
  SETTABLEN R6 R5 1
  SETTABLEKS R5 R4 K90 ["linkData"]
  LOADK R5 K142 ["Forward Locomotion"]
  SETTABLEKS R5 R4 K14 ["name"]
  LOADK R5 K37 ["{c77cf2a9-8984-419f-b208-f4a337c63839}"]
  SETTABLEKS R5 R4 K28 ["parentId"]
  DUPTABLE R5 K109 [{"blendSpaceType", "lowLodThreshold", "positionSmoothingTime", "speed", "targetPosition"}]
  LOADK R6 K110 ["Locomotion"]
  SETTABLEKS R6 R5 K106 ["blendSpaceType"]
  LOADN R6 2
  SETTABLEKS R6 R5 K84 ["lowLodThreshold"]
  LOADN R6 0
  SETTABLEKS R6 R5 K107 ["positionSmoothingTime"]
  LOADN R6 0
  SETTABLEKS R6 R5 K54 ["speed"]
  GETIMPORT R6 K112 [Vector2.new]
  LOADN R7 0
  LOADN R8 0
  CALL R6 2 1
  SETTABLEKS R6 R5 K108 ["targetPosition"]
  SETTABLEKS R5 R4 K29 ["props"]
  DUPTABLE R5 K113 [{"length", "timePositionNormalized"}]
  LOADN R6 0
  SETTABLEKS R6 R5 K62 ["length"]
  LOADN R6 0
  SETTABLEKS R6 R5 K66 ["timePositionNormalized"]
  SETTABLEKS R5 R4 K30 ["state"]
  LOADN R5 0
  SETTABLEKS R5 R4 K31 ["weight"]
  SETTABLEKS R4 R3 K77 ["{d4597589-d9c5-47df-b379-71b2f6af05fe}"]
  DUPTABLE R4 K91 [{"children", "className", "id", "linkData", "name", "parentId", "props", "state", "weight"}]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K11 ["children"]
  LOADK R5 K46 ["ClipLayer"]
  SETTABLEKS R5 R4 K27 ["className"]
  LOADK R5 K78 ["{80711aa0-bdf3-49e1-bcdc-a0900eaabf06}"]
  SETTABLEKS R5 R4 K12 ["id"]
  NEWTABLE R5 0 1
  LOADK R6 K88 ["Idle"]
  SETTABLEN R6 R5 1
  SETTABLEKS R5 R4 K90 ["linkData"]
  LOADK R5 K88 ["Idle"]
  SETTABLEKS R5 R4 K14 ["name"]
  LOADK R5 K37 ["{c77cf2a9-8984-419f-b208-f4a337c63839}"]
  SETTABLEKS R5 R4 K28 ["parentId"]
  DUPTABLE R5 K57 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
  LOADK R6 K143 ["rbxassetid://10921258489"]
  SETTABLEKS R6 R5 K48 ["animationId"]
  LOADK R6 K144 ["IdleDidLoop"]
  SETTABLEKS R6 R5 K49 ["didLoopEventName"]
  LOADK R6 K60 [∞]
  SETTABLEKS R6 R5 K50 ["endTime"]
  LOADN R6 255
  SETTABLEKS R6 R5 K51 ["looping"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K52 ["markerEvents"]
  LOADB R6 1
  SETTABLEKS R6 R5 K53 ["preload"]
  LOADN R6 1
  SETTABLEKS R6 R5 K54 ["speed"]
  LOADN R6 0
  SETTABLEKS R6 R5 K55 ["startTime"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K56 ["timePositionEvents"]
  SETTABLEKS R5 R4 K29 ["props"]
  DUPTABLE R5 K67 [{"currentAnimationId", "length", "loadingState", "markerEvents", "prevTimePosition", "timePosition", "timePositionEvents", "timePositionNormalized"}]
  LOADK R6 K143 ["rbxassetid://10921258489"]
  SETTABLEKS R6 R5 K61 ["currentAnimationId"]
  LOADN R6 10
  SETTABLEKS R6 R5 K62 ["length"]
  LOADK R6 K69 ["Loaded"]
  SETTABLEKS R6 R5 K63 ["loadingState"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K52 ["markerEvents"]
  LOADK R6 K26 [7.2416670541279]
  SETTABLEKS R6 R5 K64 ["prevTimePosition"]
  LOADK R6 K26 [7.2416670541279]
  SETTABLEKS R6 R5 K65 ["timePosition"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K56 ["timePositionEvents"]
  LOADK R6 K145 [0.72416670541279]
  SETTABLEKS R6 R5 K66 ["timePositionNormalized"]
  SETTABLEKS R5 R4 K30 ["state"]
  LOADN R5 0
  SETTABLEKS R5 R4 K31 ["weight"]
  SETTABLEKS R4 R3 K78 ["{80711aa0-bdf3-49e1-bcdc-a0900eaabf06}"]
  DUPTABLE R4 K91 [{"children", "className", "id", "linkData", "name", "parentId", "props", "state", "weight"}]
  NEWTABLE R5 0 2
  LOADK R6 K146 ["{9e60c31d-cf4e-4b81-bb19-b708becd9515}"]
  LOADK R7 K147 ["{b1751c84-f579-489b-8490-0b3251969695}"]
  SETLIST R5 R6 2 [1]
  SETTABLEKS R5 R4 K11 ["children"]
  LOADK R5 K148 ["SequenceLayer"]
  SETTABLEKS R5 R4 K27 ["className"]
  LOADK R5 K79 ["{5d480bf8-4844-4022-9d45-e56af61bf4e5}"]
  SETTABLEKS R5 R4 K12 ["id"]
  NEWTABLE R5 0 1
  LOADK R6 K149 ["Jumping"]
  SETTABLEN R6 R5 1
  SETTABLEKS R5 R4 K90 ["linkData"]
  LOADK R5 K150 ["Jumping Sequence"]
  SETTABLEKS R5 R4 K14 ["name"]
  LOADK R5 K37 ["{c77cf2a9-8984-419f-b208-f4a337c63839}"]
  SETTABLEKS R5 R4 K28 ["parentId"]
  DUPTABLE R5 K152 [{"incrementMode", "transitionDurationSeconds"}]
  LOADN R6 1
  SETTABLEKS R6 R5 K151 ["incrementMode"]
  LOADK R6 K153 [0.25]
  SETTABLEKS R6 R5 K86 ["transitionDurationSeconds"]
  SETTABLEKS R5 R4 K29 ["props"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K30 ["state"]
  LOADN R5 0
  SETTABLEKS R5 R4 K31 ["weight"]
  SETTABLEKS R4 R3 K79 ["{5d480bf8-4844-4022-9d45-e56af61bf4e5}"]
  DUPTABLE R4 K91 [{"children", "className", "id", "linkData", "name", "parentId", "props", "state", "weight"}]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K11 ["children"]
  LOADK R5 K46 ["ClipLayer"]
  SETTABLEKS R5 R4 K27 ["className"]
  LOADK R5 K80 ["{14ce7080-803b-435f-93ea-4eb438941c29}"]
  SETTABLEKS R5 R4 K12 ["id"]
  NEWTABLE R5 0 1
  LOADK R6 K154 ["Sitting"]
  SETTABLEN R6 R5 1
  SETTABLEKS R5 R4 K90 ["linkData"]
  LOADK R5 K154 ["Sitting"]
  SETTABLEKS R5 R4 K14 ["name"]
  LOADK R5 K37 ["{c77cf2a9-8984-419f-b208-f4a337c63839}"]
  SETTABLEKS R5 R4 K28 ["parentId"]
  DUPTABLE R5 K57 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
  LOADK R6 K155 ["rbxassetid://2506281703"]
  SETTABLEKS R6 R5 K48 ["animationId"]
  LOADK R6 K59 [""]
  SETTABLEKS R6 R5 K49 ["didLoopEventName"]
  LOADK R6 K60 [∞]
  SETTABLEKS R6 R5 K50 ["endTime"]
  LOADN R6 255
  SETTABLEKS R6 R5 K51 ["looping"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K52 ["markerEvents"]
  LOADB R6 1
  SETTABLEKS R6 R5 K53 ["preload"]
  LOADN R6 1
  SETTABLEKS R6 R5 K54 ["speed"]
  LOADN R6 0
  SETTABLEKS R6 R5 K55 ["startTime"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K56 ["timePositionEvents"]
  SETTABLEKS R5 R4 K29 ["props"]
  DUPTABLE R5 K116 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
  LOADK R6 K155 ["rbxassetid://2506281703"]
  SETTABLEKS R6 R5 K61 ["currentAnimationId"]
  LOADK R6 K156 [0.916999995708466]
  SETTABLEKS R6 R5 K62 ["length"]
  LOADK R6 K69 ["Loaded"]
  SETTABLEKS R6 R5 K63 ["loadingState"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K52 ["markerEvents"]
  LOADN R6 0
  SETTABLEKS R6 R5 K65 ["timePosition"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K56 ["timePositionEvents"]
  LOADN R6 0
  SETTABLEKS R6 R5 K66 ["timePositionNormalized"]
  SETTABLEKS R5 R4 K30 ["state"]
  LOADN R5 0
  SETTABLEKS R5 R4 K31 ["weight"]
  SETTABLEKS R4 R3 K80 ["{14ce7080-803b-435f-93ea-4eb438941c29}"]
  DUPTABLE R4 K91 [{"children", "className", "id", "linkData", "name", "parentId", "props", "state", "weight"}]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K11 ["children"]
  LOADK R5 K46 ["ClipLayer"]
  SETTABLEKS R5 R4 K27 ["className"]
  LOADK R5 K81 ["{f8703185-c346-4a94-94a5-438a9d9b53f4}"]
  SETTABLEKS R5 R4 K12 ["id"]
  NEWTABLE R5 0 1
  LOADK R6 K157 ["Swimming"]
  SETTABLEN R6 R5 1
  SETTABLEKS R5 R4 K90 ["linkData"]
  LOADK R5 K157 ["Swimming"]
  SETTABLEKS R5 R4 K14 ["name"]
  LOADK R5 K37 ["{c77cf2a9-8984-419f-b208-f4a337c63839}"]
  SETTABLEKS R5 R4 K28 ["parentId"]
  DUPTABLE R5 K57 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
  LOADK R6 K158 ["rbxassetid://10921264784"]
  SETTABLEKS R6 R5 K48 ["animationId"]
  LOADK R6 K59 [""]
  SETTABLEKS R6 R5 K49 ["didLoopEventName"]
  LOADK R6 K60 [∞]
  SETTABLEKS R6 R5 K50 ["endTime"]
  LOADN R6 255
  SETTABLEKS R6 R5 K51 ["looping"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K52 ["markerEvents"]
  LOADB R6 1
  SETTABLEKS R6 R5 K53 ["preload"]
  LOADN R6 0
  SETTABLEKS R6 R5 K54 ["speed"]
  LOADN R6 0
  SETTABLEKS R6 R5 K55 ["startTime"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K56 ["timePositionEvents"]
  SETTABLEKS R5 R4 K29 ["props"]
  DUPTABLE R5 K116 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
  LOADK R6 K158 ["rbxassetid://10921264784"]
  SETTABLEKS R6 R5 K61 ["currentAnimationId"]
  LOADK R6 K159 [2.25]
  SETTABLEKS R6 R5 K62 ["length"]
  LOADK R6 K69 ["Loaded"]
  SETTABLEKS R6 R5 K63 ["loadingState"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K52 ["markerEvents"]
  LOADN R6 0
  SETTABLEKS R6 R5 K65 ["timePosition"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K56 ["timePositionEvents"]
  LOADN R6 0
  SETTABLEKS R6 R5 K66 ["timePositionNormalized"]
  SETTABLEKS R5 R4 K30 ["state"]
  LOADN R5 0
  SETTABLEKS R5 R4 K31 ["weight"]
  SETTABLEKS R4 R3 K81 ["{f8703185-c346-4a94-94a5-438a9d9b53f4}"]
  DUPTABLE R4 K91 [{"children", "className", "id", "linkData", "name", "parentId", "props", "state", "weight"}]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K11 ["children"]
  LOADK R5 K46 ["ClipLayer"]
  SETTABLEKS R5 R4 K27 ["className"]
  LOADK R5 K82 ["{85ce8c33-0a03-425b-a7f4-8749f4ef200d}"]
  SETTABLEKS R5 R4 K12 ["id"]
  NEWTABLE R5 0 1
  LOADK R6 K160 ["SwimmingIdle"]
  SETTABLEN R6 R5 1
  SETTABLEKS R5 R4 K90 ["linkData"]
  LOADK R5 K161 ["Swimming Idle"]
  SETTABLEKS R5 R4 K14 ["name"]
  LOADK R5 K37 ["{c77cf2a9-8984-419f-b208-f4a337c63839}"]
  SETTABLEKS R5 R4 K28 ["parentId"]
  DUPTABLE R5 K57 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
  LOADK R6 K162 ["rbxassetid://10921265698"]
  SETTABLEKS R6 R5 K48 ["animationId"]
  LOADK R6 K59 [""]
  SETTABLEKS R6 R5 K49 ["didLoopEventName"]
  LOADK R6 K60 [∞]
  SETTABLEKS R6 R5 K50 ["endTime"]
  LOADN R6 255
  SETTABLEKS R6 R5 K51 ["looping"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K52 ["markerEvents"]
  LOADB R6 1
  SETTABLEKS R6 R5 K53 ["preload"]
  LOADN R6 1
  SETTABLEKS R6 R5 K54 ["speed"]
  LOADN R6 0
  SETTABLEKS R6 R5 K55 ["startTime"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K56 ["timePositionEvents"]
  SETTABLEKS R5 R4 K29 ["props"]
  DUPTABLE R5 K116 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
  LOADK R6 K162 ["rbxassetid://10921265698"]
  SETTABLEKS R6 R5 K61 ["currentAnimationId"]
  LOADK R6 K163 [2.875]
  SETTABLEKS R6 R5 K62 ["length"]
  LOADK R6 K69 ["Loaded"]
  SETTABLEKS R6 R5 K63 ["loadingState"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K52 ["markerEvents"]
  LOADN R6 0
  SETTABLEKS R6 R5 K65 ["timePosition"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K56 ["timePositionEvents"]
  LOADN R6 0
  SETTABLEKS R6 R5 K66 ["timePositionNormalized"]
  SETTABLEKS R5 R4 K30 ["state"]
  LOADN R5 0
  SETTABLEKS R5 R4 K31 ["weight"]
  SETTABLEKS R4 R3 K82 ["{85ce8c33-0a03-425b-a7f4-8749f4ef200d}"]
  DUPTABLE R4 K164 [{"children", "className", "id", "linkData", "parentId", "props", "state", "weight"}]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K11 ["children"]
  LOADK R5 K46 ["ClipLayer"]
  SETTABLEKS R5 R4 K27 ["className"]
  LOADK R5 K146 ["{9e60c31d-cf4e-4b81-bb19-b708becd9515}"]
  SETTABLEKS R5 R4 K12 ["id"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K90 ["linkData"]
  LOADK R5 K79 ["{5d480bf8-4844-4022-9d45-e56af61bf4e5}"]
  SETTABLEKS R5 R4 K28 ["parentId"]
  DUPTABLE R5 K57 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
  LOADK R6 K165 ["rbxassetid://10921263860"]
  SETTABLEKS R6 R5 K48 ["animationId"]
  LOADK R6 K59 [""]
  SETTABLEKS R6 R5 K49 ["didLoopEventName"]
  LOADK R6 K60 [∞]
  SETTABLEKS R6 R5 K50 ["endTime"]
  LOADN R6 255
  SETTABLEKS R6 R5 K51 ["looping"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K52 ["markerEvents"]
  LOADB R6 1
  SETTABLEKS R6 R5 K53 ["preload"]
  LOADN R6 1
  SETTABLEKS R6 R5 K54 ["speed"]
  LOADN R6 0
  SETTABLEKS R6 R5 K55 ["startTime"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K56 ["timePositionEvents"]
  SETTABLEKS R5 R4 K29 ["props"]
  DUPTABLE R5 K116 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
  LOADK R6 K165 ["rbxassetid://10921263860"]
  SETTABLEKS R6 R5 K61 ["currentAnimationId"]
  LOADK R6 K166 [1.04200005531311]
  SETTABLEKS R6 R5 K62 ["length"]
  LOADK R6 K69 ["Loaded"]
  SETTABLEKS R6 R5 K63 ["loadingState"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K52 ["markerEvents"]
  LOADN R6 0
  SETTABLEKS R6 R5 K65 ["timePosition"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K56 ["timePositionEvents"]
  LOADN R6 0
  SETTABLEKS R6 R5 K66 ["timePositionNormalized"]
  SETTABLEKS R5 R4 K30 ["state"]
  LOADN R5 0
  SETTABLEKS R5 R4 K31 ["weight"]
  SETTABLEKS R4 R3 K146 ["{9e60c31d-cf4e-4b81-bb19-b708becd9515}"]
  DUPTABLE R4 K164 [{"children", "className", "id", "linkData", "parentId", "props", "state", "weight"}]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K11 ["children"]
  LOADK R5 K46 ["ClipLayer"]
  SETTABLEKS R5 R4 K27 ["className"]
  LOADK R5 K147 ["{b1751c84-f579-489b-8490-0b3251969695}"]
  SETTABLEKS R5 R4 K12 ["id"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K90 ["linkData"]
  LOADK R5 K79 ["{5d480bf8-4844-4022-9d45-e56af61bf4e5}"]
  SETTABLEKS R5 R4 K28 ["parentId"]
  DUPTABLE R5 K57 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
  LOADK R6 K128 ["rbxassetid://10921262864"]
  SETTABLEKS R6 R5 K48 ["animationId"]
  LOADK R6 K59 [""]
  SETTABLEKS R6 R5 K49 ["didLoopEventName"]
  LOADK R6 K60 [∞]
  SETTABLEKS R6 R5 K50 ["endTime"]
  LOADN R6 255
  SETTABLEKS R6 R5 K51 ["looping"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K52 ["markerEvents"]
  LOADB R6 1
  SETTABLEKS R6 R5 K53 ["preload"]
  LOADN R6 1
  SETTABLEKS R6 R5 K54 ["speed"]
  LOADN R6 0
  SETTABLEKS R6 R5 K55 ["startTime"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K56 ["timePositionEvents"]
  SETTABLEKS R5 R4 K29 ["props"]
  DUPTABLE R5 K116 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
  LOADK R6 K128 ["rbxassetid://10921262864"]
  SETTABLEKS R6 R5 K61 ["currentAnimationId"]
  LOADK R6 K129 [0.75]
  SETTABLEKS R6 R5 K62 ["length"]
  LOADK R6 K69 ["Loaded"]
  SETTABLEKS R6 R5 K63 ["loadingState"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K52 ["markerEvents"]
  LOADN R6 0
  SETTABLEKS R6 R5 K65 ["timePosition"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K56 ["timePositionEvents"]
  LOADN R6 0
  SETTABLEKS R6 R5 K66 ["timePositionNormalized"]
  SETTABLEKS R5 R4 K30 ["state"]
  LOADN R5 0
  SETTABLEKS R5 R4 K31 ["weight"]
  SETTABLEKS R4 R3 K147 ["{b1751c84-f579-489b-8490-0b3251969695}"]
  DUPTABLE R4 K168 [{"children", "className", "id", "index", "linkData", "name", "parentId", "props", "state", "weight"}]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K11 ["children"]
  LOADK R5 K169 ["RestPose"]
  SETTABLEKS R5 R4 K27 ["className"]
  LOADK R5 K130 ["{3ccee2e5-24c1-46eb-a736-825584054a59}"]
  SETTABLEKS R5 R4 K12 ["id"]
  LOADN R5 1
  SETTABLEKS R5 R4 K167 ["index"]
  DUPTABLE R5 K171 [{"position"}]
  GETIMPORT R6 K112 [Vector2.new]
  LOADN R7 0
  LOADN R8 0
  CALL R6 2 1
  SETTABLEKS R6 R5 K170 ["position"]
  SETTABLEKS R5 R4 K90 ["linkData"]
  LOADK R5 K172 ["Origin"]
  SETTABLEKS R5 R4 K14 ["name"]
  LOADK R5 K77 ["{d4597589-d9c5-47df-b379-71b2f6af05fe}"]
  SETTABLEKS R5 R4 K28 ["parentId"]
  DUPTABLE R5 K174 [{"duration"}]
  LOADN R6 1
  SETTABLEKS R6 R5 K173 ["duration"]
  SETTABLEKS R5 R4 K29 ["props"]
  DUPTABLE R5 K113 [{"length", "timePositionNormalized"}]
  LOADN R6 1
  SETTABLEKS R6 R5 K62 ["length"]
  LOADN R6 0
  SETTABLEKS R6 R5 K66 ["timePositionNormalized"]
  SETTABLEKS R5 R4 K30 ["state"]
  LOADN R5 0
  SETTABLEKS R5 R4 K31 ["weight"]
  SETTABLEKS R4 R3 K130 ["{3ccee2e5-24c1-46eb-a736-825584054a59}"]
  DUPTABLE R4 K168 [{"children", "className", "id", "index", "linkData", "name", "parentId", "props", "state", "weight"}]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K11 ["children"]
  LOADK R5 K46 ["ClipLayer"]
  SETTABLEKS R5 R4 K27 ["className"]
  LOADK R5 K131 ["{65ac6017-a983-4124-b6b3-558227f7e545}"]
  SETTABLEKS R5 R4 K12 ["id"]
  LOADN R5 2
  SETTABLEKS R5 R4 K167 ["index"]
  DUPTABLE R5 K171 [{"position"}]
  GETIMPORT R6 K112 [Vector2.new]
  LOADN R7 0
  LOADN R8 1
  CALL R6 2 1
  SETTABLEKS R6 R5 K170 ["position"]
  SETTABLEKS R5 R4 K90 ["linkData"]
  LOADK R5 K175 ["Forward Walk"]
  SETTABLEKS R5 R4 K14 ["name"]
  LOADK R5 K77 ["{d4597589-d9c5-47df-b379-71b2f6af05fe}"]
  SETTABLEKS R5 R4 K28 ["parentId"]
  DUPTABLE R5 K57 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
  LOADK R6 K176 ["rbxassetid://14045085169"]
  SETTABLEKS R6 R5 K48 ["animationId"]
  LOADK R6 K59 [""]
  SETTABLEKS R6 R5 K49 ["didLoopEventName"]
  LOADK R6 K60 [∞]
  SETTABLEKS R6 R5 K50 ["endTime"]
  LOADN R6 255
  SETTABLEKS R6 R5 K51 ["looping"]
  DUPTABLE R6 K178 [{"Footstep"}]
  LOADK R7 K177 ["Footstep"]
  SETTABLEKS R7 R6 K177 ["Footstep"]
  SETTABLEKS R6 R5 K52 ["markerEvents"]
  LOADB R6 1
  SETTABLEKS R6 R5 K53 ["preload"]
  LOADN R6 1
  SETTABLEKS R6 R5 K54 ["speed"]
  LOADN R6 0
  SETTABLEKS R6 R5 K55 ["startTime"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K56 ["timePositionEvents"]
  SETTABLEKS R5 R4 K29 ["props"]
  DUPTABLE R5 K116 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
  LOADK R6 K176 ["rbxassetid://14045085169"]
  SETTABLEKS R6 R5 K61 ["currentAnimationId"]
  LOADN R6 0
  SETTABLEKS R6 R5 K62 ["length"]
  LOADK R6 K179 ["Loading"]
  SETTABLEKS R6 R5 K63 ["loadingState"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K52 ["markerEvents"]
  LOADN R6 0
  SETTABLEKS R6 R5 K65 ["timePosition"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K56 ["timePositionEvents"]
  LOADN R6 0
  SETTABLEKS R6 R5 K66 ["timePositionNormalized"]
  SETTABLEKS R5 R4 K30 ["state"]
  LOADN R5 0
  SETTABLEKS R5 R4 K31 ["weight"]
  SETTABLEKS R4 R3 K131 ["{65ac6017-a983-4124-b6b3-558227f7e545}"]
  DUPTABLE R4 K168 [{"children", "className", "id", "index", "linkData", "name", "parentId", "props", "state", "weight"}]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K11 ["children"]
  LOADK R5 K46 ["ClipLayer"]
  SETTABLEKS R5 R4 K27 ["className"]
  LOADK R5 K132 ["{1d71c8d7-85ee-4ecf-9c9f-aef68c69a889}"]
  SETTABLEKS R5 R4 K12 ["id"]
  LOADN R5 3
  SETTABLEKS R5 R4 K167 ["index"]
  DUPTABLE R5 K171 [{"position"}]
  GETIMPORT R6 K112 [Vector2.new]
  LOADN R7 0
  LOADN R8 2
  CALL R6 2 1
  SETTABLEKS R6 R5 K170 ["position"]
  SETTABLEKS R5 R4 K90 ["linkData"]
  LOADK R5 K180 ["Forward Run"]
  SETTABLEKS R5 R4 K14 ["name"]
  LOADK R5 K77 ["{d4597589-d9c5-47df-b379-71b2f6af05fe}"]
  SETTABLEKS R5 R4 K28 ["parentId"]
  DUPTABLE R5 K57 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
  LOADK R6 K181 ["rbxassetid://10899968825"]
  SETTABLEKS R6 R5 K48 ["animationId"]
  LOADK R6 K59 [""]
  SETTABLEKS R6 R5 K49 ["didLoopEventName"]
  LOADK R6 K60 [∞]
  SETTABLEKS R6 R5 K50 ["endTime"]
  LOADN R6 255
  SETTABLEKS R6 R5 K51 ["looping"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K52 ["markerEvents"]
  LOADB R6 1
  SETTABLEKS R6 R5 K53 ["preload"]
  LOADN R6 1
  SETTABLEKS R6 R5 K54 ["speed"]
  LOADN R6 0
  SETTABLEKS R6 R5 K55 ["startTime"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K56 ["timePositionEvents"]
  SETTABLEKS R5 R4 K29 ["props"]
  DUPTABLE R5 K116 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
  LOADK R6 K181 ["rbxassetid://10899968825"]
  SETTABLEKS R6 R5 K61 ["currentAnimationId"]
  LOADK R6 K182 [0.625]
  SETTABLEKS R6 R5 K62 ["length"]
  LOADK R6 K69 ["Loaded"]
  SETTABLEKS R6 R5 K63 ["loadingState"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K52 ["markerEvents"]
  LOADN R6 0
  SETTABLEKS R6 R5 K65 ["timePosition"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K56 ["timePositionEvents"]
  LOADN R6 0
  SETTABLEKS R6 R5 K66 ["timePositionNormalized"]
  SETTABLEKS R5 R4 K30 ["state"]
  LOADN R5 0
  SETTABLEKS R5 R4 K31 ["weight"]
  SETTABLEKS R4 R3 K132 ["{1d71c8d7-85ee-4ecf-9c9f-aef68c69a889}"]
  DUPTABLE R4 K168 [{"children", "className", "id", "index", "linkData", "name", "parentId", "props", "state", "weight"}]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K11 ["children"]
  LOADK R5 K46 ["ClipLayer"]
  SETTABLEKS R5 R4 K27 ["className"]
  LOADK R5 K133 ["{4512dbbc-91da-45cc-950a-9480266b4b2d}"]
  SETTABLEKS R5 R4 K12 ["id"]
  LOADN R5 4
  SETTABLEKS R5 R4 K167 ["index"]
  DUPTABLE R5 K171 [{"position"}]
  GETIMPORT R6 K112 [Vector2.new]
  LOADN R7 1
  LOADN R8 0
  CALL R6 2 1
  SETTABLEKS R6 R5 K170 ["position"]
  SETTABLEKS R5 R4 K90 ["linkData"]
  LOADK R5 K183 ["Right Walk"]
  SETTABLEKS R5 R4 K14 ["name"]
  LOADK R5 K77 ["{d4597589-d9c5-47df-b379-71b2f6af05fe}"]
  SETTABLEKS R5 R4 K28 ["parentId"]
  DUPTABLE R5 K57 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
  LOADK R6 K184 ["rbxassetid://10404404615"]
  SETTABLEKS R6 R5 K48 ["animationId"]
  LOADK R6 K59 [""]
  SETTABLEKS R6 R5 K49 ["didLoopEventName"]
  LOADK R6 K60 [∞]
  SETTABLEKS R6 R5 K50 ["endTime"]
  LOADN R6 255
  SETTABLEKS R6 R5 K51 ["looping"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K52 ["markerEvents"]
  LOADB R6 1
  SETTABLEKS R6 R5 K53 ["preload"]
  LOADN R6 1
  SETTABLEKS R6 R5 K54 ["speed"]
  LOADN R6 0
  SETTABLEKS R6 R5 K55 ["startTime"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K56 ["timePositionEvents"]
  SETTABLEKS R5 R4 K29 ["props"]
  DUPTABLE R5 K116 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
  LOADK R6 K184 ["rbxassetid://10404404615"]
  SETTABLEKS R6 R5 K61 ["currentAnimationId"]
  LOADK R6 K182 [0.625]
  SETTABLEKS R6 R5 K62 ["length"]
  LOADK R6 K69 ["Loaded"]
  SETTABLEKS R6 R5 K63 ["loadingState"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K52 ["markerEvents"]
  LOADN R6 0
  SETTABLEKS R6 R5 K65 ["timePosition"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K56 ["timePositionEvents"]
  LOADN R6 0
  SETTABLEKS R6 R5 K66 ["timePositionNormalized"]
  SETTABLEKS R5 R4 K30 ["state"]
  LOADN R5 0
  SETTABLEKS R5 R4 K31 ["weight"]
  SETTABLEKS R4 R3 K133 ["{4512dbbc-91da-45cc-950a-9480266b4b2d}"]
  DUPTABLE R4 K168 [{"children", "className", "id", "index", "linkData", "name", "parentId", "props", "state", "weight"}]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K11 ["children"]
  LOADK R5 K46 ["ClipLayer"]
  SETTABLEKS R5 R4 K27 ["className"]
  LOADK R5 K134 ["{6d769e3c-82cf-4869-a72f-71c8138a1f52}"]
  SETTABLEKS R5 R4 K12 ["id"]
  LOADN R5 5
  SETTABLEKS R5 R4 K167 ["index"]
  DUPTABLE R5 K171 [{"position"}]
  GETIMPORT R6 K112 [Vector2.new]
  LOADN R7 2
  LOADN R8 0
  CALL R6 2 1
  SETTABLEKS R6 R5 K170 ["position"]
  SETTABLEKS R5 R4 K90 ["linkData"]
  LOADK R5 K185 ["Right Run"]
  SETTABLEKS R5 R4 K14 ["name"]
  LOADK R5 K77 ["{d4597589-d9c5-47df-b379-71b2f6af05fe}"]
  SETTABLEKS R5 R4 K28 ["parentId"]
  DUPTABLE R5 K57 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
  LOADK R6 K186 ["rbxassetid://10404627994"]
  SETTABLEKS R6 R5 K48 ["animationId"]
  LOADK R6 K59 [""]
  SETTABLEKS R6 R5 K49 ["didLoopEventName"]
  LOADK R6 K60 [∞]
  SETTABLEKS R6 R5 K50 ["endTime"]
  LOADN R6 255
  SETTABLEKS R6 R5 K51 ["looping"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K52 ["markerEvents"]
  LOADB R6 1
  SETTABLEKS R6 R5 K53 ["preload"]
  LOADN R6 1
  SETTABLEKS R6 R5 K54 ["speed"]
  LOADN R6 0
  SETTABLEKS R6 R5 K55 ["startTime"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K56 ["timePositionEvents"]
  SETTABLEKS R5 R4 K29 ["props"]
  DUPTABLE R5 K116 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
  LOADK R6 K186 ["rbxassetid://10404627994"]
  SETTABLEKS R6 R5 K61 ["currentAnimationId"]
  LOADK R6 K182 [0.625]
  SETTABLEKS R6 R5 K62 ["length"]
  LOADK R6 K69 ["Loaded"]
  SETTABLEKS R6 R5 K63 ["loadingState"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K52 ["markerEvents"]
  LOADN R6 0
  SETTABLEKS R6 R5 K65 ["timePosition"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K56 ["timePositionEvents"]
  LOADN R6 0
  SETTABLEKS R6 R5 K66 ["timePositionNormalized"]
  SETTABLEKS R5 R4 K30 ["state"]
  LOADN R5 0
  SETTABLEKS R5 R4 K31 ["weight"]
  SETTABLEKS R4 R3 K134 ["{6d769e3c-82cf-4869-a72f-71c8138a1f52}"]
  DUPTABLE R4 K168 [{"children", "className", "id", "index", "linkData", "name", "parentId", "props", "state", "weight"}]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K11 ["children"]
  LOADK R5 K46 ["ClipLayer"]
  SETTABLEKS R5 R4 K27 ["className"]
  LOADK R5 K135 ["{0fc10906-5cea-4e87-84e7-053506e27dbf}"]
  SETTABLEKS R5 R4 K12 ["id"]
  LOADN R5 6
  SETTABLEKS R5 R4 K167 ["index"]
  DUPTABLE R5 K171 [{"position"}]
  GETIMPORT R6 K112 [Vector2.new]
  LOADN R7 255
  LOADN R8 0
  CALL R6 2 1
  SETTABLEKS R6 R5 K170 ["position"]
  SETTABLEKS R5 R4 K90 ["linkData"]
  LOADK R5 K187 ["Left Walk"]
  SETTABLEKS R5 R4 K14 ["name"]
  LOADK R5 K77 ["{d4597589-d9c5-47df-b379-71b2f6af05fe}"]
  SETTABLEKS R5 R4 K28 ["parentId"]
  DUPTABLE R5 K57 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
  LOADK R6 K188 ["rbxassetid://10404377900"]
  SETTABLEKS R6 R5 K48 ["animationId"]
  LOADK R6 K59 [""]
  SETTABLEKS R6 R5 K49 ["didLoopEventName"]
  LOADK R6 K60 [∞]
  SETTABLEKS R6 R5 K50 ["endTime"]
  LOADN R6 255
  SETTABLEKS R6 R5 K51 ["looping"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K52 ["markerEvents"]
  LOADB R6 1
  SETTABLEKS R6 R5 K53 ["preload"]
  LOADN R6 1
  SETTABLEKS R6 R5 K54 ["speed"]
  LOADN R6 0
  SETTABLEKS R6 R5 K55 ["startTime"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K56 ["timePositionEvents"]
  SETTABLEKS R5 R4 K29 ["props"]
  DUPTABLE R5 K116 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
  LOADK R6 K188 ["rbxassetid://10404377900"]
  SETTABLEKS R6 R5 K61 ["currentAnimationId"]
  LOADK R6 K182 [0.625]
  SETTABLEKS R6 R5 K62 ["length"]
  LOADK R6 K69 ["Loaded"]
  SETTABLEKS R6 R5 K63 ["loadingState"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K52 ["markerEvents"]
  LOADN R6 0
  SETTABLEKS R6 R5 K65 ["timePosition"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K56 ["timePositionEvents"]
  LOADN R6 0
  SETTABLEKS R6 R5 K66 ["timePositionNormalized"]
  SETTABLEKS R5 R4 K30 ["state"]
  LOADN R5 0
  SETTABLEKS R5 R4 K31 ["weight"]
  SETTABLEKS R4 R3 K135 ["{0fc10906-5cea-4e87-84e7-053506e27dbf}"]
  DUPTABLE R4 K168 [{"children", "className", "id", "index", "linkData", "name", "parentId", "props", "state", "weight"}]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K11 ["children"]
  LOADK R5 K46 ["ClipLayer"]
  SETTABLEKS R5 R4 K27 ["className"]
  LOADK R5 K136 ["{5f721a47-53cc-4b3b-bc5b-ea223561ebad}"]
  SETTABLEKS R5 R4 K12 ["id"]
  LOADN R5 7
  SETTABLEKS R5 R4 K167 ["index"]
  DUPTABLE R5 K171 [{"position"}]
  GETIMPORT R6 K112 [Vector2.new]
  LOADN R7 254
  LOADN R8 0
  CALL R6 2 1
  SETTABLEKS R6 R5 K170 ["position"]
  SETTABLEKS R5 R4 K90 ["linkData"]
  LOADK R5 K189 ["Left Run"]
  SETTABLEKS R5 R4 K14 ["name"]
  LOADK R5 K77 ["{d4597589-d9c5-47df-b379-71b2f6af05fe}"]
  SETTABLEKS R5 R4 K28 ["parentId"]
  DUPTABLE R5 K57 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
  LOADK R6 K190 ["rbxassetid://10404604071"]
  SETTABLEKS R6 R5 K48 ["animationId"]
  LOADK R6 K59 [""]
  SETTABLEKS R6 R5 K49 ["didLoopEventName"]
  LOADK R6 K60 [∞]
  SETTABLEKS R6 R5 K50 ["endTime"]
  LOADN R6 255
  SETTABLEKS R6 R5 K51 ["looping"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K52 ["markerEvents"]
  LOADB R6 1
  SETTABLEKS R6 R5 K53 ["preload"]
  LOADN R6 1
  SETTABLEKS R6 R5 K54 ["speed"]
  LOADN R6 0
  SETTABLEKS R6 R5 K55 ["startTime"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K56 ["timePositionEvents"]
  SETTABLEKS R5 R4 K29 ["props"]
  DUPTABLE R5 K116 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
  LOADK R6 K190 ["rbxassetid://10404604071"]
  SETTABLEKS R6 R5 K61 ["currentAnimationId"]
  LOADK R6 K182 [0.625]
  SETTABLEKS R6 R5 K62 ["length"]
  LOADK R6 K69 ["Loaded"]
  SETTABLEKS R6 R5 K63 ["loadingState"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K52 ["markerEvents"]
  LOADN R6 0
  SETTABLEKS R6 R5 K65 ["timePosition"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K56 ["timePositionEvents"]
  LOADN R6 0
  SETTABLEKS R6 R5 K66 ["timePositionNormalized"]
  SETTABLEKS R5 R4 K30 ["state"]
  LOADN R5 0
  SETTABLEKS R5 R4 K31 ["weight"]
  SETTABLEKS R4 R3 K136 ["{5f721a47-53cc-4b3b-bc5b-ea223561ebad}"]
  DUPTABLE R4 K168 [{"children", "className", "id", "index", "linkData", "name", "parentId", "props", "state", "weight"}]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K11 ["children"]
  LOADK R5 K46 ["ClipLayer"]
  SETTABLEKS R5 R4 K27 ["className"]
  LOADK R5 K137 ["{1b1a8b55-c2dc-44bb-999e-eda4f884bd02}"]
  SETTABLEKS R5 R4 K12 ["id"]
  LOADN R5 8
  SETTABLEKS R5 R4 K167 ["index"]
  DUPTABLE R5 K171 [{"position"}]
  GETIMPORT R6 K112 [Vector2.new]
  LOADK R7 K191 [0.707106769]
  LOADK R8 K191 [0.707106769]
  CALL R6 2 1
  SETTABLEKS R6 R5 K170 ["position"]
  SETTABLEKS R5 R4 K90 ["linkData"]
  LOADK R5 K192 ["Forward Right Walk"]
  SETTABLEKS R5 R4 K14 ["name"]
  LOADK R5 K77 ["{d4597589-d9c5-47df-b379-71b2f6af05fe}"]
  SETTABLEKS R5 R4 K28 ["parentId"]
  DUPTABLE R5 K57 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
  LOADK R6 K193 ["rbxassetid://10404269576"]
  SETTABLEKS R6 R5 K48 ["animationId"]
  LOADK R6 K59 [""]
  SETTABLEKS R6 R5 K49 ["didLoopEventName"]
  LOADK R6 K60 [∞]
  SETTABLEKS R6 R5 K50 ["endTime"]
  LOADN R6 255
  SETTABLEKS R6 R5 K51 ["looping"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K52 ["markerEvents"]
  LOADB R6 1
  SETTABLEKS R6 R5 K53 ["preload"]
  LOADN R6 1
  SETTABLEKS R6 R5 K54 ["speed"]
  LOADN R6 0
  SETTABLEKS R6 R5 K55 ["startTime"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K56 ["timePositionEvents"]
  SETTABLEKS R5 R4 K29 ["props"]
  DUPTABLE R5 K116 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
  LOADK R6 K193 ["rbxassetid://10404269576"]
  SETTABLEKS R6 R5 K61 ["currentAnimationId"]
  LOADK R6 K182 [0.625]
  SETTABLEKS R6 R5 K62 ["length"]
  LOADK R6 K69 ["Loaded"]
  SETTABLEKS R6 R5 K63 ["loadingState"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K52 ["markerEvents"]
  LOADN R6 0
  SETTABLEKS R6 R5 K65 ["timePosition"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K56 ["timePositionEvents"]
  LOADN R6 0
  SETTABLEKS R6 R5 K66 ["timePositionNormalized"]
  SETTABLEKS R5 R4 K30 ["state"]
  LOADN R5 0
  SETTABLEKS R5 R4 K31 ["weight"]
  SETTABLEKS R4 R3 K137 ["{1b1a8b55-c2dc-44bb-999e-eda4f884bd02}"]
  DUPTABLE R4 K168 [{"children", "className", "id", "index", "linkData", "name", "parentId", "props", "state", "weight"}]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K11 ["children"]
  LOADK R5 K46 ["ClipLayer"]
  SETTABLEKS R5 R4 K27 ["className"]
  LOADK R5 K138 ["{3423814e-2fd4-4926-803f-334847f77a83}"]
  SETTABLEKS R5 R4 K12 ["id"]
  LOADN R5 9
  SETTABLEKS R5 R4 K167 ["index"]
  DUPTABLE R5 K171 [{"position"}]
  GETIMPORT R6 K112 [Vector2.new]
  LOADK R7 K194 [-0.707106769]
  LOADK R8 K191 [0.707106769]
  CALL R6 2 1
  SETTABLEKS R6 R5 K170 ["position"]
  SETTABLEKS R5 R4 K90 ["linkData"]
  LOADK R5 K195 ["Forward Left Walk"]
  SETTABLEKS R5 R4 K14 ["name"]
  LOADK R5 K77 ["{d4597589-d9c5-47df-b379-71b2f6af05fe}"]
  SETTABLEKS R5 R4 K28 ["parentId"]
  DUPTABLE R5 K57 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
  LOADK R6 K196 ["rbxassetid://10404251500"]
  SETTABLEKS R6 R5 K48 ["animationId"]
  LOADK R6 K59 [""]
  SETTABLEKS R6 R5 K49 ["didLoopEventName"]
  LOADK R6 K60 [∞]
  SETTABLEKS R6 R5 K50 ["endTime"]
  LOADN R6 255
  SETTABLEKS R6 R5 K51 ["looping"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K52 ["markerEvents"]
  LOADB R6 1
  SETTABLEKS R6 R5 K53 ["preload"]
  LOADN R6 1
  SETTABLEKS R6 R5 K54 ["speed"]
  LOADN R6 0
  SETTABLEKS R6 R5 K55 ["startTime"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K56 ["timePositionEvents"]
  SETTABLEKS R5 R4 K29 ["props"]
  DUPTABLE R5 K116 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
  LOADK R6 K196 ["rbxassetid://10404251500"]
  SETTABLEKS R6 R5 K61 ["currentAnimationId"]
  LOADK R6 K182 [0.625]
  SETTABLEKS R6 R5 K62 ["length"]
  LOADK R6 K69 ["Loaded"]
  SETTABLEKS R6 R5 K63 ["loadingState"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K52 ["markerEvents"]
  LOADN R6 0
  SETTABLEKS R6 R5 K65 ["timePosition"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K56 ["timePositionEvents"]
  LOADN R6 0
  SETTABLEKS R6 R5 K66 ["timePositionNormalized"]
  SETTABLEKS R5 R4 K30 ["state"]
  LOADN R5 0
  SETTABLEKS R5 R4 K31 ["weight"]
  SETTABLEKS R4 R3 K138 ["{3423814e-2fd4-4926-803f-334847f77a83}"]
  DUPTABLE R4 K168 [{"children", "className", "id", "index", "linkData", "name", "parentId", "props", "state", "weight"}]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K11 ["children"]
  LOADK R5 K46 ["ClipLayer"]
  SETTABLEKS R5 R4 K27 ["className"]
  LOADK R5 K139 ["{d6493c48-d9cd-4368-820b-0d23c25cb833}"]
  SETTABLEKS R5 R4 K12 ["id"]
  LOADN R5 10
  SETTABLEKS R5 R4 K167 ["index"]
  DUPTABLE R5 K171 [{"position"}]
  GETIMPORT R6 K112 [Vector2.new]
  LOADK R7 K197 [1.41421354]
  LOADK R8 K197 [1.41421354]
  CALL R6 2 1
  SETTABLEKS R6 R5 K170 ["position"]
  SETTABLEKS R5 R4 K90 ["linkData"]
  LOADK R5 K198 ["Forward Right Run"]
  SETTABLEKS R5 R4 K14 ["name"]
  LOADK R5 K77 ["{d4597589-d9c5-47df-b379-71b2f6af05fe}"]
  SETTABLEKS R5 R4 K28 ["parentId"]
  DUPTABLE R5 K57 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
  LOADK R6 K199 ["rbxassetid://10319882993"]
  SETTABLEKS R6 R5 K48 ["animationId"]
  LOADK R6 K59 [""]
  SETTABLEKS R6 R5 K49 ["didLoopEventName"]
  LOADK R6 K60 [∞]
  SETTABLEKS R6 R5 K50 ["endTime"]
  LOADN R6 255
  SETTABLEKS R6 R5 K51 ["looping"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K52 ["markerEvents"]
  LOADB R6 1
  SETTABLEKS R6 R5 K53 ["preload"]
  LOADN R6 1
  SETTABLEKS R6 R5 K54 ["speed"]
  LOADN R6 0
  SETTABLEKS R6 R5 K55 ["startTime"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K56 ["timePositionEvents"]
  SETTABLEKS R5 R4 K29 ["props"]
  DUPTABLE R5 K116 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
  LOADK R6 K199 ["rbxassetid://10319882993"]
  SETTABLEKS R6 R5 K61 ["currentAnimationId"]
  LOADK R6 K182 [0.625]
  SETTABLEKS R6 R5 K62 ["length"]
  LOADK R6 K69 ["Loaded"]
  SETTABLEKS R6 R5 K63 ["loadingState"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K52 ["markerEvents"]
  LOADN R6 0
  SETTABLEKS R6 R5 K65 ["timePosition"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K56 ["timePositionEvents"]
  LOADN R6 0
  SETTABLEKS R6 R5 K66 ["timePositionNormalized"]
  SETTABLEKS R5 R4 K30 ["state"]
  LOADN R5 0
  SETTABLEKS R5 R4 K31 ["weight"]
  SETTABLEKS R4 R3 K139 ["{d6493c48-d9cd-4368-820b-0d23c25cb833}"]
  DUPTABLE R4 K168 [{"children", "className", "id", "index", "linkData", "name", "parentId", "props", "state", "weight"}]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K11 ["children"]
  LOADK R5 K46 ["ClipLayer"]
  SETTABLEKS R5 R4 K27 ["className"]
  LOADK R5 K140 ["{117d88c1-9254-4fea-8bb6-47760516fb0f}"]
  SETTABLEKS R5 R4 K12 ["id"]
  LOADN R5 11
  SETTABLEKS R5 R4 K167 ["index"]
  DUPTABLE R5 K171 [{"position"}]
  GETIMPORT R6 K112 [Vector2.new]
  LOADK R7 K200 [-1.41421354]
  LOADK R8 K197 [1.41421354]
  CALL R6 2 1
  SETTABLEKS R6 R5 K170 ["position"]
  SETTABLEKS R5 R4 K90 ["linkData"]
  LOADK R5 K201 ["Forward Left Run"]
  SETTABLEKS R5 R4 K14 ["name"]
  LOADK R5 K77 ["{d4597589-d9c5-47df-b379-71b2f6af05fe}"]
  SETTABLEKS R5 R4 K28 ["parentId"]
  DUPTABLE R5 K57 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
  LOADK R6 K202 ["rbxassetid://10319903622"]
  SETTABLEKS R6 R5 K48 ["animationId"]
  LOADK R6 K59 [""]
  SETTABLEKS R6 R5 K49 ["didLoopEventName"]
  LOADK R6 K60 [∞]
  SETTABLEKS R6 R5 K50 ["endTime"]
  LOADN R6 255
  SETTABLEKS R6 R5 K51 ["looping"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K52 ["markerEvents"]
  LOADB R6 1
  SETTABLEKS R6 R5 K53 ["preload"]
  LOADN R6 1
  SETTABLEKS R6 R5 K54 ["speed"]
  LOADN R6 0
  SETTABLEKS R6 R5 K55 ["startTime"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K56 ["timePositionEvents"]
  SETTABLEKS R5 R4 K29 ["props"]
  DUPTABLE R5 K116 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
  LOADK R6 K202 ["rbxassetid://10319903622"]
  SETTABLEKS R6 R5 K61 ["currentAnimationId"]
  LOADK R6 K182 [0.625]
  SETTABLEKS R6 R5 K62 ["length"]
  LOADK R6 K69 ["Loaded"]
  SETTABLEKS R6 R5 K63 ["loadingState"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K52 ["markerEvents"]
  LOADN R6 0
  SETTABLEKS R6 R5 K65 ["timePosition"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K56 ["timePositionEvents"]
  LOADN R6 0
  SETTABLEKS R6 R5 K66 ["timePositionNormalized"]
  SETTABLEKS R5 R4 K30 ["state"]
  LOADN R5 0
  SETTABLEKS R5 R4 K31 ["weight"]
  SETTABLEKS R4 R3 K140 ["{117d88c1-9254-4fea-8bb6-47760516fb0f}"]
  DUPTABLE R4 K168 [{"children", "className", "id", "index", "linkData", "name", "parentId", "props", "state", "weight"}]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K11 ["children"]
  LOADK R5 K169 ["RestPose"]
  SETTABLEKS R5 R4 K27 ["className"]
  LOADK R5 K92 ["{b93312c4-8c4d-453c-93ed-9541195b7fe7}"]
  SETTABLEKS R5 R4 K12 ["id"]
  LOADN R5 1
  SETTABLEKS R5 R4 K167 ["index"]
  DUPTABLE R5 K171 [{"position"}]
  GETIMPORT R6 K112 [Vector2.new]
  LOADN R7 0
  LOADN R8 0
  CALL R6 2 1
  SETTABLEKS R6 R5 K170 ["position"]
  SETTABLEKS R5 R4 K90 ["linkData"]
  LOADK R5 K172 ["Origin"]
  SETTABLEKS R5 R4 K14 ["name"]
  LOADK R5 K73 ["{01378bfa-3123-4277-be55-5105e62f22f2}"]
  SETTABLEKS R5 R4 K28 ["parentId"]
  DUPTABLE R5 K174 [{"duration"}]
  LOADN R6 1
  SETTABLEKS R6 R5 K173 ["duration"]
  SETTABLEKS R5 R4 K29 ["props"]
  DUPTABLE R5 K113 [{"length", "timePositionNormalized"}]
  LOADN R6 1
  SETTABLEKS R6 R5 K62 ["length"]
  LOADN R6 0
  SETTABLEKS R6 R5 K66 ["timePositionNormalized"]
  SETTABLEKS R5 R4 K30 ["state"]
  LOADN R5 0
  SETTABLEKS R5 R4 K31 ["weight"]
  SETTABLEKS R4 R3 K92 ["{b93312c4-8c4d-453c-93ed-9541195b7fe7}"]
  DUPTABLE R4 K168 [{"children", "className", "id", "index", "linkData", "name", "parentId", "props", "state", "weight"}]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K11 ["children"]
  LOADK R5 K46 ["ClipLayer"]
  SETTABLEKS R5 R4 K27 ["className"]
  LOADK R5 K93 ["{6556d92c-2ab0-47f6-9633-1e8b22e8c823}"]
  SETTABLEKS R5 R4 K12 ["id"]
  LOADN R5 2
  SETTABLEKS R5 R4 K167 ["index"]
  DUPTABLE R5 K171 [{"position"}]
  GETIMPORT R6 K112 [Vector2.new]
  LOADN R7 1
  LOADN R8 0
  CALL R6 2 1
  SETTABLEKS R6 R5 K170 ["position"]
  SETTABLEKS R5 R4 K90 ["linkData"]
  LOADK R5 K183 ["Right Walk"]
  SETTABLEKS R5 R4 K14 ["name"]
  LOADK R5 K73 ["{01378bfa-3123-4277-be55-5105e62f22f2}"]
  SETTABLEKS R5 R4 K28 ["parentId"]
  DUPTABLE R5 K57 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
  LOADK R6 K203 ["rbxassetid://10847107747"]
  SETTABLEKS R6 R5 K48 ["animationId"]
  LOADK R6 K59 [""]
  SETTABLEKS R6 R5 K49 ["didLoopEventName"]
  LOADK R6 K60 [∞]
  SETTABLEKS R6 R5 K50 ["endTime"]
  LOADN R6 255
  SETTABLEKS R6 R5 K51 ["looping"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K52 ["markerEvents"]
  LOADB R6 1
  SETTABLEKS R6 R5 K53 ["preload"]
  LOADN R6 1
  SETTABLEKS R6 R5 K54 ["speed"]
  LOADN R6 0
  SETTABLEKS R6 R5 K55 ["startTime"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K56 ["timePositionEvents"]
  SETTABLEKS R5 R4 K29 ["props"]
  DUPTABLE R5 K116 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
  LOADK R6 K203 ["rbxassetid://10847107747"]
  SETTABLEKS R6 R5 K61 ["currentAnimationId"]
  LOADK R6 K182 [0.625]
  SETTABLEKS R6 R5 K62 ["length"]
  LOADK R6 K69 ["Loaded"]
  SETTABLEKS R6 R5 K63 ["loadingState"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K52 ["markerEvents"]
  LOADN R6 0
  SETTABLEKS R6 R5 K65 ["timePosition"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K56 ["timePositionEvents"]
  LOADN R6 0
  SETTABLEKS R6 R5 K66 ["timePositionNormalized"]
  SETTABLEKS R5 R4 K30 ["state"]
  LOADN R5 0
  SETTABLEKS R5 R4 K31 ["weight"]
  SETTABLEKS R4 R3 K93 ["{6556d92c-2ab0-47f6-9633-1e8b22e8c823}"]
  DUPTABLE R4 K168 [{"children", "className", "id", "index", "linkData", "name", "parentId", "props", "state", "weight"}]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K11 ["children"]
  LOADK R5 K46 ["ClipLayer"]
  SETTABLEKS R5 R4 K27 ["className"]
  LOADK R5 K94 ["{782abac9-1ad8-46b8-9441-dd901a6e923f}"]
  SETTABLEKS R5 R4 K12 ["id"]
  LOADN R5 3
  SETTABLEKS R5 R4 K167 ["index"]
  DUPTABLE R5 K171 [{"position"}]
  GETIMPORT R6 K112 [Vector2.new]
  LOADN R7 2
  LOADN R8 0
  CALL R6 2 1
  SETTABLEKS R6 R5 K170 ["position"]
  SETTABLEKS R5 R4 K90 ["linkData"]
  LOADK R5 K185 ["Right Run"]
  SETTABLEKS R5 R4 K14 ["name"]
  LOADK R5 K73 ["{01378bfa-3123-4277-be55-5105e62f22f2}"]
  SETTABLEKS R5 R4 K28 ["parentId"]
  DUPTABLE R5 K57 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
  LOADK R6 K204 ["rbxassetid://10847291554"]
  SETTABLEKS R6 R5 K48 ["animationId"]
  LOADK R6 K59 [""]
  SETTABLEKS R6 R5 K49 ["didLoopEventName"]
  LOADK R6 K60 [∞]
  SETTABLEKS R6 R5 K50 ["endTime"]
  LOADN R6 255
  SETTABLEKS R6 R5 K51 ["looping"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K52 ["markerEvents"]
  LOADB R6 1
  SETTABLEKS R6 R5 K53 ["preload"]
  LOADN R6 1
  SETTABLEKS R6 R5 K54 ["speed"]
  LOADN R6 0
  SETTABLEKS R6 R5 K55 ["startTime"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K56 ["timePositionEvents"]
  SETTABLEKS R5 R4 K29 ["props"]
  DUPTABLE R5 K116 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
  LOADK R6 K204 ["rbxassetid://10847291554"]
  SETTABLEKS R6 R5 K61 ["currentAnimationId"]
  LOADK R6 K182 [0.625]
  SETTABLEKS R6 R5 K62 ["length"]
  LOADK R6 K69 ["Loaded"]
  SETTABLEKS R6 R5 K63 ["loadingState"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K52 ["markerEvents"]
  LOADN R6 0
  SETTABLEKS R6 R5 K65 ["timePosition"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K56 ["timePositionEvents"]
  LOADN R6 0
  SETTABLEKS R6 R5 K66 ["timePositionNormalized"]
  SETTABLEKS R5 R4 K30 ["state"]
  LOADN R5 0
  SETTABLEKS R5 R4 K31 ["weight"]
  SETTABLEKS R4 R3 K94 ["{782abac9-1ad8-46b8-9441-dd901a6e923f}"]
  DUPTABLE R4 K168 [{"children", "className", "id", "index", "linkData", "name", "parentId", "props", "state", "weight"}]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K11 ["children"]
  LOADK R5 K46 ["ClipLayer"]
  SETTABLEKS R5 R4 K27 ["className"]
  LOADK R5 K95 ["{816c6077-957c-4748-9ed6-72985a98a8af}"]
  SETTABLEKS R5 R4 K12 ["id"]
  LOADN R5 4
  SETTABLEKS R5 R4 K167 ["index"]
  DUPTABLE R5 K171 [{"position"}]
  GETIMPORT R6 K112 [Vector2.new]
  LOADN R7 255
  LOADN R8 0
  CALL R6 2 1
  SETTABLEKS R6 R5 K170 ["position"]
  SETTABLEKS R5 R4 K90 ["linkData"]
  LOADK R5 K187 ["Left Walk"]
  SETTABLEKS R5 R4 K14 ["name"]
  LOADK R5 K73 ["{01378bfa-3123-4277-be55-5105e62f22f2}"]
  SETTABLEKS R5 R4 K28 ["parentId"]
  DUPTABLE R5 K57 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
  LOADK R6 K205 ["rbxassetid://10382771806"]
  SETTABLEKS R6 R5 K48 ["animationId"]
  LOADK R6 K59 [""]
  SETTABLEKS R6 R5 K49 ["didLoopEventName"]
  LOADK R6 K60 [∞]
  SETTABLEKS R6 R5 K50 ["endTime"]
  LOADN R6 255
  SETTABLEKS R6 R5 K51 ["looping"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K52 ["markerEvents"]
  LOADB R6 1
  SETTABLEKS R6 R5 K53 ["preload"]
  LOADN R6 1
  SETTABLEKS R6 R5 K54 ["speed"]
  LOADN R6 0
  SETTABLEKS R6 R5 K55 ["startTime"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K56 ["timePositionEvents"]
  SETTABLEKS R5 R4 K29 ["props"]
  DUPTABLE R5 K116 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
  LOADK R6 K205 ["rbxassetid://10382771806"]
  SETTABLEKS R6 R5 K61 ["currentAnimationId"]
  LOADK R6 K182 [0.625]
  SETTABLEKS R6 R5 K62 ["length"]
  LOADK R6 K69 ["Loaded"]
  SETTABLEKS R6 R5 K63 ["loadingState"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K52 ["markerEvents"]
  LOADN R6 0
  SETTABLEKS R6 R5 K65 ["timePosition"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K56 ["timePositionEvents"]
  LOADN R6 0
  SETTABLEKS R6 R5 K66 ["timePositionNormalized"]
  SETTABLEKS R5 R4 K30 ["state"]
  LOADN R5 0
  SETTABLEKS R5 R4 K31 ["weight"]
  SETTABLEKS R4 R3 K95 ["{816c6077-957c-4748-9ed6-72985a98a8af}"]
  DUPTABLE R4 K168 [{"children", "className", "id", "index", "linkData", "name", "parentId", "props", "state", "weight"}]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K11 ["children"]
  LOADK R5 K46 ["ClipLayer"]
  SETTABLEKS R5 R4 K27 ["className"]
  LOADK R5 K96 ["{9a4dc8c8-59ec-40a8-88ae-36d8c2e7476d}"]
  SETTABLEKS R5 R4 K12 ["id"]
  LOADN R5 5
  SETTABLEKS R5 R4 K167 ["index"]
  DUPTABLE R5 K171 [{"position"}]
  GETIMPORT R6 K112 [Vector2.new]
  LOADN R7 254
  LOADN R8 0
  CALL R6 2 1
  SETTABLEKS R6 R5 K170 ["position"]
  SETTABLEKS R5 R4 K90 ["linkData"]
  LOADK R5 K189 ["Left Run"]
  SETTABLEKS R5 R4 K14 ["name"]
  LOADK R5 K73 ["{01378bfa-3123-4277-be55-5105e62f22f2}"]
  SETTABLEKS R5 R4 K28 ["parentId"]
  DUPTABLE R5 K57 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
  LOADK R6 K206 ["rbxassetid://10847298457"]
  SETTABLEKS R6 R5 K48 ["animationId"]
  LOADK R6 K59 [""]
  SETTABLEKS R6 R5 K49 ["didLoopEventName"]
  LOADK R6 K60 [∞]
  SETTABLEKS R6 R5 K50 ["endTime"]
  LOADN R6 255
  SETTABLEKS R6 R5 K51 ["looping"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K52 ["markerEvents"]
  LOADB R6 1
  SETTABLEKS R6 R5 K53 ["preload"]
  LOADN R6 1
  SETTABLEKS R6 R5 K54 ["speed"]
  LOADN R6 0
  SETTABLEKS R6 R5 K55 ["startTime"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K56 ["timePositionEvents"]
  SETTABLEKS R5 R4 K29 ["props"]
  DUPTABLE R5 K116 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
  LOADK R6 K206 ["rbxassetid://10847298457"]
  SETTABLEKS R6 R5 K61 ["currentAnimationId"]
  LOADK R6 K182 [0.625]
  SETTABLEKS R6 R5 K62 ["length"]
  LOADK R6 K69 ["Loaded"]
  SETTABLEKS R6 R5 K63 ["loadingState"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K52 ["markerEvents"]
  LOADN R6 0
  SETTABLEKS R6 R5 K65 ["timePosition"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K56 ["timePositionEvents"]
  LOADN R6 0
  SETTABLEKS R6 R5 K66 ["timePositionNormalized"]
  SETTABLEKS R5 R4 K30 ["state"]
  LOADN R5 0
  SETTABLEKS R5 R4 K31 ["weight"]
  SETTABLEKS R4 R3 K96 ["{9a4dc8c8-59ec-40a8-88ae-36d8c2e7476d}"]
  DUPTABLE R4 K168 [{"children", "className", "id", "index", "linkData", "name", "parentId", "props", "state", "weight"}]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K11 ["children"]
  LOADK R5 K46 ["ClipLayer"]
  SETTABLEKS R5 R4 K27 ["className"]
  LOADK R5 K97 ["{ae2f3459-80bc-4487-a5fb-7b82c38f2f8d}"]
  SETTABLEKS R5 R4 K12 ["id"]
  LOADN R5 6
  SETTABLEKS R5 R4 K167 ["index"]
  DUPTABLE R5 K171 [{"position"}]
  GETIMPORT R6 K112 [Vector2.new]
  LOADN R7 0
  LOADN R8 255
  CALL R6 2 1
  SETTABLEKS R6 R5 K170 ["position"]
  SETTABLEKS R5 R4 K90 ["linkData"]
  LOADK R5 K207 ["Backward Walk"]
  SETTABLEKS R5 R4 K14 ["name"]
  LOADK R5 K73 ["{01378bfa-3123-4277-be55-5105e62f22f2}"]
  SETTABLEKS R5 R4 K28 ["parentId"]
  DUPTABLE R5 K57 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
  LOADK R6 K208 ["rbxassetid://10358505520"]
  SETTABLEKS R6 R5 K48 ["animationId"]
  LOADK R6 K59 [""]
  SETTABLEKS R6 R5 K49 ["didLoopEventName"]
  LOADK R6 K60 [∞]
  SETTABLEKS R6 R5 K50 ["endTime"]
  LOADN R6 255
  SETTABLEKS R6 R5 K51 ["looping"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K52 ["markerEvents"]
  LOADB R6 1
  SETTABLEKS R6 R5 K53 ["preload"]
  LOADN R6 1
  SETTABLEKS R6 R5 K54 ["speed"]
  LOADN R6 0
  SETTABLEKS R6 R5 K55 ["startTime"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K56 ["timePositionEvents"]
  SETTABLEKS R5 R4 K29 ["props"]
  DUPTABLE R5 K116 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
  LOADK R6 K208 ["rbxassetid://10358505520"]
  SETTABLEKS R6 R5 K61 ["currentAnimationId"]
  LOADK R6 K182 [0.625]
  SETTABLEKS R6 R5 K62 ["length"]
  LOADK R6 K69 ["Loaded"]
  SETTABLEKS R6 R5 K63 ["loadingState"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K52 ["markerEvents"]
  LOADN R6 0
  SETTABLEKS R6 R5 K65 ["timePosition"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K56 ["timePositionEvents"]
  LOADN R6 0
  SETTABLEKS R6 R5 K66 ["timePositionNormalized"]
  SETTABLEKS R5 R4 K30 ["state"]
  LOADN R5 0
  SETTABLEKS R5 R4 K31 ["weight"]
  SETTABLEKS R4 R3 K97 ["{ae2f3459-80bc-4487-a5fb-7b82c38f2f8d}"]
  DUPTABLE R4 K168 [{"children", "className", "id", "index", "linkData", "name", "parentId", "props", "state", "weight"}]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K11 ["children"]
  LOADK R5 K46 ["ClipLayer"]
  SETTABLEKS R5 R4 K27 ["className"]
  LOADK R5 K98 ["{c6b01432-2acf-4e04-bca4-ecee93647ac6}"]
  SETTABLEKS R5 R4 K12 ["id"]
  LOADN R5 7
  SETTABLEKS R5 R4 K167 ["index"]
  DUPTABLE R5 K171 [{"position"}]
  GETIMPORT R6 K112 [Vector2.new]
  LOADN R7 0
  LOADN R8 254
  CALL R6 2 1
  SETTABLEKS R6 R5 K170 ["position"]
  SETTABLEKS R5 R4 K90 ["linkData"]
  LOADK R5 K209 ["Backward Run"]
  SETTABLEKS R5 R4 K14 ["name"]
  LOADK R5 K73 ["{01378bfa-3123-4277-be55-5105e62f22f2}"]
  SETTABLEKS R5 R4 K28 ["parentId"]
  DUPTABLE R5 K57 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
  LOADK R6 K210 ["rbxassetid://10358526981"]
  SETTABLEKS R6 R5 K48 ["animationId"]
  LOADK R6 K59 [""]
  SETTABLEKS R6 R5 K49 ["didLoopEventName"]
  LOADK R6 K60 [∞]
  SETTABLEKS R6 R5 K50 ["endTime"]
  LOADN R6 255
  SETTABLEKS R6 R5 K51 ["looping"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K52 ["markerEvents"]
  LOADB R6 1
  SETTABLEKS R6 R5 K53 ["preload"]
  LOADN R6 1
  SETTABLEKS R6 R5 K54 ["speed"]
  LOADN R6 0
  SETTABLEKS R6 R5 K55 ["startTime"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K56 ["timePositionEvents"]
  SETTABLEKS R5 R4 K29 ["props"]
  DUPTABLE R5 K116 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
  LOADK R6 K210 ["rbxassetid://10358526981"]
  SETTABLEKS R6 R5 K61 ["currentAnimationId"]
  LOADK R6 K182 [0.625]
  SETTABLEKS R6 R5 K62 ["length"]
  LOADK R6 K69 ["Loaded"]
  SETTABLEKS R6 R5 K63 ["loadingState"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K52 ["markerEvents"]
  LOADN R6 0
  SETTABLEKS R6 R5 K65 ["timePosition"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K56 ["timePositionEvents"]
  LOADN R6 0
  SETTABLEKS R6 R5 K66 ["timePositionNormalized"]
  SETTABLEKS R5 R4 K30 ["state"]
  LOADN R5 0
  SETTABLEKS R5 R4 K31 ["weight"]
  SETTABLEKS R4 R3 K98 ["{c6b01432-2acf-4e04-bca4-ecee93647ac6}"]
  DUPTABLE R4 K168 [{"children", "className", "id", "index", "linkData", "name", "parentId", "props", "state", "weight"}]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K11 ["children"]
  LOADK R5 K46 ["ClipLayer"]
  SETTABLEKS R5 R4 K27 ["className"]
  LOADK R5 K99 ["{e466dbc1-f3d2-4271-8ad8-e0ac692c1356}"]
  SETTABLEKS R5 R4 K12 ["id"]
  LOADN R5 8
  SETTABLEKS R5 R4 K167 ["index"]
  DUPTABLE R5 K171 [{"position"}]
  GETIMPORT R6 K112 [Vector2.new]
  LOADK R7 K194 [-0.707106769]
  LOADK R8 K194 [-0.707106769]
  CALL R6 2 1
  SETTABLEKS R6 R5 K170 ["position"]
  SETTABLEKS R5 R4 K90 ["linkData"]
  LOADK R5 K211 ["Backward Left Walk"]
  SETTABLEKS R5 R4 K14 ["name"]
  LOADK R5 K73 ["{01378bfa-3123-4277-be55-5105e62f22f2}"]
  SETTABLEKS R5 R4 K28 ["parentId"]
  DUPTABLE R5 K57 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
  LOADK R6 K205 ["rbxassetid://10382771806"]
  SETTABLEKS R6 R5 K48 ["animationId"]
  LOADK R6 K59 [""]
  SETTABLEKS R6 R5 K49 ["didLoopEventName"]
  LOADK R6 K60 [∞]
  SETTABLEKS R6 R5 K50 ["endTime"]
  LOADN R6 255
  SETTABLEKS R6 R5 K51 ["looping"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K52 ["markerEvents"]
  LOADB R6 1
  SETTABLEKS R6 R5 K53 ["preload"]
  LOADN R6 1
  SETTABLEKS R6 R5 K54 ["speed"]
  LOADN R6 0
  SETTABLEKS R6 R5 K55 ["startTime"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K56 ["timePositionEvents"]
  SETTABLEKS R5 R4 K29 ["props"]
  DUPTABLE R5 K116 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
  LOADK R6 K205 ["rbxassetid://10382771806"]
  SETTABLEKS R6 R5 K61 ["currentAnimationId"]
  LOADK R6 K182 [0.625]
  SETTABLEKS R6 R5 K62 ["length"]
  LOADK R6 K69 ["Loaded"]
  SETTABLEKS R6 R5 K63 ["loadingState"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K52 ["markerEvents"]
  LOADN R6 0
  SETTABLEKS R6 R5 K65 ["timePosition"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K56 ["timePositionEvents"]
  LOADN R6 0
  SETTABLEKS R6 R5 K66 ["timePositionNormalized"]
  SETTABLEKS R5 R4 K30 ["state"]
  LOADN R5 0
  SETTABLEKS R5 R4 K31 ["weight"]
  SETTABLEKS R4 R3 K99 ["{e466dbc1-f3d2-4271-8ad8-e0ac692c1356}"]
  DUPTABLE R4 K168 [{"children", "className", "id", "index", "linkData", "name", "parentId", "props", "state", "weight"}]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K11 ["children"]
  LOADK R5 K46 ["ClipLayer"]
  SETTABLEKS R5 R4 K27 ["className"]
  LOADK R5 K100 ["{605421b4-16f3-40f9-a781-561ea5fa97fe}"]
  SETTABLEKS R5 R4 K12 ["id"]
  LOADN R5 9
  SETTABLEKS R5 R4 K167 ["index"]
  DUPTABLE R5 K171 [{"position"}]
  GETIMPORT R6 K112 [Vector2.new]
  LOADK R7 K191 [0.707106769]
  LOADK R8 K194 [-0.707106769]
  CALL R6 2 1
  SETTABLEKS R6 R5 K170 ["position"]
  SETTABLEKS R5 R4 K90 ["linkData"]
  LOADK R5 K212 ["Backward Right Walk"]
  SETTABLEKS R5 R4 K14 ["name"]
  LOADK R5 K73 ["{01378bfa-3123-4277-be55-5105e62f22f2}"]
  SETTABLEKS R5 R4 K28 ["parentId"]
  DUPTABLE R5 K57 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
  LOADK R6 K213 ["rbxassetid://10382635795"]
  SETTABLEKS R6 R5 K48 ["animationId"]
  LOADK R6 K59 [""]
  SETTABLEKS R6 R5 K49 ["didLoopEventName"]
  LOADK R6 K60 [∞]
  SETTABLEKS R6 R5 K50 ["endTime"]
  LOADN R6 255
  SETTABLEKS R6 R5 K51 ["looping"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K52 ["markerEvents"]
  LOADB R6 1
  SETTABLEKS R6 R5 K53 ["preload"]
  LOADN R6 1
  SETTABLEKS R6 R5 K54 ["speed"]
  LOADN R6 0
  SETTABLEKS R6 R5 K55 ["startTime"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K56 ["timePositionEvents"]
  SETTABLEKS R5 R4 K29 ["props"]
  DUPTABLE R5 K116 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
  LOADK R6 K213 ["rbxassetid://10382635795"]
  SETTABLEKS R6 R5 K61 ["currentAnimationId"]
  LOADK R6 K182 [0.625]
  SETTABLEKS R6 R5 K62 ["length"]
  LOADK R6 K69 ["Loaded"]
  SETTABLEKS R6 R5 K63 ["loadingState"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K52 ["markerEvents"]
  LOADN R6 0
  SETTABLEKS R6 R5 K65 ["timePosition"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K56 ["timePositionEvents"]
  LOADN R6 0
  SETTABLEKS R6 R5 K66 ["timePositionNormalized"]
  SETTABLEKS R5 R4 K30 ["state"]
  LOADN R5 0
  SETTABLEKS R5 R4 K31 ["weight"]
  SETTABLEKS R4 R3 K100 ["{605421b4-16f3-40f9-a781-561ea5fa97fe}"]
  DUPTABLE R4 K168 [{"children", "className", "id", "index", "linkData", "name", "parentId", "props", "state", "weight"}]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K11 ["children"]
  LOADK R5 K46 ["ClipLayer"]
  SETTABLEKS R5 R4 K27 ["className"]
  LOADK R5 K101 ["{3f08126d-f7f8-405e-bc24-026900d76dc4}"]
  SETTABLEKS R5 R4 K12 ["id"]
  LOADN R5 10
  SETTABLEKS R5 R4 K167 ["index"]
  DUPTABLE R5 K171 [{"position"}]
  GETIMPORT R6 K112 [Vector2.new]
  LOADK R7 K200 [-1.41421354]
  LOADK R8 K200 [-1.41421354]
  CALL R6 2 1
  SETTABLEKS R6 R5 K170 ["position"]
  SETTABLEKS R5 R4 K90 ["linkData"]
  LOADK R5 K214 ["Backward Left Run"]
  SETTABLEKS R5 R4 K14 ["name"]
  LOADK R5 K73 ["{01378bfa-3123-4277-be55-5105e62f22f2}"]
  SETTABLEKS R5 R4 K28 ["parentId"]
  DUPTABLE R5 K57 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
  LOADK R6 K215 ["rbxassetid://10382960556"]
  SETTABLEKS R6 R5 K48 ["animationId"]
  LOADK R6 K59 [""]
  SETTABLEKS R6 R5 K49 ["didLoopEventName"]
  LOADK R6 K60 [∞]
  SETTABLEKS R6 R5 K50 ["endTime"]
  LOADN R6 255
  SETTABLEKS R6 R5 K51 ["looping"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K52 ["markerEvents"]
  LOADB R6 1
  SETTABLEKS R6 R5 K53 ["preload"]
  LOADN R6 1
  SETTABLEKS R6 R5 K54 ["speed"]
  LOADN R6 0
  SETTABLEKS R6 R5 K55 ["startTime"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K56 ["timePositionEvents"]
  SETTABLEKS R5 R4 K29 ["props"]
  DUPTABLE R5 K116 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
  LOADK R6 K215 ["rbxassetid://10382960556"]
  SETTABLEKS R6 R5 K61 ["currentAnimationId"]
  LOADK R6 K182 [0.625]
  SETTABLEKS R6 R5 K62 ["length"]
  LOADK R6 K69 ["Loaded"]
  SETTABLEKS R6 R5 K63 ["loadingState"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K52 ["markerEvents"]
  LOADN R6 0
  SETTABLEKS R6 R5 K65 ["timePosition"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K56 ["timePositionEvents"]
  LOADN R6 0
  SETTABLEKS R6 R5 K66 ["timePositionNormalized"]
  SETTABLEKS R5 R4 K30 ["state"]
  LOADN R5 0
  SETTABLEKS R5 R4 K31 ["weight"]
  SETTABLEKS R4 R3 K101 ["{3f08126d-f7f8-405e-bc24-026900d76dc4}"]
  DUPTABLE R4 K168 [{"children", "className", "id", "index", "linkData", "name", "parentId", "props", "state", "weight"}]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K11 ["children"]
  LOADK R5 K46 ["ClipLayer"]
  SETTABLEKS R5 R4 K27 ["className"]
  LOADK R5 K102 ["{bf7bf7ee-c275-4ac6-aa71-86df90705fee}"]
  SETTABLEKS R5 R4 K12 ["id"]
  LOADN R5 11
  SETTABLEKS R5 R4 K167 ["index"]
  DUPTABLE R5 K171 [{"position"}]
  GETIMPORT R6 K112 [Vector2.new]
  LOADK R7 K197 [1.41421354]
  LOADK R8 K200 [-1.41421354]
  CALL R6 2 1
  SETTABLEKS R6 R5 K170 ["position"]
  SETTABLEKS R5 R4 K90 ["linkData"]
  LOADK R5 K216 ["Backward Right Run"]
  SETTABLEKS R5 R4 K14 ["name"]
  LOADK R5 K73 ["{01378bfa-3123-4277-be55-5105e62f22f2}"]
  SETTABLEKS R5 R4 K28 ["parentId"]
  DUPTABLE R5 K57 [{"animationId", "didLoopEventName", "endTime", "looping", "markerEvents", "preload", "speed", "startTime", "timePositionEvents"}]
  LOADK R6 K217 ["rbxassetid://10382949241"]
  SETTABLEKS R6 R5 K48 ["animationId"]
  LOADK R6 K59 [""]
  SETTABLEKS R6 R5 K49 ["didLoopEventName"]
  LOADK R6 K60 [∞]
  SETTABLEKS R6 R5 K50 ["endTime"]
  LOADN R6 255
  SETTABLEKS R6 R5 K51 ["looping"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K52 ["markerEvents"]
  LOADB R6 1
  SETTABLEKS R6 R5 K53 ["preload"]
  LOADN R6 1
  SETTABLEKS R6 R5 K54 ["speed"]
  LOADN R6 0
  SETTABLEKS R6 R5 K55 ["startTime"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K56 ["timePositionEvents"]
  SETTABLEKS R5 R4 K29 ["props"]
  DUPTABLE R5 K116 [{"currentAnimationId", "length", "loadingState", "markerEvents", "timePosition", "timePositionEvents", "timePositionNormalized"}]
  LOADK R6 K217 ["rbxassetid://10382949241"]
  SETTABLEKS R6 R5 K61 ["currentAnimationId"]
  LOADK R6 K182 [0.625]
  SETTABLEKS R6 R5 K62 ["length"]
  LOADK R6 K69 ["Loaded"]
  SETTABLEKS R6 R5 K63 ["loadingState"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K52 ["markerEvents"]
  LOADN R6 0
  SETTABLEKS R6 R5 K65 ["timePosition"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K56 ["timePositionEvents"]
  LOADN R6 0
  SETTABLEKS R6 R5 K66 ["timePositionNormalized"]
  SETTABLEKS R5 R4 K30 ["state"]
  LOADN R5 0
  SETTABLEKS R5 R4 K31 ["weight"]
  SETTABLEKS R4 R3 K102 ["{bf7bf7ee-c275-4ac6-aa71-86df90705fee}"]
  SETTABLEKS R3 R2 K8 ["lookup"]
  LOADK R3 K18 ["foo"]
  SETTABLEKS R3 R2 K9 ["output"]
  RETURN R2 1
