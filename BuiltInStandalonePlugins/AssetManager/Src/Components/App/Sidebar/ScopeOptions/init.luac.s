PROTO_0:
  GETUPVAL R0 0
  LOADB R2 0
  NAMECALL R0 R0 K0 ["closeScopeOptions"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  LOADB R2 1
  NAMECALL R0 R0 K0 ["closeScopeOptions"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["toggleSelectAllOptions"]
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["updateScopeOptions"]
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["toggleScopeOption"]
  CALL R0 2 0
  RETURN R0 0

PROTO_5:
  DUPTABLE R3 K5 [{"ScopeInfo", "Checked", "LayoutOrder", "OnChecked", "Position"}]
  GETUPVAL R4 0
  MOVE R6 R0
  NAMECALL R4 R4 K6 ["getScopeWithUid"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K0 ["ScopeInfo"]
  GETUPVAL R4 0
  MOVE R6 R0
  NAMECALL R4 R4 K7 ["isScopeOptionChecked"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K1 ["Checked"]
  SETTABLEKS R1 R3 K2 ["LayoutOrder"]
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  SETTABLEKS R4 R3 K3 ["OnChecked"]
  SETTABLEKS R2 R3 K4 ["Position"]
  RETURN R3 1

PROTO_6:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["new"]
  CALL R2 0 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K0 ["use"]
  CALL R3 0 1
  GETUPVAL R4 3
  MOVE R5 R3
  CALL R4 1 1
  NEWTABLE R5 0 2
  DUPTABLE R6 K4 [{"Text", "OnClick"}]
  LOADK R9 K5 ["Scopes"]
  LOADK R10 K6 ["CancelOptions"]
  NAMECALL R7 R1 K7 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K2 ["Text"]
  NEWCLOSURE R7 P0
  CAPTURE VAL R3
  SETTABLEKS R7 R6 K3 ["OnClick"]
  DUPTABLE R7 K9 [{"Text", "Tags", "OnClick"}]
  LOADK R10 K5 ["Scopes"]
  LOADK R11 K10 ["SaveOptions"]
  NAMECALL R8 R1 K7 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K2 ["Text"]
  LOADK R8 K11 ["PrimaryBrand"]
  SETTABLEKS R8 R7 K8 ["Tags"]
  NEWCLOSURE R8 P1
  CAPTURE VAL R3
  SETTABLEKS R8 R7 K3 ["OnClick"]
  SETLIST R5 R6 2 [1]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K12 ["createElement"]
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K13 ["View"]
  DUPTABLE R8 K16 [{"LayoutOrder", "tag"}]
  GETTABLEKS R9 R0 K14 ["LayoutOrder"]
  SETTABLEKS R9 R8 K14 ["LayoutOrder"]
  LOADK R9 K17 ["col size-full"]
  SETTABLEKS R9 R8 K15 ["tag"]
  DUPTABLE R9 K20 [{"Contents", "Toolbar"}]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K12 ["createElement"]
  GETUPVAL R12 5
  GETTABLEKS R11 R12 K13 ["View"]
  DUPTABLE R12 K21 [{"tag"}]
  LOADK R13 K22 ["col size-full align-y-top align-x-left fill"]
  SETTABLEKS R13 R12 K15 ["tag"]
  DUPTABLE R13 K28 [{"ToggleSidebarPadding", "Header", "Description", "SelectAllCheckbox", "ListContainer"}]
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K12 ["createElement"]
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K13 ["View"]
  DUPTABLE R16 K16 [{"LayoutOrder", "tag"}]
  NAMECALL R17 R2 K29 ["getNextOrder"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K14 ["LayoutOrder"]
  LOADK R17 K30 ["TopSidebarButtonPadding"]
  SETTABLEKS R17 R16 K15 ["tag"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K23 ["ToggleSidebarPadding"]
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K12 ["createElement"]
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K2 ["Text"]
  DUPTABLE R16 K31 [{"LayoutOrder", "Text", "tag"}]
  NAMECALL R17 R2 K29 ["getNextOrder"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K14 ["LayoutOrder"]
  LOADK R19 K5 ["Scopes"]
  LOADK R20 K32 ["Customize"]
  NAMECALL R17 R1 K7 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K2 ["Text"]
  LOADK R17 K33 ["text-wrap text-align-x-left padding-x-small padding-top-medium padding-top-xsmall text-title-large size-full-0 auto-y"]
  SETTABLEKS R17 R16 K15 ["tag"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K24 ["Header"]
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K12 ["createElement"]
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K2 ["Text"]
  DUPTABLE R16 K31 [{"LayoutOrder", "Text", "tag"}]
  NAMECALL R17 R2 K29 ["getNextOrder"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K14 ["LayoutOrder"]
  LOADK R19 K5 ["Scopes"]
  LOADK R20 K34 ["OptionsDescription"]
  NAMECALL R17 R1 K7 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K2 ["Text"]
  LOADK R17 K35 ["text-wrap text-body-small text-align-x-left padding-small padding-top-xsmall size-full-0 auto-y"]
  SETTABLEKS R17 R16 K15 ["tag"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K25 ["Description"]
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K12 ["createElement"]
  GETUPVAL R15 6
  DUPTABLE R16 K38 [{"LayoutOrder", "Text", "Checked", "OnChecked"}]
  NAMECALL R17 R2 K29 ["getNextOrder"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K14 ["LayoutOrder"]
  LOADK R19 K5 ["Scopes"]
  LOADK R20 K39 ["SelectAll"]
  NAMECALL R17 R1 K7 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K2 ["Text"]
  NAMECALL R17 R3 K40 ["hasAllOptionsChecked"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K36 ["Checked"]
  NEWCLOSURE R17 P2
  CAPTURE VAL R3
  SETTABLEKS R17 R16 K37 ["OnChecked"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K26 ["SelectAllCheckbox"]
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K12 ["createElement"]
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K13 ["View"]
  DUPTABLE R16 K16 [{"LayoutOrder", "tag"}]
  NAMECALL R17 R2 K29 ["getNextOrder"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K14 ["LayoutOrder"]
  LOADK R17 K41 ["col size-full padding-xsmall fill"]
  SETTABLEKS R17 R16 K15 ["tag"]
  DUPTABLE R17 K44 [{"TextFilterInput", "List"}]
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K12 ["createElement"]
  GETUPVAL R19 7
  DUPTABLE R20 K50 [{"LayoutOrder", "PlaceholderText", "IncrementalTextSearch", "OnSearchRequested", "ShowSearchIcon", "ShowSearchButton"}]
  NAMECALL R21 R2 K29 ["getNextOrder"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K14 ["LayoutOrder"]
  LOADK R23 K51 ["SearchOptions"]
  LOADK R24 K52 ["FilterPlaceholder"]
  NAMECALL R21 R1 K7 ["getText"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K45 ["PlaceholderText"]
  LOADB R21 1
  SETTABLEKS R21 R20 K46 ["IncrementalTextSearch"]
  NEWCLOSURE R21 P3
  CAPTURE VAL R3
  SETTABLEKS R21 R20 K47 ["OnSearchRequested"]
  LOADB R21 1
  SETTABLEKS R21 R20 K48 ["ShowSearchIcon"]
  LOADB R21 0
  SETTABLEKS R21 R20 K49 ["ShowSearchButton"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K42 ["TextFilterInput"]
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K12 ["createElement"]
  GETUPVAL R19 8
  NEWTABLE R20 8 0
  NAMECALL R21 R2 K29 ["getNextOrder"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K14 ["LayoutOrder"]
  NEWCLOSURE R21 P4
  CAPTURE VAL R3
  SETTABLEKS R21 R20 K53 ["GetRowProps"]
  SETTABLEKS R4 R20 K54 ["Rows"]
  GETUPVAL R21 6
  SETTABLEKS R21 R20 K55 ["RowComponent"]
  GETIMPORT R21 K59 [Enum.ScrollingDirection.Y]
  SETTABLEKS R21 R20 K57 ["ScrollingDirection"]
  GETUPVAL R22 4
  GETTABLEKS R21 R22 K60 ["Tag"]
  LOADK R22 K61 ["fill"]
  SETTABLE R22 R20 R21
  CALL R18 2 1
  SETTABLEKS R18 R17 K43 ["List"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K27 ["ListContainer"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K18 ["Contents"]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K12 ["createElement"]
  GETUPVAL R11 9
  DUPTABLE R12 K63 [{"LayoutOrder", "Buttons"}]
  NAMECALL R13 R2 K29 ["getNextOrder"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K14 ["LayoutOrder"]
  SETTABLEKS R5 R12 K62 ["Buttons"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K19 ["Toolbar"]
  CALL R6 3 -1
  RETURN R6 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetManager"]
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
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K10 ["ContextServices"]
  GETTABLEKS R5 R4 K11 ["Localization"]
  GETTABLEKS R7 R3 K12 ["Util"]
  GETTABLEKS R6 R7 K13 ["LayoutOrderIterator"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R0 K14 ["Src"]
  GETTABLEKS R8 R9 K15 ["Types"]
  CALL R7 1 1
  GETTABLEKS R8 R3 K16 ["UI"]
  GETTABLEKS R9 R8 K17 ["List"]
  GETTABLEKS R10 R8 K18 ["SearchBar"]
  GETIMPORT R11 K5 [require]
  GETIMPORT R13 K1 [script]
  GETTABLEKS R12 R13 K19 ["CheckboxRow"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R16 R0 K14 ["Src"]
  GETTABLEKS R15 R16 K20 ["Components"]
  GETTABLEKS R14 R15 K21 ["Shared"]
  GETTABLEKS R13 R14 K22 ["Toolbar"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K14 ["Src"]
  GETTABLEKS R15 R16 K23 ["Controllers"]
  GETTABLEKS R14 R15 K24 ["ExplorerController"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K14 ["Src"]
  GETTABLEKS R16 R17 K25 ["Hooks"]
  GETTABLEKS R15 R16 K26 ["useGroupOptions"]
  CALL R14 1 1
  DUPCLOSURE R15 K27 [PROTO_6]
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R11
  CAPTURE VAL R10
  CAPTURE VAL R9
  CAPTURE VAL R12
  RETURN R15 1
