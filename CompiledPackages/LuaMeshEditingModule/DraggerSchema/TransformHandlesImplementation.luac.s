PROTO_0:
  DUPTABLE R2 K1 [{"_draggerContext"}]
  SETTABLEKS R0 R2 K0 ["_draggerContext"]
  GETUPVAL R3 0
  FASTCALL2 SETMETATABLE R2 R3 [+3]
  GETIMPORT R1 K3 [setmetatable]
  CALL R1 2 1
  RETURN R1 1

PROTO_1:
  LOADN R1 0
  SETTABLEKS R1 R0 K0 ["_totalAngle"]
  LOADNIL R1
  SETTABLEKS R1 R0 K1 ["_previousAngle"]
  LOADNIL R1
  SETTABLEKS R1 R0 K2 ["_axis"]
  LOADNIL R1
  SETTABLEKS R1 R0 K3 ["_previousAxis"]
  LOADN R1 1
  SETTABLEKS R1 R0 K4 ["_sign"]
  RETURN R0 0

PROTO_2:
  NAMECALL R2 R1 K0 ["ToAxisAngle"]
  CALL R2 1 2
  JUMPIFEQKN R3 K1 [0] [+6]
  GETTABLEKS R4 R0 K2 ["_axis"]
  JUMPIF R4 [+2]
  SETTABLEKS R2 R0 K2 ["_axis"]
  GETTABLEKS R4 R0 K3 ["_previousAngle"]
  JUMPIFNOT R4 [+74]
  LOADB R4 0
  GETTABLEKS R5 R0 K4 ["_previousAxis"]
  JUMPIFNOT R5 [+10]
  GETTABLEKS R5 R0 K4 ["_previousAxis"]
  MOVE R7 R2
  NAMECALL R5 R5 K5 ["Dot"]
  CALL R5 2 1
  LOADN R6 0
  JUMPIFLT R5 R6 [+2]
  LOADB R4 1
  GETTABLEKS R6 R0 K2 ["_axis"]
  MOVE R8 R2
  NAMECALL R6 R6 K5 ["Dot"]
  CALL R6 2 1
  LOADN R7 0
  JUMPIFLT R6 R7 [+3]
  LOADN R5 255
  JUMP [+1]
  LOADN R5 1
  SETTABLEKS R5 R0 K6 ["_sign"]
  JUMPIFNOT R4 [+33]
  FASTCALL1 MATH_DEG R3 [+3]
  MOVE R6 R3
  GETIMPORT R5 K9 [math.deg]
  CALL R5 1 1
  LOADN R6 90
  JUMPIFNOTLE R6 R5 [+14]
  GETTABLEKS R5 R0 K10 ["_totalAngle"]
  GETTABLEKS R7 R0 K6 ["_sign"]
  GETTABLEKS R10 R0 K3 ["_previousAngle"]
  SUBRK R9 R11 K10 ["_totalAngle"]
  SUB R8 R9 R3
  MUL R6 R7 R8
  SUB R5 R5 R6
  SETTABLEKS R5 R0 K10 ["_totalAngle"]
  JUMP [+26]
  GETTABLEKS R5 R0 K10 ["_totalAngle"]
  GETTABLEKS R7 R0 K6 ["_sign"]
  GETTABLEKS R9 R0 K3 ["_previousAngle"]
  ADD R8 R9 R3
  MUL R6 R7 R8
  ADD R5 R5 R6
  SETTABLEKS R5 R0 K10 ["_totalAngle"]
  JUMP [+14]
  GETTABLEKS R5 R0 K10 ["_totalAngle"]
  GETTABLEKS R7 R0 K6 ["_sign"]
  GETTABLEKS R9 R0 K3 ["_previousAngle"]
  SUB R8 R3 R9
  MUL R6 R7 R8
  ADD R5 R5 R6
  SETTABLEKS R5 R0 K10 ["_totalAngle"]
  JUMP [+2]
  SETTABLEKS R3 R0 K12 ["totalAngle"]
  GETTABLEKS R4 R0 K2 ["_axis"]
  JUMPIFNOT R4 [+4]
  SETTABLEKS R3 R0 K3 ["_previousAngle"]
  SETTABLEKS R2 R0 K4 ["_previousAxis"]
  RETURN R0 0

PROTO_3:
  NAMECALL R3 R2 K0 ["getBoundingBox"]
  CALL R3 1 2
  GETTABLEKS R6 R3 K1 ["p"]
  ADD R5 R6 R4
  SETTABLEKS R5 R0 K2 ["_baseBoundingBoxCenter"]
  GETTABLEKS R6 R0 K3 ["_draggerContext"]
  GETTABLEKS R5 R6 K4 ["vertexEditingTool"]
  SETTABLEKS R5 R0 K5 ["_vertexEditingTool"]
  GETTABLEKS R5 R0 K5 ["_vertexEditingTool"]
  NAMECALL R5 R5 K6 ["getPointLocationData"]
  CALL R5 1 1
  SETTABLEKS R5 R0 K7 ["_initialPointLocationData"]
  NAMECALL R5 R0 K8 ["_resetAxisAngleData"]
  CALL R5 1 0
  RETURN R0 0

PROTO_4:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["_updateAxisAngleData"]
  CALL R2 2 0
  GETTABLEKS R2 R0 K1 ["_vertexEditingTool"]
  GETTABLEKS R4 R0 K2 ["_initialPointLocationData"]
  MOVE R5 R1
  GETTABLEKS R6 R0 K3 ["_baseBoundingBoxCenter"]
  GETTABLEKS R7 R0 K4 ["_axis"]
  GETTABLEKS R8 R0 K5 ["_totalAngle"]
  NAMECALL R2 R2 K6 ["transformSelected"]
  CALL R2 6 0
  RETURN R1 1

PROTO_5:
  GETTABLEKS R1 R0 K0 ["_initialPointLocationData"]
  JUMPIFNOT R1 [+7]
  GETTABLEKS R1 R0 K1 ["_vertexEditingTool"]
  GETTABLEKS R3 R0 K0 ["_initialPointLocationData"]
  NAMECALL R1 R1 K2 ["addWaypoint"]
  CALL R1 2 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["_initialPointLocationData"]
  LOADNIL R1
  SETTABLEKS R1 R0 K1 ["_vertexEditingTool"]
  LOADNIL R1
  SETTABLEKS R1 R0 K3 ["_baseBoundingBoxCenter"]
  NAMECALL R1 R0 K4 ["_resetAxisAngleData"]
  CALL R1 1 0
  RETURN R0 0

PROTO_6:
  LOADNIL R2
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 8 0
  SETTABLEKS R0 R0 K0 ["__index"]
  DUPCLOSURE R1 K1 [PROTO_0]
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K2 ["new"]
  DUPCLOSURE R1 K3 [PROTO_1]
  SETTABLEKS R1 R0 K4 ["_resetAxisAngleData"]
  DUPCLOSURE R1 K5 [PROTO_2]
  SETTABLEKS R1 R0 K6 ["_updateAxisAngleData"]
  DUPCLOSURE R1 K7 [PROTO_3]
  SETTABLEKS R1 R0 K8 ["beginDrag"]
  DUPCLOSURE R1 K9 [PROTO_4]
  SETTABLEKS R1 R0 K10 ["updateDrag"]
  DUPCLOSURE R1 K11 [PROTO_5]
  SETTABLEKS R1 R0 K12 ["endDrag"]
  DUPCLOSURE R1 K13 [PROTO_6]
  SETTABLEKS R1 R0 K14 ["render"]
  RETURN R0 1
