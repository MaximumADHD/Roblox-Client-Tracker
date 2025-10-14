PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createElement"]
  LOADK R3 K1 ["UIGradient"]
  DUPTABLE R4 K4 [{"Rotation", "Transparency"}]
  SETTABLEKS R0 R4 K2 ["Rotation"]
  GETIMPORT R5 K7 [NumberSequence.new]
  NEWTABLE R6 0 3
  GETIMPORT R7 K9 [NumberSequenceKeypoint.new]
  LOADN R8 0
  SUBRK R9 R10 K1 ["UIGradient"]
  CALL R7 2 1
  GETIMPORT R8 K9 [NumberSequenceKeypoint.new]
  LOADK R9 K11 [0.5]
  MOVE R10 R1
  CALL R8 2 1
  GETIMPORT R9 K9 [NumberSequenceKeypoint.new]
  LOADN R10 1
  MOVE R11 R1
  CALL R9 2 -1
  SETLIST R6 R7 -1 [1]
  CALL R5 1 1
  SETTABLEKS R5 R4 K3 ["Transparency"]
  CALL R2 2 -1
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
  DUPCLOSURE R3 K8 [PROTO_0]
  CAPTURE VAL R2
  RETURN R3 1
