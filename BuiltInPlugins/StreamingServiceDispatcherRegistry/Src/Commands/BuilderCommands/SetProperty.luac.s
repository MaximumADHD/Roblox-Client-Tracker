PROTO_0:
  LOADK R4 K0 ["BasePart"]
  NAMECALL R2 R0 K1 ["IsA"]
  CALL R2 2 1
  JUMPIFNOT R2 [+25]
  FASTCALL1 TYPEOF R1 [+3]
  MOVE R3 R1
  GETIMPORT R2 K3 [typeof]
  CALL R2 1 1
  JUMPIFNOTEQKS R2 K4 ["string"] [+8]
  GETIMPORT R2 K7 [Color3.fromHex]
  MOVE R3 R1
  CALL R2 1 1
  SETTABLEKS R2 R0 K8 ["Color"]
  RETURN R0 0
  GETIMPORT R2 K10 [Color3.fromRGB]
  GETTABLEKS R3 R1 K11 ["r"]
  GETTABLEKS R4 R1 K12 ["g"]
  GETTABLEKS R5 R1 K13 ["b"]
  CALL R2 3 1
  SETTABLEKS R2 R0 K8 ["Color"]
  RETURN R0 0

PROTO_1:
  JUMPIFNOT R0 [+52]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["get"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 1
  JUMPIFNOT R2 [+1]
  RETURN R2 1
  GETIMPORT R3 K2 [pcall]
  GETIMPORT R5 K4 [game]
  GETTABLEKS R4 R5 K5 ["GetService"]
  GETIMPORT R5 K4 [game]
  MOVE R6 R0
  CALL R3 3 2
  JUMPIFNOT R3 [+2]
  JUMPIFNOT R4 [+1]
  RETURN R4 1
  JUMPIFNOTEQKS R0 K6 ["workspace"] [+4]
  GETIMPORT R5 K7 [workspace]
  RETURN R5 1
  JUMPIFNOTEQKS R0 K8 ["StarterPlayerScripts"] [+12]
  GETIMPORT R5 K4 [game]
  LOADK R7 K9 ["StarterPlayer"]
  NAMECALL R5 R5 K5 ["GetService"]
  CALL R5 2 1
  LOADK R7 K8 ["StarterPlayerScripts"]
  NAMECALL R5 R5 K10 ["FindFirstChildWhichIsA"]
  CALL R5 2 -1
  RETURN R5 -1
  JUMPIFNOTEQKS R0 K11 ["StarterCharacterScripts"] [+12]
  GETIMPORT R5 K4 [game]
  LOADK R7 K9 ["StarterPlayer"]
  NAMECALL R5 R5 K5 ["GetService"]
  CALL R5 2 1
  LOADK R7 K11 ["StarterCharacterScripts"]
  NAMECALL R5 R5 K10 ["FindFirstChildWhichIsA"]
  CALL R5 2 -1
  RETURN R5 -1
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["source"]
  RETURN R1 1

PROTO_3:
  LOADNIL R1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["position"]
  JUMPIFNOT R2 [+18]
  GETIMPORT R2 K3 [CFrame.new]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["position"]
  GETTABLEKS R4 R5 K5 ["x"]
  ORK R3 R4 K4 [0]
  LOADN R4 0
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["position"]
  GETTABLEKS R6 R7 K6 ["z"]
  ORK R5 R6 K4 [0]
  CALL R2 3 1
  MOVE R1 R2
  JUMP [+7]
  GETIMPORT R2 K3 [CFrame.new]
  LOADN R3 0
  LOADN R4 0
  LOADN R5 0
  CALL R2 3 1
  MOVE R1 R2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K7 ["positionOrigin"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K8 ["get"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K9 ["referenceInstance"]
  GETUPVAL R5 2
  CALL R3 2 1
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K10 ["getWorldBoundingBox"]
  MOVE R5 R3
  CALL R4 1 2
  GETIMPORT R6 K3 [CFrame.new]
  CALL R6 0 1
  LOADNIL R7
  LOADNIL R8
  JUMPIFNOTEQKS R2 K11 ["absolute"] [+6]
  GETIMPORT R9 K3 [CFrame.new]
  CALL R9 0 1
  MOVE R6 R9
  JUMP [+40]
  JUMPIFNOTEQKS R2 K12 ["relative"] [+9]
  JUMPIFNOT R3 [+7]
  GETIMPORT R9 K3 [CFrame.new]
  GETTABLEKS R10 R4 K13 ["Position"]
  CALL R9 1 1
  MOVE R6 R9
  JUMP [+30]
  JUMPIFNOTEQKS R2 K14 ["onTop"] [+10]
  JUMPIFNOT R3 [+8]
  GETIMPORT R9 K3 [CFrame.new]
  GETTABLEKS R10 R4 K13 ["Position"]
  CALL R9 1 1
  MOVE R6 R9
  MOVE R7 R3
  JUMP [+19]
  GETUPVAL R9 4
  CALL R9 0 1
  JUMPIFNOT R9 [+9]
  JUMPIFNOTEQKS R2 K15 ["currentCamera"] [+8]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K16 ["getCurrentLookingCFrame"]
  CALL R9 0 5
  MOVE R6 R9
  MOVE R8 R10
  JUMP [+7]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K17 ["getRequestCFrame"]
  GETUPVAL R10 2
  CALL R9 1 2
  MOVE R6 R9
  MOVE R8 R10
  MOVE R11 R1
  NAMECALL R9 R6 K18 ["ToWorldSpace"]
  CALL R9 2 1
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K19 ["getGroundLevelAt"]
  GETTABLEKS R11 R9 K13 ["Position"]
  MOVE R12 R7
  MOVE R13 R5
  MOVE R14 R8
  CALL R10 4 1
  GETTABLEKS R15 R9 K13 ["Position"]
  GETTABLEKS R14 R15 K20 ["Y"]
  MINUS R13 R14
  ADD R12 R13 R10
  NAMECALL R15 R0 K22 ["GetExtentsSize"]
  CALL R15 1 1
  GETTABLEKS R14 R15 K20 ["Y"]
  DIVK R13 R14 K21 [2]
  ADD R11 R12 R13
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K23 ["elevation"]
  JUMPIFNOT R12 [+4]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K23 ["elevation"]
  ADD R11 R11 R12
  LOADN R13 0
  MOVE R14 R11
  LOADN R15 0
  FASTCALL VECTOR [+2]
  GETIMPORT R12 K25 [Vector3.new]
  CALL R12 3 1
  ADD R9 R9 R12
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K26 ["rotation"]
  JUMPIFNOT R12 [+18]
  GETIMPORT R13 K28 [CFrame.fromEulerAngles]
  LOADN R14 0
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K26 ["rotation"]
  FASTCALL1 MATH_RAD R16 [+2]
  GETIMPORT R15 K31 [math.rad]
  CALL R15 1 1
  LOADN R16 0
  CALL R13 3 1
  GETTABLEKS R14 R9 K32 ["Rotation"]
  MUL R12 R13 R14
  GETTABLEKS R13 R9 K13 ["Position"]
  ADD R9 R12 R13
  MOVE R14 R9
  NAMECALL R12 R0 K33 ["PivotTo"]
  CALL R12 2 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["requestId"]
  GETTABLEKS R2 R0 K1 ["arguments"]
  GETTABLEKS R3 R2 K2 ["direct_instance"]
  GETTABLEKS R4 R2 K3 ["newInstanceId"]
  JUMPIF R4 [+2]
  GETTABLEKS R4 R2 K4 ["instanceId"]
  MOVE R5 R3
  JUMPIF R5 [+6]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K5 ["get"]
  MOVE R6 R4
  MOVE R7 R1
  CALL R5 2 1
  JUMPIF R5 [+1]
  RETURN R0 0
  FASTCALL2K ASSERT R5 K6 [+5]
  MOVE R7 R5
  LOADK R8 K6 ["Luau"]
  GETIMPORT R6 K8 [assert]
  CALL R6 2 0
  JUMPIF R3 [+5]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K9 ["StartRecordingActions"]
  MOVE R7 R1
  CALL R6 1 0
  GETTABLEKS R6 R2 K10 ["properties"]
  JUMPIF R6 [+2]
  NEWTABLE R6 0 0
  GETTABLEKS R7 R6 K11 ["instanceName"]
  JUMPIFNOT R7 [+4]
  GETTABLEKS R7 R6 K11 ["instanceName"]
  SETTABLEKS R7 R5 K12 ["Name"]
  GETUPVAL R7 1
  GETTABLEKS R8 R6 K13 ["parentInstanceId"]
  MOVE R9 R1
  CALL R7 2 1
  JUMPIFNOT R7 [+2]
  SETTABLEKS R7 R5 K14 ["Parent"]
  GETTABLEKS R8 R6 K15 ["size"]
  JUMPIFNOT R8 [+23]
  LOADK R10 K16 ["BasePart"]
  NAMECALL R8 R5 K17 ["IsA"]
  CALL R8 2 1
  JUMPIFNOT R8 [+18]
  GETTABLEKS R10 R6 K15 ["size"]
  GETTABLEKS R9 R10 K18 ["x"]
  GETTABLEKS R11 R6 K15 ["size"]
  GETTABLEKS R10 R11 K19 ["y"]
  GETTABLEKS R12 R6 K15 ["size"]
  GETTABLEKS R11 R12 K20 ["z"]
  FASTCALL VECTOR [+2]
  GETIMPORT R8 K23 [Vector3.new]
  CALL R8 3 1
  SETTABLEKS R8 R5 K24 ["Size"]
  LOADK R10 K25 ["Model"]
  NAMECALL R8 R5 K17 ["IsA"]
  CALL R8 2 1
  JUMPIFNOT R8 [+84]
  GETTABLEKS R8 R6 K26 ["scale"]
  JUMPIFNOT R8 [+15]
  GETTABLEKS R8 R6 K26 ["scale"]
  LOADN R9 0
  JUMPIFNOTLT R9 R8 [+11]
  NAMECALL R8 R5 K27 ["GetScale"]
  CALL R8 1 1
  GETTABLEKS R12 R6 K26 ["scale"]
  MUL R11 R8 R12
  NAMECALL R9 R5 K28 ["ScaleTo"]
  CALL R9 2 0
  JUMP [+66]
  GETTABLEKS R8 R6 K29 ["height"]
  JUMPIFNOT R8 [+25]
  GETTABLEKS R8 R6 K29 ["height"]
  LOADK R9 K30 [0.1]
  JUMPIFNOTLT R9 R8 [+21]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K31 ["getWorldBoundingBox"]
  MOVE R9 R5
  CALL R8 1 2
  GETTABLEKS R10 R9 K32 ["Y"]
  LOADK R11 K30 [0.1]
  JUMPIFNOTLT R11 R10 [+49]
  GETTABLEKS R11 R6 K29 ["height"]
  GETTABLEKS R12 R9 K32 ["Y"]
  DIV R10 R11 R12
  MOVE R13 R10
  NAMECALL R11 R5 K28 ["ScaleTo"]
  CALL R11 2 0
  JUMP [+38]
  GETTABLEKS R8 R6 K15 ["size"]
  JUMPIFNOT R8 [+35]
  GETTABLEKS R9 R6 K15 ["size"]
  GETTABLEKS R8 R9 K19 ["y"]
  LOADK R9 K30 [0.1]
  JUMPIFNOTLT R9 R8 [+29]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K31 ["getWorldBoundingBox"]
  MOVE R9 R5
  CALL R8 1 2
  GETTABLEKS R10 R9 K32 ["Y"]
  LOADK R11 K30 [0.1]
  JUMPIFNOTLT R11 R10 [+19]
  GETTABLEKS R11 R6 K15 ["size"]
  GETTABLEKS R10 R11 K19 ["y"]
  LOADK R11 K30 [0.1]
  JUMPIFNOTLT R11 R10 [+12]
  GETTABLEKS R12 R6 K15 ["size"]
  GETTABLEKS R11 R12 K19 ["y"]
  GETTABLEKS R12 R9 K32 ["Y"]
  DIV R10 R11 R12
  MOVE R13 R10
  NAMECALL R11 R5 K28 ["ScaleTo"]
  CALL R11 2 0
  GETTABLEKS R8 R6 K33 ["source"]
  JUMPIFNOT R8 [+17]
  LOADK R10 K34 ["Script"]
  NAMECALL R8 R5 K17 ["IsA"]
  CALL R8 2 1
  JUMPIF R8 [+5]
  LOADK R10 K35 ["ModuleScript"]
  NAMECALL R8 R5 K17 ["IsA"]
  CALL R8 2 1
  JUMPIFNOT R8 [+7]
  GETUPVAL R8 3
  MOVE R10 R5
  NEWCLOSURE R11 P0
  CAPTURE VAL R6
  NAMECALL R8 R8 K36 ["UpdateSourceAsync"]
  CALL R8 3 0
  GETTABLEKS R8 R6 K37 ["color"]
  JUMPIFNOT R8 [+70]
  GETTABLEKS R8 R6 K37 ["color"]
  LOADK R11 K16 ["BasePart"]
  NAMECALL R9 R5 K17 ["IsA"]
  CALL R9 2 1
  JUMPIFNOT R9 [+25]
  FASTCALL1 TYPEOF R8 [+3]
  MOVE R10 R8
  GETIMPORT R9 K39 [typeof]
  CALL R9 1 1
  JUMPIFNOTEQKS R9 K40 ["string"] [+8]
  GETIMPORT R9 K43 [Color3.fromHex]
  MOVE R10 R8
  CALL R9 1 1
  SETTABLEKS R9 R5 K44 ["Color"]
  JUMP [+11]
  GETIMPORT R9 K46 [Color3.fromRGB]
  GETTABLEKS R10 R8 K47 ["r"]
  GETTABLEKS R11 R8 K48 ["g"]
  GETTABLEKS R12 R8 K49 ["b"]
  CALL R9 3 1
  SETTABLEKS R9 R5 K44 ["Color"]
  NAMECALL R8 R5 K50 ["GetDescendants"]
  CALL R8 1 3
  FORGPREP R8
  GETTABLEKS R13 R6 K37 ["color"]
  LOADK R16 K16 ["BasePart"]
  NAMECALL R14 R12 K17 ["IsA"]
  CALL R14 2 1
  JUMPIFNOT R14 [+25]
  FASTCALL1 TYPEOF R13 [+3]
  MOVE R15 R13
  GETIMPORT R14 K39 [typeof]
  CALL R14 1 1
  JUMPIFNOTEQKS R14 K40 ["string"] [+8]
  GETIMPORT R14 K43 [Color3.fromHex]
  MOVE R15 R13
  CALL R14 1 1
  SETTABLEKS R14 R12 K44 ["Color"]
  JUMP [+11]
  GETIMPORT R14 K46 [Color3.fromRGB]
  GETTABLEKS R15 R13 K47 ["r"]
  GETTABLEKS R16 R13 K48 ["g"]
  GETTABLEKS R17 R13 K49 ["b"]
  CALL R14 3 1
  SETTABLEKS R14 R12 K44 ["Color"]
  FORGLOOP R8 2 [-33]
  GETTABLEKS R8 R6 K51 ["material"]
  JUMPIFNOT R8 [+12]
  LOADK R10 K16 ["BasePart"]
  NAMECALL R8 R5 K17 ["IsA"]
  CALL R8 2 1
  JUMPIFNOT R8 [+7]
  GETIMPORT R9 K54 [Enum.Material]
  GETTABLEKS R10 R6 K51 ["material"]
  GETTABLE R8 R9 R10
  SETTABLEKS R8 R5 K53 ["Material"]
  MOVE R8 R3
  JUMPIF R8 [+11]
  GETTABLEKS R8 R6 K55 ["position"]
  JUMPIF R8 [+8]
  GETTABLEKS R8 R6 K56 ["elevation"]
  JUMPIF R8 [+5]
  GETTABLEKS R8 R6 K57 ["rotation"]
  JUMPIF R8 [+2]
  GETTABLEKS R8 R6 K58 ["referenceInstance"]
  JUMPIFNOT R8 [+11]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K31 ["getWorldBoundingBox"]
  MOVE R10 R5
  NEWCLOSURE R11 P1
  CAPTURE VAL R6
  CAPTURE UPVAL U0
  CAPTURE VAL R1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U4
  CALL R9 2 0
  JUMPIF R3 [+5]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K59 ["EndRecordingActions"]
  MOVE R10 R1
  CALL R9 1 0
  GETUPVAL R9 5
  CALL R9 0 1
  JUMPIFNOT R9 [+13]
  GETUPVAL R10 6
  GETTABLEKS R9 R10 K60 ["getInstanceTypes"]
  CALL R9 0 1
  GETUPVAL R11 6
  GETTABLEKS R10 R11 K61 ["registerInstanceV2"]
  MOVE R11 R5
  MOVE R12 R1
  GETTABLEKS R13 R9 K62 ["Created"]
  CALL R10 3 0
  RETURN R0 0
  GETUPVAL R10 6
  GETTABLEKS R9 R10 K63 ["registerInstance"]
  MOVE R10 R5
  CALL R9 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StreamingServiceDispatcherRegistry"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Utils"]
  GETTABLEKS R2 R3 K8 ["CliAdapter"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K9 ["GetService"]
  LOADK R3 K10 ["ScriptEditorService"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K7 ["Utils"]
  GETTABLEKS R4 R5 K7 ["Utils"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K11 ["Types"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R9 R0 K6 ["Src"]
  GETTABLEKS R8 R9 K12 ["Commands"]
  GETTABLEKS R7 R8 K13 ["BuilderCommands"]
  GETTABLEKS R6 R7 K14 ["BuilderNameMap"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K6 ["Src"]
  GETTABLEKS R8 R9 K15 ["ContextCollectors"]
  GETTABLEKS R7 R8 K16 ["RecentInstancesContext"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K6 ["Src"]
  GETTABLEKS R9 R10 K17 ["Flags"]
  GETTABLEKS R8 R9 K18 ["getFFlagCAPRecentInstancesContextV2"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K6 ["Src"]
  GETTABLEKS R10 R11 K17 ["Flags"]
  GETTABLEKS R9 R10 K19 ["getFFlagFixCurrentCameraPlacement"]
  CALL R8 1 1
  DUPCLOSURE R9 K20 [PROTO_0]
  DUPCLOSURE R10 K21 [PROTO_1]
  CAPTURE VAL R5
  DUPCLOSURE R11 K22 [PROTO_4]
  CAPTURE VAL R5
  CAPTURE VAL R10
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R6
  RETURN R11 1
