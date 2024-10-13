PROTO_0:
  GETIMPORT R1 K2 [string.format]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["HighDpiAssetManagerIconsWithTheme1"]
  GETTABLE R2 R3 R0
  GETIMPORT R6 K5 [settings]
  CALL R6 0 1
  GETTABLEKS R5 R6 K6 ["Studio"]
  GETTABLEKS R4 R5 K7 ["Theme"]
  GETTABLEKS R3 R4 K8 ["Name"]
  CALL R1 2 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 4 0
  DUPTABLE R1 K20 [{"Places", "Images", "Meshes", "Packages", "Scripts", "Audio", "Video", "Models", "BlankFolder", "Import", "List", "Grid", "Menu", "Back", "Forward", "ArrowDown", "ArrowRight", "More", "Zoom", "Spawn"}]
  LOADK R2 K21 ["PlacesFolder"]
  SETTABLEKS R2 R1 K0 ["Places"]
  LOADK R2 K22 ["ImagesFolder"]
  SETTABLEKS R2 R1 K1 ["Images"]
  LOADK R2 K23 ["MeshesFolder"]
  SETTABLEKS R2 R1 K2 ["Meshes"]
  LOADK R2 K24 ["PackagesFolder"]
  SETTABLEKS R2 R1 K3 ["Packages"]
  LOADK R2 K25 ["StarterPlayerScripts"]
  SETTABLEKS R2 R1 K4 ["Scripts"]
  LOADK R2 K26 ["AudioFolder"]
  SETTABLEKS R2 R1 K5 ["Audio"]
  LOADK R2 K27 ["VideoFolder"]
  SETTABLEKS R2 R1 K6 ["Video"]
  LOADK R2 K28 ["ModelsFolder"]
  SETTABLEKS R2 R1 K7 ["Models"]
  LOADK R2 K8 ["BlankFolder"]
  SETTABLEKS R2 R1 K8 ["BlankFolder"]
  LOADK R2 K9 ["Import"]
  SETTABLEKS R2 R1 K9 ["Import"]
  LOADK R2 K10 ["List"]
  SETTABLEKS R2 R1 K10 ["List"]
  LOADK R2 K10 ["List"]
  SETTABLEKS R2 R1 K11 ["Grid"]
  LOADK R2 K12 ["Menu"]
  SETTABLEKS R2 R1 K12 ["Menu"]
  LOADK R2 K13 ["Back"]
  SETTABLEKS R2 R1 K13 ["Back"]
  LOADK R2 K29 ["Fwd"]
  SETTABLEKS R2 R1 K14 ["Forward"]
  LOADK R2 K15 ["ArrowDown"]
  SETTABLEKS R2 R1 K15 ["ArrowDown"]
  LOADK R2 K16 ["ArrowRight"]
  SETTABLEKS R2 R1 K16 ["ArrowRight"]
  LOADK R2 K17 ["More"]
  SETTABLEKS R2 R1 K17 ["More"]
  LOADK R2 K30 ["ZoomIn"]
  SETTABLEKS R2 R1 K18 ["Zoom"]
  LOADK R2 K19 ["Spawn"]
  SETTABLEKS R2 R1 K19 ["Spawn"]
  SETTABLEKS R1 R0 K31 ["IconEnums"]
  NEWTABLE R1 32 0
  GETTABLEKS R3 R0 K31 ["IconEnums"]
  GETTABLEKS R2 R3 K0 ["Places"]
  LOADK R4 K32 ["rbxasset://studio_svg_textures/Lua/AssetManager/%s/Large/"]
  GETTABLEKS R7 R0 K31 ["IconEnums"]
  GETTABLEKS R5 R7 K0 ["Places"]
  LOADK R6 K33 [".png"]
  CONCAT R3 R4 R6
  SETTABLE R3 R1 R2
  GETTABLEKS R3 R0 K31 ["IconEnums"]
  GETTABLEKS R2 R3 K1 ["Images"]
  LOADK R4 K32 ["rbxasset://studio_svg_textures/Lua/AssetManager/%s/Large/"]
  GETTABLEKS R7 R0 K31 ["IconEnums"]
  GETTABLEKS R5 R7 K1 ["Images"]
  LOADK R6 K33 [".png"]
  CONCAT R3 R4 R6
  SETTABLE R3 R1 R2
  GETTABLEKS R3 R0 K31 ["IconEnums"]
  GETTABLEKS R2 R3 K2 ["Meshes"]
  LOADK R4 K32 ["rbxasset://studio_svg_textures/Lua/AssetManager/%s/Large/"]
  GETTABLEKS R7 R0 K31 ["IconEnums"]
  GETTABLEKS R5 R7 K2 ["Meshes"]
  LOADK R6 K33 [".png"]
  CONCAT R3 R4 R6
  SETTABLE R3 R1 R2
  GETTABLEKS R3 R0 K31 ["IconEnums"]
  GETTABLEKS R2 R3 K3 ["Packages"]
  LOADK R4 K32 ["rbxasset://studio_svg_textures/Lua/AssetManager/%s/Large/"]
  GETTABLEKS R7 R0 K31 ["IconEnums"]
  GETTABLEKS R5 R7 K3 ["Packages"]
  LOADK R6 K33 [".png"]
  CONCAT R3 R4 R6
  SETTABLE R3 R1 R2
  GETTABLEKS R3 R0 K31 ["IconEnums"]
  GETTABLEKS R2 R3 K5 ["Audio"]
  LOADK R4 K32 ["rbxasset://studio_svg_textures/Lua/AssetManager/%s/Large/"]
  GETTABLEKS R7 R0 K31 ["IconEnums"]
  GETTABLEKS R5 R7 K5 ["Audio"]
  LOADK R6 K33 [".png"]
  CONCAT R3 R4 R6
  SETTABLE R3 R1 R2
  GETTABLEKS R3 R0 K31 ["IconEnums"]
  GETTABLEKS R2 R3 K6 ["Video"]
  LOADK R4 K32 ["rbxasset://studio_svg_textures/Lua/AssetManager/%s/Large/"]
  GETTABLEKS R7 R0 K31 ["IconEnums"]
  GETTABLEKS R5 R7 K8 ["BlankFolder"]
  LOADK R6 K33 [".png"]
  CONCAT R3 R4 R6
  SETTABLE R3 R1 R2
  GETTABLEKS R3 R0 K31 ["IconEnums"]
  GETTABLEKS R2 R3 K7 ["Models"]
  LOADK R4 K32 ["rbxasset://studio_svg_textures/Lua/AssetManager/%s/Large/"]
  GETTABLEKS R7 R0 K31 ["IconEnums"]
  GETTABLEKS R5 R7 K7 ["Models"]
  LOADK R6 K33 [".png"]
  CONCAT R3 R4 R6
  SETTABLE R3 R1 R2
  GETTABLEKS R3 R0 K31 ["IconEnums"]
  GETTABLEKS R2 R3 K8 ["BlankFolder"]
  LOADK R4 K34 ["rbxasset://studio_svg_textures/Lua/AssetManager/%s/Standard/"]
  GETTABLEKS R7 R0 K31 ["IconEnums"]
  GETTABLEKS R5 R7 K8 ["BlankFolder"]
  LOADK R6 K33 [".png"]
  CONCAT R3 R4 R6
  SETTABLE R3 R1 R2
  GETTABLEKS R3 R0 K31 ["IconEnums"]
  GETTABLEKS R2 R3 K9 ["Import"]
  LOADK R4 K34 ["rbxasset://studio_svg_textures/Lua/AssetManager/%s/Standard/"]
  GETTABLEKS R7 R0 K31 ["IconEnums"]
  GETTABLEKS R5 R7 K9 ["Import"]
  LOADK R6 K33 [".png"]
  CONCAT R3 R4 R6
  SETTABLE R3 R1 R2
  GETTABLEKS R3 R0 K31 ["IconEnums"]
  GETTABLEKS R2 R3 K10 ["List"]
  LOADK R4 K34 ["rbxasset://studio_svg_textures/Lua/AssetManager/%s/Standard/"]
  GETTABLEKS R7 R0 K31 ["IconEnums"]
  GETTABLEKS R5 R7 K10 ["List"]
  LOADK R6 K33 [".png"]
  CONCAT R3 R4 R6
  SETTABLE R3 R1 R2
  GETTABLEKS R3 R0 K31 ["IconEnums"]
  GETTABLEKS R2 R3 K11 ["Grid"]
  LOADK R4 K34 ["rbxasset://studio_svg_textures/Lua/AssetManager/%s/Standard/"]
  GETTABLEKS R7 R0 K31 ["IconEnums"]
  GETTABLEKS R5 R7 K11 ["Grid"]
  LOADK R6 K33 [".png"]
  CONCAT R3 R4 R6
  SETTABLE R3 R1 R2
  GETTABLEKS R3 R0 K31 ["IconEnums"]
  GETTABLEKS R2 R3 K12 ["Menu"]
  LOADK R4 K34 ["rbxasset://studio_svg_textures/Lua/AssetManager/%s/Standard/"]
  GETTABLEKS R7 R0 K31 ["IconEnums"]
  GETTABLEKS R5 R7 K12 ["Menu"]
  LOADK R6 K33 [".png"]
  CONCAT R3 R4 R6
  SETTABLE R3 R1 R2
  GETTABLEKS R3 R0 K31 ["IconEnums"]
  GETTABLEKS R2 R3 K13 ["Back"]
  LOADK R4 K35 ["rbxasset://studio_svg_textures/Shared/Navigation/%s/Standard/"]
  GETTABLEKS R7 R0 K31 ["IconEnums"]
  GETTABLEKS R5 R7 K13 ["Back"]
  LOADK R6 K33 [".png"]
  CONCAT R3 R4 R6
  SETTABLE R3 R1 R2
  GETTABLEKS R3 R0 K31 ["IconEnums"]
  GETTABLEKS R2 R3 K14 ["Forward"]
  LOADK R4 K35 ["rbxasset://studio_svg_textures/Shared/Navigation/%s/Standard/"]
  GETTABLEKS R7 R0 K31 ["IconEnums"]
  GETTABLEKS R5 R7 K14 ["Forward"]
  LOADK R6 K33 [".png"]
  CONCAT R3 R4 R6
  SETTABLE R3 R1 R2
  GETTABLEKS R3 R0 K31 ["IconEnums"]
  GETTABLEKS R2 R3 K15 ["ArrowDown"]
  LOADK R4 K35 ["rbxasset://studio_svg_textures/Shared/Navigation/%s/Standard/"]
  GETTABLEKS R7 R0 K31 ["IconEnums"]
  GETTABLEKS R5 R7 K15 ["ArrowDown"]
  LOADK R6 K33 [".png"]
  CONCAT R3 R4 R6
  SETTABLE R3 R1 R2
  GETTABLEKS R3 R0 K31 ["IconEnums"]
  GETTABLEKS R2 R3 K16 ["ArrowRight"]
  LOADK R4 K35 ["rbxasset://studio_svg_textures/Shared/Navigation/%s/Standard/"]
  GETTABLEKS R7 R0 K31 ["IconEnums"]
  GETTABLEKS R5 R7 K16 ["ArrowRight"]
  LOADK R6 K33 [".png"]
  CONCAT R3 R4 R6
  SETTABLE R3 R1 R2
  GETTABLEKS R3 R0 K31 ["IconEnums"]
  GETTABLEKS R2 R3 K17 ["More"]
  LOADK R4 K35 ["rbxasset://studio_svg_textures/Shared/Navigation/%s/Standard/"]
  GETTABLEKS R7 R0 K31 ["IconEnums"]
  GETTABLEKS R5 R7 K17 ["More"]
  LOADK R6 K33 [".png"]
  CONCAT R3 R4 R6
  SETTABLE R3 R1 R2
  GETTABLEKS R3 R0 K31 ["IconEnums"]
  GETTABLEKS R2 R3 K18 ["Zoom"]
  LOADK R4 K35 ["rbxasset://studio_svg_textures/Shared/Navigation/%s/Standard/"]
  GETTABLEKS R7 R0 K31 ["IconEnums"]
  GETTABLEKS R5 R7 K18 ["Zoom"]
  LOADK R6 K33 [".png"]
  CONCAT R3 R4 R6
  SETTABLE R3 R1 R2
  GETTABLEKS R3 R0 K31 ["IconEnums"]
  GETTABLEKS R2 R3 K4 ["Scripts"]
  LOADK R4 K36 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/%s/Standard/"]
  GETTABLEKS R7 R0 K31 ["IconEnums"]
  GETTABLEKS R5 R7 K4 ["Scripts"]
  LOADK R6 K33 [".png"]
  CONCAT R3 R4 R6
  SETTABLE R3 R1 R2
  GETTABLEKS R3 R0 K31 ["IconEnums"]
  GETTABLEKS R2 R3 K19 ["Spawn"]
  LOADK R4 K36 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/%s/Standard/"]
  GETTABLEKS R7 R0 K31 ["IconEnums"]
  GETTABLEKS R5 R7 K19 ["Spawn"]
  LOADK R6 K33 [".png"]
  CONCAT R3 R4 R6
  SETTABLE R3 R1 R2
  SETTABLEKS R1 R0 K37 ["HighDpiAssetManagerIconsWithTheme1"]
  DUPCLOSURE R1 K38 [PROTO_0]
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K39 ["getIconForCurrentTheme"]
  RETURN R0 1
