PROTO_0:
  GETUPVAL R1 0
  JUMPIF R1 [+9]
  JUMPIFNOT R0 [+2]
  LOADK R1 K0 ["Selected"]
  JUMP [+1]
  LOADK R1 K1 ["Deselected"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["onRowStateChanged"]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIF R1 [+2]
  LOADNIL R1
  RETURN R1 1
  GETUPVAL R1 1
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETTABLEKS R3 R0 K1 ["rowState"]
  JUMPIFEQKS R3 K2 ["Disabled"] [+2]
  LOADB R2 0 +1
  LOADB R2 1
  GETTABLEKS R4 R0 K1 ["rowState"]
  JUMPIFEQKS R4 K3 ["Selected"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K4 ["useCallback"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R2
  CAPTURE VAL R0
  NEWTABLE R6 0 2
  MOVE R7 R2
  GETTABLEKS R8 R0 K5 ["onRowStateChanged"]
  SETLIST R6 R7 2 [1]
  CALL R4 2 1
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K6 ["createElement"]
  GETUPVAL R6 3
  DUPTABLE R7 K12 [{"tag", "Size", "AutomaticSize", "LayoutOrder", "GroupTransparency"}]
  LOADK R8 K13 ["row gap-medium align-y-top padding-small"]
  SETTABLEKS R8 R7 K7 ["tag"]
  GETIMPORT R8 K16 [UDim2.new]
  LOADN R9 1
  LOADN R10 0
  LOADN R11 0
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K8 ["Size"]
  GETIMPORT R8 K19 [Enum.AutomaticSize.Y]
  SETTABLEKS R8 R7 K9 ["AutomaticSize"]
  GETTABLEKS R8 R0 K10 ["LayoutOrder"]
  SETTABLEKS R8 R7 K10 ["LayoutOrder"]
  JUMPIFNOT R2 [+2]
  LOADK R8 K20 [0.5]
  JUMP [+1]
  LOADN R8 0
  SETTABLEKS R8 R7 K11 ["GroupTransparency"]
  DUPTABLE R8 K24 [{"Thumbnail", "Details", "CheckboxContainer"}]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K6 ["createElement"]
  GETUPVAL R10 3
  DUPTABLE R11 K25 [{"tag", "Size", "LayoutOrder"}]
  LOADK R12 K26 ["stroke-default radius-small"]
  SETTABLEKS R12 R11 K7 ["tag"]
  GETIMPORT R12 K28 [UDim2.fromOffset]
  LOADN R13 48
  LOADN R14 48
  CALL R12 2 1
  SETTABLEKS R12 R11 K8 ["Size"]
  LOADN R12 1
  SETTABLEKS R12 R11 K10 ["LayoutOrder"]
  DUPTABLE R12 K30 [{"ColorSwatch"}]
  GETTABLEKS R13 R0 K31 ["color"]
  JUMPIFNOT R13 [+36]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K6 ["createElement"]
  LOADK R14 K32 ["Frame"]
  DUPTABLE R15 K35 [{"Size", "BackgroundColor3", "BorderSizePixel"}]
  GETIMPORT R16 K37 [UDim2.fromScale]
  LOADN R17 1
  LOADN R18 1
  CALL R16 2 1
  SETTABLEKS R16 R15 K8 ["Size"]
  GETTABLEKS R16 R0 K31 ["color"]
  SETTABLEKS R16 R15 K33 ["BackgroundColor3"]
  LOADN R16 0
  SETTABLEKS R16 R15 K34 ["BorderSizePixel"]
  DUPTABLE R16 K39 [{"UICorner"}]
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K6 ["createElement"]
  LOADK R18 K38 ["UICorner"]
  DUPTABLE R19 K41 [{"CornerRadius"}]
  GETIMPORT R20 K43 [UDim.new]
  LOADN R21 0
  LOADN R22 4
  CALL R20 2 1
  SETTABLEKS R20 R19 K40 ["CornerRadius"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K38 ["UICorner"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K29 ["ColorSwatch"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K21 ["Thumbnail"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K6 ["createElement"]
  GETUPVAL R10 3
  DUPTABLE R11 K44 [{"tag", "LayoutOrder"}]
  LOADK R12 K45 ["col grow auto-y"]
  SETTABLEKS R12 R11 K7 ["tag"]
  LOADN R12 2
  SETTABLEKS R12 R11 K10 ["LayoutOrder"]
  DUPTABLE R12 K47 [{"Label"}]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K6 ["createElement"]
  GETUPVAL R14 4
  DUPTABLE R15 K49 [{"Text", "tag", "LayoutOrder"}]
  LOADK R18 K50 ["LookComposerDialog"]
  LOADK R19 K51 ["SkinColor"]
  NAMECALL R16 R1 K52 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K48 ["Text"]
  LOADK R16 K53 ["text-label-medium auto-xy content-default"]
  SETTABLEKS R16 R15 K7 ["tag"]
  LOADN R16 1
  SETTABLEKS R16 R15 K10 ["LayoutOrder"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K46 ["Label"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K22 ["Details"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K6 ["createElement"]
  GETUPVAL R10 3
  DUPTABLE R11 K44 [{"tag", "LayoutOrder"}]
  LOADK R12 K54 ["auto-xy padding-left-medium"]
  SETTABLEKS R12 R11 K7 ["tag"]
  LOADN R12 3
  SETTABLEKS R12 R11 K10 ["LayoutOrder"]
  DUPTABLE R12 K56 [{"Checkbox"}]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K6 ["createElement"]
  GETUPVAL R14 5
  DUPTABLE R15 K62 [{"isChecked", "isDisabled", "label", "onActivated", "size"}]
  SETTABLEKS R3 R15 K57 ["isChecked"]
  SETTABLEKS R2 R15 K58 ["isDisabled"]
  LOADK R16 K63 [""]
  SETTABLEKS R16 R15 K59 ["label"]
  SETTABLEKS R4 R15 K60 ["onActivated"]
  LOADK R16 K64 ["Small"]
  SETTABLEKS R16 R15 K61 ["size"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K55 ["Checkbox"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K23 ["CheckboxContainer"]
  CALL R5 3 -1
  RETURN R5 -1

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
  GETTABLEKS R5 R2 K11 ["Checkbox"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R0 K6 ["Packages"]
  GETTABLEKS R7 R8 K12 ["Framework"]
  CALL R6 1 1
  GETTABLEKS R8 R6 K13 ["ContextServices"]
  GETTABLEKS R7 R8 K14 ["Localization"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K15 ["Src"]
  GETTABLEKS R10 R11 K16 ["Flags"]
  GETTABLEKS R9 R10 K17 ["getFFlagAvatarPreviewerLookComposer"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETIMPORT R12 K1 [script]
  GETTABLEKS R11 R12 K18 ["Parent"]
  GETTABLEKS R10 R11 K19 ["Types"]
  CALL R9 1 1
  DUPCLOSURE R10 K20 [PROTO_1]
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R5
  RETURN R10 1
