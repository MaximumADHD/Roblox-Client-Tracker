PROTO_0:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R2 1
  LOADK R4 K1 ["CageEditingTool"]
  NAMECALL R2 R2 K0 ["use"]
  CALL R2 2 1
  GETUPVAL R3 2
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K2 ["new"]
  CALL R3 1 1
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K3 ["useState"]
  LOADN R5 10
  CALL R4 1 2
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K3 ["useState"]
  LOADK R7 K4 [0.3]
  CALL R6 1 2
  GETUPVAL R8 5
  LOADB R9 1
  CALL R8 1 1
  GETUPVAL R10 6
  GETTABLEKS R9 R10 K5 ["provide"]
  NEWTABLE R10 0 1
  GETUPVAL R12 7
  GETTABLEKS R11 R12 K2 ["new"]
  DUPTABLE R12 K7 [{"BrushTool"}]
  GETTABLEKS R13 R3 K8 ["current"]
  SETTABLEKS R13 R12 K6 ["BrushTool"]
  CALL R11 1 -1
  SETLIST R10 R11 -1 [1]
  NEWTABLE R11 2 0
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K9 ["createElement"]
  GETUPVAL R13 8
  DUPTABLE R14 K14 [{"Mannequin", "Falloff", "Radius", "Symmetrical"}]
  GETTABLEKS R15 R0 K15 ["mannequin"]
  SETTABLEKS R15 R14 K10 ["Mannequin"]
  DIVK R15 R4 K16 [100]
  SETTABLEKS R15 R14 K11 ["Falloff"]
  SETTABLEKS R6 R14 K12 ["Radius"]
  GETTABLEKS R15 R8 K17 ["enabled"]
  SETTABLEKS R15 R14 K13 ["Symmetrical"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K1 ["CageEditingTool"]
  GETUPVAL R14 9
  GETTABLEKS R13 R14 K18 ["EDITING_TOOLS_GUI_NAMES"]
  GETTABLEKS R12 R13 K19 ["CageEditingToolToolbar"]
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K9 ["createElement"]
  GETUPVAL R15 10
  GETTABLEKS R14 R15 K20 ["Toolbar"]
  DUPTABLE R15 K22 [{"HorizontalItems"}]
  NEWTABLE R16 0 6
  DUPTABLE R17 K30 [{"Type", "Icon", "Tooltip", "TooltipDescription", "Value", "OnClick", "Selected"}]
  LOADK R18 K31 ["Button"]
  SETTABLEKS R18 R17 K23 ["Type"]
  GETTABLEKS R18 R2 K32 ["SymmetryImage"]
  SETTABLEKS R18 R17 K24 ["Icon"]
  LOADK R20 K1 ["CageEditingTool"]
  LOADK R21 K33 ["Symmetry"]
  NAMECALL R18 R1 K34 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K25 ["Tooltip"]
  LOADK R20 K1 ["CageEditingTool"]
  LOADK R21 K35 ["SymmetryDescription"]
  NAMECALL R18 R1 K34 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K26 ["TooltipDescription"]
  GETTABLEKS R18 R8 K17 ["enabled"]
  SETTABLEKS R18 R17 K27 ["Value"]
  GETTABLEKS R18 R8 K36 ["toggle"]
  SETTABLEKS R18 R17 K28 ["OnClick"]
  GETTABLEKS R18 R8 K17 ["enabled"]
  SETTABLEKS R18 R17 K29 ["Selected"]
  DUPTABLE R18 K37 [{"Type"}]
  LOADK R19 K38 ["Separator"]
  SETTABLEKS R19 R18 K23 ["Type"]
  DUPTABLE R19 K42 [{"Type", "Value", "OnChange", "Icon", "Tooltip", "Min", "Max"}]
  LOADK R20 K43 ["Slider"]
  SETTABLEKS R20 R19 K23 ["Type"]
  SETTABLEKS R6 R19 K27 ["Value"]
  SETTABLEKS R7 R19 K39 ["OnChange"]
  LOADK R20 K44 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/radius@2x.png"]
  SETTABLEKS R20 R19 K24 ["Icon"]
  LOADK R22 K1 ["CageEditingTool"]
  LOADK R23 K12 ["Radius"]
  NAMECALL R20 R1 K34 ["getText"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K25 ["Tooltip"]
  LOADK R20 K45 [0.1]
  SETTABLEKS R20 R19 K40 ["Min"]
  LOADK R20 K46 [0.5]
  SETTABLEKS R20 R19 K41 ["Max"]
  DUPTABLE R20 K49 [{"Type", "Value", "OnChange", "Icon", "Tooltip", "Min", "Max", "InputPrecision", "DisplayFormat"}]
  LOADK R21 K43 ["Slider"]
  SETTABLEKS R21 R20 K23 ["Type"]
  SETTABLEKS R4 R20 K27 ["Value"]
  SETTABLEKS R5 R20 K39 ["OnChange"]
  LOADK R21 K44 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/radius@2x.png"]
  SETTABLEKS R21 R20 K24 ["Icon"]
  LOADK R23 K1 ["CageEditingTool"]
  LOADK R24 K11 ["Falloff"]
  NAMECALL R21 R1 K34 ["getText"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K25 ["Tooltip"]
  LOADN R21 0
  SETTABLEKS R21 R20 K40 ["Min"]
  LOADN R21 100
  SETTABLEKS R21 R20 K41 ["Max"]
  LOADN R21 0
  SETTABLEKS R21 R20 K47 ["InputPrecision"]
  LOADK R21 K50 ["%d%%"]
  SETTABLEKS R21 R20 K48 ["DisplayFormat"]
  DUPTABLE R21 K37 [{"Type"}]
  LOADK R22 K38 ["Separator"]
  SETTABLEKS R22 R21 K23 ["Type"]
  GETTABLEKS R23 R0 K51 ["additionalToolbarItems"]
  FASTCALL1 TABLE_UNPACK R23 [+2]
  GETIMPORT R22 K53 [unpack]
  CALL R22 1 -1
  SETLIST R16 R17 -1 [1]
  SETTABLEKS R16 R15 K21 ["HorizontalItems"]
  CALL R13 2 1
  SETTABLE R13 R11 R12
  CALL R9 2 -1
  RETURN R9 -1

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
  GETTABLEKS R11 R0 K12 ["Src"]
  GETTABLEKS R10 R11 K19 ["Resources"]
  GETTABLEKS R9 R10 K20 ["Theme"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R11 R0 K12 ["Src"]
  GETTABLEKS R10 R11 K21 ["Types"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K12 ["Src"]
  GETTABLEKS R12 R13 K22 ["Hooks"]
  GETTABLEKS R11 R12 K23 ["useRefWithInitial"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K12 ["Src"]
  GETTABLEKS R13 R14 K22 ["Hooks"]
  GETTABLEKS R12 R13 K24 ["useToggleState"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R14 R3 K25 ["Tools"]
  GETTABLEKS R13 R14 K26 ["BrushTool"]
  CALL R12 1 1
  GETTABLEKS R13 R2 K27 ["ContextServices"]
  GETTABLEKS R14 R13 K28 ["Localization"]
  GETTABLEKS R16 R1 K29 ["Contexts"]
  GETTABLEKS R15 R16 K30 ["LuaMeshEditingModuleContext"]
  GETTABLEKS R16 R13 K31 ["Stylizer"]
  DUPCLOSURE R17 K32 [PROTO_0]
  CAPTURE VAL R14
  CAPTURE VAL R16
  CAPTURE VAL R10
  CAPTURE VAL R12
  CAPTURE VAL R4
  CAPTURE VAL R11
  CAPTURE VAL R13
  CAPTURE VAL R15
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R5
  RETURN R17 1
