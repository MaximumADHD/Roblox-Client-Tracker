PROTO_0:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["_handleSelectionChanged"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  DUPTABLE R2 K4 [{"_selectionObject", "_selection", "_isSettingSelection", "_destroyed"}]
  SETTABLEKS R0 R2 K0 ["_selectionObject"]
  NAMECALL R3 R0 K5 ["Get"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K1 ["_selection"]
  LOADB R3 0
  SETTABLEKS R3 R2 K2 ["_isSettingSelection"]
  LOADB R3 0
  SETTABLEKS R3 R2 K3 ["_destroyed"]
  GETUPVAL R3 0
  FASTCALL2 SETMETATABLE R2 R3 [+3]
  GETIMPORT R1 K7 [setmetatable]
  CALL R1 2 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K8 ["new"]
  CALL R2 0 1
  SETTABLEKS R2 R1 K9 ["onSelectionExternallyChanged"]
  GETTABLEKS R2 R0 K10 ["SelectionChanged"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R1
  NAMECALL R2 R2 K11 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R1 K12 ["_selectionChangedConnection"]
  GETUPVAL R3 2
  ADDK R2 R3 K13 [1]
  SETUPVAL R2 2
  GETUPVAL R2 2
  LOADN R3 1
  JUMPIFNOTLT R3 R2 [+5]
  GETIMPORT R2 K15 [warn]
  LOADK R3 K16 ["More than one SelectionWrapper created at once, this is probably a mistake!"]
  CALL R2 1 0
  RETURN R1 1

PROTO_2:
  GETTABLEKS R1 R0 K0 ["_selection"]
  RETURN R1 1

PROTO_3:
  SETTABLEKS R1 R0 K0 ["_selection"]
  LOADB R3 1
  SETTABLEKS R3 R0 K1 ["_isSettingSelection"]
  GETTABLEKS R3 R0 K2 ["_selectionObject"]
  MOVE R5 R1
  MOVE R6 R2
  NAMECALL R3 R3 K3 ["Set"]
  CALL R3 3 0
  LOADB R3 0
  SETTABLEKS R3 R0 K1 ["_isSettingSelection"]
  RETURN R0 0

PROTO_4:
  GETTABLEKS R3 R0 K0 ["_destroyed"]
  NOT R2 R3
  FASTCALL1 ASSERT R2 [+2]
  GETIMPORT R1 K2 [assert]
  CALL R1 1 0
  GETTABLEKS R1 R0 K3 ["_selectionChangedConnection"]
  NAMECALL R1 R1 K4 ["Disconnect"]
  CALL R1 1 0
  GETUPVAL R2 0
  SUBK R1 R2 K5 [1]
  SETUPVAL R1 0
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["_destroyed"]
  RETURN R0 0

PROTO_5:
  GETTABLEKS R1 R0 K0 ["_selectionObject"]
  NAMECALL R1 R1 K1 ["flush"]
  CALL R1 1 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R1 R0 K0 ["_isSettingSelection"]
  JUMPIF R1 [+12]
  GETTABLEKS R1 R0 K1 ["_selectionObject"]
  NAMECALL R1 R1 K2 ["Get"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K3 ["_selection"]
  GETTABLEKS R1 R0 K4 ["onSelectionExternallyChanged"]
  NAMECALL R1 R1 K5 ["Fire"]
  CALL R1 1 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R2 R0 K0 ["_selection"]
  GETTABLEKS R4 R0 K0 ["_selection"]
  LENGTH R3 R4
  GETTABLE R1 R2 R3
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Utility"]
  GETTABLEKS R2 R3 K6 ["Signal"]
  CALL R1 1 1
  NEWTABLE R2 8 0
  SETTABLEKS R2 R2 K7 ["__index"]
  LOADN R3 0
  NEWCLOSURE R4 P0
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE REF R3
  SETTABLEKS R4 R2 K8 ["new"]
  DUPCLOSURE R4 K9 [PROTO_2]
  SETTABLEKS R4 R2 K10 ["get"]
  DUPCLOSURE R4 K11 [PROTO_3]
  SETTABLEKS R4 R2 K12 ["set"]
  NEWCLOSURE R4 P3
  CAPTURE REF R3
  SETTABLEKS R4 R2 K13 ["destroy"]
  DUPCLOSURE R4 K14 [PROTO_5]
  SETTABLEKS R4 R2 K15 ["flush"]
  DUPCLOSURE R4 K16 [PROTO_6]
  SETTABLEKS R4 R2 K17 ["_handleSelectionChanged"]
  DUPCLOSURE R4 K18 [PROTO_7]
  SETTABLEKS R4 R2 K19 ["getActiveSelectable"]
  CLOSEUPVALS R3
  RETURN R2 1
