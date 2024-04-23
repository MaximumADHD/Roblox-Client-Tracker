PROTO_0:
  GETTABLEKS R2 R1 K0 ["MaterialWrapper"]
  GETTABLEKS R4 R0 K1 ["props"]
  GETTABLEKS R3 R4 K0 ["MaterialWrapper"]
  JUMPIFNOTEQ R2 R3 [+25]
  GETTABLEKS R2 R1 K2 ["MaterialOverride"]
  GETTABLEKS R4 R0 K1 ["props"]
  GETTABLEKS R3 R4 K2 ["MaterialOverride"]
  JUMPIFNOTEQ R2 R3 [+17]
  GETTABLEKS R2 R1 K3 ["MaterialOverrides"]
  GETTABLEKS R4 R0 K1 ["props"]
  GETTABLEKS R3 R4 K3 ["MaterialOverrides"]
  JUMPIFNOTEQ R2 R3 [+9]
  GETTABLEKS R2 R1 K4 ["Use2022Materials"]
  GETTABLEKS R4 R0 K1 ["props"]
  GETTABLEKS R3 R4 K4 ["Use2022Materials"]
  JUMPIFEQ R2 R3 [+3]
  LOADB R2 1
  RETURN R2 1
  LOADB R2 0
  RETURN R2 1

