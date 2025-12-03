PROTO_0:
  DUPTABLE R5 K8 [{"_draggerContext", "_applyBoneTransform", "_hrd", "_symmetryOn", "_initialTransform", "_initialBone", "_initialWorldCFrame", "isDragging"}]
  SETTABLEKS R0 R5 K0 ["_draggerContext"]
  SETTABLEKS R1 R5 K1 ["_applyBoneTransform"]
  SETTABLEKS R2 R5 K2 ["_hrd"]
  SETTABLEKS R3 R5 K3 ["_symmetryOn"]
  LOADNIL R6
  SETTABLEKS R6 R5 K4 ["_initialTransform"]
  LOADNIL R6
  SETTABLEKS R6 R5 K5 ["_initialBone"]
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
  GETTABLEKS R4 R3 K6 ["_bone"]
  SETTABLEKS R4 R0 K7 ["_initialBone"]
  GETTABLEKS R4 R0 K7 ["_initialBone"]
  LOADK R6 K8 ["Motor6D"]
  NAMECALL R4 R4 K9 ["IsA"]
  CALL R4 2 1
  JUMPIFNOT R4 [+24]
  GETTABLEKS R4 R0 K7 ["_initialBone"]
  GETTABLEKS R5 R4 K10 ["Part0"]
  JUMPIFNOT R5 [+10]
  GETTABLEKS R7 R4 K10 ["Part0"]
  GETTABLEKS R6 R7 K2 ["CFrame"]
  GETTABLEKS R7 R4 K11 ["C0"]
  MUL R5 R6 R7
  SETTABLEKS R5 R0 K12 ["_initialWorldCFrame"]
  JUMP [+4]
  GETTABLEKS R5 R4 K11 ["C0"]
  SETTABLEKS R5 R0 K12 ["_initialWorldCFrame"]
  GETTABLEKS R5 R4 K11 ["C0"]
  SETTABLEKS R5 R0 K5 ["_initialTransform"]
  RETURN R0 0
  GETTABLEKS R4 R0 K7 ["_initialBone"]
  LOADK R6 K13 ["Bone"]
  NAMECALL R4 R4 K9 ["IsA"]
  CALL R4 2 1
  JUMPIFNOT R4 [+11]
  GETTABLEKS R4 R0 K7 ["_initialBone"]
  GETTABLEKS R5 R4 K14 ["TransformedWorldCFrame"]
  SETTABLEKS R5 R0 K12 ["_initialWorldCFrame"]
  GETTABLEKS R5 R4 K15 ["Transform"]
  SETTABLEKS R5 R0 K5 ["_initialTransform"]
  RETURN R0 0
  GETIMPORT R4 K4 [CFrame.new]
  CALL R4 0 1
  SETTABLEKS R4 R0 K12 ["_initialWorldCFrame"]
  GETIMPORT R4 K17 [CFrame.identity]
  SETTABLEKS R4 R0 K5 ["_initialTransform"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R2 R0 K0 ["_applyBoneTransform"]
  JUMPIFNOT R2 [+10]
  GETTABLEKS R2 R0 K0 ["_applyBoneTransform"]
  GETTABLEKS R3 R0 K1 ["_initialBone"]
  MOVE R4 R1
  GETTABLEKS R5 R0 K2 ["_initialWorldCFrame"]
  GETTABLEKS R6 R0 K3 ["_initialTransform"]
  CALL R2 4 0
  GETTABLEKS R2 R0 K4 ["_draggerContext"]
  JUMPIFNOT R2 [+19]
  GETTABLEKS R3 R0 K4 ["_draggerContext"]
  GETTABLEKS R2 R3 K5 ["_selection"]
  JUMPIFNOT R2 [+14]
  GETTABLEKS R2 R0 K2 ["_initialWorldCFrame"]
  JUMPIFNOT R2 [+11]
  GETTABLEKS R3 R0 K2 ["_initialWorldCFrame"]
  MUL R2 R1 R3
  GETTABLEKS R4 R0 K4 ["_draggerContext"]
  GETTABLEKS R3 R4 K5 ["_selection"]
  MOVE R5 R2
  NAMECALL R3 R3 K6 ["SetTransform"]
  CALL R3 2 0
  RETURN R1 1

PROTO_3:
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["isDragging"]
  GETTABLEKS R1 R0 K1 ["_initialBone"]
  JUMPIFNOT R1 [+17]
  GETTABLEKS R1 R0 K2 ["_draggerContext"]
  JUMPIFNOT R1 [+14]
  GETTABLEKS R2 R0 K2 ["_draggerContext"]
  GETTABLEKS R1 R2 K3 ["_selection"]
  JUMPIFNOT R1 [+9]
  GETTABLEKS R2 R0 K2 ["_draggerContext"]
  GETTABLEKS R1 R2 K3 ["_selection"]
  GETTABLEKS R3 R0 K1 ["_initialBone"]
  NAMECALL R1 R1 K4 ["SetJoint"]
  CALL R1 2 0
  GETTABLEKS R1 R0 K1 ["_initialBone"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K5 ["_hrd"]
  JUMPIFNOT R1 [+5]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["addTPoseWaypoint"]
  LOADK R2 K7 ["Bone Transform"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K8 ["_initialTransform"]
  LOADNIL R1
  SETTABLEKS R1 R0 K1 ["_initialBone"]
  LOADNIL R1
  SETTABLEKS R1 R0 K9 ["_initialWorldCFrame"]
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
  NEWTABLE R2 8 0
  SETTABLEKS R2 R2 K9 ["__index"]
  DUPCLOSURE R3 K10 [PROTO_0]
  CAPTURE VAL R2
  SETTABLEKS R3 R2 K11 ["new"]
  DUPCLOSURE R3 K12 [PROTO_1]
  SETTABLEKS R3 R2 K13 ["beginDrag"]
  DUPCLOSURE R3 K14 [PROTO_2]
  SETTABLEKS R3 R2 K15 ["updateDrag"]
  DUPCLOSURE R3 K16 [PROTO_3]
  CAPTURE VAL R1
  SETTABLEKS R3 R2 K17 ["endDrag"]
  DUPCLOSURE R3 K18 [PROTO_4]
  SETTABLEKS R3 R2 K19 ["getMinMaxSizes"]
  DUPCLOSURE R3 K20 [PROTO_5]
  SETTABLEKS R3 R2 K21 ["render"]
  RETURN R2 1
