PROTO_0:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R2 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["new"]
  CALL R2 1 1
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K2 ["useState"]
  LOADN R4 10
  CALL R3 1 2
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K2 ["useState"]
  LOADK R6 K3 [0.3]
  CALL R5 1 2
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K4 ["provide"]
  NEWTABLE R8 0 1
  GETUPVAL R10 5
  GETTABLEKS R9 R10 K1 ["new"]
  DUPTABLE R10 K6 [{"BrushTool"}]
  GETTABLEKS R11 R2 K7 ["current"]
  SETTABLEKS R11 R10 K5 ["BrushTool"]
  CALL R9 1 -1
  SETLIST R8 R9 -1 [1]
  NEWTABLE R9 2 0
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K8 ["createElement"]
  GETUPVAL R11 6
  DUPTABLE R12 K12 [{"Mannequin", "Falloff", "Radius"}]
  GETTABLEKS R13 R0 K13 ["mannequin"]
  SETTABLEKS R13 R12 K9 ["Mannequin"]
  DIVK R13 R3 K14 [100]
  SETTABLEKS R13 R12 K10 ["Falloff"]
  SETTABLEKS R5 R12 K11 ["Radius"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K15 ["CageEditingTool"]
  GETUPVAL R12 7
  GETTABLEKS R11 R12 K16 ["EDITING_TOOLS_GUI_NAMES"]
  GETTABLEKS R10 R11 K17 ["CageEditingToolToolbar"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K8 ["createElement"]
  GETUPVAL R13 8
  GETTABLEKS R12 R13 K18 ["Toolbar"]
  DUPTABLE R13 K20 [{"HorizontalItems"}]
  NEWTABLE R14 0 4
  DUPTABLE R15 K28 [{"Type", "Value", "OnChange", "Icon", "Tooltip", "Min", "Max"}]
  LOADK R16 K29 ["Slider"]
  SETTABLEKS R16 R15 K21 ["Type"]
  SETTABLEKS R5 R15 K22 ["Value"]
  SETTABLEKS R6 R15 K23 ["OnChange"]
  LOADK R16 K30 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/radius@2x.png"]
  SETTABLEKS R16 R15 K24 ["Icon"]
  LOADK R18 K15 ["CageEditingTool"]
  LOADK R19 K11 ["Radius"]
  NAMECALL R16 R1 K31 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K25 ["Tooltip"]
  LOADK R16 K32 [0.1]
  SETTABLEKS R16 R15 K26 ["Min"]
  LOADK R16 K33 [0.5]
  SETTABLEKS R16 R15 K27 ["Max"]
  DUPTABLE R16 K36 [{"Type", "Value", "OnChange", "Icon", "Tooltip", "Min", "Max", "InputPrecision", "DisplayFormat"}]
  LOADK R17 K29 ["Slider"]
  SETTABLEKS R17 R16 K21 ["Type"]
  SETTABLEKS R3 R16 K22 ["Value"]
  SETTABLEKS R4 R16 K23 ["OnChange"]
  LOADK R17 K30 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/radius@2x.png"]
  SETTABLEKS R17 R16 K24 ["Icon"]
  LOADK R19 K15 ["CageEditingTool"]
  LOADK R20 K10 ["Falloff"]
  NAMECALL R17 R1 K31 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K25 ["Tooltip"]
  LOADN R17 0
  SETTABLEKS R17 R16 K26 ["Min"]
  LOADN R17 100
  SETTABLEKS R17 R16 K27 ["Max"]
  LOADN R17 0
  SETTABLEKS R17 R16 K34 ["InputPrecision"]
  LOADK R17 K37 ["%d%%"]
  SETTABLEKS R17 R16 K35 ["DisplayFormat"]
  DUPTABLE R17 K38 [{"Type"}]
  LOADK R18 K39 ["Separator"]
  SETTABLEKS R18 R17 K21 ["Type"]
  GETTABLEKS R19 R0 K40 ["additionalToolbarItems"]
  FASTCALL1 TABLE_UNPACK R19 [+2]
  GETIMPORT R18 K42 [unpack]
  CALL R18 1 -1
  SETLIST R14 R15 -1 [1]
  SETTABLEKS R14 R13 K19 ["HorizontalItems"]
  CALL R11 2 1
  SETTABLE R11 R9 R10
  CALL R7 2 -1
  RETURN R7 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["AvatarToolsShared"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K9 ["LuaMeshEditingModule"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Packages"]
  GETTABLEKS R5 R6 K10 ["React"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K6 ["Packages"]
  GETTABLEKS R6 R7 K11 ["ViewportToolingFramework"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R11 R0 K12 ["Src"]
  GETTABLEKS R10 R11 K13 ["Components"]
  GETTABLEKS R9 R10 K14 ["EditingTools"]
  GETTABLEKS R8 R9 K15 ["CageEditingTool"]
  GETTABLEKS R7 R8 K16 ["LuaMeshEditingModuleWrapper"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K12 ["Src"]
  GETTABLEKS R9 R10 K17 ["Util"]
  GETTABLEKS R8 R9 K18 ["Constants"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R10 R0 K12 ["Src"]
  GETTABLEKS R9 R10 K19 ["Types"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K12 ["Src"]
  GETTABLEKS R11 R12 K20 ["Hooks"]
  GETTABLEKS R10 R11 K21 ["useRefWithInitial"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R12 R3 K22 ["Tools"]
  GETTABLEKS R11 R12 K23 ["BrushTool"]
  CALL R10 1 1
  GETTABLEKS R11 R2 K24 ["ContextServices"]
  GETTABLEKS R12 R11 K25 ["Localization"]
  GETTABLEKS R14 R1 K26 ["Contexts"]
  GETTABLEKS R13 R14 K27 ["LuaMeshEditingModuleContext"]
  DUPCLOSURE R14 K28 [PROTO_0]
  CAPTURE VAL R12
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R4
  CAPTURE VAL R11
  CAPTURE VAL R13
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R5
  RETURN R14 1
