PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["mannequin"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["mannequin"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_2:
  GETUPVAL R0 0
  LOADNIL R1
  LOADNIL R2
  FORGPREP R0
  GETUPVAL R5 1
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K0 ["mannequin"]
  MOVE R7 R3
  CALL R5 2 1
  JUMPIFEQKNIL R5 [+8]
  GETIMPORT R8 K4 [Enum.CageType.Outer]
  GETTABLEKS R9 R4 K5 ["oldVertices"]
  NAMECALL R6 R5 K6 ["ModifyVertices"]
  CALL R6 3 0
  FORGLOOP R0 2 [-16]
  GETUPVAL R1 3
  GETTABLEKS R0 R1 K7 ["increment"]
  CALL R0 0 0
  GETUPVAL R0 4
  RETURN R0 1

PROTO_3:
  GETUPVAL R0 0
  LOADNIL R1
  LOADNIL R2
  FORGPREP R0
  GETUPVAL R5 1
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K0 ["mannequin"]
  MOVE R7 R3
  CALL R5 2 1
  JUMPIFEQKNIL R5 [+8]
  GETIMPORT R8 K4 [Enum.CageType.Outer]
  GETTABLEKS R9 R4 K5 ["newVertices"]
  NAMECALL R6 R5 K6 ["ModifyVertices"]
  CALL R6 3 0
  FORGLOOP R0 2 [-16]
  GETUPVAL R1 3
  GETTABLEKS R0 R1 K7 ["increment"]
  CALL R0 0 0
  GETUPVAL R0 4
  RETURN R0 1

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["state"]
  JUMPIFEQKS R1 K1 ["ok"] [+2]
  RETURN R0 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["state"]
  JUMPIFEQKS R3 K1 ["ok"] [+2]
  LOADB R2 0 +1
  LOADB R2 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["LUAU_ANALYZE_ERROR"]
  FASTCALL2 ASSERT R2 R3 [+3]
  GETIMPORT R1 K4 [assert]
  CALL R1 2 0
  GETUPVAL R1 2
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K5 ["mannequin"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K6 ["value"]
  MOVE R4 R0
  CALL R1 3 1
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K7 ["increment"]
  CALL R2 0 0
  LOADNIL R2
  NEWCLOSURE R3 P0
  CAPTURE VAL R1
  CAPTURE UPVAL U5
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE REF R2
  NEWCLOSURE R2 P1
  CAPTURE VAL R1
  CAPTURE UPVAL U5
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE VAL R3
  GETUPVAL R4 6
  SETTABLEKS R3 R4 K8 ["current"]
  GETUPVAL R4 7
  LOADNIL R5
  SETTABLEKS R5 R4 K8 ["current"]
  CLOSEUPVALS R2
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["current"]
  JUMPIFNOTEQKNIL R0 [+2]
  RETURN R0 0
  JUMPIFNOTEQKNIL R0 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["LUAU_ANALYZE_ERROR"]
  FASTCALL2 ASSERT R2 R3 [+3]
  GETIMPORT R1 K3 [assert]
  CALL R1 2 0
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K0 ["current"]
  JUMPIFEQKNIL R1 [+6]
  NAMECALL R2 R1 K4 ["undo"]
  CALL R2 1 1
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K0 ["current"]
  JUMPIFEQKNIL R2 [+12]
  GETUPVAL R2 4
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K0 ["current"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K0 ["current"]
  GETUPVAL R2 3
  LOADNIL R3
  SETTABLEKS R3 R2 K0 ["current"]
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["current"]
  JUMPIFNOTEQKNIL R0 [+2]
  RETURN R0 0
  JUMPIFNOTEQKNIL R0 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["LUAU_ANALYZE_ERROR"]
  FASTCALL2 ASSERT R2 R3 [+3]
  GETIMPORT R1 K3 [assert]
  CALL R1 2 0
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K0 ["current"]
  JUMPIFEQKNIL R1 [+6]
  NAMECALL R2 R1 K4 ["redo"]
  CALL R2 1 1
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K0 ["current"]
  JUMPIFEQKNIL R2 [+12]
  GETUPVAL R2 4
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K0 ["current"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K0 ["current"]
  GETUPVAL R2 3
  LOADNIL R3
  SETTABLEKS R3 R2 K0 ["current"]
  RETURN R0 0

PROTO_7:
  GETUPVAL R0 0
  LOADK R1 K0 ["right"]
  CALL R0 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R0 0
  LOADK R1 K0 ["left"]
  CALL R0 1 0
  RETURN R0 0

PROTO_9:
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
  LOADN R5 50
  CALL R4 1 2
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K3 ["useState"]
  LOADK R7 K4 [0.3]
  CALL R6 1 2
  GETUPVAL R8 5
  LOADB R9 1
  CALL R8 1 1
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K3 ["useState"]
  NEWTABLE R10 0 0
  CALL R9 1 2
  GETUPVAL R11 6
  MOVE R12 R9
  CALL R11 1 0
  GETUPVAL R11 7
  NEWCLOSURE R12 P0
  CAPTURE UPVAL U8
  CAPTURE VAL R0
  NEWTABLE R13 0 1
  GETTABLEKS R14 R0 K5 ["mannequin"]
  SETLIST R13 R14 1 [1]
  CALL R11 2 1
  GETUPVAL R12 7
  NEWCLOSURE R13 P1
  CAPTURE UPVAL U9
  CAPTURE VAL R0
  NEWTABLE R14 0 1
  GETTABLEKS R15 R0 K5 ["mannequin"]
  SETLIST R14 R15 1 [1]
  CALL R12 2 1
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K6 ["useRef"]
  LOADNIL R14
  CALL R13 1 1
  GETUPVAL R14 10
  CALL R14 0 1
  GETUPVAL R16 4
  GETTABLEKS R15 R16 K6 ["useRef"]
  LOADNIL R16
  CALL R15 1 1
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K6 ["useRef"]
  LOADNIL R17
  CALL R16 1 1
  GETUPVAL R18 4
  GETTABLEKS R17 R18 K7 ["useCallback"]
  NEWCLOSURE R18 P2
  CAPTURE VAL R11
  CAPTURE UPVAL U11
  CAPTURE UPVAL U12
  CAPTURE VAL R0
  CAPTURE VAL R14
  CAPTURE UPVAL U13
  CAPTURE VAL R16
  CAPTURE VAL R15
  NEWTABLE R19 0 2
  GETTABLEKS R20 R0 K5 ["mannequin"]
  MOVE R21 R11
  SETLIST R19 R20 2 [1]
  CALL R17 2 1
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K7 ["useCallback"]
  NEWCLOSURE R19 P3
  CAPTURE VAL R13
  CAPTURE UPVAL U11
  CAPTURE VAL R3
  CAPTURE VAL R16
  CAPTURE VAL R15
  NEWTABLE R20 0 0
  CALL R18 2 1
  GETUPVAL R20 4
  GETTABLEKS R19 R20 K7 ["useCallback"]
  NEWCLOSURE R20 P4
  CAPTURE VAL R13
  CAPTURE UPVAL U11
  CAPTURE VAL R3
  CAPTURE VAL R15
  CAPTURE VAL R16
  NEWTABLE R21 0 0
  CALL R19 2 1
  GETUPVAL R20 14
  MOVE R21 R18
  MOVE R22 R19
  CALL R20 2 0
  GETUPVAL R21 15
  GETTABLEKS R20 R21 K8 ["provide"]
  NEWTABLE R21 0 1
  GETUPVAL R23 16
  GETTABLEKS R22 R23 K2 ["new"]
  DUPTABLE R23 K10 [{"BrushTool"}]
  GETTABLEKS R24 R3 K11 ["current"]
  SETTABLEKS R24 R23 K9 ["BrushTool"]
  CALL R22 1 -1
  SETLIST R21 R22 -1 [1]
  NEWTABLE R22 2 0
  LOADK R24 K12 ["CageEditingTool%*"]
  GETTABLEKS R26 R14 K13 ["amount"]
  NAMECALL R24 R24 K14 ["format"]
  CALL R24 2 1
  MOVE R23 R24
  GETUPVAL R25 4
  GETTABLEKS R24 R25 K15 ["createElement"]
  GETUPVAL R25 17
  DUPTABLE R26 K23 [{"mannequin", "falloff", "radius", "segmentationMap", "symmetrical", "symmetryMap", "onChangeSelectedPositions", "outerCageContextRef"}]
  GETTABLEKS R27 R0 K5 ["mannequin"]
  SETTABLEKS R27 R26 K5 ["mannequin"]
  DIVK R29 R4 K24 [100]
  MUL R28 R29 R6
  GETUPVAL R30 11
  GETTABLEKS R29 R30 K25 ["FALLOFF_CURSOR_ADJUSTMENT"]
  DIV R27 R28 R29
  SETTABLEKS R27 R26 K16 ["falloff"]
  SETTABLEKS R6 R26 K17 ["radius"]
  SETTABLEKS R12 R26 K18 ["segmentationMap"]
  GETTABLEKS R27 R8 K26 ["enabled"]
  SETTABLEKS R27 R26 K19 ["symmetrical"]
  SETTABLEKS R11 R26 K20 ["symmetryMap"]
  SETTABLEKS R10 R26 K21 ["onChangeSelectedPositions"]
  SETTABLEKS R13 R26 K22 ["outerCageContextRef"]
  CALL R24 2 1
  SETTABLE R24 R22 R23
  GETUPVAL R25 11
  GETTABLEKS R24 R25 K27 ["EDITING_TOOLS_GUI_NAMES"]
  GETTABLEKS R23 R24 K28 ["CageEditingToolToolbar"]
  GETUPVAL R25 4
  GETTABLEKS R24 R25 K15 ["createElement"]
  GETUPVAL R26 18
  GETTABLEKS R25 R26 K29 ["Toolbar"]
  DUPTABLE R26 K31 [{"HorizontalItems"}]
  NEWTABLE R27 0 7
  DUPTABLE R28 K38 [{"Type", "Icon", "Tooltip", "TooltipDescription", "OnClick", "Selected"}]
  LOADK R29 K39 ["Button"]
  SETTABLEKS R29 R28 K32 ["Type"]
  GETTABLEKS R29 R2 K40 ["SymmetryImage"]
  SETTABLEKS R29 R28 K33 ["Icon"]
  LOADK R31 K1 ["CageEditingTool"]
  LOADK R32 K41 ["Symmetry"]
  NAMECALL R29 R1 K42 ["getText"]
  CALL R29 3 1
  SETTABLEKS R29 R28 K34 ["Tooltip"]
  LOADK R31 K1 ["CageEditingTool"]
  LOADK R32 K43 ["SymmetryDescription"]
  NAMECALL R29 R1 K42 ["getText"]
  CALL R29 3 1
  SETTABLEKS R29 R28 K35 ["TooltipDescription"]
  GETTABLEKS R29 R8 K44 ["toggle"]
  SETTABLEKS R29 R28 K36 ["OnClick"]
  GETTABLEKS R29 R8 K26 ["enabled"]
  SETTABLEKS R29 R28 K37 ["Selected"]
  DUPTABLE R29 K46 [{"Type", "Options"}]
  LOADK R30 K47 ["SplitButton"]
  SETTABLEKS R30 R29 K32 ["Type"]
  NEWTABLE R30 0 2
  DUPTABLE R31 K49 [{"Icon", "Text", "OnClick"}]
  GETUPVAL R33 4
  GETTABLEKS R32 R33 K15 ["createElement"]
  LOADK R33 K50 ["ImageLabel"]
  DUPTABLE R34 K53 [{"Image", "Size"}]
  GETTABLEKS R35 R2 K54 ["MirrorToRightImage"]
  SETTABLEKS R35 R34 K51 ["Image"]
  GETIMPORT R35 K57 [UDim2.fromScale]
  LOADN R36 1
  LOADN R37 1
  CALL R35 2 1
  SETTABLEKS R35 R34 K52 ["Size"]
  CALL R32 2 1
  SETTABLEKS R32 R31 K33 ["Icon"]
  LOADK R34 K1 ["CageEditingTool"]
  LOADK R35 K58 ["MirrorLeft"]
  NAMECALL R32 R1 K42 ["getText"]
  CALL R32 3 1
  SETTABLEKS R32 R31 K48 ["Text"]
  NEWCLOSURE R32 P5
  CAPTURE VAL R17
  SETTABLEKS R32 R31 K36 ["OnClick"]
  DUPTABLE R32 K49 [{"Icon", "Text", "OnClick"}]
  GETUPVAL R34 4
  GETTABLEKS R33 R34 K15 ["createElement"]
  LOADK R34 K50 ["ImageLabel"]
  DUPTABLE R35 K53 [{"Image", "Size"}]
  GETTABLEKS R36 R2 K59 ["MirrorToLeftImage"]
  SETTABLEKS R36 R35 K51 ["Image"]
  GETIMPORT R36 K57 [UDim2.fromScale]
  LOADN R37 1
  LOADN R38 1
  CALL R36 2 1
  SETTABLEKS R36 R35 K52 ["Size"]
  CALL R33 2 1
  SETTABLEKS R33 R32 K33 ["Icon"]
  LOADK R35 K1 ["CageEditingTool"]
  LOADK R36 K60 ["MirrorRight"]
  NAMECALL R33 R1 K42 ["getText"]
  CALL R33 3 1
  SETTABLEKS R33 R32 K48 ["Text"]
  NEWCLOSURE R33 P6
  CAPTURE VAL R17
  SETTABLEKS R33 R32 K36 ["OnClick"]
  SETLIST R30 R31 2 [1]
  SETTABLEKS R30 R29 K45 ["Options"]
  DUPTABLE R30 K61 [{"Type"}]
  LOADK R31 K62 ["Separator"]
  SETTABLEKS R31 R30 K32 ["Type"]
  DUPTABLE R31 K67 [{"Type", "Value", "OnChange", "Icon", "Tooltip", "Min", "Max"}]
  LOADK R32 K68 ["Slider"]
  SETTABLEKS R32 R31 K32 ["Type"]
  SETTABLEKS R6 R31 K63 ["Value"]
  SETTABLEKS R7 R31 K64 ["OnChange"]
  LOADK R32 K69 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/radius@2x.png"]
  SETTABLEKS R32 R31 K33 ["Icon"]
  LOADK R34 K1 ["CageEditingTool"]
  LOADK R35 K70 ["Radius"]
  NAMECALL R32 R1 K42 ["getText"]
  CALL R32 3 1
  SETTABLEKS R32 R31 K34 ["Tooltip"]
  LOADK R32 K71 [0.01]
  SETTABLEKS R32 R31 K65 ["Min"]
  LOADN R32 2
  SETTABLEKS R32 R31 K66 ["Max"]
  DUPTABLE R32 K74 [{"Type", "Value", "OnChange", "Icon", "Tooltip", "Min", "Max", "InputPrecision", "DisplayFormat"}]
  LOADK R33 K68 ["Slider"]
  SETTABLEKS R33 R32 K32 ["Type"]
  SETTABLEKS R4 R32 K63 ["Value"]
  SETTABLEKS R5 R32 K64 ["OnChange"]
  LOADK R33 K69 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/radius@2x.png"]
  SETTABLEKS R33 R32 K33 ["Icon"]
  LOADK R35 K1 ["CageEditingTool"]
  LOADK R36 K75 ["Falloff"]
  NAMECALL R33 R1 K42 ["getText"]
  CALL R33 3 1
  SETTABLEKS R33 R32 K34 ["Tooltip"]
  LOADN R33 1
  SETTABLEKS R33 R32 K65 ["Min"]
  LOADN R33 100
  SETTABLEKS R33 R32 K66 ["Max"]
  LOADN R33 0
  SETTABLEKS R33 R32 K72 ["InputPrecision"]
  LOADK R33 K76 ["%d%%"]
  SETTABLEKS R33 R32 K73 ["DisplayFormat"]
  DUPTABLE R33 K61 [{"Type"}]
  LOADK R34 K62 ["Separator"]
  SETTABLEKS R34 R33 K32 ["Type"]
  GETTABLEKS R35 R0 K77 ["additionalToolbarItems"]
  FASTCALL1 TABLE_UNPACK R35 [+2]
  GETIMPORT R34 K79 [unpack]
  CALL R34 1 -1
  SETLIST R27 R28 -1 [1]
  SETTABLEKS R27 R26 K30 ["HorizontalItems"]
  CALL R24 2 1
  SETTABLE R24 R22 R23
  CALL R20 2 -1
  RETURN R20 -1

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
  GETTABLEKS R14 R0 K12 ["Src"]
  GETTABLEKS R13 R14 K13 ["Components"]
  GETTABLEKS R12 R13 K14 ["EditingTools"]
  GETTABLEKS R11 R12 K22 ["createSegmentationMapAsync"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R15 R0 K12 ["Src"]
  GETTABLEKS R14 R15 K13 ["Components"]
  GETTABLEKS R13 R14 K14 ["EditingTools"]
  GETTABLEKS R12 R13 K23 ["createSymmetryMapAsync"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R17 R0 K12 ["Src"]
  GETTABLEKS R16 R17 K13 ["Components"]
  GETTABLEKS R15 R16 K14 ["EditingTools"]
  GETTABLEKS R14 R15 K15 ["CageEditingTool"]
  GETTABLEKS R13 R14 K24 ["findWrapTargetWithName"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETIMPORT R15 K1 [script]
  GETTABLEKS R14 R15 K25 ["mirrorCage"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K12 ["Src"]
  GETTABLEKS R16 R17 K26 ["Hooks"]
  GETTABLEKS R15 R16 K27 ["useAsync"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R19 R0 K12 ["Src"]
  GETTABLEKS R18 R19 K13 ["Components"]
  GETTABLEKS R17 R18 K14 ["EditingTools"]
  GETTABLEKS R16 R17 K28 ["useBindFocusOnPositions"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R19 R0 K12 ["Src"]
  GETTABLEKS R18 R19 K26 ["Hooks"]
  GETTABLEKS R17 R18 K29 ["useIncrementedState"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R20 R0 K12 ["Src"]
  GETTABLEKS R19 R20 K26 ["Hooks"]
  GETTABLEKS R18 R19 K30 ["useRefWithInitial"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R21 R0 K12 ["Src"]
  GETTABLEKS R20 R21 K26 ["Hooks"]
  GETTABLEKS R19 R20 K31 ["useToggleState"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R22 R0 K12 ["Src"]
  GETTABLEKS R21 R22 K26 ["Hooks"]
  GETTABLEKS R20 R21 K32 ["useUndoRedoActions"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETTABLEKS R22 R3 K33 ["Tools"]
  GETTABLEKS R21 R22 K34 ["BrushTool"]
  CALL R20 1 1
  GETIMPORT R21 K5 [require]
  GETTABLEKS R23 R3 K35 ["MeshEditingContexts"]
  GETTABLEKS R22 R23 K36 ["CageEditingContext"]
  CALL R21 1 1
  GETIMPORT R22 K5 [require]
  GETTABLEKS R23 R3 K21 ["Types"]
  CALL R22 1 1
  GETTABLEKS R23 R2 K37 ["ContextServices"]
  GETTABLEKS R24 R23 K38 ["Localization"]
  GETTABLEKS R26 R1 K39 ["Contexts"]
  GETTABLEKS R25 R26 K40 ["LuaMeshEditingModuleContext"]
  GETTABLEKS R26 R23 K41 ["Stylizer"]
  DUPCLOSURE R27 K42 [PROTO_9]
  CAPTURE VAL R24
  CAPTURE VAL R26
  CAPTURE VAL R17
  CAPTURE VAL R20
  CAPTURE VAL R4
  CAPTURE VAL R18
  CAPTURE VAL R15
  CAPTURE VAL R14
  CAPTURE VAL R11
  CAPTURE VAL R10
  CAPTURE VAL R16
  CAPTURE VAL R7
  CAPTURE VAL R13
  CAPTURE VAL R12
  CAPTURE VAL R19
  CAPTURE VAL R23
  CAPTURE VAL R25
  CAPTURE VAL R6
  CAPTURE VAL R5
  RETURN R27 1
