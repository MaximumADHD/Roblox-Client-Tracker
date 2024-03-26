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
  NEWTABLE R6 0 1
  MOVE R7 R2
  LOADK R8 K10 ["> ScrollingFrame"]
  DUPTABLE R9 K12 [{"BackgroundTransparency"}]
  LOADN R10 1
  SETTABLEKS R10 R9 K11 ["BackgroundTransparency"]
  NEWTABLE R10 0 1
  MOVE R11 R2
  LOADK R12 K13 ["> Frame"]
  DUPTABLE R13 K12 [{"BackgroundTransparency"}]
  LOADN R14 1
  SETTABLEKS R14 R13 K11 ["BackgroundTransparency"]
  CALL R11 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1
