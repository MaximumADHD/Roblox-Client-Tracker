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
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K7 ["Bin"]
  GETTABLEKS R4 R5 K8 ["Common"]
  GETTABLEKS R3 R4 K9 ["defineLuaFlags"]
  CALL R2 1 1
  GETTABLEKS R4 R1 K10 ["Styling"]
  GETTABLEKS R3 R4 K11 ["createStyleRule"]
  MOVE R4 R3
  LOADK R5 K12 [".Component-AnnotationListView"]
  DUPTABLE R6 K14 [{"BackgroundColor3"}]
  GETTABLEKS R8 R2 K15 ["fflagAnnotationsModernColors"]
  JUMPIFNOT R8 [+2]
  LOADK R7 K16 ["$SemanticColorSurface100"]
  JUMP [+1]
  LOADK R7 K17 ["$ForegroundMain"]
  SETTABLEKS R7 R6 K13 ["BackgroundColor3"]
  NEWTABLE R7 0 3
  MOVE R8 R3
  LOADK R9 K18 ["::UISizeConstraint"]
  DUPTABLE R10 K20 [{"MinSize"}]
  GETIMPORT R11 K23 [Vector2.new]
  LOADN R12 200
  LOADN R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K19 ["MinSize"]
  CALL R8 2 1
  MOVE R9 R3
  LOADK R10 K24 ["> #Header"]
  DUPTABLE R11 K28 [{"Size", "AutomaticSize", "BackgroundTransparency"}]
  GETIMPORT R12 K30 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K25 ["Size"]
  GETIMPORT R12 K33 [Enum.AutomaticSize.Y]
  SETTABLEKS R12 R11 K26 ["AutomaticSize"]
  LOADN R12 1
  SETTABLEKS R12 R11 K27 ["BackgroundTransparency"]
  NEWTABLE R12 0 2
  MOVE R13 R3
  LOADK R14 K34 ["::UIPadding"]
  DUPTABLE R15 K39 [{"PaddingTop", "PaddingLeft", "PaddingRight", "PaddingBottom"}]
  GETIMPORT R16 K41 [UDim.new]
  LOADN R17 0
  LOADN R18 8
  CALL R16 2 1
  SETTABLEKS R16 R15 K35 ["PaddingTop"]
  GETIMPORT R16 K41 [UDim.new]
  LOADN R17 0
  LOADN R18 16
  CALL R16 2 1
  SETTABLEKS R16 R15 K36 ["PaddingLeft"]
  GETIMPORT R16 K41 [UDim.new]
  LOADN R17 0
  LOADN R18 16
  CALL R16 2 1
  SETTABLEKS R16 R15 K37 ["PaddingRight"]
  GETIMPORT R16 K41 [UDim.new]
  LOADN R17 0
  LOADN R18 8
  CALL R16 2 1
  SETTABLEKS R16 R15 K38 ["PaddingBottom"]
  CALL R13 2 1
  MOVE R14 R3
  LOADK R15 K42 ["> #AddButton"]
  DUPTABLE R16 K46 [{"TextColor3", "TextSize", "Font", "AutomaticSize", "BackgroundColor3"}]
  LOADK R17 K47 ["$TextPrimary"]
  SETTABLEKS R17 R16 K43 ["TextColor3"]
  LOADK R17 K48 ["$FontSizeM"]
  SETTABLEKS R17 R16 K44 ["TextSize"]
  LOADK R17 K49 ["$FontBold"]
  SETTABLEKS R17 R16 K45 ["Font"]
  GETIMPORT R17 K51 [Enum.AutomaticSize.XY]
  SETTABLEKS R17 R16 K26 ["AutomaticSize"]
  LOADK R17 K52 ["$PrimaryMain"]
  SETTABLEKS R17 R16 K13 ["BackgroundColor3"]
  NEWTABLE R17 0 4
  MOVE R18 R3
  LOADK R19 K53 ["::UICorner"]
  DUPTABLE R20 K55 [{"CornerRadius"}]
  GETIMPORT R21 K41 [UDim.new]
  LOADK R22 K56 [0.3]
  LOADN R23 0
  CALL R21 2 1
  SETTABLEKS R21 R20 K54 ["CornerRadius"]
  CALL R18 2 1
  MOVE R19 R3
  LOADK R20 K57 [":hover"]
  DUPTABLE R21 K14 [{"BackgroundColor3"}]
  LOADK R22 K58 ["$PrimaryHoverBackground"]
  SETTABLEKS R22 R21 K13 ["BackgroundColor3"]
  CALL R19 2 1
  MOVE R20 R3
  LOADK R21 K59 [":pressed"]
  DUPTABLE R22 K14 [{"BackgroundColor3"}]
  LOADK R23 K60 ["$ActionSelected"]
  SETTABLEKS R23 R22 K13 ["BackgroundColor3"]
  CALL R20 2 1
  MOVE R21 R3
  LOADK R22 K34 ["::UIPadding"]
  DUPTABLE R23 K39 [{"PaddingTop", "PaddingLeft", "PaddingRight", "PaddingBottom"}]
  GETIMPORT R24 K41 [UDim.new]
  LOADN R25 0
  LOADN R26 4
  CALL R24 2 1
  SETTABLEKS R24 R23 K35 ["PaddingTop"]
  GETIMPORT R24 K41 [UDim.new]
  LOADN R25 0
  LOADN R26 10
  CALL R24 2 1
  SETTABLEKS R24 R23 K36 ["PaddingLeft"]
  GETIMPORT R24 K41 [UDim.new]
  LOADN R25 0
  LOADN R26 10
  CALL R24 2 1
  SETTABLEKS R24 R23 K37 ["PaddingRight"]
  GETIMPORT R24 K41 [UDim.new]
  LOADN R25 0
  LOADN R26 4
  CALL R24 2 1
  SETTABLEKS R24 R23 K38 ["PaddingBottom"]
  CALL R21 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R3
  LOADK R11 K61 [">> #AnnotationScrollingFrame"]
  DUPTABLE R12 K62 [{"BackgroundTransparency"}]
  LOADN R13 1
  SETTABLEKS R13 R12 K27 ["BackgroundTransparency"]
  NEWTABLE R13 0 2
  MOVE R14 R3
  LOADK R15 K63 ["> #BottomPadding"]
  DUPTABLE R16 K64 [{"BackgroundTransparency", "Size"}]
  LOADN R17 1
  SETTABLEKS R17 R16 K27 ["BackgroundTransparency"]
  GETIMPORT R17 K30 [UDim2.new]
  LOADN R18 1
  LOADN R19 0
  LOADN R20 0
  LOADN R21 10
  CALL R17 4 1
  SETTABLEKS R17 R16 K25 ["Size"]
  CALL R14 2 1
  MOVE R15 R3
  LOADK R16 K34 ["::UIPadding"]
  DUPTABLE R17 K65 [{"PaddingLeft", "PaddingRight"}]
  GETIMPORT R18 K41 [UDim.new]
  LOADN R19 0
  LOADN R20 16
  CALL R18 2 1
  SETTABLEKS R18 R17 K36 ["PaddingLeft"]
  GETIMPORT R18 K41 [UDim.new]
  LOADN R19 0
  LOADN R20 16
  CALL R18 2 1
  SETTABLEKS R18 R17 K37 ["PaddingRight"]
  CALL R15 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 -1
  SETLIST R7 R8 -1 [1]
  CALL R4 3 -1
  RETURN R4 -1
