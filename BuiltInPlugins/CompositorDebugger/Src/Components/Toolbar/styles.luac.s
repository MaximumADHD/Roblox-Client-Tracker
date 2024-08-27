MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CompositorDebugger"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleRule"]
  MOVE R3 R2
  LOADK R4 K10 [".Toolbar"]
  NEWTABLE R5 0 0
  NEWTABLE R6 0 4
  MOVE R7 R2
  LOADK R8 K11 ["::UIPadding"]
  DUPTABLE R9 K14 [{"PaddingLeft", "PaddingRight"}]
  GETIMPORT R10 K17 [UDim.new]
  LOADN R11 0
  LOADN R12 10
  CALL R10 2 1
  SETTABLEKS R10 R9 K12 ["PaddingLeft"]
  GETIMPORT R10 K17 [UDim.new]
  LOADN R11 0
  LOADN R12 10
  CALL R10 2 1
  SETTABLEKS R10 R9 K13 ["PaddingRight"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K18 ["> .MediaButton"]
  DUPTABLE R10 K23 [{"BackgroundColor3", "BackgroundTransparency", "Size", "TextColor3"}]
  LOADK R11 K24 ["$PrimaryMain"]
  SETTABLEKS R11 R10 K19 ["BackgroundColor3"]
  LOADN R11 0
  SETTABLEKS R11 R10 K20 ["BackgroundTransparency"]
  GETIMPORT R11 K27 [UDim2.fromOffset]
  LOADN R12 20
  LOADN R13 20
  CALL R11 2 1
  SETTABLEKS R11 R10 K21 ["Size"]
  LOADK R11 K28 ["$TextPrimary"]
  SETTABLEKS R11 R10 K22 ["TextColor3"]
  NEWTABLE R11 0 1
  MOVE R12 R2
  LOADK R13 K29 [":hover"]
  DUPTABLE R14 K30 [{"BackgroundColor3"}]
  LOADK R15 K31 ["$PrimaryHoverBackground"]
  SETTABLEKS R15 R14 K19 ["BackgroundColor3"]
  CALL R12 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R2
  LOADK R10 K32 [">> #Icon"]
  DUPTABLE R11 K36 [{"Size", "Position", "AnchorPoint", "ImageColor3"}]
  GETIMPORT R12 K27 [UDim2.fromOffset]
  LOADN R13 20
  LOADN R14 20
  CALL R12 2 1
  SETTABLEKS R12 R11 K21 ["Size"]
  GETIMPORT R12 K38 [UDim2.fromScale]
  LOADK R13 K39 [0.5]
  LOADK R14 K39 [0.5]
  CALL R12 2 1
  SETTABLEKS R12 R11 K33 ["Position"]
  GETIMPORT R12 K41 [Vector2.new]
  LOADK R13 K39 [0.5]
  LOADK R14 K39 [0.5]
  CALL R12 2 1
  SETTABLEKS R12 R11 K34 ["AnchorPoint"]
  LOADK R12 K28 ["$TextPrimary"]
  SETTABLEKS R12 R11 K35 ["ImageColor3"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K42 ["> .Timeline"]
  DUPTABLE R12 K43 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R13 K44 ["$BackgroundPaper"]
  SETTABLEKS R13 R12 K19 ["BackgroundColor3"]
  LOADN R13 0
  SETTABLEKS R13 R12 K20 ["BackgroundTransparency"]
  NEWTABLE R13 0 7
  MOVE R14 R2
  LOADK R15 K45 ["> .LBorder"]
  NEWTABLE R16 0 0
  NEWTABLE R17 0 2
  MOVE R18 R2
  LOADK R19 K46 ["> .Tick"]
  DUPTABLE R20 K47 [{"Size", "BackgroundColor3", "BackgroundTransparency"}]
  GETIMPORT R21 K48 [UDim2.new]
  LOADN R22 0
  LOADN R23 2
  LOADN R24 1
  LOADN R25 0
  CALL R21 4 1
  SETTABLEKS R21 R20 K21 ["Size"]
  LOADK R21 K49 ["$TextDisabled"]
  SETTABLEKS R21 R20 K19 ["BackgroundColor3"]
  LOADN R21 0
  SETTABLEKS R21 R20 K20 ["BackgroundTransparency"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K50 ["> .Label"]
  DUPTABLE R21 K54 [{"AnchorPoint", "Position", "TextXAlignment", "TextYAlignment", "TextColor3", "TextSize"}]
  GETIMPORT R22 K41 [Vector2.new]
  LOADN R23 0
  LOADN R24 0
  CALL R22 2 1
  SETTABLEKS R22 R21 K34 ["AnchorPoint"]
  GETIMPORT R22 K48 [UDim2.new]
  LOADN R23 0
  LOADN R24 3
  LOADN R25 0
  LOADN R26 0
  CALL R22 4 1
  SETTABLEKS R22 R21 K33 ["Position"]
  GETIMPORT R22 K57 [Enum.TextXAlignment.Left]
  SETTABLEKS R22 R21 K51 ["TextXAlignment"]
  GETIMPORT R22 K59 [Enum.TextYAlignment.Top]
  SETTABLEKS R22 R21 K52 ["TextYAlignment"]
  LOADK R22 K49 ["$TextDisabled"]
  SETTABLEKS R22 R21 K22 ["TextColor3"]
  LOADN R22 14
  SETTABLEKS R22 R21 K53 ["TextSize"]
  CALL R19 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K60 ["> .RBorder"]
  NEWTABLE R17 0 0
  NEWTABLE R18 0 2
  MOVE R19 R2
  LOADK R20 K46 ["> .Tick"]
  DUPTABLE R21 K47 [{"Size", "BackgroundColor3", "BackgroundTransparency"}]
  GETIMPORT R22 K48 [UDim2.new]
  LOADN R23 0
  LOADN R24 2
  LOADN R25 1
  LOADN R26 0
  CALL R22 4 1
  SETTABLEKS R22 R21 K21 ["Size"]
  LOADK R22 K49 ["$TextDisabled"]
  SETTABLEKS R22 R21 K19 ["BackgroundColor3"]
  LOADN R22 0
  SETTABLEKS R22 R21 K20 ["BackgroundTransparency"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K50 ["> .Label"]
  DUPTABLE R22 K54 [{"AnchorPoint", "Position", "TextXAlignment", "TextYAlignment", "TextColor3", "TextSize"}]
  GETIMPORT R23 K41 [Vector2.new]
  LOADN R24 1
  LOADN R25 0
  CALL R23 2 1
  SETTABLEKS R23 R22 K34 ["AnchorPoint"]
  GETIMPORT R23 K48 [UDim2.new]
  LOADN R24 0
  LOADN R25 253
  LOADN R26 0
  LOADN R27 0
  CALL R23 4 1
  SETTABLEKS R23 R22 K33 ["Position"]
  GETIMPORT R23 K62 [Enum.TextXAlignment.Right]
  SETTABLEKS R23 R22 K51 ["TextXAlignment"]
  GETIMPORT R23 K59 [Enum.TextYAlignment.Top]
  SETTABLEKS R23 R22 K52 ["TextYAlignment"]
  LOADK R23 K49 ["$TextDisabled"]
  SETTABLEKS R23 R22 K22 ["TextColor3"]
  LOADN R23 14
  SETTABLEKS R23 R22 K53 ["TextSize"]
  CALL R20 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K63 ["> .Major"]
  NEWTABLE R18 0 0
  NEWTABLE R19 0 2
  MOVE R20 R2
  LOADK R21 K46 ["> .Tick"]
  DUPTABLE R22 K47 [{"Size", "BackgroundColor3", "BackgroundTransparency"}]
  GETIMPORT R23 K48 [UDim2.new]
  LOADN R24 0
  LOADN R25 1
  LOADK R26 K64 [0.6]
  LOADN R27 0
  CALL R23 4 1
  SETTABLEKS R23 R22 K21 ["Size"]
  LOADK R23 K49 ["$TextDisabled"]
  SETTABLEKS R23 R22 K19 ["BackgroundColor3"]
  LOADN R23 0
  SETTABLEKS R23 R22 K20 ["BackgroundTransparency"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K50 ["> .Label"]
  DUPTABLE R23 K54 [{"AnchorPoint", "Position", "TextXAlignment", "TextYAlignment", "TextColor3", "TextSize"}]
  GETIMPORT R24 K41 [Vector2.new]
  LOADN R25 0
  LOADN R26 0
  CALL R24 2 1
  SETTABLEKS R24 R23 K34 ["AnchorPoint"]
  GETIMPORT R24 K48 [UDim2.new]
  LOADN R25 0
  LOADN R26 3
  LOADN R27 0
  LOADN R28 0
  CALL R24 4 1
  SETTABLEKS R24 R23 K33 ["Position"]
  GETIMPORT R24 K57 [Enum.TextXAlignment.Left]
  SETTABLEKS R24 R23 K51 ["TextXAlignment"]
  GETIMPORT R24 K59 [Enum.TextYAlignment.Top]
  SETTABLEKS R24 R23 K52 ["TextYAlignment"]
  LOADK R24 K49 ["$TextDisabled"]
  SETTABLEKS R24 R23 K22 ["TextColor3"]
  LOADN R24 14
  SETTABLEKS R24 R23 K53 ["TextSize"]
  CALL R21 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K65 ["> .Medium"]
  NEWTABLE R19 0 0
  NEWTABLE R20 0 2
  MOVE R21 R2
  LOADK R22 K46 ["> .Tick"]
  DUPTABLE R23 K47 [{"Size", "BackgroundColor3", "BackgroundTransparency"}]
  GETIMPORT R24 K48 [UDim2.new]
  LOADN R25 0
  LOADN R26 1
  LOADK R27 K66 [0.4]
  LOADN R28 0
  CALL R24 4 1
  SETTABLEKS R24 R23 K21 ["Size"]
  LOADK R24 K49 ["$TextDisabled"]
  SETTABLEKS R24 R23 K19 ["BackgroundColor3"]
  LOADN R24 0
  SETTABLEKS R24 R23 K20 ["BackgroundTransparency"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K50 ["> .Label"]
  DUPTABLE R24 K68 [{"Visible"}]
  LOADB R25 0
  SETTABLEKS R25 R24 K67 ["Visible"]
  CALL R22 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K69 ["> .Minor"]
  NEWTABLE R20 0 0
  NEWTABLE R21 0 2
  MOVE R22 R2
  LOADK R23 K46 ["> .Tick"]
  DUPTABLE R24 K47 [{"Size", "BackgroundColor3", "BackgroundTransparency"}]
  GETIMPORT R25 K48 [UDim2.new]
  LOADN R26 0
  LOADN R27 1
  LOADK R28 K70 [0.2]
  LOADN R29 0
  CALL R25 4 1
  SETTABLEKS R25 R24 K21 ["Size"]
  LOADK R25 K49 ["$TextDisabled"]
  SETTABLEKS R25 R24 K19 ["BackgroundColor3"]
  LOADN R25 0
  SETTABLEKS R25 R24 K20 ["BackgroundTransparency"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K50 ["> .Label"]
  DUPTABLE R25 K68 [{"Visible"}]
  LOADB R26 0
  SETTABLEKS R26 R25 K67 ["Visible"]
  CALL R23 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K71 ["> #BufferBar"]
  DUPTABLE R21 K72 [{"BackgroundColor3", "BackgroundTransparency", "AnchorPoint", "Position"}]
  LOADK R22 K31 ["$PrimaryHoverBackground"]
  SETTABLEKS R22 R21 K19 ["BackgroundColor3"]
  LOADK R22 K39 [0.5]
  SETTABLEKS R22 R21 K20 ["BackgroundTransparency"]
  GETIMPORT R22 K41 [Vector2.new]
  LOADN R23 1
  LOADN R24 1
  CALL R22 2 1
  SETTABLEKS R22 R21 K34 ["AnchorPoint"]
  GETIMPORT R22 K38 [UDim2.fromScale]
  LOADN R23 1
  LOADN R24 1
  CALL R22 2 1
  SETTABLEKS R22 R21 K33 ["Position"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K73 [">> .Scrubber"]
  DUPTABLE R22 K74 [{"AnchorPoint", "BackgroundColor3", "BackgroundTransparency"}]
  GETIMPORT R23 K41 [Vector2.new]
  LOADK R24 K39 [0.5]
  LOADN R25 0
  CALL R23 2 1
  SETTABLEKS R23 R22 K34 ["AnchorPoint"]
  LOADK R23 K24 ["$PrimaryMain"]
  SETTABLEKS R23 R22 K19 ["BackgroundColor3"]
  LOADN R23 0
  SETTABLEKS R23 R22 K20 ["BackgroundTransparency"]
  CALL R20 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 -1
  SETLIST R6 R7 -1 [1]
  DUPTABLE R7 K78 [{"ScrubberLineSize", "ScrubberHeadSize", "BufferBarHeight"}]
  GETIMPORT R8 K48 [UDim2.new]
  LOADN R9 0
  LOADN R10 1
  LOADN R11 1
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K75 ["ScrubberLineSize"]
  GETIMPORT R8 K27 [UDim2.fromOffset]
  LOADN R9 5
  LOADN R10 5
  CALL R8 2 1
  SETTABLEKS R8 R7 K76 ["ScrubberHeadSize"]
  LOADN R8 3
  SETTABLEKS R8 R7 K77 ["BufferBarHeight"]
  CALL R3 4 -1
  RETURN R3 -1
