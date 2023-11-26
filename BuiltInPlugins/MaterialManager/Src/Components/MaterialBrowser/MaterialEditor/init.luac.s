PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["LayoutOrder"]
  GETTABLEKS R3 R1 K2 ["Size"]
  GETTABLEKS R4 R1 K3 ["Material"]
  JUMPIF R4 [+6]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["createElement"]
  GETUPVAL R5 1
  CALL R4 1 -1
  RETURN R4 -1
  GETTABLEKS R5 R1 K3 ["Material"]
  GETTABLEKS R4 R5 K5 ["MaterialVariant"]
  GETUPVAL R6 2
  GETTABLEKS R8 R1 K3 ["Material"]
  GETTABLEKS R7 R8 K3 ["Material"]
  GETTABLE R5 R6 R7
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K6 ["new"]
  CALL R6 0 1
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K4 ["createElement"]
  GETUPVAL R8 4
  DUPTABLE R9 K8 [{"Layout", "LayoutOrder", "Size"}]
  GETIMPORT R10 K12 [Enum.FillDirection.Vertical]
  SETTABLEKS R10 R9 K7 ["Layout"]
  SETTABLEKS R2 R9 K1 ["LayoutOrder"]
  SETTABLEKS R3 R9 K2 ["Size"]
  DUPTABLE R10 K14 [{"Pane"}]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K4 ["createElement"]
  GETUPVAL R12 1
  DUPTABLE R13 K16 [{"AutomaticSize", "Layout"}]
  GETIMPORT R14 K18 [Enum.AutomaticSize.Y]
  SETTABLEKS R14 R13 K15 ["AutomaticSize"]
  GETIMPORT R14 K12 [Enum.FillDirection.Vertical]
  SETTABLEKS R14 R13 K7 ["Layout"]
  DUPTABLE R14 K27 [{"MaterialHeader", "MaterialInformation", "GeneralSettings", "TextureSettings", "OverrideSettings", "TilingSettings", "TerrainDetailsSettings", "PhysicalSettings"}]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K4 ["createElement"]
  GETUPVAL R16 5
  DUPTABLE R17 K28 [{"LayoutOrder"}]
  NAMECALL R18 R6 K29 ["getNextOrder"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K1 ["LayoutOrder"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K19 ["MaterialHeader"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K4 ["createElement"]
  GETUPVAL R16 6
  DUPTABLE R17 K28 [{"LayoutOrder"}]
  NAMECALL R18 R6 K29 ["getNextOrder"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K1 ["LayoutOrder"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K20 ["MaterialInformation"]
  JUMPIFNOT R4 [+14]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K4 ["createElement"]
  GETUPVAL R16 7
  DUPTABLE R17 K30 [{"LayoutOrder", "MaterialVariant"}]
  NAMECALL R18 R6 K29 ["getNextOrder"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K1 ["LayoutOrder"]
  SETTABLEKS R4 R17 K5 ["MaterialVariant"]
  CALL R15 2 1
  JUMP [+1]
  LOADNIL R15
  SETTABLEKS R15 R14 K21 ["GeneralSettings"]
  JUMPIFNOT R4 [+17]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K4 ["createElement"]
  GETUPVAL R16 8
  DUPTABLE R17 K33 [{"LayoutOrder", "PBRMaterial", "Expandable"}]
  NAMECALL R18 R6 K29 ["getNextOrder"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K1 ["LayoutOrder"]
  SETTABLEKS R4 R17 K31 ["PBRMaterial"]
  LOADB R18 1
  SETTABLEKS R18 R17 K32 ["Expandable"]
  CALL R15 2 1
  JUMP [+1]
  LOADNIL R15
  SETTABLEKS R15 R14 K22 ["TextureSettings"]
  JUMPIFNOT R4 [+15]
  JUMPIFNOT R5 [+14]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K4 ["createElement"]
  GETUPVAL R16 9
  DUPTABLE R17 K30 [{"LayoutOrder", "MaterialVariant"}]
  NAMECALL R18 R6 K29 ["getNextOrder"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K1 ["LayoutOrder"]
  SETTABLEKS R4 R17 K5 ["MaterialVariant"]
  CALL R15 2 1
  JUMP [+11]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K4 ["createElement"]
  GETUPVAL R16 10
  DUPTABLE R17 K28 [{"LayoutOrder"}]
  NAMECALL R18 R6 K29 ["getNextOrder"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K1 ["LayoutOrder"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K23 ["OverrideSettings"]
  JUMPIFNOT R4 [+17]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K4 ["createElement"]
  GETUPVAL R16 11
  DUPTABLE R17 K33 [{"LayoutOrder", "PBRMaterial", "Expandable"}]
  NAMECALL R18 R6 K29 ["getNextOrder"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K1 ["LayoutOrder"]
  SETTABLEKS R4 R17 K31 ["PBRMaterial"]
  LOADB R18 1
  SETTABLEKS R18 R17 K32 ["Expandable"]
  CALL R15 2 1
  JUMP [+1]
  LOADNIL R15
  SETTABLEKS R15 R14 K24 ["TilingSettings"]
  JUMPIFNOT R4 [+14]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K4 ["createElement"]
  GETUPVAL R16 12
  DUPTABLE R17 K30 [{"LayoutOrder", "MaterialVariant"}]
  NAMECALL R18 R6 K29 ["getNextOrder"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K1 ["LayoutOrder"]
  SETTABLEKS R4 R17 K5 ["MaterialVariant"]
  CALL R15 2 1
  JUMP [+1]
  LOADNIL R15
  SETTABLEKS R15 R14 K25 ["TerrainDetailsSettings"]
  JUMPIFNOT R4 [+14]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K4 ["createElement"]
  GETUPVAL R16 13
  DUPTABLE R17 K30 [{"LayoutOrder", "MaterialVariant"}]
  NAMECALL R18 R6 K29 ["getNextOrder"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K1 ["LayoutOrder"]
  SETTABLEKS R4 R17 K5 ["MaterialVariant"]
  CALL R15 2 1
  JUMP [+1]
  LOADNIL R15
  SETTABLEKS R15 R14 K26 ["PhysicalSettings"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K13 ["Pane"]
  CALL R7 3 -1
  RETURN R7 -1

PROTO_1:
  DUPTABLE R2 K1 [{"Material"}]
  GETTABLEKS R3 R1 K2 ["MaterialMock"]
  JUMPIF R3 [+4]
  GETTABLEKS R4 R0 K3 ["MaterialBrowserReducer"]
  GETTABLEKS R3 R4 K0 ["Material"]
  SETTABLEKS R3 R2 K0 ["Material"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Src"]
  GETTABLEKS R2 R3 K6 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K7 ["Packages"]
  GETTABLEKS R4 R5 K9 ["RoactRodux"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K7 ["Packages"]
  GETTABLEKS R5 R6 K10 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K11 ["ContextServices"]
  GETTABLEKS R6 R5 K12 ["withContext"]
  GETTABLEKS R7 R5 K13 ["Analytics"]
  GETTABLEKS R8 R5 K14 ["Localization"]
  GETTABLEKS R10 R4 K15 ["Util"]
  GETTABLEKS R9 R10 K16 ["LayoutOrderIterator"]
  GETTABLEKS R10 R4 K17 ["UI"]
  GETTABLEKS R11 R10 K18 ["Pane"]
  GETTABLEKS R12 R10 K19 ["ScrollingFrame"]
  GETTABLEKS R16 R0 K5 ["Src"]
  GETTABLEKS R15 R16 K20 ["Components"]
  GETTABLEKS R14 R15 K21 ["MaterialBrowser"]
  GETTABLEKS R13 R14 K22 ["MaterialEditor"]
  GETIMPORT R14 K4 [require]
  GETTABLEKS R15 R13 K23 ["MaterialHeader"]
  CALL R14 1 1
  GETIMPORT R15 K4 [require]
  GETTABLEKS R16 R13 K24 ["MaterialInformation"]
  CALL R15 1 1
  GETIMPORT R16 K4 [require]
  GETTABLEKS R17 R13 K25 ["GeneralSettings"]
  CALL R16 1 1
  GETIMPORT R17 K4 [require]
  GETTABLEKS R18 R13 K26 ["TextureSettings"]
  CALL R17 1 1
  GETIMPORT R18 K4 [require]
  GETTABLEKS R19 R13 K27 ["TilingSettings"]
  CALL R18 1 1
  GETIMPORT R19 K4 [require]
  GETTABLEKS R20 R13 K28 ["MaterialOverrides"]
  CALL R19 1 1
  GETIMPORT R20 K4 [require]
  GETTABLEKS R21 R13 K29 ["OverrideSettings"]
  CALL R20 1 1
  GETIMPORT R21 K4 [require]
  GETTABLEKS R22 R13 K30 ["TerrainDetailsSettings"]
  CALL R21 1 1
  GETIMPORT R22 K4 [require]
  GETTABLEKS R23 R13 K31 ["PhysicalSettings"]
  CALL R22 1 1
  GETIMPORT R23 K4 [require]
  GETTABLEKS R27 R0 K5 ["Src"]
  GETTABLEKS R26 R27 K32 ["Resources"]
  GETTABLEKS R25 R26 K33 ["Constants"]
  GETTABLEKS R24 R25 K34 ["getSupportedMaterials"]
  CALL R23 1 1
  MOVE R24 R23
  CALL R24 0 1
  GETTABLEKS R25 R2 K35 ["PureComponent"]
  LOADK R27 K22 ["MaterialEditor"]
  NAMECALL R25 R25 K36 ["extend"]
  CALL R25 2 1
  DUPCLOSURE R26 K37 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R11
  CAPTURE VAL R24
  CAPTURE VAL R9
  CAPTURE VAL R12
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R16
  CAPTURE VAL R17
  CAPTURE VAL R20
  CAPTURE VAL R19
  CAPTURE VAL R18
  CAPTURE VAL R21
  CAPTURE VAL R22
  SETTABLEKS R26 R25 K38 ["render"]
  MOVE R26 R6
  DUPTABLE R27 K39 [{"Analytics", "Localization"}]
  SETTABLEKS R7 R27 K13 ["Analytics"]
  SETTABLEKS R8 R27 K14 ["Localization"]
  CALL R26 1 1
  MOVE R27 R25
  CALL R26 1 1
  MOVE R25 R26
  GETTABLEKS R26 R3 K40 ["connect"]
  DUPCLOSURE R27 K41 [PROTO_1]
  CALL R26 1 1
  MOVE R27 R25
  CALL R26 1 -1
  RETURN R26 -1
