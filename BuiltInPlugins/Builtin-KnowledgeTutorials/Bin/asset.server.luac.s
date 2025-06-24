PROTO_0:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+4]
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["unmount"]
  CALL R0 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["KnowledgeTutorials"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [plugin]
  GETTABLEKS R2 R0 K6 ["Name"]
  SETTABLEKS R2 R1 K6 ["Name"]
  GETIMPORT R1 K8 [require]
  GETTABLEKS R3 R0 K9 ["Packages"]
  GETTABLEKS R2 R3 K10 ["TestLoader"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K11 ["launch"]
  LOADK R3 K2 ["KnowledgeTutorials"]
  GETTABLEKS R4 R0 K12 ["Src"]
  CALL R2 2 0
  GETTABLEKS R2 R1 K13 ["isCli"]
  CALL R2 0 1
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  GETIMPORT R2 K8 [require]
  GETTABLEKS R4 R0 K14 ["Bin"]
  GETTABLEKS R3 R4 K15 ["defineLuaFlags"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K16 ["getFFlagEnableKnowledgeTutorials"]
  CALL R3 0 1
  JUMPIF R3 [+1]
  RETURN R0 0
  GETIMPORT R3 K8 [require]
  GETTABLEKS R6 R0 K12 ["Src"]
  GETTABLEKS R5 R6 K17 ["Util"]
  GETTABLEKS R4 R5 K18 ["Services"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K19 ["TutorialService"]
  NAMECALL R5 R4 K20 ["ShouldLaunchTutorial"]
  CALL R5 1 1
  JUMPIF R5 [+1]
  RETURN R0 0
  GETIMPORT R5 K22 [game]
  LOADK R7 K23 ["RunService"]
  NAMECALL R5 R5 K24 ["GetService"]
  CALL R5 2 1
  NAMECALL R6 R5 K25 ["IsEdit"]
  CALL R6 1 1
  JUMPIF R6 [+1]
  RETURN R0 0
  GETIMPORT R6 K8 [require]
  GETTABLEKS R8 R0 K9 ["Packages"]
  GETTABLEKS R7 R8 K26 ["PluginLoader"]
  CALL R6 1 1
  GETTABLEKS R7 R6 K27 ["PluginLoaderBuilder"]
  GETTABLEKS R11 R0 K12 ["Src"]
  GETTABLEKS R10 R11 K28 ["Resources"]
  GETTABLEKS R9 R10 K29 ["Localization"]
  GETTABLEKS R8 R9 K30 ["SourceStrings"]
  GETTABLEKS R12 R0 K12 ["Src"]
  GETTABLEKS R11 R12 K28 ["Resources"]
  GETTABLEKS R10 R11 K29 ["Localization"]
  GETTABLEKS R9 R10 K31 ["LocalizedStrings"]
  DUPTABLE R10 K36 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "noToolbar"}]
  GETIMPORT R11 K5 [plugin]
  SETTABLEKS R11 R10 K4 ["plugin"]
  LOADK R11 K2 ["KnowledgeTutorials"]
  SETTABLEKS R11 R10 K32 ["pluginName"]
  SETTABLEKS R9 R10 K33 ["translationResourceTable"]
  SETTABLEKS R8 R10 K34 ["fallbackResourceTable"]
  LOADB R11 1
  SETTABLEKS R11 R10 K35 ["noToolbar"]
  GETTABLEKS R11 R7 K37 ["build"]
  MOVE R12 R10
  CALL R11 1 1
  GETIMPORT R12 K8 [require]
  GETTABLEKS R14 R0 K9 ["Packages"]
  GETTABLEKS R13 R14 K38 ["React"]
  CALL R12 1 1
  GETIMPORT R13 K8 [require]
  GETTABLEKS R15 R0 K9 ["Packages"]
  GETTABLEKS R14 R15 K39 ["ReactRoblox"]
  CALL R13 1 1
  GETIMPORT R14 K8 [require]
  GETTABLEKS R16 R0 K12 ["Src"]
  GETTABLEKS R15 R16 K40 ["MainPlugin"]
  CALL R14 1 1
  GETTABLEKS R15 R12 K41 ["createElement"]
  MOVE R16 R14
  DUPTABLE R17 K44 [{"Plugin", "PluginLoaderContext"}]
  GETIMPORT R18 K5 [plugin]
  SETTABLEKS R18 R17 K42 ["Plugin"]
  SETTABLEKS R11 R17 K43 ["PluginLoaderContext"]
  CALL R15 2 1
  GETIMPORT R16 K47 [Instance.new]
  LOADK R17 K48 ["Frame"]
  CALL R16 1 1
  GETTABLEKS R17 R13 K49 ["createRoot"]
  MOVE R18 R16
  CALL R17 1 1
  MOVE R20 R15
  NAMECALL R18 R17 K50 ["render"]
  CALL R18 2 0
  GETIMPORT R19 K5 [plugin]
  GETTABLEKS R18 R19 K51 ["Unloading"]
  DUPCLOSURE R20 K52 [PROTO_0]
  CAPTURE VAL R17
  NAMECALL R18 R18 K53 ["Connect"]
  CALL R18 2 0
  RETURN R0 0
