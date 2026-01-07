PROTO_0:
  NEWTABLE R2 0 0
  GETIMPORT R3 K2 [RaycastParams.new]
  CALL R3 0 1
  GETIMPORT R4 K6 [Enum.RaycastFilterType.Blacklist]
  SETTABLEKS R4 R3 K7 ["FilterType"]
  SETTABLEKS R2 R3 K8 ["FilterDescendantsInstances"]
  LOADB R4 1
  SETTABLEKS R4 R3 K9 ["BruteForceAllSlow"]
  GETUPVAL R4 0
  SETTABLEKS R4 R3 K10 ["CollisionGroup"]
  GETIMPORT R4 K12 [workspace]
  GETTABLEKS R6 R0 K13 ["Origin"]
  GETTABLEKS R7 R0 K14 ["Direction"]
  MOVE R8 R3
  NAMECALL R4 R4 K15 ["Raycast"]
  CALL R4 4 1
  GETTABLEKS R7 R0 K13 ["Origin"]
  GETTABLEKS R8 R0 K14 ["Direction"]
  MOVE R9 R3
  NAMECALL R5 R1 K16 ["gizmoRaycast"]
  CALL R5 4 1
  JUMPIFNOT R5 [+12]
  NAMECALL R6 R1 K17 ["shouldDrawConstraintsOnTop"]
  CALL R6 1 1
  JUMPIF R6 [+7]
  JUMPIFNOT R4 [+6]
  GETTABLEKS R6 R5 K18 ["Distance"]
  GETTABLEKS R7 R4 K18 ["Distance"]
  JUMPIFNOTLT R6 R7 [+2]
  MOVE R4 R5
  JUMPIFNOT R4 [+12]
  FASTCALL2 TABLE_INSERT R2 R4 [+5]
  MOVE R7 R2
  MOVE R8 R4
  GETIMPORT R6 K21 [table.insert]
  CALL R6 2 0
  GETTABLEKS R8 R4 K22 ["Instance"]
  NAMECALL R6 R3 K23 ["AddToFilter"]
  CALL R6 2 0
  JUMPIFNOT R4 [+1]
  JUMPBACK [-46]
  RETURN R2 1

PROTO_1:
  GETIMPORT R2 K2 [table.create]
  LENGTH R3 R0
  CALL R2 1 1
  GETIMPORT R3 K2 [table.create]
  LENGTH R4 R0
  CALL R3 1 1
  NEWTABLE R4 0 0
  MOVE R5 R0
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  GETTABLEKS R10 R1 K3 ["getSelectableWithCache"]
  GETTABLEKS R11 R9 K4 ["Instance"]
  LOADB R12 1
  MOVE R13 R4
  CALL R10 3 1
  JUMPIFNOT R10 [+14]
  FASTCALL2 TABLE_INSERT R2 R9 [+5]
  MOVE R12 R2
  MOVE R13 R9
  GETIMPORT R11 K6 [table.insert]
  CALL R11 2 0
  FASTCALL2 TABLE_INSERT R3 R10 [+5]
  MOVE R12 R3
  MOVE R13 R10
  GETIMPORT R11 K6 [table.insert]
  CALL R11 2 0
  FORGLOOP R5 2 [-23]
  RETURN R2 2

