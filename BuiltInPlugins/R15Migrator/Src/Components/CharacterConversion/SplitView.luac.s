PROTO_0:
  NEWTABLE R1 0 0
  MOVE R2 R0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETTABLEKS R7 R5 K0 ["Name"]
  SETTABLE R6 R1 R7
  FORGLOOP R2 2 [-4]
  RETURN R1 1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["previewModel"]
  JUMPIF R2 [+1]
  RETURN R0 0
  NEWTABLE R3 0 0
  MOVE R4 R0
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K2 ["GetLimbForR15Part"]
  GETTABLEKS R10 R7 K3 ["Name"]
  CALL R9 1 1
  JUMPIFNOT R9 [+2]
  LOADB R10 1
  SETTABLE R10 R3 R9
  FORGLOOP R4 1 [-10]
  GETUPVAL R4 0
  DUPTABLE R6 K6 [{"selectedOriginalParts", "selectedConvertedParts"}]
  SETTABLEKS R3 R6 K4 ["selectedOriginalParts"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K7 ["mapToNames"]
  MOVE R8 R0
  CALL R7 1 1
  SETTABLEKS R7 R6 K5 ["selectedConvertedParts"]
  NAMECALL R4 R4 K8 ["setState"]
  CALL R4 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["convertedModel"]
  JUMPIF R2 [+1]
  RETURN R0 0
  NEWTABLE R3 0 0
  MOVE R4 R0
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K2 ["GetBodyPartR6"]
  MOVE R10 R7
  CALL R9 1 1
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K3 ["GetR15PartsFromBodyPart"]
  MOVE R11 R9
  CALL R10 1 1
  JUMPIFNOT R10 [+8]
  MOVE R11 R10
  LOADNIL R12
  LOADNIL R13
  FORGPREP R11
  LOADB R16 1
  SETTABLE R16 R3 R15
  FORGLOOP R11 2 [-3]
  FORGLOOP R4 1 [-20]
  GETUPVAL R4 0
  DUPTABLE R6 K6 [{"selectedOriginalParts", "selectedConvertedParts"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K7 ["mapToNames"]
  MOVE R8 R0
  CALL R7 1 1
  SETTABLEKS R7 R6 K4 ["selectedOriginalParts"]
  SETTABLEKS R3 R6 K5 ["selectedConvertedParts"]
  NAMECALL R4 R4 K8 ["setState"]
  CALL R4 2 0
  RETURN R0 0

PROTO_3:
  DUPTABLE R1 K2 [{"selectedOriginalParts", "selectedConvertedParts"}]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K0 ["selectedOriginalParts"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K1 ["selectedConvertedParts"]
  SETTABLEKS R1 R0 K3 ["state"]
  DUPCLOSURE R1 K4 [PROTO_0]
  SETTABLEKS R1 R0 K5 ["mapToNames"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K6 ["selectMatchingOriginalPart"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K7 ["selectMatchingConvertedParts"]
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["state"]
  GETTABLEKS R2 R0 K1 ["props"]
  GETTABLEKS R3 R1 K2 ["selectedOriginalParts"]
  GETTABLEKS R4 R1 K3 ["selectedConvertedParts"]
  GETTABLEKS R5 R2 K4 ["previewModel"]
  GETTABLEKS R6 R2 K5 ["convertedModel"]
  GETTABLEKS R7 R2 K6 ["Stylizer"]
  GETTABLEKS R11 R7 K7 ["Arrow"]
  GETTABLEKS R10 R11 K8 ["Size"]
  GETTABLEKS R9 R10 K9 ["X"]
  GETTABLEKS R8 R9 K10 ["Offset"]
  GETTABLEKS R11 R7 K12 ["ArrowPadding"]
  MULK R10 R11 K11 [2]
  ADD R9 R8 R10
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K13 ["LayoutOrderIterator"]
  GETTABLEKS R10 R11 K14 ["new"]
  CALL R10 0 1
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K15 ["createElement"]
  GETUPVAL R12 2
  DUPTABLE R13 K21 [{"AutomaticSize", "Layout", "HorizontalAlignment", "VerticalAlignment", "Size", "Spacing"}]
  GETIMPORT R14 K24 [Enum.AutomaticSize.Y]
  SETTABLEKS R14 R13 K16 ["AutomaticSize"]
  GETIMPORT R14 K27 [Enum.FillDirection.Horizontal]
  SETTABLEKS R14 R13 K17 ["Layout"]
  GETIMPORT R14 K29 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R14 R13 K18 ["HorizontalAlignment"]
  GETIMPORT R14 K31 [Enum.VerticalAlignment.Center]
  SETTABLEKS R14 R13 K19 ["VerticalAlignment"]
  GETIMPORT R14 K34 [UDim2.fromScale]
  LOADN R15 1
  LOADN R16 0
  CALL R14 2 1
  SETTABLEKS R14 R13 K8 ["Size"]
  GETTABLEKS R14 R7 K35 ["HorizontalSpacing"]
  SETTABLEKS R14 R13 K20 ["Spacing"]
  DUPTABLE R14 K38 [{"Left", "ArrowFrame", "Right"}]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K15 ["createElement"]
  GETUPVAL R16 2
  DUPTABLE R17 K40 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Size", "VerticalAlignment", "Spacing"}]
  GETIMPORT R18 K24 [Enum.AutomaticSize.Y]
  SETTABLEKS R18 R17 K16 ["AutomaticSize"]
  GETIMPORT R18 K29 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R18 R17 K18 ["HorizontalAlignment"]
  GETIMPORT R18 K42 [Enum.FillDirection.Vertical]
  SETTABLEKS R18 R17 K17 ["Layout"]
  NAMECALL R18 R10 K43 ["getNextOrder"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K39 ["LayoutOrder"]
  GETIMPORT R18 K44 [UDim2.new]
  LOADN R19 0
  GETTABLEKS R20 R7 K45 ["Width"]
  LOADN R21 0
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K8 ["Size"]
  GETIMPORT R18 K47 [Enum.VerticalAlignment.Top]
  SETTABLEKS R18 R17 K19 ["VerticalAlignment"]
  GETTABLEKS R18 R7 K48 ["VerticalSpacing"]
  SETTABLEKS R18 R17 K20 ["Spacing"]
  DUPTABLE R18 K50 [{"CharacterPreview"}]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K15 ["createElement"]
  GETUPVAL R20 3
  DUPTABLE R21 K54 [{"Character", "OnSelectionChange", "Selection"}]
  SETTABLEKS R5 R21 K51 ["Character"]
  GETTABLEKS R22 R0 K55 ["selectMatchingConvertedParts"]
  SETTABLEKS R22 R21 K52 ["OnSelectionChange"]
  SETTABLEKS R3 R21 K53 ["Selection"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K49 ["CharacterPreview"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K28 ["Left"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K15 ["createElement"]
  LOADK R16 K56 ["Frame"]
  DUPTABLE R17 K58 [{"AutomaticSize", "BackgroundTransparency", "LayoutOrder", "Size"}]
  GETIMPORT R18 K24 [Enum.AutomaticSize.Y]
  SETTABLEKS R18 R17 K16 ["AutomaticSize"]
  LOADN R18 1
  SETTABLEKS R18 R17 K57 ["BackgroundTransparency"]
  NAMECALL R18 R10 K43 ["getNextOrder"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K39 ["LayoutOrder"]
  GETIMPORT R18 K44 [UDim2.new]
  LOADN R19 0
  MOVE R20 R9
  LOADN R21 0
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K8 ["Size"]
  DUPTABLE R18 K59 [{"Arrow"}]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K15 ["createElement"]
  GETUPVAL R20 4
  DUPTABLE R21 K66 [{"AnchorPoint", "Image", "ImageColor3", "ImageRectOffset", "ImageRectSize", "Position", "Size"}]
  GETIMPORT R22 K68 [Vector2.new]
  LOADK R23 K69 [0.5]
  LOADN R24 0
  CALL R22 2 1
  SETTABLEKS R22 R21 K60 ["AnchorPoint"]
  GETTABLEKS R23 R7 K7 ["Arrow"]
  GETTABLEKS R22 R23 K61 ["Image"]
  SETTABLEKS R22 R21 K61 ["Image"]
  GETTABLEKS R23 R7 K7 ["Arrow"]
  GETTABLEKS R22 R23 K70 ["Color"]
  SETTABLEKS R22 R21 K62 ["ImageColor3"]
  GETTABLEKS R23 R7 K7 ["Arrow"]
  GETTABLEKS R22 R23 K10 ["Offset"]
  SETTABLEKS R22 R21 K63 ["ImageRectOffset"]
  GETTABLEKS R23 R7 K7 ["Arrow"]
  GETTABLEKS R22 R23 K64 ["ImageRectSize"]
  SETTABLEKS R22 R21 K64 ["ImageRectSize"]
  GETIMPORT R22 K34 [UDim2.fromScale]
  LOADK R23 K69 [0.5]
  LOADN R24 0
  CALL R22 2 1
  SETTABLEKS R22 R21 K65 ["Position"]
  GETTABLEKS R23 R7 K7 ["Arrow"]
  GETTABLEKS R22 R23 K8 ["Size"]
  SETTABLEKS R22 R21 K8 ["Size"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K7 ["Arrow"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K36 ["ArrowFrame"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K15 ["createElement"]
  GETUPVAL R16 2
  DUPTABLE R17 K40 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Size", "VerticalAlignment", "Spacing"}]
  GETIMPORT R18 K24 [Enum.AutomaticSize.Y]
  SETTABLEKS R18 R17 K16 ["AutomaticSize"]
  GETIMPORT R18 K29 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R18 R17 K18 ["HorizontalAlignment"]
  GETIMPORT R18 K42 [Enum.FillDirection.Vertical]
  SETTABLEKS R18 R17 K17 ["Layout"]
  NAMECALL R18 R10 K43 ["getNextOrder"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K39 ["LayoutOrder"]
  GETIMPORT R18 K44 [UDim2.new]
  LOADN R19 0
  GETTABLEKS R20 R7 K45 ["Width"]
  LOADN R21 0
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K8 ["Size"]
  GETIMPORT R18 K47 [Enum.VerticalAlignment.Top]
  SETTABLEKS R18 R17 K19 ["VerticalAlignment"]
  GETTABLEKS R18 R7 K48 ["VerticalSpacing"]
  SETTABLEKS R18 R17 K20 ["Spacing"]
  DUPTABLE R18 K50 [{"CharacterPreview"}]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K15 ["createElement"]
  GETUPVAL R20 3
  DUPTABLE R21 K54 [{"Character", "OnSelectionChange", "Selection"}]
  SETTABLEKS R6 R21 K51 ["Character"]
  GETTABLEKS R22 R0 K71 ["selectMatchingOriginalPart"]
  SETTABLEKS R22 R21 K52 ["OnSelectionChange"]
  SETTABLEKS R4 R21 K53 ["Selection"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K49 ["CharacterPreview"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K37 ["Right"]
  CALL R11 3 -1
  RETURN R11 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["R15Migrator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Roact"]
  CALL R2 1 1
  GETTABLEKS R4 R0 K9 ["Src"]
  GETTABLEKS R3 R4 K10 ["Components"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R3 K11 ["CharacterConversion"]
  GETTABLEKS R5 R6 K12 ["Preview"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K9 ["Src"]
  GETTABLEKS R7 R8 K13 ["Modules"]
  GETTABLEKS R6 R7 K14 ["NpcManager"]
  CALL R5 1 1
  GETTABLEKS R6 R1 K15 ["ContextServices"]
  GETTABLEKS R7 R1 K16 ["UI"]
  GETTABLEKS R8 R1 K17 ["Util"]
  GETTABLEKS R9 R7 K18 ["Image"]
  GETTABLEKS R10 R7 K19 ["Pane"]
  GETTABLEKS R11 R2 K20 ["PureComponent"]
  LOADK R13 K21 ["CharacterSplitView"]
  NAMECALL R11 R11 K22 ["extend"]
  CALL R11 2 1
  DUPCLOSURE R12 K23 [PROTO_3]
  CAPTURE VAL R5
  SETTABLEKS R12 R11 K24 ["init"]
  DUPCLOSURE R12 K25 [PROTO_4]
  CAPTURE VAL R8
  CAPTURE VAL R2
  CAPTURE VAL R10
  CAPTURE VAL R4
  CAPTURE VAL R9
  SETTABLEKS R12 R11 K26 ["render"]
  GETTABLEKS R12 R6 K27 ["withContext"]
  DUPTABLE R13 K29 [{"Stylizer"}]
  GETTABLEKS R14 R6 K28 ["Stylizer"]
  SETTABLEKS R14 R13 K28 ["Stylizer"]
  CALL R12 1 1
  MOVE R13 R11
  CALL R12 1 1
  MOVE R11 R12
  RETURN R11 1
