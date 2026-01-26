PROTO_0:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["complete"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETTABLEKS R1 R0 K0 ["tutorial"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  SETTABLEKS R2 R1 K1 ["startPlaying"]
  GETTABLEKS R1 R0 K0 ["tutorial"]
  DUPTABLE R3 K6 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
  GETUPVAL R4 0
  SETTABLEKS R4 R3 K2 ["TargetWidgetUri"]
  GETIMPORT R4 K9 [Vector2.new]
  LOADN R5 0
  LOADN R6 0
  CALL R4 2 1
  SETTABLEKS R4 R3 K3 ["SubjectAnchorPoint"]
  GETIMPORT R4 K9 [Vector2.new]
  LOADN R5 0
  LOADN R6 1
  CALL R4 2 1
  SETTABLEKS R4 R3 K4 ["TargetAnchorPoint"]
  GETIMPORT R4 K9 [Vector2.new]
  LOADN R5 0
  LOADN R6 20
  CALL R4 2 1
  SETTABLEKS R4 R3 K5 ["Offset"]
  NAMECALL R1 R1 K10 ["attachTo"]
  CALL R1 2 0
  GETTABLEKS R2 R0 K0 ["tutorial"]
  GETTABLEKS R1 R2 K11 ["Spotlight"]
  GETUPVAL R3 0
  NAMECALL R1 R1 K12 ["ApplyHighlightAsync"]
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["tutorial"]
  LOADNIL R2
  SETTABLEKS R2 R1 K1 ["startPlaying"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["TutorialStep"]
  CALL R0 1 1
  GETTABLEKS R1 R0 K6 ["extend"]
  LOADK R2 K7 ["StartPlaytest"]
  CALL R1 1 1
  DUPTABLE R2 K13 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R3 K14 ["Standalone"]
  SETTABLEKS R3 R2 K8 ["DataModel"]
  LOADK R3 K14 ["Standalone"]
  SETTABLEKS R3 R2 K9 ["PluginType"]
  LOADK R3 K15 ["Ribbon"]
  SETTABLEKS R3 R2 K10 ["PluginId"]
  LOADK R3 K16 ["Widgets"]
  SETTABLEKS R3 R2 K11 ["Category"]
  LOADK R3 K17 ["LeftMezzanine/LaunchTestMode_TestAndTestHere"]
  SETTABLEKS R3 R2 K12 ["ItemId"]
  DUPCLOSURE R3 K18 [PROTO_1]
  CAPTURE VAL R2
  SETTABLEKS R3 R1 K19 ["bind"]
  DUPCLOSURE R3 K20 [PROTO_2]
  SETTABLEKS R3 R1 K21 ["unbind"]
  RETURN R1 1