PROTO_2:
  DUPTABLE R3 K7 [{"_draggerContext", "_draggerSchema", "_cachedRaycastResults", "_cachedSelectables", "_currentIndex", "_analyticsNumberOfClicks", "_hasCycled"}]
  SETTABLEKS R0 R3 K0 ["_draggerContext"]
  SETTABLEKS R1 R3 K1 ["_draggerSchema"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K2 ["_cachedRaycastResults"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K3 ["_cachedSelectables"]
  LOADN R4 0
  SETTABLEKS R4 R3 K4 ["_currentIndex"]
  LOADN R4 0
  SETTABLEKS R4 R3 K5 ["_analyticsNumberOfClicks"]
  LOADB R4 0
  SETTABLEKS R4 R3 K6 ["_hasCycled"]
  GETUPVAL R4 0
  FASTCALL2 SETMETATABLE R3 R4 [+3]
  GETIMPORT R2 K9 [setmetatable]
  CALL R2 2 1
  RETURN R2 1

PROTO_3:
  GETTABLEKS R2 R0 K0 ["_cachedSelectables"]
  LENGTH R1 R2
  RETURN R1 1

PROTO_4:
  NAMECALL R2 R0 K0 ["isValid"]
  CALL R2 1 1
  JUMPIF R2 [+3]
  NAMECALL R2 R0 K1 ["computeSelectionCycleCandidates"]
  CALL R2 1 0
  GETTABLEKS R2 R0 K2 ["_currentIndex"]
  JUMPIFNOTEQKN R2 K3 [0] [+3]
  LOADNIL R2
  RETURN R2 1
  GETTABLEKS R3 R0 K4 ["_cachedSelectables"]
  GETTABLEKS R4 R0 K2 ["_currentIndex"]
  GETTABLE R2 R3 R4
  GETTABLEKS R4 R0 K5 ["_cachedRaycastResults"]
  GETTABLEKS R5 R0 K2 ["_currentIndex"]
  GETTABLE R3 R4 R5
  JUMPIFNOT R1 [+24]
  GETTABLEKS R4 R0 K2 ["_currentIndex"]
  GETTABLEKS R6 R0 K4 ["_cachedSelectables"]
  LENGTH R5 R6
  JUMPIFNOTEQ R4 R5 [+5]
  LOADN R4 1
  SETTABLEKS R4 R0 K2 ["_currentIndex"]
  JUMP [+5]
  GETTABLEKS R4 R0 K2 ["_currentIndex"]
  ADDK R4 R4 K6 [1]
  SETTABLEKS R4 R0 K2 ["_currentIndex"]
  GETTABLEKS R4 R0 K7 ["_analyticsNumberOfClicks"]
  ADDK R4 R4 K6 [1]
  SETTABLEKS R4 R0 K7 ["_analyticsNumberOfClicks"]
  LOADB R4 1
  SETTABLEKS R4 R0 K8 ["_hasCycled"]
  GETTABLEKS R4 R0 K9 ["_draggerContext"]
  NAMECALL R6 R4 K10 ["shouldGridSnap"]
  CALL R6 1 1
  JUMPIFNOT R6 [+4]
  NAMECALL R5 R4 K11 ["getGridSize"]
  CALL R5 1 1
  JUMP [+1]
  LOADNIL R5
  LOADNIL R6
  LOADNIL R7
  GETTABLEKS R8 R3 K12 ["Instance"]
  LOADK R10 K13 ["PVInstance"]
  NAMECALL R8 R8 K14 ["IsA"]
  CALL R8 2 1
  JUMPIFNOT R8 [+44]
  GETUPVAL R8 0
  CALL R8 0 1
  JUMPIFNOT R8 [+20]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K15 ["getSurfaceMatrix"]
  GETTABLEKS R9 R0 K9 ["_draggerContext"]
  NAMECALL R9 R9 K16 ["getMouseRay"]
  CALL R9 1 1
  MOVE R10 R3
  LOADNIL R11
  MOVE R12 R5
  CALL R8 4 1
  JUMPIFNOT R8 [+35]
  GETTABLEKS R6 R8 K17 ["matrix"]
  GETTABLEKS R7 R8 K18 ["size"]
  SETTABLEKS R6 R4 K19 ["PreviousTargetMatrix"]
  JUMP [+28]
  LOADNIL R8
  LOADNIL R9
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K15 ["getSurfaceMatrix"]
  GETTABLEKS R11 R0 K9 ["_draggerContext"]
  NAMECALL R11 R11 K16 ["getMouseRay"]
  CALL R11 1 1
  NEWTABLE R12 0 0
  LOADNIL R13
  CALL R10 3 3
  MOVE R6 R10
  MOVE R8 R11
  MOVE R9 R12
  LOADK R7 K20 [{0, 0, 0}]
  SETTABLEKS R6 R4 K19 ["PreviousTargetMatrix"]
  JUMP [+7]
  GETIMPORT R8 K23 [CFrame.new]
  GETTABLEKS R9 R3 K24 ["Position"]
  CALL R8 1 1
  MOVE R6 R8
  LOADK R7 K20 [{0, 0, 0}]
  MOVE R8 R2
  GETTABLEKS R9 R3 K12 ["Instance"]
  GETTABLEKS R10 R3 K25 ["Distance"]
  GETIMPORT R11 K28 [table.freeze]
  DUPTABLE R12 K33 [{"RaycastResult", "TargetMatrix", "TargetSize", "IsPivot"}]
  SETTABLEKS R3 R12 K29 ["RaycastResult"]
  SETTABLEKS R6 R12 K30 ["TargetMatrix"]
  SETTABLEKS R7 R12 K31 ["TargetSize"]
  LOADB R13 0
  SETTABLEKS R13 R12 K32 ["IsPivot"]
  CALL R11 1 -1
  RETURN R8 -1

PROTO_5:
  NAMECALL R1 R0 K0 ["isValid"]
  CALL R1 1 1
  JUMPIFNOT R1 [+2]
  GETTABLEKS R1 R0 K1 ["_hasCycled"]
  RETURN R1 1

PROTO_6:
  LOADN R1 0
  SETTABLEKS R1 R0 K0 ["_analyticsNumberOfClicks"]
  NAMECALL R1 R0 K1 ["isValid"]
  CALL R1 1 1
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  GETTABLEKS R1 R0 K2 ["_draggerContext"]
  NAMECALL R1 R1 K3 ["getMouseRay"]
  CALL R1 1 1
  GETUPVAL R2 0
  MOVE R3 R1
  GETTABLEKS R4 R0 K2 ["_draggerContext"]
  CALL R2 2 1
  GETUPVAL R3 1
  MOVE R4 R2
  GETTABLEKS R5 R0 K4 ["_draggerSchema"]
  CALL R3 2 2
  SETTABLEKS R3 R0 K5 ["_cachedRaycastResults"]
  SETTABLEKS R4 R0 K6 ["_cachedSelectables"]
  GETTABLEKS R4 R0 K5 ["_cachedRaycastResults"]
  LENGTH R3 R4
  LOADN R4 0
  JUMPIFNOTLT R4 R3 [+21]
  GETTABLEKS R3 R0 K2 ["_draggerContext"]
  NAMECALL R3 R3 K7 ["getMouseLocation"]
  CALL R3 1 1
  SETTABLEKS R3 R0 K8 ["_cachedMouseLocation"]
  GETTABLEKS R4 R0 K2 ["_draggerContext"]
  NAMECALL R4 R4 K9 ["getCameraCFrame"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K10 ["Position"]
  SETTABLEKS R3 R0 K11 ["_cachedCameraPosition"]
  LOADN R3 1
  SETTABLEKS R3 R0 K12 ["_currentIndex"]
  JUMP [+9]
  LOADNIL R3
  SETTABLEKS R3 R0 K8 ["_cachedMouseLocation"]
  LOADNIL R3
  SETTABLEKS R3 R0 K11 ["_cachedCameraPosition"]
  LOADN R3 0
  SETTABLEKS R3 R0 K12 ["_currentIndex"]
  LOADB R3 0
  SETTABLEKS R3 R0 K13 ["_hasCycled"]
  RETURN R0 0

PROTO_7:
  GETTABLEKS R2 R0 K0 ["_draggerContext"]
  NAMECALL R2 R2 K1 ["getCameraCFrame"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K2 ["Position"]
  GETTABLEKS R2 R0 K3 ["_cachedCameraPosition"]
  JUMPIFEQ R1 R2 [+3]
  LOADB R2 0
  RETURN R2 1
  GETTABLEKS R2 R0 K0 ["_draggerContext"]
  NAMECALL R2 R2 K4 ["getMouseLocation"]
  CALL R2 1 1
  GETTABLEKS R4 R0 K5 ["_cachedMouseLocation"]
  SUB R3 R2 R4
  GETTABLEKS R5 R3 K6 ["Magnitude"]
  LOADN R6 2
  JUMPIFLE R5 R6 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  RETURN R4 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Utility"]
  GETTABLEKS R2 R3 K6 ["CursorGroupName"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Utility"]
  GETTABLEKS R3 R4 K7 ["DragHelper"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K8 ["Flags"]
  GETTABLEKS R4 R5 K9 ["getFFlagDraggerImprovements"]
  CALL R3 1 1
  DUPCLOSURE R4 K10 [PROTO_0]
  CAPTURE VAL R1
  DUPCLOSURE R5 K11 [PROTO_1]
  NEWTABLE R6 8 0
  SETTABLEKS R6 R6 K12 ["__index"]
  DUPCLOSURE R7 K13 [PROTO_2]
  CAPTURE VAL R6
  SETTABLEKS R7 R6 K14 ["new"]
  DUPCLOSURE R7 K15 [PROTO_3]
  SETTABLEKS R7 R6 K16 ["size"]
  DUPCLOSURE R7 K17 [PROTO_4]
  CAPTURE VAL R3
  CAPTURE VAL R2
  SETTABLEKS R7 R6 K18 ["getNextSelectable"]
  DUPCLOSURE R7 K19 [PROTO_5]
  SETTABLEKS R7 R6 K20 ["hasCycled"]
  DUPCLOSURE R7 K21 [PROTO_6]
  CAPTURE VAL R4
  CAPTURE VAL R5
  SETTABLEKS R7 R6 K22 ["computeSelectionCycleCandidates"]
  DUPCLOSURE R7 K23 [PROTO_7]
  SETTABLEKS R7 R6 K24 ["isValid"]
  RETURN R6 1
