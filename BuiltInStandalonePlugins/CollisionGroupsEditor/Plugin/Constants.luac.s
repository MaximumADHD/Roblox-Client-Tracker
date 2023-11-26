PROTO_0:
  JUMPIFNOTEQKNIL R0 [+7]
  GETIMPORT R1 K2 [UDim2.fromScale]
  LOADN R2 0
  LOADN R3 0
  CALL R1 2 -1
  RETURN R1 -1
  GETIMPORT R1 K4 [UDim2.fromOffset]
  LOADN R5 1
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K6 ["X"]
  GETTABLEKS R6 R7 K7 ["Offset"]
  ADD R4 R5 R6
  MUL R3 R4 R0
  ADDK R2 R3 K5 [1]
  LOADN R6 1
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K8 ["Y"]
  GETTABLEKS R7 R8 K7 ["Offset"]
  ADD R5 R6 R7
  MUL R4 R5 R0
  ADDK R3 R4 K5 [1]
  CALL R1 2 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K2 [UDim2.fromOffset]
  LOADN R1 85
  LOADN R2 34
  CALL R0 2 1
  DUPTABLE R1 K13 [{"GroupCountMax", "GroupRowHeight", "GroupRowWidth", "ControlsHeaderButtonWidth", "GroupLabelFixedSize", "GroupListRowHeight", "GridCellWidth", "GridHeaderLabelSize", "GridCellSize", "CalculateTableSize"}]
  LOADN R2 32
  SETTABLEKS R2 R1 K3 ["GroupCountMax"]
  LOADN R2 35
  SETTABLEKS R2 R1 K4 ["GroupRowHeight"]
  LOADN R2 120
  SETTABLEKS R2 R1 K5 ["GroupRowWidth"]
  LOADN R2 106
  SETTABLEKS R2 R1 K6 ["ControlsHeaderButtonWidth"]
  GETIMPORT R2 K2 [UDim2.fromOffset]
  LOADN R3 120
  LOADN R4 35
  CALL R2 2 1
  SETTABLEKS R2 R1 K7 ["GroupLabelFixedSize"]
  LOADN R2 24
  SETTABLEKS R2 R1 K8 ["GroupListRowHeight"]
  LOADN R2 85
  SETTABLEKS R2 R1 K9 ["GridCellWidth"]
  GETIMPORT R2 K2 [UDim2.fromOffset]
  LOADN R3 86
  LOADN R4 35
  CALL R2 2 1
  SETTABLEKS R2 R1 K10 ["GridHeaderLabelSize"]
  SETTABLEKS R0 R1 K11 ["GridCellSize"]
  DUPCLOSURE R2 K14 [PROTO_0]
  CAPTURE VAL R0
  SETTABLEKS R2 R1 K12 ["CalculateTableSize"]
  RETURN R1 1
