MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetManager"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleRule"]
  MOVE R3 R2
  LOADK R4 K10 [".SearchOptions"]
  NEWTABLE R5 0 0
  NEWTABLE R6 0 2
  MOVE R7 R2
  LOADK R8 K11 [">> .FilterSection"]
  DUPTABLE R9 K13 [{"Size"}]
  GETIMPORT R10 K16 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 0
  LOADN R14 45
  CALL R10 4 1
  SETTABLEKS R10 R9 K12 ["Size"]
  NEWTABLE R10 0 1
  MOVE R11 R2
  LOADK R12 K17 ["::UIPadding"]
  DUPTABLE R13 K22 [{"PaddingLeft", "PaddingRight", "PaddingBottom", "PaddingTop"}]
  GETIMPORT R14 K24 [UDim.new]
  LOADN R15 0
  LOADN R16 10
  CALL R14 2 1
  SETTABLEKS R14 R13 K18 ["PaddingLeft"]
  GETIMPORT R14 K24 [UDim.new]
  LOADN R15 0
  LOADN R16 10
  CALL R14 2 1
  SETTABLEKS R14 R13 K19 ["PaddingRight"]
  GETIMPORT R14 K24 [UDim.new]
  LOADN R15 0
  LOADN R16 10
  CALL R14 2 1
  SETTABLEKS R14 R13 K20 ["PaddingBottom"]
  GETIMPORT R14 K24 [UDim.new]
  LOADN R15 0
  LOADN R16 10
  CALL R14 2 1
  SETTABLEKS R14 R13 K21 ["PaddingTop"]
  CALL R11 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  MOVE R8 R2
  LOADK R9 K25 [">> .SearchOptionHeading"]
  DUPTABLE R10 K13 [{"Size"}]
  GETIMPORT R11 K16 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 0
  LOADN R15 30
  CALL R11 4 1
  SETTABLEKS R11 R10 K12 ["Size"]
  CALL R8 2 -1
  SETLIST R6 R7 -1 [1]
  DUPTABLE R7 K27 [{"FilterSize"}]
  GETIMPORT R8 K16 [UDim2.new]
  LOADN R9 1
  LOADN R10 0
  LOADN R11 0
  LOADN R12 30
  CALL R8 4 1
  SETTABLEKS R8 R7 K26 ["FilterSize"]
  CALL R3 4 -1
  RETURN R3 -1
