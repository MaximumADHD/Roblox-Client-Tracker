PROTO_0:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIF R1 [+2]
  LOADNIL R1
  RETURN R1 1
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["new"]
  CALL R1 0 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K1 ["createElement"]
  GETUPVAL R3 3
  DUPTABLE R4 K6 [{"tag", "Size", "AutomaticSize", "LayoutOrder"}]
  LOADK R5 K7 ["row gap-large align-y-top"]
  SETTABLEKS R5 R4 K2 ["tag"]
  GETIMPORT R5 K9 [UDim2.new]
  LOADK R6 K10 [0.5]
  LOADN R7 0
  LOADN R8 0
  LOADN R9 0
  CALL R5 4 1
  SETTABLEKS R5 R4 K3 ["Size"]
  GETIMPORT R5 K13 [Enum.AutomaticSize.Y]
  SETTABLEKS R5 R4 K4 ["AutomaticSize"]
  GETTABLEKS R5 R0 K5 ["LayoutOrder"]
  SETTABLEKS R5 R4 K5 ["LayoutOrder"]
  DUPTABLE R5 K16 [{"Preview", "InfoColumn"}]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K17 [{"LayoutOrder", "AutomaticSize"}]
  NAMECALL R9 R1 K18 ["getNextOrder"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K5 ["LayoutOrder"]
  GETIMPORT R9 K20 [Enum.AutomaticSize.XY]
  SETTABLEKS R9 R8 K4 ["AutomaticSize"]
  DUPTABLE R9 K22 [{"Thumbnail"}]
  GETTABLEKS R10 R0 K23 ["lookPreview"]
  SETTABLEKS R10 R9 K21 ["Thumbnail"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K14 ["Preview"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K24 [{"tag", "LayoutOrder"}]
  LOADK R9 K25 ["col gap-large grow auto-y"]
  SETTABLEKS R9 R8 K2 ["tag"]
  NAMECALL R9 R1 K18 ["getNextOrder"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K5 ["LayoutOrder"]
  DUPTABLE R9 K29 [{"CreatorDropdown", "SkinColor", "TotalPrice"}]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K1 ["createElement"]
  GETUPVAL R11 4
  DUPTABLE R12 K34 [{"LayoutOrder", "selectedCreatorId", "creators", "onCreatorChanged", "disabled"}]
  NAMECALL R13 R1 K18 ["getNextOrder"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K5 ["LayoutOrder"]
  GETTABLEKS R13 R0 K30 ["selectedCreatorId"]
  SETTABLEKS R13 R12 K30 ["selectedCreatorId"]
  GETTABLEKS R13 R0 K31 ["creators"]
  SETTABLEKS R13 R12 K31 ["creators"]
  GETTABLEKS R13 R0 K32 ["onCreatorChanged"]
  SETTABLEKS R13 R12 K32 ["onCreatorChanged"]
  GETTABLEKS R13 R0 K35 ["isAvatarLook"]
  SETTABLEKS R13 R12 K33 ["disabled"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K26 ["CreatorDropdown"]
  GETTABLEKS R11 R0 K35 ["isAvatarLook"]
  JUMPIF R11 [+26]
  GETTABLEKS R11 R0 K36 ["skinColor"]
  JUMPIFNOT R11 [+23]
  GETTABLEKS R11 R0 K37 ["onSkinColorChanged"]
  JUMPIFNOT R11 [+20]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K1 ["createElement"]
  GETUPVAL R11 5
  DUPTABLE R12 K40 [{"LayoutOrder", "selectedColor", "onColorChanged"}]
  NAMECALL R13 R1 K18 ["getNextOrder"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K5 ["LayoutOrder"]
  GETTABLEKS R13 R0 K36 ["skinColor"]
  SETTABLEKS R13 R12 K38 ["selectedColor"]
  GETTABLEKS R13 R0 K37 ["onSkinColorChanged"]
  SETTABLEKS R13 R12 K39 ["onColorChanged"]
  CALL R10 2 1
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K27 ["SkinColor"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K1 ["createElement"]
  GETUPVAL R11 6
  DUPTABLE R12 K42 [{"LayoutOrder", "price"}]
  NAMECALL R13 R1 K18 ["getNextOrder"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K5 ["LayoutOrder"]
  GETTABLEKS R13 R0 K43 ["totalPrice"]
  SETTABLEKS R13 R12 K41 ["price"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K28 ["TotalPrice"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K15 ["InfoColumn"]
  CALL R2 3 -1
  RETURN R2 -1

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
  GETTABLEKS R7 R8 K13 ["SkinColorPicker"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R0 K6 ["Packages"]
  GETTABLEKS R8 R9 K14 ["Framework"]
  CALL R7 1 1
  GETTABLEKS R9 R7 K15 ["Util"]
  GETTABLEKS R8 R9 K16 ["LayoutOrderIterator"]
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K17 ["Src"]
  GETTABLEKS R11 R12 K18 ["Flags"]
  GETTABLEKS R10 R11 K19 ["getFFlagAvatarPreviewerLookComposer"]
  CALL R9 1 1
  DUPCLOSURE R10 K20 [PROTO_0]
  CAPTURE VAL R9
  CAPTURE VAL R8
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R5
  RETURN R10 1
