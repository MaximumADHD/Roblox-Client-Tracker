PROTO_0:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIF R1 [+2]
  LOADNIL R1
  RETURN R1 1
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 2
  DUPTABLE R3 K5 [{"tag", "Size", "AutomaticSize", "LayoutOrder"}]
  LOADK R4 K6 ["row gap-large align-y-top"]
  SETTABLEKS R4 R3 K1 ["tag"]
  GETIMPORT R4 K9 [UDim2.new]
  LOADK R5 K10 [0.5]
  LOADN R6 0
  LOADN R7 0
  LOADN R8 0
  CALL R4 4 1
  SETTABLEKS R4 R3 K2 ["Size"]
  GETIMPORT R4 K13 [Enum.AutomaticSize.Y]
  SETTABLEKS R4 R3 K3 ["AutomaticSize"]
  GETTABLEKS R4 R0 K4 ["LayoutOrder"]
  SETTABLEKS R4 R3 K4 ["LayoutOrder"]
  DUPTABLE R4 K16 [{"Preview", "InfoColumn"}]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 3
  DUPTABLE R7 K17 [{"LayoutOrder"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K4 ["LayoutOrder"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K14 ["Preview"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K18 [{"tag", "LayoutOrder"}]
  LOADK R8 K19 ["col gap-large grow auto-y"]
  SETTABLEKS R8 R7 K1 ["tag"]
  LOADN R8 2
  SETTABLEKS R8 R7 K4 ["LayoutOrder"]
  DUPTABLE R8 K23 [{"CreatorDropdown", "SkinColor", "TotalPrice"}]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K0 ["createElement"]
  GETUPVAL R10 4
  DUPTABLE R11 K28 [{"LayoutOrder", "selectedCreatorId", "creators", "onCreatorChanged", "disabled"}]
  LOADN R12 1
  SETTABLEKS R12 R11 K4 ["LayoutOrder"]
  GETTABLEKS R12 R0 K24 ["selectedCreatorId"]
  SETTABLEKS R12 R11 K24 ["selectedCreatorId"]
  GETTABLEKS R12 R0 K25 ["creators"]
  SETTABLEKS R12 R11 K25 ["creators"]
  GETTABLEKS R12 R0 K26 ["onCreatorChanged"]
  SETTABLEKS R12 R11 K26 ["onCreatorChanged"]
  GETTABLEKS R12 R0 K29 ["isAvatarLook"]
  SETTABLEKS R12 R11 K27 ["disabled"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K20 ["CreatorDropdown"]
  GETTABLEKS R10 R0 K29 ["isAvatarLook"]
  JUMPIF R10 [+24]
  GETTABLEKS R10 R0 K30 ["skinColor"]
  JUMPIFNOT R10 [+21]
  GETTABLEKS R10 R0 K31 ["onSkinColorChanged"]
  JUMPIFNOT R10 [+18]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K0 ["createElement"]
  GETUPVAL R10 5
  DUPTABLE R11 K34 [{"LayoutOrder", "selectedColor", "onColorChanged"}]
  LOADN R12 2
  SETTABLEKS R12 R11 K4 ["LayoutOrder"]
  GETTABLEKS R12 R0 K30 ["skinColor"]
  SETTABLEKS R12 R11 K32 ["selectedColor"]
  GETTABLEKS R12 R0 K31 ["onSkinColorChanged"]
  SETTABLEKS R12 R11 K33 ["onColorChanged"]
  CALL R9 2 1
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K21 ["SkinColor"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K0 ["createElement"]
  GETUPVAL R10 6
  DUPTABLE R11 K36 [{"LayoutOrder", "price"}]
  LOADN R12 3
  SETTABLEKS R12 R11 K4 ["LayoutOrder"]
  GETTABLEKS R12 R0 K37 ["totalPrice"]
  SETTABLEKS R12 R11 K35 ["price"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K22 ["TotalPrice"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K15 ["InfoColumn"]
  CALL R1 3 -1
  RETURN R1 -1

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
  GETIMPORT R4 K5 [require]
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K10 ["Parent"]
  GETTABLEKS R5 R6 K11 ["CreatorSelectionDropdown"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETIMPORT R8 K1 [script]
  GETTABLEKS R7 R8 K10 ["Parent"]
  GETTABLEKS R6 R7 K12 ["TotalPrice"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K10 ["Parent"]
  GETTABLEKS R7 R8 K13 ["LookPreview"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETIMPORT R10 K1 [script]
  GETTABLEKS R9 R10 K10 ["Parent"]
  GETTABLEKS R8 R9 K14 ["SkinColorPicker"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K15 ["Src"]
  GETTABLEKS R10 R11 K16 ["Flags"]
  GETTABLEKS R9 R10 K17 ["getFFlagAvatarPreviewerLookComposer"]
  CALL R8 1 1
  DUPCLOSURE R9 K18 [PROTO_0]
  CAPTURE VAL R8
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R7
  CAPTURE VAL R5
  RETURN R9 1
