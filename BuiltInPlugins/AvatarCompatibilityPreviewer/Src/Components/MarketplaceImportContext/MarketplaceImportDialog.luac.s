PROTO_0:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIF R1 [+1]
  RETURN R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["use"]
  CALL R1 0 1
  NAMECALL R1 R1 K1 ["get"]
  CALL R1 1 1
  GETUPVAL R2 2
  NAMECALL R2 R2 K0 ["use"]
  CALL R2 1 1
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K2 ["new"]
  CALL R3 0 1
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K3 ["createElement"]
  GETUPVAL R6 5
  GETTABLEKS R5 R6 K4 ["Dialog"]
  DUPTABLE R6 K11 [{"Title", "MinContentSize", "Size", "Modal", "OnClose", "Enabled"}]
  LOADK R9 K12 ["MarketplaceImport"]
  LOADK R10 K13 ["ImportDialogTitle"]
  NAMECALL R7 R2 K14 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K5 ["Title"]
  GETIMPORT R7 K16 [Vector2.new]
  LOADN R8 144
  LOADN R9 144
  CALL R7 2 1
  SETTABLEKS R7 R6 K6 ["MinContentSize"]
  GETIMPORT R7 K16 [Vector2.new]
  LOADN R8 144
  LOADN R9 144
  CALL R7 2 1
  SETTABLEKS R7 R6 K7 ["Size"]
  LOADB R7 1
  SETTABLEKS R7 R6 K8 ["Modal"]
  GETTABLEKS R7 R0 K9 ["OnClose"]
  SETTABLEKS R7 R6 K9 ["OnClose"]
  LOADB R7 1
  SETTABLEKS R7 R6 K10 ["Enabled"]
  DUPTABLE R7 K19 [{"StyleLink", "View"}]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K3 ["createElement"]
  LOADK R9 K17 ["StyleLink"]
  DUPTABLE R10 K21 [{"StyleSheet"}]
  SETTABLEKS R1 R10 K20 ["StyleSheet"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K17 ["StyleLink"]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K3 ["createElement"]
  GETUPVAL R9 6
  DUPTABLE R10 K24 [{"tag", "LayoutOrder"}]
  LOADK R11 K25 ["col margin-small align-x-left align-y-top size-full-0 auto-y gap-large"]
  SETTABLEKS R11 R10 K22 ["tag"]
  NAMECALL R11 R3 K26 ["getNextOrder"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K23 ["LayoutOrder"]
  DUPTABLE R11 K29 [{"ItemIdInput", "Footer"}]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K3 ["createElement"]
  GETUPVAL R13 7
  DUPTABLE R14 K36 [{"text", "placeholder", "label", "onChanged", "size", "width", "LayoutOrder"}]
  LOADK R15 K37 [""]
  SETTABLEKS R15 R14 K30 ["text"]
  LOADK R17 K12 ["MarketplaceImport"]
  LOADK R18 K38 ["ItemIdInputPlaceholder"]
  NAMECALL R15 R2 K14 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K31 ["placeholder"]
  LOADK R17 K12 ["MarketplaceImport"]
  LOADK R18 K39 ["AddAvatarItemsLabel"]
  NAMECALL R15 R2 K14 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K32 ["label"]
  GETTABLEKS R15 R0 K40 ["OnTextChanged"]
  SETTABLEKS R15 R14 K33 ["onChanged"]
  GETUPVAL R16 8
  GETTABLEKS R15 R16 K41 ["Medium"]
  SETTABLEKS R15 R14 K34 ["size"]
  GETIMPORT R15 K43 [UDim.new]
  LOADN R16 1
  LOADN R17 0
  CALL R15 2 1
  SETTABLEKS R15 R14 K35 ["width"]
  NAMECALL R15 R3 K26 ["getNextOrder"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K23 ["LayoutOrder"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K27 ["ItemIdInput"]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K3 ["createElement"]
  GETUPVAL R13 6
  DUPTABLE R14 K24 [{"tag", "LayoutOrder"}]
  LOADK R15 K44 ["row gap-small align-x-right size-full-0"]
  SETTABLEKS R15 R14 K22 ["tag"]
  NAMECALL R15 R3 K26 ["getNextOrder"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K23 ["LayoutOrder"]
  DUPTABLE R15 K47 [{"AddItemsButton", "CancelButton"}]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K3 ["createElement"]
  GETUPVAL R17 9
  DUPTABLE R18 K51 [{"text", "variant", "onActivated", "isDisabled", "width", "size", "LayoutOrder"}]
  LOADK R21 K12 ["MarketplaceImport"]
  LOADK R22 K52 ["AddButtonLabel"]
  NAMECALL R19 R2 K14 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K30 ["text"]
  GETUPVAL R20 10
  GETTABLEKS R19 R20 K53 ["Emphasis"]
  SETTABLEKS R19 R18 K48 ["variant"]
  GETTABLEKS R19 R0 K54 ["OnAddItems"]
  SETTABLEKS R19 R18 K49 ["onActivated"]
  LOADB R19 0
  SETTABLEKS R19 R18 K50 ["isDisabled"]
  GETIMPORT R19 K43 [UDim.new]
  LOADK R20 K55 [0.25]
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K35 ["width"]
  GETUPVAL R20 8
  GETTABLEKS R19 R20 K56 ["Small"]
  SETTABLEKS R19 R18 K34 ["size"]
  NAMECALL R19 R3 K26 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K23 ["LayoutOrder"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K45 ["AddItemsButton"]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K3 ["createElement"]
  GETUPVAL R17 9
  DUPTABLE R18 K51 [{"text", "variant", "onActivated", "isDisabled", "width", "size", "LayoutOrder"}]
  LOADK R21 K12 ["MarketplaceImport"]
  LOADK R22 K57 ["CancelButtonLabel"]
  NAMECALL R19 R2 K14 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K30 ["text"]
  GETUPVAL R20 10
  GETTABLEKS R19 R20 K58 ["Standard"]
  SETTABLEKS R19 R18 K48 ["variant"]
  GETTABLEKS R19 R0 K9 ["OnClose"]
  SETTABLEKS R19 R18 K49 ["onActivated"]
  LOADB R19 0
  SETTABLEKS R19 R18 K50 ["isDisabled"]
  GETIMPORT R19 K43 [UDim.new]
  LOADK R20 K55 [0.25]
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K35 ["width"]
  GETUPVAL R20 8
  GETTABLEKS R19 R20 K56 ["Small"]
  SETTABLEKS R19 R18 K34 ["size"]
  NAMECALL R19 R3 K26 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K23 ["LayoutOrder"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K46 ["CancelButton"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K28 ["Footer"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K18 ["View"]
  CALL R4 3 -1
  RETURN R4 -1

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
  GETTABLEKS R4 R2 K10 ["TextInput"]
  GETTABLEKS R5 R2 K11 ["Button"]
  GETTABLEKS R7 R2 K12 ["Enums"]
  GETTABLEKS R6 R7 K13 ["ButtonVariant"]
  GETTABLEKS R8 R2 K12 ["Enums"]
  GETTABLEKS R7 R8 K14 ["InputSize"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R10 R0 K6 ["Packages"]
  GETTABLEKS R9 R10 K15 ["Framework"]
  CALL R8 1 1
  GETTABLEKS R9 R8 K16 ["UI"]
  GETTABLEKS R11 R8 K17 ["Util"]
  GETTABLEKS R10 R11 K18 ["LayoutOrderIterator"]
  GETTABLEKS R12 R8 K19 ["ContextServices"]
  GETTABLEKS R11 R12 K20 ["Localization"]
  GETTABLEKS R13 R8 K19 ["ContextServices"]
  GETTABLEKS R12 R13 K21 ["Design"]
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K22 ["Src"]
  GETTABLEKS R15 R16 K23 ["Flags"]
  GETTABLEKS R14 R15 K24 ["getFFlagAvatarPreviewerLookComposer"]
  CALL R13 1 1
  DUPCLOSURE R14 K25 [PROTO_0]
  CAPTURE VAL R13
  CAPTURE VAL R12
  CAPTURE VAL R11
  CAPTURE VAL R10
  CAPTURE VAL R1
  CAPTURE VAL R9
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R6
  RETURN R14 1
