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
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K9 ["Bin"]
  GETTABLEKS R5 R6 K10 ["Common"]
  GETTABLEKS R4 R5 K11 ["defineLuaFlags"]
  CALL R3 1 1
  MOVE R4 R2
  LOADK R5 K12 [".Component-CancelSubmitFooter"]
  DUPTABLE R6 K14 [{"BackgroundTransparency"}]
  LOADN R7 1
  SETTABLEKS R7 R6 K13 ["BackgroundTransparency"]
  NEWTABLE R7 0 4
  MOVE R8 R2
  LOADK R9 K15 ["::UIPadding"]
  DUPTABLE R10 K17 [{"PaddingTop"}]
  GETIMPORT R11 K20 [UDim.new]
  LOADN R12 0
  LOADN R13 7
  CALL R11 2 1
  SETTABLEKS R11 R10 K16 ["PaddingTop"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K21 [">> TextButton"]
  DUPTABLE R11 K27 [{"Size", "AutomaticSize", "BorderSizePixel", "TextSize", "Font"}]
  GETIMPORT R12 K30 [UDim2.fromOffset]
  LOADN R13 62
  LOADN R14 28
  CALL R12 2 1
  SETTABLEKS R12 R11 K22 ["Size"]
  GETIMPORT R12 K33 [Enum.AutomaticSize.X]
  SETTABLEKS R12 R11 K23 ["AutomaticSize"]
  LOADN R12 0
  SETTABLEKS R12 R11 K24 ["BorderSizePixel"]
  LOADK R12 K34 ["$FontSizeM"]
  SETTABLEKS R12 R11 K25 ["TextSize"]
  LOADK R12 K35 ["$FontBold"]
  SETTABLEKS R12 R11 K26 ["Font"]
  NEWTABLE R12 0 1
  MOVE R13 R2
  LOADK R14 K36 ["::UICorner"]
  DUPTABLE R15 K38 [{"CornerRadius"}]
  GETIMPORT R16 K20 [UDim.new]
  LOADN R17 0
  LOADN R18 8
  CALL R16 2 1
  SETTABLEKS R16 R15 K37 ["CornerRadius"]
  CALL R13 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R2
  LOADK R11 K39 ["> #SubmitButton"]
  DUPTABLE R12 K42 [{"TextColor3", "BackgroundTransparency", "BackgroundColor3"}]
  LOADK R13 K43 ["$SemanticColorContentStaticLight"]
  SETTABLEKS R13 R12 K40 ["TextColor3"]
  LOADN R13 0
  SETTABLEKS R13 R12 K13 ["BackgroundTransparency"]
  LOADK R13 K44 ["$PrimaryMain"]
  SETTABLEKS R13 R12 K41 ["BackgroundColor3"]
  NEWTABLE R13 0 3
  MOVE R14 R2
  LOADK R15 K45 [".Disabled"]
  DUPTABLE R16 K46 [{"BackgroundColor3", "TextColor3"}]
  LOADK R17 K47 ["$SemanticColorContentDisabled"]
  SETTABLEKS R17 R16 K41 ["BackgroundColor3"]
  GETTABLEKS R18 R3 K48 ["fflagCOLLAB9036KeepNewOpenOnSubmit"]
  JUMPIFNOT R18 [+2]
  LOADK R17 K49 ["$TextDisabled"]
  JUMP [+1]
  LOADK R17 K50 ["$TextSecondary"]
  SETTABLEKS R17 R16 K40 ["TextColor3"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K51 [":hover"]
  DUPTABLE R17 K52 [{"BackgroundColor3"}]
  LOADK R18 K53 ["$PrimaryHoverBackground"]
  SETTABLEKS R18 R17 K41 ["BackgroundColor3"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K54 [":pressed"]
  DUPTABLE R18 K52 [{"BackgroundColor3"}]
  GETIMPORT R19 K57 [Color3.fromHex]
  LOADK R20 K58 ["#005D92"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K41 ["BackgroundColor3"]
  CALL R16 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R2
  LOADK R12 K59 ["> #CancelButton"]
  DUPTABLE R13 K60 [{"TextColor3", "BackgroundColor3", "BackgroundTransparency"}]
  LOADK R14 K61 ["$TextPrimary"]
  SETTABLEKS R14 R13 K40 ["TextColor3"]
  LOADK R14 K62 ["$SemanticColorActionSecondaryFill"]
  SETTABLEKS R14 R13 K41 ["BackgroundColor3"]
  LOADK R14 K63 ["$SemanticColorActionSecondaryFillTransparency"]
  SETTABLEKS R14 R13 K13 ["BackgroundTransparency"]
  NEWTABLE R14 0 2
  MOVE R15 R2
  LOADK R16 K51 [":hover"]
  DUPTABLE R17 K14 [{"BackgroundTransparency"}]
  LOADK R18 K64 ["$SemanticColorActionSecondaryFillHoverTransparency"]
  SETTABLEKS R18 R17 K13 ["BackgroundTransparency"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K54 [":pressed"]
  DUPTABLE R18 K14 [{"BackgroundTransparency"}]
  LOADK R19 K65 ["$SemanticColorActionSecondaryFillPressTransparency"]
  SETTABLEKS R19 R18 K13 ["BackgroundTransparency"]
  CALL R16 2 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 -1
  SETLIST R7 R8 -1 [1]
  CALL R4 3 -1
  RETURN R4 -1
