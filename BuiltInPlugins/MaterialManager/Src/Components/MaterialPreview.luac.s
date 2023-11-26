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
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K4 ["createElement"]
  GETUPVAL R8 1
  DUPTABLE R9 K9 [{"BackgroundColor", "Position", "Size", "LayoutOrder"}]
  GETTABLEKS R10 R1 K5 ["BackgroundColor"]
  SETTABLEKS R10 R9 K5 ["BackgroundColor"]
  GETTABLEKS R10 R1 K6 ["Position"]
  SETTABLEKS R10 R9 K6 ["Position"]
  GETTABLEKS R10 R1 K7 ["Size"]
  SETTABLEKS R10 R9 K7 ["Size"]
  GETTABLEKS R10 R1 K8 ["LayoutOrder"]
  SETTABLEKS R10 R9 K8 ["LayoutOrder"]
  DUPTABLE R10 K36 [{"AssetRenderModel"}]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K4 ["createElement"]
  GETUPVAL R12 4
  DUPTABLE R13 K46 [{"Ambient", "BackgroundColor3", "DisablePan", "DisableZoom", "InitialDistance", "LightColor", "LightDirection", "Model", "Size", "Static"}]
  GETTABLEKS R14 R2 K37 ["Ambient"]
  SETTABLEKS R14 R13 K37 ["Ambient"]
  GETUPVAL R14 5
  GETTABLEKS R15 R1 K5 ["BackgroundColor"]
  MOVE R16 R6
  CALL R14 2 1
  SETTABLEKS R14 R13 K38 ["BackgroundColor3"]
  LOADB R14 1
  SETTABLEKS R14 R13 K39 ["DisablePan"]
  GETTABLEKS R14 R1 K40 ["DisableZoom"]
  SETTABLEKS R14 R13 K40 ["DisableZoom"]
  GETTABLEKS R14 R1 K41 ["InitialDistance"]
  SETTABLEKS R14 R13 K41 ["InitialDistance"]
  GETTABLEKS R14 R2 K42 ["LightColor"]
  SETTABLEKS R14 R13 K42 ["LightColor"]
  GETTABLEKS R14 R2 K43 ["LightDirection"]
  SETTABLEKS R14 R13 K43 ["LightDirection"]
  GETTABLEKS R14 R0 K18 ["model"]
  SETTABLEKS R14 R13 K44 ["Model"]
  GETIMPORT R14 K49 [UDim2.fromScale]
  LOADN R15 1
  LOADN R16 1
  CALL R14 2 1
  SETTABLEKS R14 R13 K7 ["Size"]
  GETTABLEKS R14 R1 K45 ["Static"]
  SETTABLEKS R14 R13 K45 ["Static"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K35 ["AssetRenderModel"]
  CALL R7 3 -1
  RETURN R7 -1

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
  GETIMPORT R14 K4 [require]
  GETTABLEKS R17 R0 K9 ["Src"]
  GETTABLEKS R16 R17 K22 ["Reducers"]
  GETTABLEKS R15 R16 K23 ["MainReducer"]
  CALL R14 1 1
  GETTABLEKS R16 R0 K9 ["Src"]
  GETTABLEKS R15 R16 K24 ["Controllers"]
  GETIMPORT R16 K4 [require]
  GETTABLEKS R17 R15 K25 ["GeneralServiceController"]
  CALL R16 1 1
  GETIMPORT R17 K4 [require]
  GETTABLEKS R18 R15 K26 ["MaterialServiceController"]
  CALL R17 1 1
  GETTABLEKS R20 R0 K9 ["Src"]
  GETTABLEKS R19 R20 K27 ["Resources"]
  GETTABLEKS R18 R19 K28 ["Constants"]
  GETIMPORT R19 K4 [require]
  GETTABLEKS R20 R18 K29 ["getMaterialColor"]
  CALL R19 1 1
  GETTABLEKS R20 R1 K30 ["Component"]
  LOADK R22 K31 ["MaterialPreview"]
  NAMECALL R20 R20 K32 ["extend"]
  CALL R20 2 1
  DUPTABLE R21 K35 [{"InitialDistance", "Material"}]
  LOADK R22 K36 [6.3]
  SETTABLEKS R22 R21 K33 ["InitialDistance"]
  GETIMPORT R22 K39 [Enum.Material.Plastic]
  SETTABLEKS R22 R21 K34 ["Material"]
  SETTABLEKS R21 R20 K40 ["defaultProps"]
  DUPCLOSURE R21 K41 [PROTO_0]
  SETTABLEKS R21 R20 K42 ["shouldUpdate"]
  DUPCLOSURE R21 K43 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R10
  CAPTURE VAL R13
  CAPTURE VAL R19
  CAPTURE VAL R11
  CAPTURE VAL R8
  SETTABLEKS R21 R20 K44 ["render"]
  MOVE R21 R6
  DUPTABLE R22 K45 [{"MaterialServiceController", "GeneralServiceController", "Stylizer"}]
  SETTABLEKS R17 R22 K26 ["MaterialServiceController"]
  SETTABLEKS R16 R22 K25 ["GeneralServiceController"]
  SETTABLEKS R7 R22 K14 ["Stylizer"]
  CALL R21 1 1
  MOVE R22 R20
  CALL R21 1 1
  MOVE R20 R21
  GETTABLEKS R21 R2 K46 ["connect"]
  DUPCLOSURE R22 K47 [PROTO_2]
  DUPCLOSURE R23 K48 [PROTO_3]
  CALL R21 2 1
  MOVE R22 R20
  CALL R21 1 -1
  RETURN R21 -1
