PROTO_0:
  DUPTABLE R3 K3 [{"_draggerContext", "_draggerToolModel", "_initialSelectionInfo"}]
  SETTABLEKS R0 R3 K0 ["_draggerContext"]
  SETTABLEKS R1 R3 K1 ["_draggerToolModel"]
  GETTABLEKS R4 R1 K4 ["_selectionInfo"]
  SETTABLEKS R4 R3 K2 ["_initialSelectionInfo"]
  GETUPVAL R4 0
  FASTCALL2 SETMETATABLE R3 R4 [+3]
  GETIMPORT R2 K6 [setmetatable]
  CALL R2 2 1
  NAMECALL R3 R2 K7 ["update"]
  CALL R3 1 0
  RETURN R2 1

PROTO_1:
  GETIMPORT R4 K1 [Workspace]
  GETTABLEKS R3 R4 K2 ["CurrentCamera"]
  MOVE R6 R0
  NAMECALL R4 R3 K3 ["WorldToScreenPoint"]
  CALL R4 2 1
  GETTABLEKS R7 R4 K4 ["X"]
  GETTABLEKS R8 R4 K5 ["Y"]
  NAMECALL R5 R3 K6 ["ScreenPointToRay"]
  CALL R5 3 1
  GETTABLEKS R7 R5 K7 ["Origin"]
  GETTABLEKS R9 R1 K7 ["Origin"]
  GETTABLEKS R10 R2 K7 ["Origin"]
  SUB R8 R9 R10
  ADD R6 R7 R8
  GETTABLEKS R11 R5 K8 ["Direction"]
  GETTABLEKS R10 R11 K9 ["Unit"]
  GETTABLEKS R12 R1 K8 ["Direction"]
  GETTABLEKS R11 R12 K9 ["Unit"]
  ADD R9 R10 R11
  GETTABLEKS R11 R2 K8 ["Direction"]
  GETTABLEKS R10 R11 K9 ["Unit"]
  SUB R8 R9 R10
  GETTABLEKS R7 R8 K9 ["Unit"]
  SUB R9 R6 R0
  GETTABLEKS R8 R9 K9 ["Unit"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K10 ["intersectRayPlanePoint"]
  MOVE R10 R6
  MOVE R11 R7
  MOVE R12 R0
  MOVE R13 R8
  CALL R9 4 1
  GETIMPORT R10 K13 [CFrame.new]
  MOVE R11 R9
  CALL R10 1 -1
  RETURN R10 -1

PROTO_2:
  RETURN R0 0

PROTO_3:
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["_mouseStartRay"]
  JUMPIFNOTEQKNIL R1 [+10]
  GETTABLEKS R2 R0 K1 ["_draggerContext"]
  GETTABLEKS R1 R2 K2 ["vertexEditingTool"]
  NAMECALL R1 R1 K3 ["getMouseStartPosition"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K0 ["_mouseStartRay"]
  GETTABLEKS R2 R0 K4 ["_draggerToolModel"]
  GETTABLEKS R1 R2 K1 ["_draggerContext"]
  NAMECALL R1 R1 K5 ["getMouseRay"]
  CALL R1 1 1
  GETTABLEKS R3 R0 K4 ["_draggerToolModel"]
  GETTABLEKS R2 R3 K6 ["_selectionInfo"]
  NAMECALL R2 R2 K7 ["getBoundingBox"]
  CALL R2 1 1
  GETUPVAL R3 0
  GETTABLEKS R4 R2 K8 ["Position"]
  MOVE R5 R1
  GETTABLEKS R6 R0 K0 ["_mouseStartRay"]
  CALL R3 3 1
  NAMECALL R5 R2 K9 ["Inverse"]
  CALL R5 1 1
  MUL R4 R3 R5
  GETTABLEKS R5 R0 K10 ["_initialSelectionInfo"]
  NAMECALL R5 R5 K7 ["getBoundingBox"]
  CALL R5 1 2
  GETTABLEKS R8 R5 K11 ["p"]
  ADD R7 R8 R6
  SETTABLEKS R7 R0 K12 ["_baseBoundingBoxCenter"]
  NAMECALL R7 R4 K13 ["ToAxisAngle"]
  CALL R7 1 2
  SETTABLEKS R7 R0 K14 ["_axis"]
  SETTABLEKS R8 R0 K15 ["_totalAngle"]
  GETTABLEKS R8 R0 K1 ["_draggerContext"]
  GETTABLEKS R7 R8 K2 ["vertexEditingTool"]
  MOVE R9 R4
  GETTABLEKS R10 R0 K12 ["_baseBoundingBoxCenter"]
  GETTABLEKS R11 R0 K14 ["_axis"]
  GETTABLEKS R12 R0 K15 ["_totalAngle"]
  NAMECALL R7 R7 K16 ["transformSelected"]
  CALL R7 5 0
  SETTABLEKS R4 R0 K17 ["_lastAppliedTransform"]
  RETURN R0 0

PROTO_5:
  GETTABLEKS R2 R0 K0 ["_draggerContext"]
  GETTABLEKS R1 R2 K1 ["vertexEditingTool"]
  NAMECALL R1 R1 K2 ["setMouseStartPosition"]
  CALL R1 1 0
  GETTABLEKS R2 R0 K0 ["_draggerContext"]
  GETTABLEKS R1 R2 K1 ["vertexEditingTool"]
  NAMECALL R1 R1 K3 ["updateCurrentToolStateData"]
  CALL R1 1 0
  GETTABLEKS R2 R0 K0 ["_draggerContext"]
  GETTABLEKS R1 R2 K1 ["vertexEditingTool"]
  NAMECALL R1 R1 K4 ["addWaypoint"]
  CALL R1 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["LuaMeshEditingModule"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Parent"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["DraggerFramework"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K8 ["Utility"]
  GETTABLEKS R3 R4 K9 ["Math"]
  NEWTABLE R4 8 0
  SETTABLEKS R4 R4 K10 ["__index"]
  DUPCLOSURE R5 K11 [PROTO_0]
  CAPTURE VAL R4
  SETTABLEKS R5 R4 K12 ["new"]
  DUPCLOSURE R5 K13 [PROTO_1]
  CAPTURE VAL R3
  DUPCLOSURE R6 K14 [PROTO_2]
  SETTABLEKS R6 R4 K15 ["_selectedIsActive"]
  DUPCLOSURE R6 K16 [PROTO_3]
  SETTABLEKS R6 R4 K17 ["render"]
  DUPCLOSURE R6 K18 [PROTO_4]
  CAPTURE VAL R5
  SETTABLEKS R6 R4 K19 ["update"]
  DUPCLOSURE R6 K20 [PROTO_5]
  SETTABLEKS R6 R4 K21 ["destroy"]
  RETURN R4 1
