PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K5 [{"Size", "backgroundStyle", "LayoutOrder", "tag"}]
  GETTABLEKS R4 R0 K6 ["size"]
  JUMPIF R4 [+9]
  GETIMPORT R4 K9 [UDim2.new]
  LOADN R5 0
  GETTABLEKS R7 R0 K11 ["width"]
  ORK R6 R7 K10 [0]
  LOADN R7 1
  LOADN R8 0
  CALL R4 4 1
  SETTABLEKS R4 R3 K1 ["Size"]
  GETTABLEKS R4 R0 K2 ["backgroundStyle"]
  SETTABLEKS R4 R3 K2 ["backgroundStyle"]
  GETTABLEKS R4 R0 K3 ["LayoutOrder"]
  SETTABLEKS R4 R3 K3 ["LayoutOrder"]
  GETTABLEKS R4 R0 K4 ["tag"]
  SETTABLEKS R4 R3 K4 ["tag"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_1:
  GETUPVAL R1 0
  MOVE R2 R0
  GETUPVAL R3 1
  CALL R1 2 1
  GETUPVAL R2 2
  CALL R2 0 1
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K0 ["useState"]
  LOADNIL R4
  CALL R3 1 2
  GETUPVAL R5 4
  CALL R5 0 1
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K0 ["useState"]
  LOADNIL R7
  CALL R6 1 2
  GETUPVAL R8 5
  MOVE R9 R6
  CALL R8 1 2
  GETUPVAL R10 6
  GETTABLEKS R11 R5 K1 ["config"]
  MOVE R12 R8
  GETTABLEKS R13 R9 K2 ["X"]
  CALL R10 3 1
  GETTABLEKS R14 R5 K1 ["config"]
  GETTABLEKS R13 R14 K3 ["breakpoint"]
  GETTABLEKS R12 R13 K4 ["widths"]
  GETUPVAL R14 7
  GETTABLEKS R13 R14 K5 ["XLarge"]
  GETTABLE R11 R12 R13
  NEWTABLE R12 0 0
  NEWTABLE R14 4 0
  GETIMPORT R15 K9 [Enum.ItemLineAlignment.Start]
  LOADK R16 K10 ["position-top-left anchor-top-left"]
  SETTABLE R16 R14 R15
  GETIMPORT R15 K12 [Enum.ItemLineAlignment.Center]
  LOADK R16 K13 ["position-top-center anchor-top-center"]
  SETTABLE R16 R14 R15
  GETIMPORT R15 K15 [Enum.ItemLineAlignment.End]
  LOADK R16 K16 ["position-top-right anchor-top-right"]
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R1 K17 ["align"]
  GETTABLE R13 R14 R15
  LOADN R16 1
  GETTABLEKS R18 R10 K19 ["full"]
  GETTABLEKS R17 R18 K20 ["colCount"]
  SUBK R14 R17 K18 [1]
  LOADN R15 1
  FORNPREP R14
  GETTABLEKS R18 R10 K19 ["full"]
  GETTABLEKS R17 R18 K20 ["colCount"]
  JUMPIFNOTLT R16 R17 [+42]
  MOVE R18 R12
  GETUPVAL R20 3
  GETTABLEKS R19 R20 K21 ["createElement"]
  GETUPVAL R20 8
  DUPTABLE R21 K26 [{"key", "width", "backgroundStyle", "LayoutOrder"}]
  LOADK R23 K27 ["DebugCol%*"]
  MOVE R25 R16
  NAMECALL R23 R23 K28 ["format"]
  CALL R23 2 1
  MOVE R22 R23
  SETTABLEKS R22 R21 K22 ["key"]
  GETTABLEKS R22 R10 K29 ["gutterWidth"]
  SETTABLEKS R22 R21 K23 ["width"]
  DUPTABLE R22 K32 [{"Color3", "Transparency"}]
  GETTABLEKS R26 R2 K33 ["Color"]
  GETTABLEKS R25 R26 K34 ["System"]
  GETTABLEKS R24 R25 K35 ["Alert"]
  GETTABLEKS R23 R24 K30 ["Color3"]
  SETTABLEKS R23 R22 K30 ["Color3"]
  LOADK R23 K36 [0.5]
  SETTABLEKS R23 R22 K31 ["Transparency"]
  SETTABLEKS R22 R21 K24 ["backgroundStyle"]
  SETTABLEKS R16 R21 K25 ["LayoutOrder"]
  CALL R19 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R17 K39 [table.insert]
  CALL R17 -1 0
  FORNLOOP R14
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K21 ["createElement"]
  GETUPVAL R15 9
  DUPTABLE R16 K41 [{"tag"}]
  LOADK R18 K42 ["size-full-full %*"]
  MOVE R20 R13
  NAMECALL R18 R18 K28 ["format"]
  CALL R18 2 1
  MOVE R17 R18
  SETTABLEKS R17 R16 K40 ["tag"]
  DUPTABLE R17 K50 [{"GridDebugStyleSheet", "GridDebugMeasureWrapper", "GridDebugMeasure", "GridDebugSizeConstraint", "GridDebugSizeLabel", "GridDebug", "GridDebugContent"}]
  GETUPVAL R19 3
  GETTABLEKS R18 R19 K21 ["createElement"]
  GETUPVAL R19 10
  DUPTABLE R20 K52 [{"breakpoint", "ref"}]
  SETTABLEKS R8 R20 K3 ["breakpoint"]
  SETTABLEKS R4 R20 K51 ["ref"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K43 ["GridDebugStyleSheet"]
  GETUPVAL R19 3
  GETTABLEKS R18 R19 K21 ["createElement"]
  GETUPVAL R19 9
  DUPTABLE R20 K53 [{"ref", "tag"}]
  SETTABLEKS R7 R20 K51 ["ref"]
  LOADK R21 K54 ["size-full-0"]
  SETTABLEKS R21 R20 K40 ["tag"]
  DUPTABLE R21 K56 [{"GridMeasureSizeConstraint"}]
  GETUPVAL R23 3
  GETTABLEKS R22 R23 K21 ["createElement"]
  LOADK R23 K57 ["UISizeConstraint"]
  DUPTABLE R24 K59 [{"MaxSize"}]
  GETIMPORT R25 K62 [Vector2.new]
  MOVE R26 R11
  LOADK R27 K63 [∞]
  CALL R25 2 1
  SETTABLEKS R25 R24 K58 ["MaxSize"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K55 ["GridMeasureSizeConstraint"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K44 ["GridDebugMeasureWrapper"]
  GETUPVAL R19 3
  GETTABLEKS R18 R19 K21 ["createElement"]
  GETUPVAL R19 9
  DUPTABLE R20 K65 [{"Size", "backgroundStyle"}]
  GETIMPORT R21 K67 [UDim2.new]
  LOADN R22 1
  LOADN R23 0
  LOADN R24 0
  LOADN R25 4
  CALL R21 4 1
  SETTABLEKS R21 R20 K64 ["Size"]
  DUPTABLE R21 K32 [{"Color3", "Transparency"}]
  GETIMPORT R22 K69 [Color3.fromRGB]
  LOADN R23 255
  LOADN R24 0
  LOADN R25 0
  CALL R22 3 1
  SETTABLEKS R22 R21 K30 ["Color3"]
  GETTABLEKS R22 R1 K70 ["debugTransparency"]
  SETTABLEKS R22 R21 K31 ["Transparency"]
  SETTABLEKS R21 R20 K24 ["backgroundStyle"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K45 ["GridDebugMeasure"]
  GETUPVAL R19 3
  GETTABLEKS R18 R19 K21 ["createElement"]
  LOADK R19 K57 ["UISizeConstraint"]
  DUPTABLE R20 K59 [{"MaxSize"}]
  GETIMPORT R21 K62 [Vector2.new]
  MOVE R22 R11
  LOADK R23 K63 [∞]
  CALL R21 2 1
  SETTABLEKS R21 R20 K58 ["MaxSize"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K46 ["GridDebugSizeConstraint"]
  GETUPVAL R19 3
  GETTABLEKS R18 R19 K21 ["createElement"]
  GETUPVAL R19 11
  DUPTABLE R20 K72 [{"tag", "Text"}]
  LOADK R21 K73 ["text-label-small position-top-center anchor-top-center auto-xy bg-over-media-300 padding-xxsmall text-truncate-end"]
  SETTABLEKS R21 R20 K40 ["tag"]
  LOADK R22 K74 ["breakpoint: %*, width: %*, columns: %*, maxWidth: %*, margin: %*, gapWidth: %*"]
  GETTABLEKS R27 R5 K1 ["config"]
  GETTABLEKS R26 R27 K3 ["breakpoint"]
  GETTABLEKS R25 R26 K75 ["shortNames"]
  GETTABLE R24 R25 R8
  GETTABLEKS R25 R9 K2 ["X"]
  GETTABLEKS R27 R10 K19 ["full"]
  GETTABLEKS R26 R27 K20 ["colCount"]
  MOVE R27 R11
  GETTABLEKS R28 R10 K76 ["margin"]
  GETTABLEKS R29 R10 K29 ["gutterWidth"]
  NAMECALL R22 R22 K28 ["format"]
  CALL R22 7 1
  MOVE R21 R22
  SETTABLEKS R21 R20 K71 ["Text"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K47 ["GridDebugSizeLabel"]
  GETUPVAL R19 3
  GETTABLEKS R18 R19 K21 ["createElement"]
  GETUPVAL R19 9
  DUPTABLE R20 K77 [{"tag", "backgroundStyle"}]
  LOADK R21 K78 ["size-full-full row"]
  SETTABLEKS R21 R20 K40 ["tag"]
  DUPTABLE R21 K32 [{"Color3", "Transparency"}]
  GETTABLEKS R25 R2 K33 ["Color"]
  GETTABLEKS R24 R25 K34 ["System"]
  GETTABLEKS R23 R24 K79 ["Emphasis"]
  GETTABLEKS R22 R23 K30 ["Color3"]
  SETTABLEKS R22 R21 K30 ["Color3"]
  GETTABLEKS R22 R1 K70 ["debugTransparency"]
  SETTABLEKS R22 R21 K31 ["Transparency"]
  SETTABLEKS R21 R20 K24 ["backgroundStyle"]
  DUPTABLE R21 K83 [{"LeftMargin", "Columns", "RightMargin"}]
  GETUPVAL R23 3
  GETTABLEKS R22 R23 K21 ["createElement"]
  GETUPVAL R23 8
  DUPTABLE R24 K84 [{"width", "backgroundStyle", "LayoutOrder"}]
  GETTABLEKS R25 R10 K76 ["margin"]
  SETTABLEKS R25 R24 K23 ["width"]
  DUPTABLE R25 K32 [{"Color3", "Transparency"}]
  GETTABLEKS R29 R2 K33 ["Color"]
  GETTABLEKS R28 R29 K34 ["System"]
  GETTABLEKS R27 R28 K85 ["Warning"]
  GETTABLEKS R26 R27 K30 ["Color3"]
  SETTABLEKS R26 R25 K30 ["Color3"]
  GETTABLEKS R26 R1 K70 ["debugTransparency"]
  SETTABLEKS R26 R25 K31 ["Transparency"]
  SETTABLEKS R25 R24 K24 ["backgroundStyle"]
  LOADN R25 0
  SETTABLEKS R25 R24 K25 ["LayoutOrder"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K80 ["LeftMargin"]
  GETUPVAL R23 3
  GETTABLEKS R22 R23 K21 ["createElement"]
  GETUPVAL R23 9
  DUPTABLE R24 K86 [{"tag", "backgroundStyle", "LayoutOrder"}]
  LOADK R25 K87 ["size-0-full row fill flex-x-evenly"]
  SETTABLEKS R25 R24 K40 ["tag"]
  DUPTABLE R25 K32 [{"Color3", "Transparency"}]
  GETTABLEKS R29 R2 K33 ["Color"]
  GETTABLEKS R28 R29 K34 ["System"]
  GETTABLEKS R27 R28 K79 ["Emphasis"]
  GETTABLEKS R26 R27 K30 ["Color3"]
  SETTABLEKS R26 R25 K30 ["Color3"]
  GETTABLEKS R26 R1 K70 ["debugTransparency"]
  SETTABLEKS R26 R25 K31 ["Transparency"]
  SETTABLEKS R25 R24 K24 ["backgroundStyle"]
  LOADN R25 1
  SETTABLEKS R25 R24 K25 ["LayoutOrder"]
  MOVE R25 R12
  CALL R22 3 1
  SETTABLEKS R22 R21 K81 ["Columns"]
  GETUPVAL R23 3
  GETTABLEKS R22 R23 K21 ["createElement"]
  GETUPVAL R23 8
  DUPTABLE R24 K84 [{"width", "backgroundStyle", "LayoutOrder"}]
  GETTABLEKS R25 R10 K76 ["margin"]
  SETTABLEKS R25 R24 K23 ["width"]
  DUPTABLE R25 K32 [{"Color3", "Transparency"}]
  GETTABLEKS R29 R2 K33 ["Color"]
  GETTABLEKS R28 R29 K34 ["System"]
  GETTABLEKS R27 R28 K85 ["Warning"]
  GETTABLEKS R26 R27 K30 ["Color3"]
  SETTABLEKS R26 R25 K30 ["Color3"]
  GETTABLEKS R26 R1 K70 ["debugTransparency"]
  SETTABLEKS R26 R25 K31 ["Transparency"]
  SETTABLEKS R25 R24 K24 ["backgroundStyle"]
  LOADN R25 2
  SETTABLEKS R25 R24 K25 ["LayoutOrder"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K82 ["RightMargin"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K48 ["GridDebug"]
  JUMPIFNOT R3 [+50]
  GETUPVAL R19 3
  GETTABLEKS R18 R19 K21 ["createElement"]
  GETUPVAL R20 12
  GETTABLEKS R19 R20 K88 ["Provider"]
  DUPTABLE R20 K90 [{"value"}]
  SETTABLEKS R3 R20 K89 ["value"]
  GETUPVAL R22 3
  GETTABLEKS R21 R22 K21 ["createElement"]
  GETUPVAL R22 9
  DUPTABLE R23 K41 [{"tag"}]
  LOADK R24 K91 ["size-full-full"]
  SETTABLEKS R24 R23 K40 ["tag"]
  DUPTABLE R24 K94 [{"GridDebugPadding", "GridDebugChildren"}]
  GETUPVAL R26 3
  GETTABLEKS R25 R26 K21 ["createElement"]
  LOADK R26 K95 ["UIPadding"]
  DUPTABLE R27 K97 [{"PaddingTop"}]
  GETIMPORT R28 K99 [UDim.new]
  LOADN R29 0
  GETTABLEKS R31 R10 K101 ["gapHeight"]
  MULK R30 R31 K100 [2]
  CALL R28 2 1
  SETTABLEKS R28 R27 K96 ["PaddingTop"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K92 ["GridDebugPadding"]
  GETUPVAL R26 3
  GETTABLEKS R25 R26 K21 ["createElement"]
  GETUPVAL R27 3
  GETTABLEKS R26 R27 K102 ["Fragment"]
  LOADNIL R27
  GETTABLEKS R28 R0 K103 ["children"]
  CALL R25 3 1
  SETTABLEKS R25 R24 K93 ["GridDebugChildren"]
  CALL R21 3 -1
  CALL R18 -1 1
  JUMP [+1]
  LOADNIL R18
  SETTABLEKS R18 R17 K49 ["GridDebugContent"]
  CALL R14 3 -1
  RETURN R14 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Foundation"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Parent"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R5 R0 K8 ["Components"]
  GETTABLEKS R4 R5 K9 ["View"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R0 K8 ["Components"]
  GETTABLEKS R5 R6 K10 ["Text"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R8 R0 K11 ["Providers"]
  GETTABLEKS R7 R8 K12 ["Style"]
  GETTABLEKS R6 R7 K13 ["useTokens"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R8 R0 K14 ["Utility"]
  GETTABLEKS R7 R8 K15 ["withDefaults"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R9 R0 K16 ["Enums"]
  GETTABLEKS R8 R9 K17 ["Breakpoint"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R11 R0 K11 ["Providers"]
  GETTABLEKS R10 R11 K18 ["Responsive"]
  GETTABLEKS R9 R10 K19 ["useResponsive"]
  CALL R8 1 1
  GETIMPORT R9 K6 [require]
  GETTABLEKS R13 R0 K11 ["Providers"]
  GETTABLEKS R12 R13 K18 ["Responsive"]
  GETTABLEKS R11 R12 K20 ["Hooks"]
  GETTABLEKS R10 R11 K21 ["useBreakpoint"]
  CALL R9 1 1
  GETIMPORT R10 K6 [require]
  GETTABLEKS R12 R0 K14 ["Utility"]
  GETTABLEKS R11 R12 K22 ["getGridMetrics"]
  CALL R10 1 1
  GETIMPORT R11 K6 [require]
  GETIMPORT R14 K1 [script]
  GETTABLEKS R13 R14 K4 ["Parent"]
  GETTABLEKS R12 R13 K23 ["GridDebugStyleSheet"]
  CALL R11 1 1
  GETIMPORT R12 K6 [require]
  GETTABLEKS R15 R0 K11 ["Providers"]
  GETTABLEKS R14 R15 K12 ["Style"]
  GETTABLEKS R13 R14 K24 ["StyleSheetContext"]
  CALL R12 1 1
  DUPCLOSURE R13 K25 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R3
  DUPTABLE R14 K27 [{"debugTransparency"}]
  LOADK R15 K28 [0.7]
  SETTABLEKS R15 R14 K26 ["debugTransparency"]
  DUPCLOSURE R15 K29 [PROTO_1]
  CAPTURE VAL R6
  CAPTURE VAL R14
  CAPTURE VAL R5
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R7
  CAPTURE VAL R13
  CAPTURE VAL R3
  CAPTURE VAL R11
  CAPTURE VAL R4
  CAPTURE VAL R12
  RETURN R15 1
