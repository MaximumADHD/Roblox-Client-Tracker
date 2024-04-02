PROTO_0:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["getTool"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_1:
  GETUPVAL R1 0
  DUPTABLE R2 K2 [{"Gizmos", "FromSelf"}]
  NAMECALL R3 R0 K3 ["gizmos"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K0 ["Gizmos"]
  LOADB R3 0
  SETTABLEKS R3 R2 K1 ["FromSelf"]
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  DUPTABLE R1 K2 [{"Gizmos", "FromSelf"}]
  GETUPVAL R2 1
  NAMECALL R2 R2 K3 ["gizmos"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K0 ["Gizmos"]
  LOADB R2 0
  SETTABLEKS R2 R1 K1 ["FromSelf"]
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  DUPTABLE R1 K2 [{"Gizmos", "FromSelf"}]
  GETUPVAL R2 1
  NAMECALL R2 R2 K3 ["gizmos"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K0 ["Gizmos"]
  LOADB R2 0
  SETTABLEKS R2 R1 K1 ["FromSelf"]
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  GETUPVAL R0 1
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  GETUPVAL R0 2
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnToolChanged"]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  NAMECALL R0 R0 K1 ["Connect"]
  CALL R0 2 1
  GETUPVAL R1 2
  JUMPIF R1 [+3]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  RETURN R1 1
  GETUPVAL R2 3
  GETTABLEKS R1 R2 K2 ["OnFormChanged"]
  NEWCLOSURE R3 P2
  CAPTURE UPVAL U1
  CAPTURE UPVAL U3
  NAMECALL R1 R1 K1 ["Connect"]
  CALL R1 2 1
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K3 ["OnShortcutChanged"]
  NEWCLOSURE R4 P3
  CAPTURE UPVAL U1
  CAPTURE UPVAL U3
  NAMECALL R2 R2 K1 ["Connect"]
  CALL R2 2 1
  NEWCLOSURE R3 P4
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE VAL R2
  RETURN R3 1

PROTO_7:
  GETUPVAL R0 0
  GETUPVAL R2 1
  JUMPIFNOT R2 [+11]
  DUPTABLE R1 K2 [{"Gizmos", "FromSelf"}]
  GETUPVAL R2 2
  NAMECALL R2 R2 K3 ["gizmos"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K0 ["Gizmos"]
  LOADB R2 0
  SETTABLEKS R2 R1 K1 ["FromSelf"]
  JUMP [+8]
  DUPTABLE R1 K2 [{"Gizmos", "FromSelf"}]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K0 ["Gizmos"]
  LOADB R2 0
  SETTABLEKS R2 R1 K1 ["FromSelf"]
  CALL R0 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R2 0
  NAMECALL R2 R2 K0 ["getTool"]
  CALL R2 1 1
  MOVE R4 R1
  NAMECALL R2 R2 K1 ["saveGizmos"]
  CALL R2 2 0
  GETUPVAL R2 1
  DUPTABLE R3 K4 [{"Gizmos", "FromSelf"}]
  SETTABLEKS R0 R3 K2 ["Gizmos"]
  LOADB R4 1
  SETTABLEKS R4 R3 K3 ["FromSelf"]
  CALL R2 1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R2 0
  DUPTABLE R3 K2 [{"Gizmos", "FromSelf"}]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K0 ["Gizmos"]
  LOADB R4 0
  SETTABLEKS R4 R3 K1 ["FromSelf"]
  CALL R2 1 2
  GETUPVAL R5 1
  CALL R5 0 1
  JUMPIFNOT R5 [+10]
  GETUPVAL R4 2
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  NEWTABLE R6 0 1
  MOVE R7 R2
  SETLIST R6 R7 1 [1]
  CALL R4 2 1
  JUMP [+3]
  NAMECALL R4 R0 K3 ["getTool"]
  CALL R4 1 1
  GETUPVAL R5 3
  NEWCLOSURE R6 P1
  CAPTURE VAL R0
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R4
  NEWTABLE R7 0 2
  MOVE R8 R4
  MOVE R9 R1
  SETLIST R7 R8 2 [1]
  CALL R5 2 0
  GETUPVAL R5 3
  NEWCLOSURE R6 P2
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R4
  NEWTABLE R7 0 1
  MOVE R8 R1
  SETLIST R7 R8 1 [1]
  CALL R5 2 0
  NEWCLOSURE R5 P3
  CAPTURE VAL R0
  CAPTURE VAL R3
  GETTABLEKS R6 R2 K0 ["Gizmos"]
  MOVE R7 R5
  MOVE R8 R4
  GETTABLEKS R9 R2 K1 ["FromSelf"]
  RETURN R6 4

PROTO_10:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["getTool"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_11:
  GETUPVAL R1 0
  NAMECALL R2 R0 K0 ["gizmos"]
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R0 0
  GETUPVAL R1 1
  NAMECALL R1 R1 K0 ["gizmos"]
  CALL R1 1 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R0 0
  GETUPVAL R1 1
  NAMECALL R1 R1 K0 ["gizmos"]
  CALL R1 1 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  GETUPVAL R0 1
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  GETUPVAL R0 2
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnToolChanged"]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  NAMECALL R0 R0 K1 ["Connect"]
  CALL R0 2 1
  GETUPVAL R1 2
  JUMPIF R1 [+3]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  RETURN R1 1
  GETUPVAL R2 3
  GETTABLEKS R1 R2 K2 ["OnFormChanged"]
  NEWCLOSURE R3 P2
  CAPTURE UPVAL U1
  CAPTURE UPVAL U3
  NAMECALL R1 R1 K1 ["Connect"]
  CALL R1 2 1
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K3 ["OnShortcutChanged"]
  NEWCLOSURE R4 P3
  CAPTURE UPVAL U1
  CAPTURE UPVAL U3
  NAMECALL R2 R2 K1 ["Connect"]
  CALL R2 2 1
  NEWCLOSURE R3 P4
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE VAL R2
  RETURN R3 1

PROTO_17:
  GETUPVAL R0 0
  GETUPVAL R2 1
  JUMPIFNOT R2 [+5]
  GETUPVAL R1 2
  NAMECALL R1 R1 K0 ["gizmos"]
  CALL R1 1 1
  JUMP [+2]
  NEWTABLE R1 0 0
  CALL R0 1 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R2 0
  NAMECALL R2 R2 K0 ["getTool"]
  CALL R2 1 1
  MOVE R4 R1
  NAMECALL R2 R2 K1 ["saveGizmos"]
  CALL R2 2 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 0
  RETURN R0 0

PROTO_19:
  GETUPVAL R2 0
  NEWTABLE R3 0 0
  CALL R2 1 2
  GETUPVAL R5 1
  CALL R5 0 1
  JUMPIFNOT R5 [+10]
  GETUPVAL R4 2
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  NEWTABLE R6 0 1
  MOVE R7 R2
  SETLIST R6 R7 1 [1]
  CALL R4 2 1
  JUMP [+3]
  NAMECALL R4 R0 K0 ["getTool"]
  CALL R4 1 1
  GETUPVAL R5 3
  NEWCLOSURE R6 P1
  CAPTURE VAL R0
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R4
  NEWTABLE R7 0 2
  MOVE R8 R4
  MOVE R9 R1
  SETLIST R7 R8 2 [1]
  CALL R5 2 0
  GETUPVAL R5 3
  NEWCLOSURE R6 P2
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R4
  NEWTABLE R7 0 1
  MOVE R8 R1
  SETLIST R7 R8 1 [1]
  CALL R5 2 0
  NEWCLOSURE R5 P3
  CAPTURE VAL R0
  CAPTURE VAL R3
  MOVE R6 R2
  MOVE R7 R5
  MOVE R8 R4
  RETURN R6 3

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["useMemo"]
  GETTABLEKS R3 R1 K9 ["useState"]
  GETTABLEKS R4 R1 K10 ["useEffect"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K11 ["Src"]
  GETTABLEKS R7 R8 K12 ["Flags"]
  GETTABLEKS R6 R7 K13 ["getFFlagTerrainEditorRaycastPaintFix"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K11 ["Src"]
  GETTABLEKS R8 R9 K12 ["Flags"]
  GETTABLEKS R7 R8 K14 ["getFFlagTerrainEditorPlaneLockFix"]
  CALL R6 1 1
  MOVE R7 R6
  CALL R7 0 1
  JUMPIFNOT R7 [+6]
  DUPCLOSURE R7 K15 [PROTO_9]
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R2
  CAPTURE VAL R4
  RETURN R7 1
  DUPCLOSURE R7 K16 [PROTO_19]
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R2
  CAPTURE VAL R4
  RETURN R7 1
