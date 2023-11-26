PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["OpenBrowserWindow"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  LOADK R2 K0 ["Panel"]
  NAMECALL R0 R0 K1 ["start"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R3 R1 K2 ["SmoothVoxelsController"]
  GETTABLEKS R4 R1 K3 ["Theme"]
  NAMECALL R4 R4 K4 ["get"]
  CALL R4 1 1
  GETTABLEKS R5 R1 K5 ["SmoothVoxelsUpgradePercent"]
  LOADB R6 0
  LOADN R7 0
  JUMPIFNOTLE R7 R5 [+6]
  LOADN R7 1
  JUMPIFLT R5 R7 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  GETTABLEKS R8 R1 K7 ["UpperContentYSize"]
  ORK R7 R8 K6 [0]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K8 ["createElement"]
  GETUPVAL R9 1
  DUPTABLE R10 K11 [{"LayoutOrder", "Size"}]
  GETTABLEKS R11 R1 K9 ["LayoutOrder"]
  SETTABLEKS R11 R10 K9 ["LayoutOrder"]
  GETIMPORT R11 K14 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 1
  MINUS R15 R7
  CALL R11 4 1
  SETTABLEKS R11 R10 K10 ["Size"]
  DUPTABLE R11 K16 [{"Panel"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K8 ["createElement"]
  GETUPVAL R13 2
  DUPTABLE R14 K20 [{"isSubsection", "Title", "Padding"}]
  LOADB R15 1
  SETTABLEKS R15 R14 K17 ["isSubsection"]
  LOADK R17 K21 ["UpgradeSmoothVoxels"]
  LOADK R18 K18 ["Title"]
  NAMECALL R15 R2 K22 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K18 ["Title"]
  GETIMPORT R15 K24 [UDim.new]
  LOADN R16 0
  LOADN R17 12
  CALL R15 2 1
  SETTABLEKS R15 R14 K19 ["Padding"]
  DUPTABLE R15 K27 [{"ExplanationTextFrame", "UpgradeButtons"}]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K8 ["createElement"]
  GETUPVAL R17 3
  DUPTABLE R18 K32 [{"Size", "BackgroundTransparency", "LayoutOrder", "AutomaticSize", "Layout", "Padding", "Spacing"}]
  GETIMPORT R19 K14 [UDim2.new]
  LOADN R20 1
  LOADN R21 0
  LOADN R22 0
  LOADN R23 0
  CALL R19 4 1
  SETTABLEKS R19 R18 K10 ["Size"]
  LOADN R19 1
  SETTABLEKS R19 R18 K28 ["BackgroundTransparency"]
  LOADN R19 1
  SETTABLEKS R19 R18 K9 ["LayoutOrder"]
  GETIMPORT R19 K35 [Enum.AutomaticSize.Y]
  SETTABLEKS R19 R18 K29 ["AutomaticSize"]
  GETIMPORT R19 K38 [Enum.FillDirection.Vertical]
  SETTABLEKS R19 R18 K30 ["Layout"]
  LOADN R19 8
  SETTABLEKS R19 R18 K19 ["Padding"]
  LOADN R19 12
  SETTABLEKS R19 R18 K31 ["Spacing"]
  DUPTABLE R19 K41 [{"ExplanationText", "LearnMoreLink"}]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K8 ["createElement"]
  LOADK R21 K42 ["TextLabel"]
  DUPTABLE R22 K50 [{"LayoutOrder", "Text", "Font", "TextSize", "TextColor3", "Size", "TextXAlignment", "TextWrapped", "AutomaticSize", "Position", "BackgroundTransparency"}]
  LOADN R23 1
  SETTABLEKS R23 R22 K9 ["LayoutOrder"]
  LOADK R29 K21 ["UpgradeSmoothVoxels"]
  LOADK R30 K51 ["Description"]
  NAMECALL R27 R2 K22 ["getText"]
  CALL R27 3 1
  MOVE R24 R27
  LOADK R25 K52 ["

"]
  LOADK R28 K21 ["UpgradeSmoothVoxels"]
  LOADK R29 K53 ["Explanation"]
  NAMECALL R26 R2 K22 ["getText"]
  CALL R26 3 1
  CONCAT R23 R24 R26
  SETTABLEKS R23 R22 K43 ["Text"]
  GETTABLEKS R23 R4 K54 ["font"]
  SETTABLEKS R23 R22 K44 ["Font"]
  GETTABLEKS R23 R4 K55 ["textSize"]
  SETTABLEKS R23 R22 K45 ["TextSize"]
  GETTABLEKS R23 R4 K56 ["textColor"]
  SETTABLEKS R23 R22 K46 ["TextColor3"]
  GETIMPORT R23 K14 [UDim2.new]
  LOADN R24 1
  LOADN R25 0
  LOADN R26 0
  LOADN R27 0
  CALL R23 4 1
  SETTABLEKS R23 R22 K10 ["Size"]
  GETIMPORT R23 K58 [Enum.TextXAlignment.Left]
  SETTABLEKS R23 R22 K47 ["TextXAlignment"]
  LOADB R23 1
  SETTABLEKS R23 R22 K48 ["TextWrapped"]
  GETIMPORT R23 K35 [Enum.AutomaticSize.Y]
  SETTABLEKS R23 R22 K29 ["AutomaticSize"]
  GETIMPORT R23 K14 [UDim2.new]
  LOADN R24 0
  LOADN R25 0
  LOADN R26 0
  LOADN R27 0
  CALL R23 4 1
  SETTABLEKS R23 R22 K49 ["Position"]
  LOADN R23 1
  SETTABLEKS R23 R22 K28 ["BackgroundTransparency"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K39 ["ExplanationText"]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K8 ["createElement"]
  GETUPVAL R21 4
  DUPTABLE R22 K65 [{"Size", "AutomaticSize", "TextXAlignment", "HorizontalAlignment", "LayoutOrder", "OnLinkClicked", "Text", "LinkText", "LinkPlaceholder", "MaxWidth", "TextProps"}]
  GETIMPORT R23 K14 [UDim2.new]
  LOADN R24 1
  LOADN R25 0
  LOADN R26 0
  LOADN R27 0
  CALL R23 4 1
  SETTABLEKS R23 R22 K10 ["Size"]
  GETIMPORT R23 K35 [Enum.AutomaticSize.Y]
  SETTABLEKS R23 R22 K29 ["AutomaticSize"]
  GETIMPORT R23 K58 [Enum.TextXAlignment.Left]
  SETTABLEKS R23 R22 K47 ["TextXAlignment"]
  GETIMPORT R23 K66 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R23 R22 K59 ["HorizontalAlignment"]
  LOADN R23 2
  SETTABLEKS R23 R22 K9 ["LayoutOrder"]
  DUPCLOSURE R23 K67 [PROTO_0]
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  SETTABLEKS R23 R22 K60 ["OnLinkClicked"]
  LOADK R25 K21 ["UpgradeSmoothVoxels"]
  LOADK R26 K68 ["LearnMore"]
  NAMECALL R23 R2 K22 ["getText"]
  CALL R23 3 1
  SETTABLEKS R23 R22 K43 ["Text"]
  LOADK R25 K21 ["UpgradeSmoothVoxels"]
  LOADK R26 K40 ["LearnMoreLink"]
  NAMECALL R23 R2 K22 ["getText"]
  CALL R23 3 1
  SETTABLEKS R23 R22 K61 ["LinkText"]
  LOADK R23 K69 ["[link]"]
  SETTABLEKS R23 R22 K62 ["LinkPlaceholder"]
  LOADN R23 44
  SETTABLEKS R23 R22 K63 ["MaxWidth"]
  DUPTABLE R23 K70 [{"BackgroundTransparency", "Font", "TextColor3", "TextSize", "TextXAlignment"}]
  LOADN R24 1
  SETTABLEKS R24 R23 K28 ["BackgroundTransparency"]
  GETTABLEKS R24 R4 K54 ["font"]
  SETTABLEKS R24 R23 K44 ["Font"]
  GETTABLEKS R24 R4 K56 ["textColor"]
  SETTABLEKS R24 R23 K46 ["TextColor3"]
  LOADN R24 16
  SETTABLEKS R24 R23 K45 ["TextSize"]
  GETIMPORT R24 K58 [Enum.TextXAlignment.Left]
  SETTABLEKS R24 R23 K47 ["TextXAlignment"]
  SETTABLEKS R23 R22 K64 ["TextProps"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K40 ["LearnMoreLink"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K25 ["ExplanationTextFrame"]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K8 ["createElement"]
  GETUPVAL R17 7
  DUPTABLE R18 K72 [{"LayoutOrder", "Buttons"}]
  LOADN R19 3
  SETTABLEKS R19 R18 K9 ["LayoutOrder"]
  NEWTABLE R19 0 1
  DUPTABLE R20 K77 [{"Key", "Name", "Active", "OnClicked"}]
  LOADK R21 K21 ["UpgradeSmoothVoxels"]
  SETTABLEKS R21 R20 K73 ["Key"]
  LOADK R23 K21 ["UpgradeSmoothVoxels"]
  LOADK R24 K78 ["ActionButton"]
  NAMECALL R21 R2 K22 ["getText"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K74 ["Name"]
  NOT R21 R6
  SETTABLEKS R21 R20 K75 ["Active"]
  NEWCLOSURE R21 P1
  CAPTURE VAL R3
  SETTABLEKS R21 R20 K76 ["OnClicked"]
  SETLIST R19 R20 1 [1]
  SETTABLEKS R19 R18 K71 ["Buttons"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K26 ["UpgradeButtons"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K15 ["Panel"]
  CALL R8 3 -1
  RETURN R8 -1

PROTO_3:
  DUPTABLE R1 K1 [{"SmoothVoxelsUpgradePercent"}]
  GETTABLEKS R3 R0 K2 ["Tools"]
  GETTABLEKS R2 R3 K0 ["SmoothVoxelsUpgradePercent"]
  SETTABLEKS R2 R1 K0 ["SmoothVoxelsUpgradePercent"]
  RETURN R1 1

PROTO_4:
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [game]
  LOADK R3 K5 ["BrowserService"]
  NAMECALL R1 R1 K6 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K8 [require]
  GETTABLEKS R4 R0 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R0 K9 ["Packages"]
  GETTABLEKS R4 R5 K11 ["Roact"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R0 K9 ["Packages"]
  GETTABLEKS R5 R6 K12 ["RoactRodux"]
  CALL R4 1 1
  GETTABLEKS R5 R2 K13 ["ContextServices"]
  GETTABLEKS R6 R5 K14 ["withContext"]
  GETIMPORT R7 K8 [require]
  GETTABLEKS R9 R0 K15 ["Src"]
  GETTABLEKS R8 R9 K16 ["ContextItems"]
  CALL R7 1 1
  GETIMPORT R10 K1 [script]
  GETTABLEKS R9 R10 K2 ["Parent"]
  GETTABLEKS R8 R9 K17 ["ToolParts"]
  GETIMPORT R9 K8 [require]
  GETTABLEKS R10 R8 K18 ["Panel"]
  CALL R9 1 1
  GETIMPORT R10 K8 [require]
  GETTABLEKS R11 R8 K19 ["ButtonGroup"]
  CALL R10 1 1
  GETIMPORT R11 K8 [require]
  GETTABLEKS R14 R0 K15 ["Src"]
  GETTABLEKS R13 R14 K20 ["Util"]
  GETTABLEKS R12 R13 K21 ["SmoothVoxelsController"]
  CALL R11 1 1
  GETTABLEKS R13 R2 K22 ["UI"]
  GETTABLEKS R12 R13 K23 ["TextWithInlineLink"]
  GETTABLEKS R14 R2 K22 ["UI"]
  GETTABLEKS R13 R14 K24 ["Pane"]
  GETTABLEKS R15 R2 K22 ["UI"]
  GETTABLEKS R14 R15 K25 ["ScrollingFrame"]
  GETIMPORT R15 K4 [game]
  LOADK R17 K26 ["SmoothVoxels_LearnMoreUrl"]
  NAMECALL R15 R15 K27 ["GetFastString"]
  CALL R15 2 1
  GETTABLEKS R16 R3 K28 ["PureComponent"]
  GETIMPORT R19 K1 [script]
  GETTABLEKS R18 R19 K29 ["Name"]
  NAMECALL R16 R16 K30 ["extend"]
  CALL R16 2 1
  DUPCLOSURE R17 K31 [PROTO_2]
  CAPTURE VAL R3
  CAPTURE VAL R14
  CAPTURE VAL R9
  CAPTURE VAL R13
  CAPTURE VAL R12
  CAPTURE VAL R1
  CAPTURE VAL R15
  CAPTURE VAL R10
  SETTABLEKS R17 R16 K32 ["render"]
  MOVE R17 R6
  DUPTABLE R18 K38 [{"Localization", "Theme", "SmoothVoxelsController", "Terrain", "analytics", "Plugin"}]
  GETTABLEKS R19 R5 K33 ["Localization"]
  SETTABLEKS R19 R18 K33 ["Localization"]
  GETTABLEKS R19 R7 K39 ["DEPRECATED_Theme"]
  SETTABLEKS R19 R18 K34 ["Theme"]
  SETTABLEKS R11 R18 K21 ["SmoothVoxelsController"]
  GETTABLEKS R19 R7 K35 ["Terrain"]
  SETTABLEKS R19 R18 K35 ["Terrain"]
  GETTABLEKS R19 R5 K40 ["Analytics"]
  SETTABLEKS R19 R18 K36 ["analytics"]
  GETTABLEKS R19 R5 K37 ["Plugin"]
  SETTABLEKS R19 R18 K37 ["Plugin"]
  CALL R17 1 1
  MOVE R18 R16
  CALL R17 1 1
  MOVE R16 R17
  GETTABLEKS R17 R4 K41 ["connect"]
  DUPCLOSURE R18 K42 [PROTO_3]
  DUPCLOSURE R19 K43 [PROTO_4]
  CALL R17 2 1
  MOVE R18 R16
  CALL R17 1 -1
  RETURN R17 -1
