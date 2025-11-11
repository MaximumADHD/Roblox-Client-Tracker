PROTO_0:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["GetAnimationNodeTypes"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  NEWTABLE R0 0 1
  GETIMPORT R1 K3 [Enum.KeyInterpolationMode.Cubic]
  SETLIST R0 R1 1 [1]
  RETURN R0 1

PROTO_2:
  DUPTABLE R1 K4 [{"Name", "Group", "Inputs", "Properties"}]
  LOADK R2 K5 ["ClipNode"]
  SETTABLEKS R2 R1 K0 ["Name"]
  LOADK R2 K6 ["Content"]
  SETTABLEKS R2 R1 K1 ["Group"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K2 ["Inputs"]
  NEWTABLE R2 0 4
  DUPTABLE R3 K8 [{"Name", "Value"}]
  LOADK R4 K9 ["speed"]
  SETTABLEKS R4 R3 K0 ["Name"]
  LOADN R4 1
  SETTABLEKS R4 R3 K7 ["Value"]
  DUPTABLE R4 K8 [{"Name", "Value"}]
  LOADK R5 K10 ["looping"]
  SETTABLEKS R5 R4 K0 ["Name"]
  LOADB R5 1
  SETTABLEKS R5 R4 K7 ["Value"]
  DUPTABLE R5 K8 [{"Name", "Value"}]
  LOADK R6 K11 ["animationId"]
  SETTABLEKS R6 R5 K0 ["Name"]
  LOADK R6 K12 [""]
  SETTABLEKS R6 R5 K7 ["Value"]
  DUPTABLE R6 K8 [{"Name", "Value"}]
  LOADK R7 K13 ["externalTime"]
  SETTABLEKS R7 R6 K0 ["Name"]
  LOADN R7 255
  SETTABLEKS R7 R6 K7 ["Value"]
  SETLIST R2 R3 4 [1]
  SETTABLEKS R2 R1 K3 ["Properties"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["AnimationClipProvider"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [pcall]
  DUPCLOSURE R2 K6 [PROTO_0]
  CAPTURE VAL R0
  CALL R1 1 2
  JUMPIFNOT R1 [+1]
  RETURN R0 1
  NEWTABLE R3 2 0
  DUPCLOSURE R4 K7 [PROTO_1]
  SETTABLEKS R4 R3 K8 ["GetAnimationNodeTypes"]
  DUPCLOSURE R4 K9 [PROTO_2]
  SETTABLEKS R4 R3 K10 ["GetAnimationNodeDefinition"]
  RETURN R3 1
