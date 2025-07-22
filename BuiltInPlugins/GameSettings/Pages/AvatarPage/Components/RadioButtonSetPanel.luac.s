PROTO_0:
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["IsVisible"]
  JUMPIFNOTEQKNIL R2 [+3]
  LOADB R1 1
  JUMP [+4]
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["IsVisible"]
  JUMPIF R1 [+19]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["createElement"]
  LOADK R3 K3 ["Frame"]
  DUPTABLE R4 K6 [{"Size", "BorderSizePixel"}]
  GETIMPORT R5 K9 [UDim2.new]
  LOADN R6 0
  LOADN R7 0
  LOADN R8 0
  LOADN R9 0
  CALL R5 4 1
  SETTABLEKS R5 R4 K4 ["Size"]
  LOADN R5 0
  SETTABLEKS R5 R4 K5 ["BorderSizePixel"]
  CALL R2 2 -1
  RETURN R2 -1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K18 [{"Title", "Buttons", "Enabled", "LayoutOrder", "Selected", "SubDescription", "SelectionChanged", "Mouse"}]
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K10 ["Title"]
  SETTABLEKS R5 R4 K10 ["Title"]
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K11 ["Buttons"]
  SETTABLEKS R5 R4 K11 ["Buttons"]
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K12 ["Enabled"]
  SETTABLEKS R5 R4 K12 ["Enabled"]
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K13 ["LayoutOrder"]
  SETTABLEKS R5 R4 K13 ["LayoutOrder"]
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K14 ["Selected"]
  SETTABLEKS R5 R4 K14 ["Selected"]
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K15 ["SubDescription"]
  SETTABLEKS R5 R4 K15 ["SubDescription"]
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K16 ["SelectionChanged"]
  SETTABLEKS R5 R4 K16 ["SelectionChanged"]
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K17 ["Mouse"]
  SETTABLEKS R5 R4 K17 ["Mouse"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETTABLEKS R2 R0 K7 ["RoactStudioWidgets"]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K9 ["Flags"]
  GETTABLEKS R4 R5 K10 ["getFFlagGameSettingsUseDFRadioButton"]
  CALL R3 1 1
  CALL R3 0 1
  JUMPIFNOT R3 [+10]
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K8 ["Src"]
  GETTABLEKS R6 R7 K11 ["Components"]
  GETTABLEKS R5 R6 K12 ["RadioButtonSet"]
  CALL R4 1 1
  JUMP [+5]
  GETIMPORT R4 K4 [require]
  GETTABLEKS R5 R2 K12 ["RadioButtonSet"]
  CALL R4 1 1
  GETTABLEKS R5 R1 K13 ["Component"]
  LOADK R7 K14 ["ComponentRadioButtonSetPanel"]
  NAMECALL R5 R5 K15 ["extend"]
  CALL R5 2 1
  DUPCLOSURE R6 K16 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R4
  SETTABLEKS R6 R5 K17 ["render"]
  RETURN R5 1
