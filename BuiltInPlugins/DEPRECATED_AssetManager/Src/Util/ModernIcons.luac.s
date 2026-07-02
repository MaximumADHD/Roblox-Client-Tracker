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
        3 DUPTABLE                         R1 K30 [{[1] = "PlacesFolder", ["Images"] = "ImagesFolder", ["Meshes"] = "MeshesFolder", ["Packages"] = "PackagesFolder", ["Scripts"] = "StarterPlayerScripts", ["Audio"] = "AudioFolder", ["Video"] = "VideoFolder", ["Models"] = "ModelsFolder", ["BlankFolder"] = "BlankFolder", ["Import"] = "Import", ["List"] = "List", ["Grid"] = "List", ["Menu"] = "Menu", ["Back"] = "Back", ["Forward"] = "Fwd", ["ArrowDown"] = "ArrowDown", ["ArrowRight"] = "ArrowRight", ["More"] = "More", ["Zoom"] = "ZoomIn", ["Spawn"] = "Spawn"}]
        4 SETTABLEKS                       R1 R0 K31 ["IconEnums"]
        6 NEWTABLE                         R1 32 0
        8 GETTABLEKS                       R2 R0 K31 ["IconEnums"]
       10 GETTABLEKS                       R2 R2 K0 ["Places"]
       12 LOADK                            R4 K32 ["rbxasset://studio_svg_textures/Lua/AssetManager/%s/Large/"]
       13 GETTABLEKS                       R5 R0 K31 ["IconEnums"]
       15 GETTABLEKS                       R5 R5 K0 ["Places"]
       17 LOADK                            R6 K33 [".png"]
       18 CONCAT                           R3 R4 R6
       19 SETTABLE                         R3 R1 R2
       20 GETTABLEKS                       R2 R0 K31 ["IconEnums"]
       22 GETTABLEKS                       R2 R2 K2 ["Images"]
       24 LOADK                            R4 K32 ["rbxasset://studio_svg_textures/Lua/AssetManager/%s/Large/"]
       25 GETTABLEKS                       R5 R0 K31 ["IconEnums"]
       27 GETTABLEKS                       R5 R5 K2 ["Images"]
       29 LOADK                            R6 K33 [".png"]
       30 CONCAT                           R3 R4 R6
       31 SETTABLE                         R3 R1 R2
       32 GETTABLEKS                       R2 R0 K31 ["IconEnums"]
       34 GETTABLEKS                       R2 R2 K4 ["Meshes"]
       36 LOADK                            R4 K32 ["rbxasset://studio_svg_textures/Lua/AssetManager/%s/Large/"]
       37 GETTABLEKS                       R5 R0 K31 ["IconEnums"]
       39 GETTABLEKS                       R5 R5 K4 ["Meshes"]
       41 LOADK                            R6 K33 [".png"]
       42 CONCAT                           R3 R4 R6
       43 SETTABLE                         R3 R1 R2
       44 GETTABLEKS                       R2 R0 K31 ["IconEnums"]
       46 GETTABLEKS                       R2 R2 K6 ["Packages"]
       48 LOADK                            R4 K32 ["rbxasset://studio_svg_textures/Lua/AssetManager/%s/Large/"]
       49 GETTABLEKS                       R5 R0 K31 ["IconEnums"]
       51 GETTABLEKS                       R5 R5 K6 ["Packages"]
       53 LOADK                            R6 K33 [".png"]
       54 CONCAT                           R3 R4 R6
       55 SETTABLE                         R3 R1 R2
       56 GETTABLEKS                       R2 R0 K31 ["IconEnums"]
       58 GETTABLEKS                       R2 R2 K10 ["Audio"]
       60 LOADK                            R4 K32 ["rbxasset://studio_svg_textures/Lua/AssetManager/%s/Large/"]
       61 GETTABLEKS                       R5 R0 K31 ["IconEnums"]
       63 GETTABLEKS                       R5 R5 K10 ["Audio"]
       65 LOADK                            R6 K33 [".png"]
       66 CONCAT                           R3 R4 R6
       67 SETTABLE                         R3 R1 R2
       68 GETTABLEKS                       R2 R0 K31 ["IconEnums"]
       70 GETTABLEKS                       R2 R2 K12 ["Video"]
       72 LOADK                            R4 K32 ["rbxasset://studio_svg_textures/Lua/AssetManager/%s/Large/"]
       73 GETTABLEKS                       R5 R0 K31 ["IconEnums"]
       75 GETTABLEKS                       R5 R5 K16 ["BlankFolder"]
       77 LOADK                            R6 K33 [".png"]
       78 CONCAT                           R3 R4 R6
       79 SETTABLE                         R3 R1 R2
       80 GETTABLEKS                       R2 R0 K31 ["IconEnums"]
       82 GETTABLEKS                       R2 R2 K14 ["Models"]
       84 LOADK                            R4 K32 ["rbxasset://studio_svg_textures/Lua/AssetManager/%s/Large/"]
       85 GETTABLEKS                       R5 R0 K31 ["IconEnums"]
       87 GETTABLEKS                       R5 R5 K14 ["Models"]
       89 LOADK                            R6 K33 [".png"]
       90 CONCAT                           R3 R4 R6
       91 SETTABLE                         R3 R1 R2
       92 GETTABLEKS                       R2 R0 K31 ["IconEnums"]
       94 GETTABLEKS                       R2 R2 K16 ["BlankFolder"]
       96 LOADK                            R4 K34 ["rbxasset://studio_svg_textures/Lua/AssetManager/%s/Standard/"]
       97 GETTABLEKS                       R5 R0 K31 ["IconEnums"]
       99 GETTABLEKS                       R5 R5 K16 ["BlankFolder"]
      101 LOADK                            R6 K33 [".png"]
      102 CONCAT                           R3 R4 R6
      103 SETTABLE                         R3 R1 R2
      104 GETTABLEKS                       R2 R0 K31 ["IconEnums"]
      106 GETTABLEKS                       R2 R2 K17 ["Import"]
      108 LOADK                            R4 K34 ["rbxasset://studio_svg_textures/Lua/AssetManager/%s/Standard/"]
      109 GETTABLEKS                       R5 R0 K31 ["IconEnums"]
      111 GETTABLEKS                       R5 R5 K17 ["Import"]
      113 LOADK                            R6 K33 [".png"]
      114 CONCAT                           R3 R4 R6
      115 SETTABLE                         R3 R1 R2
      116 GETTABLEKS                       R2 R0 K31 ["IconEnums"]
      118 GETTABLEKS                       R2 R2 K18 ["List"]
      120 LOADK                            R4 K34 ["rbxasset://studio_svg_textures/Lua/AssetManager/%s/Standard/"]
      121 GETTABLEKS                       R5 R0 K31 ["IconEnums"]
      123 GETTABLEKS                       R5 R5 K18 ["List"]
      125 LOADK                            R6 K33 [".png"]
      126 CONCAT                           R3 R4 R6
      127 SETTABLE                         R3 R1 R2
      128 GETTABLEKS                       R2 R0 K31 ["IconEnums"]
      130 GETTABLEKS                       R2 R2 K19 ["Grid"]
      132 LOADK                            R4 K34 ["rbxasset://studio_svg_textures/Lua/AssetManager/%s/Standard/"]
      133 GETTABLEKS                       R5 R0 K31 ["IconEnums"]
      135 GETTABLEKS                       R5 R5 K19 ["Grid"]
      137 LOADK                            R6 K33 [".png"]
      138 CONCAT                           R3 R4 R6
      139 SETTABLE                         R3 R1 R2
      140 GETTABLEKS                       R2 R0 K31 ["IconEnums"]
      142 GETTABLEKS                       R2 R2 K20 ["Menu"]
      144 LOADK                            R4 K34 ["rbxasset://studio_svg_textures/Lua/AssetManager/%s/Standard/"]
      145 GETTABLEKS                       R5 R0 K31 ["IconEnums"]
      147 GETTABLEKS                       R5 R5 K20 ["Menu"]
      149 LOADK                            R6 K33 [".png"]
      150 CONCAT                           R3 R4 R6
      151 SETTABLE                         R3 R1 R2
      152 GETTABLEKS                       R2 R0 K31 ["IconEnums"]
      154 GETTABLEKS                       R2 R2 K21 ["Back"]
      156 LOADK                            R4 K35 ["rbxasset://studio_svg_textures/Shared/Navigation/%s/Standard/"]
      157 GETTABLEKS                       R5 R0 K31 ["IconEnums"]
      159 GETTABLEKS                       R5 R5 K21 ["Back"]
      161 LOADK                            R6 K33 [".png"]
      162 CONCAT                           R3 R4 R6
      163 SETTABLE                         R3 R1 R2
      164 GETTABLEKS                       R2 R0 K31 ["IconEnums"]
      166 GETTABLEKS                       R2 R2 K22 ["Forward"]
      168 LOADK                            R4 K35 ["rbxasset://studio_svg_textures/Shared/Navigation/%s/Standard/"]
      169 GETTABLEKS                       R5 R0 K31 ["IconEnums"]
      171 GETTABLEKS                       R5 R5 K22 ["Forward"]
      173 LOADK                            R6 K33 [".png"]
      174 CONCAT                           R3 R4 R6
      175 SETTABLE                         R3 R1 R2
      176 GETTABLEKS                       R2 R0 K31 ["IconEnums"]
      178 GETTABLEKS                       R2 R2 K24 ["ArrowDown"]
      180 LOADK                            R4 K35 ["rbxasset://studio_svg_textures/Shared/Navigation/%s/Standard/"]
      181 GETTABLEKS                       R5 R0 K31 ["IconEnums"]
      183 GETTABLEKS                       R5 R5 K24 ["ArrowDown"]
      185 LOADK                            R6 K33 [".png"]
      186 CONCAT                           R3 R4 R6
      187 SETTABLE                         R3 R1 R2
      188 GETTABLEKS                       R2 R0 K31 ["IconEnums"]
      190 GETTABLEKS                       R2 R2 K25 ["ArrowRight"]
      192 LOADK                            R4 K35 ["rbxasset://studio_svg_textures/Shared/Navigation/%s/Standard/"]
      193 GETTABLEKS                       R5 R0 K31 ["IconEnums"]
      195 GETTABLEKS                       R5 R5 K25 ["ArrowRight"]
      197 LOADK                            R6 K33 [".png"]
      198 CONCAT                           R3 R4 R6
      199 SETTABLE                         R3 R1 R2
      200 GETTABLEKS                       R2 R0 K31 ["IconEnums"]
      202 GETTABLEKS                       R2 R2 K26 ["More"]
      204 LOADK                            R4 K35 ["rbxasset://studio_svg_textures/Shared/Navigation/%s/Standard/"]
      205 GETTABLEKS                       R5 R0 K31 ["IconEnums"]
      207 GETTABLEKS                       R5 R5 K26 ["More"]
      209 LOADK                            R6 K33 [".png"]
      210 CONCAT                           R3 R4 R6
      211 SETTABLE                         R3 R1 R2
      212 GETTABLEKS                       R2 R0 K31 ["IconEnums"]
      214 GETTABLEKS                       R2 R2 K27 ["Zoom"]
      216 LOADK                            R4 K35 ["rbxasset://studio_svg_textures/Shared/Navigation/%s/Standard/"]
      217 GETTABLEKS                       R5 R0 K31 ["IconEnums"]
      219 GETTABLEKS                       R5 R5 K27 ["Zoom"]
      221 LOADK                            R6 K33 [".png"]
      222 CONCAT                           R3 R4 R6
      223 SETTABLE                         R3 R1 R2
      224 GETTABLEKS                       R2 R0 K31 ["IconEnums"]
      226 GETTABLEKS                       R2 R2 K8 ["Scripts"]
      228 LOADK                            R4 K36 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/%s/Standard/"]
      229 GETTABLEKS                       R5 R0 K31 ["IconEnums"]
      231 GETTABLEKS                       R5 R5 K8 ["Scripts"]
      233 LOADK                            R6 K33 [".png"]
      234 CONCAT                           R3 R4 R6
      235 SETTABLE                         R3 R1 R2
      236 GETTABLEKS                       R2 R0 K31 ["IconEnums"]
      238 GETTABLEKS                       R2 R2 K29 ["Spawn"]
      240 LOADK                            R4 K36 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/%s/Standard/"]
      241 GETTABLEKS                       R5 R0 K31 ["IconEnums"]
      243 GETTABLEKS                       R5 R5 K29 ["Spawn"]
      245 LOADK                            R6 K33 [".png"]
      246 CONCAT                           R3 R4 R6
      247 SETTABLE                         R3 R1 R2
      248 SETTABLEKS                       R1 R0 K37 ["HighDpiAssetManagerIconsWithTheme1"]
      250 DUPCLOSURE                       R1 K38 [PROTO_0]
      251 CAPTURE                          VAL R0
      252 SETTABLEKS                       R1 R0 K39 ["getIconForCurrentTheme"]
      254 RETURN                           R0 1
