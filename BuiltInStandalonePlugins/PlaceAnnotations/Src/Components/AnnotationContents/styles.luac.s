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
  DUPTABLE R15 K32 [{"AutomaticSize"}]
  GETIMPORT R16 K34 [Enum.AutomaticSize.XY]
  SETTABLEKS R16 R15 K11 ["AutomaticSize"]
  NEWTABLE R16 0 3
  MOVE R17 R2
  LOADK R18 K35 ["> TextLabel"]
  DUPTABLE R19 K38 [{"AutomaticSize", "BackgroundTransparency", "TextScaled", "LineHeight"}]
  GETIMPORT R20 K34 [Enum.AutomaticSize.XY]
  SETTABLEKS R20 R19 K11 ["AutomaticSize"]
  LOADN R20 1
  SETTABLEKS R20 R19 K12 ["BackgroundTransparency"]
  LOADB R20 0
  SETTABLEKS R20 R19 K36 ["TextScaled"]
  LOADK R20 K39 [1.5]
  SETTABLEKS R20 R19 K37 ["LineHeight"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K40 ["> #Username"]
  DUPTABLE R20 K44 [{"TextColor3", "TextSize", "Font"}]
  LOADK R21 K45 ["$TextPrimary"]
  SETTABLEKS R21 R20 K41 ["TextColor3"]
  LOADN R21 16
  SETTABLEKS R21 R20 K42 ["TextSize"]
  GETIMPORT R21 K47 [Enum.Font.BuilderSansBold]
  SETTABLEKS R21 R20 K43 ["Font"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K48 ["> #CreationTime"]
  DUPTABLE R21 K44 [{"TextColor3", "TextSize", "Font"}]
  LOADK R22 K49 ["$TextSecondary"]
  SETTABLEKS R22 R21 K41 ["TextColor3"]
  LOADN R22 14
  SETTABLEKS R22 R21 K42 ["TextSize"]
  GETIMPORT R22 K51 [Enum.Font.BuilderSans]
  SETTABLEKS R22 R21 K43 ["Font"]
  CALL R19 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R2
  LOADK R15 K52 [">> #Contents"]
  DUPTABLE R16 K55 [{"Size", "AutomaticSize", "TextWrapped", "Font", "TextColor3", "TextSize", "BackgroundTransparency", "LineHeight", "TextXAlignment"}]
  GETIMPORT R17 K16 [UDim2.fromScale]
  LOADN R18 1
  LOADN R19 0
  CALL R17 2 1
  SETTABLEKS R17 R16 K10 ["Size"]
  GETIMPORT R17 K19 [Enum.AutomaticSize.Y]
  SETTABLEKS R17 R16 K11 ["AutomaticSize"]
  LOADB R17 1
  SETTABLEKS R17 R16 K53 ["TextWrapped"]
  GETIMPORT R17 K51 [Enum.Font.BuilderSans]
  SETTABLEKS R17 R16 K43 ["Font"]
  LOADK R17 K45 ["$TextPrimary"]
  SETTABLEKS R17 R16 K41 ["TextColor3"]
  LOADN R17 16
  SETTABLEKS R17 R16 K42 ["TextSize"]
  LOADN R17 1
  SETTABLEKS R17 R16 K12 ["BackgroundTransparency"]
  LOADK R17 K39 [1.5]
  SETTABLEKS R17 R16 K37 ["LineHeight"]
  GETIMPORT R17 K57 [Enum.TextXAlignment.Left]
  SETTABLEKS R17 R16 K54 ["TextXAlignment"]
  CALL R14 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1
