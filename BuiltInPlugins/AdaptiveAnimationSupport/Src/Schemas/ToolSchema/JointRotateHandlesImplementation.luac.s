PROTO_0:
  DUPTABLE R5 K8 [{"_draggerContext", "_applyJointTransform", "_hrd", "_symmetryOn", "_initialTransform", "_initialJoint", "_initialWorldCFrame", "isDragging"}]
  SETTABLEKS R0 R5 K0 ["_draggerContext"]
  SETTABLEKS R1 R5 K1 ["_applyJointTransform"]
  SETTABLEKS R2 R5 K2 ["_hrd"]
  SETTABLEKS R3 R5 K3 ["_symmetryOn"]
  LOADNIL R6
  SETTABLEKS R6 R5 K4 ["_initialTransform"]
  LOADNIL R6
  SETTABLEKS R6 R5 K5 ["_initialJoint"]
  LOADNIL R6
  SETTABLEKS R6 R5 K6 ["_initialWorldCFrame"]
  LOADB R6 0
  SETTABLEKS R6 R5 K7 ["isDragging"]
  GETUPVAL R6 0
  FASTCALL2 SETMETATABLE R5 R6 [+3]
  GETIMPORT R4 K10 [setmetatable]
  CALL R4 2 1
  RETURN R4 1

PROTO_1:
  LOADB R3 1
  SETTABLEKS R3 R0 K0 ["isDragging"]
  LENGTH R3 R1
  JUMPIFNOTEQKN R3 K1 [0] [+7]
  GETIMPORT R3 K4 [CFrame.new]
  CALL R3 0 1
  SETTABLEKS R3 R0 K5 ["_initialTransform"]
  RETURN R0 0
  GETTABLEN R3 R1 1
  SETTABLEKS R3 R0 K6 ["_initialJoint"]
  JUMPIFNOT R2 [+27]
  GETTABLEKS R3 R2 K7 ["Get"]
  JUMPIFNOT R3 [+24]
  NAMECALL R3 R2 K7 ["Get"]
  CALL R3 1 1
  MOVE R4 R3
  JUMPIFNOT R4 [+1]
  GETTABLEN R4 R3 1
  JUMPIFNOT R4 [+8]
  GETTABLEKS R5 R4 K8 ["Transform"]
  JUMPIFNOT R5 [+5]
  GETTABLEKS R5 R4 K8 ["Transform"]
  SETTABLEKS R5 R0 K9 ["_initialWorldCFrame"]
  JUMP [+17]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K10 ["getGlobalCoordinateFrame"]
  GETTABLEKS R6 R0 K6 ["_initialJoint"]
  CALL R5 1 1
  SETTABLEKS R5 R0 K9 ["_initialWorldCFrame"]
  JUMP [+8]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K10 ["getGlobalCoordinateFrame"]
  GETTABLEKS R4 R0 K6 ["_initialJoint"]
  CALL R3 1 1
  SETTABLEKS R3 R0 K9 ["_initialWorldCFrame"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K11 ["getJointTransform"]
  GETTABLEKS R4 R0 K6 ["_initialJoint"]
  CALL R3 1 1
  JUMPIF R3 [+2]
  GETIMPORT R3 K13 [CFrame.identity]
  SETTABLEKS R3 R0 K5 ["_initialTransform"]
  GETIMPORT R3 K13 [CFrame.identity]
  GETTABLEKS R4 R0 K14 ["_hrd"]
  JUMPIFNOT R4 [+30]
  GETUPVAL R7 0
  GETTABLEKS R4 R7 K15 ["allRigLabels"]
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETTABLEKS R9 R0 K14 ["_hrd"]
  MOVE R11 R8
  NAMECALL R9 R9 K16 ["GetJoint"]
  CALL R9 2 1
  GETTABLEKS R10 R0 K6 ["_initialJoint"]
  JUMPIFNOTEQ R9 R10 [+13]
  GETTABLEKS R9 R0 K14 ["_hrd"]
  GETTABLEKS R11 R8 K17 ["Name"]
  NAMECALL R9 R9 K18 ["GetTposeAdjustment"]
  CALL R9 2 1
  JUMPIF R9 [+2]
  GETIMPORT R9 K13 [CFrame.identity]
  MOVE R3 R9
  JUMP [+2]
  FORGLOOP R4 2 [-23]
  SETTABLEKS R3 R0 K19 ["_initialTPoseAdjustment"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R2 R0 K0 ["_initialJoint"]
  JUMPIF R2 [+1]
  RETURN R1 1
  GETIMPORT R2 K3 [CFrame.fromMatrix]
  FASTCALL VECTOR [+2]
  GETIMPORT R3 K6 [Vector3.new]
  CALL R3 0 1
  GETTABLEKS R4 R1 K7 ["XVector"]
  GETTABLEKS R5 R1 K8 ["YVector"]
  GETTABLEKS R6 R1 K9 ["ZVector"]
  CALL R2 4 1
  GETTABLEKS R3 R0 K10 ["_applyJointTransform"]
  JUMPIFNOT R3 [+11]
  GETTABLEKS R3 R0 K10 ["_applyJointTransform"]
  GETTABLEKS R4 R0 K0 ["_initialJoint"]
  MOVE R5 R2
  GETTABLEKS R6 R0 K11 ["_initialWorldCFrame"]
  GETTABLEKS R7 R0 K12 ["_initialTPoseAdjustment"]
  LOADB R8 1
  CALL R3 5 0
  RETURN R1 1

PROTO_3:
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["isDragging"]
  GETTABLEKS R1 R0 K1 ["_initialJoint"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K2 ["_hrd"]
  JUMPIFNOT R1 [+5]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["addTPoseWaypoint"]
  LOADK R2 K4 ["Bone Rotate"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K5 ["_initialTransform"]
  LOADNIL R1
  SETTABLEKS R1 R0 K1 ["_initialJoint"]
  LOADNIL R1
  SETTABLEKS R1 R0 K6 ["_initialWorldCFrame"]
  RETURN R0 0

PROTO_4:
  LOADK R4 K0 [{0.1, 0.1, 0.1}]
  LOADK R5 K1 [{100, 100, 100}]
  RETURN R4 2

PROTO_5:
  LOADNIL R2
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AdaptiveAnimationSupport"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Utils"]
  GETTABLEKS R2 R3 K8 ["UndoUtils"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["AdaptiveAnimationTools"]
  CALL R2 1 1
  NEWTABLE R3 8 0
  SETTABLEKS R3 R3 K11 ["__index"]
  DUPCLOSURE R4 K12 [PROTO_0]
  CAPTURE VAL R3
  SETTABLEKS R4 R3 K13 ["new"]
  DUPCLOSURE R4 K14 [PROTO_1]
  CAPTURE VAL R2
  SETTABLEKS R4 R3 K15 ["beginDrag"]
  DUPCLOSURE R4 K16 [PROTO_2]
  SETTABLEKS R4 R3 K17 ["updateDrag"]
  DUPCLOSURE R4 K18 [PROTO_3]
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K19 ["endDrag"]
  DUPCLOSURE R4 K20 [PROTO_4]
  SETTABLEKS R4 R3 K21 ["getMinMaxSizes"]
  DUPCLOSURE R4 K22 [PROTO_5]
  SETTABLEKS R4 R3 K23 ["render"]
  RETURN R3 1
