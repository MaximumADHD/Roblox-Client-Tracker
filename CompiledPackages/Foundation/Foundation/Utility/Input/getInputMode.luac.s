PROTO_0:
  GETUPVAL R2 0
  GETTABLE R1 R2 R0
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Foundation"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Utility"]
  GETTABLEKS R3 R4 K7 ["Input"]
  GETTABLEKS R2 R3 K8 ["InputMode"]
  CALL R1 1 1
  NEWTABLE R2 32 0
  GETIMPORT R3 K12 [Enum.UserInputType.MouseButton1]
  GETTABLEKS R4 R1 K13 ["Pointer"]
  SETTABLE R4 R2 R3
  GETIMPORT R3 K15 [Enum.UserInputType.MouseButton2]
  GETTABLEKS R4 R1 K13 ["Pointer"]
  SETTABLE R4 R2 R3
  GETIMPORT R3 K17 [Enum.UserInputType.MouseButton3]
  GETTABLEKS R4 R1 K13 ["Pointer"]
  SETTABLE R4 R2 R3
  GETIMPORT R3 K19 [Enum.UserInputType.MouseMovement]
  GETTABLEKS R4 R1 K13 ["Pointer"]
  SETTABLE R4 R2 R3
  GETIMPORT R3 K21 [Enum.UserInputType.MouseWheel]
  GETTABLEKS R4 R1 K13 ["Pointer"]
  SETTABLE R4 R2 R3
  GETIMPORT R3 K23 [Enum.UserInputType.None]
  GETTABLEKS R4 R1 K13 ["Pointer"]
  SETTABLE R4 R2 R3
  GETIMPORT R3 K25 [Enum.UserInputType.TextInput]
  GETTABLEKS R4 R1 K13 ["Pointer"]
  SETTABLE R4 R2 R3
  GETIMPORT R3 K27 [Enum.UserInputType.Gamepad1]
  GETTABLEKS R4 R1 K28 ["Directional"]
  SETTABLE R4 R2 R3
  GETIMPORT R3 K30 [Enum.UserInputType.Gamepad2]
  GETTABLEKS R4 R1 K28 ["Directional"]
  SETTABLE R4 R2 R3
  GETIMPORT R3 K32 [Enum.UserInputType.Gamepad3]
  GETTABLEKS R4 R1 K28 ["Directional"]
  SETTABLE R4 R2 R3
  GETIMPORT R3 K34 [Enum.UserInputType.Gamepad4]
  GETTABLEKS R4 R1 K28 ["Directional"]
  SETTABLE R4 R2 R3
  GETIMPORT R3 K36 [Enum.UserInputType.Gamepad5]
  GETTABLEKS R4 R1 K28 ["Directional"]
  SETTABLE R4 R2 R3
  GETIMPORT R3 K38 [Enum.UserInputType.Gamepad6]
  GETTABLEKS R4 R1 K28 ["Directional"]
  SETTABLE R4 R2 R3
  GETIMPORT R3 K40 [Enum.UserInputType.Gamepad7]
  GETTABLEKS R4 R1 K28 ["Directional"]
  SETTABLE R4 R2 R3
  GETIMPORT R3 K42 [Enum.UserInputType.Gamepad8]
  GETTABLEKS R4 R1 K28 ["Directional"]
  SETTABLE R4 R2 R3
  GETIMPORT R3 K44 [Enum.UserInputType.Keyboard]
  GETTABLEKS R4 R1 K28 ["Directional"]
  SETTABLE R4 R2 R3
  GETIMPORT R3 K46 [Enum.UserInputType.Touch]
  GETTABLEKS R4 R1 K45 ["Touch"]
  SETTABLE R4 R2 R3
  DUPCLOSURE R3 K47 [PROTO_0]
  CAPTURE VAL R2
  RETURN R3 1
