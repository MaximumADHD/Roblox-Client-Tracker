PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R4 R1 K3 ["LayoutOrder"]
  ORK R3 R4 K2 [1]
  GETTABLEKS R4 R1 K4 ["autoMaterial"]
  GETTABLEKS R5 R1 K5 ["replaceMaterial"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K6 ["createFragment"]
  DUPTABLE R7 K12 [{"AutoMaterial", "ReplaceMaterial", "MaterialSelector", "SourceMaterialSelector", "TargetMaterialSelector"}]
  JUMPIFEQKNIL R4 [+25]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K13 ["createElement"]
  GETUPVAL R9 1
  DUPTABLE R10 K17 [{"LayoutOrder", "Text", "IsOn", "SetIsOn"}]
  SETTABLEKS R3 R10 K3 ["LayoutOrder"]
  LOADK R13 K18 ["MaterialSettings"]
  LOADK R14 K7 ["AutoMaterial"]
  NAMECALL R11 R2 K19 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K14 ["Text"]
  SETTABLEKS R4 R10 K15 ["IsOn"]
  GETTABLEKS R12 R0 K0 ["props"]
  GETTABLEKS R11 R12 K20 ["setAutoMaterial"]
  SETTABLEKS R11 R10 K16 ["SetIsOn"]
  CALL R8 2 1
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K7 ["AutoMaterial"]
  GETUPVAL R9 2
  JUMPIFNOT R9 [+24]
  JUMPIFEQKNIL R5 [+23]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K13 ["createElement"]
  GETUPVAL R9 3
  DUPTABLE R10 K24 [{"LayoutOrder", "ReplaceMode", "SetReplaceMode", "Tool"}]
  ADDK R11 R3 K2 [1]
  SETTABLEKS R11 R10 K3 ["LayoutOrder"]
  SETTABLEKS R5 R10 K21 ["ReplaceMode"]
  GETTABLEKS R12 R0 K0 ["props"]
  GETTABLEKS R11 R12 K25 ["setReplaceMaterial"]
  SETTABLEKS R11 R10 K22 ["SetReplaceMode"]
  GETTABLEKS R11 R1 K23 ["Tool"]
  SETTABLEKS R11 R10 K23 ["Tool"]
  CALL R8 2 1
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K8 ["ReplaceMaterial"]
  GETUPVAL R9 2
  JUMPIFNOT R9 [+1]
  JUMPIF R5 [+60]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K13 ["createElement"]
  GETUPVAL R9 4
  DUPTABLE R10 K31 [{"Label", "LayoutOrder", "material", "setMaterial", "AllowAir", "Tooltip"}]
  GETUPVAL R12 2
  JUMPIFNOT R12 [+6]
  LOADK R13 K18 ["MaterialSettings"]
  LOADK R14 K32 ["Material"]
  NAMECALL R11 R2 K19 ["getText"]
  CALL R11 3 1
  JUMP [+1]
  LOADNIL R11
  SETTABLEKS R11 R10 K26 ["Label"]
  ADDK R11 R3 K33 [2]
  SETTABLEKS R11 R10 K3 ["LayoutOrder"]
  GETTABLEKS R12 R0 K0 ["props"]
  GETTABLEKS R11 R12 K27 ["material"]
  SETTABLEKS R11 R10 K27 ["material"]
  GETTABLEKS R12 R0 K0 ["props"]
  GETTABLEKS R11 R12 K28 ["setMaterial"]
  SETTABLEKS R11 R10 K28 ["setMaterial"]
  LOADB R11 0
  GETTABLEKS R13 R0 K0 ["props"]
  GETTABLEKS R12 R13 K23 ["Tool"]
  GETUPVAL R14 5
  GETTABLEKS R13 R14 K34 ["Paint"]
  JUMPIFEQ R12 R13 [+5]
  GETTABLEKS R12 R0 K0 ["props"]
  GETTABLEKS R11 R12 K29 ["AllowAir"]
  SETTABLEKS R11 R10 K29 ["AllowAir"]
  GETUPVAL R12 2
  JUMPIFNOT R12 [+6]
  LOADK R13 K18 ["MaterialSettings"]
  LOADK R14 K35 ["MaterialTooltip"]
  NAMECALL R11 R2 K19 ["getText"]
  CALL R11 3 1
  JUMP [+1]
  LOADNIL R11
  SETTABLEKS R11 R10 K30 ["Tooltip"]
  CALL R8 2 1
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K9 ["MaterialSelector"]
  GETUPVAL R9 2
  JUMPIFNOT R9 [+53]
  JUMPIFNOT R5 [+52]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K13 ["createElement"]
  GETUPVAL R9 4
  DUPTABLE R10 K31 [{"Label", "LayoutOrder", "material", "setMaterial", "AllowAir", "Tooltip"}]
  LOADK R13 K18 ["MaterialSettings"]
  LOADK R14 K36 ["SourceMaterial"]
  NAMECALL R11 R2 K19 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K26 ["Label"]
  ADDK R11 R3 K37 [3]
  SETTABLEKS R11 R10 K3 ["LayoutOrder"]
  GETTABLEKS R12 R0 K0 ["props"]
  GETTABLEKS R11 R12 K38 ["source"]
  SETTABLEKS R11 R10 K27 ["material"]
  GETTABLEKS R12 R0 K0 ["props"]
  GETTABLEKS R11 R12 K39 ["setSource"]
  SETTABLEKS R11 R10 K28 ["setMaterial"]
  LOADB R11 0
  GETTABLEKS R13 R0 K0 ["props"]
  GETTABLEKS R12 R13 K23 ["Tool"]
  GETUPVAL R14 5
  GETTABLEKS R13 R14 K34 ["Paint"]
  JUMPIFEQ R12 R13 [+5]
  GETTABLEKS R12 R0 K0 ["props"]
  GETTABLEKS R11 R12 K29 ["AllowAir"]
  SETTABLEKS R11 R10 K29 ["AllowAir"]
  LOADK R13 K18 ["MaterialSettings"]
  LOADK R14 K40 ["SourceMaterialTooltip"]
  NAMECALL R11 R2 K19 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K30 ["Tooltip"]
  CALL R8 2 1
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K10 ["SourceMaterialSelector"]
  GETUPVAL R9 2
  JUMPIFNOT R9 [+43]
  JUMPIFNOT R5 [+42]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K13 ["createElement"]
  GETUPVAL R9 4
  DUPTABLE R10 K31 [{"Label", "LayoutOrder", "material", "setMaterial", "AllowAir", "Tooltip"}]
  LOADK R13 K18 ["MaterialSettings"]
  LOADK R14 K41 ["TargetMaterial"]
  NAMECALL R11 R2 K19 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K26 ["Label"]
  ADDK R11 R3 K42 [4]
  SETTABLEKS R11 R10 K3 ["LayoutOrder"]
  GETTABLEKS R12 R0 K0 ["props"]
  GETTABLEKS R11 R12 K43 ["target"]
  SETTABLEKS R11 R10 K27 ["material"]
  GETTABLEKS R12 R0 K0 ["props"]
  GETTABLEKS R11 R12 K44 ["setTarget"]
  SETTABLEKS R11 R10 K28 ["setMaterial"]
  GETTABLEKS R12 R0 K0 ["props"]
  GETTABLEKS R11 R12 K29 ["AllowAir"]
  SETTABLEKS R11 R10 K29 ["AllowAir"]
  LOADK R13 K18 ["MaterialSettings"]
  LOADK R14 K45 ["TargetMaterialTooltip"]
  NAMECALL R11 R2 K19 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K30 ["Tooltip"]
  CALL R8 2 1
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K11 ["TargetMaterialSelector"]
  CALL R6 1 -1
  RETURN R6 -1

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
  GETTABLEKS R7 R5 K10 ["LabeledToggle"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R8 R5 K11 ["MaterialSelector"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R9 R5 K12 ["ReplaceModeSelector"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R12 R0 K13 ["Src"]
  GETTABLEKS R11 R12 K14 ["Util"]
  GETTABLEKS R10 R11 K15 ["TerrainEnums"]
  CALL R9 1 1
  GETTABLEKS R10 R9 K16 ["ToolId"]
  GETIMPORT R11 K18 [game]
  LOADK R13 K19 ["TerrainEditorOverhaul"]
  NAMECALL R11 R11 K20 ["GetFastFlag"]
  CALL R11 2 1
  GETTABLEKS R12 R2 K21 ["PureComponent"]
  LOADK R14 K22 ["MaterialSettingsFragment"]
  NAMECALL R12 R12 K23 ["extend"]
  CALL R12 2 1
  DUPCLOSURE R13 K24 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R11
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R10
  SETTABLEKS R13 R12 K25 ["render"]
  MOVE R13 R4
  DUPTABLE R14 K27 [{"Localization"}]
  GETTABLEKS R15 R3 K26 ["Localization"]
  SETTABLEKS R15 R14 K26 ["Localization"]
  CALL R13 1 1
  MOVE R14 R12
  CALL R13 1 1
  MOVE R12 R13
  RETURN R12 1
