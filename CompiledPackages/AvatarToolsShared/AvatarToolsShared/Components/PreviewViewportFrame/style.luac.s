MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R2 R0 K5 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K6 ["Style"]
  GETTABLEKS R2 R3 K7 ["StyleKey"]
  DUPTABLE R3 K20 [{"BackgroundColor", "PopoutButtonSize", "PopoutButtonOffset", "IconSize", "Icon", "RecenterIcon", "LayerOrderManagerSize", "LayerOrderManagerPosition", "LayerOrderManagerAnchorPoint", "PreviewAvatarWheelSize", "PreviewAvatarWheelPosition", "PreviewAvatarWheelAnchorPoint"}]
  GETTABLEKS R4 R2 K21 ["SubBackground"]
  SETTABLEKS R4 R3 K8 ["BackgroundColor"]
  LOADN R4 48
  SETTABLEKS R4 R3 K9 ["PopoutButtonSize"]
  LOADN R4 12
  SETTABLEKS R4 R3 K10 ["PopoutButtonOffset"]
  LOADN R4 28
  SETTABLEKS R4 R3 K11 ["IconSize"]
  LOADK R4 K22 ["rbxasset://textures/AvatarToolsShared/Preview Undock.png"]
  SETTABLEKS R4 R3 K12 ["Icon"]
  LOADK R4 K23 ["rbxasset://textures/LayeredClothingEditor/WorkspaceIcons/Center Camera to Mannequin.png"]
  SETTABLEKS R4 R3 K13 ["RecenterIcon"]
  GETIMPORT R4 K26 [UDim2.fromOffset]
  LOADN R5 42
  LOADN R6 210
  CALL R4 2 1
  SETTABLEKS R4 R3 K14 ["LayerOrderManagerSize"]
  GETIMPORT R4 K28 [UDim2.new]
  LOADN R5 1
  LOADN R6 246
  LOADN R7 0
  LOADN R8 10
  CALL R4 4 1
  SETTABLEKS R4 R3 K15 ["LayerOrderManagerPosition"]
  GETIMPORT R4 K30 [Vector2.new]
  LOADN R5 1
  LOADN R6 0
  CALL R4 2 1
  SETTABLEKS R4 R3 K16 ["LayerOrderManagerAnchorPoint"]
  GETIMPORT R4 K26 [UDim2.fromOffset]
  LOADN R5 144
  LOADN R6 48
  CALL R4 2 1
  SETTABLEKS R4 R3 K17 ["PreviewAvatarWheelSize"]
  GETIMPORT R4 K28 [UDim2.new]
  LOADK R5 K31 [0.5]
  LOADN R6 0
  LOADN R7 1
  LOADN R8 246
  CALL R4 4 1
  SETTABLEKS R4 R3 K18 ["PreviewAvatarWheelPosition"]
  GETIMPORT R4 K30 [Vector2.new]
  LOADK R5 K31 [0.5]
  LOADN R6 1
  CALL R4 2 1
  SETTABLEKS R4 R3 K19 ["PreviewAvatarWheelAnchorPoint"]
  RETURN R3 1
