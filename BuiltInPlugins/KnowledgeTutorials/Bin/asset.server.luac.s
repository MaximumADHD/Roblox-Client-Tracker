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
  JUMPIF R3 [+5]
  GETTABLEKS R3 R2 K17 ["getFFlagDebugKnowledgeTutorials"]
  CALL R3 0 1
  JUMPIF R3 [+1]
  RETURN R0 0
  GETIMPORT R3 K19 [game]
  LOADK R5 K20 ["RunService"]
  NAMECALL R3 R3 K21 ["GetService"]
  CALL R3 2 1
  NAMECALL R4 R3 K22 ["IsEdit"]
  CALL R4 1 1
  JUMPIF R4 [+1]
  RETURN R0 0
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R0 K9 ["Packages"]
  GETTABLEKS R5 R6 K23 ["PluginLoader"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K24 ["PluginLoaderBuilder"]
  GETTABLEKS R9 R0 K12 ["Src"]
  GETTABLEKS R8 R9 K25 ["Resources"]
  GETTABLEKS R7 R8 K26 ["Localization"]
  GETTABLEKS R6 R7 K27 ["SourceStrings"]
  GETTABLEKS R10 R0 K12 ["Src"]
  GETTABLEKS R9 R10 K25 ["Resources"]
  GETTABLEKS R8 R9 K26 ["Localization"]
  GETTABLEKS R7 R8 K28 ["LocalizedStrings"]
  DUPTABLE R8 K33 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "noToolbar"}]
  GETIMPORT R9 K5 [plugin]
  SETTABLEKS R9 R8 K4 ["plugin"]
  LOADK R9 K2 ["KnowledgeTutorials"]
  SETTABLEKS R9 R8 K29 ["pluginName"]
  SETTABLEKS R7 R8 K30 ["translationResourceTable"]
  SETTABLEKS R6 R8 K31 ["fallbackResourceTable"]
  LOADB R9 1
  SETTABLEKS R9 R8 K32 ["noToolbar"]
  GETTABLEKS R9 R5 K34 ["build"]
  MOVE R10 R8
  CALL R9 1 1
  GETIMPORT R10 K8 [require]
  GETTABLEKS R12 R0 K9 ["Packages"]
  GETTABLEKS R11 R12 K35 ["React"]
  CALL R10 1 1
  GETIMPORT R11 K8 [require]
  GETTABLEKS R13 R0 K9 ["Packages"]
  GETTABLEKS R12 R13 K36 ["ReactRoblox"]
  CALL R11 1 1
  GETIMPORT R12 K8 [require]
  GETTABLEKS R14 R0 K12 ["Src"]
  GETTABLEKS R13 R14 K37 ["MainPlugin"]
  CALL R12 1 1
  GETTABLEKS R13 R10 K38 ["createElement"]
  MOVE R14 R12
  DUPTABLE R15 K41 [{"Plugin", "PluginLoaderContext"}]
  GETIMPORT R16 K5 [plugin]
  SETTABLEKS R16 R15 K39 ["Plugin"]
  SETTABLEKS R9 R15 K40 ["PluginLoaderContext"]
  CALL R13 2 1
  GETIMPORT R14 K44 [Instance.new]
  LOADK R15 K45 ["Frame"]
  CALL R14 1 1
  GETTABLEKS R15 R11 K46 ["createRoot"]
  MOVE R16 R14
  CALL R15 1 1
  MOVE R18 R13
  NAMECALL R16 R15 K47 ["render"]
  CALL R16 2 0
  GETIMPORT R17 K5 [plugin]
  GETTABLEKS R16 R17 K48 ["Unloading"]
  DUPCLOSURE R18 K49 [PROTO_0]
  CAPTURE VAL R15
  NAMECALL R16 R16 K50 ["Connect"]
  CALL R16 2 0
  RETURN R0 0
