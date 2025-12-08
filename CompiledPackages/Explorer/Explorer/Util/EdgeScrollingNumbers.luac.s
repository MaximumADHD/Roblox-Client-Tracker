PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ExplorerEdgeScrollingGradualStartTime"]
  LOADK R3 K3 [0.3]
  NAMECALL R0 R0 K4 ["DefineFastInt"]
  CALL R0 3 -1
  RETURN R0 -1

PROTO_1:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ExplorerEdgeScrollingTimeToPeak"]
  LOADN R3 2
  NAMECALL R0 R0 K3 ["DefineFastInt"]
  CALL R0 3 -1
  RETURN R0 -1

PROTO_2:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ExplorerEdgeScrollingBoundaryHeight"]
  LOADN R3 32
  NAMECALL R0 R0 K3 ["DefineFastInt"]
  CALL R0 3 -1
  RETURN R0 -1

PROTO_3:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ExplorerEdgeScrollingSpeedMinimum"]
  LOADN R3 32
  NAMECALL R0 R0 K3 ["DefineFastInt"]
  CALL R0 3 -1
  RETURN R0 -1

PROTO_4:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ExplorerEdgeScrollingSpeedMaximum"]
  LOADN R3 150
  NAMECALL R0 R0 K3 ["DefineFastInt"]
  CALL R0 3 -1
  RETURN R0 -1

PROTO_5:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ExplorerEdgeScrollingTimeToSpeedFactor"]
  LOADN R3 3
  NAMECALL R0 R0 K3 ["DefineFastInt"]
  CALL R0 3 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 8 0
  DUPCLOSURE R1 K0 [PROTO_0]
  SETTABLEKS R1 R0 K1 ["getGradualStartTime"]
  DUPCLOSURE R1 K2 [PROTO_1]
  SETTABLEKS R1 R0 K3 ["getTimeToPeak"]
  DUPCLOSURE R1 K4 [PROTO_2]
  SETTABLEKS R1 R0 K5 ["getBoundaryHeight"]
  DUPCLOSURE R1 K6 [PROTO_3]
  SETTABLEKS R1 R0 K7 ["getSpeedMinimum"]
  DUPCLOSURE R1 K8 [PROTO_4]
  SETTABLEKS R1 R0 K9 ["getSpeedMaximum"]
  DUPCLOSURE R1 K10 [PROTO_5]
  SETTABLEKS R1 R0 K11 ["getTimeToSpeedFactor"]
  RETURN R0 1
