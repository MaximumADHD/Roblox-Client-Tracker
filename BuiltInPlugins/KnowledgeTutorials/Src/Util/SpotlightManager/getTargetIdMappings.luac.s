PROTO_0:
  NEWTABLE R0 0 0
  GETUPVAL R1 0
  LOADK R3 K0 ["RibbonConfiguration"]
  NAMECALL R1 R1 K1 ["GetPluginComponent"]
  CALL R1 2 1
  NAMECALL R1 R1 K2 ["GetRibbonDefinitionAsync"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K3 ["TabControls"]
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETTABLEKS R7 R6 K4 ["Controls"]
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  GETTABLEKS R12 R11 K5 ["Id"]
  JUMPIFNOT R12 [+33]
  LOADK R13 K6 ["Ribbon/%*/%*"]
  GETTABLEKS R15 R6 K7 ["Name"]
  GETTABLEKS R16 R11 K5 ["Id"]
  NAMECALL R13 R13 K8 ["format"]
  CALL R13 3 1
  MOVE R12 R13
  DUPTABLE R13 K14 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R14 K15 ["Standalone"]
  SETTABLEKS R14 R13 K9 ["DataModel"]
  LOADK R14 K15 ["Standalone"]
  SETTABLEKS R14 R13 K10 ["PluginType"]
  LOADK R14 K16 ["Ribbon"]
  SETTABLEKS R14 R13 K11 ["PluginId"]
  LOADK R14 K17 ["Widgets"]
  SETTABLEKS R14 R13 K12 ["Category"]
  LOADK R15 K18 ["Tabs/%*/%*"]
  MOVE R17 R5
  GETTABLEKS R18 R11 K5 ["Id"]
  NAMECALL R15 R15 K8 ["format"]
  CALL R15 3 1
  MOVE R14 R15
  SETTABLEKS R14 R13 K13 ["ItemId"]
  SETTABLE R13 R0 R12
  FORGLOOP R7 2 [-37]
  FORGLOOP R2 2 [-44]
  GETTABLEKS R2 R1 K19 ["MezzanineControls"]
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETIMPORT R8 K22 [string.find]
  MOVE R9 R5
  LOADK R10 K23 ["Left"]
  CALL R8 2 1
  JUMPIFNOTEQKNIL R8 [+2]
  LOADB R7 0 +1
  LOADB R7 1
  JUMPIFNOT R7 [+2]
  LOADK R8 K24 ["LeftMezzanine"]
  JUMP [+1]
  LOADK R8 K25 ["RightMezzanine"]
  GETTABLEKS R9 R6 K4 ["Controls"]
  LOADNIL R10
  LOADNIL R11
  FORGPREP R9
  GETTABLEKS R14 R13 K5 ["Id"]
  JUMPIFNOT R14 [+32]
  LOADK R15 K6 ["Ribbon/%*/%*"]
  MOVE R17 R8
  GETTABLEKS R18 R13 K5 ["Id"]
  NAMECALL R15 R15 K8 ["format"]
  CALL R15 3 1
  MOVE R14 R15
  DUPTABLE R15 K14 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R16 K15 ["Standalone"]
  SETTABLEKS R16 R15 K9 ["DataModel"]
  LOADK R16 K15 ["Standalone"]
  SETTABLEKS R16 R15 K10 ["PluginType"]
  LOADK R16 K16 ["Ribbon"]
  SETTABLEKS R16 R15 K11 ["PluginId"]
  LOADK R16 K17 ["Widgets"]
  SETTABLEKS R16 R15 K12 ["Category"]
  LOADK R17 K26 ["%*/%*"]
  MOVE R19 R8
  GETTABLEKS R20 R13 K5 ["Id"]
  NAMECALL R17 R17 K8 ["format"]
  CALL R17 3 1
  MOVE R16 R17
  SETTABLEKS R16 R15 K13 ["ItemId"]
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
  GETIMPORT R2 K9 [plugin]
  JUMPIF R2 [+6]
  GETIMPORT R2 K1 [script]
  LOADK R4 K10 ["Plugin"]
  NAMECALL R2 R2 K11 ["FindFirstAncestorWhichIsA"]
  CALL R2 2 1
  NEWTABLE R3 4 0
  DUPTABLE R4 K15 [{"PluginId", "Category", "ItemId"}]
  LOADK R5 K16 ["Properties"]
  SETTABLEKS R5 R4 K12 ["PluginId"]
  LOADK R5 K17 ["Widgets"]
  SETTABLEKS R5 R4 K13 ["Category"]
  LOADK R5 K18 ["Main"]
  SETTABLEKS R5 R4 K14 ["ItemId"]
  SETTABLEKS R4 R3 K19 ["Widgets/Properties"]
  DUPTABLE R4 K22 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R5 K23 ["Standalone"]
  SETTABLEKS R5 R4 K20 ["DataModel"]
  LOADK R5 K23 ["Standalone"]
  SETTABLEKS R5 R4 K21 ["PluginType"]
  LOADK R5 K24 ["ExplorerPlugin"]
  SETTABLEKS R5 R4 K12 ["PluginId"]
  LOADK R5 K17 ["Widgets"]
  SETTABLEKS R5 R4 K13 ["Category"]
  LOADK R5 K24 ["ExplorerPlugin"]
  SETTABLEKS R5 R4 K14 ["ItemId"]
  SETTABLEKS R4 R3 K25 ["Widgets/Explorer"]
  DUPTABLE R4 K22 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R5 K26 ["Edit"]
  SETTABLEKS R5 R4 K20 ["DataModel"]
  LOADK R5 K27 ["Asset"]
  SETTABLEKS R5 R4 K21 ["PluginType"]
  LOADK R5 K28 ["Toolbox"]
  SETTABLEKS R5 R4 K12 ["PluginId"]
  LOADK R5 K17 ["Widgets"]
  SETTABLEKS R5 R4 K13 ["Category"]
  LOADK R5 K28 ["Toolbox"]
  SETTABLEKS R5 R4 K14 ["ItemId"]
  SETTABLEKS R4 R3 K29 ["Widgets/Toolbox"]
  DUPCLOSURE R4 K30 [PROTO_0]
  CAPTURE VAL R2
  DUPCLOSURE R5 K31 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R4
  RETURN R5 1
