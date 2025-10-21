PROTO_0:
  GETUPVAL R2 0
  CALL R2 0 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["createElement"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K1 ["FoundationRemoveCursorProviderTestOutput"]
  JUMPIFNOT R5 [+2]
  LOADK R4 K2 ["Frame"]
  JUMP [+1]
  GETUPVAL R4 3
  DUPTABLE R5 K8 [{"BackgroundTransparency", "BorderSizePixel", "Position", "Size", "ref"}]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K1 ["FoundationRemoveCursorProviderTestOutput"]
  JUMPIFNOT R7 [+2]
  LOADN R6 1
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K3 ["BackgroundTransparency"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K1 ["FoundationRemoveCursorProviderTestOutput"]
  JUMPIFNOT R7 [+2]
  LOADN R6 0
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K4 ["BorderSizePixel"]
  GETIMPORT R6 K11 [UDim2.fromOffset]
  GETTABLEKS R8 R0 K12 ["offset"]
  MINUS R7 R8
  GETTABLEKS R9 R0 K12 ["offset"]
  MINUS R8 R9
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["Position"]
  GETIMPORT R6 K14 [UDim2.new]
  LOADN R7 1
  GETTABLEKS R9 R0 K12 ["offset"]
  MULK R8 R9 K15 [2]
  LOADN R9 1
  GETTABLEKS R11 R0 K12 ["offset"]
  MULK R10 R11 K15 [2]
  CALL R6 4 1
  SETTABLEKS R6 R5 K6 ["Size"]
  SETTABLEKS R1 R5 K7 ["ref"]
  DUPTABLE R6 K18 [{"UICorner", "UIStroke"}]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K0 ["createElement"]
  LOADK R8 K16 ["UICorner"]
  DUPTABLE R9 K20 [{"CornerRadius"}]
  GETTABLEKS R10 R0 K21 ["cornerRadius"]
  SETTABLEKS R10 R9 K19 ["CornerRadius"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K16 ["UICorner"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K0 ["createElement"]
  LOADK R8 K17 ["UIStroke"]
  DUPTABLE R9 K25 [{"Color", "Transparency", "Thickness"}]
  GETTABLEKS R13 R2 K22 ["Color"]
  GETTABLEKS R12 R13 K26 ["Selection"]
  GETTABLEKS R11 R12 K27 ["Start"]
  GETTABLEKS R10 R11 K28 ["Color3"]
  SETTABLEKS R10 R9 K22 ["Color"]
  GETTABLEKS R13 R2 K22 ["Color"]
  GETTABLEKS R12 R13 K26 ["Selection"]
  GETTABLEKS R11 R12 K27 ["Start"]
  GETTABLEKS R10 R11 K23 ["Transparency"]
  SETTABLEKS R10 R9 K23 ["Transparency"]
  GETTABLEKS R10 R0 K29 ["borderWidth"]
  SETTABLEKS R10 R9 K24 ["Thickness"]
  NEWTABLE R10 0 0
  CALL R7 3 1
  SETTABLEKS R7 R6 K17 ["UIStroke"]
  CALL R3 3 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Foundation"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Parent"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R6 R0 K8 ["Providers"]
  GETTABLEKS R5 R6 K9 ["Style"]
  GETTABLEKS R4 R5 K10 ["useTokens"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R0 K11 ["Components"]
  GETTABLEKS R5 R6 K12 ["View"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K13 ["Utility"]
  GETTABLEKS R6 R7 K14 ["Flags"]
  CALL R5 1 1
  GETTABLEKS R6 R2 K15 ["forwardRef"]
  DUPCLOSURE R7 K16 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R4
  CALL R6 1 1
  GETTABLEKS R7 R2 K17 ["memo"]
  MOVE R8 R6
  CALL R7 1 -1
  RETURN R7 -1
