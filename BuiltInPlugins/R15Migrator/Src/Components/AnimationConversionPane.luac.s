PROTO_0:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["animations"]
  NEWTABLE R2 0 0
  MOVE R3 R1
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  GETTABLEKS R8 R7 K2 ["animationAssetInfo"]
  DUPTABLE R9 K4 [{"id"}]
  LOADK R10 K5 [""]
  SETTABLEKS R10 R9 K3 ["id"]
  GETTABLEKS R10 R7 K6 ["converted"]
  JUMPIFNOT R10 [+8]
  GETIMPORT R10 K9 [string.format]
  LOADK R11 K10 [" (%d)"]
  GETTABLEKS R12 R7 K6 ["converted"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K6 ["converted"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K11 ["RobloxAsset"]
  NAMECALL R10 R8 K12 ["IsA"]
  CALL R10 2 1
  JUMPIFNOT R10 [+8]
  GETIMPORT R10 K9 [string.format]
  LOADK R11 K10 [" (%d)"]
  GETTABLEKS R12 R8 K3 ["id"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K3 ["id"]
  SETTABLE R9 R2 R6
  FORGLOOP R3 2 [-34]
  RETURN R2 1

PROTO_1:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["new"]
  CALL R4 0 1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K1 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K6 [{"BackgroundColor", "Layout", "HorizontalAlignment", "VerticalAlignment"}]
  GETTABLEKS R8 R0 K2 ["BackgroundColor"]
  SETTABLEKS R8 R7 K2 ["BackgroundColor"]
  GETIMPORT R8 K10 [Enum.FillDirection.Vertical]
  SETTABLEKS R8 R7 K3 ["Layout"]
  GETIMPORT R8 K12 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R8 R7 K4 ["HorizontalAlignment"]
  GETIMPORT R8 K14 [Enum.VerticalAlignment.Top]
  SETTABLEKS R8 R7 K5 ["VerticalAlignment"]
  DUPTABLE R8 K18 [{"Instructions", "Content", "Footer"}]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K1 ["createElement"]
  GETUPVAL R10 3
  DUPTABLE R11 K22 [{"LayoutOrder", "Message", "Height"}]
  NAMECALL R12 R4 K23 ["getNextOrder"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K19 ["LayoutOrder"]
  LOADK R14 K24 ["AnimationConversion"]
  LOADK R15 K15 ["Instructions"]
  NAMECALL R12 R3 K25 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K20 ["Message"]
  GETTABLEKS R12 R0 K26 ["InstructionsHeight"]
  SETTABLEKS R12 R11 K21 ["Height"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K15 ["Instructions"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K1 ["createElement"]
  GETUPVAL R10 2
  DUPTABLE R11 K28 [{"LayoutOrder", "Size", "Layout", "HorizontalAlignment", "VerticalAlignment"}]
  NAMECALL R12 R4 K23 ["getNextOrder"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K19 ["LayoutOrder"]
  GETIMPORT R12 K30 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 1
  GETTABLEKS R18 R0 K31 ["FooterHeight"]
  MINUS R17 R18
  GETTABLEKS R18 R0 K26 ["InstructionsHeight"]
  SUB R16 R17 R18
  CALL R12 4 1
  SETTABLEKS R12 R11 K27 ["Size"]
  GETIMPORT R12 K10 [Enum.FillDirection.Vertical]
  SETTABLEKS R12 R11 K3 ["Layout"]
  GETIMPORT R12 K12 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R12 R11 K4 ["HorizontalAlignment"]
  GETIMPORT R12 K14 [Enum.VerticalAlignment.Top]
  SETTABLEKS R12 R11 K5 ["VerticalAlignment"]
  DUPTABLE R12 K34 [{"PreviewContainer", "AnimationList"}]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K1 ["createElement"]
  GETUPVAL R14 4
  DUPTABLE R15 K38 [{"LayoutOrder", "ExpandedSize", "Padding", "Text"}]
  NAMECALL R16 R4 K23 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K19 ["LayoutOrder"]
  GETTABLEKS R16 R0 K39 ["PreviewContainerSize"]
  SETTABLEKS R16 R15 K35 ["ExpandedSize"]
  GETTABLEKS R16 R0 K36 ["Padding"]
  SETTABLEKS R16 R15 K36 ["Padding"]
  LOADK R18 K24 ["AnimationConversion"]
  LOADK R19 K40 ["Preview"]
  NAMECALL R16 R3 K25 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K37 ["Text"]
  DUPTABLE R16 K41 [{"Preview"}]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K1 ["createElement"]
  GETUPVAL R18 5
  CALL R17 1 1
  SETTABLEKS R17 R16 K40 ["Preview"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K32 ["PreviewContainer"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K1 ["createElement"]
  GETUPVAL R14 6
  DUPTABLE R15 K45 [{"Title", "Items", "Tags", "LayoutOrder", "Size"}]
  LOADK R18 K24 ["AnimationConversion"]
  LOADK R19 K46 ["Animations"]
  NAMECALL R16 R3 K25 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K42 ["Title"]
  SETTABLEKS R1 R15 K43 ["Items"]
  SETTABLEKS R2 R15 K44 ["Tags"]
  NAMECALL R16 R4 K23 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K19 ["LayoutOrder"]
  GETTABLEKS R16 R0 K47 ["ListSize"]
  SETTABLEKS R16 R15 K27 ["Size"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K33 ["AnimationList"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K16 ["Content"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K1 ["createElement"]
  GETUPVAL R10 7
  DUPTABLE R11 K48 [{"LayoutOrder", "Size"}]
  NAMECALL R12 R4 K23 ["getNextOrder"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K19 ["LayoutOrder"]
  GETIMPORT R12 K30 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  GETTABLEKS R16 R0 K31 ["FooterHeight"]
  CALL R12 4 1
  SETTABLEKS R12 R11 K27 ["Size"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K17 ["Footer"]
  CALL R5 3 -1
  RETURN R5 -1

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R3 1
  NEWTABLE R4 0 0
  DUPTABLE R5 K2 [{"Label"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["createElement"]
  GETUPVAL R7 2
  DUPTABLE R8 K4 [{"Text"}]
  LOADK R11 K5 ["AnimationConversion"]
  LOADK R12 K6 ["NoAnimations"]
  NAMECALL R9 R1 K7 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K3 ["Text"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K1 ["Label"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_3:
  GETIMPORT R2 K1 [next]
  GETTABLEKS R4 R0 K2 ["props"]
  GETTABLEKS R3 R4 K3 ["animations"]
  CALL R2 1 1
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_4:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETTABLEKS R4 R1 K3 ["animations"]
  NAMECALL R5 R0 K4 ["buildTags"]
  CALL R5 1 1
  NAMECALL R6 R0 K5 ["hasAnimations"]
  CALL R6 1 1
  JUMPIFNOT R6 [+7]
  GETUPVAL R6 0
  MOVE R7 R2
  MOVE R8 R4
  MOVE R9 R5
  MOVE R10 R3
  CALL R6 4 -1
  RETURN R6 -1
  GETUPVAL R6 1
  MOVE R7 R2
  MOVE R8 R3
  CALL R6 2 -1
  RETURN R6 -1

PROTO_5:
  DUPTABLE R2 K2 [{"diagnostics", "animations"}]
  GETTABLEKS R4 R0 K3 ["ScriptConversion"]
  GETTABLEKS R3 R4 K0 ["diagnostics"]
  SETTABLEKS R3 R2 K0 ["diagnostics"]
  GETTABLEKS R4 R0 K4 ["AnimationConversion"]
  GETTABLEKS R3 R4 K1 ["animations"]
  SETTABLEKS R3 R2 K1 ["animations"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["RoactRodux"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K9 ["UI"]
  GETTABLEKS R5 R4 K10 ["Pane"]
  GETTABLEKS R6 R4 K11 ["TextLabel"]
  GETTABLEKS R8 R1 K12 ["Util"]
  GETTABLEKS R7 R8 K13 ["LayoutOrderIterator"]
  GETTABLEKS R8 R1 K14 ["ContextServices"]
  GETTABLEKS R10 R0 K15 ["Src"]
  GETTABLEKS R9 R10 K16 ["Components"]
  GETIMPORT R10 K4 [require]
  GETTABLEKS R11 R9 K17 ["AnimationList"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R12 R9 K18 ["AnimationPreviewComponent"]
  CALL R11 1 1
  GETIMPORT R12 K4 [require]
  GETTABLEKS R13 R9 K19 ["AnimationConversionPaneFooter"]
  CALL R12 1 1
  GETIMPORT R13 K4 [require]
  GETTABLEKS R14 R9 K20 ["CollapsiblePane"]
  CALL R13 1 1
  GETIMPORT R14 K4 [require]
  GETTABLEKS R15 R9 K21 ["TabInstructions"]
  CALL R14 1 1
  GETTABLEKS R17 R0 K15 ["Src"]
  GETTABLEKS R16 R17 K12 ["Util"]
  GETTABLEKS R15 R16 K22 ["AnimationConversion"]
  GETIMPORT R17 K4 [require]
  GETTABLEKS R18 R15 K23 ["constants"]
  CALL R17 1 1
  GETTABLEKS R16 R17 K24 ["AssetType"]
  GETIMPORT R17 K4 [require]
  GETTABLEKS R20 R0 K15 ["Src"]
  GETTABLEKS R19 R20 K25 ["Contexts"]
  GETTABLEKS R18 R19 K26 ["NetworkInterface"]
  CALL R17 1 1
  GETTABLEKS R18 R2 K27 ["PureComponent"]
  LOADK R20 K28 ["AnimationConversionPane"]
  NAMECALL R18 R18 K29 ["extend"]
  CALL R18 2 1
  DUPCLOSURE R19 K30 [PROTO_0]
  CAPTURE VAL R16
  SETTABLEKS R19 R18 K31 ["buildTags"]
  DUPCLOSURE R19 K32 [PROTO_1]
  CAPTURE VAL R7
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R14
  CAPTURE VAL R13
  CAPTURE VAL R11
  CAPTURE VAL R10
  CAPTURE VAL R12
  DUPCLOSURE R20 K33 [PROTO_2]
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R6
  DUPCLOSURE R21 K34 [PROTO_3]
  SETTABLEKS R21 R18 K35 ["hasAnimations"]
  DUPCLOSURE R21 K36 [PROTO_4]
  CAPTURE VAL R19
  CAPTURE VAL R20
  SETTABLEKS R21 R18 K37 ["render"]
  DUPCLOSURE R21 K38 [PROTO_5]
  GETTABLEKS R22 R8 K39 ["withContext"]
  DUPTABLE R23 K42 [{"Stylizer", "Localization", "NetworkInterface"}]
  GETTABLEKS R24 R8 K40 ["Stylizer"]
  SETTABLEKS R24 R23 K40 ["Stylizer"]
  GETTABLEKS R24 R8 K41 ["Localization"]
  SETTABLEKS R24 R23 K41 ["Localization"]
  SETTABLEKS R17 R23 K26 ["NetworkInterface"]
  CALL R22 1 1
  MOVE R23 R18
  CALL R22 1 1
  MOVE R18 R22
  GETTABLEKS R22 R3 K43 ["connect"]
  MOVE R23 R21
  CALL R22 1 1
  MOVE R23 R18
  CALL R22 1 -1
  RETURN R22 -1
