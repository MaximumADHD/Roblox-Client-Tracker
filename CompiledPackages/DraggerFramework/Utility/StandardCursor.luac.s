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
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["IsRunning"]
  CALL R0 1 1
  JUMPIFNOT R0 [+5]
  GETUPVAL R1 0
  NAMECALL R1 R1 K1 ["IsRunMode"]
  CALL R1 1 1
  NOT R0 R1
  JUMPIFNOT R0 [+7]
  GETUPVAL R0 1
  CALL R0 0 1
  JUMPIFNOT R0 [+2]
  LOADK R0 K2 ["rbxasset://textures/Cursors/KeyboardMouse/ArrowFarCursor.png"]
  RETURN R0 1
  LOADK R0 K3 ["rbxasset://textures/advCursor-default.png"]
  RETURN R0 1
  LOADK R0 K4 ["rbxasset://SystemCursors/Arrow"]
  RETURN R0 1

PROTO_2:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["IsRunning"]
  CALL R0 1 1
  JUMPIFNOT R0 [+5]
  GETUPVAL R1 0
  NAMECALL R1 R1 K1 ["IsRunMode"]
  CALL R1 1 1
  NOT R0 R1
  JUMPIFNOT R0 [+7]
  GETUPVAL R0 1
  CALL R0 0 1
  JUMPIFNOT R0 [+2]
  LOADK R0 K2 ["rbxasset://textures/Cursors/DragDetector/HoverCursor.png"]
  RETURN R0 1
  LOADK R0 K3 ["rbxasset://textures/advCursor-openedHand.png"]
  RETURN R0 1
  LOADK R0 K4 ["rbxasset://SystemCursors/OpenHand"]
  RETURN R0 1

PROTO_3:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["IsRunning"]
  CALL R0 1 1
  JUMPIFNOT R0 [+5]
  GETUPVAL R1 0
  NAMECALL R1 R1 K1 ["IsRunMode"]
  CALL R1 1 1
  NOT R0 R1
  JUMPIFNOT R0 [+7]
  GETUPVAL R0 1
  CALL R0 0 1
  JUMPIFNOT R0 [+2]
  LOADK R0 K2 ["rbxasset://textures/Cursors/DragDetector/ActivatedCursor.png"]
  RETURN R0 1
  LOADK R0 K3 ["rbxasset://textures/advClosed-hand.png"]
  RETURN R0 1
  LOADK R0 K4 ["rbxasset://SystemCursors/ClosedHand"]
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["RunService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R3 K5 [script]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R4 R1 K9 ["Flags"]
  GETTABLEKS R3 R4 K10 ["getFFlagImprovedCursors"]
  CALL R2 1 1
  NEWTABLE R3 4 0
  DUPCLOSURE R4 K11 [PROTO_0]
  CAPTURE VAL R0
  DUPCLOSURE R5 K12 [PROTO_1]
  CAPTURE VAL R0
  CAPTURE VAL R2
  SETTABLEKS R5 R3 K13 ["getArrow"]
  DUPCLOSURE R5 K14 [PROTO_2]
  CAPTURE VAL R0
  CAPTURE VAL R2
  SETTABLEKS R5 R3 K15 ["getOpenHand"]
  DUPCLOSURE R5 K16 [PROTO_3]
  CAPTURE VAL R0
  CAPTURE VAL R2
  SETTABLEKS R5 R3 K17 ["getClosedHand"]
  RETURN R3 1
