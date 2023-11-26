PROTO_0:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Stylizer"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["Localization"]
  GETTABLEKS R3 R1 K3 ["dialogTheme"]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R5 R4 K4 ["Entries"]
  GETTABLEKS R6 R4 K5 ["ErrorType"]
  GETTABLEKS R7 R4 K6 ["ErrorKey"]
  JUMPIF R7 [+3]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K7 ["RIG_ERRORS_KEY"]
  GETTABLEKS R8 R4 K8 ["ErrorHeader"]
  JUMPIF R8 [+3]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K9 ["RIG_ERRORS_HEADER_KEY"]
  LOADNIL R9
  JUMPIFNOT R5 [+6]
  GETIMPORT R10 K12 [table.concat]
  MOVE R11 R5
  LOADK R12 K13 ["; "]
  CALL R10 2 1
  MOVE R9 R10
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K14 ["createElement"]
  LOADK R11 K15 ["Frame"]
  DUPTABLE R12 K18 [{"Size", "BackgroundTransparency"}]
  GETIMPORT R13 K21 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 1
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K16 ["Size"]
  LOADN R13 1
  SETTABLEKS R13 R12 K17 ["BackgroundTransparency"]
  DUPTABLE R13 K25 [{"Layout", "Header", "Body"}]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K14 ["createElement"]
  LOADK R15 K26 ["UIListLayout"]
  DUPTABLE R16 K30 [{"SortOrder", "FillDirection", "Padding"}]
  GETIMPORT R17 K33 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R17 R16 K27 ["SortOrder"]
  GETIMPORT R17 K35 [Enum.FillDirection.Vertical]
  SETTABLEKS R17 R16 K28 ["FillDirection"]
  GETIMPORT R17 K37 [UDim.new]
  LOADN R18 0
  LOADN R19 10
  CALL R17 2 1
  SETTABLEKS R17 R16 K29 ["Padding"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K22 ["Layout"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K14 ["createElement"]
  LOADK R15 K15 ["Frame"]
  DUPTABLE R16 K38 [{"LayoutOrder", "Size", "BackgroundTransparency"}]
  LOADN R17 1
  SETTABLEKS R17 R16 K32 ["LayoutOrder"]
  GETIMPORT R17 K21 [UDim2.new]
  LOADN R18 1
  LOADN R19 0
  LOADN R20 0
  LOADN R21 21
  CALL R17 4 1
  SETTABLEKS R17 R16 K16 ["Size"]
  LOADN R17 1
  SETTABLEKS R17 R16 K17 ["BackgroundTransparency"]
  DUPTABLE R17 K41 [{"Icon", "Text"}]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K14 ["createElement"]
  LOADK R19 K42 ["ImageLabel"]
  DUPTABLE R20 K44 [{"Size", "BackgroundTransparency", "Image"}]
  GETIMPORT R21 K21 [UDim2.new]
  LOADN R22 0
  LOADN R23 21
  LOADN R24 0
  LOADN R25 21
  CALL R21 4 1
  SETTABLEKS R21 R20 K16 ["Size"]
  LOADN R21 1
  SETTABLEKS R21 R20 K17 ["BackgroundTransparency"]
  GETTABLEKS R21 R3 K45 ["errorImage"]
  SETTABLEKS R21 R20 K43 ["Image"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K39 ["Icon"]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K14 ["createElement"]
  LOADK R19 K46 ["TextLabel"]
  DUPTABLE R20 K52 [{"Size", "Position", "BackgroundTransparency", "TextSize", "TextColor3", "Font", "TextXAlignment", "Text"}]
  GETIMPORT R21 K21 [UDim2.new]
  LOADN R22 1
  LOADN R23 235
  LOADN R24 1
  LOADN R25 0
  CALL R21 4 1
  SETTABLEKS R21 R20 K16 ["Size"]
  GETIMPORT R21 K21 [UDim2.new]
  LOADN R22 0
  LOADN R23 31
  LOADN R24 0
  LOADN R25 0
  CALL R21 4 1
  SETTABLEKS R21 R20 K47 ["Position"]
  LOADN R21 1
  SETTABLEKS R21 R20 K17 ["BackgroundTransparency"]
  GETTABLEKS R21 R3 K53 ["textSize"]
  SETTABLEKS R21 R20 K48 ["TextSize"]
  GETTABLEKS R21 R3 K54 ["textColor"]
  SETTABLEKS R21 R20 K49 ["TextColor3"]
  GETTABLEKS R21 R3 K55 ["headerFont"]
  SETTABLEKS R21 R20 K50 ["Font"]
  GETIMPORT R21 K57 [Enum.TextXAlignment.Left]
  SETTABLEKS R21 R20 K51 ["TextXAlignment"]
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K58 ["DIALOG_KEY"]
  MOVE R24 R8
  NAMECALL R21 R2 K59 ["getText"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K40 ["Text"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K40 ["Text"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K23 ["Header"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K14 ["createElement"]
  LOADK R15 K46 ["TextLabel"]
  DUPTABLE R16 K63 [{"LayoutOrder", "Size", "BackgroundTransparency", "TextSize", "TextColor3", "Font", "TextXAlignment", "TextYAlignment", "TextWrapped", "TextTruncate", "Text"}]
  LOADN R17 2
  SETTABLEKS R17 R16 K32 ["LayoutOrder"]
  GETIMPORT R17 K21 [UDim2.new]
  LOADN R18 1
  LOADN R19 0
  LOADN R20 1
  LOADN R21 225
  CALL R17 4 1
  SETTABLEKS R17 R16 K16 ["Size"]
  LOADN R17 1
  SETTABLEKS R17 R16 K17 ["BackgroundTransparency"]
  GETTABLEKS R17 R3 K53 ["textSize"]
  SETTABLEKS R17 R16 K48 ["TextSize"]
  GETTABLEKS R17 R3 K54 ["textColor"]
  SETTABLEKS R17 R16 K49 ["TextColor3"]
  GETTABLEKS R17 R1 K64 ["font"]
  SETTABLEKS R17 R16 K50 ["Font"]
  GETIMPORT R17 K57 [Enum.TextXAlignment.Left]
  SETTABLEKS R17 R16 K51 ["TextXAlignment"]
  GETIMPORT R17 K66 [Enum.TextYAlignment.Top]
  SETTABLEKS R17 R16 K60 ["TextYAlignment"]
  LOADB R17 1
  SETTABLEKS R17 R16 K61 ["TextWrapped"]
  GETIMPORT R17 K68 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R17 R16 K62 ["TextTruncate"]
  MOVE R19 R7
  MOVE R20 R6
  DUPTABLE R21 K70 [{"entries"}]
  SETTABLEKS R9 R21 K69 ["entries"]
  NAMECALL R17 R2 K59 ["getText"]
  CALL R17 4 1
  SETTABLEKS R17 R16 K40 ["Text"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K24 ["Body"]
  CALL R10 3 -1
  RETURN R10 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Util"]
  GETTABLEKS R4 R5 K11 ["Constants"]
  CALL R3 1 1
  GETTABLEKS R4 R2 K12 ["ContextServices"]
  GETTABLEKS R5 R4 K13 ["withContext"]
  GETTABLEKS R6 R1 K14 ["PureComponent"]
  LOADK R8 K15 ["ErrorDialogContents"]
  NAMECALL R6 R6 K16 ["extend"]
  CALL R6 2 1
  DUPCLOSURE R7 K17 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R1
  SETTABLEKS R7 R6 K18 ["render"]
  MOVE R7 R5
  DUPTABLE R8 K21 [{"Stylizer", "Localization"}]
  GETTABLEKS R9 R4 K19 ["Stylizer"]
  SETTABLEKS R9 R8 K19 ["Stylizer"]
  GETTABLEKS R9 R4 K20 ["Localization"]
  SETTABLEKS R9 R8 K20 ["Localization"]
  CALL R7 1 1
  MOVE R8 R6
  CALL R7 1 1
  MOVE R6 R7
  RETURN R6 1
