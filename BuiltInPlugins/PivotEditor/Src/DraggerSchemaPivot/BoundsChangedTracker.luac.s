PROTO_0:
  DUPTABLE R3 K2 [{"_handler", "_installed"}]
  SETTABLEKS R1 R3 K0 ["_handler"]
  LOADB R4 0
  SETTABLEKS R4 R3 K1 ["_installed"]
  GETUPVAL R4 0
  FASTCALL2 SETMETATABLE R3 R4 [+3]
  GETIMPORT R2 K4 [setmetatable]
  CALL R2 2 1
  RETURN R2 1

PROTO_1:
  NAMECALL R1 R0 K0 ["_connect"]
  CALL R1 1 0
  LOADB R1 1
  SETTABLEKS R1 R0 K1 ["_installed"]
  RETURN R0 0

PROTO_2:
  NAMECALL R1 R0 K0 ["_disconnect"]
  CALL R1 1 0
  LOADB R1 0
  SETTABLEKS R1 R0 K1 ["_installed"]
  RETURN R0 0

PROTO_3:
  GETTABLEKS R2 R0 K0 ["_installed"]
  JUMPIFNOT R2 [+11]
  NAMECALL R2 R0 K1 ["_disconnect"]
  CALL R2 1 0
  NAMECALL R2 R1 K2 ["getPrimaryObject"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K3 ["_instance"]
  NAMECALL R2 R0 K4 ["_connect"]
  CALL R2 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["_instance"]
  GETTABLEKS R2 R3 K1 ["PrimaryPart"]
  NAMECALL R0 R0 K2 ["_setPart"]
  CALL R0 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_handler"]
  CALL R0 0 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R1 R0 K0 ["_instance"]
  JUMPIF R1 [+5]
  LOADNIL R3
  NAMECALL R1 R0 K1 ["_setPart"]
  CALL R1 2 0
  RETURN R0 0
  GETTABLEKS R1 R0 K0 ["_instance"]
  LOADK R3 K2 ["Model"]
  NAMECALL R1 R1 K3 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+34]
  GETTABLEKS R1 R0 K0 ["_instance"]
  LOADK R3 K4 ["PrimaryPart"]
  NAMECALL R1 R1 K5 ["GetPropertyChangedSignal"]
  CALL R1 2 1
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  NAMECALL R1 R1 K6 ["Connect"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K7 ["_primaryConnection"]
  GETTABLEKS R1 R0 K0 ["_instance"]
  LOADK R3 K8 ["WorldPivot"]
  NAMECALL R1 R1 K5 ["GetPropertyChangedSignal"]
  CALL R1 2 1
  NEWCLOSURE R3 P1
  CAPTURE VAL R0
  NAMECALL R1 R1 K6 ["Connect"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K9 ["_pivotChangedConnection"]
  GETTABLEKS R4 R0 K0 ["_instance"]
  GETTABLEKS R3 R4 K4 ["PrimaryPart"]
  NAMECALL R1 R0 K1 ["_setPart"]
  CALL R1 2 0
  RETURN R0 0
  GETTABLEKS R1 R0 K0 ["_instance"]
  LOADK R3 K10 ["BasePart"]
  NAMECALL R1 R1 K3 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+6]
  GETTABLEKS R3 R0 K0 ["_instance"]
  NAMECALL R1 R0 K1 ["_setPart"]
  CALL R1 2 0
  RETURN R0 0
  LOADNIL R3
  NAMECALL R1 R0 K1 ["_setPart"]
  CALL R1 2 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R1 R0 K0 ["_primaryConnection"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K0 ["_primaryConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["_primaryConnection"]
  GETTABLEKS R1 R0 K2 ["_pivotChangedConnection"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K2 ["_pivotChangedConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K2 ["_pivotChangedConnection"]
  LOADNIL R3
  NAMECALL R1 R0 K3 ["_setPart"]
  CALL R1 2 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_handler"]
  CALL R0 0 0
  RETURN R0 0

PROTO_9:
  GETTABLEKS R2 R0 K0 ["_movedConnection"]
  JUMPIFNOT R2 [+8]
  GETTABLEKS R2 R0 K0 ["_movedConnection"]
  NAMECALL R2 R2 K1 ["Disconnect"]
  CALL R2 1 0
  LOADNIL R2
  SETTABLEKS R2 R0 K0 ["_movedConnection"]
  GETTABLEKS R2 R0 K2 ["_partPivotChangedConnection"]
  JUMPIFNOT R2 [+8]
  GETTABLEKS R2 R0 K2 ["_partPivotChangedConnection"]
  NAMECALL R2 R2 K1 ["Disconnect"]
  CALL R2 1 0
  LOADNIL R2
  SETTABLEKS R2 R0 K2 ["_partPivotChangedConnection"]
  JUMPIFNOT R1 [+27]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  LOADK R5 K3 ["PivotOffset"]
  NAMECALL R3 R1 K4 ["GetPropertyChangedSignal"]
  CALL R3 2 1
  MOVE R5 R2
  NAMECALL R3 R3 K5 ["Connect"]
  CALL R3 2 1
  SETTABLEKS R3 R0 K2 ["_partPivotChangedConnection"]
  MOVE R3 R1
  JUMPIF R3 [+3]
  NAMECALL R3 R1 K6 ["GetRootPart"]
  CALL R3 1 1
  LOADK R6 K7 ["CFrame"]
  NAMECALL R4 R3 K4 ["GetPropertyChangedSignal"]
  CALL R4 2 1
  MOVE R6 R2
  NAMECALL R4 R4 K5 ["Connect"]
  CALL R4 2 1
  SETTABLEKS R4 R0 K0 ["_movedConnection"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 8 0
  SETTABLEKS R0 R0 K0 ["__index"]
  DUPCLOSURE R1 K1 [PROTO_0]
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K2 ["new"]
  DUPCLOSURE R1 K3 [PROTO_1]
  SETTABLEKS R1 R0 K4 ["install"]
  DUPCLOSURE R1 K5 [PROTO_2]
  SETTABLEKS R1 R0 K6 ["uninstall"]
  DUPCLOSURE R1 K7 [PROTO_3]
  SETTABLEKS R1 R0 K8 ["setSelection"]
  DUPCLOSURE R1 K9 [PROTO_6]
  SETTABLEKS R1 R0 K10 ["_connect"]
  DUPCLOSURE R1 K11 [PROTO_7]
  SETTABLEKS R1 R0 K12 ["_disconnect"]
  DUPCLOSURE R1 K13 [PROTO_9]
  SETTABLEKS R1 R0 K14 ["_setPart"]
  RETURN R0 1
