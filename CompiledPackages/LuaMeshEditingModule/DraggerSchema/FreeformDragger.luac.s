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
  GETTABLEKS R3 R0 K7 ["vertexEditingTool"]
  NAMECALL R3 R3 K8 ["getPointLocationData"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K9 ["_initialPointLocationData"]
  NAMECALL R3 R2 K10 ["update"]
  CALL R3 1 0
  RETURN R2 1

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["CurrentCamera"]
  MOVE R6 R0
  NAMECALL R4 R3 K1 ["WorldToScreenPoint"]
  CALL R4 2 1
  GETTABLEKS R7 R4 K2 ["X"]
  GETTABLEKS R8 R4 K3 ["Y"]
  NAMECALL R5 R3 K4 ["ScreenPointToRay"]
  CALL R5 3 1
  GETTABLEKS R7 R5 K5 ["Origin"]
  GETTABLEKS R9 R1 K5 ["Origin"]
  GETTABLEKS R10 R2 K5 ["Origin"]
  SUB R8 R9 R10
  ADD R6 R7 R8
  GETTABLEKS R11 R5 K6 ["Direction"]
  GETTABLEKS R10 R11 K7 ["Unit"]
  GETTABLEKS R12 R1 K6 ["Direction"]
  GETTABLEKS R11 R12 K7 ["Unit"]
  ADD R9 R10 R11
  GETTABLEKS R11 R2 K6 ["Direction"]
  GETTABLEKS R10 R11 K7 ["Unit"]
  SUB R8 R9 R10
  GETTABLEKS R7 R8 K7 ["Unit"]
  SUB R9 R6 R0
  GETTABLEKS R8 R9 K7 ["Unit"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K8 ["intersectRayPlanePoint"]
  MOVE R10 R6
  MOVE R11 R7
  MOVE R12 R0
  MOVE R13 R8
  CALL R9 4 1
  GETIMPORT R10 K11 [CFrame.new]
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
  NAMECALL R1 R1 K3 ["getMouseStartRay"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K0 ["_mouseStartRay"]
  GETTABLEKS R1 R0 K0 ["_mouseStartRay"]
  JUMPIFNOTEQKNIL R1 [+2]
  RETURN R0 0
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
  GETTABLEKS R9 R0 K16 ["_initialPointLocationData"]
  MOVE R10 R4
  GETTABLEKS R11 R0 K12 ["_baseBoundingBoxCenter"]
  GETTABLEKS R12 R0 K14 ["_axis"]
  GETTABLEKS R13 R0 K15 ["_totalAngle"]
  NAMECALL R7 R7 K17 ["transformSelected"]
  CALL R7 6 0
  SETTABLEKS R4 R0 K18 ["_lastAppliedTransform"]
  RETURN R0 0

PROTO_5:
  GETTABLEKS R2 R0 K0 ["_draggerContext"]
  GETTABLEKS R1 R2 K1 ["vertexEditingTool"]
  LOADNIL R3
  NAMECALL R1 R1 K2 ["setMouseStartRay"]
  CALL R1 2 0
  GETTABLEKS R1 R0 K3 ["_initialPointLocationData"]
  JUMPIFNOT R1 [+9]
  GETTABLEKS R2 R0 K0 ["_draggerContext"]
  GETTABLEKS R1 R2 K1 ["vertexEditingTool"]
  GETTABLEKS R3 R0 K3 ["_initialPointLocationData"]
  NAMECALL R1 R1 K4 ["addWaypoint"]
  CALL R1 2 0
  LOADNIL R1
  SETTABLEKS R1 R0 K3 ["_initialPointLocationData"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["Workspace"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [script]
  LOADK R3 K6 ["LuaMeshEditingModule"]
  NAMECALL R1 R1 K7 ["FindFirstAncestor"]
  CALL R1 2 1
  GETTABLEKS R2 R1 K8 ["Parent"]
  GETIMPORT R3 K10 [require]
  GETTABLEKS R4 R2 K11 ["DraggerFramework"]
  CALL R3 1 1
  GETTABLEKS R5 R3 K12 ["Utility"]
  GETTABLEKS R4 R5 K13 ["Math"]
  NEWTABLE R5 8 0
  SETTABLEKS R5 R5 K14 ["__index"]
  DUPCLOSURE R6 K15 [PROTO_0]
  CAPTURE VAL R5
  SETTABLEKS R6 R5 K16 ["new"]
  DUPCLOSURE R6 K17 [PROTO_1]
  CAPTURE VAL R0
  CAPTURE VAL R4
  DUPCLOSURE R7 K18 [PROTO_2]
  SETTABLEKS R7 R5 K19 ["_selectedIsActive"]
  DUPCLOSURE R7 K20 [PROTO_3]
  SETTABLEKS R7 R5 K21 ["render"]
  DUPCLOSURE R7 K22 [PROTO_4]
  CAPTURE VAL R6
  SETTABLEKS R7 R5 K23 ["update"]
  DUPCLOSURE R7 K24 [PROTO_5]
  SETTABLEKS R7 R5 K25 ["destroy"]
  RETURN R5 1
