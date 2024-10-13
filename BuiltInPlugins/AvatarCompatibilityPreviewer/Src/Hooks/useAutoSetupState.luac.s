PROTO_0:
  LOADK R3 K0 ["Humanoid"]
  NAMECALL R1 R0 K1 ["FindFirstChildWhichIsA"]
  CALL R1 2 1
  JUMPIFNOTEQKNIL R1 [+2]
  RETURN R0 0
  LOADK R4 K2 ["HumanoidRootPart"]
  NAMECALL R2 R0 K3 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIFNOTEQKNIL R2 [+2]
  RETURN R0 0
  LOADK R5 K4 ["Head"]
  NAMECALL R3 R0 K3 ["FindFirstChild"]
  CALL R3 2 1
  JUMPIFNOTEQKNIL R3 [+2]
  RETURN R0 0
  NAMECALL R4 R0 K5 ["GetChildren"]
  CALL R4 1 1
  NAMECALL R5 R0 K6 ["GetDescendants"]
  CALL R5 1 1
  GETTABLEKS R6 R0 K7 ["PrimaryPart"]
  MOVE R7 R4
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  LOADNIL R12
  SETTABLEKS R12 R11 K8 ["Parent"]
  FORGLOOP R7 2 [-4]
  GETTABLEKS R9 R3 K10 ["Size"]
  GETTABLEKS R8 R9 K11 ["Y"]
  DIVK R7 R8 K9 [1.2]
  SETTABLEKS R0 R1 K8 ["Parent"]
  MOVE R10 R7
  NAMECALL R8 R0 K12 ["ScaleTo"]
  CALL R8 2 0
  LOADK R9 K13 [{2, 2, 1}]
  MUL R8 R9 R7
  SETTABLEKS R8 R2 K10 ["Size"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K14 ["setOriginalSize"]
  MOVE R9 R2
  LOADK R10 K13 [{2, 2, 1}]
  CALL R8 2 0
  MOVE R8 R5
  LOADNIL R9
  LOADNIL R10
  FORGPREP R8
  LOADK R15 K15 ["BasePart"]
  NAMECALL R13 R12 K16 ["IsA"]
  CALL R13 2 1
  JUMPIFNOT R13 [+11]
  JUMPIFEQ R12 R2 [+10]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K14 ["setOriginalSize"]
  MOVE R14 R12
  GETTABLEKS R16 R12 K10 ["Size"]
  DIV R15 R16 R7
  CALL R13 2 0
  JUMP [+13]
  LOADK R15 K17 ["Attachment"]
  NAMECALL R13 R12 K16 ["IsA"]
  CALL R13 2 1
  JUMPIFNOT R13 [+8]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K18 ["setOriginalPosition"]
  MOVE R14 R12
  GETTABLEKS R16 R12 K19 ["Position"]
  DIV R15 R16 R7
  CALL R13 2 0
  FORGLOOP R8 2 [-30]
  MOVE R8 R4
  LOADNIL R9
  LOADNIL R10
  FORGPREP R8
  SETTABLEKS R0 R12 K8 ["Parent"]
  FORGLOOP R8 2 [-3]
  SETTABLEKS R6 R0 K7 ["PrimaryPart"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K20 ["ATTRIBUTE_ORIGINAL_SETUP_SCALE"]
  MOVE R11 R7
  NAMECALL R8 R0 K21 ["SetAttribute"]
  CALL R8 3 0
  LOADN R10 1
  NAMECALL R8 R0 K12 ["ScaleTo"]
  CALL R8 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETIMPORT R3 K3 [Enum.HumanoidRigType.R15]
  GETIMPORT R4 K6 [Enum.AssetTypeVerification.ClientOnly]
  NAMECALL R0 R0 K7 ["CreateHumanoidModelFromDescription"]
  CALL R0 4 1
  GETTABLEKS R1 R0 K8 ["Animate"]
  NAMECALL R1 R1 K9 ["Clone"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K10 ["walk"]
  GETTABLEKS R2 R3 K11 ["WalkAnim"]
  LOADK R3 K12 ["rbxassetid://16562332340"]
  SETTABLEKS R3 R2 K13 ["AnimationId"]
  GETTABLEKS R3 R1 K14 ["run"]
  GETTABLEKS R2 R3 K15 ["RunAnim"]
  LOADK R3 K16 ["rbxassetid://16562326358"]
  SETTABLEKS R3 R2 K13 ["AnimationId"]
  GETTABLEKS R3 R1 K17 ["idle"]
  GETTABLEKS R2 R3 K18 ["Animation1"]
  LOADK R3 K19 ["rbxassetid://16562317918"]
  SETTABLEKS R3 R2 K13 ["AnimationId"]
  GETTABLEKS R3 R1 K20 ["jump"]
  GETTABLEKS R2 R3 K21 ["JumpAnim"]
  LOADK R3 K22 ["rbxassetid://16562321958"]
  SETTABLEKS R3 R2 K13 ["AnimationId"]
  GETTABLEKS R3 R1 K23 ["climb"]
  GETTABLEKS R2 R3 K24 ["ClimbAnim"]
  LOADK R3 K25 ["rbxassetid://16562307212"]
  SETTABLEKS R3 R2 K13 ["AnimationId"]
  GETTABLEKS R3 R1 K26 ["fall"]
  GETTABLEKS R2 R3 K27 ["FallAnim"]
  LOADK R3 K28 ["rbxassetid://16562311455"]
  SETTABLEKS R3 R2 K13 ["AnimationId"]
  GETTABLEKS R3 R1 K29 ["swim"]
  GETTABLEKS R2 R3 K30 ["Swim"]
  LOADK R3 K28 ["rbxassetid://16562311455"]
  SETTABLEKS R3 R2 K13 ["AnimationId"]
  GETUPVAL R2 2
  SETTABLEKS R2 R1 K31 ["Parent"]
  RETURN R0 0

PROTO_2:
  GETIMPORT R1 K1 [game]
  LOADK R3 K2 ["Players"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K6 [Instance.new]
  LOADK R3 K7 ["HumanoidDescription"]
  CALL R2 1 1
  GETIMPORT R3 K10 [task.spawn]
  NEWCLOSURE R4 P0
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R0
  CALL R3 1 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R2 R1 K0 ["model"]
  JUMPIFNOTEQKNIL R2 [+2]
  RETURN R0 0
  GETTABLEKS R2 R1 K1 ["intendedName"]
  JUMPIF R2 [+4]
  GETTABLEKS R3 R1 K0 ["model"]
  GETTABLEKS R2 R3 K2 ["Name"]
  GETIMPORT R3 K5 [string.match]
  GETIMPORT R4 K7 [string.lower]
  MOVE R5 R2
  CALL R4 1 1
  LOADK R6 K8 ["%*$"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K9 ["BODY_MESH_SUFFIX"]
  NAMECALL R6 R6 K10 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  CALL R3 2 1
  JUMPIFNOT R3 [+14]
  LOADN R5 1
  LENGTH R7 R2
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K9 ["BODY_MESH_SUFFIX"]
  LENGTH R8 R9
  SUB R6 R7 R8
  FASTCALL3 STRING_SUB R2 R5 R6
  MOVE R4 R2
  GETIMPORT R3 K12 [string.sub]
  CALL R3 3 1
  MOVE R2 R3
  LOADK R4 K13 ["%*%*"]
  MOVE R6 R2
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K14 ["OUTPUT_MODEL_SUFFIX"]
  NAMECALL R4 R4 K10 ["format"]
  CALL R4 3 1
  MOVE R3 R4
  SETTABLEKS R3 R0 K2 ["Name"]
  RETURN R0 0

PROTO_4:
  NAMECALL R1 R0 K0 ["GetBoundingBox"]
  CALL R1 1 2
  GETIMPORT R5 K3 [CFrame.new]
  LOADN R6 0
  GETTABLEKS R9 R2 K5 ["Y"]
  MINUS R8 R9
  DIVK R7 R8 K4 [2]
  LOADN R8 0
  CALL R5 3 -1
  NAMECALL R3 R1 K6 ["ToWorldSpace"]
  CALL R3 -1 1
  GETTABLEKS R4 R0 K7 ["PrimaryPart"]
  GETTABLEKS R6 R0 K7 ["PrimaryPart"]
  GETTABLEKS R5 R6 K1 ["CFrame"]
  MOVE R7 R3
  NAMECALL R5 R5 K8 ["ToObjectSpace"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K9 ["PivotOffset"]
  RETURN R0 0

PROTO_5:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["Y"]
  DIVK R1 R2 K0 [2]
  LOADN R4 0
  DIVK R5 R1 K0 [2]
  LOADN R6 0
  FASTCALL VECTOR [+2]
  GETIMPORT R3 K4 [Vector3.new]
  CALL R3 3 1
  ADD R2 R0 R3
  GETUPVAL R3 1
  MOVE R5 R2
  GETUPVAL R6 2
  LOADN R8 0
  MINUS R9 R1
  LOADN R10 0
  FASTCALL VECTOR [+2]
  GETIMPORT R7 K4 [Vector3.new]
  CALL R7 3 1
  GETUPVAL R8 3
  NAMECALL R3 R3 K5 ["Blockcast"]
  CALL R3 5 1
  JUMPIF R3 [+1]
  RETURN R0 1
  GETIMPORT R4 K7 [CFrame.new]
  GETTABLEKS R5 R2 K8 ["X"]
  GETTABLEKS R8 R3 K9 ["Position"]
  GETTABLEKS R7 R8 K1 ["Y"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K1 ["Y"]
  DIVK R8 R9 K0 [2]
  ADD R6 R7 R8
  GETTABLEKS R7 R2 K10 ["Z"]
  CALL R4 3 -1
  RETURN R4 -1

PROTO_6:
  GETUPVAL R1 0
  MOVE R3 R0
  GETUPVAL R4 1
  GETUPVAL R5 2
  NAMECALL R1 R1 K0 ["GetPartBoundsInBox"]
  CALL R1 4 1
  GETIMPORT R2 K2 [next]
  MOVE R3 R1
  CALL R2 1 1
  JUMPIFNOT R2 [+2]
  LOADB R2 0
  RETURN R2 1
  LOADB R2 1
  RETURN R2 1

PROTO_7:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["X"]
  DIVK R2 R3 K0 [2]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["X"]
  DIVK R3 R4 K0 [2]
  ADD R1 R2 R3
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["X"]
  ADDK R3 R4 K0 [2]
  SUBK R4 R0 K2 [1]
  MUL R2 R3 R4
  ADD R1 R1 R2
  GETUPVAL R5 2
  GETIMPORT R6 K5 [CFrame.new]
  LOADN R7 0
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K6 ["Y"]
  MINUS R9 R10
  DIVK R8 R9 K0 [2]
  LOADN R9 0
  CALL R6 3 1
  MUL R4 R5 R6
  GETIMPORT R5 K5 [CFrame.new]
  LOADN R6 0
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K6 ["Y"]
  DIVK R7 R8 K0 [2]
  LOADN R8 0
  CALL R5 3 1
  MUL R3 R4 R5
  GETIMPORT R4 K5 [CFrame.new]
  MINUS R5 R1
  LOADN R6 0
  LOADN R7 0
  CALL R4 3 1
  MUL R2 R3 R4
  GETUPVAL R3 5
  MOVE R4 R2
  CALL R3 1 -1
  RETURN R3 -1

PROTO_8:
  LOADN R2 1
  LOADN R0 10
  LOADN R1 1
  FORNPREP R0
  GETUPVAL R3 0
  MOVE R4 R2
  CALL R3 1 1
  GETUPVAL R5 1
  MOVE R7 R3
  GETUPVAL R8 2
  GETUPVAL R9 3
  NAMECALL R5 R5 K0 ["GetPartBoundsInBox"]
  CALL R5 4 1
  GETIMPORT R6 K2 [next]
  MOVE R7 R5
  CALL R6 1 1
  JUMPIFNOT R6 [+2]
  LOADB R4 0
  JUMP [+1]
  LOADB R4 1
  JUMPIFNOT R4 [+1]
  RETURN R3 1
  GETUPVAL R4 0
  MINUS R5 R2
  CALL R4 1 1
  GETUPVAL R6 1
  MOVE R8 R4
  GETUPVAL R9 2
  GETUPVAL R10 3
  NAMECALL R6 R6 K0 ["GetPartBoundsInBox"]
  CALL R6 4 1
  GETIMPORT R7 K2 [next]
  MOVE R8 R6
  CALL R7 1 1
  JUMPIFNOT R7 [+2]
  LOADB R5 0
  JUMP [+1]
  LOADB R5 1
  JUMPIFNOT R5 [+1]
  RETURN R4 1
  FORNLOOP R0
  GETUPVAL R0 0
  LOADN R1 1
  CALL R0 1 -1
  RETURN R0 -1

PROTO_9:
  GETTABLEKS R2 R1 K0 ["model"]
  JUMPIFNOTEQKNIL R2 [+2]
  RETURN R0 0
  GETTABLEKS R2 R1 K0 ["model"]
  NAMECALL R2 R2 K1 ["GetBoundingBox"]
  CALL R2 1 2
  GETUPVAL R4 0
  MOVE R5 R2
  CALL R4 1 1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K2 ["axisAlignedBoxSize"]
  MOVE R6 R2
  MOVE R7 R3
  CALL R5 2 1
  MOVE R8 R5
  NAMECALL R6 R4 K3 ["VectorToWorldSpace"]
  CALL R6 2 1
  NAMECALL R7 R0 K1 ["GetBoundingBox"]
  CALL R7 1 2
  GETUPVAL R9 0
  MOVE R10 R7
  CALL R9 1 1
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K2 ["axisAlignedBoxSize"]
  MOVE R11 R7
  MOVE R12 R8
  CALL R10 2 1
  MOVE R13 R10
  NAMECALL R11 R9 K3 ["VectorToWorldSpace"]
  CALL R11 2 1
  LOADK R13 K4 [{0.75, 0.75, 0.75}]
  MUL R12 R8 R13
  GETIMPORT R13 K7 [OverlapParams.new]
  CALL R13 0 1
  LOADB R14 1
  SETTABLEKS R14 R13 K8 ["RespectCanCollide"]
  LOADN R14 1
  SETTABLEKS R14 R13 K9 ["MaxParts"]
  NEWTABLE R14 0 2
  MOVE R15 R0
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K10 ["CurrentCamera"]
  SETLIST R14 R15 2 [1]
  SETTABLEKS R14 R13 K11 ["FilterDescendantsInstances"]
  GETIMPORT R14 K15 [Enum.RaycastFilterType.Exclude]
  SETTABLEKS R14 R13 K16 ["FilterType"]
  GETIMPORT R14 K18 [RaycastParams.new]
  CALL R14 0 1
  NEWTABLE R15 0 2
  MOVE R16 R0
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K10 ["CurrentCamera"]
  SETLIST R15 R16 2 [1]
  SETTABLEKS R15 R14 K11 ["FilterDescendantsInstances"]
  GETIMPORT R15 K15 [Enum.RaycastFilterType.Exclude]
  SETTABLEKS R15 R14 K16 ["FilterType"]
  LOADB R15 0
  SETTABLEKS R15 R14 K19 ["IgnoreWater"]
  NEWCLOSURE R15 P0
  CAPTURE VAL R10
  CAPTURE UPVAL U2
  CAPTURE VAL R8
  CAPTURE VAL R14
  NEWCLOSURE R16 P1
  CAPTURE UPVAL U2
  CAPTURE VAL R12
  CAPTURE VAL R13
  NEWCLOSURE R17 P2
  CAPTURE VAL R6
  CAPTURE VAL R11
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R10
  CAPTURE VAL R15
  NEWCLOSURE R18 P3
  CAPTURE VAL R17
  CAPTURE UPVAL U2
  CAPTURE VAL R12
  CAPTURE VAL R13
  MOVE R19 R18
  CALL R19 0 1
  JUMPIFNOTEQKNIL R19 [+2]
  RETURN R0 0
  GETTABLEKS R21 R0 K20 ["PrimaryPart"]
  GETTABLEKS R20 R21 K21 ["CFrame"]
  MOVE R23 R20
  NAMECALL R21 R7 K22 ["ToObjectSpace"]
  CALL R21 2 1
  MOVE R24 R21
  NAMECALL R22 R19 K23 ["ToWorldSpace"]
  CALL R22 2 1
  MOVE R25 R22
  NAMECALL R23 R0 K24 ["SetPrimaryPartCFrame"]
  CALL R23 2 0
  RETURN R0 0

PROTO_10:
  MOVE R2 R1
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  NAMECALL R7 R6 K0 ["Clone"]
  CALL R7 1 1
  JUMPIFNOT R7 [+13]
  SETTABLEKS R0 R7 K1 ["Parent"]
  LOADK R10 K2 ["Accessory"]
  NAMECALL R8 R7 K3 ["IsA"]
  CALL R8 2 1
  JUMPIFNOT R8 [+6]
  GETTABLEKS R8 R0 K4 ["Humanoid"]
  MOVE R10 R7
  NAMECALL R8 R8 K5 ["AddAccessory"]
  CALL R8 2 0
  FORGLOOP R2 2 [-18]
  RETURN R0 0

PROTO_11:
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  FASTCALL2K ASSERT R5 K0 [+4]
  LOADK R6 K0 ["Inserting body with no target"]
  GETIMPORT R4 K2 [assert]
  CALL R4 2 0
  GETTABLEKS R6 R2 K3 ["model"]
  JUMPIFNOTEQKNIL R6 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  FASTCALL2K ASSERT R5 K4 [+4]
  LOADK R6 K4 ["Inserting body with no model"]
  GETIMPORT R4 K2 [assert]
  CALL R4 2 0
  GETTABLEKS R6 R1 K5 ["PrimaryPart"]
  JUMPIFNOTEQKNIL R6 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  FASTCALL2K ASSERT R5 K6 [+4]
  LOADK R6 K6 ["Auto setup returned model with no primary part"]
  GETIMPORT R4 K2 [assert]
  CALL R4 2 0
  GETUPVAL R4 0
  LOADK R6 K7 ["AvatarAutoSetup"]
  LOADK R7 K8 ["Avatar Auto Setup"]
  NAMECALL R4 R4 K9 ["TryBeginRecording"]
  CALL R4 3 1
  NAMECALL R5 R1 K10 ["Clone"]
  CALL R5 1 1
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K11 ["ATTRIBUTE_CREATED_BY_AUTO_SETUP"]
  LOADB R9 1
  NAMECALL R6 R5 K12 ["SetAttribute"]
  CALL R6 3 0
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K13 ["ATTRIBUTE_AUTO_SETUP_INPUT_ASSET"]
  MOVE R9 R3
  NAMECALL R6 R5 K12 ["SetAttribute"]
  CALL R6 3 0
  GETUPVAL R6 2
  MOVE R7 R5
  CALL R6 1 0
  GETIMPORT R6 K15 [game]
  LOADK R8 K16 ["Players"]
  NAMECALL R6 R6 K17 ["GetService"]
  CALL R6 2 1
  GETIMPORT R7 K20 [Instance.new]
  LOADK R8 K21 ["HumanoidDescription"]
  CALL R7 1 1
  GETIMPORT R8 K24 [task.spawn]
  NEWCLOSURE R9 P0
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R5
  CALL R8 1 0
  GETUPVAL R6 3
  MOVE R7 R5
  CALL R6 1 0
  GETUPVAL R6 4
  MOVE R7 R5
  MOVE R8 R2
  CALL R6 2 0
  GETUPVAL R6 5
  MOVE R7 R5
  GETTABLEKS R8 R2 K25 ["accessories"]
  CALL R6 2 0
  GETUPVAL R6 6
  SETTABLEKS R6 R5 K26 ["Parent"]
  NAMECALL R6 R5 K27 ["GetBoundingBox"]
  CALL R6 1 2
  GETIMPORT R10 K29 [CFrame.new]
  LOADN R11 0
  GETTABLEKS R14 R7 K31 ["Y"]
  MINUS R13 R14
  DIVK R12 R13 K30 [2]
  LOADN R13 0
  CALL R10 3 -1
  NAMECALL R8 R6 K32 ["ToWorldSpace"]
  CALL R8 -1 1
  GETTABLEKS R9 R5 K5 ["PrimaryPart"]
  GETTABLEKS R11 R5 K5 ["PrimaryPart"]
  GETTABLEKS R10 R11 K28 ["CFrame"]
  MOVE R12 R8
  NAMECALL R10 R10 K33 ["ToObjectSpace"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K34 ["PivotOffset"]
  GETUPVAL R6 7
  MOVE R7 R5
  MOVE R8 R2
  CALL R6 2 0
  GETUPVAL R7 6
  GETTABLEKS R6 R7 K35 ["CurrentCamera"]
  GETUPVAL R8 8
  GETTABLEKS R7 R8 K36 ["zoomIsRequired"]
  MOVE R8 R6
  MOVE R9 R5
  CALL R7 2 1
  JUMPIFNOT R7 [+16]
  GETTABLEKS R9 R6 K37 ["ViewportSize"]
  GETTABLEKS R8 R9 K38 ["X"]
  GETTABLEKS R10 R6 K37 ["ViewportSize"]
  GETTABLEKS R9 R10 K31 ["Y"]
  DIV R7 R8 R9
  GETUPVAL R9 8
  GETTABLEKS R8 R9 K39 ["zoomToExtents"]
  MOVE R9 R6
  MOVE R10 R5
  MOVE R11 R7
  CALL R8 3 0
  NEWTABLE R9 0 1
  MOVE R10 R5
  SETLIST R9 R10 1 [1]
  NAMECALL R7 R0 K40 ["Set"]
  CALL R7 2 0
  JUMPIFNOT R4 [+7]
  GETUPVAL R7 0
  MOVE R9 R4
  GETIMPORT R10 K44 [Enum.FinishRecordingOperation.Commit]
  NAMECALL R7 R7 K45 ["FinishRecording"]
  CALL R7 3 0
  RETURN R0 0

PROTO_12:
  LOADNIL R0
  RETURN R0 1

PROTO_13:
  LOADNIL R0
  RETURN R0 1

PROTO_14:
  LOADNIL R0
  RETURN R0 1

PROTO_15:
  LOADNIL R0
  RETURN R0 1

PROTO_16:
  GETIMPORT R0 K2 [task.cancel]
  GETUPVAL R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R0 0
  JUMPIFNOTEQKNIL R0 [+3]
  LOADNIL R1
  RETURN R1 1
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  RETURN R1 1

PROTO_18:
  GETUPVAL R0 0
  LOADNIL R1
  CALL R0 1 0
  GETUPVAL R0 1
  LOADNIL R1
  CALL R0 1 0
  RETURN R0 0

PROTO_19:
  GETUPVAL R1 0
  LOADK R2 K0 ["ErrorSourceFail"]
  CALL R1 1 0
  GETUPVAL R1 1
  MOVE R2 R0
  CALL R1 1 0
  GETUPVAL R1 2
  LOADNIL R2
  CALL R1 1 0
  RETURN R0 0

PROTO_20:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+67]
  GETTABLEKS R1 R0 K0 ["jobStatus"]
  JUMPIFEQKNIL R1 [+5]
  GETTABLEKS R1 R0 K0 ["jobStatus"]
  JUMPIFNOTEQKS R1 K1 [""] [+2]
  RETURN R0 0
  GETTABLEKS R1 R0 K0 ["jobStatus"]
  JUMPIFNOTEQKS R1 K2 ["Created"] [+14]
  GETUPVAL R1 1
  GETTABLEKS R2 R0 K3 ["jobId"]
  SETTABLEKS R2 R1 K4 ["current"]
  GETUPVAL R1 2
  GETUPVAL R3 3
  GETTABLEKS R4 R0 K0 ["jobStatus"]
  GETTABLE R2 R3 R4
  SETTABLEKS R2 R1 K4 ["current"]
  JUMP [+8]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K4 ["current"]
  GETTABLEKS R2 R0 K3 ["jobId"]
  JUMPIFEQ R1 R2 [+2]
  RETURN R0 0
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K4 ["current"]
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K5 [+4]
  LOADK R3 K5 ["current progress stage is nil"]
  GETIMPORT R1 K7 [assert]
  CALL R1 2 0
  GETUPVAL R2 3
  GETTABLEKS R3 R0 K0 ["jobStatus"]
  GETTABLE R1 R2 R3
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K4 ["current"]
  JUMPIFNOTLT R1 R2 [+2]
  RETURN R0 0
  GETUPVAL R1 2
  GETUPVAL R3 3
  GETTABLEKS R4 R0 K0 ["jobStatus"]
  GETTABLE R2 R3 R4
  SETTABLEKS R2 R1 K4 ["current"]
  GETUPVAL R1 4
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_21:
  GETIMPORT R0 K1 [pcall]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["uploadModelAsync"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["model"]
  CALL R0 2 2
  JUMPIF R0 [+24]
  GETIMPORT R2 K5 [warn]
  LOADK R4 K6 ["Something went wrong while uploading the model.
%*"]
  MOVE R6 R1
  NAMECALL R4 R4 K7 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  CALL R2 1 0
  GETUPVAL R2 2
  GETUPVAL R3 1
  CALL R2 1 0
  GETUPVAL R2 3
  LOADK R4 K8 ["autoSetupFailure"]
  GETIMPORT R6 K11 [os.clock]
  CALL R6 0 1
  GETUPVAL R7 4
  SUB R5 R6 R7
  LOADK R6 K12 ["no model uploaded"]
  NAMECALL R2 R2 K13 ["report"]
  CALL R2 4 0
  RETURN R0 0
  GETIMPORT R2 K1 [pcall]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K14 ["startAutoSetupAsync"]
  MOVE R4 R1
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CALL R2 3 2
  JUMPIFNOT R2 [+37]
  GETUPVAL R5 10
  GETTABLEKS R4 R5 K15 ["current"]
  GETUPVAL R5 11
  SETTABLE R3 R4 R5
  GETUPVAL R4 12
  GETUPVAL R5 13
  MOVE R6 R3
  GETUPVAL R7 1
  MOVE R8 R1
  CALL R4 4 0
  GETUPVAL R4 14
  LOADNIL R5
  CALL R4 1 0
  GETUPVAL R4 3
  LOADK R6 K16 ["autoSetupFinish"]
  GETIMPORT R8 K11 [os.clock]
  CALL R8 0 1
  GETUPVAL R9 4
  SUB R7 R8 R9
  MOVE R8 R1
  NAMECALL R4 R4 K13 ["report"]
  CALL R4 4 0
  GETUPVAL R4 3
  LOADK R6 K17 ["autoSetupAssetsGenerated"]
  GETUPVAL R7 15
  MOVE R8 R1
  CALL R7 1 1
  GETUPVAL R8 16
  MOVE R9 R3
  CALL R8 1 -1
  NAMECALL R4 R4 K13 ["report"]
  CALL R4 -1 0
  RETURN R0 0
  GETIMPORT R4 K5 [warn]
  LOADK R6 K18 ["Something went wrong while performing auto setup.
%*"]
  MOVE R8 R3
  NAMECALL R6 R6 K7 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  CALL R4 1 0
  GETUPVAL R4 2
  GETUPVAL R5 1
  CALL R4 1 0
  GETUPVAL R4 3
  LOADK R6 K8 ["autoSetupFailure"]
  GETIMPORT R8 K11 [os.clock]
  CALL R8 0 1
  GETUPVAL R9 4
  SUB R7 R8 R9
  ORK R8 R1 K12 ["no model uploaded"]
  NAMECALL R4 R4 K13 ["report"]
  CALL R4 4 0
  RETURN R0 0

PROTO_22:
  GETUPVAL R1 0
  LOADNIL R2
  CALL R1 1 0
  GETUPVAL R1 1
  CALL R1 0 0
  GETUPVAL R1 2
  CALL R1 0 1
  JUMPIFNOT R1 [+21]
  GETUPVAL R1 3
  DUPTABLE R2 K6 [{"progressPercentage", "progressName", "completionStart", "completionEnd", "jobStatus", "jobId"}]
  LOADN R3 0
  SETTABLEKS R3 R2 K0 ["progressPercentage"]
  LOADK R3 K7 ["PreppingMesh"]
  SETTABLEKS R3 R2 K1 ["progressName"]
  LOADN R3 0
  SETTABLEKS R3 R2 K2 ["completionStart"]
  LOADN R3 0
  SETTABLEKS R3 R2 K3 ["completionEnd"]
  LOADK R3 K8 ["Created"]
  SETTABLEKS R3 R2 K4 ["jobStatus"]
  LOADK R3 K9 [""]
  SETTABLEKS R3 R2 K5 ["jobId"]
  CALL R1 1 0
  GETIMPORT R1 K12 [os.clock]
  CALL R1 0 1
  GETTABLEKS R2 R0 K13 ["model"]
  JUMPIFNOTEQKNIL R2 [+6]
  GETIMPORT R2 K15 [error]
  LOADK R3 K16 ["Must have model"]
  CALL R2 1 0
  RETURN R0 0
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K17 ["computeHashSerializeContext"]
  NEWTABLE R3 0 1
  GETTABLEKS R4 R0 K13 ["model"]
  SETLIST R3 R4 1 [1]
  DUPTABLE R4 K20 [{"ignoreUniformScaleChanges", "ignoreAccessories"}]
  LOADB R5 0
  SETTABLEKS R5 R4 K18 ["ignoreUniformScaleChanges"]
  LOADB R5 1
  SETTABLEKS R5 R4 K19 ["ignoreAccessories"]
  CALL R2 2 1
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K21 ["hashCharacter"]
  GETTABLEKS R4 R0 K13 ["model"]
  MOVE R5 R2
  CALL R3 2 1
  GETUPVAL R6 5
  GETTABLEKS R5 R6 K22 ["current"]
  GETTABLE R4 R5 R3
  JUMPIFEQKNIL R4 [+26]
  GETUPVAL R9 6
  GETTABLEKS R8 R9 K23 ["ATTRIBUTE_AUTO_SETUP_INPUT_ASSET"]
  NAMECALL R6 R4 K24 ["GetAttribute"]
  CALL R6 2 1
  ORK R5 R6 K9 [""]
  GETUPVAL R6 7
  GETUPVAL R7 8
  MOVE R8 R4
  MOVE R9 R0
  MOVE R10 R5
  CALL R6 4 0
  GETUPVAL R7 9
  GETTABLEKS R6 R7 K25 ["autoSetupClickedSignal"]
  JUMPIFEQKNIL R6 [+7]
  GETUPVAL R7 9
  GETTABLEKS R6 R7 K25 ["autoSetupClickedSignal"]
  NAMECALL R6 R6 K26 ["Fire"]
  CALL R6 1 0
  RETURN R0 0
  GETUPVAL R5 10
  MOVE R6 R0
  CALL R5 1 0
  LOADNIL R5
  GETIMPORT R6 K29 [task.spawn]
  NEWCLOSURE R7 P0
  CAPTURE UPVAL U9
  CAPTURE VAL R0
  CAPTURE UPVAL U11
  CAPTURE UPVAL U12
  CAPTURE VAL R1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U13
  CAPTURE UPVAL U14
  CAPTURE UPVAL U15
  CAPTURE UPVAL U3
  CAPTURE UPVAL U5
  CAPTURE VAL R3
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U10
  CAPTURE UPVAL U16
  CAPTURE UPVAL U17
  CALL R6 1 1
  MOVE R5 R6
  GETUPVAL R6 0
  MOVE R7 R5
  CALL R6 1 0
  GETUPVAL R7 9
  GETTABLEKS R6 R7 K25 ["autoSetupClickedSignal"]
  JUMPIFEQKNIL R6 [+7]
  GETUPVAL R7 9
  GETTABLEKS R6 R7 K25 ["autoSetupClickedSignal"]
  NAMECALL R6 R6 K26 ["Fire"]
  CALL R6 1 0
  RETURN R0 0

PROTO_23:
  GETUPVAL R0 0
  LOADNIL R1
  CALL R0 1 0
  GETUPVAL R0 1
  LOADNIL R1
  CALL R0 1 0
  RETURN R0 0

PROTO_24:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["ContextServices"]
  GETTABLEKS R0 R1 K1 ["Analytics"]
  NAMECALL R0 R0 K2 ["use"]
  CALL R0 1 1
  GETUPVAL R1 1
  NAMECALL R1 R1 K2 ["use"]
  CALL R1 1 1
  NAMECALL R1 R1 K3 ["get"]
  CALL R1 1 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K4 ["useContext"]
  GETUPVAL R3 3
  CALL R2 1 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K5 ["useState"]
  DUPCLOSURE R4 K6 [PROTO_12]
  CALL R3 1 2
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K5 ["useState"]
  DUPCLOSURE R6 K7 [PROTO_13]
  CALL R5 1 2
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K5 ["useState"]
  DUPCLOSURE R8 K8 [PROTO_14]
  CALL R7 1 2
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K5 ["useState"]
  DUPCLOSURE R10 K9 [PROTO_15]
  CALL R9 1 2
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K10 ["useRef"]
  NEWTABLE R12 0 0
  CALL R11 1 1
  GETTABLEKS R14 R11 K11 ["current"]
  JUMPIFNOTEQKNIL R14 [+2]
  LOADB R13 0 +1
  LOADB R13 1
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K12 ["LUAU_ANALYZE_ERROR"]
  FASTCALL2 ASSERT R13 R14 [+3]
  GETIMPORT R12 K14 [assert]
  CALL R12 2 0
  GETUPVAL R12 5
  CALL R12 0 1
  JUMPIFNOT R12 [+19]
  GETIMPORT R13 K17 [shared]
  GETTABLEKS R12 R13 K15 ["roblox.plugins.avatarCompatibilityPreviewer"]
  JUMPIFEQKNIL R12 [+8]
  GETIMPORT R13 K17 [shared]
  GETTABLEKS R12 R13 K15 ["roblox.plugins.avatarCompatibilityPreviewer"]
  SETTABLEKS R12 R11 K11 ["current"]
  JUMP [+6]
  GETIMPORT R12 K17 [shared]
  GETTABLEKS R13 R11 K11 ["current"]
  SETTABLEKS R13 R12 K15 ["roblox.plugins.avatarCompatibilityPreviewer"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K18 ["useEffect"]
  NEWCLOSURE R13 P4
  CAPTURE VAL R5
  NEWTABLE R14 0 1
  MOVE R15 R5
  SETLIST R14 R15 1 [1]
  CALL R12 2 0
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K19 ["useCallback"]
  NEWCLOSURE R13 P5
  CAPTURE VAL R8
  CAPTURE VAL R10
  NEWTABLE R14 0 2
  MOVE R15 R8
  MOVE R16 R10
  SETLIST R14 R15 2 [1]
  CALL R12 2 1
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K19 ["useCallback"]
  NEWCLOSURE R14 P6
  CAPTURE VAL R8
  CAPTURE VAL R10
  CAPTURE VAL R4
  NEWTABLE R15 0 3
  MOVE R16 R8
  MOVE R17 R10
  MOVE R18 R4
  SETLIST R15 R16 3 [1]
  CALL R13 2 1
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K5 ["useState"]
  LOADNIL R15
  CALL R14 1 2
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K10 ["useRef"]
  LOADK R17 K20 [""]
  CALL R16 1 1
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K10 ["useRef"]
  LOADN R18 0
  CALL R17 1 1
  GETUPVAL R19 2
  GETTABLEKS R18 R19 K19 ["useCallback"]
  NEWCLOSURE R19 P7
  CAPTURE VAL R6
  CAPTURE VAL R12
  CAPTURE UPVAL U6
  CAPTURE VAL R15
  CAPTURE UPVAL U7
  CAPTURE VAL R11
  CAPTURE UPVAL U4
  CAPTURE UPVAL U8
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R13
  CAPTURE VAL R0
  CAPTURE VAL R16
  CAPTURE VAL R17
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  NEWTABLE R20 0 2
  GETTABLEKS R21 R2 K21 ["startAutoSetupAsync"]
  GETTABLEKS R22 R2 K22 ["uploadModelAsync"]
  SETLIST R20 R21 2 [1]
  CALL R18 2 1
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K19 ["useCallback"]
  NEWCLOSURE R20 P8
  CAPTURE VAL R6
  CAPTURE VAL R4
  NEWTABLE R21 0 0
  CALL R19 2 1
  DUPTABLE R20 K30 [{"cancelAutoSetup", "startAutoSetup", "activeTarget", "lastErrorType", "lastErrorTarget", "clearError", "progressState"}]
  SETTABLEKS R19 R20 K23 ["cancelAutoSetup"]
  SETTABLEKS R18 R20 K24 ["startAutoSetup"]
  SETTABLEKS R3 R20 K25 ["activeTarget"]
  SETTABLEKS R7 R20 K26 ["lastErrorType"]
  SETTABLEKS R9 R20 K27 ["lastErrorTarget"]
  SETTABLEKS R12 R20 K28 ["clearError"]
  SETTABLEKS R14 R20 K29 ["progressState"]
  RETURN R20 1

PROTO_25:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["activeTarget"]
  JUMPIFNOT R0 [+20]
  DUPTABLE R0 K4 [{"type", "target", "progressState"}]
  LOADK R1 K5 ["inAutoSetup"]
  SETTABLEKS R1 R0 K1 ["type"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["activeTarget"]
  SETTABLEKS R1 R0 K2 ["target"]
  GETUPVAL R2 1
  CALL R2 0 1
  JUMPIFNOT R2 [+4]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["progressState"]
  JUMP [+1]
  LOADNIL R1
  SETTABLEKS R1 R0 K3 ["progressState"]
  RETURN R0 1
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K6 ["lastErrorType"]
  JUMPIFNOT R0 [+21]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K7 ["lastErrorTarget"]
  JUMPIFNOT R0 [+17]
  DUPTABLE R0 K9 [{"type", "target", "error"}]
  LOADK R1 K8 ["error"]
  SETTABLEKS R1 R0 K1 ["type"]
  GETUPVAL R1 2
  JUMPIF R1 [+3]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K7 ["lastErrorTarget"]
  SETTABLEKS R1 R0 K2 ["target"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["lastErrorType"]
  SETTABLEKS R1 R0 K8 ["error"]
  RETURN R0 1
  GETUPVAL R0 2
  JUMPIFNOT R0 [+8]
  DUPTABLE R0 K10 [{"type", "target"}]
  LOADK R1 K11 ["hasSelection"]
  SETTABLEKS R1 R0 K1 ["type"]
  GETUPVAL R1 2
  SETTABLEKS R1 R0 K2 ["target"]
  RETURN R0 1
  DUPTABLE R0 K12 [{"type"}]
  LOADK R1 K13 ["none"]
  SETTABLEKS R1 R0 K1 ["type"]
  RETURN R0 1

PROTO_26:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+6]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["startAutoSetup"]
  GETUPVAL R1 0
  CALL R0 1 -1
  RETURN R0 -1
  RETURN R0 0

PROTO_27:
  GETUPVAL R2 0
  CALL R2 0 1
  FASTCALL2K ASSERT R2 K0 [+4]
  LOADK R3 K0 ["getFFlagAvatarPreviewerUseAnyModel() is enabled"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  GETUPVAL R1 1
  CALL R1 0 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K3 ["useMemo"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R1
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  NEWTABLE R4 0 5
  GETTABLEKS R5 R1 K4 ["activeTarget"]
  GETTABLEKS R6 R1 K5 ["lastErrorType"]
  GETTABLEKS R7 R1 K6 ["lastErrorTarget"]
  MOVE R8 R0
  GETTABLEKS R9 R1 K7 ["progressState"]
  SETLIST R4 R5 5 [1]
  CALL R2 2 1
  DUPTABLE R3 K12 [{"state", "cancelAutoSetup", "clearError", "startAutoSetup"}]
  SETTABLEKS R2 R3 K8 ["state"]
  GETTABLEKS R4 R1 K9 ["cancelAutoSetup"]
  SETTABLEKS R4 R3 K9 ["cancelAutoSetup"]
  GETTABLEKS R4 R1 K10 ["clearError"]
  SETTABLEKS R4 R3 K10 ["clearError"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K13 ["useCallback"]
  NEWCLOSURE R5 P1
  CAPTURE VAL R0
  CAPTURE VAL R1
  NEWTABLE R6 0 1
  MOVE R7 R0
  SETLIST R6 R7 1 [1]
  CALL R4 2 1
  SETTABLEKS R4 R3 K11 ["startAutoSetup"]
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ChangeHistoryService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["Workspace"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K6 [script]
  LOADK R4 K7 ["AvatarCompatibilityPreviewer"]
  NAMECALL R2 R2 K8 ["FindFirstAncestor"]
  CALL R2 2 1
  GETIMPORT R3 K10 [require]
  GETTABLEKS R5 R2 K11 ["Packages"]
  GETTABLEKS R4 R5 K12 ["Framework"]
  CALL R3 1 1
  GETIMPORT R4 K10 [require]
  GETTABLEKS R6 R2 K11 ["Packages"]
  GETTABLEKS R5 R6 K13 ["React"]
  CALL R4 1 1
  GETIMPORT R5 K10 [require]
  GETTABLEKS R8 R2 K14 ["Src"]
  GETTABLEKS R7 R8 K15 ["Components"]
  GETTABLEKS R6 R7 K16 ["AutoSetupContext"]
  CALL R5 1 1
  GETIMPORT R6 K10 [require]
  GETTABLEKS R9 R2 K14 ["Src"]
  GETTABLEKS R8 R9 K17 ["Util"]
  GETTABLEKS R7 R8 K18 ["BoundingBoxUtils"]
  CALL R6 1 1
  GETIMPORT R7 K10 [require]
  GETTABLEKS R10 R2 K14 ["Src"]
  GETTABLEKS R9 R10 K17 ["Util"]
  GETTABLEKS R8 R9 K19 ["CameraUtils"]
  CALL R7 1 1
  GETIMPORT R8 K10 [require]
  GETTABLEKS R11 R2 K14 ["Src"]
  GETTABLEKS R10 R11 K17 ["Util"]
  GETTABLEKS R9 R10 K20 ["CharacterHashUtils"]
  CALL R8 1 1
  GETIMPORT R9 K10 [require]
  GETTABLEKS R12 R2 K14 ["Src"]
  GETTABLEKS R11 R12 K17 ["Util"]
  GETTABLEKS R10 R11 K21 ["Constants"]
  CALL R9 1 1
  GETIMPORT R10 K10 [require]
  GETTABLEKS R13 R2 K14 ["Src"]
  GETTABLEKS R12 R13 K17 ["Util"]
  GETTABLEKS R11 R12 K22 ["HumanoidValueUtil"]
  CALL R10 1 1
  GETIMPORT R11 K10 [require]
  GETTABLEKS R14 R2 K14 ["Src"]
  GETTABLEKS R13 R14 K17 ["Util"]
  GETTABLEKS R12 R13 K23 ["SelectionWrapper"]
  CALL R11 1 1
  GETIMPORT R12 K10 [require]
  GETTABLEKS R14 R2 K14 ["Src"]
  GETTABLEKS R13 R14 K24 ["Types"]
  CALL R12 1 1
  GETIMPORT R13 K10 [require]
  GETTABLEKS R16 R2 K14 ["Src"]
  GETTABLEKS R15 R16 K17 ["Util"]
  GETTABLEKS R14 R15 K25 ["assetUriToId"]
  CALL R13 1 1
  GETIMPORT R14 K10 [require]
  GETTABLEKS R17 R2 K14 ["Src"]
  GETTABLEKS R16 R17 K17 ["Util"]
  GETTABLEKS R15 R16 K26 ["findUnderlyingMeshAssetIds"]
  CALL R14 1 1
  GETIMPORT R15 K10 [require]
  GETTABLEKS R18 R2 K14 ["Src"]
  GETTABLEKS R17 R18 K17 ["Util"]
  GETTABLEKS R16 R17 K27 ["getRotationInXZPlane"]
  CALL R15 1 1
  GETIMPORT R16 K10 [require]
  GETTABLEKS R19 R2 K14 ["Src"]
  GETTABLEKS R18 R19 K17 ["Util"]
  GETTABLEKS R17 R18 K28 ["guessProportions"]
  CALL R16 1 1
  GETIMPORT R17 K10 [require]
  GETTABLEKS R20 R2 K14 ["Src"]
  GETTABLEKS R19 R20 K29 ["Flags"]
  GETTABLEKS R18 R19 K30 ["getFFlagAvatarPreviewerUseAnyModel"]
  CALL R17 1 1
  GETIMPORT R18 K10 [require]
  GETTABLEKS R21 R2 K14 ["Src"]
  GETTABLEKS R20 R21 K29 ["Flags"]
  GETTABLEKS R19 R20 K31 ["getFFlagDebugAvatarPreviewerSharedCache"]
  CALL R18 1 1
  GETIMPORT R19 K10 [require]
  GETTABLEKS R22 R2 K14 ["Src"]
  GETTABLEKS R21 R22 K29 ["Flags"]
  GETTABLEKS R20 R21 K32 ["getFFlagStudioAvatarAutosetupReportsProgress"]
  CALL R19 1 1
  DUPTABLE R20 K41 [{"Created", "Pending", "Processing", "Finalizing", "Completed", "Invalid", "Failed", "Canceled"}]
  LOADN R21 1
  SETTABLEKS R21 R20 K33 ["Created"]
  LOADN R21 2
  SETTABLEKS R21 R20 K34 ["Pending"]
  LOADN R21 3
  SETTABLEKS R21 R20 K35 ["Processing"]
  LOADN R21 4
  SETTABLEKS R21 R20 K36 ["Finalizing"]
  LOADN R21 5
  SETTABLEKS R21 R20 K37 ["Completed"]
  LOADN R21 101
  SETTABLEKS R21 R20 K38 ["Invalid"]
  LOADN R21 102
  SETTABLEKS R21 R20 K39 ["Failed"]
  LOADN R21 103
  SETTABLEKS R21 R20 K40 ["Canceled"]
  DUPCLOSURE R21 K42 [PROTO_0]
  CAPTURE VAL R10
  CAPTURE VAL R9
  DUPCLOSURE R22 K43 [PROTO_2]
  DUPCLOSURE R23 K44 [PROTO_3]
  CAPTURE VAL R9
  DUPCLOSURE R24 K45 [PROTO_4]
  DUPCLOSURE R25 K46 [PROTO_9]
  CAPTURE VAL R15
  CAPTURE VAL R6
  CAPTURE VAL R1
  DUPCLOSURE R26 K47 [PROTO_10]
  DUPCLOSURE R27 K48 [PROTO_11]
  CAPTURE VAL R0
  CAPTURE VAL R9
  CAPTURE VAL R21
  CAPTURE VAL R16
  CAPTURE VAL R23
  CAPTURE VAL R26
  CAPTURE VAL R1
  CAPTURE VAL R25
  CAPTURE VAL R7
  DUPCLOSURE R28 K49 [PROTO_24]
  CAPTURE VAL R3
  CAPTURE VAL R11
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R9
  CAPTURE VAL R18
  CAPTURE VAL R19
  CAPTURE VAL R8
  CAPTURE VAL R27
  CAPTURE VAL R20
  CAPTURE VAL R13
  CAPTURE VAL R14
  DUPCLOSURE R29 K50 [PROTO_27]
  CAPTURE VAL R17
  CAPTURE VAL R28
  CAPTURE VAL R4
  CAPTURE VAL R19
  RETURN R29 1
