PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Localization"]
  NAMECALL R1 R1 K1 ["use"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["createElement"]
  LOADK R3 K3 ["TextLabel"]
  NEWTABLE R4 4 0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K4 ["Tag"]
  LOADK R6 K5 ["VisualizationModes-HiddenCountLabel"]
  SETTABLE R6 R4 R5
  GETTABLEKS R5 R0 K6 ["LayoutOrder"]
  SETTABLEKS R5 R4 K6 ["LayoutOrder"]
  GETTABLEKS R5 R0 K7 ["Visible"]
  SETTABLEKS R5 R4 K7 ["Visible"]
  GETTABLEKS R8 R0 K8 ["AllHidden"]
  JUMPIFNOT R8 [+2]
  LOADK R7 K9 ["AllHiddenCount"]
  JUMP [+1]
  LOADK R7 K10 ["HiddenCount"]
  LOADK R8 K11 ["Text"]
  DUPTABLE R9 K13 [{"hidden"}]
  GETTABLEKS R10 R0 K10 ["HiddenCount"]
  SETTABLEKS R10 R9 K12 ["hidden"]
  NAMECALL R5 R1 K14 ["getText"]
  CALL R5 4 1
  SETTABLEKS R5 R4 K11 ["Text"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["VisualizationModes"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["ContextServices"]
  DUPCLOSURE R4 K10 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R1
  RETURN R4 1
