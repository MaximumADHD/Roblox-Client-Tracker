PROTO_0:
  GETTABLEKS R1 R0 K0 ["controls"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["createElement"]
  LOADK R3 K2 ["Frame"]
  DUPTABLE R4 K5 [{"BackgroundTransparency", "Size"}]
  LOADN R5 1
  SETTABLEKS R5 R4 K3 ["BackgroundTransparency"]
  GETIMPORT R5 K8 [UDim2.new]
  LOADN R6 0
  LOADN R7 100
  LOADN R8 0
  LOADN R9 50
  CALL R5 4 1
  SETTABLEKS R5 R4 K4 ["Size"]
  DUPTABLE R5 K9 [{"Frame"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["createElement"]
  LOADK R7 K2 ["Frame"]
  DUPTABLE R8 K11 [{"BackgroundTransparency", "Size", "Position"}]
  LOADN R9 1
  SETTABLEKS R9 R8 K3 ["BackgroundTransparency"]
  GETIMPORT R9 K8 [UDim2.new]
  LOADN R10 1
  LOADN R11 236
  LOADN R12 1
  LOADN R13 236
  CALL R9 4 1
  SETTABLEKS R9 R8 K4 ["Size"]
  GETIMPORT R9 K8 [UDim2.new]
  LOADN R10 0
  LOADN R11 10
  LOADN R12 0
  LOADN R13 10
  CALL R9 4 1
  SETTABLEKS R9 R8 K10 ["Position"]
  DUPTABLE R9 K13 [{"Cursor"}]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K1 ["createElement"]
  GETUPVAL R11 1
  DUPTABLE R12 K18 [{"cornerRadius", "offset", "borderWidth", "isVisible"}]
  GETIMPORT R13 K20 [UDim.new]
  LOADN R14 0
  GETTABLEKS R15 R1 K14 ["cornerRadius"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K14 ["cornerRadius"]
  GETTABLEKS R13 R1 K15 ["offset"]
  SETTABLEKS R13 R12 K15 ["offset"]
  GETTABLEKS R13 R1 K16 ["borderWidth"]
  SETTABLEKS R13 R12 K16 ["borderWidth"]
  LOADB R13 1
  SETTABLEKS R13 R12 K17 ["isVisible"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K12 ["Cursor"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K2 ["Frame"]
  CALL R2 3 -1
  RETURN R2 -1

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
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K4 ["Parent"]
  GETTABLEKS R4 R5 K8 ["CursorComponent"]
  CALL R3 1 1
  DUPTABLE R4 K12 [{"summary", "story", "controls"}]
  LOADK R5 K13 ["Selection cursors for different types of UI elements"]
  SETTABLEKS R5 R4 K9 ["summary"]
  DUPCLOSURE R5 K14 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R3
  SETTABLEKS R5 R4 K10 ["story"]
  DUPTABLE R5 K18 [{"cornerRadius", "offset", "borderWidth"}]
  LOADN R6 8
  SETTABLEKS R6 R5 K15 ["cornerRadius"]
  LOADN R6 3
  SETTABLEKS R6 R5 K16 ["offset"]
  LOADN R6 2
  SETTABLEKS R6 R5 K17 ["borderWidth"]
  SETTABLEKS R5 R4 K11 ["controls"]
  RETURN R4 1
