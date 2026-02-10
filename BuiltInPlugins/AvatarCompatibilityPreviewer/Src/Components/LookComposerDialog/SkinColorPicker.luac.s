PROTO_0:
  NOT R1 R0
  RETURN R1 1

PROTO_1:
  GETUPVAL R0 0
  DUPCLOSURE R1 K0 [PROTO_0]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["onColorChanged"]
  MOVE R3 R0
  CALL R2 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIF R1 [+2]
  LOADNIL R1
  RETURN R1 1
  GETUPVAL R1 1
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K1 ["useState"]
  LOADB R3 0
  CALL R2 1 2
  LOADK R5 K2 ["#"]
  GETTABLEKS R6 R0 K3 ["selectedColor"]
  NAMECALL R6 R6 K4 ["ToHex"]
  CALL R6 1 1
  CONCAT R4 R5 R6
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K5 ["useCallback"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R3
  NEWTABLE R7 0 0
  CALL R5 2 1
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K5 ["useCallback"]
  NEWCLOSURE R7 P1
  CAPTURE VAL R0
  NEWTABLE R8 0 1
  GETTABLEKS R9 R0 K6 ["onColorChanged"]
  SETLIST R8 R9 1 [1]
  CALL R6 2 1
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K7 ["createElement"]
  GETUPVAL R8 3
  DUPTABLE R9 K12 [{"tag", "Size", "AutomaticSize", "LayoutOrder"}]
  LOADK R10 K13 ["col gap-small auto-y"]
  SETTABLEKS R10 R9 K8 ["tag"]
  GETIMPORT R10 K16 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 0
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K9 ["Size"]
  GETIMPORT R10 K19 [Enum.AutomaticSize.Y]
  SETTABLEKS R10 R9 K10 ["AutomaticSize"]
  GETTABLEKS R10 R0 K11 ["LayoutOrder"]
  SETTABLEKS R10 R9 K11 ["LayoutOrder"]
  DUPTABLE R10 K23 [{"Title", "ColorSwatchButton", "ColorPickerContainer"}]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K7 ["createElement"]
  GETUPVAL R12 4
  DUPTABLE R13 K25 [{"Text", "tag", "LayoutOrder"}]
  LOADK R16 K26 ["LookComposerDialog"]
  LOADK R17 K27 ["ThumbnailSkinColor"]
  NAMECALL R14 R1 K28 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K24 ["Text"]
  LOADK R14 K29 ["text-label-medium auto-xy content-default"]
  SETTABLEKS R14 R13 K8 ["tag"]
  LOADN R14 1
  SETTABLEKS R14 R13 K11 ["LayoutOrder"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K20 ["Title"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K7 ["createElement"]
  GETUPVAL R12 3
  DUPTABLE R13 K31 [{"tag", "Size", "LayoutOrder", "onActivated"}]
  LOADK R14 K32 ["bg-surface-100 row align-y-center gap-small padding-small radius-small stroke-default cursor-pointer"]
  SETTABLEKS R14 R13 K8 ["tag"]
  GETIMPORT R14 K16 [UDim2.new]
  LOADN R15 1
  LOADN R16 0
  LOADN R17 0
  LOADN R18 28
  CALL R14 4 1
  SETTABLEKS R14 R13 K9 ["Size"]
  LOADN R14 2
  SETTABLEKS R14 R13 K11 ["LayoutOrder"]
  SETTABLEKS R5 R13 K30 ["onActivated"]
  DUPTABLE R14 K35 [{"ColorSwatch", "ColorLabel"}]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K7 ["createElement"]
  LOADK R16 K36 ["Frame"]
  DUPTABLE R17 K39 [{"Size", "BackgroundColor3", "BorderSizePixel", "LayoutOrder"}]
  GETIMPORT R18 K41 [UDim2.fromOffset]
  LOADN R19 18
  LOADN R20 18
  CALL R18 2 1
  SETTABLEKS R18 R17 K9 ["Size"]
  GETTABLEKS R18 R0 K3 ["selectedColor"]
  SETTABLEKS R18 R17 K37 ["BackgroundColor3"]
  LOADN R18 0
  SETTABLEKS R18 R17 K38 ["BorderSizePixel"]
  LOADN R18 1
  SETTABLEKS R18 R17 K11 ["LayoutOrder"]
  DUPTABLE R18 K43 [{"UICorner"}]
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K7 ["createElement"]
  LOADK R20 K42 ["UICorner"]
  DUPTABLE R21 K45 [{"CornerRadius"}]
  GETIMPORT R22 K47 [UDim.new]
  LOADN R23 0
  LOADN R24 4
  CALL R22 2 1
  SETTABLEKS R22 R21 K44 ["CornerRadius"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K42 ["UICorner"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K33 ["ColorSwatch"]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K7 ["createElement"]
  GETUPVAL R16 4
  DUPTABLE R17 K48 [{"tag", "Text", "LayoutOrder"}]
  LOADK R18 K49 ["auto-xy text-body-small content-default"]
  SETTABLEKS R18 R17 K8 ["tag"]
  SETTABLEKS R4 R17 K24 ["Text"]
  LOADN R18 2
  SETTABLEKS R18 R17 K11 ["LayoutOrder"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K34 ["ColorLabel"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K21 ["ColorSwatchButton"]
  MOVE R11 R2
  JUMPIFNOT R11 [+60]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K7 ["createElement"]
  GETUPVAL R12 3
  DUPTABLE R13 K50 [{"tag", "Size", "LayoutOrder"}]
  LOADK R14 K51 ["bg-surface-100 padding-medium radius-small stroke-default clip"]
  SETTABLEKS R14 R13 K8 ["tag"]
  GETIMPORT R14 K41 [UDim2.fromOffset]
  LOADN R15 64
  LOADN R16 64
  CALL R14 2 1
  SETTABLEKS R14 R13 K9 ["Size"]
  LOADN R14 3
  SETTABLEKS R14 R13 K11 ["LayoutOrder"]
  DUPTABLE R14 K53 [{"PickerWrapper"}]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K7 ["createElement"]
  GETUPVAL R16 3
  DUPTABLE R17 K54 [{"Size"}]
  GETIMPORT R18 K41 [UDim2.fromOffset]
  LOADN R19 44
  LOADN R20 200
  CALL R18 2 1
  SETTABLEKS R18 R17 K9 ["Size"]
  DUPTABLE R18 K56 [{"Picker"}]
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K7 ["createElement"]
  GETUPVAL R21 5
  GETTABLEKS R20 R21 K57 ["ColorPicker"]
  DUPTABLE R21 K60 [{"initialColor", "availableModes", "onColorChanged"}]
  GETTABLEKS R22 R0 K3 ["selectedColor"]
  SETTABLEKS R22 R21 K58 ["initialColor"]
  NEWTABLE R22 0 2
  LOADK R23 K61 ["RGB"]
  LOADK R24 K62 ["HSV"]
  SETLIST R22 R23 2 [1]
  SETTABLEKS R22 R21 K59 ["availableModes"]
  SETTABLEKS R6 R21 K6 ["onColorChanged"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K55 ["Picker"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K52 ["PickerWrapper"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K22 ["ColorPickerContainer"]
  CALL R7 3 -1
  RETURN R7 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Foundation"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["View"]
  GETTABLEKS R4 R2 K10 ["Text"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K6 ["Packages"]
  GETTABLEKS R6 R7 K11 ["Framework"]
  CALL R5 1 1
  GETTABLEKS R7 R5 K12 ["ContextServices"]
  GETTABLEKS R6 R7 K13 ["Localization"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K14 ["Src"]
  GETTABLEKS R9 R10 K15 ["Flags"]
  GETTABLEKS R8 R9 K16 ["getFFlagAvatarPreviewerLookComposer"]
  CALL R7 1 1
  DUPCLOSURE R8 K17 [PROTO_3]
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R2
  RETURN R8 1
