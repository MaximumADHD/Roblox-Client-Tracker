PROTO_0:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R2 1
  GETUPVAL R3 2
  DUPTABLE R4 K4 [{"LayoutOrder", "clickableViewProps", "affordanceViewProps", "onActivated"}]
  GETTABLEKS R5 R0 K5 ["layoutOrder"]
  SETTABLEKS R5 R4 K0 ["LayoutOrder"]
  DUPTABLE R5 K7 [{"tag"}]
  LOADK R6 K8 ["size-600-600"]
  SETTABLEKS R6 R5 K6 ["tag"]
  SETTABLEKS R5 R4 K1 ["clickableViewProps"]
  DUPTABLE R5 K10 [{"tag", "children"}]
  LOADK R6 K11 ["size-800-600 radius-small"]
  SETTABLEKS R6 R5 K6 ["tag"]
  DUPTABLE R6 K13 [{"UIGradient"}]
  GETUPVAL R7 1
  LOADK R8 K12 ["UIGradient"]
  DUPTABLE R9 K15 [{"Transparency"}]
  GETIMPORT R10 K18 [NumberSequence.new]
  NEWTABLE R11 0 4
  GETIMPORT R12 K20 [NumberSequenceKeypoint.new]
  LOADN R13 0
  LOADN R14 0
  CALL R12 2 1
  GETIMPORT R13 K20 [NumberSequenceKeypoint.new]
  GETTABLEKS R16 R1 K21 ["Size"]
  GETTABLEKS R15 R16 K22 ["Size_600"]
  GETTABLEKS R17 R1 K21 ["Size"]
  GETTABLEKS R16 R17 K23 ["Size_800"]
  DIV R14 R15 R16
  LOADN R15 0
  CALL R13 2 1
  GETIMPORT R14 K20 [NumberSequenceKeypoint.new]
  GETTABLEKS R17 R1 K21 ["Size"]
  GETTABLEKS R16 R17 K22 ["Size_600"]
  GETTABLEKS R18 R1 K21 ["Size"]
  GETTABLEKS R17 R18 K23 ["Size_800"]
  DIV R15 R16 R17
  LOADN R16 1
  CALL R14 2 1
  GETIMPORT R15 K20 [NumberSequenceKeypoint.new]
  LOADN R16 1
  LOADN R17 1
  CALL R15 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R10 1 1
  SETTABLEKS R10 R9 K14 ["Transparency"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K12 ["UIGradient"]
  SETTABLEKS R6 R5 K9 ["children"]
  SETTABLEKS R5 R4 K2 ["affordanceViewProps"]
  GETTABLEKS R5 R0 K3 ["onActivated"]
  SETTABLEKS R5 R4 K3 ["onActivated"]
  GETTABLEKS R5 R0 K9 ["children"]
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Properties"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["Foundation"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Parent"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K9 ["Components"]
  GETTABLEKS R5 R6 K10 ["Util"]
  GETTABLEKS R4 R5 K11 ["SeparatedView"]
  CALL R3 1 1
  GETTABLEKS R4 R2 K12 ["createElement"]
  GETTABLEKS R6 R1 K13 ["Hooks"]
  GETTABLEKS R5 R6 K14 ["useTokens"]
  DUPCLOSURE R6 K15 [PROTO_0]
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R3
  RETURN R6 1
