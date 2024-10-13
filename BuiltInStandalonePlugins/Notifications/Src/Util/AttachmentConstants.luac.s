MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K3 [{"SourceAnchorPoint", "TargetAnchorPoint", "Offset"}]
  GETIMPORT R1 K6 [Vector2.new]
  LOADN R2 1
  LOADN R3 0
  CALL R1 2 1
  SETTABLEKS R1 R0 K0 ["SourceAnchorPoint"]
  GETIMPORT R1 K6 [Vector2.new]
  LOADN R2 1
  LOADN R3 1
  CALL R1 2 1
  SETTABLEKS R1 R0 K1 ["TargetAnchorPoint"]
  GETIMPORT R1 K6 [Vector2.new]
  LOADN R2 0
  LOADN R3 0
  CALL R1 2 1
  SETTABLEKS R1 R0 K2 ["Offset"]
  DUPTABLE R1 K3 [{"SourceAnchorPoint", "TargetAnchorPoint", "Offset"}]
  GETIMPORT R2 K6 [Vector2.new]
  LOADN R3 1
  LOADN R4 0
  CALL R2 2 1
  SETTABLEKS R2 R1 K0 ["SourceAnchorPoint"]
  GETIMPORT R2 K6 [Vector2.new]
  LOADN R3 1
  LOADN R4 1
  CALL R2 2 1
  SETTABLEKS R2 R1 K1 ["TargetAnchorPoint"]
  GETIMPORT R2 K6 [Vector2.new]
  LOADN R3 0
  LOADN R4 0
  CALL R2 2 1
  SETTABLEKS R2 R1 K2 ["Offset"]
  DUPTABLE R2 K9 [{"DatamodelSessionLoadedAttachmentInfo", "DatamodelSessionUnloadedAttachmentInfo"}]
  SETTABLEKS R0 R2 K7 ["DatamodelSessionLoadedAttachmentInfo"]
  SETTABLEKS R1 R2 K8 ["DatamodelSessionUnloadedAttachmentInfo"]
  RETURN R2 1
