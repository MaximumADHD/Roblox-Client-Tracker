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
  LOADK R4 K9 [".Component-CancelSubmitFooter"]
  DUPTABLE R5 K11 [{"BackgroundTransparency"}]
  LOADN R6 1
  SETTABLEKS R6 R5 K10 ["BackgroundTransparency"]
  NEWTABLE R6 0 4
  MOVE R7 R2
  LOADK R8 K12 ["::UIPadding"]
  DUPTABLE R9 K14 [{"PaddingTop"}]
  GETIMPORT R10 K17 [UDim.new]
  LOADN R11 0
  LOADN R12 7
  CALL R10 2 1
  SETTABLEKS R10 R9 K13 ["PaddingTop"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K18 [">> TextButton"]
  DUPTABLE R10 K24 [{"Size", "AutomaticSize", "BorderSizePixel", "TextSize", "Font"}]
  GETIMPORT R11 K27 [UDim2.fromOffset]
  LOADN R12 62
  LOADN R13 28
  CALL R11 2 1
  SETTABLEKS R11 R10 K19 ["Size"]
  GETIMPORT R11 K30 [Enum.AutomaticSize.X]
  SETTABLEKS R11 R10 K20 ["AutomaticSize"]
  LOADN R11 0
  SETTABLEKS R11 R10 K21 ["BorderSizePixel"]
  LOADK R11 K31 ["$FontSizeM"]
  SETTABLEKS R11 R10 K22 ["TextSize"]
  LOADK R11 K32 ["$FontBold"]
  SETTABLEKS R11 R10 K23 ["Font"]
  NEWTABLE R11 0 1
  MOVE R12 R2
  LOADK R13 K33 ["::UICorner"]
  DUPTABLE R14 K35 [{"CornerRadius"}]
  GETIMPORT R15 K17 [UDim.new]
  LOADN R16 0
  LOADN R17 8
  CALL R15 2 1
  SETTABLEKS R15 R14 K34 ["CornerRadius"]
  CALL R12 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R2
  LOADK R10 K36 ["> #SubmitButton"]
  DUPTABLE R11 K39 [{"TextColor3", "BackgroundTransparency", "BackgroundColor3"}]
  LOADK R12 K40 ["$SemanticColorContentStaticLight"]
  SETTABLEKS R12 R11 K37 ["TextColor3"]
  LOADN R12 0
  SETTABLEKS R12 R11 K10 ["BackgroundTransparency"]
  LOADK R12 K41 ["$PrimaryMain"]
  SETTABLEKS R12 R11 K38 ["BackgroundColor3"]
  NEWTABLE R12 0 3
  MOVE R13 R2
  LOADK R14 K42 [".Disabled"]
  DUPTABLE R15 K43 [{"BackgroundColor3", "TextColor3"}]
  LOADK R16 K44 ["$SemanticColorContentDisabled"]
  SETTABLEKS R16 R15 K38 ["BackgroundColor3"]
  LOADK R16 K45 ["$TextDisabled"]
  SETTABLEKS R16 R15 K37 ["TextColor3"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K46 [":hover"]
  DUPTABLE R16 K47 [{"BackgroundColor3"}]
  LOADK R17 K48 ["$PrimaryHoverBackground"]
  SETTABLEKS R17 R16 K38 ["BackgroundColor3"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K49 [":press"]
  DUPTABLE R17 K47 [{"BackgroundColor3"}]
  GETIMPORT R18 K52 [Color3.fromHex]
  LOADK R19 K53 ["#005D92"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K38 ["BackgroundColor3"]
  CALL R15 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R2
  LOADK R11 K54 ["> #CancelButton"]
  DUPTABLE R12 K55 [{"TextColor3", "BackgroundColor3", "BackgroundTransparency"}]
  LOADK R13 K56 ["$TextPrimary"]
  SETTABLEKS R13 R12 K37 ["TextColor3"]
  LOADK R13 K57 ["$SemanticColorActionSecondaryFill"]
  SETTABLEKS R13 R12 K38 ["BackgroundColor3"]
  LOADK R13 K58 ["$SemanticColorActionSecondaryFillTransparency"]
  SETTABLEKS R13 R12 K10 ["BackgroundTransparency"]
  NEWTABLE R13 0 2
  MOVE R14 R2
  LOADK R15 K46 [":hover"]
  DUPTABLE R16 K11 [{"BackgroundTransparency"}]
  LOADK R17 K59 ["$SemanticColorActionSecondaryFillHoverTransparency"]
  SETTABLEKS R17 R16 K10 ["BackgroundTransparency"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K49 [":press"]
  DUPTABLE R17 K11 [{"BackgroundTransparency"}]
  LOADK R18 K60 ["$SemanticColorActionSecondaryFillPressTransparency"]
  SETTABLEKS R18 R17 K10 ["BackgroundTransparency"]
  CALL R15 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1
