PROTO_0:
  GETIMPORT R2 K2 [OverlapParams.new]
  CALL R2 0 1
  GETIMPORT R3 K6 [Enum.RaycastFilterType.Include]
  SETTABLEKS R3 R2 K7 ["FilterType"]
  LOADK R3 K8 [0.001]
  SETTABLEKS R3 R2 K9 ["Tolerance"]
  SETTABLEKS R1 R2 K10 ["FilterDescendantsInstances"]
  LOADB R3 0
  MOVE R4 R1
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  LOADK R11 K11 ["BasePart"]
  NAMECALL R9 R8 K12 ["IsA"]
  CALL R9 2 1
  JUMPIFNOT R9 [+39]
  GETIMPORT R9 K14 [workspace]
  MOVE R11 R8
  MOVE R12 R2
  NAMECALL R9 R9 K15 ["GetPartsInPart"]
  CALL R9 3 1
  NAMECALL R10 R8 K16 ["GetConnectedParts"]
  CALL R10 1 1
  NEWTABLE R11 0 0
  MOVE R12 R10
  LOADNIL R13
  LOADNIL R14
  FORGPREP R12
  LOADB R17 1
  SETTABLE R17 R11 R16
  FORGLOOP R12 2 [-3]
  MOVE R12 R9
  LOADNIL R13
  LOADNIL R14
  FORGPREP R12
  GETTABLE R17 R11 R16
  JUMPIF R17 [+11]
  GETIMPORT R17 K18 [Instance.new]
  MOVE R18 R0
  CALL R17 1 1
  SETTABLEKS R8 R17 K19 ["Part0"]
  SETTABLEKS R16 R17 K20 ["Part1"]
  SETTABLEKS R8 R17 K21 ["Parent"]
  LOADB R3 1
  FORGLOOP R12 2 [-14]
  FORGLOOP R4 2 [-45]
  RETURN R3 1

PROTO_1:
  GETIMPORT R3 K2 [Instance.new]
  MOVE R4 R0
  CALL R3 1 1
  SETTABLEKS R1 R3 K3 ["Part0"]
  SETTABLEKS R2 R3 K4 ["Part1"]
  SETTABLEKS R1 R3 K5 ["Parent"]
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["Get"]
  CALL R1 1 1
  LENGTH R2 R1
  JUMPIFNOTEQKN R2 K1 [2] [+28]
  GETTABLEN R2 R1 1
  LOADK R4 K2 ["BasePart"]
  NAMECALL R2 R2 K3 ["IsA"]
  CALL R2 2 1
  JUMPIFNOT R2 [+21]
  GETTABLEN R2 R1 2
  LOADK R4 K2 ["BasePart"]
  NAMECALL R2 R2 K3 ["IsA"]
  CALL R2 2 1
  JUMPIFNOT R2 [+15]
  GETTABLEN R2 R1 1
  GETTABLEN R3 R1 2
  GETIMPORT R4 K6 [Instance.new]
  MOVE R5 R0
  CALL R4 1 1
  SETTABLEKS R2 R4 K7 ["Part0"]
  SETTABLEKS R3 R4 K8 ["Part1"]
  SETTABLEKS R2 R4 K9 ["Parent"]
  LOADB R2 1
  LOADB R3 1
  RETURN R2 2
  LENGTH R2 R1
  LOADN R3 0
  JUMPIFNOTLT R3 R2 [+58]
  JUMPIFEQKS R0 K10 ["NoCollisionConstraint"] [+56]
  NEWTABLE R2 0 0
  LOADN R5 1
  LENGTH R3 R1
  LOADN R4 1
  FORNPREP R3
  GETTABLE R6 R1 R5
  LOADK R9 K11 ["Model"]
  NAMECALL R7 R6 K3 ["IsA"]
  CALL R7 2 1
  JUMPIFNOT R7 [+19]
  NAMECALL R7 R6 K12 ["GetDescendants"]
  CALL R7 1 3
  FORGPREP R7
  LOADK R14 K2 ["BasePart"]
  NAMECALL R12 R11 K3 ["IsA"]
  CALL R12 2 1
  JUMPIFNOT R12 [+7]
  FASTCALL2 TABLE_INSERT R2 R11 [+5]
  MOVE R13 R2
  MOVE R14 R11
  GETIMPORT R12 K15 [table.insert]
  CALL R12 2 0
  FORGLOOP R7 2 [-13]
  JUMP [+12]
  LOADK R9 K2 ["BasePart"]
  NAMECALL R7 R6 K3 ["IsA"]
  CALL R7 2 1
  JUMPIFNOT R7 [+7]
  FASTCALL2 TABLE_INSERT R2 R6 [+5]
  MOVE R8 R2
  MOVE R9 R6
  GETIMPORT R7 K15 [table.insert]
  CALL R7 2 0
  FORNLOOP R3
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R2
  CALL R3 2 1
  LENGTH R4 R2
  LOADN R5 2
  JUMPIFNOTLE R5 R4 [+4]
  LOADB R4 1
  MOVE R5 R3
  RETURN R4 2
  LOADB R2 0
  LOADB R3 0
  RETURN R2 2

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["Selection"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  DUPCLOSURE R1 K4 [PROTO_0]
  DUPCLOSURE R2 K5 [PROTO_1]
  DUPCLOSURE R3 K6 [PROTO_2]
  CAPTURE VAL R0
  CAPTURE VAL R1
  RETURN R3 1
