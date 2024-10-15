MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K7 ["Styling"]
  GETTABLEKS R2 R3 K8 ["createStyleRule"]
  MOVE R3 R2
  LOADK R4 K9 [".Component-AnnotationContents"]
  DUPTABLE R5 K13 [{"Size", "AutomaticSize", "BackgroundTransparency"}]
  GETIMPORT R6 K16 [UDim2.fromScale]
  LOADN R7 1
  LOADN R8 0
  CALL R6 2 1
  SETTABLEKS R6 R5 K10 ["Size"]
  GETIMPORT R6 K19 [Enum.AutomaticSize.Y]
  SETTABLEKS R6 R5 K11 ["AutomaticSize"]
  LOADN R6 1
  SETTABLEKS R6 R5 K12 ["BackgroundTransparency"]
  NEWTABLE R6 0 3
  MOVE R7 R2
  LOADK R8 K20 ["::UIPadding"]
  DUPTABLE R9 K22 [{"PaddingBottom"}]
  GETIMPORT R10 K25 [UDim.new]
  LOADN R11 0
  LOADN R12 4
  CALL R10 2 1
  SETTABLEKS R10 R9 K21 ["PaddingBottom"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K26 [">> Frame"]
  DUPTABLE R10 K27 [{"BackgroundTransparency"}]
  LOADN R11 1
  SETTABLEKS R11 R10 K12 ["BackgroundTransparency"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K28 ["> #TextColumn"]
  DUPTABLE R11 K29 [{"Size", "AutomaticSize"}]
  GETIMPORT R12 K30 [UDim2.new]
  LOADN R13 1
  LOADN R14 216
  LOADN R15 0
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K10 ["Size"]
  GETIMPORT R12 K19 [Enum.AutomaticSize.Y]
  SETTABLEKS R12 R11 K11 ["AutomaticSize"]
  NEWTABLE R12 0 2
  MOVE R13 R2
  LOADK R14 K31 [">> #UsernameRow"]
  DUPTABLE R15 K29 [{"Size", "AutomaticSize"}]
  GETIMPORT R16 K16 [UDim2.fromScale]
  LOADN R17 1
  LOADN R18 0
  CALL R16 2 1
  SETTABLEKS R16 R15 K10 ["Size"]
  GETIMPORT R16 K19 [Enum.AutomaticSize.Y]
  SETTABLEKS R16 R15 K11 ["AutomaticSize"]
  NEWTABLE R16 0 2
  MOVE R17 R2
  LOADK R18 K32 ["> Frame"]
  DUPTABLE R19 K33 [{"AutomaticSize"}]
  GETIMPORT R20 K35 [Enum.AutomaticSize.XY]
  SETTABLEKS R20 R19 K11 ["AutomaticSize"]
  NEWTABLE R20 0 3
  MOVE R21 R2
  LOADK R22 K36 ["> TextLabel"]
  DUPTABLE R23 K39 [{"AutomaticSize", "BackgroundTransparency", "TextScaled", "LineHeight"}]
  GETIMPORT R24 K35 [Enum.AutomaticSize.XY]
  SETTABLEKS R24 R23 K11 ["AutomaticSize"]
  LOADN R24 1
  SETTABLEKS R24 R23 K12 ["BackgroundTransparency"]
  LOADB R24 0
  SETTABLEKS R24 R23 K37 ["TextScaled"]
  LOADK R24 K40 [1.5]
  SETTABLEKS R24 R23 K38 ["LineHeight"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K41 ["> #Username"]
  DUPTABLE R24 K45 [{"TextColor3", "TextSize", "Font"}]
  LOADK R25 K46 ["$TextPrimary"]
  SETTABLEKS R25 R24 K42 ["TextColor3"]
  LOADK R25 K47 ["$FontSizeM"]
  SETTABLEKS R25 R24 K43 ["TextSize"]
  LOADK R25 K48 ["$FontBold"]
  SETTABLEKS R25 R24 K44 ["Font"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K49 ["> #CreationTime"]
  DUPTABLE R25 K50 [{"TextColor3", "TextSize"}]
  LOADK R26 K51 ["$TextSecondary"]
  SETTABLEKS R26 R25 K42 ["TextColor3"]
  LOADK R26 K52 ["$FontSizeS"]
  SETTABLEKS R26 R25 K43 ["TextSize"]
  CALL R23 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K53 ["> #MoreIcon"]
  DUPTABLE R20 K56 [{"Image", "Size", "Position"}]
  LOADK R21 K57 ["$MoreIcon"]
  SETTABLEKS R21 R20 K54 ["Image"]
  GETIMPORT R21 K59 [UDim2.fromOffset]
  LOADN R22 16
  LOADN R23 16
  CALL R21 2 1
  SETTABLEKS R21 R20 K10 ["Size"]
  GETIMPORT R21 K30 [UDim2.new]
  LOADN R22 1
  LOADN R23 240
  LOADN R24 0
  LOADN R25 0
  CALL R21 4 1
  SETTABLEKS R21 R20 K55 ["Position"]
  NEWTABLE R21 0 2
  MOVE R22 R2
  LOADK R23 K60 [":hover"]
  DUPTABLE R24 K62 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADN R25 0
  SETTABLEKS R25 R24 K12 ["BackgroundTransparency"]
  LOADK R25 K63 ["$ResolveIconBase"]
  SETTABLEKS R25 R24 K61 ["BackgroundColor3"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K64 [":pressed"]
  DUPTABLE R25 K62 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADN R26 0
  SETTABLEKS R26 R25 K12 ["BackgroundTransparency"]
  LOADK R26 K65 ["$ResolveIconSelected"]
  SETTABLEKS R26 R25 K61 ["BackgroundColor3"]
  CALL R23 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R2
  LOADK R15 K66 [">> #Contents"]
  DUPTABLE R16 K69 [{"Size", "AutomaticSize", "TextWrapped", "TextColor3", "TextSize", "BackgroundTransparency", "LineHeight", "TextXAlignment"}]
  GETIMPORT R17 K16 [UDim2.fromScale]
  LOADN R18 1
  LOADN R19 0
  CALL R17 2 1
  SETTABLEKS R17 R16 K10 ["Size"]
  GETIMPORT R17 K19 [Enum.AutomaticSize.Y]
  SETTABLEKS R17 R16 K11 ["AutomaticSize"]
  LOADB R17 1
  SETTABLEKS R17 R16 K67 ["TextWrapped"]
  LOADK R17 K46 ["$TextPrimary"]
  SETTABLEKS R17 R16 K42 ["TextColor3"]
  LOADN R17 16
  SETTABLEKS R17 R16 K43 ["TextSize"]
  LOADN R17 1
  SETTABLEKS R17 R16 K12 ["BackgroundTransparency"]
  LOADK R17 K40 [1.5]
  SETTABLEKS R17 R16 K38 ["LineHeight"]
  GETIMPORT R17 K71 [Enum.TextXAlignment.Left]
  SETTABLEKS R17 R16 K68 ["TextXAlignment"]
  CALL R14 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1
