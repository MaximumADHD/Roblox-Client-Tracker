PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["MaterialWrapper"]
        2 GETTABLEKS                       R3 R0 K1 ["props"]
        4 GETTABLEKS                       R3 R3 K0 ["MaterialWrapper"]
        6 JUMPIFNOTEQ                      R2 R3 ; [+25]
        8 GETTABLEKS                       R2 R1 K2 ["MaterialOverride"]
       10 GETTABLEKS                       R3 R0 K1 ["props"]
       12 GETTABLEKS                       R3 R3 K2 ["MaterialOverride"]
       14 JUMPIFNOTEQ                      R2 R3 ; [+17]
       16 GETTABLEKS                       R2 R1 K3 ["MaterialOverrides"]
       18 GETTABLEKS                       R3 R0 K1 ["props"]
       20 GETTABLEKS                       R3 R3 K3 ["MaterialOverrides"]
       22 JUMPIFNOTEQ                      R2 R3 ; [+9]
       24 GETTABLEKS                       R2 R1 K4 ["Use2022Materials"]
       26 GETTABLEKS                       R3 R0 K1 ["props"]
       28 GETTABLEKS                       R3 R3 K4 ["Use2022Materials"]
       30 JUMPIFEQ                         R2 R3 ; [+3]
       32 LOADB                            R2 1
       33 RETURN                           R2 1
       34 LOADB                            R2 0
       35 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R2 K2 ["MaterialPreview"]
        6 GETTABLEKS                       R3 R1 K3 ["MaterialWrapper"]
        8 JUMPIF                           R3 ; [+23]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K4 ["createElement"]
       12 GETUPVAL                         R5 1
       13 DUPTABLE                         R6 K9 [{"BackgroundColor", "Position", "Size", "LayoutOrder"}]
       14 GETTABLEKS                       R7 R1 K5 ["BackgroundColor"]
       16 SETTABLEKS                       R7 R6 K5 ["BackgroundColor"]
       18 GETTABLEKS                       R7 R1 K6 ["Position"]
       20 SETTABLEKS                       R7 R6 K6 ["Position"]
       22 GETTABLEKS                       R7 R1 K7 ["Size"]
       24 SETTABLEKS                       R7 R6 K7 ["Size"]
       26 GETTABLEKS                       R7 R1 K8 ["LayoutOrder"]
       28 SETTABLEKS                       R7 R6 K8 ["LayoutOrder"]
       30 CALL                             R4 2 -1
       31 RETURN                           R4 -1
       32 GETTABLEKS                       R5 R3 K10 ["MaterialVariant"]
       34 JUMPIFNOT                        R5 ; [+5]
       35 GETTABLEKS                       R4 R3 K10 ["MaterialVariant"]
       37 GETTABLEKS                       R4 R4 K11 ["Name"]
       39 JUMP                             ; [+1]
       40 LOADNIL                          R4
       41 GETTABLEKS                       R5 R3 K12 ["Material"]
       43 GETTABLEKS                       R6 R0 K13 ["materialModel"]
       45 JUMPIF                           R6 ; [+8]
       46 GETTABLEKS                       R6 R1 K14 ["GeneralServiceController"]
       48 LOADK                            R8 K15 ["rbxasset://models/MaterialManager/smooth_material_model.rbxm"]
       49 NAMECALL                         R6 R6 K16 ["LoadLocalAsset"]
       51 CALL                             R6 2 1
       52 SETTABLEKS                       R6 R0 K13 ["materialModel"]
       54 GETTABLEKS                       R6 R0 K13 ["materialModel"]
       56 NAMECALL                         R6 R6 K17 ["Clone"]
       58 CALL                             R6 1 1
       59 SETTABLEKS                       R6 R0 K18 ["model"]
       61 GETTABLEKS                       R6 R0 K18 ["model"]
       63 GETTABLEKS                       R6 R6 K19 ["MeshPart"]
       65 SETTABLEKS                       R5 R6 K12 ["Material"]
       67 GETUPVAL                         R6 2
       68 CALL                             R6 0 1
       69 JUMPIFNOT                        R6 ; [+19]
       70 GETTABLEKS                       R6 R0 K18 ["model"]
       72 GETTABLEKS                       R6 R6 K19 ["MeshPart"]
       74 GETIMPORT                        R8 K22 [CFrame.Angles]
       76 LOADN                            R9 0
       77 LOADK                            R10 K23 [0.785398163397448]
       78 LOADN                            R11 0
       79 CALL                             R8 3 1
       80 GETIMPORT                        R9 K22 [CFrame.Angles]
       82 LOADK                            R10 K23 [0.785398163397448]
       83 LOADN                            R11 0
       84 LOADN                            R12 0
       85 CALL                             R9 3 1
       86 MUL                              R7 R8 R9
       87 SETTABLEKS                       R7 R6 K20 ["CFrame"]
       89 JUMPIFNOT                        R4 ; [+7]
       90 GETTABLEKS                       R6 R0 K18 ["model"]
       92 GETTABLEKS                       R6 R6 K19 ["MeshPart"]
       94 SETTABLEKS                       R4 R6 K10 ["MaterialVariant"]
       96 JUMP                             ; [+36]
       97 GETTABLEKS                       R6 R1 K24 ["MaterialOverrides"]
       99 JUMPIFNOT                        R6 ; [+33]
      100 GETTABLEKS                       R6 R1 K25 ["MaterialOverride"]
      102 JUMPIFNOT                        R6 ; [+30]
      103 GETTABLEKS                       R6 R1 K26 ["MaterialServiceController"]
      105 MOVE                             R8 R5
      106 GETTABLEKS                       R10 R1 K24 ["MaterialOverrides"]
      108 GETTABLEKS                       R11 R1 K25 ["MaterialOverride"]
      110 GETTABLE                         R9 R10 R11
      111 NAMECALL                         R6 R6 K27 ["hasDefaultMaterial"]
      113 CALL                             R6 3 1
      114 JUMPIFNOT                        R6 ; [+18]
      115 GETTABLEKS                       R6 R0 K18 ["model"]
      117 GETTABLEKS                       R6 R6 K19 ["MeshPart"]
      119 GETUPVAL                         R7 3
      120 MOVE                             R8 R5
      121 GETTABLEKS                       R9 R1 K28 ["Use2022Materials"]
      123 CALL                             R7 2 1
      124 JUMPIF                           R7 ; [+6]
      125 GETIMPORT                        R7 K31 [Color3.fromRGB]
      127 LOADN                            R8 163
      128 LOADN                            R9 162
      129 LOADN                            R10 165
      130 CALL                             R7 3 1
      131 SETTABLEKS                       R7 R6 K32 ["Color"]
      133 GETTABLEKS                       R7 R1 K33 ["Hover"]
      135 JUMPIFNOT                        R7 ; [+3]
      136 GETTABLEKS                       R6 R2 K34 ["BackgroundColorHover"]
      138 JUMP                             ; [+2]
      139 GETTABLEKS                       R6 R2 K5 ["BackgroundColor"]
      141 GETUPVAL                         R8 4
      142 GETTABLE                         R7 R8 R5
      143 JUMPIFNOT                        R7 ; [+1]
      144 NOT                              R7 R4
      145 GETUPVAL                         R8 0
      146 GETTABLEKS                       R8 R8 K4 ["createElement"]
      148 GETUPVAL                         R9 1
      149 DUPTABLE                         R10 K9 [{"BackgroundColor", "Position", "Size", "LayoutOrder"}]
      150 GETTABLEKS                       R11 R1 K5 ["BackgroundColor"]
      152 SETTABLEKS                       R11 R10 K5 ["BackgroundColor"]
      154 GETTABLEKS                       R11 R1 K6 ["Position"]
      156 SETTABLEKS                       R11 R10 K6 ["Position"]
      158 GETTABLEKS                       R11 R1 K7 ["Size"]
      160 SETTABLEKS                       R11 R10 K7 ["Size"]
      162 GETTABLEKS                       R11 R1 K8 ["LayoutOrder"]
      164 SETTABLEKS                       R11 R10 K8 ["LayoutOrder"]
      166 DUPTABLE                         R11 K36 [{"AssetRenderModel"}]
      167 GETUPVAL                         R12 0
      168 GETTABLEKS                       R12 R12 K4 ["createElement"]
      170 GETUPVAL                         R13 5
      171 DUPTABLE                         R14 K47 [{"Ambient", "BackgroundColor3", "DisablePan", "DisableZoom", "EnableSky", "InitialDistance", "LightColor", "LightDirection", "Model", "Size", "Static"}]
      172 GETTABLEKS                       R15 R2 K37 ["Ambient"]
      174 SETTABLEKS                       R15 R14 K37 ["Ambient"]
      176 GETUPVAL                         R15 6
      177 GETTABLEKS                       R16 R1 K5 ["BackgroundColor"]
      179 MOVE                             R17 R6
      180 CALL                             R15 2 1
      181 SETTABLEKS                       R15 R14 K38 ["BackgroundColor3"]
      183 LOADB                            R15 1
      184 SETTABLEKS                       R15 R14 K39 ["DisablePan"]
      186 GETTABLEKS                       R15 R1 K40 ["DisableZoom"]
      188 SETTABLEKS                       R15 R14 K40 ["DisableZoom"]
      190 SETTABLEKS                       R7 R14 K41 ["EnableSky"]
      192 GETTABLEKS                       R15 R1 K42 ["InitialDistance"]
      194 SETTABLEKS                       R15 R14 K42 ["InitialDistance"]
      196 GETTABLEKS                       R15 R2 K43 ["LightColor"]
      198 SETTABLEKS                       R15 R14 K43 ["LightColor"]
      200 GETTABLEKS                       R15 R2 K44 ["LightDirection"]
      202 SETTABLEKS                       R15 R14 K44 ["LightDirection"]
      204 GETTABLEKS                       R15 R0 K18 ["model"]
      206 SETTABLEKS                       R15 R14 K45 ["Model"]
      208 GETIMPORT                        R15 K50 [UDim2.fromScale]
      210 LOADN                            R16 1
      211 LOADN                            R17 1
      212 CALL                             R15 2 1
      213 SETTABLEKS                       R15 R14 K7 ["Size"]
      215 GETTABLEKS                       R15 R1 K46 ["Static"]
      217 SETTABLEKS                       R15 R14 K46 ["Static"]
      219 CALL                             R12 2 1
      220 SETTABLEKS                       R12 R11 K35 ["AssetRenderModel"]
      222 CALL                             R8 3 -1
      223 RETURN                           R8 -1

