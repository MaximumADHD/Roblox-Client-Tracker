PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["frameRef"]
  GETTABLEKS R0 R1 K1 ["current"]
  GETTABLEKS R2 R0 K2 ["AbsoluteSize"]
  GETTABLEKS R1 R2 K3 ["x"]
  GETUPVAL R2 0
  DUPTABLE R4 K5 [{"maxChildWidth"}]
  SETTABLEKS R1 R4 K4 ["maxChildWidth"]
  NAMECALL R2 R2 K6 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  FASTCALL1 ASSERT R2 [+2]
  GETIMPORT R1 K1 [assert]
  CALL R1 1 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K3 ["frameRef"]
  DUPTABLE R1 K6 [{"maxChildWidth", "questionnaireButtonClicked"}]
  LOADN R2 0
  SETTABLEKS R2 R1 K4 ["maxChildWidth"]
  LOADB R2 0
  SETTABLEKS R2 R1 K5 ["questionnaireButtonClicked"]
  SETTABLEKS R1 R0 K7 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K8 ["updateSize"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["updateSize"]
  CALL R1 0 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"questionnaireButtonClicked"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["questionnaireButtonClicked"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  GETUPVAL R0 1
  GETUPVAL R1 2
  CALL R0 1 1
  CALL R0 0 0
  RETURN R0 0

PROTO_4:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["GuiService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  LOADK R3 K4 ["https://devforum.roblox.com/t/important-updates-unrated-experiences-and-changes-to-experience-pages/3899317"]
  NAMECALL R1 R0 K5 ["OpenBrowserWindow"]
  CALL R1 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R2 0
  FASTCALL1 ASSERT R2 [+2]
  GETIMPORT R1 K1 [assert]
  CALL R1 1 0
  GETTABLEKS R1 R0 K2 ["props"]
  GETTABLEKS R2 R1 K3 ["Stylizer"]
  GETTABLEKS R3 R1 K4 ["Localization"]
  GETTABLEKS R4 R1 K5 ["GameId"]
  GETTABLEKS R5 R1 K6 ["LayoutOrder"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K7 ["new"]
  CALL R6 0 1
  LOADK R9 K8 ["Guidelines"]
  LOADK R10 K9 ["SectionTitleMaturity"]
  NAMECALL R7 R3 K10 ["getText"]
  CALL R7 3 1
  LOADNIL R8
  LOADNIL R9
  LOADNIL R10
  GETTABLEKS R11 R1 K11 ["GameGuideline"]
  JUMPIFNOT R11 [+7]
  LOADK R13 K8 ["Guidelines"]
  LOADK R14 K12 ["UpdateQuestionnaire"]
  NAMECALL R11 R3 K10 ["getText"]
  CALL R11 3 1
  MOVE R9 R11
  JUMP [+6]
  LOADK R13 K8 ["Guidelines"]
  LOADK R14 K13 ["SubmitQuestionnaire"]
  NAMECALL R11 R3 K10 ["getText"]
  CALL R11 3 1
  MOVE R9 R11
  GETUPVAL R11 2
  MOVE R12 R9
  GETTABLEKS R15 R2 K14 ["fontStyle"]
  GETTABLEKS R14 R15 K15 ["Normal"]
  GETTABLEKS R13 R14 K16 ["TextSize"]
  GETTABLEKS R16 R2 K14 ["fontStyle"]
  GETTABLEKS R15 R16 K15 ["Normal"]
  GETTABLEKS R14 R15 K17 ["Font"]
  GETIMPORT R15 K19 [Vector2.new]
  LOADK R16 K20 [∞]
  LOADK R17 K20 [∞]
  CALL R15 2 -1
  CALL R11 -1 1
  MOVE R10 R11
  LOADK R13 K8 ["Guidelines"]
  LOADK R14 K21 ["17PlusWarning"]
  NAMECALL R11 R3 K10 ["getText"]
  CALL R11 3 1
  MOVE R8 R11
  GETTABLEKS R11 R1 K11 ["GameGuideline"]
  JUMPIF R11 [+8]
  MOVE R11 R8
  LOADK R12 K22 [" "]
  LOADK R15 K8 ["Guidelines"]
  LOADK R16 K23 ["UnavailableNoticeText"]
  NAMECALL R13 R3 K10 ["getText"]
  CALL R13 3 1
  CONCAT R8 R11 R13
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K24 ["createElement"]
  LOADK R12 K25 ["Frame"]
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K26 ["Dictionary"]
  GETTABLEKS R13 R14 K27 ["join"]
  DUPTABLE R14 K28 [{"LayoutOrder"}]
  SETTABLEKS R5 R14 K6 ["LayoutOrder"]
  GETTABLEKS R15 R2 K29 ["guidelinesFrame"]
  CALL R13 2 1
  DUPTABLE R14 K32 [{"Title", "DescriptionFrame"}]
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K24 ["createElement"]
  GETUPVAL R16 5
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K26 ["Dictionary"]
  GETTABLEKS R17 R18 K27 ["join"]
  DUPTABLE R18 K34 [{"Text"}]
  SETTABLEKS R7 R18 K33 ["Text"]
  GETTABLEKS R19 R2 K35 ["guidelinesTitle"]
  CALL R17 2 -1
  CALL R15 -1 1
  SETTABLEKS R15 R14 K30 ["Title"]
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K24 ["createElement"]
  LOADK R16 K25 ["Frame"]
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K26 ["Dictionary"]
  GETTABLEKS R17 R18 K27 ["join"]
  NEWTABLE R18 2 0
  GETUPVAL R20 3
  GETTABLEKS R19 R20 K36 ["Ref"]
  GETTABLEKS R20 R0 K37 ["frameRef"]
  SETTABLE R20 R18 R19
  GETUPVAL R21 3
  GETTABLEKS R20 R21 K38 ["Change"]
  GETTABLEKS R19 R20 K39 ["AbsoluteSize"]
  GETTABLEKS R20 R0 K40 ["updateSize"]
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R2 K41 ["guidelinesDescriptionFrame"]
  CALL R17 2 1
  DUPTABLE R18 K46 [{"Layout", "ChosenGuideline", "OpenQuestionnaireButton", "GuidelinesQuestionnaireInfo"}]
  GETUPVAL R20 3
  GETTABLEKS R19 R20 K24 ["createElement"]
  LOADK R20 K47 ["UIListLayout"]
  GETTABLEKS R21 R2 K48 ["guidelinesDescriptionListLayout"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K42 ["Layout"]
  GETUPVAL R20 3
  GETTABLEKS R19 R20 K24 ["createElement"]
  GETUPVAL R20 5
  GETUPVAL R23 4
  GETTABLEKS R22 R23 K26 ["Dictionary"]
  GETTABLEKS R21 R22 K27 ["join"]
  DUPTABLE R22 K50 [{"Text", "LayoutOrder", "TextTransparency"}]
  GETTABLEKS R23 R1 K11 ["GameGuideline"]
  JUMPIF R23 [+12]
  LOADK R25 K8 ["Guidelines"]
  GETTABLEKS R28 R0 K51 ["state"]
  GETTABLEKS R27 R28 K52 ["questionnaireButtonClicked"]
  JUMPIFNOT R27 [+2]
  LOADK R26 K53 ["Pending"]
  JUMP [+1]
  LOADK R26 K54 ["NotSubmitted"]
  NAMECALL R23 R3 K10 ["getText"]
  CALL R23 3 1
  SETTABLEKS R23 R22 K33 ["Text"]
  NAMECALL R23 R6 K55 ["getNextOrder"]
  CALL R23 1 1
  SETTABLEKS R23 R22 K6 ["LayoutOrder"]
  GETTABLEKS R24 R1 K11 ["GameGuideline"]
  JUMPIFNOT R24 [+2]
  LOADN R23 0
  JUMP [+1]
  LOADK R23 K56 [0.5]
  SETTABLEKS R23 R22 K49 ["TextTransparency"]
  GETTABLEKS R23 R2 K57 ["chosenGuidelineText"]
  CALL R21 2 -1
  CALL R19 -1 1
  SETTABLEKS R19 R18 K43 ["ChosenGuideline"]
  GETUPVAL R20 3
  GETTABLEKS R19 R20 K24 ["createElement"]
  GETUPVAL R20 6
  GETUPVAL R23 4
  GETTABLEKS R22 R23 K26 ["Dictionary"]
  GETTABLEKS R21 R22 K27 ["join"]
  DUPTABLE R22 K60 [{"Size", "Text", "OnClick", "LayoutOrder"}]
  GETIMPORT R23 K62 [UDim2.new]
  LOADN R24 0
  GETTABLEKS R26 R10 K63 ["X"]
  GETTABLEKS R28 R2 K64 ["openQuestionnaireButton"]
  GETTABLEKS R27 R28 K65 ["PaddingX"]
  ADD R25 R26 R27
  LOADN R26 0
  GETTABLEKS R28 R10 K66 ["Y"]
  GETTABLEKS R30 R2 K64 ["openQuestionnaireButton"]
  GETTABLEKS R29 R30 K67 ["PaddingY"]
  ADD R27 R28 R29
  CALL R23 4 1
  SETTABLEKS R23 R22 K58 ["Size"]
  SETTABLEKS R9 R22 K33 ["Text"]
  NEWCLOSURE R23 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U7
  CAPTURE VAL R4
  SETTABLEKS R23 R22 K59 ["OnClick"]
  NAMECALL R23 R6 K55 ["getNextOrder"]
  CALL R23 1 1
  SETTABLEKS R23 R22 K6 ["LayoutOrder"]
  GETTABLEKS R23 R2 K64 ["openQuestionnaireButton"]
  CALL R21 2 -1
  CALL R19 -1 1
  SETTABLEKS R19 R18 K44 ["OpenQuestionnaireButton"]
  GETUPVAL R20 3
  GETTABLEKS R19 R20 K24 ["createElement"]
  GETUPVAL R20 8
  DUPTABLE R21 K70 [{"Layout", "AutomaticSize", "Spacing", "LayoutOrder"}]
  GETIMPORT R22 K74 [Enum.FillDirection.Horizontal]
  SETTABLEKS R22 R21 K42 ["Layout"]
  GETIMPORT R22 K75 [Enum.AutomaticSize.Y]
  SETTABLEKS R22 R21 K68 ["AutomaticSize"]
  LOADN R22 6
  SETTABLEKS R22 R21 K69 ["Spacing"]
  NAMECALL R22 R6 K55 ["getNextOrder"]
  CALL R22 1 1
  SETTABLEKS R22 R21 K6 ["LayoutOrder"]
  DUPTABLE R22 K77 [{"Icon", "Text"}]
  GETTABLEKS R24 R1 K11 ["GameGuideline"]
  JUMPIF R24 [+28]
  GETUPVAL R24 3
  GETTABLEKS R23 R24 K24 ["createElement"]
  LOADK R24 K78 ["ImageLabel"]
  DUPTABLE R25 K82 [{"BackgroundTransparency", "Image", "ImageColor3", "Size", "LayoutOrder"}]
  LOADN R26 1
  SETTABLEKS R26 R25 K79 ["BackgroundTransparency"]
  GETTABLEKS R26 R2 K83 ["warningIcon"]
  SETTABLEKS R26 R25 K80 ["Image"]
  GETTABLEKS R26 R2 K84 ["warningColor"]
  SETTABLEKS R26 R25 K81 ["ImageColor3"]
  GETIMPORT R26 K86 [UDim2.fromOffset]
  LOADN R27 16
  LOADN R28 16
  CALL R26 2 1
  SETTABLEKS R26 R25 K58 ["Size"]
  LOADN R26 0
  SETTABLEKS R26 R25 K6 ["LayoutOrder"]
  CALL R23 2 1
  JUMP [+1]
  LOADNIL R23
  SETTABLEKS R23 R22 K76 ["Icon"]
  GETUPVAL R24 3
  GETTABLEKS R23 R24 K24 ["createElement"]
  GETUPVAL R24 9
  GETUPVAL R27 4
  GETTABLEKS R26 R27 K26 ["Dictionary"]
  GETTABLEKS R25 R26 K27 ["join"]
  DUPTABLE R26 K96 [{"Text", "OnLinkClicked", "LinkText", "LinkPlaceholder", "MaxWidth", "TextProps", "HorizontalAlignment", "TextXAlignment", "TextYAlignment", "LayoutOrder", "TextWrapped"}]
  GETTABLEKS R28 R1 K11 ["GameGuideline"]
  JUMPIFNOT R28 [+6]
  LOADK R29 K8 ["Guidelines"]
  LOADK R30 K97 ["RetakeQuestionnaireMaturity"]
  NAMECALL R27 R3 K10 ["getText"]
  CALL R27 3 1
  JUMP [+13]
  LOADK R29 K8 ["Guidelines"]
  LOADK R30 K98 ["UnratedExpPlayabilityWaring"]
  DUPTABLE R31 K100 [{"link"}]
  LOADK R34 K8 ["Guidelines"]
  LOADK R35 K101 ["UnratedExpPlayabilityWaringLink"]
  NAMECALL R32 R3 K10 ["getText"]
  CALL R32 3 1
  SETTABLEKS R32 R31 K99 ["link"]
  NAMECALL R27 R3 K10 ["getText"]
  CALL R27 4 1
  SETTABLEKS R27 R26 K33 ["Text"]
  DUPCLOSURE R27 K102 [PROTO_4]
  SETTABLEKS R27 R26 K87 ["OnLinkClicked"]
  LOADK R29 K8 ["Guidelines"]
  LOADK R30 K101 ["UnratedExpPlayabilityWaringLink"]
  NAMECALL R27 R3 K10 ["getText"]
  CALL R27 3 1
  SETTABLEKS R27 R26 K88 ["LinkText"]
  LOADK R29 K8 ["Guidelines"]
  LOADK R30 K101 ["UnratedExpPlayabilityWaringLink"]
  NAMECALL R27 R3 K10 ["getText"]
  CALL R27 3 1
  SETTABLEKS R27 R26 K89 ["LinkPlaceholder"]
  GETTABLEKS R29 R0 K51 ["state"]
  GETTABLEKS R28 R29 K104 ["maxChildWidth"]
  SUBK R27 R28 K103 [22]
  SETTABLEKS R27 R26 K90 ["MaxWidth"]
  GETUPVAL R29 4
  GETTABLEKS R28 R29 K26 ["Dictionary"]
  GETTABLEKS R27 R28 K27 ["join"]
  GETTABLEKS R29 R2 K14 ["fontStyle"]
  GETTABLEKS R28 R29 K105 ["Warning"]
  DUPTABLE R29 K106 [{"BackgroundTransparency", "TextXAlignment"}]
  LOADN R30 1
  SETTABLEKS R30 R29 K79 ["BackgroundTransparency"]
  GETIMPORT R30 K108 [Enum.TextXAlignment.Left]
  SETTABLEKS R30 R29 K93 ["TextXAlignment"]
  CALL R27 2 1
  SETTABLEKS R27 R26 K91 ["TextProps"]
  GETIMPORT R27 K109 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R27 R26 K92 ["HorizontalAlignment"]
  GETIMPORT R27 K108 [Enum.TextXAlignment.Left]
  SETTABLEKS R27 R26 K93 ["TextXAlignment"]
  GETIMPORT R27 K111 [Enum.TextYAlignment.Top]
  SETTABLEKS R27 R26 K94 ["TextYAlignment"]
  LOADN R27 1
  SETTABLEKS R27 R26 K6 ["LayoutOrder"]
  LOADB R27 1
  SETTABLEKS R27 R26 K95 ["TextWrapped"]
  GETTABLEKS R27 R2 K112 ["guidelinesDescriptionText"]
  CALL R25 2 -1
  CALL R23 -1 1
  SETTABLEKS R23 R22 K33 ["Text"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K45 ["GuidelinesQuestionnaireInfo"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K31 ["DescriptionFrame"]
  CALL R11 3 -1
  RETURN R11 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [game]
  LOADK R3 K5 ["GameSettingsExperienceGuidelines"]
  NAMECALL R1 R1 K6 ["GetFastFlag"]
  CALL R1 2 1
  GETIMPORT R2 K8 [require]
  GETTABLEKS R4 R0 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["Roact"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K11 ["PureComponent"]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K12 ["Name"]
  NAMECALL R3 R3 K13 ["extend"]
  CALL R3 2 1
  GETIMPORT R5 K8 [require]
  GETTABLEKS R8 R0 K14 ["Src"]
  GETTABLEKS R7 R8 K15 ["Util"]
  GETTABLEKS R6 R7 K16 ["BrowserUtils"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K17 ["OpenExperienceQuestionnaire"]
  GETIMPORT R6 K8 [require]
  GETTABLEKS R9 R0 K14 ["Src"]
  GETTABLEKS R8 R9 K15 ["Util"]
  GETTABLEKS R7 R8 K16 ["BrowserUtils"]
  CALL R6 1 1
  GETTABLEKS R5 R6 K18 ["OpenExperienceSettings"]
  GETIMPORT R6 K8 [require]
  GETTABLEKS R8 R0 K9 ["Packages"]
  GETTABLEKS R7 R8 K19 ["Framework"]
  CALL R6 1 1
  GETTABLEKS R7 R6 K20 ["ContextServices"]
  GETTABLEKS R8 R7 K21 ["withContext"]
  GETIMPORT R9 K8 [require]
  GETTABLEKS R11 R0 K9 ["Packages"]
  GETTABLEKS R10 R11 K22 ["Cryo"]
  CALL R9 1 1
  GETTABLEKS R11 R6 K15 ["Util"]
  GETTABLEKS R10 R11 K23 ["LayoutOrderIterator"]
  GETTABLEKS R11 R6 K24 ["UI"]
  GETTABLEKS R12 R11 K25 ["TextLabel"]
  GETTABLEKS R13 R11 K26 ["Button"]
  GETTABLEKS R14 R11 K27 ["TextWithInlineLink"]
  GETTABLEKS R15 R11 K28 ["Pane"]
  GETTABLEKS R17 R6 K15 ["Util"]
  GETTABLEKS R16 R17 K29 ["GetTextSize"]
  DUPCLOSURE R17 K30 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R2
  SETTABLEKS R17 R3 K31 ["init"]
  DUPCLOSURE R17 K32 [PROTO_2]
  SETTABLEKS R17 R3 K33 ["didMount"]
  DUPCLOSURE R17 K34 [PROTO_5]
  CAPTURE VAL R1
  CAPTURE VAL R10
  CAPTURE VAL R16
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R4
  CAPTURE VAL R15
  CAPTURE VAL R14
  SETTABLEKS R17 R3 K35 ["render"]
  MOVE R17 R8
  DUPTABLE R18 K38 [{"Localization", "Stylizer"}]
  GETTABLEKS R19 R7 K36 ["Localization"]
  SETTABLEKS R19 R18 K36 ["Localization"]
  GETTABLEKS R19 R7 K37 ["Stylizer"]
  SETTABLEKS R19 R18 K37 ["Stylizer"]
  CALL R17 1 1
  MOVE R18 R3
  CALL R17 1 1
  MOVE R3 R17
  RETURN R3 1
