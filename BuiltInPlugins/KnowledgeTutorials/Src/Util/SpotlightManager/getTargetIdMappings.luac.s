PROTO_0:
  NEWTABLE R0 0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["RibbonConfiguration"]
  NAMECALL R1 R1 K1 ["GetRibbonDefinitionAsync"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K2 ["TabControls"]
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETTABLEKS R7 R6 K3 ["Controls"]
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  GETTABLEKS R12 R11 K4 ["Id"]
  JUMPIFNOT R12 [+33]
  LOADK R13 K5 ["Ribbon/%*/%*"]
  GETTABLEKS R15 R6 K6 ["Name"]
  GETTABLEKS R16 R11 K4 ["Id"]
  NAMECALL R13 R13 K7 ["format"]
  CALL R13 3 1
  MOVE R12 R13
  DUPTABLE R13 K13 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R14 K14 ["Standalone"]
  SETTABLEKS R14 R13 K8 ["DataModel"]
  LOADK R14 K14 ["Standalone"]
  SETTABLEKS R14 R13 K9 ["PluginType"]
  LOADK R14 K15 ["Ribbon"]
  SETTABLEKS R14 R13 K10 ["PluginId"]
  LOADK R14 K16 ["Widgets"]
  SETTABLEKS R14 R13 K11 ["Category"]
  LOADK R15 K17 ["Tabs/%*/%*"]
  MOVE R17 R5
  GETTABLEKS R18 R11 K4 ["Id"]
  NAMECALL R15 R15 K7 ["format"]
  CALL R15 3 1
  MOVE R14 R15
  SETTABLEKS R14 R13 K12 ["ItemId"]
  SETTABLE R13 R0 R12
  FORGLOOP R7 2 [-37]
  FORGLOOP R2 2 [-44]
  GETTABLEKS R2 R1 K18 ["MezzanineControls"]
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETIMPORT R8 K21 [string.find]
  MOVE R9 R5
  LOADK R10 K22 ["Left"]
  CALL R8 2 1
  JUMPIFNOTEQKNIL R8 [+2]
  LOADB R7 0 +1
  LOADB R7 1
  JUMPIFNOT R7 [+2]
  LOADK R8 K23 ["LeftMezzanine"]
  JUMP [+1]
  LOADK R8 K24 ["RightMezzanine"]
  GETTABLEKS R9 R6 K3 ["Controls"]
  LOADNIL R10
  LOADNIL R11
  FORGPREP R9
  GETTABLEKS R14 R13 K4 ["Id"]
  JUMPIFNOT R14 [+32]
  LOADK R15 K5 ["Ribbon/%*/%*"]
  MOVE R17 R8
  GETTABLEKS R18 R13 K4 ["Id"]
  NAMECALL R15 R15 K7 ["format"]
  CALL R15 3 1
  MOVE R14 R15
  DUPTABLE R15 K13 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R16 K14 ["Standalone"]
  SETTABLEKS R16 R15 K8 ["DataModel"]
  LOADK R16 K14 ["Standalone"]
  SETTABLEKS R16 R15 K9 ["PluginType"]
  LOADK R16 K15 ["Ribbon"]
  SETTABLEKS R16 R15 K10 ["PluginId"]
  LOADK R16 K16 ["Widgets"]
  SETTABLEKS R16 R15 K11 ["Category"]
  LOADK R17 K25 ["%*/%*"]
  MOVE R19 R8
  GETTABLEKS R20 R13 K4 ["Id"]
  NAMECALL R17 R17 K7 ["format"]
  CALL R17 3 1
  MOVE R16 R17
  SETTABLEKS R16 R15 K12 ["ItemId"]
  SETTABLE R15 R0 R14
  FORGLOOP R9 2 [-36]
  FORGLOOP R2 2 [-56]
  RETURN R0 1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["join"]
  GETUPVAL R1 1
  GETUPVAL R2 2
  CALL R2 0 1
  CALL R0 2 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["KnowledgeTutorials"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Dash"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K8 ["Parent"]
  GETTABLEKS R3 R4 K9 ["PluginComponents"]
  CALL R2 1 1
  NEWTABLE R3 4 0
  DUPTABLE R4 K13 [{"PluginId", "Category", "ItemId"}]
  LOADK R5 K14 ["Properties"]
  SETTABLEKS R5 R4 K10 ["PluginId"]
  LOADK R5 K15 ["Widgets"]
  SETTABLEKS R5 R4 K11 ["Category"]
  LOADK R5 K16 ["Main"]
  SETTABLEKS R5 R4 K12 ["ItemId"]
  SETTABLEKS R4 R3 K17 ["Widgets/Properties"]
  DUPTABLE R4 K20 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R5 K21 ["Standalone"]
  SETTABLEKS R5 R4 K18 ["DataModel"]
  LOADK R5 K21 ["Standalone"]
  SETTABLEKS R5 R4 K19 ["PluginType"]
  LOADK R5 K22 ["ExplorerPlugin"]
  SETTABLEKS R5 R4 K10 ["PluginId"]
  LOADK R5 K15 ["Widgets"]
  SETTABLEKS R5 R4 K11 ["Category"]
  LOADK R5 K22 ["ExplorerPlugin"]
  SETTABLEKS R5 R4 K12 ["ItemId"]
  SETTABLEKS R4 R3 K23 ["Widgets/Explorer"]
  DUPTABLE R4 K20 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R5 K24 ["Edit"]
  SETTABLEKS R5 R4 K18 ["DataModel"]
  LOADK R5 K25 ["Asset"]
  SETTABLEKS R5 R4 K19 ["PluginType"]
  LOADK R5 K26 ["Toolbox"]
  SETTABLEKS R5 R4 K10 ["PluginId"]
  LOADK R5 K15 ["Widgets"]
  SETTABLEKS R5 R4 K11 ["Category"]
  LOADK R5 K26 ["Toolbox"]
  SETTABLEKS R5 R4 K12 ["ItemId"]
  SETTABLEKS R4 R3 K27 ["Widgets/Toolbox"]
  DUPCLOSURE R4 K28 [PROTO_0]
  CAPTURE VAL R2
  DUPCLOSURE R5 K29 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R4
  RETURN R5 1
