PROTO_0:
  GETIMPORT R0 K2 [AnimationNode.GetRegisteredTypes]
  CALL R0 0 0
  RETURN R0 0

PROTO_1:
  NEWTABLE R0 0 1
  LOADK R1 K0 ["ClipAnimationNode"]
  SETLIST R0 R1 1 [1]
  RETURN R0 1

PROTO_2:
  JUMPIFNOTEQKS R0 K0 ["ClipAnimationNode"] [+47]
  DUPTABLE R1 K5 [{"Name", "Group", "Inputs", "Properties"}]
  LOADK R2 K0 ["ClipAnimationNode"]
  SETTABLEKS R2 R1 K1 ["Name"]
  LOADK R2 K6 ["Content"]
  SETTABLEKS R2 R1 K2 ["Group"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K3 ["Inputs"]
  NEWTABLE R2 0 4
  DUPTABLE R3 K8 [{"Name", "Value"}]
  LOADK R4 K9 ["speed"]
  SETTABLEKS R4 R3 K1 ["Name"]
  LOADN R4 1
  SETTABLEKS R4 R3 K7 ["Value"]
  DUPTABLE R4 K8 [{"Name", "Value"}]
  LOADK R5 K10 ["looping"]
  SETTABLEKS R5 R4 K1 ["Name"]
  LOADB R5 1
  SETTABLEKS R5 R4 K7 ["Value"]
  DUPTABLE R5 K8 [{"Name", "Value"}]
  LOADK R6 K11 ["animationId"]
  SETTABLEKS R6 R5 K1 ["Name"]
  LOADK R6 K12 [""]
  SETTABLEKS R6 R5 K7 ["Value"]
  DUPTABLE R6 K8 [{"Name", "Value"}]
  LOADK R7 K13 ["externalTime"]
  SETTABLEKS R7 R6 K1 ["Name"]
  LOADN R7 255
  SETTABLEKS R7 R6 K7 ["Value"]
  SETLIST R2 R3 4 [1]
  SETTABLEKS R2 R1 K4 ["Properties"]
  RETURN R1 1
  LOADNIL R1
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [pcall]
  DUPCLOSURE R1 K2 [PROTO_0]
  CALL R0 1 2
  JUMPIFNOT R0 [+3]
  GETIMPORT R2 K4 [AnimationNode]
  RETURN R2 1
  NEWTABLE R2 2 0
  DUPCLOSURE R3 K5 [PROTO_1]
  SETTABLEKS R3 R2 K6 ["GetRegisteredTypes"]
  DUPCLOSURE R3 K7 [PROTO_2]
  SETTABLEKS R3 R2 K8 ["GetDefinition"]
  RETURN R2 1
