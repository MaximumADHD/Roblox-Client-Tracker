PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createElement"]
  GETUPVAL R1 1
  NEWTABLE R2 0 0
  DUPTABLE R3 K2 [{"Frame"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  LOADK R5 K1 ["Frame"]
  DUPTABLE R6 K6 [{"AutomaticSize", "BackgroundColor3", "Size"}]
  GETIMPORT R7 K9 [Enum.AutomaticSize.Y]
  SETTABLEKS R7 R6 K3 ["AutomaticSize"]
  GETIMPORT R7 K12 [Color3.new]
  LOADN R8 255
  LOADN R9 255
  LOADN R10 255
  CALL R7 3 1
  SETTABLEKS R7 R6 K4 ["BackgroundColor3"]
  GETIMPORT R7 K14 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 1
  LOADN R11 0
  CALL R7 4 1
  SETTABLEKS R7 R6 K5 ["Size"]
  DUPTABLE R7 K17 [{"Autocorrect", "Padding"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  GETUPVAL R9 2
  DUPTABLE R10 K22 [{"CorrectionState", "CurrentQuery", "CorrectedQuery", "UserQuery"}]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K23 ["AutocorrectResponseState"]
  GETTABLEKS R11 R12 K24 ["CorrectionAvailable"]
  SETTABLEKS R11 R10 K18 ["CorrectionState"]
  LOADK R11 K25 ["foo"]
  SETTABLEKS R11 R10 K19 ["CurrentQuery"]
  LOADK R11 K26 ["bar"]
  SETTABLEKS R11 R10 K20 ["CorrectedQuery"]
  LOADNIL R11
  SETTABLEKS R11 R10 K21 ["UserQuery"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K15 ["Autocorrect"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  LOADK R9 K27 ["UIPadding"]
  DUPTABLE R10 K32 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R11 K34 [UDim.new]
  LOADN R12 0
  LOADN R13 10
  CALL R11 2 1
  SETTABLEKS R11 R10 K28 ["PaddingTop"]
  GETIMPORT R11 K34 [UDim.new]
  LOADN R12 0
  LOADN R13 10
  CALL R11 2 1
  SETTABLEKS R11 R10 K29 ["PaddingBottom"]
  GETIMPORT R11 K34 [UDim.new]
  LOADN R12 0
  LOADN R13 10
  CALL R11 2 1
  SETTABLEKS R11 R10 K30 ["PaddingLeft"]
  GETIMPORT R11 K34 [UDim.new]
  LOADN R12 0
  LOADN R13 10
  CALL R11 2 1
  SETTABLEKS R11 R10 K31 ["PaddingRight"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K16 ["Padding"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K1 ["Frame"]
  CALL R0 3 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R5 R0 K6 ["Core"]
  GETTABLEKS R4 R5 K7 ["Components"]
  GETTABLEKS R3 R4 K8 ["Autocorrect"]
  GETTABLEKS R2 R3 K8 ["Autocorrect"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K11 ["Stories"]
  GETTABLEKS R4 R5 K12 ["ToolboxStoryWrapper"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K6 ["Core"]
  GETTABLEKS R6 R7 K13 ["Types"]
  GETTABLEKS R5 R6 K14 ["AutocorrectTypes"]
  CALL R4 1 1
  DUPTABLE R5 K18 [{"name", "summary", "story"}]
  LOADK R6 K8 ["Autocorrect"]
  SETTABLEKS R6 R5 K15 ["name"]
  LOADK R6 K19 ["An Autocorrect component"]
  SETTABLEKS R6 R5 K16 ["summary"]
  DUPCLOSURE R6 K20 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R4
  SETTABLEKS R6 R5 K17 ["story"]
  RETURN R5 1
