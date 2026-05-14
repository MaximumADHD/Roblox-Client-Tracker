PROTO_0:
        0 GETIMPORT                        R1 K2 [string.format]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K3 ["HighDpiAssetManagerIconsWithTheme1"]
        5 GETTABLE                         R2 R3 R0
        6 GETIMPORT                        R3 K5 [settings]
        8 CALL                             R3 0 1
        9 GETTABLEKS                       R3 R3 K6 ["Studio"]
       11 GETTABLEKS                       R3 R3 K7 ["Theme"]
       13 GETTABLEKS                       R3 R3 K8 ["Name"]
       15 CALL                             R1 2 -1
       16 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 DUPTABLE                         R1 K20 [{"Places", "Images", "Meshes", "Packages", "Scripts", "Audio", "Video", "Models", "BlankFolder", "Import", "List", "Grid", "Menu", "Back", "Forward", "ArrowDown", "ArrowRight", "More", "Zoom", "Spawn"}]
        4 LOADK                            R2 K21 ["PlacesFolder"]
        5 SETTABLEKS                       R2 R1 K0 ["Places"]
        7 LOADK                            R2 K22 ["ImagesFolder"]
        8 SETTABLEKS                       R2 R1 K1 ["Images"]
       10 LOADK                            R2 K23 ["MeshesFolder"]
       11 SETTABLEKS                       R2 R1 K2 ["Meshes"]
       13 LOADK                            R2 K24 ["PackagesFolder"]
       14 SETTABLEKS                       R2 R1 K3 ["Packages"]
       16 LOADK                            R2 K25 ["StarterPlayerScripts"]
       17 SETTABLEKS                       R2 R1 K4 ["Scripts"]
       19 LOADK                            R2 K26 ["AudioFolder"]
       20 SETTABLEKS                       R2 R1 K5 ["Audio"]
       22 LOADK                            R2 K27 ["VideoFolder"]
       23 SETTABLEKS                       R2 R1 K6 ["Video"]
       25 LOADK                            R2 K28 ["ModelsFolder"]
       26 SETTABLEKS                       R2 R1 K7 ["Models"]
       28 LOADK                            R2 K8 ["BlankFolder"]
       29 SETTABLEKS                       R2 R1 K8 ["BlankFolder"]
       31 LOADK                            R2 K9 ["Import"]
       32 SETTABLEKS                       R2 R1 K9 ["Import"]
       34 LOADK                            R2 K10 ["List"]
       35 SETTABLEKS                       R2 R1 K10 ["List"]
       37 LOADK                            R2 K10 ["List"]
       38 SETTABLEKS                       R2 R1 K11 ["Grid"]
       40 LOADK                            R2 K12 ["Menu"]
       41 SETTABLEKS                       R2 R1 K12 ["Menu"]
       43 LOADK                            R2 K13 ["Back"]
       44 SETTABLEKS                       R2 R1 K13 ["Back"]
       46 LOADK                            R2 K29 ["Fwd"]
       47 SETTABLEKS                       R2 R1 K14 ["Forward"]
       49 LOADK                            R2 K15 ["ArrowDown"]
       50 SETTABLEKS                       R2 R1 K15 ["ArrowDown"]
       52 LOADK                            R2 K16 ["ArrowRight"]
       53 SETTABLEKS                       R2 R1 K16 ["ArrowRight"]
       55 LOADK                            R2 K17 ["More"]
       56 SETTABLEKS                       R2 R1 K17 ["More"]
       58 LOADK                            R2 K30 ["ZoomIn"]
       59 SETTABLEKS                       R2 R1 K18 ["Zoom"]
       61 LOADK                            R2 K19 ["Spawn"]
       62 SETTABLEKS                       R2 R1 K19 ["Spawn"]
       64 SETTABLEKS                       R1 R0 K31 ["IconEnums"]
       66 NEWTABLE                         R1 32 0
       68 GETTABLEKS                       R2 R0 K31 ["IconEnums"]
       70 GETTABLEKS                       R2 R2 K0 ["Places"]
       72 LOADK                            R4 K32 ["rbxasset://studio_svg_textures/Lua/AssetManager/%s/Large/"]
       73 GETTABLEKS                       R5 R0 K31 ["IconEnums"]
       75 GETTABLEKS                       R5 R5 K0 ["Places"]
       77 LOADK                            R6 K33 [".png"]
       78 CONCAT                           R3 R4 R6
       79 SETTABLE                         R3 R1 R2
       80 GETTABLEKS                       R2 R0 K31 ["IconEnums"]
       82 GETTABLEKS                       R2 R2 K1 ["Images"]
       84 LOADK                            R4 K32 ["rbxasset://studio_svg_textures/Lua/AssetManager/%s/Large/"]
       85 GETTABLEKS                       R5 R0 K31 ["IconEnums"]
       87 GETTABLEKS                       R5 R5 K1 ["Images"]
       89 LOADK                            R6 K33 [".png"]
       90 CONCAT                           R3 R4 R6
       91 SETTABLE                         R3 R1 R2
       92 GETTABLEKS                       R2 R0 K31 ["IconEnums"]
       94 GETTABLEKS                       R2 R2 K2 ["Meshes"]
       96 LOADK                            R4 K32 ["rbxasset://studio_svg_textures/Lua/AssetManager/%s/Large/"]
       97 GETTABLEKS                       R5 R0 K31 ["IconEnums"]
       99 GETTABLEKS                       R5 R5 K2 ["Meshes"]
      101 LOADK                            R6 K33 [".png"]
      102 CONCAT                           R3 R4 R6
      103 SETTABLE                         R3 R1 R2
      104 GETTABLEKS                       R2 R0 K31 ["IconEnums"]
      106 GETTABLEKS                       R2 R2 K3 ["Packages"]
      108 LOADK                            R4 K32 ["rbxasset://studio_svg_textures/Lua/AssetManager/%s/Large/"]
      109 GETTABLEKS                       R5 R0 K31 ["IconEnums"]
      111 GETTABLEKS                       R5 R5 K3 ["Packages"]
      113 LOADK                            R6 K33 [".png"]
      114 CONCAT                           R3 R4 R6
      115 SETTABLE                         R3 R1 R2
      116 GETTABLEKS                       R2 R0 K31 ["IconEnums"]
      118 GETTABLEKS                       R2 R2 K5 ["Audio"]
      120 LOADK                            R4 K32 ["rbxasset://studio_svg_textures/Lua/AssetManager/%s/Large/"]
      121 GETTABLEKS                       R5 R0 K31 ["IconEnums"]
      123 GETTABLEKS                       R5 R5 K5 ["Audio"]
      125 LOADK                            R6 K33 [".png"]
      126 CONCAT                           R3 R4 R6
      127 SETTABLE                         R3 R1 R2
      128 GETTABLEKS                       R2 R0 K31 ["IconEnums"]
      130 GETTABLEKS                       R2 R2 K6 ["Video"]
      132 LOADK                            R4 K32 ["rbxasset://studio_svg_textures/Lua/AssetManager/%s/Large/"]
      133 GETTABLEKS                       R5 R0 K31 ["IconEnums"]
      135 GETTABLEKS                       R5 R5 K8 ["BlankFolder"]
      137 LOADK                            R6 K33 [".png"]
      138 CONCAT                           R3 R4 R6
      139 SETTABLE                         R3 R1 R2
      140 GETTABLEKS                       R2 R0 K31 ["IconEnums"]
      142 GETTABLEKS                       R2 R2 K7 ["Models"]
      144 LOADK                            R4 K32 ["rbxasset://studio_svg_textures/Lua/AssetManager/%s/Large/"]
      145 GETTABLEKS                       R5 R0 K31 ["IconEnums"]
      147 GETTABLEKS                       R5 R5 K7 ["Models"]
      149 LOADK                            R6 K33 [".png"]
      150 CONCAT                           R3 R4 R6
      151 SETTABLE                         R3 R1 R2
      152 GETTABLEKS                       R2 R0 K31 ["IconEnums"]
      154 GETTABLEKS                       R2 R2 K8 ["BlankFolder"]
      156 LOADK                            R4 K34 ["rbxasset://studio_svg_textures/Lua/AssetManager/%s/Standard/"]
      157 GETTABLEKS                       R5 R0 K31 ["IconEnums"]
      159 GETTABLEKS                       R5 R5 K8 ["BlankFolder"]
      161 LOADK                            R6 K33 [".png"]
      162 CONCAT                           R3 R4 R6
      163 SETTABLE                         R3 R1 R2
      164 GETTABLEKS                       R2 R0 K31 ["IconEnums"]
      166 GETTABLEKS                       R2 R2 K9 ["Import"]
      168 LOADK                            R4 K34 ["rbxasset://studio_svg_textures/Lua/AssetManager/%s/Standard/"]
      169 GETTABLEKS                       R5 R0 K31 ["IconEnums"]
      171 GETTABLEKS                       R5 R5 K9 ["Import"]
      173 LOADK                            R6 K33 [".png"]
      174 CONCAT                           R3 R4 R6
      175 SETTABLE                         R3 R1 R2
      176 GETTABLEKS                       R2 R0 K31 ["IconEnums"]
      178 GETTABLEKS                       R2 R2 K10 ["List"]
      180 LOADK                            R4 K34 ["rbxasset://studio_svg_textures/Lua/AssetManager/%s/Standard/"]
      181 GETTABLEKS                       R5 R0 K31 ["IconEnums"]
      183 GETTABLEKS                       R5 R5 K10 ["List"]
      185 LOADK                            R6 K33 [".png"]
      186 CONCAT                           R3 R4 R6
      187 SETTABLE                         R3 R1 R2
      188 GETTABLEKS                       R2 R0 K31 ["IconEnums"]
      190 GETTABLEKS                       R2 R2 K11 ["Grid"]
      192 LOADK                            R4 K34 ["rbxasset://studio_svg_textures/Lua/AssetManager/%s/Standard/"]
      193 GETTABLEKS                       R5 R0 K31 ["IconEnums"]
      195 GETTABLEKS                       R5 R5 K11 ["Grid"]
      197 LOADK                            R6 K33 [".png"]
      198 CONCAT                           R3 R4 R6
      199 SETTABLE                         R3 R1 R2
      200 GETTABLEKS                       R2 R0 K31 ["IconEnums"]
      202 GETTABLEKS                       R2 R2 K12 ["Menu"]
      204 LOADK                            R4 K34 ["rbxasset://studio_svg_textures/Lua/AssetManager/%s/Standard/"]
      205 GETTABLEKS                       R5 R0 K31 ["IconEnums"]
      207 GETTABLEKS                       R5 R5 K12 ["Menu"]
      209 LOADK                            R6 K33 [".png"]
      210 CONCAT                           R3 R4 R6
      211 SETTABLE                         R3 R1 R2
      212 GETTABLEKS                       R2 R0 K31 ["IconEnums"]
      214 GETTABLEKS                       R2 R2 K13 ["Back"]
      216 LOADK                            R4 K35 ["rbxasset://studio_svg_textures/Shared/Navigation/%s/Standard/"]
      217 GETTABLEKS                       R5 R0 K31 ["IconEnums"]
      219 GETTABLEKS                       R5 R5 K13 ["Back"]
      221 LOADK                            R6 K33 [".png"]
      222 CONCAT                           R3 R4 R6
      223 SETTABLE                         R3 R1 R2
      224 GETTABLEKS                       R2 R0 K31 ["IconEnums"]
      226 GETTABLEKS                       R2 R2 K14 ["Forward"]
      228 LOADK                            R4 K35 ["rbxasset://studio_svg_textures/Shared/Navigation/%s/Standard/"]
      229 GETTABLEKS                       R5 R0 K31 ["IconEnums"]
      231 GETTABLEKS                       R5 R5 K14 ["Forward"]
      233 LOADK                            R6 K33 [".png"]
      234 CONCAT                           R3 R4 R6
      235 SETTABLE                         R3 R1 R2
      236 GETTABLEKS                       R2 R0 K31 ["IconEnums"]
      238 GETTABLEKS                       R2 R2 K15 ["ArrowDown"]
      240 LOADK                            R4 K35 ["rbxasset://studio_svg_textures/Shared/Navigation/%s/Standard/"]
      241 GETTABLEKS                       R5 R0 K31 ["IconEnums"]
      243 GETTABLEKS                       R5 R5 K15 ["ArrowDown"]
      245 LOADK                            R6 K33 [".png"]
      246 CONCAT                           R3 R4 R6
      247 SETTABLE                         R3 R1 R2
      248 GETTABLEKS                       R2 R0 K31 ["IconEnums"]
      250 GETTABLEKS                       R2 R2 K16 ["ArrowRight"]
      252 LOADK                            R4 K35 ["rbxasset://studio_svg_textures/Shared/Navigation/%s/Standard/"]
      253 GETTABLEKS                       R5 R0 K31 ["IconEnums"]
      255 GETTABLEKS                       R5 R5 K16 ["ArrowRight"]
      257 LOADK                            R6 K33 [".png"]
      258 CONCAT                           R3 R4 R6
      259 SETTABLE                         R3 R1 R2
      260 GETTABLEKS                       R2 R0 K31 ["IconEnums"]
      262 GETTABLEKS                       R2 R2 K17 ["More"]
      264 LOADK                            R4 K35 ["rbxasset://studio_svg_textures/Shared/Navigation/%s/Standard/"]
      265 GETTABLEKS                       R5 R0 K31 ["IconEnums"]
      267 GETTABLEKS                       R5 R5 K17 ["More"]
      269 LOADK                            R6 K33 [".png"]
      270 CONCAT                           R3 R4 R6
      271 SETTABLE                         R3 R1 R2
      272 GETTABLEKS                       R2 R0 K31 ["IconEnums"]
      274 GETTABLEKS                       R2 R2 K18 ["Zoom"]
      276 LOADK                            R4 K35 ["rbxasset://studio_svg_textures/Shared/Navigation/%s/Standard/"]
      277 GETTABLEKS                       R5 R0 K31 ["IconEnums"]
      279 GETTABLEKS                       R5 R5 K18 ["Zoom"]
      281 LOADK                            R6 K33 [".png"]
      282 CONCAT                           R3 R4 R6
      283 SETTABLE                         R3 R1 R2
      284 GETTABLEKS                       R2 R0 K31 ["IconEnums"]
      286 GETTABLEKS                       R2 R2 K4 ["Scripts"]
      288 LOADK                            R4 K36 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/%s/Standard/"]
      289 GETTABLEKS                       R5 R0 K31 ["IconEnums"]
      291 GETTABLEKS                       R5 R5 K4 ["Scripts"]
      293 LOADK                            R6 K33 [".png"]
      294 CONCAT                           R3 R4 R6
      295 SETTABLE                         R3 R1 R2
      296 GETTABLEKS                       R2 R0 K31 ["IconEnums"]
      298 GETTABLEKS                       R2 R2 K19 ["Spawn"]
      300 LOADK                            R4 K36 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/%s/Standard/"]
      301 GETTABLEKS                       R5 R0 K31 ["IconEnums"]
      303 GETTABLEKS                       R5 R5 K19 ["Spawn"]
      305 LOADK                            R6 K33 [".png"]
      306 CONCAT                           R3 R4 R6
      307 SETTABLE                         R3 R1 R2
      308 SETTABLEKS                       R1 R0 K37 ["HighDpiAssetManagerIconsWithTheme1"]
      310 DUPCLOSURE                       R1 K38 [PROTO_0]
      311 CAPTURE                          VAL R0
      312 SETTABLEKS                       R1 R0 K39 ["getIconForCurrentTheme"]
      314 RETURN                           R0 1