PROTO_2:
        0 DUPTABLE                         R2 K4 [{"MaterialWrapper", "MaterialOverride", "MaterialOverrides", "Use2022Materials"}]
        1 GETTABLEKS                       R4 R1 K5 ["MaterialVariant"]
        3 JUMPIFNOT                        R4 ; [+8]
        4 GETTABLEKS                       R4 R0 K6 ["MaterialBrowserReducer"]
        6 GETTABLEKS                       R4 R4 K7 ["Materials"]
        8 GETTABLEKS                       R5 R1 K5 ["MaterialVariant"]
       10 GETTABLE                         R3 R4 R5
       11 JUMP                             ; [+7]
       12 GETTABLEKS                       R4 R0 K6 ["MaterialBrowserReducer"]
       14 GETTABLEKS                       R4 R4 K7 ["Materials"]
       16 GETTABLEKS                       R5 R1 K8 ["Material"]
       18 GETTABLE                         R3 R4 R5
       19 SETTABLEKS                       R3 R2 K0 ["MaterialWrapper"]
       21 GETTABLEKS                       R4 R1 K5 ["MaterialVariant"]
       23 JUMPIF                           R4 ; [+8]
       24 GETTABLEKS                       R4 R0 K6 ["MaterialBrowserReducer"]
       26 GETTABLEKS                       R4 R4 K1 ["MaterialOverride"]
       28 GETTABLEKS                       R5 R1 K8 ["Material"]
       30 GETTABLE                         R3 R4 R5
       31 JUMP                             ; [+1]
       32 LOADNIL                          R3
       33 SETTABLEKS                       R3 R2 K1 ["MaterialOverride"]
       35 GETTABLEKS                       R4 R1 K5 ["MaterialVariant"]
       37 JUMPIF                           R4 ; [+8]
       38 GETTABLEKS                       R4 R0 K6 ["MaterialBrowserReducer"]
       40 GETTABLEKS                       R4 R4 K2 ["MaterialOverrides"]
       42 GETTABLEKS                       R5 R1 K8 ["Material"]
       44 GETTABLE                         R3 R4 R5
       45 JUMP                             ; [+1]
       46 LOADNIL                          R3
       47 SETTABLEKS                       R3 R2 K2 ["MaterialOverrides"]
       49 GETTABLEKS                       R3 R0 K6 ["MaterialBrowserReducer"]
       51 GETTABLEKS                       R3 R3 K3 ["Use2022Materials"]
       53 SETTABLEKS                       R3 R2 K3 ["Use2022Materials"]
       55 RETURN                           R2 1

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["Framework"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K10 ["Types"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R3 K11 ["ContextServices"]
       39 GETTABLEKS                       R6 R5 K12 ["withContext"]
       41 GETTABLEKS                       R7 R3 K13 ["Style"]
       43 GETTABLEKS                       R7 R7 K14 ["Stylizer"]
       45 GETTABLEKS                       R8 R3 K15 ["Util"]
       47 GETTABLEKS                       R8 R8 K16 ["prioritize"]
       49 GETTABLEKS                       R9 R3 K17 ["UI"]
       51 GETTABLEKS                       R10 R9 K18 ["Pane"]
       53 GETTABLEKS                       R11 R9 K19 ["AssetRenderModel"]
       55 GETIMPORT                        R12 K4 [require]
       57 GETTABLEKS                       R13 R0 K9 ["Src"]
       59 GETTABLEKS                       R13 R13 K20 ["Flags"]
       61 CALL                             R12 1 1
       62 GETTABLEKS                       R13 R12 K21 ["getFFlagBetterMaterialManagerPreviews"]
       64 GETIMPORT                        R14 K4 [require]
       66 GETTABLEKS                       R15 R0 K9 ["Src"]
       68 GETTABLEKS                       R15 R15 K22 ["Reducers"]
       70 GETTABLEKS                       R15 R15 K23 ["MainReducer"]
       72 CALL                             R14 1 1
       73 GETTABLEKS                       R15 R0 K9 ["Src"]
       75 GETTABLEKS                       R15 R15 K24 ["Controllers"]
       77 GETIMPORT                        R16 K4 [require]
       79 GETTABLEKS                       R17 R15 K25 ["GeneralServiceController"]
       81 CALL                             R16 1 1
       82 GETIMPORT                        R17 K4 [require]
       84 GETTABLEKS                       R18 R15 K26 ["MaterialServiceController"]
       86 CALL                             R17 1 1
       87 GETTABLEKS                       R18 R0 K9 ["Src"]
       89 GETTABLEKS                       R18 R18 K27 ["Resources"]
       91 GETTABLEKS                       R18 R18 K28 ["Constants"]
       93 GETIMPORT                        R19 K4 [require]
       95 GETTABLEKS                       R20 R18 K29 ["getMaterialColor"]
       97 CALL                             R19 1 1
       98 GETIMPORT                        R20 K4 [require]
      100 GETTABLEKS                       R21 R18 K30 ["BASE_MATERIALS_WITH_METALNESS"]
      102 CALL                             R20 1 1
      103 GETTABLEKS                       R21 R1 K31 ["Component"]
      105 LOADK                            R23 K32 ["MaterialPreview"]
      106 NAMECALL                         R21 R21 K33 ["extend"]
      108 CALL                             R21 2 1
      109 DUPTABLE                         R22 K36 [{"InitialDistance", "Material"}]
      110 LOADK                            R23 K37 [6.3]
      111 SETTABLEKS                       R23 R22 K34 ["InitialDistance"]
      113 GETIMPORT                        R23 K40 [Enum.Material.Plastic]
      115 SETTABLEKS                       R23 R22 K35 ["Material"]
      117 SETTABLEKS                       R22 R21 K41 ["defaultProps"]
      119 DUPCLOSURE                       R22 K42 [PROTO_0]
      120 SETTABLEKS                       R22 R21 K43 ["shouldUpdate"]
      122 DUPCLOSURE                       R22 K44 [PROTO_1]
      123 CAPTURE                          VAL R1
      124 CAPTURE                          VAL R10
      125 CAPTURE                          VAL R13
      126 CAPTURE                          VAL R19
      127 CAPTURE                          VAL R20
      128 CAPTURE                          VAL R11
      129 CAPTURE                          VAL R8
      130 SETTABLEKS                       R22 R21 K45 ["render"]
      132 MOVE                             R22 R6
      133 DUPTABLE                         R23 K46 [{"MaterialServiceController", "GeneralServiceController", "Stylizer"}]
      134 SETTABLEKS                       R17 R23 K26 ["MaterialServiceController"]
      136 SETTABLEKS                       R16 R23 K25 ["GeneralServiceController"]
      138 SETTABLEKS                       R7 R23 K14 ["Stylizer"]
      140 CALL                             R22 1 1
      141 MOVE                             R23 R21
      142 CALL                             R22 1 1
      143 MOVE                             R21 R22
      144 GETTABLEKS                       R22 R2 K47 ["connect"]
      146 DUPCLOSURE                       R23 K48 [PROTO_2]
      147 DUPCLOSURE                       R24 K49 [PROTO_3]
      148 CALL                             R22 2 1
      149 MOVE                             R23 R21
      150 CALL                             R22 1 -1
      151 RETURN                           R22 -1
