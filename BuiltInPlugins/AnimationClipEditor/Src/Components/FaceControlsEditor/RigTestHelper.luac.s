PROTO_0:
  GETIMPORT R0 K2 [Instance.new]
  LOADK R1 K3 ["Model"]
  CALL R0 1 1
  GETIMPORT R1 K2 [Instance.new]
  LOADK R2 K4 ["Part"]
  MOVE R3 R0
  CALL R1 2 1
  LOADK R2 K5 ["HumanoidRootPart"]
  SETTABLEKS R2 R1 K6 ["Name"]
  GETIMPORT R2 K2 [Instance.new]
  LOADK R3 K4 ["Part"]
  MOVE R4 R0
  CALL R2 2 1
  LOADK R3 K7 ["UpperTorso"]
  SETTABLEKS R3 R2 K6 ["Name"]
  GETIMPORT R3 K2 [Instance.new]
  LOADK R4 K4 ["Part"]
  MOVE R5 R0
  CALL R3 2 1
  LOADK R4 K8 ["Head"]
  SETTABLEKS R4 R3 K6 ["Name"]
  GETIMPORT R4 K2 [Instance.new]
  LOADK R5 K9 ["Motor6D"]
  MOVE R6 R2
  CALL R4 2 1
  SETTABLEKS R1 R4 K10 ["Part0"]
  SETTABLEKS R2 R4 K11 ["Part1"]
  GETIMPORT R5 K2 [Instance.new]
  LOADK R6 K9 ["Motor6D"]
  MOVE R7 R3
  CALL R5 2 1
  SETTABLEKS R2 R5 K10 ["Part0"]
  SETTABLEKS R3 R5 K11 ["Part1"]
  GETIMPORT R6 K2 [Instance.new]
  LOADK R7 K12 ["Attachment"]
  MOVE R8 R1
  CALL R6 2 1
  LOADK R7 K13 ["RootAttachment"]
  SETTABLEKS R7 R6 K6 ["Name"]
  GETIMPORT R7 K2 [Instance.new]
  LOADK R8 K12 ["Attachment"]
  MOVE R9 R2
  CALL R7 2 1
  LOADK R8 K13 ["RootAttachment"]
  SETTABLEKS R8 R7 K6 ["Name"]
  GETIMPORT R8 K2 [Instance.new]
  LOADK R9 K12 ["Attachment"]
  MOVE R10 R2
  CALL R8 2 1
  LOADK R9 K14 ["NeckAttachment"]
  SETTABLEKS R9 R8 K6 ["Name"]
  GETIMPORT R9 K2 [Instance.new]
  LOADK R10 K12 ["Attachment"]
  MOVE R11 R3
  CALL R9 2 1
  LOADK R10 K14 ["NeckAttachment"]
  SETTABLEKS R10 R9 K6 ["Name"]
  GETIMPORT R10 K2 [Instance.new]
  LOADK R11 K15 ["BallSocketConstraint"]
  MOVE R12 R0
  CALL R10 2 1
  LOADB R11 0
  SETTABLEKS R11 R10 K16 ["Enabled"]
  SETTABLEKS R8 R10 K17 ["Attachment0"]
  SETTABLEKS R9 R10 K18 ["Attachment1"]
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 1 0
  DUPCLOSURE R1 K0 [PROTO_0]
  SETTABLEKS R1 R0 K1 ["buildTestRig"]
  RETURN R0 1
