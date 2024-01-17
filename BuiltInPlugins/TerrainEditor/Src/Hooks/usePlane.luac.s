PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Selection"]
  GETTABLEKS R0 R1 K1 ["new"]
  GETUPVAL R3 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K2 ["BrushSettings"]
  GETTABLE R2 R3 R4
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K3 ["PlaneTransform"]
  GETTABLE R1 R2 R3
  CALL R0 1 -1
  RETURN R0 -1

PROTO_1:
  NEWTABLE R1 1 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["BrushSettings"]
  NEWTABLE R3 1 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["PlaneTransform"]
  SETTABLE R0 R3 R4
  SETTABLE R3 R1 R2
  GETUPVAL R2 2
  MOVE R3 R1
  CALL R2 1 0
  GETUPVAL R2 3
  MOVE R3 R0
  CALL R2 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["SetTransform"]
  CALL R1 2 0
  GETUPVAL R1 1
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["Mock"]
  JUMPIFNOTEQ R0 R1 [+7]
  DUPTABLE R0 K2 [{"DraggerContext"}]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K1 ["DraggerContext"]
  RETURN R0 1
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K3 ["new"]
  GETUPVAL R2 3
  GETTABLEKS R1 R2 K4 ["Parent"]
  GETIMPORT R2 K6 [game]
  GETIMPORT R3 K8 [settings]
  CALL R3 0 1
  GETUPVAL R4 4
  CALL R0 4 1
  GETUPVAL R1 5
  SETTABLEKS R1 R0 K9 ["updatePlane"]
  DUPTABLE R1 K13 [{"Mouse", "DraggerContext", "DraggerSchema", "DraggerSettings"}]
  GETUPVAL R2 6
  NAMECALL R2 R2 K14 ["getMouse"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K10 ["Mouse"]
  SETTABLEKS R0 R1 K1 ["DraggerContext"]
  GETUPVAL R2 7
  SETTABLEKS R2 R1 K11 ["DraggerSchema"]
  DUPTABLE R2 K21 [{"AnalyticsName", "AllowDragSelect", "AllowFreeformDrag", "ShowLocalSpaceIndicator", "ShowPivotIndicator", "HandlesList"}]
  LOADK R3 K22 ["AdjustablePlaneLock"]
  SETTABLEKS R3 R2 K15 ["AnalyticsName"]
  LOADB R3 1
  SETTABLEKS R3 R2 K16 ["AllowDragSelect"]
  LOADB R3 1
  SETTABLEKS R3 R2 K17 ["AllowFreeformDrag"]
  LOADB R3 1
  SETTABLEKS R3 R2 K18 ["ShowLocalSpaceIndicator"]
  LOADB R3 1
  SETTABLEKS R3 R2 K19 ["ShowPivotIndicator"]
  NEWTABLE R3 0 2
  GETUPVAL R5 8
  GETTABLEKS R4 R5 K3 ["new"]
  MOVE R5 R0
  DUPTABLE R6 K26 [{"ShowBoundingBox", "Summonable", "Outset"}]
  LOADB R7 0
  SETTABLEKS R7 R6 K23 ["ShowBoundingBox"]
  LOADB R7 0
  SETTABLEKS R7 R6 K24 ["Summonable"]
  LOADN R7 1
  SETTABLEKS R7 R6 K25 ["Outset"]
  GETUPVAL R9 7
  GETTABLEKS R8 R9 K27 ["TransformHandlesImplementation"]
  GETTABLEKS R7 R8 K3 ["new"]
  MOVE R8 R0
  CALL R7 1 -1
  CALL R4 -1 1
  GETUPVAL R6 9
  GETTABLEKS R5 R6 K3 ["new"]
  MOVE R6 R0
  DUPTABLE R7 K26 [{"ShowBoundingBox", "Summonable", "Outset"}]
  LOADB R8 0
  SETTABLEKS R8 R7 K23 ["ShowBoundingBox"]
  LOADB R8 0
  SETTABLEKS R8 R7 K24 ["Summonable"]
  LOADN R8 1
  SETTABLEKS R8 R7 K25 ["Outset"]
  GETUPVAL R10 7
  GETTABLEKS R9 R10 K27 ["TransformHandlesImplementation"]
  GETTABLEKS R8 R9 K3 ["new"]
  MOVE R9 R0
  CALL R8 1 -1
  CALL R5 -1 -1
  SETLIST R3 R4 -1 [1]
  SETTABLEKS R3 R2 K20 ["HandlesList"]
  SETTABLEKS R2 R1 K12 ["DraggerSettings"]
  RETURN R1 1

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["DraggerContext"]
  GETUPVAL R1 1
  SETTABLEKS R1 R0 K1 ["updatePlane"]
  RETURN R0 0

PROTO_5:
  GETUPVAL R2 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["BrushSettings"]
  GETTABLE R1 R2 R3
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K1 ["PlaneTransform"]
  GETTABLE R0 R1 R2
  GETUPVAL R1 3
  MOVE R3 R0
  NAMECALL R1 R1 K2 ["SetTransformSignal"]
  CALL R1 2 0
  GETUPVAL R1 4
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R3 0
  NAMECALL R3 R3 K0 ["use"]
  CALL R3 1 1
  GETUPVAL R4 1
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R1
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  NEWTABLE R6 0 1
  MOVE R7 R0
  SETLIST R6 R7 1 [1]
  CALL R4 2 1
  GETUPVAL R5 5
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K1 ["BrushSettings"]
  GETTABLE R7 R1 R8
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K2 ["PlaneTransform"]
  GETTABLE R6 R7 R8
  CALL R5 1 2
  GETUPVAL R7 6
  NEWCLOSURE R8 P1
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE VAL R2
  CAPTURE VAL R6
  NEWTABLE R9 0 1
  MOVE R10 R1
  SETLIST R9 R10 1 [1]
  CALL R7 2 1
  GETUPVAL R8 6
  NEWCLOSURE R9 P2
  CAPTURE VAL R4
  CAPTURE VAL R7
  NEWTABLE R10 0 2
  MOVE R11 R4
  MOVE R12 R7
  SETLIST R10 R11 2 [1]
  CALL R8 2 1
  GETUPVAL R9 1
  NEWCLOSURE R10 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE VAL R4
  CAPTURE VAL R8
  CAPTURE VAL R3
  CAPTURE UPVAL U2
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  NEWTABLE R11 0 1
  MOVE R12 R0
  SETLIST R11 R12 1 [1]
  CALL R9 2 1
  GETUPVAL R10 12
  NEWCLOSURE R11 P4
  CAPTURE VAL R9
  CAPTURE VAL R8
  NEWTABLE R12 0 1
  MOVE R13 R8
  SETLIST R12 R13 1 [1]
  CALL R10 2 0
  GETUPVAL R10 12
  NEWCLOSURE R11 P5
  CAPTURE VAL R1
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE VAL R4
  CAPTURE VAL R6
  NEWTABLE R12 0 2
  MOVE R13 R0
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K1 ["BrushSettings"]
  GETTABLE R15 R1 R16
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K2 ["PlaneTransform"]
  GETTABLE R14 R15 R16
  SETLIST R12 R13 2 [1]
  CALL R10 2 0
  MOVE R10 R9
  MOVE R11 R5
  RETURN R10 2

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R2 R0 K4 ["Packages"]
  GETTABLEKS R1 R2 K5 ["DraggerFramework"]
  GETIMPORT R2 K7 [require]
  GETTABLEKS R4 R0 K4 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["useCallback"]
  GETTABLEKS R4 R2 K10 ["useEffect"]
  GETTABLEKS R5 R2 K11 ["useMemo"]
  GETTABLEKS R6 R2 K12 ["useState"]
  GETIMPORT R7 K7 [require]
  GETTABLEKS R10 R0 K13 ["Src"]
  GETTABLEKS R9 R10 K14 ["Controllers"]
  GETTABLEKS R8 R9 K15 ["ShortcutController"]
  CALL R7 1 1
  GETIMPORT R8 K7 [require]
  GETTABLEKS R11 R0 K13 ["Src"]
  GETTABLEKS R10 R11 K16 ["Schemas"]
  GETTABLEKS R9 R10 K17 ["Plane"]
  CALL R8 1 1
  GETIMPORT R9 K7 [require]
  GETTABLEKS R11 R1 K18 ["Implementation"]
  GETTABLEKS R10 R11 K19 ["DraggerContext_PluginImpl"]
  CALL R9 1 1
  GETIMPORT R10 K7 [require]
  GETTABLEKS R12 R1 K20 ["Handles"]
  GETTABLEKS R11 R12 K21 ["MoveHandles"]
  CALL R10 1 1
  GETIMPORT R11 K7 [require]
  GETTABLEKS R13 R1 K20 ["Handles"]
  GETTABLEKS R12 R13 K22 ["RotateHandles"]
  CALL R11 1 1
  GETIMPORT R12 K7 [require]
  GETTABLEKS R14 R0 K13 ["Src"]
  GETTABLEKS R13 R14 K23 ["Types"]
  CALL R12 1 1
  GETTABLEKS R13 R12 K24 ["BrushSettings"]
  GETTABLEKS R14 R12 K25 ["Categories"]
  GETTABLEKS R15 R12 K26 ["Tools"]
  DUPCLOSURE R16 K27 [PROTO_6]
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R8
  CAPTURE VAL R14
  CAPTURE VAL R13
  CAPTURE VAL R6
  CAPTURE VAL R3
  CAPTURE VAL R15
  CAPTURE VAL R9
  CAPTURE VAL R0
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R4
  RETURN R16 1
