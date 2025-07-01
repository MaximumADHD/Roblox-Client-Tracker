PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Localization"]
  NAMECALL R1 R1 K1 ["use"]
  CALL R1 1 1
  NAMECALL R2 R1 K2 ["getLocale"]
  CALL R2 1 1
  GETTABLEKS R4 R0 K3 ["TriangleCount"]
  JUMPIFNOT R4 [+7]
  GETTABLEKS R4 R0 K3 ["TriangleCount"]
  FASTCALL1 TONUMBER R4 [+2]
  GETIMPORT R3 K5 [tonumber]
  CALL R3 1 1
  JUMPIF R3 [+1]
  LOADN R3 0
  GETUPVAL R4 1
  MOVE R5 R3
  MOVE R6 R2
  CALL R4 2 1
  GETTABLEKS R6 R0 K6 ["DrawCallCount"]
  JUMPIFNOT R6 [+7]
  GETTABLEKS R6 R0 K6 ["DrawCallCount"]
  FASTCALL1 TONUMBER R6 [+2]
  GETIMPORT R5 K5 [tonumber]
  CALL R5 1 1
  JUMPIF R5 [+1]
  LOADN R5 0
  GETUPVAL R6 1
  MOVE R7 R5
  MOVE R8 R2
  CALL R6 2 1
  GETTABLEKS R9 R0 K7 ["MaxTriangles"]
  DIV R8 R3 R9
  FASTCALL2K MATH_MIN R8 K8 [+4]
  LOADK R9 K8 [1]
  GETIMPORT R7 K11 [math.min]
  CALL R7 2 1
  GETTABLEKS R10 R0 K12 ["MaxDrawCalls"]
  DIV R9 R5 R10
  FASTCALL2K MATH_MIN R9 K8 [+4]
  LOADK R10 K8 [1]
  GETIMPORT R8 K11 [math.min]
  CALL R8 2 1
  GETTABLEKS R10 R0 K13 ["IsEditMode"]
  JUMPIF R10 [+12]
  GETTABLEKS R11 R0 K14 ["RenderThreadAverageMs"]
  GETTABLEKS R12 R0 K15 ["MaxTotalRenderMs"]
  DIV R10 R11 R12
  FASTCALL2K MATH_MIN R10 K8 [+4]
  LOADK R11 K8 [1]
  GETIMPORT R9 K11 [math.min]
  CALL R9 2 1
  JUMPIF R9 [+1]
  LOADN R9 0
  GETTABLEKS R11 R0 K13 ["IsEditMode"]
  JUMPIF R11 [+12]
  GETTABLEKS R12 R0 K16 ["TaskThreadAverageMs"]
  GETTABLEKS R13 R0 K17 ["MaxTotalTaskMs"]
  DIV R11 R12 R13
  FASTCALL2K MATH_MIN R11 K8 [+4]
  LOADK R12 K8 [1]
  GETIMPORT R10 K11 [math.min]
  CALL R10 2 1
  JUMPIF R10 [+1]
  LOADN R10 0
  GETTABLEKS R13 R0 K7 ["MaxTriangles"]
  DIV R12 R3 R13
  GETTABLEKS R14 R0 K12 ["MaxDrawCalls"]
  DIV R13 R5 R14
  FASTCALL2 MATH_MAX R12 R13 [+3]
  GETIMPORT R11 K19 [math.max]
  CALL R11 2 1
  GETIMPORT R12 K22 [string.format]
  LOADK R13 K23 ["%.0f"]
  MULK R15 R11 K24 [100]
  FASTCALL1 MATH_CEIL R15 [+2]
  GETIMPORT R14 K26 [math.ceil]
  CALL R14 1 1
  CALL R12 2 1
  GETTABLEKS R14 R0 K13 ["IsEditMode"]
  JUMPIF R14 [+16]
  GETTABLEKS R15 R0 K14 ["RenderThreadAverageMs"]
  GETTABLEKS R16 R0 K15 ["MaxTotalRenderMs"]
  DIV R14 R15 R16
  GETTABLEKS R16 R0 K16 ["TaskThreadAverageMs"]
  GETTABLEKS R17 R0 K17 ["MaxTotalTaskMs"]
  DIV R15 R16 R17
  FASTCALL2 MATH_MAX R14 R15 [+3]
  GETIMPORT R13 K19 [math.max]
  CALL R13 2 1
  JUMPIF R13 [+1]
  LOADN R13 0
  GETIMPORT R14 K22 [string.format]
  LOADK R15 K23 ["%.0f"]
  MULK R17 R13 K24 [100]
  FASTCALL1 MATH_CEIL R17 [+2]
  GETIMPORT R16 K26 [math.ceil]
  CALL R16 1 1
  CALL R14 2 1
  GETTABLEKS R16 R0 K13 ["IsEditMode"]
  JUMPIF R16 [+18]
  LOADK R16 K27 ["%* / %*ms"]
  GETIMPORT R18 K22 [string.format]
  LOADK R19 K28 ["%.1f"]
  GETTABLEKS R20 R0 K14 ["RenderThreadAverageMs"]
  CALL R18 2 1
  GETIMPORT R19 K22 [string.format]
  LOADK R20 K28 ["%.1f"]
  GETTABLEKS R21 R0 K15 ["MaxTotalRenderMs"]
  CALL R19 2 1
  NAMECALL R16 R16 K21 ["format"]
  CALL R16 3 1
  MOVE R15 R16
  JUMPIF R15 [+1]
  LOADK R15 K29 [""]
  GETTABLEKS R17 R0 K13 ["IsEditMode"]
  JUMPIF R17 [+18]
  LOADK R17 K27 ["%* / %*ms"]
  GETIMPORT R19 K22 [string.format]
  LOADK R20 K28 ["%.1f"]
  GETTABLEKS R21 R0 K16 ["TaskThreadAverageMs"]
  CALL R19 2 1
  GETIMPORT R20 K22 [string.format]
  LOADK R21 K28 ["%.1f"]
  GETTABLEKS R22 R0 K17 ["MaxTotalTaskMs"]
  CALL R20 2 1
  NAMECALL R17 R17 K21 ["format"]
  CALL R17 3 1
  MOVE R16 R17
  JUMPIF R16 [+1]
  LOADK R16 K29 [""]
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K30 ["createElement"]
  LOADK R18 K31 ["Frame"]
  NEWTABLE R19 4 0
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K32 ["Tag"]
  LOADK R21 K33 ["X-Fill X-Column Component-MainThermometer"]
  SETTABLE R21 R19 R20
  GETIMPORT R20 K36 [UDim2.new]
  LOADN R21 1
  LOADN R22 0
  LOADN R23 1
  LOADN R24 0
  CALL R20 4 1
  SETTABLEKS R20 R19 K37 ["Size"]
  LOADN R20 1
  SETTABLEKS R20 R19 K38 ["BackgroundTransparency"]
  DUPTABLE R20 K46 [{"Layout", "Padding", "GraphicsSettings", "GeometryDrawer", "CPUDrawer", "SettingsButtonFrame", "EditDMWarning"}]
  GETUPVAL R22 2
  GETTABLEKS R21 R22 K30 ["createElement"]
  LOADK R22 K47 ["UIListLayout"]
  DUPTABLE R23 K52 [{"Padding", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
  GETIMPORT R24 K54 [UDim.new]
  LOADN R25 0
  LOADN R26 10
  CALL R24 2 1
  SETTABLEKS R24 R23 K40 ["Padding"]
  GETIMPORT R24 K57 [Enum.FillDirection.Vertical]
  SETTABLEKS R24 R23 K48 ["FillDirection"]
  GETIMPORT R24 K59 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R24 R23 K49 ["HorizontalAlignment"]
  GETIMPORT R24 K61 [Enum.VerticalAlignment.Top]
  SETTABLEKS R24 R23 K50 ["VerticalAlignment"]
  GETIMPORT R24 K63 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R24 R23 K51 ["SortOrder"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K39 ["Layout"]
  GETUPVAL R22 2
  GETTABLEKS R21 R22 K30 ["createElement"]
  LOADK R22 K64 ["UIPadding"]
  DUPTABLE R23 K69 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R24 K54 [UDim.new]
  LOADN R25 0
  LOADN R26 10
  CALL R24 2 1
  SETTABLEKS R24 R23 K65 ["PaddingTop"]
  GETIMPORT R24 K54 [UDim.new]
  LOADN R25 0
  LOADN R26 10
  CALL R24 2 1
  SETTABLEKS R24 R23 K66 ["PaddingBottom"]
  GETIMPORT R24 K54 [UDim.new]
  LOADN R25 0
  LOADN R26 12
  CALL R24 2 1
  SETTABLEKS R24 R23 K67 ["PaddingLeft"]
  GETIMPORT R24 K54 [UDim.new]
  LOADN R25 0
  LOADN R26 12
  CALL R24 2 1
  SETTABLEKS R24 R23 K68 ["PaddingRight"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K40 ["Padding"]
  GETUPVAL R22 2
  GETTABLEKS R21 R22 K30 ["createElement"]
  LOADK R22 K31 ["Frame"]
  DUPTABLE R23 K71 [{"Size", "BackgroundTransparency", "LayoutOrder", "AutomaticSize"}]
  GETIMPORT R24 K36 [UDim2.new]
  LOADN R25 1
  LOADN R26 0
  LOADN R27 0
  LOADN R28 0
  CALL R24 4 1
  SETTABLEKS R24 R23 K37 ["Size"]
  LOADN R24 1
  SETTABLEKS R24 R23 K38 ["BackgroundTransparency"]
  LOADN R24 1
  SETTABLEKS R24 R23 K62 ["LayoutOrder"]
  GETIMPORT R24 K73 [Enum.AutomaticSize.Y]
  SETTABLEKS R24 R23 K70 ["AutomaticSize"]
  DUPTABLE R24 K77 [{"Layout", "Padding", "GraphicsQualitySettings", "GraphicsQualitySettingsWarning", "DividerFrame"}]
  GETUPVAL R26 2
  GETTABLEKS R25 R26 K30 ["createElement"]
  LOADK R26 K47 ["UIListLayout"]
  DUPTABLE R27 K52 [{"Padding", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
  GETIMPORT R28 K54 [UDim.new]
  LOADN R29 0
  LOADN R30 5
  CALL R28 2 1
  SETTABLEKS R28 R27 K40 ["Padding"]
  GETIMPORT R28 K57 [Enum.FillDirection.Vertical]
  SETTABLEKS R28 R27 K48 ["FillDirection"]
  GETIMPORT R28 K59 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R28 R27 K49 ["HorizontalAlignment"]
  GETIMPORT R28 K79 [Enum.VerticalAlignment.Center]
  SETTABLEKS R28 R27 K50 ["VerticalAlignment"]
  GETIMPORT R28 K63 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R28 R27 K51 ["SortOrder"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K39 ["Layout"]
  GETUPVAL R26 2
  GETTABLEKS R25 R26 K30 ["createElement"]
  LOADK R26 K64 ["UIPadding"]
  DUPTABLE R27 K69 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R28 K54 [UDim.new]
  LOADN R29 0
  LOADN R30 0
  CALL R28 2 1
  SETTABLEKS R28 R27 K65 ["PaddingTop"]
  GETIMPORT R28 K54 [UDim.new]
  LOADN R29 0
  LOADN R30 12
  CALL R28 2 1
  SETTABLEKS R28 R27 K66 ["PaddingBottom"]
  GETIMPORT R28 K54 [UDim.new]
  LOADN R29 0
  LOADN R30 0
  CALL R28 2 1
  SETTABLEKS R28 R27 K67 ["PaddingLeft"]
  GETIMPORT R28 K54 [UDim.new]
  LOADN R29 0
  LOADN R30 0
  CALL R28 2 1
  SETTABLEKS R28 R27 K68 ["PaddingRight"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K40 ["Padding"]
  GETUPVAL R26 2
  GETTABLEKS R25 R26 K30 ["createElement"]
  GETUPVAL R26 3
  NEWTABLE R27 4 0
  GETUPVAL R29 2
  GETTABLEKS R28 R29 K32 ["Tag"]
  LOADK R29 K80 ["X-Fit X-Row X-Corner"]
  SETTABLE R29 R27 R28
  LOADN R28 1
  SETTABLEKS R28 R27 K62 ["LayoutOrder"]
  GETTABLEKS R28 R0 K13 ["IsEditMode"]
  SETTABLEKS R28 R27 K13 ["IsEditMode"]
  GETTABLEKS R28 R0 K81 ["AutomaticGraphicsQuality"]
  SETTABLEKS R28 R27 K81 ["AutomaticGraphicsQuality"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K74 ["GraphicsQualitySettings"]
  GETTABLEKS R25 R0 K13 ["IsEditMode"]
  JUMPIFNOT R25 [+142]
  GETUPVAL R26 2
  GETTABLEKS R25 R26 K30 ["createElement"]
  LOADK R26 K31 ["Frame"]
  NEWTABLE R27 4 0
  GETUPVAL R29 2
  GETTABLEKS R28 R29 K32 ["Tag"]
  LOADK R29 K80 ["X-Fit X-Row X-Corner"]
  SETTABLE R29 R27 R28
  LOADN R28 1
  SETTABLEKS R28 R27 K38 ["BackgroundTransparency"]
  LOADN R28 2
  SETTABLEKS R28 R27 K62 ["LayoutOrder"]
  DUPTABLE R28 K84 [{"Layout", "Padding", "InformationImageLabel", "GraphicsQualityWarningLabel"}]
  GETUPVAL R30 2
  GETTABLEKS R29 R30 K30 ["createElement"]
  LOADK R30 K47 ["UIListLayout"]
  DUPTABLE R31 K52 [{"Padding", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
  GETIMPORT R32 K54 [UDim.new]
  LOADN R33 0
  LOADN R34 5
  CALL R32 2 1
  SETTABLEKS R32 R31 K40 ["Padding"]
  GETIMPORT R32 K57 [Enum.FillDirection.Vertical]
  SETTABLEKS R32 R31 K48 ["FillDirection"]
  GETIMPORT R32 K59 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R32 R31 K49 ["HorizontalAlignment"]
  GETIMPORT R32 K79 [Enum.VerticalAlignment.Center]
  SETTABLEKS R32 R31 K50 ["VerticalAlignment"]
  GETIMPORT R32 K63 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R32 R31 K51 ["SortOrder"]
  CALL R29 2 1
  SETTABLEKS R29 R28 K39 ["Layout"]
  GETUPVAL R30 2
  GETTABLEKS R29 R30 K30 ["createElement"]
  LOADK R30 K64 ["UIPadding"]
  DUPTABLE R31 K69 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R32 K54 [UDim.new]
  LOADN R33 0
  LOADN R34 0
  CALL R32 2 1
  SETTABLEKS R32 R31 K65 ["PaddingTop"]
  GETIMPORT R32 K54 [UDim.new]
  LOADN R33 0
  LOADN R34 0
  CALL R32 2 1
  SETTABLEKS R32 R31 K66 ["PaddingBottom"]
  GETIMPORT R32 K54 [UDim.new]
  LOADN R33 0
  LOADN R34 0
  CALL R32 2 1
  SETTABLEKS R32 R31 K67 ["PaddingLeft"]
  GETIMPORT R32 K54 [UDim.new]
  LOADN R33 0
  LOADN R34 0
  CALL R32 2 1
  SETTABLEKS R32 R31 K68 ["PaddingRight"]
  CALL R29 2 1
  SETTABLEKS R29 R28 K40 ["Padding"]
  GETUPVAL R30 2
  GETTABLEKS R29 R30 K30 ["createElement"]
  LOADK R30 K85 ["ImageLabel"]
  NEWTABLE R31 4 0
  GETUPVAL R33 2
  GETTABLEKS R32 R33 K32 ["Tag"]
  LOADK R33 K86 ["InformationLabel"]
  SETTABLE R33 R31 R32
  GETIMPORT R32 K36 [UDim2.new]
  LOADN R33 0
  LOADN R34 16
  LOADN R35 0
  LOADN R36 16
  CALL R32 4 1
  SETTABLEKS R32 R31 K37 ["Size"]
  LOADN R32 1
  SETTABLEKS R32 R31 K38 ["BackgroundTransparency"]
  LOADN R32 1
  SETTABLEKS R32 R31 K62 ["LayoutOrder"]
  CALL R29 2 1
  SETTABLEKS R29 R28 K82 ["InformationImageLabel"]
  GETUPVAL R30 2
  GETTABLEKS R29 R30 K30 ["createElement"]
  LOADK R30 K87 ["TextLabel"]
  NEWTABLE R31 4 0
  GETUPVAL R33 2
  GETTABLEKS R32 R33 K32 ["Tag"]
  LOADK R33 K88 ["X-Fit"]
  SETTABLE R33 R31 R32
  LOADK R34 K89 ["SceneBudgetThermometer"]
  LOADK R35 K90 ["QualitySettingWarning"]
  NAMECALL R32 R1 K91 ["getText"]
  CALL R32 3 1
  SETTABLEKS R32 R31 K92 ["Text"]
  LOADB R32 1
  SETTABLEKS R32 R31 K93 ["TextWrapped"]
  LOADN R32 2
  SETTABLEKS R32 R31 K62 ["LayoutOrder"]
  CALL R29 2 1
  SETTABLEKS R29 R28 K83 ["GraphicsQualityWarningLabel"]
  CALL R25 3 1
  SETTABLEKS R25 R24 K75 ["GraphicsQualitySettingsWarning"]
  GETUPVAL R26 2
  GETTABLEKS R25 R26 K30 ["createElement"]
  LOADK R26 K31 ["Frame"]
  DUPTABLE R27 K95 [{"Size", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
  GETIMPORT R28 K36 [UDim2.new]
  LOADN R29 1
  LOADN R30 0
  LOADN R31 0
  LOADN R32 1
  CALL R28 4 1
  SETTABLEKS R28 R27 K37 ["Size"]
  LOADN R28 1
  SETTABLEKS R28 R27 K38 ["BackgroundTransparency"]
  LOADN R28 0
  SETTABLEKS R28 R27 K94 ["BorderSizePixel"]
  LOADN R28 3
  SETTABLEKS R28 R27 K62 ["LayoutOrder"]
  DUPTABLE R28 K97 [{"SimpleDivider"}]
  GETUPVAL R30 2
  GETTABLEKS R29 R30 K30 ["createElement"]
  LOADK R30 K31 ["Frame"]
  NEWTABLE R31 8 0
  GETUPVAL R33 2
  GETTABLEKS R32 R33 K32 ["Tag"]
  LOADK R33 K96 ["SimpleDivider"]
  SETTABLE R33 R31 R32
  GETIMPORT R32 K36 [UDim2.new]
  LOADN R33 1
  LOADN R34 220
  LOADN R35 0
  LOADN R36 1
  CALL R32 4 1
  SETTABLEKS R32 R31 K37 ["Size"]
  GETIMPORT R32 K36 [UDim2.new]
  LOADK R33 K98 [0.5]
  LOADN R34 0
  LOADN R35 0
  LOADN R36 0
  CALL R32 4 1
  SETTABLEKS R32 R31 K99 ["Position"]
  GETIMPORT R32 K101 [Vector2.new]
  LOADK R33 K98 [0.5]
  LOADN R34 0
  CALL R32 2 1
  SETTABLEKS R32 R31 K102 ["AnchorPoint"]
  LOADN R32 0
  SETTABLEKS R32 R31 K94 ["BorderSizePixel"]
  CALL R29 2 1
  SETTABLEKS R29 R28 K96 ["SimpleDivider"]
  CALL R25 3 1
  SETTABLEKS R25 R24 K76 ["DividerFrame"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K41 ["GraphicsSettings"]
  GETUPVAL R22 2
  GETTABLEKS R21 R22 K30 ["createElement"]
  GETUPVAL R22 4
  DUPTABLE R23 K105 [{"LayoutOrder", "TopContent", "ExpandingContent"}]
  LOADN R24 2
  SETTABLEKS R24 R23 K62 ["LayoutOrder"]
  GETUPVAL R25 2
  GETTABLEKS R24 R25 K30 ["createElement"]
  LOADK R25 K31 ["Frame"]
  DUPTABLE R26 K106 [{"Size", "BackgroundTransparency", "AutomaticSize"}]
  GETIMPORT R27 K36 [UDim2.new]
  LOADN R28 1
  LOADN R29 0
  LOADN R30 0
  LOADN R31 0
  CALL R27 4 1
  SETTABLEKS R27 R26 K37 ["Size"]
  LOADN R27 1
  SETTABLEKS R27 R26 K38 ["BackgroundTransparency"]
  GETIMPORT R27 K73 [Enum.AutomaticSize.Y]
  SETTABLEKS R27 R26 K70 ["AutomaticSize"]
  DUPTABLE R27 K108 [{"Layout", "Padding", "MeasuringBar"}]
  GETUPVAL R29 2
  GETTABLEKS R28 R29 K30 ["createElement"]
  LOADK R29 K47 ["UIListLayout"]
  DUPTABLE R30 K52 [{"Padding", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
  GETIMPORT R31 K54 [UDim.new]
  LOADN R32 0
  LOADN R33 0
  CALL R31 2 1
  SETTABLEKS R31 R30 K40 ["Padding"]
  GETIMPORT R31 K57 [Enum.FillDirection.Vertical]
  SETTABLEKS R31 R30 K48 ["FillDirection"]
  GETIMPORT R31 K59 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R31 R30 K49 ["HorizontalAlignment"]
  GETIMPORT R31 K61 [Enum.VerticalAlignment.Top]
  SETTABLEKS R31 R30 K50 ["VerticalAlignment"]
  GETIMPORT R31 K63 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R31 R30 K51 ["SortOrder"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K39 ["Layout"]
  GETUPVAL R29 2
  GETTABLEKS R28 R29 K30 ["createElement"]
  LOADK R29 K64 ["UIPadding"]
  DUPTABLE R30 K69 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R31 K54 [UDim.new]
  LOADN R32 0
  LOADN R33 0
  CALL R31 2 1
  SETTABLEKS R31 R30 K65 ["PaddingTop"]
  GETIMPORT R31 K54 [UDim.new]
  LOADN R32 0
  LOADN R33 0
  CALL R31 2 1
  SETTABLEKS R31 R30 K66 ["PaddingBottom"]
  GETIMPORT R31 K54 [UDim.new]
  LOADN R32 0
  LOADN R33 0
  CALL R31 2 1
  SETTABLEKS R31 R30 K67 ["PaddingLeft"]
  GETIMPORT R31 K54 [UDim.new]
  LOADN R32 0
  LOADN R33 0
  CALL R31 2 1
  SETTABLEKS R31 R30 K68 ["PaddingRight"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K40 ["Padding"]
  GETUPVAL R29 2
  GETTABLEKS R28 R29 K30 ["createElement"]
  GETUPVAL R29 5
  DUPTABLE R30 K114 [{"FillAmount", "MainText", "Text", "Size", "Pips", "ThresholdTooltips", "ThresholdExtraInfo"}]
  SETTABLEKS R11 R30 K109 ["FillAmount"]
  LOADK R33 K115 ["SceneMonitor"]
  LOADK R34 K116 ["Geometry"]
  NAMECALL R31 R1 K91 ["getText"]
  CALL R31 3 1
  SETTABLEKS R31 R30 K110 ["MainText"]
  LOADK R32 K117 ["%*%%"]
  MOVE R34 R12
  NAMECALL R32 R32 K21 ["format"]
  CALL R32 2 1
  MOVE R31 R32
  SETTABLEKS R31 R30 K92 ["Text"]
  GETIMPORT R31 K119 [UDim2.fromScale]
  LOADN R32 1
  LOADN R33 1
  CALL R31 2 1
  SETTABLEKS R31 R30 K37 ["Size"]
  NEWTABLE R31 0 2
  GETUPVAL R34 6
  GETTABLEKS R33 R34 K120 ["Threshold"]
  GETTABLEKS R32 R33 K121 ["Medium"]
  GETUPVAL R35 6
  GETTABLEKS R34 R35 K120 ["Threshold"]
  GETTABLEKS R33 R34 K122 ["High"]
  SETLIST R31 R32 2 [1]
  SETTABLEKS R31 R30 K111 ["Pips"]
  NEWTABLE R31 0 3
  DUPTABLE R32 K125 [{"Threshold", "TitleText", "BodyText"}]
  GETUPVAL R35 6
  GETTABLEKS R34 R35 K120 ["Threshold"]
  GETTABLEKS R33 R34 K126 ["Low"]
  SETTABLEKS R33 R32 K120 ["Threshold"]
  LOADK R35 K89 ["SceneBudgetThermometer"]
  LOADK R36 K127 ["LowGeometrySceneComplexity"]
  NAMECALL R33 R1 K91 ["getText"]
  CALL R33 3 1
  SETTABLEKS R33 R32 K123 ["TitleText"]
  LOADK R35 K89 ["SceneBudgetThermometer"]
  LOADK R36 K128 ["GeometryBudgetLow"]
  NAMECALL R33 R1 K91 ["getText"]
  CALL R33 3 1
  SETTABLEKS R33 R32 K124 ["BodyText"]
  DUPTABLE R33 K125 [{"Threshold", "TitleText", "BodyText"}]
  GETUPVAL R36 6
  GETTABLEKS R35 R36 K120 ["Threshold"]
  GETTABLEKS R34 R35 K121 ["Medium"]
  SETTABLEKS R34 R33 K120 ["Threshold"]
  LOADK R36 K89 ["SceneBudgetThermometer"]
  LOADK R37 K129 ["MediumGeometrySceneComplexity"]
  NAMECALL R34 R1 K91 ["getText"]
  CALL R34 3 1
  SETTABLEKS R34 R33 K123 ["TitleText"]
  LOADK R36 K89 ["SceneBudgetThermometer"]
  LOADK R37 K130 ["GeometryBudgetMedium"]
  NAMECALL R34 R1 K91 ["getText"]
  CALL R34 3 1
  SETTABLEKS R34 R33 K124 ["BodyText"]
  DUPTABLE R34 K125 [{"Threshold", "TitleText", "BodyText"}]
  GETUPVAL R37 6
  GETTABLEKS R36 R37 K120 ["Threshold"]
  GETTABLEKS R35 R36 K122 ["High"]
  SETTABLEKS R35 R34 K120 ["Threshold"]
  LOADK R37 K89 ["SceneBudgetThermometer"]
  LOADK R38 K131 ["HighGeometrySceneComplexity"]
  NAMECALL R35 R1 K91 ["getText"]
  CALL R35 3 1
  SETTABLEKS R35 R34 K123 ["TitleText"]
  LOADK R37 K89 ["SceneBudgetThermometer"]
  LOADK R38 K132 ["GeometryBudgetHigh"]
  NAMECALL R35 R1 K91 ["getText"]
  CALL R35 3 1
  SETTABLEKS R35 R34 K124 ["BodyText"]
  SETLIST R31 R32 3 [1]
  SETTABLEKS R31 R30 K112 ["ThresholdTooltips"]
  LOADK R33 K89 ["SceneBudgetThermometer"]
  LOADK R34 K133 ["GeometryBudgetExtraInfo"]
  NAMECALL R31 R1 K91 ["getText"]
  CALL R31 3 1
  SETTABLEKS R31 R30 K113 ["ThresholdExtraInfo"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K107 ["MeasuringBar"]
  CALL R24 3 1
  SETTABLEKS R24 R23 K103 ["TopContent"]
  GETUPVAL R25 2
  GETTABLEKS R24 R25 K30 ["createElement"]
  LOADK R25 K31 ["Frame"]
  DUPTABLE R26 K106 [{"Size", "BackgroundTransparency", "AutomaticSize"}]
  GETIMPORT R27 K36 [UDim2.new]
  LOADN R28 1
  LOADN R29 0
  LOADN R30 0
  LOADN R31 0
  CALL R27 4 1
  SETTABLEKS R27 R26 K37 ["Size"]
  LOADN R27 1
  SETTABLEKS R27 R26 K38 ["BackgroundTransparency"]
  GETIMPORT R27 K73 [Enum.AutomaticSize.Y]
  SETTABLEKS R27 R26 K70 ["AutomaticSize"]
  DUPTABLE R27 K136 [{"Layout", "Padding", "TriangleBar", "DrawCallBar"}]
  GETUPVAL R29 2
  GETTABLEKS R28 R29 K30 ["createElement"]
  LOADK R29 K47 ["UIListLayout"]
  DUPTABLE R30 K52 [{"Padding", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
  GETIMPORT R31 K54 [UDim.new]
  LOADN R32 0
  LOADN R33 12
  CALL R31 2 1
  SETTABLEKS R31 R30 K40 ["Padding"]
  GETIMPORT R31 K57 [Enum.FillDirection.Vertical]
  SETTABLEKS R31 R30 K48 ["FillDirection"]
  GETIMPORT R31 K59 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R31 R30 K49 ["HorizontalAlignment"]
  GETIMPORT R31 K61 [Enum.VerticalAlignment.Top]
  SETTABLEKS R31 R30 K50 ["VerticalAlignment"]
  GETIMPORT R31 K63 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R31 R30 K51 ["SortOrder"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K39 ["Layout"]
  GETUPVAL R29 2
  GETTABLEKS R28 R29 K30 ["createElement"]
  LOADK R29 K64 ["UIPadding"]
  DUPTABLE R30 K69 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R31 K54 [UDim.new]
  LOADN R32 0
  LOADN R33 0
  CALL R31 2 1
  SETTABLEKS R31 R30 K65 ["PaddingTop"]
  GETIMPORT R31 K54 [UDim.new]
  LOADN R32 0
  LOADN R33 12
  CALL R31 2 1
  SETTABLEKS R31 R30 K66 ["PaddingBottom"]
  GETIMPORT R31 K54 [UDim.new]
  LOADN R32 0
  LOADN R33 0
  CALL R31 2 1
  SETTABLEKS R31 R30 K67 ["PaddingLeft"]
  GETIMPORT R31 K54 [UDim.new]
  LOADN R32 0
  LOADN R33 0
  CALL R31 2 1
  SETTABLEKS R31 R30 K68 ["PaddingRight"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K40 ["Padding"]
  GETUPVAL R29 2
  GETTABLEKS R28 R29 K30 ["createElement"]
  GETUPVAL R29 5
  DUPTABLE R30 K138 [{"FillAmount", "MainText", "IsChildRenderBar", "Text", "LayoutOrder", "Pips", "ThresholdTooltips", "ThresholdExtraInfo"}]
  SETTABLEKS R7 R30 K109 ["FillAmount"]
  LOADK R33 K89 ["SceneBudgetThermometer"]
  LOADK R34 K139 ["TrianglesScene"]
  NAMECALL R31 R1 K91 ["getText"]
  CALL R31 3 1
  SETTABLEKS R31 R30 K110 ["MainText"]
  LOADB R31 1
  SETTABLEKS R31 R30 K137 ["IsChildRenderBar"]
  SETTABLEKS R4 R30 K92 ["Text"]
  LOADN R31 1
  SETTABLEKS R31 R30 K62 ["LayoutOrder"]
  NEWTABLE R31 0 2
  GETUPVAL R34 6
  GETTABLEKS R33 R34 K120 ["Threshold"]
  GETTABLEKS R32 R33 K121 ["Medium"]
  GETUPVAL R35 6
  GETTABLEKS R34 R35 K120 ["Threshold"]
  GETTABLEKS R33 R34 K122 ["High"]
  SETLIST R31 R32 2 [1]
  SETTABLEKS R31 R30 K111 ["Pips"]
  NEWTABLE R31 0 3
  DUPTABLE R32 K125 [{"Threshold", "TitleText", "BodyText"}]
  GETUPVAL R35 6
  GETTABLEKS R34 R35 K120 ["Threshold"]
  GETTABLEKS R33 R34 K126 ["Low"]
  SETTABLEKS R33 R32 K120 ["Threshold"]
  LOADK R35 K89 ["SceneBudgetThermometer"]
  LOADK R36 K140 ["LowTriangleCount"]
  NAMECALL R33 R1 K91 ["getText"]
  CALL R33 3 1
  SETTABLEKS R33 R32 K123 ["TitleText"]
  LOADK R35 K89 ["SceneBudgetThermometer"]
  LOADK R36 K141 ["SceneTriangleBudgetLow"]
  NAMECALL R33 R1 K91 ["getText"]
  CALL R33 3 1
  SETTABLEKS R33 R32 K124 ["BodyText"]
  DUPTABLE R33 K125 [{"Threshold", "TitleText", "BodyText"}]
  GETUPVAL R36 6
  GETTABLEKS R35 R36 K120 ["Threshold"]
  GETTABLEKS R34 R35 K121 ["Medium"]
  SETTABLEKS R34 R33 K120 ["Threshold"]
  LOADK R36 K89 ["SceneBudgetThermometer"]
  LOADK R37 K142 ["MediumTriangleCount"]
  NAMECALL R34 R1 K91 ["getText"]
  CALL R34 3 1
  SETTABLEKS R34 R33 K123 ["TitleText"]
  LOADK R36 K89 ["SceneBudgetThermometer"]
  LOADK R37 K143 ["SceneTriangleBudgetMedium"]
  NAMECALL R34 R1 K91 ["getText"]
  CALL R34 3 1
  SETTABLEKS R34 R33 K124 ["BodyText"]
  DUPTABLE R34 K125 [{"Threshold", "TitleText", "BodyText"}]
  GETUPVAL R37 6
  GETTABLEKS R36 R37 K120 ["Threshold"]
  GETTABLEKS R35 R36 K122 ["High"]
  SETTABLEKS R35 R34 K120 ["Threshold"]
  LOADK R37 K89 ["SceneBudgetThermometer"]
  LOADK R38 K144 ["HighTriangleCount"]
  NAMECALL R35 R1 K91 ["getText"]
  CALL R35 3 1
  SETTABLEKS R35 R34 K123 ["TitleText"]
  LOADK R41 K89 ["SceneBudgetThermometer"]
  LOADK R42 K145 ["SceneTriangleBudgetHigh1"]
  NAMECALL R39 R1 K91 ["getText"]
  CALL R39 3 1
  MOVE R36 R39
  LOADK R37 K146 ["<br/>"]
  LOADK R40 K89 ["SceneBudgetThermometer"]
  LOADK R41 K147 ["SceneTriangleBudgetHigh2"]
  NAMECALL R38 R1 K91 ["getText"]
  CALL R38 3 1
  CONCAT R35 R36 R38
  SETTABLEKS R35 R34 K124 ["BodyText"]
  SETLIST R31 R32 3 [1]
  SETTABLEKS R31 R30 K112 ["ThresholdTooltips"]
  LOADK R33 K89 ["SceneBudgetThermometer"]
  LOADK R34 K148 ["SceneTriangleBudgetExtraInfo"]
  NAMECALL R31 R1 K91 ["getText"]
  CALL R31 3 1
  SETTABLEKS R31 R30 K113 ["ThresholdExtraInfo"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K134 ["TriangleBar"]
  GETUPVAL R29 2
  GETTABLEKS R28 R29 K30 ["createElement"]
  GETUPVAL R29 5
  DUPTABLE R30 K149 [{"FillAmount", "Text", "MainText", "IsChildRenderBar", "LayoutOrder", "Pips", "ThresholdTooltips", "ThresholdExtraInfo"}]
  SETTABLEKS R8 R30 K109 ["FillAmount"]
  SETTABLEKS R6 R30 K92 ["Text"]
  LOADK R33 K89 ["SceneBudgetThermometer"]
  LOADK R34 K150 ["DrawcallsScene"]
  NAMECALL R31 R1 K91 ["getText"]
  CALL R31 3 1
  SETTABLEKS R31 R30 K110 ["MainText"]
  LOADB R31 1
  SETTABLEKS R31 R30 K137 ["IsChildRenderBar"]
  LOADN R31 2
  SETTABLEKS R31 R30 K62 ["LayoutOrder"]
  NEWTABLE R31 0 2
  GETUPVAL R34 6
  GETTABLEKS R33 R34 K120 ["Threshold"]
  GETTABLEKS R32 R33 K121 ["Medium"]
  GETUPVAL R35 6
  GETTABLEKS R34 R35 K120 ["Threshold"]
  GETTABLEKS R33 R34 K122 ["High"]
  SETLIST R31 R32 2 [1]
  SETTABLEKS R31 R30 K111 ["Pips"]
  NEWTABLE R31 0 3
  DUPTABLE R32 K125 [{"Threshold", "TitleText", "BodyText"}]
  GETUPVAL R35 6
  GETTABLEKS R34 R35 K120 ["Threshold"]
  GETTABLEKS R33 R34 K126 ["Low"]
  SETTABLEKS R33 R32 K120 ["Threshold"]
  LOADK R35 K89 ["SceneBudgetThermometer"]
  LOADK R36 K151 ["LowDrawcallCount"]
  NAMECALL R33 R1 K91 ["getText"]
  CALL R33 3 1
  SETTABLEKS R33 R32 K123 ["TitleText"]
  LOADK R35 K89 ["SceneBudgetThermometer"]
  LOADK R36 K152 ["SceneDrawcallBudgetLow"]
  NAMECALL R33 R1 K91 ["getText"]
  CALL R33 3 1
  SETTABLEKS R33 R32 K124 ["BodyText"]
  DUPTABLE R33 K125 [{"Threshold", "TitleText", "BodyText"}]
  GETUPVAL R36 6
  GETTABLEKS R35 R36 K120 ["Threshold"]
  GETTABLEKS R34 R35 K121 ["Medium"]
  SETTABLEKS R34 R33 K120 ["Threshold"]
  LOADK R36 K89 ["SceneBudgetThermometer"]
  LOADK R37 K153 ["MediumDrawcallCount"]
  NAMECALL R34 R1 K91 ["getText"]
  CALL R34 3 1
  SETTABLEKS R34 R33 K123 ["TitleText"]
  LOADK R36 K89 ["SceneBudgetThermometer"]
  LOADK R37 K154 ["SceneDrawcallBudgetMedium"]
  NAMECALL R34 R1 K91 ["getText"]
  CALL R34 3 1
  SETTABLEKS R34 R33 K124 ["BodyText"]
  DUPTABLE R34 K125 [{"Threshold", "TitleText", "BodyText"}]
  GETUPVAL R37 6
  GETTABLEKS R36 R37 K120 ["Threshold"]
  GETTABLEKS R35 R36 K122 ["High"]
  SETTABLEKS R35 R34 K120 ["Threshold"]
  LOADK R37 K89 ["SceneBudgetThermometer"]
  LOADK R38 K155 ["HighDrawcallCount"]
  NAMECALL R35 R1 K91 ["getText"]
  CALL R35 3 1
  SETTABLEKS R35 R34 K123 ["TitleText"]
  LOADK R41 K89 ["SceneBudgetThermometer"]
  LOADK R42 K156 ["SceneDrawcallBudgetHigh1"]
  NAMECALL R39 R1 K91 ["getText"]
  CALL R39 3 1
  MOVE R36 R39
  LOADK R37 K146 ["<br/>"]
  LOADK R40 K89 ["SceneBudgetThermometer"]
  LOADK R41 K157 ["SceneDrawcallBudgetHigh2"]
  NAMECALL R38 R1 K91 ["getText"]
  CALL R38 3 1
  CONCAT R35 R36 R38
  SETTABLEKS R35 R34 K124 ["BodyText"]
  SETLIST R31 R32 3 [1]
  SETTABLEKS R31 R30 K112 ["ThresholdTooltips"]
  LOADK R33 K89 ["SceneBudgetThermometer"]
  LOADK R34 K158 ["SceneDrawcallBudgetExtraInfo"]
  NAMECALL R31 R1 K91 ["getText"]
  CALL R31 3 1
  SETTABLEKS R31 R30 K113 ["ThresholdExtraInfo"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K135 ["DrawCallBar"]
  CALL R24 3 1
  SETTABLEKS R24 R23 K104 ["ExpandingContent"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K42 ["GeometryDrawer"]
  GETUPVAL R22 2
  GETTABLEKS R21 R22 K30 ["createElement"]
  GETUPVAL R22 4
  DUPTABLE R23 K105 [{"LayoutOrder", "TopContent", "ExpandingContent"}]
  LOADN R24 3
  SETTABLEKS R24 R23 K62 ["LayoutOrder"]
  GETUPVAL R25 2
  GETTABLEKS R24 R25 K30 ["createElement"]
  LOADK R25 K31 ["Frame"]
  DUPTABLE R26 K106 [{"Size", "BackgroundTransparency", "AutomaticSize"}]
  GETIMPORT R27 K36 [UDim2.new]
  LOADN R28 1
  LOADN R29 0
  LOADN R30 0
  LOADN R31 0
  CALL R27 4 1
  SETTABLEKS R27 R26 K37 ["Size"]
  LOADN R27 1
  SETTABLEKS R27 R26 K38 ["BackgroundTransparency"]
  GETIMPORT R27 K73 [Enum.AutomaticSize.Y]
  SETTABLEKS R27 R26 K70 ["AutomaticSize"]
  DUPTABLE R27 K108 [{"Layout", "Padding", "MeasuringBar"}]
  GETUPVAL R29 2
  GETTABLEKS R28 R29 K30 ["createElement"]
  LOADK R29 K47 ["UIListLayout"]
  DUPTABLE R30 K52 [{"Padding", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
  GETIMPORT R31 K54 [UDim.new]
  LOADN R32 0
  LOADN R33 0
  CALL R31 2 1
  SETTABLEKS R31 R30 K40 ["Padding"]
  GETIMPORT R31 K57 [Enum.FillDirection.Vertical]
  SETTABLEKS R31 R30 K48 ["FillDirection"]
  GETIMPORT R31 K59 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R31 R30 K49 ["HorizontalAlignment"]
  GETIMPORT R31 K61 [Enum.VerticalAlignment.Top]
  SETTABLEKS R31 R30 K50 ["VerticalAlignment"]
  GETIMPORT R31 K63 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R31 R30 K51 ["SortOrder"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K39 ["Layout"]
  GETUPVAL R29 2
  GETTABLEKS R28 R29 K30 ["createElement"]
  LOADK R29 K64 ["UIPadding"]
  DUPTABLE R30 K69 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R31 K54 [UDim.new]
  LOADN R32 0
  LOADN R33 0
  CALL R31 2 1
  SETTABLEKS R31 R30 K65 ["PaddingTop"]
  GETIMPORT R31 K54 [UDim.new]
  LOADN R32 0
  LOADN R33 0
  CALL R31 2 1
  SETTABLEKS R31 R30 K66 ["PaddingBottom"]
  GETIMPORT R31 K54 [UDim.new]
  LOADN R32 0
  LOADN R33 0
  CALL R31 2 1
  SETTABLEKS R31 R30 K67 ["PaddingLeft"]
  GETIMPORT R31 K54 [UDim.new]
  LOADN R32 0
  LOADN R33 0
  CALL R31 2 1
  SETTABLEKS R31 R30 K68 ["PaddingRight"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K40 ["Padding"]
  GETUPVAL R29 2
  GETTABLEKS R28 R29 K30 ["createElement"]
  GETUPVAL R29 5
  DUPTABLE R30 K114 [{"FillAmount", "MainText", "Text", "Size", "Pips", "ThresholdTooltips", "ThresholdExtraInfo"}]
  SETTABLEKS R13 R30 K109 ["FillAmount"]
  LOADK R33 K115 ["SceneMonitor"]
  LOADK R34 K159 ["CPU"]
  NAMECALL R31 R1 K91 ["getText"]
  CALL R31 3 1
  SETTABLEKS R31 R30 K110 ["MainText"]
  LOADK R32 K117 ["%*%%"]
  MOVE R34 R14
  NAMECALL R32 R32 K21 ["format"]
  CALL R32 2 1
  MOVE R31 R32
  SETTABLEKS R31 R30 K92 ["Text"]
  GETIMPORT R31 K119 [UDim2.fromScale]
  LOADN R32 1
  LOADN R33 1
  CALL R31 2 1
  SETTABLEKS R31 R30 K37 ["Size"]
  NEWTABLE R31 0 2
  GETUPVAL R34 6
  GETTABLEKS R33 R34 K120 ["Threshold"]
  GETTABLEKS R32 R33 K121 ["Medium"]
  GETUPVAL R35 6
  GETTABLEKS R34 R35 K120 ["Threshold"]
  GETTABLEKS R33 R34 K122 ["High"]
  SETLIST R31 R32 2 [1]
  SETTABLEKS R31 R30 K111 ["Pips"]
  NEWTABLE R31 0 3
  DUPTABLE R32 K125 [{"Threshold", "TitleText", "BodyText"}]
  GETUPVAL R35 6
  GETTABLEKS R34 R35 K120 ["Threshold"]
  GETTABLEKS R33 R34 K126 ["Low"]
  SETTABLEKS R33 R32 K120 ["Threshold"]
  LOADK R35 K89 ["SceneBudgetThermometer"]
  LOADK R36 K160 ["LowCPUUsage"]
  NAMECALL R33 R1 K91 ["getText"]
  CALL R33 3 1
  SETTABLEKS R33 R32 K123 ["TitleText"]
  LOADK R35 K89 ["SceneBudgetThermometer"]
  LOADK R36 K161 ["CPUBudgetLow"]
  NAMECALL R33 R1 K91 ["getText"]
  CALL R33 3 1
  SETTABLEKS R33 R32 K124 ["BodyText"]
  DUPTABLE R33 K125 [{"Threshold", "TitleText", "BodyText"}]
  GETUPVAL R36 6
  GETTABLEKS R35 R36 K120 ["Threshold"]
  GETTABLEKS R34 R35 K121 ["Medium"]
  SETTABLEKS R34 R33 K120 ["Threshold"]
  LOADK R36 K89 ["SceneBudgetThermometer"]
  LOADK R37 K162 ["MediumCPUUsage"]
  NAMECALL R34 R1 K91 ["getText"]
  CALL R34 3 1
  SETTABLEKS R34 R33 K123 ["TitleText"]
  LOADK R36 K89 ["SceneBudgetThermometer"]
  LOADK R37 K163 ["CPUBudgetMedium"]
  NAMECALL R34 R1 K91 ["getText"]
  CALL R34 3 1
  SETTABLEKS R34 R33 K124 ["BodyText"]
  DUPTABLE R34 K125 [{"Threshold", "TitleText", "BodyText"}]
  GETUPVAL R37 6
  GETTABLEKS R36 R37 K120 ["Threshold"]
  GETTABLEKS R35 R36 K122 ["High"]
  SETTABLEKS R35 R34 K120 ["Threshold"]
  LOADK R37 K89 ["SceneBudgetThermometer"]
  LOADK R38 K164 ["HighCPUUsage"]
  NAMECALL R35 R1 K91 ["getText"]
  CALL R35 3 1
  SETTABLEKS R35 R34 K123 ["TitleText"]
  LOADK R41 K89 ["SceneBudgetThermometer"]
  LOADK R42 K165 ["CPUBudgetHigh"]
  NAMECALL R39 R1 K91 ["getText"]
  CALL R39 3 1
  MOVE R36 R39
  LOADK R37 K146 ["<br/>"]
  LOADK R40 K89 ["SceneBudgetThermometer"]
  LOADK R41 K166 ["HighBudgetLowFPS"]
  NAMECALL R38 R1 K91 ["getText"]
  CALL R38 3 1
  CONCAT R35 R36 R38
  SETTABLEKS R35 R34 K124 ["BodyText"]
  SETLIST R31 R32 3 [1]
  SETTABLEKS R31 R30 K112 ["ThresholdTooltips"]
  LOADK R37 K89 ["SceneBudgetThermometer"]
  LOADK R38 K167 ["MicroprofilerExtraInfo1"]
  NAMECALL R35 R1 K91 ["getText"]
  CALL R35 3 1
  MOVE R32 R35
  LOADK R33 K146 ["<br/>"]
  LOADK R36 K89 ["SceneBudgetThermometer"]
  LOADK R37 K168 ["MicroprofilerExtraInfo2"]
  NAMECALL R34 R1 K91 ["getText"]
  CALL R34 3 1
  CONCAT R31 R32 R34
  SETTABLEKS R31 R30 K113 ["ThresholdExtraInfo"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K107 ["MeasuringBar"]
  CALL R24 3 1
  SETTABLEKS R24 R23 K103 ["TopContent"]
  GETUPVAL R25 2
  GETTABLEKS R24 R25 K30 ["createElement"]
  LOADK R25 K31 ["Frame"]
  DUPTABLE R26 K106 [{"Size", "BackgroundTransparency", "AutomaticSize"}]
  GETIMPORT R27 K36 [UDim2.new]
  LOADN R28 1
  LOADN R29 0
  LOADN R30 0
  LOADN R31 0
  CALL R27 4 1
  SETTABLEKS R27 R26 K37 ["Size"]
  LOADN R27 1
  SETTABLEKS R27 R26 K38 ["BackgroundTransparency"]
  GETIMPORT R27 K73 [Enum.AutomaticSize.Y]
  SETTABLEKS R27 R26 K70 ["AutomaticSize"]
  DUPTABLE R27 K172 [{"Layout", "Padding", "GameRenderMsBar", "ScriptThreadMsBar", "MicroprofilerButtonFrame"}]
  GETUPVAL R29 2
  GETTABLEKS R28 R29 K30 ["createElement"]
  LOADK R29 K47 ["UIListLayout"]
  DUPTABLE R30 K52 [{"Padding", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
  GETIMPORT R31 K54 [UDim.new]
  LOADN R32 0
  LOADN R33 12
  CALL R31 2 1
  SETTABLEKS R31 R30 K40 ["Padding"]
  GETIMPORT R31 K57 [Enum.FillDirection.Vertical]
  SETTABLEKS R31 R30 K48 ["FillDirection"]
  GETIMPORT R31 K59 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R31 R30 K49 ["HorizontalAlignment"]
  GETIMPORT R31 K61 [Enum.VerticalAlignment.Top]
  SETTABLEKS R31 R30 K50 ["VerticalAlignment"]
  GETIMPORT R31 K63 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R31 R30 K51 ["SortOrder"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K39 ["Layout"]
  GETUPVAL R29 2
  GETTABLEKS R28 R29 K30 ["createElement"]
  LOADK R29 K64 ["UIPadding"]
  DUPTABLE R30 K69 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R31 K54 [UDim.new]
  LOADN R32 0
  LOADN R33 0
  CALL R31 2 1
  SETTABLEKS R31 R30 K65 ["PaddingTop"]
  GETIMPORT R31 K54 [UDim.new]
  LOADN R32 0
  LOADN R33 12
  CALL R31 2 1
  SETTABLEKS R31 R30 K66 ["PaddingBottom"]
  GETIMPORT R31 K54 [UDim.new]
  LOADN R32 0
  LOADN R33 0
  CALL R31 2 1
  SETTABLEKS R31 R30 K67 ["PaddingLeft"]
  GETIMPORT R31 K54 [UDim.new]
  LOADN R32 0
  LOADN R33 0
  CALL R31 2 1
  SETTABLEKS R31 R30 K68 ["PaddingRight"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K40 ["Padding"]
  GETUPVAL R29 2
  GETTABLEKS R28 R29 K30 ["createElement"]
  GETUPVAL R29 5
  DUPTABLE R30 K174 [{"FillAmount", "Text", "MainText", "IsChildRenderBar", "LayoutOrder", "PipCount", "ThresholdTooltips", "ThresholdExtraInfo"}]
  SETTABLEKS R9 R30 K109 ["FillAmount"]
  SETTABLEKS R15 R30 K92 ["Text"]
  LOADK R33 K89 ["SceneBudgetThermometer"]
  LOADK R34 K175 ["FrameRenderTime"]
  NAMECALL R31 R1 K91 ["getText"]
  CALL R31 3 1
  SETTABLEKS R31 R30 K110 ["MainText"]
  LOADB R31 1
  SETTABLEKS R31 R30 K137 ["IsChildRenderBar"]
  LOADN R31 2
  SETTABLEKS R31 R30 K62 ["LayoutOrder"]
  GETTABLEKS R31 R0 K15 ["MaxTotalRenderMs"]
  SETTABLEKS R31 R30 K173 ["PipCount"]
  NEWTABLE R31 0 3
  DUPTABLE R32 K125 [{"Threshold", "TitleText", "BodyText"}]
  GETUPVAL R35 6
  GETTABLEKS R34 R35 K120 ["Threshold"]
  GETTABLEKS R33 R34 K126 ["Low"]
  SETTABLEKS R33 R32 K120 ["Threshold"]
  LOADK R35 K89 ["SceneBudgetThermometer"]
  LOADK R36 K176 ["LowRenderThreadUsage"]
  NAMECALL R33 R1 K91 ["getText"]
  CALL R33 3 1
  SETTABLEKS R33 R32 K123 ["TitleText"]
  LOADK R35 K89 ["SceneBudgetThermometer"]
  LOADK R36 K177 ["RenderCPUBudgetLow"]
  NAMECALL R33 R1 K91 ["getText"]
  CALL R33 3 1
  SETTABLEKS R33 R32 K124 ["BodyText"]
  DUPTABLE R33 K125 [{"Threshold", "TitleText", "BodyText"}]
  GETUPVAL R36 6
  GETTABLEKS R35 R36 K120 ["Threshold"]
  GETTABLEKS R34 R35 K121 ["Medium"]
  SETTABLEKS R34 R33 K120 ["Threshold"]
  LOADK R36 K89 ["SceneBudgetThermometer"]
  LOADK R37 K178 ["MediumRenderThreadUsage"]
  NAMECALL R34 R1 K91 ["getText"]
  CALL R34 3 1
  SETTABLEKS R34 R33 K123 ["TitleText"]
  LOADK R36 K89 ["SceneBudgetThermometer"]
  LOADK R37 K179 ["RenderCPUBudgetMedium"]
  NAMECALL R34 R1 K91 ["getText"]
  CALL R34 3 1
  SETTABLEKS R34 R33 K124 ["BodyText"]
  DUPTABLE R34 K125 [{"Threshold", "TitleText", "BodyText"}]
  GETUPVAL R37 6
  GETTABLEKS R36 R37 K120 ["Threshold"]
  GETTABLEKS R35 R36 K122 ["High"]
  SETTABLEKS R35 R34 K120 ["Threshold"]
  LOADK R37 K89 ["SceneBudgetThermometer"]
  LOADK R38 K180 ["HighRenderThreadUsage"]
  NAMECALL R35 R1 K91 ["getText"]
  CALL R35 3 1
  SETTABLEKS R35 R34 K123 ["TitleText"]
  LOADK R41 K89 ["SceneBudgetThermometer"]
  LOADK R42 K181 ["RenderCPUBudgetHigh"]
  NAMECALL R39 R1 K91 ["getText"]
  CALL R39 3 1
  MOVE R36 R39
  LOADK R37 K146 ["<br/>"]
  LOADK R40 K89 ["SceneBudgetThermometer"]
  LOADK R41 K166 ["HighBudgetLowFPS"]
  NAMECALL R38 R1 K91 ["getText"]
  CALL R38 3 1
  CONCAT R35 R36 R38
  SETTABLEKS R35 R34 K124 ["BodyText"]
  SETLIST R31 R32 3 [1]
  SETTABLEKS R31 R30 K112 ["ThresholdTooltips"]
  LOADK R37 K89 ["SceneBudgetThermometer"]
  LOADK R38 K167 ["MicroprofilerExtraInfo1"]
  NAMECALL R35 R1 K91 ["getText"]
  CALL R35 3 1
  MOVE R32 R35
  LOADK R33 K146 ["<br/>"]
  LOADK R36 K89 ["SceneBudgetThermometer"]
  LOADK R37 K168 ["MicroprofilerExtraInfo2"]
  NAMECALL R34 R1 K91 ["getText"]
  CALL R34 3 1
  CONCAT R31 R32 R34
  SETTABLEKS R31 R30 K113 ["ThresholdExtraInfo"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K169 ["GameRenderMsBar"]
  GETUPVAL R29 2
  GETTABLEKS R28 R29 K30 ["createElement"]
  GETUPVAL R29 5
  DUPTABLE R30 K174 [{"FillAmount", "Text", "MainText", "IsChildRenderBar", "LayoutOrder", "PipCount", "ThresholdTooltips", "ThresholdExtraInfo"}]
  SETTABLEKS R10 R30 K109 ["FillAmount"]
  SETTABLEKS R16 R30 K92 ["Text"]
  LOADK R33 K89 ["SceneBudgetThermometer"]
  LOADK R34 K182 ["PerFrameTaskTime"]
  NAMECALL R31 R1 K91 ["getText"]
  CALL R31 3 1
  SETTABLEKS R31 R30 K110 ["MainText"]
  LOADB R31 1
  SETTABLEKS R31 R30 K137 ["IsChildRenderBar"]
  LOADN R31 3
  SETTABLEKS R31 R30 K62 ["LayoutOrder"]
  GETTABLEKS R31 R0 K17 ["MaxTotalTaskMs"]
  SETTABLEKS R31 R30 K173 ["PipCount"]
  NEWTABLE R31 0 3
  DUPTABLE R32 K125 [{"Threshold", "TitleText", "BodyText"}]
  GETUPVAL R35 6
  GETTABLEKS R34 R35 K120 ["Threshold"]
  GETTABLEKS R33 R34 K126 ["Low"]
  SETTABLEKS R33 R32 K120 ["Threshold"]
  LOADK R35 K89 ["SceneBudgetThermometer"]
  LOADK R36 K183 ["LowTaskThreadUsage"]
  NAMECALL R33 R1 K91 ["getText"]
  CALL R33 3 1
  SETTABLEKS R33 R32 K123 ["TitleText"]
  LOADK R35 K89 ["SceneBudgetThermometer"]
  LOADK R36 K184 ["TaskCPUBudgetLow"]
  NAMECALL R33 R1 K91 ["getText"]
  CALL R33 3 1
  SETTABLEKS R33 R32 K124 ["BodyText"]
  DUPTABLE R33 K125 [{"Threshold", "TitleText", "BodyText"}]
  GETUPVAL R36 6
  GETTABLEKS R35 R36 K120 ["Threshold"]
  GETTABLEKS R34 R35 K121 ["Medium"]
  SETTABLEKS R34 R33 K120 ["Threshold"]
  LOADK R36 K89 ["SceneBudgetThermometer"]
  LOADK R37 K185 ["MediumTaskThreadUsage"]
  NAMECALL R34 R1 K91 ["getText"]
  CALL R34 3 1
  SETTABLEKS R34 R33 K123 ["TitleText"]
  LOADK R36 K89 ["SceneBudgetThermometer"]
  LOADK R37 K186 ["TaskCPUBudgetMedium"]
  NAMECALL R34 R1 K91 ["getText"]
  CALL R34 3 1
  SETTABLEKS R34 R33 K124 ["BodyText"]
  DUPTABLE R34 K125 [{"Threshold", "TitleText", "BodyText"}]
  GETUPVAL R37 6
  GETTABLEKS R36 R37 K120 ["Threshold"]
  GETTABLEKS R35 R36 K122 ["High"]
  SETTABLEKS R35 R34 K120 ["Threshold"]
  LOADK R37 K89 ["SceneBudgetThermometer"]
  LOADK R38 K187 ["HighTaskThreadUsage"]
  NAMECALL R35 R1 K91 ["getText"]
  CALL R35 3 1
  SETTABLEKS R35 R34 K123 ["TitleText"]
  LOADK R41 K89 ["SceneBudgetThermometer"]
  LOADK R42 K188 ["TaskCPUBudgetHigh"]
  NAMECALL R39 R1 K91 ["getText"]
  CALL R39 3 1
  MOVE R36 R39
  LOADK R37 K146 ["<br/>"]
  LOADK R40 K89 ["SceneBudgetThermometer"]
  LOADK R41 K166 ["HighBudgetLowFPS"]
  NAMECALL R38 R1 K91 ["getText"]
  CALL R38 3 1
  CONCAT R35 R36 R38
  SETTABLEKS R35 R34 K124 ["BodyText"]
  SETLIST R31 R32 3 [1]
  SETTABLEKS R31 R30 K112 ["ThresholdTooltips"]
  LOADK R37 K89 ["SceneBudgetThermometer"]
  LOADK R38 K167 ["MicroprofilerExtraInfo1"]
  NAMECALL R35 R1 K91 ["getText"]
  CALL R35 3 1
  MOVE R32 R35
  LOADK R33 K146 ["<br/>"]
  LOADK R36 K89 ["SceneBudgetThermometer"]
  LOADK R37 K168 ["MicroprofilerExtraInfo2"]
  NAMECALL R34 R1 K91 ["getText"]
  CALL R34 3 1
  CONCAT R31 R32 R34
  SETTABLEKS R31 R30 K113 ["ThresholdExtraInfo"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K170 ["ScriptThreadMsBar"]
  GETUPVAL R30 7
  GETTABLEKS R29 R30 K189 ["GetStudioAddPerformanceBridgeMicroprofilerInfo"]
  CALL R29 0 1
  JUMPIFNOT R29 [+67]
  GETUPVAL R29 2
  GETTABLEKS R28 R29 K30 ["createElement"]
  LOADK R29 K31 ["Frame"]
  DUPTABLE R30 K190 [{"LayoutOrder", "Size", "BackgroundTransparency", "AutomaticSize"}]
  LOADN R31 4
  SETTABLEKS R31 R30 K62 ["LayoutOrder"]
  GETIMPORT R31 K36 [UDim2.new]
  LOADN R32 1
  LOADN R33 0
  LOADN R34 0
  LOADN R35 0
  CALL R31 4 1
  SETTABLEKS R31 R30 K37 ["Size"]
  LOADN R31 1
  SETTABLEKS R31 R30 K38 ["BackgroundTransparency"]
  GETIMPORT R31 K73 [Enum.AutomaticSize.Y]
  SETTABLEKS R31 R30 K70 ["AutomaticSize"]
  DUPTABLE R31 K192 [{"MicroprofilerButton"}]
  GETUPVAL R33 2
  GETTABLEKS R32 R33 K30 ["createElement"]
  GETUPVAL R33 8
  DUPTABLE R34 K195 [{"Cursor", "Text", "OnClick", "Position"}]
  LOADK R35 K196 ["PointingHand"]
  SETTABLEKS R35 R34 K193 ["Cursor"]
  GETTABLEKS R36 R0 K197 ["MicroprofilerVisible"]
  JUMPIFNOT R36 [+6]
  LOADK R37 K89 ["SceneBudgetThermometer"]
  LOADK R38 K198 ["CloseMicroprofiler"]
  NAMECALL R35 R1 K91 ["getText"]
  CALL R35 3 1
  JUMPIF R35 [+5]
  LOADK R37 K89 ["SceneBudgetThermometer"]
  LOADK R38 K199 ["OpenMicroprofiler"]
  NAMECALL R35 R1 K91 ["getText"]
  CALL R35 3 1
  SETTABLEKS R35 R34 K92 ["Text"]
  GETTABLEKS R35 R0 K200 ["OnToggleMicroprofiler"]
  SETTABLEKS R35 R34 K194 ["OnClick"]
  GETIMPORT R35 K36 [UDim2.new]
  LOADN R36 0
  LOADN R37 0
  LOADN R38 0
  LOADN R39 0
  CALL R35 4 1
  SETTABLEKS R35 R34 K99 ["Position"]
  CALL R32 2 1
  SETTABLEKS R32 R31 K191 ["MicroprofilerButton"]
  CALL R28 3 1
  JUMPIF R28 [+1]
  LOADNIL R28
  SETTABLEKS R28 R27 K171 ["MicroprofilerButtonFrame"]
  CALL R24 3 1
  SETTABLEKS R24 R23 K104 ["ExpandingContent"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K43 ["CPUDrawer"]
  GETUPVAL R22 2
  GETTABLEKS R21 R22 K30 ["createElement"]
  LOADK R22 K31 ["Frame"]
  DUPTABLE R23 K190 [{"LayoutOrder", "Size", "BackgroundTransparency", "AutomaticSize"}]
  LOADN R24 4
  SETTABLEKS R24 R23 K62 ["LayoutOrder"]
  GETIMPORT R24 K36 [UDim2.new]
  LOADN R25 1
  LOADN R26 0
  LOADN R27 0
  LOADN R28 0
  CALL R24 4 1
  SETTABLEKS R24 R23 K37 ["Size"]
  LOADN R24 1
  SETTABLEKS R24 R23 K38 ["BackgroundTransparency"]
  GETIMPORT R24 K73 [Enum.AutomaticSize.Y]
  SETTABLEKS R24 R23 K70 ["AutomaticSize"]
  DUPTABLE R24 K202 [{"SettingsButton"}]
  GETUPVAL R26 2
  GETTABLEKS R25 R26 K30 ["createElement"]
  GETUPVAL R26 8
  DUPTABLE R27 K204 [{"LeftIcon", "Cursor", "Text", "OnClick", "Position"}]
  LOADK R28 K205 ["rbxasset://textures/ui/Settings/MenuBarIcons/GameSettingsTab@2x.png"]
  SETTABLEKS R28 R27 K203 ["LeftIcon"]
  LOADK R28 K196 ["PointingHand"]
  SETTABLEKS R28 R27 K193 ["Cursor"]
  LOADK R30 K206 ["General"]
  LOADK R31 K207 ["Settings"]
  NAMECALL R28 R1 K91 ["getText"]
  CALL R28 3 1
  SETTABLEKS R28 R27 K92 ["Text"]
  GETTABLEKS R28 R0 K208 ["OnOpenSettings"]
  SETTABLEKS R28 R27 K194 ["OnClick"]
  GETIMPORT R28 K36 [UDim2.new]
  LOADN R29 0
  LOADN R30 0
  LOADN R31 0
  LOADN R32 0
  CALL R28 4 1
  SETTABLEKS R28 R27 K99 ["Position"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K201 ["SettingsButton"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K44 ["SettingsButtonFrame"]
  GETTABLEKS R22 R0 K13 ["IsEditMode"]
  JUMPIFNOT R22 [+143]
  GETUPVAL R22 2
  GETTABLEKS R21 R22 K30 ["createElement"]
  LOADK R22 K31 ["Frame"]
  NEWTABLE R23 4 0
  GETUPVAL R25 2
  GETTABLEKS R24 R25 K32 ["Tag"]
  LOADK R25 K80 ["X-Fit X-Row X-Corner"]
  SETTABLE R25 R23 R24
  LOADN R24 1
  SETTABLEKS R24 R23 K38 ["BackgroundTransparency"]
  LOADN R24 5
  SETTABLEKS R24 R23 K62 ["LayoutOrder"]
  DUPTABLE R24 K210 [{"Layout", "Padding", "InformationImageLabel", "EditDMWarningLabel"}]
  GETUPVAL R26 2
  GETTABLEKS R25 R26 K30 ["createElement"]
  LOADK R26 K47 ["UIListLayout"]
  DUPTABLE R27 K52 [{"Padding", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
  GETIMPORT R28 K54 [UDim.new]
  LOADN R29 0
  LOADN R30 5
  CALL R28 2 1
  SETTABLEKS R28 R27 K40 ["Padding"]
  GETIMPORT R28 K57 [Enum.FillDirection.Vertical]
  SETTABLEKS R28 R27 K48 ["FillDirection"]
  GETIMPORT R28 K59 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R28 R27 K49 ["HorizontalAlignment"]
  GETIMPORT R28 K79 [Enum.VerticalAlignment.Center]
  SETTABLEKS R28 R27 K50 ["VerticalAlignment"]
  GETIMPORT R28 K63 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R28 R27 K51 ["SortOrder"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K39 ["Layout"]
  GETUPVAL R26 2
  GETTABLEKS R25 R26 K30 ["createElement"]
  LOADK R26 K64 ["UIPadding"]
  DUPTABLE R27 K69 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R28 K54 [UDim.new]
  LOADN R29 0
  LOADN R30 0
  CALL R28 2 1
  SETTABLEKS R28 R27 K65 ["PaddingTop"]
  GETIMPORT R28 K54 [UDim.new]
  LOADN R29 0
  LOADN R30 0
  CALL R28 2 1
  SETTABLEKS R28 R27 K66 ["PaddingBottom"]
  GETIMPORT R28 K54 [UDim.new]
  LOADN R29 0
  LOADN R30 0
  CALL R28 2 1
  SETTABLEKS R28 R27 K67 ["PaddingLeft"]
  GETIMPORT R28 K54 [UDim.new]
  LOADN R29 0
  LOADN R30 0
  CALL R28 2 1
  SETTABLEKS R28 R27 K68 ["PaddingRight"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K40 ["Padding"]
  GETUPVAL R26 2
  GETTABLEKS R25 R26 K30 ["createElement"]
  LOADK R26 K85 ["ImageLabel"]
  NEWTABLE R27 4 0
  GETUPVAL R29 2
  GETTABLEKS R28 R29 K32 ["Tag"]
  LOADK R29 K86 ["InformationLabel"]
  SETTABLE R29 R27 R28
  GETIMPORT R28 K36 [UDim2.new]
  LOADN R29 0
  LOADN R30 16
  LOADN R31 0
  LOADN R32 16
  CALL R28 4 1
  SETTABLEKS R28 R27 K37 ["Size"]
  LOADN R28 1
  SETTABLEKS R28 R27 K38 ["BackgroundTransparency"]
  LOADN R28 1
  SETTABLEKS R28 R27 K62 ["LayoutOrder"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K82 ["InformationImageLabel"]
  GETUPVAL R26 2
  GETTABLEKS R25 R26 K30 ["createElement"]
  LOADK R26 K87 ["TextLabel"]
  NEWTABLE R27 4 0
  GETUPVAL R29 2
  GETTABLEKS R28 R29 K32 ["Tag"]
  LOADK R29 K88 ["X-Fit"]
  SETTABLE R29 R27 R28
  LOADK R30 K89 ["SceneBudgetThermometer"]
  LOADK R31 K45 ["EditDMWarning"]
  NAMECALL R28 R1 K91 ["getText"]
  CALL R28 3 1
  SETTABLEKS R28 R27 K92 ["Text"]
  LOADB R28 1
  SETTABLEKS R28 R27 K93 ["TextWrapped"]
  LOADN R28 2
  SETTABLEKS R28 R27 K62 ["LayoutOrder"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K209 ["EditDMWarningLabel"]
  CALL R21 3 1
  JUMPIF R21 [+1]
  LOADNIL R21
  SETTABLEKS R21 R20 K45 ["EditDMWarning"]
  CALL R17 3 -1
  RETURN R17 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["PerformanceTools"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K9 ["UI"]
  GETTABLEKS R3 R4 K10 ["IconButton"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K11 ["Src"]
  GETTABLEKS R6 R7 K12 ["Components"]
  GETTABLEKS R5 R6 K13 ["MeasuringBar"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K6 ["Packages"]
  GETTABLEKS R6 R7 K14 ["LocalizeLargeNumber"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K11 ["Src"]
  GETTABLEKS R8 R9 K12 ["Components"]
  GETTABLEKS R7 R8 K15 ["DropdownDrawer"]
  CALL R6 1 1
  GETTABLEKS R7 R2 K16 ["ContextServices"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K17 ["Bin"]
  GETTABLEKS R10 R11 K18 ["Common"]
  GETTABLEKS R9 R10 K19 ["DefineLuaFlags"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K11 ["Src"]
  GETTABLEKS R11 R12 K12 ["Components"]
  GETTABLEKS R10 R11 K20 ["QualitySettings"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K11 ["Src"]
  GETTABLEKS R12 R13 K21 ["Util"]
  GETTABLEKS R11 R12 K22 ["ThermometerEnums"]
  CALL R10 1 1
  DUPCLOSURE R11 K23 [PROTO_0]
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R1
  CAPTURE VAL R9
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R10
  CAPTURE VAL R8
  CAPTURE VAL R3
  RETURN R11 1
