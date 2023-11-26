PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["createElement"]
  GETUPVAL R4 1
  DUPTABLE R5 K5 [{"Title", "LayoutOrder"}]
  LOADK R8 K6 ["MaterialSettings"]
  LOADK R9 K6 ["MaterialSettings"]
  NAMECALL R6 R2 K7 ["getText"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K3 ["Title"]
  GETTABLEKS R7 R0 K0 ["props"]
  GETTABLEKS R6 R7 K4 ["LayoutOrder"]
  SETTABLEKS R6 R5 K4 ["LayoutOrder"]
  DUPTABLE R6 K9 [{"MaterialSettingsFragment"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["createElement"]
  GETUPVAL R8 2
  DUPTABLE R9 K22 [{"LayoutOrder", "autoMaterial", "setAutoMaterial", "material", "setMaterial", "replaceMaterial", "setReplaceMaterial", "source", "setSource", "target", "setTarget", "AllowAir", "Tool"}]
  LOADN R10 1
  SETTABLEKS R10 R9 K4 ["LayoutOrder"]
  GETTABLEKS R10 R1 K10 ["autoMaterial"]
  SETTABLEKS R10 R9 K10 ["autoMaterial"]
  GETTABLEKS R10 R1 K11 ["setAutoMaterial"]
  SETTABLEKS R10 R9 K11 ["setAutoMaterial"]
  GETTABLEKS R10 R1 K12 ["material"]
  SETTABLEKS R10 R9 K12 ["material"]
  GETTABLEKS R10 R1 K13 ["setMaterial"]
  SETTABLEKS R10 R9 K13 ["setMaterial"]
  GETUPVAL R11 3
  JUMPIFNOT R11 [+3]
  GETTABLEKS R10 R1 K14 ["replaceMaterial"]
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K14 ["replaceMaterial"]
  GETUPVAL R11 3
  JUMPIFNOT R11 [+3]
  GETTABLEKS R10 R1 K15 ["setReplaceMaterial"]
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K15 ["setReplaceMaterial"]
  GETUPVAL R11 3
  JUMPIFNOT R11 [+3]
  GETTABLEKS R10 R1 K16 ["source"]
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K16 ["source"]
  GETUPVAL R11 3
  JUMPIFNOT R11 [+3]
  GETTABLEKS R10 R1 K17 ["setSource"]
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K17 ["setSource"]
  GETUPVAL R11 3
  JUMPIFNOT R11 [+3]
  GETTABLEKS R10 R1 K18 ["target"]
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K18 ["target"]
  GETUPVAL R11 3
  JUMPIFNOT R11 [+3]
  GETTABLEKS R10 R1 K19 ["setTarget"]
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K19 ["setTarget"]
  GETTABLEKS R10 R1 K20 ["AllowAir"]
  SETTABLEKS R10 R9 K20 ["AllowAir"]
  GETTABLEKS R10 R1 K23 ["currentTool"]
  SETTABLEKS R10 R9 K21 ["Tool"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K8 ["MaterialSettingsFragment"]
  CALL R3 3 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K2 ["Parent"]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Roact"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K8 ["ContextServices"]
  GETTABLEKS R4 R3 K9 ["withContext"]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K2 ["Parent"]
  GETIMPORT R6 K4 [require]
  GETTABLEKS R7 R5 K10 ["MaterialSettingsFragment"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R8 R5 K11 ["Panel"]
  CALL R7 1 1
  GETIMPORT R8 K13 [game]
  LOADK R10 K14 ["TerrainEditorOverhaul"]
  NAMECALL R8 R8 K15 ["GetFastFlag"]
  CALL R8 2 1
  GETTABLEKS R9 R2 K16 ["PureComponent"]
  LOADK R11 K17 ["MaterialSettings"]
  NAMECALL R9 R9 K18 ["extend"]
  CALL R9 2 1
  DUPCLOSURE R10 K19 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R8
  SETTABLEKS R10 R9 K20 ["render"]
  MOVE R10 R4
  DUPTABLE R11 K22 [{"Localization"}]
  GETTABLEKS R12 R3 K21 ["Localization"]
  SETTABLEKS R12 R11 K21 ["Localization"]
  CALL R10 1 1
  MOVE R11 R9
  CALL R10 1 1
  MOVE R9 R10
  RETURN R9 1
