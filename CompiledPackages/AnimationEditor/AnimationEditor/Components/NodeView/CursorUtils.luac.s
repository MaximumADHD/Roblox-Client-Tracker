PROTO_0:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["IsRunning"]
  CALL R0 1 1
  JUMPIFNOT R0 [+5]
  GETUPVAL R1 0
  NAMECALL R1 R1 K1 ["IsRunMode"]
  CALL R1 1 1
  NOT R0 R1
  RETURN R0 1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_isPlaySolo"]
  CALL R0 0 1
  JUMPIFNOT R0 [+7]
  GETUPVAL R0 1
  CALL R0 0 1
  JUMPIFNOT R0 [+2]
  LOADK R0 K1 ["rbxasset://textures/Cursors/KeyboardMouse/ArrowFarCursor.png"]
  RETURN R0 1
  LOADK R0 K2 ["rbxasset://textures/advCursor-default.png"]
  RETURN R0 1
  LOADK R0 K3 ["rbxasset://SystemCursors/Arrow"]
  RETURN R0 1

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_isPlaySolo"]
  CALL R0 0 1
  JUMPIFNOT R0 [+7]
  GETUPVAL R0 1
  CALL R0 0 1
  JUMPIFNOT R0 [+2]
  LOADK R0 K1 ["rbxasset://textures/Cursors/DragDetector/HoverCursor.png"]
  RETURN R0 1
  LOADK R0 K2 ["rbxasset://textures/advCursor-openedHand.png"]
  RETURN R0 1
  LOADK R0 K3 ["rbxasset://SystemCursors/OpenHand"]
  RETURN R0 1

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_isPlaySolo"]
  CALL R0 0 1
  JUMPIFNOT R0 [+7]
  GETUPVAL R0 1
  CALL R0 0 1
  JUMPIFNOT R0 [+2]
  LOADK R0 K1 ["rbxasset://textures/Cursors/DragDetector/ActivatedCursor.png"]
  RETURN R0 1
  LOADK R0 K2 ["rbxasset://textures/advClosed-hand.png"]
  RETURN R0 1
  LOADK R0 K3 ["rbxasset://SystemCursors/ClosedHand"]
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["RunService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [script]
  LOADK R3 K6 ["AnimationEditor"]
  NAMECALL R1 R1 K7 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R1 K10 ["Flags"]
  GETTABLEKS R3 R4 K11 ["getFFlagImprovedCursors"]
  CALL R2 1 1
  NEWTABLE R3 4 0
  DUPCLOSURE R4 K12 [PROTO_0]
  CAPTURE VAL R0
  SETTABLEKS R4 R3 K13 ["_isPlaySolo"]
  DUPCLOSURE R4 K14 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R2
  SETTABLEKS R4 R3 K15 ["getArrow"]
  DUPCLOSURE R4 K16 [PROTO_2]
  CAPTURE VAL R3
  CAPTURE VAL R2
  SETTABLEKS R4 R3 K17 ["getOpenHand"]
  DUPCLOSURE R4 K18 [PROTO_3]
  CAPTURE VAL R3
  CAPTURE VAL R2
  SETTABLEKS R4 R3 K19 ["getClosedHand"]
  RETURN R3 1