PROTO_1:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R3 R1 K1 ["Stylizer"]
  GETTABLEKS R2 R3 K2 ["MaterialPreview"]
  GETTABLEKS R3 R1 K3 ["MaterialWrapper"]
  JUMPIF R3 [+23]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K9 [{"BackgroundColor", "Position", "Size", "LayoutOrder"}]
  GETTABLEKS R7 R1 K5 ["BackgroundColor"]
  SETTABLEKS R7 R6 K5 ["BackgroundColor"]
  GETTABLEKS R7 R1 K6 ["Position"]
  SETTABLEKS R7 R6 K6 ["Position"]
  GETTABLEKS R7 R1 K7 ["Size"]
  SETTABLEKS R7 R6 K7 ["Size"]
  GETTABLEKS R7 R1 K8 ["LayoutOrder"]
  SETTABLEKS R7 R6 K8 ["LayoutOrder"]
  CALL R4 2 -1
  RETURN R4 -1
  GETTABLEKS R5 R3 K10 ["MaterialVariant"]
  JUMPIFNOT R5 [+5]
  GETTABLEKS R5 R3 K10 ["MaterialVariant"]
  GETTABLEKS R4 R5 K11 ["Name"]
  JUMP [+1]
  LOADNIL R4
  GETTABLEKS R5 R3 K12 ["Material"]
  GETTABLEKS R6 R0 K13 ["materialModel"]
  JUMPIF R6 [+8]
  GETTABLEKS R6 R1 K14 ["GeneralServiceController"]
  LOADK R8 K15 ["rbxasset://models/MaterialManager/smooth_material_model.rbxm"]
  NAMECALL R6 R6 K16 ["LoadLocalAsset"]
  CALL R6 2 1
  SETTABLEKS R6 R0 K13 ["materialModel"]
  GETTABLEKS R6 R0 K13 ["materialModel"]
  NAMECALL R6 R6 K17 ["Clone"]
  CALL R6 1 1
  SETTABLEKS R6 R0 K18 ["model"]
  GETTABLEKS R7 R0 K18 ["model"]
  GETTABLEKS R6 R7 K19 ["MeshPart"]
  SETTABLEKS R5 R6 K12 ["Material"]
  GETUPVAL R6 2
  CALL R6 0 1
  JUMPIFNOT R6 [+19]
  GETTABLEKS R7 R0 K18 ["model"]
  GETTABLEKS R6 R7 K19 ["MeshPart"]
  GETIMPORT R8 K22 [CFrame.Angles]
  LOADN R9 0
  LOADK R10 K23 [0.785398163397448]
  LOADN R11 0
  CALL R8 3 1
  GETIMPORT R9 K22 [CFrame.Angles]
  LOADK R10 K23 [0.785398163397448]
  LOADN R11 0
  LOADN R12 0
  CALL R9 3 1
  MUL R7 R8 R9
  SETTABLEKS R7 R6 K20 ["CFrame"]
  JUMPIFNOT R4 [+7]
  GETTABLEKS R7 R0 K18 ["model"]
  GETTABLEKS R6 R7 K19 ["MeshPart"]
  SETTABLEKS R4 R6 K10 ["MaterialVariant"]
  JUMP [+36]
  GETTABLEKS R6 R1 K24 ["MaterialOverrides"]
  JUMPIFNOT R6 [+33]
  GETTABLEKS R6 R1 K25 ["MaterialOverride"]
  JUMPIFNOT R6 [+30]
  GETTABLEKS R6 R1 K26 ["MaterialServiceController"]
  MOVE R8 R5
  GETTABLEKS R10 R1 K24 ["MaterialOverrides"]
  GETTABLEKS R11 R1 K25 ["MaterialOverride"]
  GETTABLE R9 R10 R11
  NAMECALL R6 R6 K27 ["hasDefaultMaterial"]
  CALL R6 3 1
  JUMPIFNOT R6 [+18]
  GETTABLEKS R7 R0 K18 ["model"]
  GETTABLEKS R6 R7 K19 ["MeshPart"]
  GETUPVAL R7 3
  MOVE R8 R5
  GETTABLEKS R9 R1 K28 ["Use2022Materials"]
  CALL R7 2 1
  JUMPIF R7 [+6]
  GETIMPORT R7 K31 [Color3.fromRGB]
  LOADN R8 163
  LOADN R9 162
  LOADN R10 165
  CALL R7 3 1
  SETTABLEKS R7 R6 K32 ["Color"]
  GETTABLEKS R7 R1 K33 ["Hover"]
  JUMPIFNOT R7 [+3]
  GETTABLEKS R6 R2 K34 ["BackgroundColorHover"]
  JUMP [+2]
  GETTABLEKS R6 R2 K5 ["BackgroundColor"]
  GETUPVAL R8 4
  GETTABLE R7 R8 R5
  JUMPIFNOT R7 [+1]
  NOT R7 R4
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K4 ["createElement"]
  GETUPVAL R9 1
  DUPTABLE R10 K9 [{"BackgroundColor", "Position", "Size", "LayoutOrder"}]
  GETTABLEKS R11 R1 K5 ["BackgroundColor"]
  SETTABLEKS R11 R10 K5 ["BackgroundColor"]
  GETTABLEKS R11 R1 K6 ["Position"]
  SETTABLEKS R11 R10 K6 ["Position"]
  GETTABLEKS R11 R1 K7 ["Size"]
  SETTABLEKS R11 R10 K7 ["Size"]
  GETTABLEKS R11 R1 K8 ["LayoutOrder"]
  SETTABLEKS R11 R10 K8 ["LayoutOrder"]
  DUPTABLE R11 K36 [{"AssetRenderModel"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K4 ["createElement"]
  GETUPVAL R13 5
  DUPTABLE R14 K47 [{"Ambient", "BackgroundColor3", "DisablePan", "DisableZoom", "EnableSky", "InitialDistance", "LightColor", "LightDirection", "Model", "Size", "Static"}]
  GETTABLEKS R15 R2 K37 ["Ambient"]
  SETTABLEKS R15 R14 K37 ["Ambient"]
  GETUPVAL R15 6
  GETTABLEKS R16 R1 K5 ["BackgroundColor"]
  MOVE R17 R6
  CALL R15 2 1
  SETTABLEKS R15 R14 K38 ["BackgroundColor3"]
  LOADB R15 1
  SETTABLEKS R15 R14 K39 ["DisablePan"]
  GETTABLEKS R15 R1 K40 ["DisableZoom"]
  SETTABLEKS R15 R14 K40 ["DisableZoom"]
  GETUPVAL R16 7
  CALL R16 0 1
  JUMPIFNOT R16 [+2]
  MOVE R15 R7
  JUMP [+1]
  LOADNIL R15
  SETTABLEKS R15 R14 K41 ["EnableSky"]
  GETTABLEKS R15 R1 K42 ["InitialDistance"]
  SETTABLEKS R15 R14 K42 ["InitialDistance"]
  GETTABLEKS R15 R2 K43 ["LightColor"]
  SETTABLEKS R15 R14 K43 ["LightColor"]
  GETTABLEKS R15 R2 K44 ["LightDirection"]
  SETTABLEKS R15 R14 K44 ["LightDirection"]
  GETTABLEKS R15 R0 K18 ["model"]
  SETTABLEKS R15 R14 K45 ["Model"]
  GETIMPORT R15 K50 [UDim2.fromScale]
  LOADN R16 1
  LOADN R17 1
  CALL R15 2 1
  SETTABLEKS R15 R14 K7 ["Size"]
  GETTABLEKS R15 R1 K46 ["Static"]
  SETTABLEKS R15 R14 K46 ["Static"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K35 ["AssetRenderModel"]
  CALL R8 3 -1
  RETURN R8 -1

PROTO_2:
  DUPTABLE R2 K4 [{"MaterialWrapper", "MaterialOverride", "MaterialOverrides", "Use2022Materials"}]
  GETTABLEKS R4 R1 K5 ["MaterialVariant"]
  JUMPIFNOT R4 [+8]
  GETTABLEKS R5 R0 K6 ["MaterialBrowserReducer"]
  GETTABLEKS R4 R5 K7 ["Materials"]
  GETTABLEKS R5 R1 K5 ["MaterialVariant"]
  GETTABLE R3 R4 R5
  JUMP [+7]
  GETTABLEKS R5 R0 K6 ["MaterialBrowserReducer"]
  GETTABLEKS R4 R5 K7 ["Materials"]
  GETTABLEKS R5 R1 K8 ["Material"]
  GETTABLE R3 R4 R5
  SETTABLEKS R3 R2 K0 ["MaterialWrapper"]
  GETTABLEKS R4 R1 K5 ["MaterialVariant"]
  JUMPIF R4 [+8]
  GETTABLEKS R5 R0 K6 ["MaterialBrowserReducer"]
  GETTABLEKS R4 R5 K1 ["MaterialOverride"]
  GETTABLEKS R5 R1 K8 ["Material"]
  GETTABLE R3 R4 R5
  JUMP [+1]
  LOADNIL R3
  SETTABLEKS R3 R2 K1 ["MaterialOverride"]
  GETTABLEKS R4 R1 K5 ["MaterialVariant"]
  JUMPIF R4 [+8]
  GETTABLEKS R5 R0 K6 ["MaterialBrowserReducer"]
  GETTABLEKS R4 R5 K2 ["MaterialOverrides"]
  GETTABLEKS R5 R1 K8 ["Material"]
  GETTABLE R3 R4 R5
  JUMP [+1]
  LOADNIL R3
  SETTABLEKS R3 R2 K2 ["MaterialOverrides"]
  GETTABLEKS R4 R0 K6 ["MaterialBrowserReducer"]
  GETTABLEKS R3 R4 K3 ["Use2022Materials"]
  SETTABLEKS R3 R2 K3 ["Use2022Materials"]
  RETURN R2 1

PROTO_3:
  NEWTABLE R1 0 0
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Framework"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Types"]
  CALL R4 1 1
  GETTABLEKS R5 R3 K11 ["ContextServices"]
  GETTABLEKS R6 R5 K12 ["withContext"]
  GETTABLEKS R8 R3 K13 ["Style"]
  GETTABLEKS R7 R8 K14 ["Stylizer"]
  GETTABLEKS R9 R3 K15 ["Util"]
  GETTABLEKS R8 R9 K16 ["prioritize"]
  GETTABLEKS R9 R3 K17 ["UI"]
  GETTABLEKS R10 R9 K18 ["Pane"]
  GETTABLEKS R11 R9 K19 ["AssetRenderModel"]
  GETIMPORT R12 K4 [require]
  GETTABLEKS R14 R0 K9 ["Src"]
  GETTABLEKS R13 R14 K20 ["Flags"]
  CALL R12 1 1
  GETTABLEKS R13 R12 K21 ["getFFlagBetterMaterialManagerPreviews"]
  GETTABLEKS R14 R12 K22 ["getFFlagEnableSkyForMetalBalls"]
  GETIMPORT R15 K4 [require]
  GETTABLEKS R18 R0 K9 ["Src"]
  GETTABLEKS R17 R18 K23 ["Reducers"]
  GETTABLEKS R16 R17 K24 ["MainReducer"]
  CALL R15 1 1
  GETTABLEKS R17 R0 K9 ["Src"]
  GETTABLEKS R16 R17 K25 ["Controllers"]
  GETIMPORT R17 K4 [require]
  GETTABLEKS R18 R16 K26 ["GeneralServiceController"]
  CALL R17 1 1
  GETIMPORT R18 K4 [require]
  GETTABLEKS R19 R16 K27 ["MaterialServiceController"]
  CALL R18 1 1
  GETTABLEKS R21 R0 K9 ["Src"]
  GETTABLEKS R20 R21 K28 ["Resources"]
  GETTABLEKS R19 R20 K29 ["Constants"]
  GETIMPORT R20 K4 [require]
  GETTABLEKS R21 R19 K30 ["getMaterialColor"]
  CALL R20 1 1
  GETIMPORT R21 K4 [require]
  GETTABLEKS R22 R19 K31 ["BASE_MATERIALS_WITH_METALNESS"]
  CALL R21 1 1
  GETTABLEKS R22 R1 K32 ["Component"]
  LOADK R24 K33 ["MaterialPreview"]
  NAMECALL R22 R22 K34 ["extend"]
  CALL R22 2 1
  DUPTABLE R23 K37 [{"InitialDistance", "Material"}]
  LOADK R24 K38 [6.3]
  SETTABLEKS R24 R23 K35 ["InitialDistance"]
  GETIMPORT R24 K41 [Enum.Material.Plastic]
  SETTABLEKS R24 R23 K36 ["Material"]
  SETTABLEKS R23 R22 K42 ["defaultProps"]
  DUPCLOSURE R23 K43 [PROTO_0]
  SETTABLEKS R23 R22 K44 ["shouldUpdate"]
  DUPCLOSURE R23 K45 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R10
  CAPTURE VAL R13
  CAPTURE VAL R20
  CAPTURE VAL R21
  CAPTURE VAL R11
  CAPTURE VAL R8
  CAPTURE VAL R14
  SETTABLEKS R23 R22 K46 ["render"]
  MOVE R23 R6
  DUPTABLE R24 K47 [{"MaterialServiceController", "GeneralServiceController", "Stylizer"}]
  SETTABLEKS R18 R24 K27 ["MaterialServiceController"]
  SETTABLEKS R17 R24 K26 ["GeneralServiceController"]
  SETTABLEKS R7 R24 K14 ["Stylizer"]
  CALL R23 1 1
  MOVE R24 R22
  CALL R23 1 1
  MOVE R22 R23
  GETTABLEKS R23 R2 K48 ["connect"]
  DUPCLOSURE R24 K49 [PROTO_2]
  DUPCLOSURE R25 K50 [PROTO_3]
  CALL R23 2 1
  MOVE R24 R22
  CALL R23 1 -1
  RETURN R23 -1
