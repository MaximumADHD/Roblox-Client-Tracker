MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [script]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R2 R0 K5 ["BuilderIconsFallback"]
  CALL R1 1 1
  LOADK R3 K6 ["rbxassetid://%*"]
  MOVE R5 R1
  NAMECALL R3 R3 K7 ["format"]
  CALL R3 2 1
  MOVE R2 R3
  DUPTABLE R3 K11 [{"Regular", "Filled", "Fallback"}]
  GETIMPORT R4 K14 [Font.new]
  LOADK R5 K15 ["rbxasset://LuaPackages/Packages/_Index/BuilderIcons/BuilderIcons/BuilderIcons.json"]
  GETIMPORT R6 K18 [Enum.FontWeight.Regular]
  CALL R4 2 1
  SETTABLEKS R4 R3 K8 ["Regular"]
  GETIMPORT R4 K14 [Font.new]
  LOADK R5 K15 ["rbxasset://LuaPackages/Packages/_Index/BuilderIcons/BuilderIcons/BuilderIcons.json"]
  GETIMPORT R6 K20 [Enum.FontWeight.Bold]
  CALL R4 2 1
  SETTABLEKS R4 R3 K9 ["Filled"]
  DUPTABLE R4 K21 [{"Regular", "Filled"}]
  GETIMPORT R5 K14 [Font.new]
  MOVE R6 R2
  GETIMPORT R7 K18 [Enum.FontWeight.Regular]
  CALL R5 2 1
  SETTABLEKS R5 R4 K8 ["Regular"]
  GETIMPORT R5 K14 [Font.new]
  MOVE R6 R2
  GETIMPORT R7 K20 [Enum.FontWeight.Bold]
  CALL R5 2 1
  SETTABLEKS R5 R4 K9 ["Filled"]
  SETTABLEKS R4 R3 K10 ["Fallback"]
  RETURN R3 1
