PROTO_0:
  DUPTABLE R1 K5 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R2 K6 ["Standalone"]
  SETTABLEKS R2 R1 K0 ["DataModel"]
  LOADK R2 K6 ["Standalone"]
  SETTABLEKS R2 R1 K1 ["PluginType"]
  LOADK R2 K7 ["Ribbon"]
  SETTABLEKS R2 R1 K2 ["PluginId"]
  LOADK R2 K8 ["Widgets"]
  SETTABLEKS R2 R1 K3 ["Category"]
  SETTABLEKS R0 R1 K4 ["ItemId"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  NEWTABLE R1 0 5
  DUPTABLE R2 K5 [{"id", "topic", "showNext", "spotlight"}]
  LOADK R3 K6 ["introduction"]
  SETTABLEKS R3 R2 K1 ["id"]
  LOADK R3 K7 ["Introduction"]
  SETTABLEKS R3 R2 K2 ["topic"]
  LOADB R3 1
  SETTABLEKS R3 R2 K3 ["showNext"]
  DUPTABLE R3 K10 [{"TargetWidgetUri", "ShowHighlight"}]
  DUPTABLE R4 K16 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R5 K17 ["Standalone"]
  SETTABLEKS R5 R4 K11 ["DataModel"]
  LOADK R5 K17 ["Standalone"]
  SETTABLEKS R5 R4 K12 ["PluginType"]
  LOADK R5 K18 ["Ribbon"]
  SETTABLEKS R5 R4 K13 ["PluginId"]
  LOADK R5 K19 ["Widgets"]
  SETTABLEKS R5 R4 K14 ["Category"]
  LOADK R5 K18 ["Ribbon"]
  SETTABLEKS R5 R4 K15 ["ItemId"]
  SETTABLEKS R4 R3 K8 ["TargetWidgetUri"]
  LOADB R4 1
  SETTABLEKS R4 R3 K9 ["ShowHighlight"]
  SETTABLEKS R3 R2 K4 ["spotlight"]
  DUPTABLE R3 K21 [{"id", "topic", "showNext", "spotlight", "callout"}]
  LOADK R4 K22 ["playTestingControls"]
  SETTABLEKS R4 R3 K1 ["id"]
  LOADK R4 K23 ["Testing"]
  SETTABLEKS R4 R3 K2 ["topic"]
  LOADB R4 1
  SETTABLEKS R4 R3 K3 ["showNext"]
  DUPTABLE R4 K10 [{"TargetWidgetUri", "ShowHighlight"}]
  DUPTABLE R5 K16 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R6 K17 ["Standalone"]
  SETTABLEKS R6 R5 K11 ["DataModel"]
  LOADK R6 K17 ["Standalone"]
  SETTABLEKS R6 R5 K12 ["PluginType"]
  LOADK R6 K18 ["Ribbon"]
  SETTABLEKS R6 R5 K13 ["PluginId"]
  LOADK R6 K19 ["Widgets"]
  SETTABLEKS R6 R5 K14 ["Category"]
  LOADK R6 K24 ["LeftMezzanine/TestMode_TestAndTestHere"]
  SETTABLEKS R6 R5 K15 ["ItemId"]
  SETTABLEKS R5 R4 K8 ["TargetWidgetUri"]
  LOADB R5 1
  SETTABLEKS R5 R4 K9 ["ShowHighlight"]
  SETTABLEKS R4 R3 K4 ["spotlight"]
  DUPTABLE R4 K28 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
  DUPTABLE R5 K16 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R6 K17 ["Standalone"]
  SETTABLEKS R6 R5 K11 ["DataModel"]
  LOADK R6 K17 ["Standalone"]
  SETTABLEKS R6 R5 K12 ["PluginType"]
  LOADK R6 K18 ["Ribbon"]
  SETTABLEKS R6 R5 K13 ["PluginId"]
  LOADK R6 K19 ["Widgets"]
  SETTABLEKS R6 R5 K14 ["Category"]
  LOADK R6 K24 ["LeftMezzanine/TestMode_TestAndTestHere"]
  SETTABLEKS R6 R5 K15 ["ItemId"]
  SETTABLEKS R5 R4 K8 ["TargetWidgetUri"]
  GETIMPORT R5 K31 [Vector2.new]
  LOADN R6 0
  LOADN R7 0
  CALL R5 2 1
  SETTABLEKS R5 R4 K25 ["SubjectAnchorPoint"]
  GETIMPORT R5 K31 [Vector2.new]
  LOADN R6 0
  LOADN R7 1
  CALL R5 2 1
  SETTABLEKS R5 R4 K26 ["TargetAnchorPoint"]
  GETIMPORT R5 K31 [Vector2.new]
  LOADN R6 0
  LOADN R7 10
  CALL R5 2 1
  SETTABLEKS R5 R4 K27 ["Offset"]
  SETTABLEKS R4 R3 K20 ["callout"]
  DUPTABLE R4 K21 [{"id", "topic", "showNext", "spotlight", "callout"}]
  LOADK R5 K32 ["interfaceControls"]
  SETTABLEKS R5 R4 K1 ["id"]
  LOADK R5 K33 ["UI"]
  SETTABLEKS R5 R4 K2 ["topic"]
  LOADB R5 1
  SETTABLEKS R5 R4 K3 ["showNext"]
  DUPTABLE R5 K10 [{"TargetWidgetUri", "ShowHighlight"}]
  DUPTABLE R6 K16 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R7 K17 ["Standalone"]
  SETTABLEKS R7 R6 K11 ["DataModel"]
  LOADK R7 K17 ["Standalone"]
  SETTABLEKS R7 R6 K12 ["PluginType"]
  LOADK R7 K18 ["Ribbon"]
  SETTABLEKS R7 R6 K13 ["PluginId"]
  LOADK R7 K19 ["Widgets"]
  SETTABLEKS R7 R6 K14 ["Category"]
  LOADK R7 K34 ["Tabs/BuiltIn_UITab"]
  SETTABLEKS R7 R6 K15 ["ItemId"]
  SETTABLEKS R6 R5 K8 ["TargetWidgetUri"]
  LOADB R6 1
  SETTABLEKS R6 R5 K9 ["ShowHighlight"]
  SETTABLEKS R5 R4 K4 ["spotlight"]
  DUPTABLE R5 K28 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
  DUPTABLE R6 K16 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R7 K17 ["Standalone"]
  SETTABLEKS R7 R6 K11 ["DataModel"]
  LOADK R7 K17 ["Standalone"]
  SETTABLEKS R7 R6 K12 ["PluginType"]
  LOADK R7 K18 ["Ribbon"]
  SETTABLEKS R7 R6 K13 ["PluginId"]
  LOADK R7 K19 ["Widgets"]
  SETTABLEKS R7 R6 K14 ["Category"]
  LOADK R7 K34 ["Tabs/BuiltIn_UITab"]
  SETTABLEKS R7 R6 K15 ["ItemId"]
  SETTABLEKS R6 R5 K8 ["TargetWidgetUri"]
  GETIMPORT R6 K31 [Vector2.new]
  LOADN R7 0
  LOADN R8 0
  CALL R6 2 1
  SETTABLEKS R6 R5 K25 ["SubjectAnchorPoint"]
  GETIMPORT R6 K31 [Vector2.new]
  LOADN R7 0
  LOADN R8 1
  CALL R6 2 1
  SETTABLEKS R6 R5 K26 ["TargetAnchorPoint"]
  GETIMPORT R6 K31 [Vector2.new]
  LOADN R7 0
  LOADN R8 10
  CALL R6 2 1
  SETTABLEKS R6 R5 K27 ["Offset"]
  SETTABLEKS R5 R4 K20 ["callout"]
  DUPTABLE R5 K21 [{"id", "topic", "showNext", "spotlight", "callout"}]
  LOADK R6 K35 ["scriptControls"]
  SETTABLEKS R6 R5 K1 ["id"]
  LOADK R6 K36 ["Script"]
  SETTABLEKS R6 R5 K2 ["topic"]
  LOADB R6 1
  SETTABLEKS R6 R5 K3 ["showNext"]
  DUPTABLE R6 K10 [{"TargetWidgetUri", "ShowHighlight"}]
  DUPTABLE R7 K16 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R8 K17 ["Standalone"]
  SETTABLEKS R8 R7 K11 ["DataModel"]
  LOADK R8 K17 ["Standalone"]
  SETTABLEKS R8 R7 K12 ["PluginType"]
  LOADK R8 K18 ["Ribbon"]
  SETTABLEKS R8 R7 K13 ["PluginId"]
  LOADK R8 K19 ["Widgets"]
  SETTABLEKS R8 R7 K14 ["Category"]
  LOADK R8 K37 ["Tabs/BuiltIn_ScriptTab"]
  SETTABLEKS R8 R7 K15 ["ItemId"]
  SETTABLEKS R7 R6 K8 ["TargetWidgetUri"]
  LOADB R7 1
  SETTABLEKS R7 R6 K9 ["ShowHighlight"]
  SETTABLEKS R6 R5 K4 ["spotlight"]
  DUPTABLE R6 K28 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
  DUPTABLE R7 K16 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R8 K17 ["Standalone"]
  SETTABLEKS R8 R7 K11 ["DataModel"]
  LOADK R8 K17 ["Standalone"]
  SETTABLEKS R8 R7 K12 ["PluginType"]
  LOADK R8 K18 ["Ribbon"]
  SETTABLEKS R8 R7 K13 ["PluginId"]
  LOADK R8 K19 ["Widgets"]
  SETTABLEKS R8 R7 K14 ["Category"]
  LOADK R8 K37 ["Tabs/BuiltIn_ScriptTab"]
  SETTABLEKS R8 R7 K15 ["ItemId"]
  SETTABLEKS R7 R6 K8 ["TargetWidgetUri"]
  GETIMPORT R7 K31 [Vector2.new]
  LOADN R8 0
  LOADN R9 0
  CALL R7 2 1
  SETTABLEKS R7 R6 K25 ["SubjectAnchorPoint"]
  GETIMPORT R7 K31 [Vector2.new]
  LOADN R8 0
  LOADN R9 1
  CALL R7 2 1
  SETTABLEKS R7 R6 K26 ["TargetAnchorPoint"]
  GETIMPORT R7 K31 [Vector2.new]
  LOADN R8 0
  LOADN R9 10
  CALL R7 2 1
  SETTABLEKS R7 R6 K27 ["Offset"]
  SETTABLEKS R6 R5 K20 ["callout"]
  DUPTABLE R6 K21 [{"id", "topic", "showNext", "spotlight", "callout"}]
  LOADK R7 K38 ["customizationControls"]
  SETTABLEKS R7 R6 K1 ["id"]
  LOADK R7 K39 ["Customization"]
  SETTABLEKS R7 R6 K2 ["topic"]
  LOADB R7 1
  SETTABLEKS R7 R6 K3 ["showNext"]
  DUPTABLE R7 K10 [{"TargetWidgetUri", "ShowHighlight"}]
  DUPTABLE R8 K16 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R9 K17 ["Standalone"]
  SETTABLEKS R9 R8 K11 ["DataModel"]
  LOADK R9 K17 ["Standalone"]
  SETTABLEKS R9 R8 K12 ["PluginType"]
  LOADK R9 K18 ["Ribbon"]
  SETTABLEKS R9 R8 K13 ["PluginId"]
  LOADK R9 K19 ["Widgets"]
  SETTABLEKS R9 R8 K14 ["Category"]
  LOADK R9 K40 ["Tabs/Reserved_Custom"]
  SETTABLEKS R9 R8 K15 ["ItemId"]
  SETTABLEKS R8 R7 K8 ["TargetWidgetUri"]
  LOADB R8 1
  SETTABLEKS R8 R7 K9 ["ShowHighlight"]
  SETTABLEKS R7 R6 K4 ["spotlight"]
  DUPTABLE R7 K28 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
  DUPTABLE R8 K16 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R9 K17 ["Standalone"]
  SETTABLEKS R9 R8 K11 ["DataModel"]
  LOADK R9 K17 ["Standalone"]
  SETTABLEKS R9 R8 K12 ["PluginType"]
  LOADK R9 K18 ["Ribbon"]
  SETTABLEKS R9 R8 K13 ["PluginId"]
  LOADK R9 K19 ["Widgets"]
  SETTABLEKS R9 R8 K14 ["Category"]
  LOADK R9 K40 ["Tabs/Reserved_Custom"]
  SETTABLEKS R9 R8 K15 ["ItemId"]
  SETTABLEKS R8 R7 K8 ["TargetWidgetUri"]
  GETIMPORT R8 K31 [Vector2.new]
  LOADN R9 0
  LOADN R10 0
  CALL R8 2 1
  SETTABLEKS R8 R7 K25 ["SubjectAnchorPoint"]
  GETIMPORT R8 K31 [Vector2.new]
  LOADN R9 0
  LOADN R10 1
  CALL R8 2 1
  SETTABLEKS R8 R7 K26 ["TargetAnchorPoint"]
  GETIMPORT R8 K31 [Vector2.new]
  LOADN R9 0
  LOADN R10 10
  CALL R8 2 1
  SETTABLEKS R8 R7 K27 ["Offset"]
  SETTABLEKS R7 R6 K20 ["callout"]
  SETLIST R1 R2 5 [1]
  DUPTABLE R2 K43 [{"id", "steps", "shouldShowCompletedDialog"}]
  LOADK R3 K44 ["RibbonWalkthrough"]
  SETTABLEKS R3 R2 K1 ["id"]
  SETTABLEKS R1 R2 K41 ["steps"]
  LOADB R3 0
  SETTABLEKS R3 R2 K42 ["shouldShowCompletedDialog"]
  RETURN R2 1
