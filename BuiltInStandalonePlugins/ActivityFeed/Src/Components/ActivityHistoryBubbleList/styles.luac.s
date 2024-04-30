MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K7 ["Styling"]
  GETTABLEKS R2 R3 K8 ["createStyleRule"]
  MOVE R3 R2
  LOADK R4 K9 [".Component-ActivityHistoryBubbleList"]
  NEWTABLE R5 0 0
  NEWTABLE R6 0 2
  MOVE R7 R2
  LOADK R8 K10 [">> .Component-BubbleFrame"]
  NEWTABLE R9 0 0
  NEWTABLE R10 0 1
  MOVE R11 R2
  LOADK R12 K11 ["::UIPadding"]
  DUPTABLE R13 K15 [{"PaddingTop", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R14 K18 [UDim.new]
  LOADN R15 0
  LOADN R16 4
  CALL R14 2 1
  SETTABLEKS R14 R13 K12 ["PaddingTop"]
  GETIMPORT R14 K18 [UDim.new]
  LOADN R15 0
  LOADN R16 1
  CALL R14 2 1
  SETTABLEKS R14 R13 K13 ["PaddingLeft"]
  GETIMPORT R14 K18 [UDim.new]
  LOADN R15 0
  LOADN R16 2
  CALL R14 2 1
  SETTABLEKS R14 R13 K14 ["PaddingRight"]
  CALL R11 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  MOVE R8 R2
  LOADK R9 K19 ["> ScrollingFrame"]
  DUPTABLE R10 K21 [{"BackgroundTransparency"}]
  LOADN R11 1
  SETTABLEKS R11 R10 K20 ["BackgroundTransparency"]
  NEWTABLE R11 0 1
  MOVE R12 R2
  LOADK R13 K22 ["> Frame"]
  DUPTABLE R14 K21 [{"BackgroundTransparency"}]
  LOADN R15 1
  SETTABLEKS R15 R14 K20 ["BackgroundTransparency"]
  CALL R12 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1
