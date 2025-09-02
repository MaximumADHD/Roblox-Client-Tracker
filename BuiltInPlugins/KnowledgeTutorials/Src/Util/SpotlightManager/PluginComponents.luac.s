MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["KnowledgeTutorials"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [plugin]
  JUMPIF R1 [+6]
  GETIMPORT R1 K1 [script]
  LOADK R3 K6 ["Plugin"]
  NAMECALL R1 R1 K7 ["FindFirstAncestorWhichIsA"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R0 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["TestLoader"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K12 ["isCli"]
  CALL R3 0 1
  JUMPIFNOT R3 [+115]
  GETIMPORT R3 K9 [require]
  GETTABLEKS R6 R0 K10 ["Packages"]
  GETTABLEKS R5 R6 K13 ["Dev"]
  GETTABLEKS R4 R5 K14 ["JestGlobals"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K15 ["jest"]
  DUPTABLE R5 K20 [{"Spotlight", "Panels", "Widgets", "RibbonConfiguration"}]
  DUPTABLE R6 K24 [{"ApplyShadowsAsync", "ApplySpotlightAsync", "HideSpotlightAsync"}]
  GETTABLEKS R7 R4 K25 ["fn"]
  CALL R7 0 1
  SETTABLEKS R7 R6 K21 ["ApplyShadowsAsync"]
  GETTABLEKS R7 R4 K25 ["fn"]
  CALL R7 0 1
  SETTABLEKS R7 R6 K22 ["ApplySpotlightAsync"]
  GETTABLEKS R7 R4 K25 ["fn"]
  CALL R7 0 1
  SETTABLEKS R7 R6 K23 ["HideSpotlightAsync"]
  SETTABLEKS R6 R5 K16 ["Spotlight"]
  DUPTABLE R6 K27 [{"FocusAsync"}]
  GETTABLEKS R7 R4 K25 ["fn"]
  CALL R7 0 1
  SETTABLEKS R7 R6 K26 ["FocusAsync"]
  SETTABLEKS R6 R5 K17 ["Panels"]
  DUPTABLE R6 K29 [{"GetWidgetAsync"}]
  GETTABLEKS R8 R4 K25 ["fn"]
  CALL R8 0 1
  GETTABLEKS R7 R8 K30 ["mockReturnValue"]
  DUPTABLE R8 K32 [{"Exists"}]
  LOADB R9 1
  SETTABLEKS R9 R8 K31 ["Exists"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K28 ["GetWidgetAsync"]
  SETTABLEKS R6 R5 K18 ["Widgets"]
  DUPTABLE R6 K34 [{"GetRibbonDefinitionAsync"}]
  GETTABLEKS R8 R4 K25 ["fn"]
  CALL R8 0 1
  GETTABLEKS R7 R8 K30 ["mockReturnValue"]
  DUPTABLE R8 K37 [{"MezzanineControls", "TabControls"}]
  DUPTABLE R9 K40 [{"Left", "Right"}]
  DUPTABLE R10 K42 [{"Controls"}]
  NEWTABLE R11 0 2
  NEWTABLE R12 0 0
  DUPTABLE R13 K44 [{"Id"}]
  LOADK R14 K45 ["ControlId"]
  SETTABLEKS R14 R13 K43 ["Id"]
  SETLIST R11 R12 2 [1]
  SETTABLEKS R11 R10 K41 ["Controls"]
  SETTABLEKS R10 R9 K38 ["Left"]
  DUPTABLE R10 K42 [{"Controls"}]
  NEWTABLE R11 0 1
  DUPTABLE R12 K44 [{"Id"}]
  LOADK R13 K45 ["ControlId"]
  SETTABLEKS R13 R12 K43 ["Id"]
  SETLIST R11 R12 1 [1]
  SETTABLEKS R11 R10 K41 ["Controls"]
  SETTABLEKS R10 R9 K39 ["Right"]
  SETTABLEKS R9 R8 K35 ["MezzanineControls"]
  DUPTABLE R9 K47 [{"tabIdentifier"}]
  DUPTABLE R10 K42 [{"Controls"}]
  NEWTABLE R11 0 2
  NEWTABLE R12 0 0
  DUPTABLE R13 K44 [{"Id"}]
  LOADK R14 K45 ["ControlId"]
  SETTABLEKS R14 R13 K43 ["Id"]
  SETLIST R11 R12 2 [1]
  SETTABLEKS R11 R10 K41 ["Controls"]
  SETTABLEKS R10 R9 K46 ["tabIdentifier"]
  SETTABLEKS R9 R8 K36 ["TabControls"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K33 ["GetRibbonDefinitionAsync"]
  SETTABLEKS R6 R5 K19 ["RibbonConfiguration"]
  RETURN R5 1
  DUPTABLE R3 K20 [{"Spotlight", "Panels", "Widgets", "RibbonConfiguration"}]
  LOADK R6 K16 ["Spotlight"]
  NAMECALL R4 R1 K48 ["GetPluginComponent"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K16 ["Spotlight"]
  LOADK R6 K17 ["Panels"]
  NAMECALL R4 R1 K48 ["GetPluginComponent"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K17 ["Panels"]
  LOADK R6 K18 ["Widgets"]
  NAMECALL R4 R1 K48 ["GetPluginComponent"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K18 ["Widgets"]
  LOADK R6 K19 ["RibbonConfiguration"]
  NAMECALL R4 R1 K48 ["GetPluginComponent"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K19 ["RibbonConfiguration"]
  RETURN R3 1
