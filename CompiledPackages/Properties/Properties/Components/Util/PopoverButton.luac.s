PROTO_0:
  GETUPVAL R1 0
  GETUPVAL R2 1
  DUPTABLE R3 K4 [{"LayoutOrder", "clickableViewProps", "affordanceViewProps", "onActivated"}]
  GETTABLEKS R4 R0 K5 ["layoutOrder"]
  SETTABLEKS R4 R3 K0 ["LayoutOrder"]
  DUPTABLE R4 K7 [{"tag"}]
  LOADK R5 K8 ["size-600-600"]
  SETTABLEKS R5 R4 K6 ["tag"]
  SETTABLEKS R4 R3 K1 ["clickableViewProps"]
  DUPTABLE R4 K10 [{"tag", "children"}]
  LOADK R5 K11 ["size-800-600 radius-small"]
  SETTABLEKS R5 R4 K6 ["tag"]
  DUPTABLE R5 K13 [{"UIGradient"}]
  GETUPVAL R6 0
  LOADK R7 K12 ["UIGradient"]
  DUPTABLE R8 K15 [{"Transparency"}]
  GETIMPORT R9 K18 [NumberSequence.new]
  NEWTABLE R10 0 4
  GETIMPORT R11 K20 [NumberSequenceKeypoint.new]
  LOADN R12 0
  LOADN R13 0
  CALL R11 2 1
  GETIMPORT R12 K20 [NumberSequenceKeypoint.new]
  LOADK R13 K21 [0.75]
  LOADN R14 0
  CALL R12 2 1
  GETIMPORT R13 K20 [NumberSequenceKeypoint.new]
  LOADK R14 K21 [0.75]
  LOADN R15 1
  CALL R13 2 1
  GETIMPORT R14 K20 [NumberSequenceKeypoint.new]
  LOADN R15 1
  LOADN R16 1
  CALL R14 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R9 1 1
  SETTABLEKS R9 R8 K14 ["Transparency"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K12 ["UIGradient"]
  SETTABLEKS R5 R4 K9 ["children"]
  SETTABLEKS R4 R3 K2 ["affordanceViewProps"]
  GETTABLEKS R4 R0 K3 ["onActivated"]
  SETTABLEKS R4 R3 K3 ["onActivated"]
  GETTABLEKS R4 R0 K9 ["children"]
  CALL R1 3 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Properties"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Components"]
  GETTABLEKS R4 R5 K9 ["Util"]
  GETTABLEKS R3 R4 K10 ["SeparatedView"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K11 ["createElement"]
  DUPCLOSURE R4 K12 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R2
  RETURN R4 1
