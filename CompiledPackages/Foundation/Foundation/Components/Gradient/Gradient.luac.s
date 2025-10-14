PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  LOADK R2 K1 ["UIGradient"]
  DUPTABLE R3 K4 [{"Rotation", "Transparency"}]
  GETTABLEKS R5 R0 K5 ["fillDirection"]
  GETIMPORT R6 K9 [Enum.FillDirection.Vertical]
  JUMPIFNOTEQ R5 R6 [+3]
  LOADN R4 90
  JUMP [+1]
  LOADN R4 0
  SETTABLEKS R4 R3 K2 ["Rotation"]
  GETIMPORT R4 K12 [NumberSequence.new]
  NEWTABLE R5 0 3
  GETIMPORT R6 K14 [NumberSequenceKeypoint.new]
  LOADN R7 0
  GETTABLEKS R9 R0 K15 ["top"]
  JUMPIFNOT R9 [+2]
  LOADN R8 0
  JUMP [+1]
  LOADN R8 1
  CALL R6 2 1
  GETIMPORT R7 K14 [NumberSequenceKeypoint.new]
  LOADK R8 K16 [0.5]
  LOADN R9 0
  CALL R7 2 1
  GETIMPORT R8 K14 [NumberSequenceKeypoint.new]
  LOADN R9 1
  GETTABLEKS R11 R0 K15 ["top"]
  JUMPIFNOT R11 [+2]
  LOADN R10 1
  JUMP [+1]
  LOADN R10 0
  CALL R8 2 -1
  SETLIST R5 R6 -1 [1]
  CALL R4 1 1
  SETTABLEKS R4 R3 K3 ["Transparency"]
  CALL R1 2 -1
  RETURN R1 -1

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
