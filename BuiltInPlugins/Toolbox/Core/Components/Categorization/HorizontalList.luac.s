PROTO_0:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Data"]
  JUMPIF R1 [+2]
  NEWTABLE R1 0 0
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["OnRenderItem"]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K3 ["Position"]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K4 ["LayoutOrder"]
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K5 ["DisplayCount"]
  DUPTABLE R6 K7 [{"Layout"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K8 ["createElement"]
  LOADK R8 K9 ["UIListLayout"]
  DUPTABLE R9 K13 [{"FillDirection", "SortOrder", "Padding"}]
  GETIMPORT R10 K16 [Enum.FillDirection.Horizontal]
  SETTABLEKS R10 R9 K10 ["FillDirection"]
  GETIMPORT R10 K17 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R10 R9 K11 ["SortOrder"]
  GETIMPORT R10 K20 [UDim.new]
  LOADN R11 0
  LOADN R12 8
  CALL R10 2 1
  SETTABLEKS R10 R9 K12 ["Padding"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K6 ["Layout"]
  LOADN R7 0
  GETIMPORT R8 K22 [pairs]
  MOVE R9 R1
  CALL R8 1 3
  FORGPREP_NEXT R8
  MOVE R13 R7
  FASTCALL1 TYPEOF R12 [+3]
  MOVE R15 R12
  GETIMPORT R14 K24 [typeof]
  CALL R14 1 1
  JUMPIFNOTEQKS R14 K25 ["table"] [+7]
  GETTABLEKS R14 R12 K26 ["index"]
  JUMPIFEQKNIL R14 [+3]
  GETTABLEKS R13 R12 K26 ["index"]
  JUMPIFNOTLT R13 R5 [+12]
  ADDK R7 R7 K27 [1]
  FASTCALL1 TOSTRING R11 [+3]
  MOVE R15 R11
  GETIMPORT R14 K29 [tostring]
  CALL R14 1 1
  MOVE R15 R2
  MOVE R16 R11
  MOVE R17 R12
  CALL R15 2 1
  SETTABLE R15 R6 R14
  FORGLOOP R8 2 [-28]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K8 ["createElement"]
  LOADK R9 K30 ["Frame"]
  DUPTABLE R10 K34 [{"LayoutOrder", "AutomaticSize", "Size", "Position", "BackgroundTransparency"}]
  SETTABLEKS R4 R10 K4 ["LayoutOrder"]
  GETIMPORT R11 K36 [Enum.AutomaticSize.Y]
  SETTABLEKS R11 R10 K31 ["AutomaticSize"]
  GETIMPORT R11 K39 [UDim2.fromScale]
  LOADN R12 1
  LOADN R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K32 ["Size"]
  SETTABLEKS R3 R10 K3 ["Position"]
  LOADN R11 1
  SETTABLEKS R11 R10 K33 ["BackgroundTransparency"]
  MOVE R11 R6
  CALL R8 3 -1
  RETURN R8 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R1 K6 ["Roact"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K7 ["PureComponent"]
  LOADK R5 K8 ["HorizontalList"]
  NAMECALL R3 R3 K9 ["extend"]
  CALL R3 2 1
  DUPCLOSURE R4 K10 [PROTO_0]
  CAPTURE VAL R2
  SETTABLEKS R4 R3 K11 ["render"]
  RETURN R3 1
