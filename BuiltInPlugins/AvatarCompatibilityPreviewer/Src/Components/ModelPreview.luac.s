PROTO_0:
  GETUPVAL R0 0
  JUMPIFEQKNIL R0 [+8]
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Destroy"]
  CALL R0 1 0
  GETUPVAL R0 1
  LOADNIL R1
  CALL R0 1 0
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K1 ["Model"]
  JUMPIFNOTEQKNIL R0 [+2]
  RETURN R0 0
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K1 ["Model"]
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K2 ["LUAU_ANALYZE_ERROR"]
  FASTCALL2 ASSERT R1 R2 [+3]
  GETIMPORT R0 K4 [assert]
  CALL R0 2 0
  GETIMPORT R0 K7 [Instance.new]
  LOADK R1 K8 ["WorldModel"]
  CALL R0 1 1
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K1 ["Model"]
  LOADK R2 K9 ["Dummy"]
  SETTABLEKS R2 R1 K10 ["Name"]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K1 ["Model"]
  SETTABLEKS R0 R1 K11 ["Parent"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K1 ["Model"]
  GETTABLEKS R1 R2 K12 ["PrimaryPart"]
  SETTABLEKS R1 R0 K12 ["PrimaryPart"]
  GETUPVAL R1 4
  CALL R1 0 1
  JUMPIFNOT R1 [+24]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K1 ["Model"]
  LOADK R3 K13 ["Humanoid"]
  NAMECALL R1 R1 K14 ["FindFirstChildWhichIsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+7]
  GETIMPORT R3 K16 [CFrame.new]
  CALL R3 0 -1
  NAMECALL R1 R0 K17 ["PivotTo"]
  CALL R1 -1 0
  JUMP [+15]
  NAMECALL R4 R0 K18 ["GetPivot"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K19 ["Rotation"]
  NAMECALL R1 R0 K17 ["PivotTo"]
  CALL R1 2 0
  JUMP [+6]
  GETIMPORT R3 K16 [CFrame.new]
  CALL R3 0 -1
  NAMECALL R1 R0 K17 ["PivotTo"]
  CALL R1 -1 0
  GETUPVAL R1 1
  MOVE R2 R0
  CALL R1 1 0
  GETUPVAL R1 5
  MOVE R2 R0
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["Model"]
  GETUPVAL R5 6
  GETTABLEKS R4 R5 K20 ["PlatformHeight"]
  GETUPVAL R6 6
  GETTABLEKS R5 R6 K21 ["PlatformSize"]
  CALL R1 4 -1
  RETURN R1 -1

PROTO_1:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIF R0 [+3]
  GETUPVAL R0 1
  CALL R0 0 1
  JUMPIFNOT R0 [+60]
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K0 ["current"]
  JUMPIFEQKNIL R0 [+5]
  GETTABLEKS R1 R0 K1 ["model"]
  JUMPIFNOTEQKNIL R1 [+2]
  RETURN R0 0
  GETTABLEKS R1 R0 K1 ["model"]
  LOADK R3 K2 ["Dummy"]
  NAMECALL R1 R1 K3 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIFEQKNIL R1 [+5]
  GETTABLEKS R2 R1 K4 ["PrimaryPart"]
  JUMPIFNOTEQKNIL R2 [+2]
  RETURN R0 0
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K5 ["GetCameraModifications"]
  MOVE R3 R1
  CALL R2 1 1
  GETUPVAL R3 4
  GETTABLEKS R4 R2 K6 ["cframe"]
  JUMPIF R4 [+2]
  GETTABLEKS R4 R0 K6 ["cframe"]
  SETTABLEKS R4 R3 K7 ["CFrame"]
  GETUPVAL R3 4
  GETTABLEKS R4 R2 K8 ["focus"]
  JUMPIF R4 [+2]
  GETTABLEKS R4 R0 K8 ["focus"]
  SETTABLEKS R4 R3 K9 ["Focus"]
  GETUPVAL R3 4
  GETTABLEKS R4 R2 K10 ["fov"]
  SETTABLEKS R4 R3 K11 ["FieldOfView"]
  GETUPVAL R3 1
  CALL R3 0 1
  JUMPIFNOT R3 [+52]
  GETUPVAL R3 5
  GETTABLEKS R4 R2 K6 ["cframe"]
  JUMPIF R4 [+2]
  GETTABLEKS R4 R0 K6 ["cframe"]
  CALL R3 1 0
  RETURN R0 0
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K0 ["current"]
  GETTABLEKS R3 R0 K1 ["model"]
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K12 [+4]
  LOADK R3 K12 ["Model hasn't been set before resetCamera"]
  GETIMPORT R1 K14 [assert]
  CALL R1 2 0
  GETUPVAL R2 3
  GETTABLEKS R1 R2 K5 ["GetCameraModifications"]
  GETTABLEKS R3 R0 K1 ["model"]
  GETTABLEKS R2 R3 K2 ["Dummy"]
  CALL R1 1 1
  GETUPVAL R2 4
  GETTABLEKS R3 R1 K6 ["cframe"]
  JUMPIF R3 [+2]
  GETTABLEKS R3 R0 K6 ["cframe"]
  SETTABLEKS R3 R2 K7 ["CFrame"]
  GETUPVAL R2 4
  GETTABLEKS R3 R1 K8 ["focus"]
  JUMPIF R3 [+2]
  GETTABLEKS R3 R0 K8 ["focus"]
  SETTABLEKS R3 R2 K9 ["Focus"]
  GETUPVAL R2 4
  GETTABLEKS R3 R1 K10 ["fov"]
  SETTABLEKS R3 R2 K11 ["FieldOfView"]
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["GetCameraModifications"]
  GETTABLEKS R2 R0 K1 ["Dummy"]
  CALL R1 1 1
  GETUPVAL R2 1
  GETTABLEKS R3 R1 K2 ["fov"]
  SETTABLEKS R3 R2 K3 ["FieldOfView"]
  GETUPVAL R2 2
  DUPTABLE R3 K7 [{"cframe", "focus", "model"}]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K8 ["getAngledAndZoomedCFrame"]
  GETUPVAL R5 1
  MOVE R6 R0
  LOADN R7 1
  CALL R4 3 1
  SETTABLEKS R4 R3 K4 ["cframe"]
  GETTABLEKS R4 R1 K5 ["focus"]
  JUMPIF R4 [+6]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K9 ["Model"]
  NAMECALL R4 R4 K10 ["GetBoundingBox"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K5 ["focus"]
  SETTABLEKS R0 R3 K6 ["model"]
  SETTABLEKS R3 R2 K11 ["current"]
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["current"]
  GETTABLEKS R0 R1 K1 ["model"]
  JUMPIFNOTEQKNIL R0 [+2]
  RETURN R0 0
  GETUPVAL R0 1
  CALL R0 0 1
  JUMPIFNOT R0 [+7]
  GETUPVAL R0 2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["current"]
  GETTABLEKS R1 R2 K1 ["model"]
  CALL R0 1 0
  GETUPVAL R0 3
  CALL R0 0 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["DEPRECATED_SetInitialCameraPosition"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["CFrame"]
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  GETIMPORT R2 K1 [game]
  NAMECALL R0 R0 K2 ["IsDescendantOf"]
  CALL R0 2 1
  JUMPIF R0 [+1]
  RETURN R0 0
  GETUPVAL R1 0
  LOADK R3 K3 ["Dummy"]
  NAMECALL R1 R1 K4 ["FindFirstChild"]
  CALL R1 2 1
  FASTCALL2K ASSERT R1 K5 [+4]
  LOADK R2 K5 ["View model does not have a dummy"]
  GETIMPORT R0 K7 [assert]
  CALL R0 2 0
  GETUPVAL R0 1
  CALL R0 0 1
  JUMPIFNOT R0 [+4]
  GETUPVAL R0 2
  GETUPVAL R1 0
  CALL R0 1 0
  JUMP [+17]
  GETUPVAL R0 3
  DUPTABLE R1 K11 [{"cframe", "focus", "model"}]
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K12 ["DEFAULT_CAMERA_ANGLE"]
  SETTABLEKS R2 R1 K8 ["cframe"]
  GETUPVAL R3 5
  GETTABLEKS R2 R3 K13 ["Focus"]
  SETTABLEKS R2 R1 K9 ["focus"]
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K10 ["model"]
  SETTABLEKS R1 R0 K14 ["current"]
  GETUPVAL R0 6
  CALL R0 0 0
  GETUPVAL R0 1
  CALL R0 0 1
  JUMPIF R0 [+37]
  GETUPVAL R1 7
  GETTABLEKS R0 R1 K15 ["DEPRECATED_InitialCameraPosition"]
  JUMPIFNOTEQKNIL R0 [+2]
  RETURN R0 0
  GETUPVAL R3 7
  GETTABLEKS R2 R3 K16 ["DEPRECATED_SetInitialCameraPosition"]
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  FASTCALL2K ASSERT R1 K17 [+4]
  LOADK R2 K17 ["InitialCameraPosition should always some with a SetInitialCameraPosition"]
  GETIMPORT R0 K7 [assert]
  CALL R0 2 0
  GETUPVAL R0 5
  GETUPVAL R2 7
  GETTABLEKS R1 R2 K15 ["DEPRECATED_InitialCameraPosition"]
  SETTABLEKS R1 R0 K18 ["CFrame"]
  GETUPVAL R0 5
  LOADK R2 K18 ["CFrame"]
  NAMECALL R0 R0 K19 ["GetPropertyChangedSignal"]
  CALL R0 2 1
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U7
  CAPTURE UPVAL U5
  NAMECALL R0 R0 K20 ["Connect"]
  CALL R0 2 1
  SETUPVAL R0 8
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIF R0 [+7]
  GETUPVAL R0 1
  JUMPIFEQKNIL R0 [+5]
  GETUPVAL R0 1
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  RETURN R0 0

PROTO_7:
  LOADNIL R1
  GETIMPORT R2 K2 [task.defer]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE REF R1
  CALL R2 1 0
  NEWCLOSURE R2 P1
  CAPTURE UPVAL U0
  CAPTURE REF R1
  CLOSEUPVALS R1
  RETURN R2 1

PROTO_8:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["ResetCameraSignal"]
  JUMPIFNOTEQKNIL R0 [+2]
  RETURN R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["ResetCameraSignal"]
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["LUAU_ANALYZE_ERROR"]
  FASTCALL2 ASSERT R1 R2 [+3]
  GETIMPORT R0 K3 [assert]
  CALL R0 2 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["ResetCameraSignal"]
  GETUPVAL R2 2
  NAMECALL R0 R0 K4 ["Connect"]
  CALL R0 2 1
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  RETURN R1 1

PROTO_10:
  GETUPVAL R0 0
  JUMPIFEQKNIL R0 [+23]
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["GetDescendants"]
  CALL R0 1 3
  FORGPREP R0
  LOADK R7 K1 ["WrapLayer"]
  NAMECALL R5 R4 K2 ["IsA"]
  CALL R5 2 1
  JUMPIFNOT R5 [+10]
  GETTABLEKS R5 R4 K3 ["Order"]
  ADDK R5 R5 K4 [1]
  SETTABLEKS R5 R4 K3 ["Order"]
  GETTABLEKS R5 R4 K3 ["Order"]
  SUBK R5 R5 K4 [1]
  SETTABLEKS R5 R4 K3 ["Order"]
  FORGLOOP R0 2 [-16]
  RETURN R0 0

PROTO_11:
  NEWCLOSURE R0 P0
  CAPTURE UPVAL U0
  GETIMPORT R1 K2 [task.defer]
  MOVE R2 R0
  CALL R1 1 0
  GETIMPORT R1 K4 [task.delay]
  LOADK R2 K5 [0.05]
  MOVE R3 R0
  CALL R1 2 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIF R2 [+2]
  GETUPVAL R2 1
  CALL R2 0 1
  FASTCALL2K ASSERT R2 K0 [+4]
  LOADK R3 K0 ["ModelPreview requires FFlagAvatarPreviewerSkinToneAlphaDetection"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  GETTABLEKS R4 R0 K3 ["Model"]
  GETTABLEKS R3 R4 K4 ["PrimaryPart"]
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K5 [+4]
  LOADK R3 K5 ["PrimaryPart is not set"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  GETUPVAL R1 2
  LOADK R3 K6 ["ModelPreview"]
  NAMECALL R1 R1 K7 ["use"]
  CALL R1 2 1
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K8 ["useState"]
  LOADNIL R3
  CALL R2 1 2
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K9 ["useEffect"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE VAL R1
  NEWTABLE R6 0 1
  GETTABLEKS R7 R0 K3 ["Model"]
  SETLIST R6 R7 1 [1]
  CALL R4 2 0
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K8 ["useState"]
  GETIMPORT R5 K12 [Instance.new]
  LOADK R6 K13 ["Camera"]
  CALL R5 1 -1
  CALL R4 -1 1
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K8 ["useState"]
  GETIMPORT R6 K15 [CFrame.new]
  CALL R6 0 -1
  CALL R5 -1 2
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K16 ["useRef"]
  DUPTABLE R8 K20 [{"cframe", "focus", "model"}]
  GETIMPORT R9 K15 [CFrame.new]
  CALL R9 0 1
  SETTABLEKS R9 R8 K17 ["cframe"]
  GETIMPORT R9 K15 [CFrame.new]
  CALL R9 0 1
  SETTABLEKS R9 R8 K18 ["focus"]
  LOADNIL R9
  SETTABLEKS R9 R8 K19 ["model"]
  CALL R7 1 1
  GETTABLEKS R10 R7 K21 ["current"]
  JUMPIFNOTEQKNIL R10 [+2]
  LOADB R9 0 +1
  LOADB R9 1
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K22 ["LUAU_ANALYZE_ERROR"]
  FASTCALL2 ASSERT R9 R10 [+3]
  GETIMPORT R8 K2 [assert]
  CALL R8 2 0
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K23 ["useCallback"]
  NEWCLOSURE R9 P1
  CAPTURE UPVAL U5
  CAPTURE UPVAL U7
  CAPTURE VAL R7
  CAPTURE VAL R0
  CAPTURE VAL R4
  CAPTURE VAL R6
  NEWTABLE R10 0 1
  GETTABLEKS R11 R0 K24 ["GetCameraModifications"]
  SETLIST R10 R11 1 [1]
  CALL R8 2 1
  GETUPVAL R10 7
  CALL R10 0 1
  JUMPIFNOT R10 [+16]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K23 ["useCallback"]
  NEWCLOSURE R10 P2
  CAPTURE VAL R0
  CAPTURE VAL R4
  CAPTURE VAL R7
  CAPTURE UPVAL U8
  NEWTABLE R11 0 1
  GETTABLEKS R12 R0 K24 ["GetCameraModifications"]
  SETLIST R11 R12 1 [1]
  CALL R9 2 1
  JUMP [+1]
  LOADNIL R9
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K9 ["useEffect"]
  NEWCLOSURE R11 P3
  CAPTURE VAL R7
  CAPTURE UPVAL U7
  CAPTURE VAL R9
  CAPTURE VAL R8
  NEWTABLE R12 0 1
  GETTABLEKS R13 R0 K24 ["GetCameraModifications"]
  SETLIST R12 R13 1 [1]
  CALL R10 2 0
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K23 ["useCallback"]
  NEWCLOSURE R11 P4
  CAPTURE UPVAL U7
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE UPVAL U4
  CAPTURE VAL R4
  CAPTURE VAL R8
  CAPTURE VAL R0
  NEWTABLE R12 0 1
  GETUPVAL R14 7
  CALL R14 0 1
  JUMPIF R14 [+3]
  GETTABLEKS R13 R0 K25 ["DEPRECATED_InitialCameraPosition"]
  JUMP [+1]
  LOADNIL R13
  SETLIST R12 R13 1 [1]
  CALL R10 2 1
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K9 ["useEffect"]
  NEWCLOSURE R12 P5
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  CAPTURE VAL R8
  NEWTABLE R13 0 2
  MOVE R14 R8
  GETTABLEKS R15 R0 K26 ["ResetCameraSignal"]
  SETLIST R13 R14 2 [1]
  CALL R11 2 0
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K9 ["useEffect"]
  NEWCLOSURE R12 P6
  CAPTURE VAL R2
  NEWTABLE R13 0 1
  MOVE R14 R2
  SETLIST R13 R14 1 [1]
  CALL R11 2 0
  GETUPVAL R12 7
  CALL R12 0 1
  JUMPIFNOT R12 [+5]
  GETTABLEKS R12 R7 K21 ["current"]
  GETTABLEKS R11 R12 K18 ["focus"]
  JUMP [+6]
  GETTABLEKS R13 R0 K3 ["Model"]
  GETTABLEKS R12 R13 K4 ["PrimaryPart"]
  GETTABLEKS R11 R12 K14 ["CFrame"]
  JUMPIFNOT R2 [+75]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K27 ["createElement"]
  GETUPVAL R13 9
  DUPTABLE R14 K43 [{"Camera", "Model", "FocusPosition", "FocusDirection", "Size", "Ambient", "EnableSky", "LightColor", "LightDirection", "PanSpeedMultiplier", "ShouldClone", "RecenterModelOnUpdate", "RecenterCameraOnUpdate", "Static", "ResetCameraPosition", "OnViewModelLoaded", "ShowResetCamera"}]
  SETTABLEKS R4 R14 K13 ["Camera"]
  SETTABLEKS R2 R14 K3 ["Model"]
  GETTABLEKS R15 R11 K44 ["Position"]
  SETTABLEKS R15 R14 K28 ["FocusPosition"]
  GETTABLEKS R15 R11 K45 ["LookVector"]
  SETTABLEKS R15 R14 K29 ["FocusDirection"]
  GETIMPORT R15 K48 [UDim2.fromScale]
  LOADN R16 1
  LOADN R17 1
  CALL R15 2 1
  SETTABLEKS R15 R14 K30 ["Size"]
  GETTABLEKS R15 R1 K31 ["Ambient"]
  SETTABLEKS R15 R14 K31 ["Ambient"]
  GETTABLEKS R15 R1 K32 ["EnableSky"]
  SETTABLEKS R15 R14 K32 ["EnableSky"]
  GETTABLEKS R15 R1 K33 ["LightColor"]
  SETTABLEKS R15 R14 K33 ["LightColor"]
  GETTABLEKS R15 R1 K34 ["LightDirection"]
  SETTABLEKS R15 R14 K34 ["LightDirection"]
  GETTABLEKS R15 R1 K35 ["PanSpeedMultiplier"]
  SETTABLEKS R15 R14 K35 ["PanSpeedMultiplier"]
  LOADB R15 0
  SETTABLEKS R15 R14 K36 ["ShouldClone"]
  LOADB R15 1
  SETTABLEKS R15 R14 K37 ["RecenterModelOnUpdate"]
  LOADB R15 1
  SETTABLEKS R15 R14 K38 ["RecenterCameraOnUpdate"]
  GETTABLEKS R15 R0 K39 ["Static"]
  SETTABLEKS R15 R14 K39 ["Static"]
  GETUPVAL R16 7
  CALL R16 0 1
  JUMPIFNOT R16 [+2]
  MOVE R15 R5
  JUMP [+3]
  GETUPVAL R16 4
  GETTABLEKS R15 R16 K49 ["DEFAULT_CAMERA_ANGLE"]
  SETTABLEKS R15 R14 K40 ["ResetCameraPosition"]
  SETTABLEKS R10 R14 K41 ["OnViewModelLoaded"]
  GETTABLEKS R15 R0 K50 ["ShowResetCameraButton"]
  SETTABLEKS R15 R14 K42 ["ShowResetCamera"]
  CALL R12 2 1
  RETURN R12 1
  LOADNIL R12
  RETURN R12 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Util"]
  GETTABLEKS R4 R5 K11 ["CameraUtils"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K9 ["Src"]
  GETTABLEKS R6 R7 K10 ["Util"]
  GETTABLEKS R5 R6 K12 ["addPlatform"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R11 R0 K9 ["Src"]
  GETTABLEKS R10 R11 K13 ["Components"]
  GETTABLEKS R9 R10 K14 ["Screens"]
  GETTABLEKS R8 R9 K15 ["AvatarScreen"]
  GETTABLEKS R7 R8 K16 ["Stages"]
  GETTABLEKS R6 R7 K17 ["StageType"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K9 ["Src"]
  GETTABLEKS R8 R9 K18 ["Flags"]
  GETTABLEKS R7 R8 K19 ["getFFlagAvatarPreviewerAdjustCameraScale"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K9 ["Src"]
  GETTABLEKS R9 R10 K18 ["Flags"]
  GETTABLEKS R8 R9 K20 ["getFFlagAvatarPreviewerAutoSetup"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K9 ["Src"]
  GETTABLEKS R10 R11 K18 ["Flags"]
  GETTABLEKS R9 R10 K21 ["getFFlagAvatarPreviewerSkinToneAlphaDetection"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K9 ["Src"]
  GETTABLEKS R11 R12 K18 ["Flags"]
  GETTABLEKS R10 R11 K22 ["getFFlagAvatarPreviewerUseAnyModel"]
  CALL R9 1 1
  GETTABLEKS R10 R1 K23 ["UI"]
  GETTABLEKS R11 R1 K24 ["SharedFlags"]
  GETTABLEKS R12 R11 K25 ["getFFlagDevFrameworkBetterInit"]
  CALL R12 0 1
  JUMPIFNOT R12 [+3]
  GETTABLEKS R13 R10 K26 ["AssetRenderModel"]
  JUMP [+4]
  GETTABLEKS R14 R1 K27 ["StudioUI"]
  GETTABLEKS R13 R14 K26 ["AssetRenderModel"]
  GETTABLEKS R15 R1 K28 ["ContextServices"]
  GETTABLEKS R14 R15 K29 ["Stylizer"]
  GETIMPORT R15 K5 [require]
  GETTABLEKS R18 R0 K9 ["Src"]
  GETTABLEKS R17 R18 K10 ["Util"]
  GETTABLEKS R16 R17 K30 ["Constants"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R19 R0 K9 ["Src"]
  GETTABLEKS R18 R19 K31 ["Resources"]
  GETTABLEKS R17 R18 K32 ["Theme"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R19 R0 K9 ["Src"]
  GETTABLEKS R18 R19 K33 ["Types"]
  CALL R17 1 1
  DUPCLOSURE R18 K34 [PROTO_12]
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R14
  CAPTURE VAL R2
  CAPTURE VAL R15
  CAPTURE VAL R9
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R3
  CAPTURE VAL R13
  GETTABLEKS R19 R2 K35 ["memo"]
  MOVE R20 R18
  CALL R19 1 1
  RETURN R19 1
