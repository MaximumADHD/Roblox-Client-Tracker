PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["onSelected"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["id"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["useCallback"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  NEWTABLE R4 0 1
  GETTABLEKS R5 R0 K1 ["id"]
  SETLIST R4 R5 1 [1]
  CALL R2 2 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["createElement"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K3 ["View"]
  DUPTABLE R5 K8 [{"tag", "onActivated", "testId", "LayoutOrder"}]
  NEWTABLE R6 2 0
  LOADB R7 1
  SETTABLEKS R7 R6 K9 ["size-0-0 auto-xy row align-y-center padding-xsmall gap-xsmall radius-small"]
  GETTABLEKS R7 R0 K10 ["isSelected"]
  SETTABLEKS R7 R6 K11 ["bg-shift-100"]
  SETTABLEKS R6 R5 K4 ["tag"]
  SETTABLEKS R2 R5 K5 ["onActivated"]
  LOADK R7 K12 ["--selector-item-%*"]
  GETTABLEKS R9 R0 K1 ["id"]
  NAMECALL R7 R7 K13 ["format"]
  CALL R7 2 1
  MOVE R6 R7
  SETTABLEKS R6 R5 K6 ["testId"]
  GETTABLEKS R6 R0 K7 ["LayoutOrder"]
  SETTABLEKS R6 R5 K7 ["LayoutOrder"]
  DUPTABLE R6 K16 [{"Name", "Check"}]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K2 ["createElement"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K17 ["Text"]
  DUPTABLE R9 K18 [{"tag", "Text", "LayoutOrder"}]
  NEWTABLE R10 2 0
  LOADB R11 1
  SETTABLEKS R11 R10 K19 ["size-0-0 auto-xy fill text-body-medium text-align-x-left text-truncate-split"]
  GETTABLEKS R11 R0 K10 ["isSelected"]
  SETTABLEKS R11 R10 K20 ["content-emphasis"]
  SETTABLEKS R10 R9 K4 ["tag"]
  GETTABLEKS R10 R0 K21 ["text"]
  SETTABLEKS R10 R9 K17 ["Text"]
  MOVE R10 R1
  CALL R10 0 1
  SETTABLEKS R10 R9 K7 ["LayoutOrder"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K14 ["Name"]
  GETTABLEKS R7 R0 K10 ["isSelected"]
  JUMPIFNOT R7 [+30]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K2 ["createElement"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K22 ["Icon"]
  DUPTABLE R9 K25 [{"name", "size", "LayoutOrder"}]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K26 ["Enums"]
  GETTABLEKS R11 R12 K27 ["IconName"]
  GETTABLEKS R10 R11 K15 ["Check"]
  SETTABLEKS R10 R9 K23 ["name"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K26 ["Enums"]
  GETTABLEKS R11 R12 K28 ["IconSize"]
  GETTABLEKS R10 R11 K29 ["Small"]
  SETTABLEKS R10 R9 K24 ["size"]
  MOVE R10 R1
  CALL R10 0 1
  SETTABLEKS R10 R9 K7 ["LayoutOrder"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K15 ["Check"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_2:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["View"]
  DUPTABLE R4 K4 [{"tag", "LayoutOrder"}]
  LOADK R5 K5 ["size-full-0 auto-y col align-x-center padding-small"]
  SETTABLEKS R5 R4 K2 ["tag"]
  GETTABLEKS R5 R0 K3 ["LayoutOrder"]
  SETTABLEKS R5 R4 K3 ["LayoutOrder"]
  DUPTABLE R5 K7 [{"SearchBar"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K0 ["createElement"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K8 ["TextInput"]
  DUPTABLE R8 K16 [{"label", "size", "width", "placeholder", "leadingIcon", "text", "onChanged", "LayoutOrder"}]
  LOADK R9 K17 [""]
  SETTABLEKS R9 R8 K9 ["label"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K18 ["Enums"]
  GETTABLEKS R10 R11 K19 ["InputSize"]
  GETTABLEKS R9 R10 K20 ["XSmall"]
  SETTABLEKS R9 R8 K10 ["size"]
  GETIMPORT R9 K23 [UDim.new]
  LOADN R10 0
  LOADN R11 184
  CALL R9 2 1
  SETTABLEKS R9 R8 K11 ["width"]
  GETTABLEKS R9 R0 K24 ["searchLabel"]
  SETTABLEKS R9 R8 K12 ["placeholder"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K18 ["Enums"]
  GETTABLEKS R10 R11 K25 ["IconName"]
  GETTABLEKS R9 R10 K26 ["MagnifyingGlass"]
  SETTABLEKS R9 R8 K13 ["leadingIcon"]
  GETTABLEKS R9 R0 K27 ["search"]
  SETTABLEKS R9 R8 K14 ["text"]
  GETTABLEKS R9 R0 K28 ["onSearchChanged"]
  SETTABLEKS R9 R8 K15 ["onChanged"]
  MOVE R9 R1
  CALL R9 0 1
  SETTABLEKS R9 R8 K3 ["LayoutOrder"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K6 ["SearchBar"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_3:
  NEWTABLE R0 0 0
  GETUPVAL R4 0
  GETTABLEKS R1 R4 K0 ["items"]
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  MOVE R7 R0
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K1 ["createElement"]
  GETUPVAL R9 2
  DUPTABLE R10 K8 [{"key", "id", "isSelected", "text", "onSelected", "LayoutOrder"}]
  SETTABLEKS R4 R10 K2 ["key"]
  SETTABLEKS R4 R10 K3 ["id"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K3 ["id"]
  JUMPIFEQ R4 R12 [+2]
  LOADB R11 0 +1
  LOADB R11 1
  SETTABLEKS R11 R10 K4 ["isSelected"]
  SETTABLEKS R5 R10 K5 ["text"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K9 ["onIdChanged"]
  SETTABLEKS R11 R10 K6 ["onSelected"]
  GETUPVAL R11 3
  CALL R11 0 1
  SETTABLEKS R11 R10 K7 ["LayoutOrder"]
  CALL R8 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R6 K12 [table.insert]
  CALL R6 -1 0
  FORGLOOP R1 2 [-36]
  RETURN R0 1

PROTO_4:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["useMemo"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R1
  NEWTABLE R4 0 2
  GETTABLEKS R5 R0 K1 ["items"]
  GETTABLEKS R6 R0 K2 ["id"]
  SETLIST R4 R5 2 [1]
  CALL R2 2 1
  LENGTH R4 R2
  LOADN R5 5
  JUMPIFLT R5 R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  JUMPIFNOT R3 [+9]
  DUPTABLE R4 K4 [{"MinSize"}]
  GETIMPORT R5 K7 [Vector2.new]
  LOADN R6 0
  LOADN R7 125
  CALL R5 2 1
  SETTABLEKS R5 R4 K3 ["MinSize"]
  JUMP [+1]
  LOADNIL R4
  JUMPIFNOT R3 [+2]
  LOADNIL R5
  JUMP [+2]
  GETIMPORT R5 K11 [Enum.AutomaticSize.Y]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K12 ["createElement"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K13 ["ScrollView"]
  DUPTABLE R8 K19 [{"layout", "scroll", "Size", "sizeConstraint", "AutomaticSize", "LayoutOrder"}]
  DUPTABLE R9 K24 [{"HorizontalAlignment", "FillDirection", "SortOrder", "HorizontalFlex"}]
  GETIMPORT R10 K26 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R10 R9 K20 ["HorizontalAlignment"]
  GETIMPORT R10 K28 [Enum.FillDirection.Vertical]
  SETTABLEKS R10 R9 K21 ["FillDirection"]
  GETIMPORT R10 K29 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R10 R9 K22 ["SortOrder"]
  GETIMPORT R10 K32 [Enum.UIFlexAlignment.Fill]
  SETTABLEKS R10 R9 K23 ["HorizontalFlex"]
  SETTABLEKS R9 R8 K14 ["layout"]
  DUPTABLE R9 K37 [{"AutomaticSize", "AutomaticCanvasSize", "ScrollingDirection", "VerticalScrollBarInset", "CanvasSize"}]
  SETTABLEKS R5 R9 K9 ["AutomaticSize"]
  GETIMPORT R10 K11 [Enum.AutomaticSize.Y]
  SETTABLEKS R10 R9 K33 ["AutomaticCanvasSize"]
  GETIMPORT R10 K38 [Enum.ScrollingDirection.Y]
  SETTABLEKS R10 R9 K34 ["ScrollingDirection"]
  GETIMPORT R10 K41 [Enum.ScrollBarInset.None]
  SETTABLEKS R10 R9 K35 ["VerticalScrollBarInset"]
  GETIMPORT R10 K44 [UDim2.fromScale]
  LOADN R11 0
  LOADN R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K36 ["CanvasSize"]
  SETTABLEKS R9 R8 K15 ["scroll"]
  GETIMPORT R9 K44 [UDim2.fromScale]
  LOADN R10 1
  LOADN R11 0
  CALL R9 2 1
  SETTABLEKS R9 R8 K16 ["Size"]
  SETTABLEKS R4 R8 K17 ["sizeConstraint"]
  SETTABLEKS R5 R8 K9 ["AutomaticSize"]
  GETTABLEKS R9 R0 K18 ["LayoutOrder"]
  SETTABLEKS R9 R8 K18 ["LayoutOrder"]
  DUPTABLE R9 K46 [{"Items"}]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K12 ["createElement"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K47 ["View"]
  DUPTABLE R12 K49 [{"tag"}]
  LOADK R13 K50 ["size-0-0 auto-xy col flex-x-fill align-x-left padding-left-small padding-right-small padding-bottom-small"]
  SETTABLEKS R13 R12 K48 ["tag"]
  MOVE R13 R2
  CALL R10 3 1
  SETTABLEKS R10 R9 K45 ["Items"]
  CALL R6 3 -1
  RETURN R6 -1

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["onIdChanged"]
  LOADNIL R1
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["useCallback"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  NEWTABLE R4 0 0
  CALL R2 2 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["createElement"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K2 ["View"]
  DUPTABLE R5 K5 [{"tag", "LayoutOrder"}]
  LOADK R6 K6 ["size-full-0 auto-y col flex-x-fill align-x-center padding-small"]
  SETTABLEKS R6 R5 K3 ["tag"]
  GETTABLEKS R6 R0 K4 ["LayoutOrder"]
  SETTABLEKS R6 R5 K4 ["LayoutOrder"]
  DUPTABLE R6 K8 [{"ResetButton"}]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K1 ["createElement"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K2 ["View"]
  DUPTABLE R9 K11 [{"tag", "onActivated", "testId", "LayoutOrder"}]
  LOADK R10 K12 ["size-0-0 auto-xy row align-y-center padding-xsmall gap-xsmall radius-small"]
  SETTABLEKS R10 R9 K3 ["tag"]
  SETTABLEKS R2 R9 K9 ["onActivated"]
  LOADK R10 K13 ["--selector-reset-button"]
  SETTABLEKS R10 R9 K10 ["testId"]
  MOVE R10 R1
  CALL R10 0 1
  SETTABLEKS R10 R9 K4 ["LayoutOrder"]
  DUPTABLE R10 K15 [{"Name"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K1 ["createElement"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K16 ["Text"]
  DUPTABLE R13 K17 [{"tag", "Text", "LayoutOrder"}]
  LOADK R14 K18 ["size-0-0 auto-xy fill text-body-small text-align-x-left text-truncate-split"]
  SETTABLEKS R14 R13 K3 ["tag"]
  GETTABLEKS R14 R0 K19 ["resetLabel"]
  SETTABLEKS R14 R13 K16 ["Text"]
  MOVE R14 R1
  CALL R14 0 1
  SETTABLEKS R14 R13 K4 ["LayoutOrder"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K14 ["Name"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K7 ["ResetButton"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_7:
  GETUPVAL R1 0
  CALL R1 0 1
  LOADB R2 0
  GETTABLEKS R3 R0 K0 ["id"]
  JUMPIFEQKNIL R3 [+7]
  GETTABLEKS R3 R0 K1 ["resetLabel"]
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["createElement"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K3 ["View"]
  DUPTABLE R5 K6 [{"tag", "Size"}]
  LOADK R6 K7 ["size-0-0 auto-y col align-x-center"]
  SETTABLEKS R6 R5 K4 ["tag"]
  GETIMPORT R6 K10 [UDim2.fromOffset]
  LOADN R7 200
  LOADN R8 0
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["Size"]
  DUPTABLE R6 K15 [{"Header", "Body", "Divider", "Footer"}]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K2 ["createElement"]
  GETUPVAL R8 3
  DUPTABLE R9 K20 [{"search", "onSearchChanged", "searchLabel", "LayoutOrder"}]
  GETTABLEKS R10 R0 K16 ["search"]
  SETTABLEKS R10 R9 K16 ["search"]
  GETTABLEKS R10 R0 K17 ["onSearchChanged"]
  SETTABLEKS R10 R9 K17 ["onSearchChanged"]
  GETTABLEKS R10 R0 K18 ["searchLabel"]
  SETTABLEKS R10 R9 K18 ["searchLabel"]
  MOVE R10 R1
  CALL R10 0 1
  SETTABLEKS R10 R9 K19 ["LayoutOrder"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K11 ["Header"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K2 ["createElement"]
  GETUPVAL R8 4
  DUPTABLE R9 K23 [{"items", "id", "onIdChanged", "LayoutOrder"}]
  GETTABLEKS R10 R0 K21 ["items"]
  SETTABLEKS R10 R9 K21 ["items"]
  GETTABLEKS R10 R0 K0 ["id"]
  SETTABLEKS R10 R9 K0 ["id"]
  GETTABLEKS R10 R0 K22 ["onIdChanged"]
  SETTABLEKS R10 R9 K22 ["onIdChanged"]
  MOVE R10 R1
  CALL R10 0 1
  SETTABLEKS R10 R9 K19 ["LayoutOrder"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K12 ["Body"]
  MOVE R7 R2
  JUMPIFNOT R7 [+12]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K2 ["createElement"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K13 ["Divider"]
  DUPTABLE R9 K24 [{"LayoutOrder"}]
  MOVE R10 R1
  CALL R10 0 1
  SETTABLEKS R10 R9 K19 ["LayoutOrder"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K13 ["Divider"]
  MOVE R7 R2
  JUMPIFNOT R7 [+18]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K2 ["createElement"]
  GETUPVAL R8 5
  DUPTABLE R9 K25 [{"onIdChanged", "resetLabel", "LayoutOrder"}]
  GETTABLEKS R10 R0 K22 ["onIdChanged"]
  SETTABLEKS R10 R9 K22 ["onIdChanged"]
  GETTABLEKS R10 R0 K1 ["resetLabel"]
  SETTABLEKS R10 R9 K1 ["resetLabel"]
  MOVE R10 R1
  CALL R10 0 1
  SETTABLEKS R10 R9 K19 ["LayoutOrder"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K14 ["Footer"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_8:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["onIdChanged"]
  MOVE R2 R0
  CALL R1 1 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["disable"]
  CALL R1 0 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["onSearchChanged"]
  LOADK R1 K1 [""]
  CALL R0 1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["id"]
  JUMPIF R0 [+6]
  GETUPVAL R0 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["placeholderLabel"]
  CALL R0 1 0
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["items"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["id"]
  GETTABLE R0 R1 R2
  JUMPIFNOT R0 [+9]
  GETUPVAL R0 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["items"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["id"]
  GETTABLE R1 R2 R3
  CALL R0 1 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R2 1
  CALL R2 0 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K0 ["useState"]
  GETTABLEKS R4 R0 K1 ["placeholderLabel"]
  CALL R3 1 2
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K2 ["useCallback"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R0
  CAPTURE VAL R2
  NEWTABLE R7 0 0
  CALL R5 2 1
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K3 ["useEffect"]
  NEWCLOSURE R7 P1
  CAPTURE VAL R0
  NEWTABLE R8 0 1
  GETTABLEKS R9 R2 K4 ["enabled"]
  SETLIST R8 R9 1 [1]
  CALL R6 2 0
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K3 ["useEffect"]
  NEWCLOSURE R7 P2
  CAPTURE VAL R0
  CAPTURE VAL R4
  NEWTABLE R8 0 2
  GETTABLEKS R9 R0 K5 ["id"]
  GETTABLEKS R10 R0 K6 ["items"]
  SETLIST R8 R9 2 [1]
  CALL R6 2 0
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K7 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K12 [{"toggle", "text", "maxWidth", "LayoutOrder"}]
  SETTABLEKS R2 R8 K8 ["toggle"]
  SETTABLEKS R3 R8 K9 ["text"]
  LOADN R9 184
  SETTABLEKS R9 R8 K10 ["maxWidth"]
  GETTABLEKS R9 R0 K11 ["LayoutOrder"]
  SETTABLEKS R9 R8 K11 ["LayoutOrder"]
  DUPTABLE R9 K14 [{"Content"}]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K7 ["createElement"]
  GETUPVAL R11 4
  DUPTABLE R12 K20 [{"id", "onIdChanged", "items", "resetLabel", "search", "onSearchChanged", "searchLabel", "LayoutOrder"}]
  GETTABLEKS R13 R0 K5 ["id"]
  SETTABLEKS R13 R12 K5 ["id"]
  SETTABLEKS R5 R12 K15 ["onIdChanged"]
  GETTABLEKS R13 R0 K6 ["items"]
  SETTABLEKS R13 R12 K6 ["items"]
  GETTABLEKS R13 R0 K16 ["resetLabel"]
  SETTABLEKS R13 R12 K16 ["resetLabel"]
  GETTABLEKS R13 R0 K17 ["search"]
  SETTABLEKS R13 R12 K17 ["search"]
  GETTABLEKS R13 R0 K18 ["onSearchChanged"]
  SETTABLEKS R13 R12 K18 ["onSearchChanged"]
  GETTABLEKS R13 R0 K19 ["searchLabel"]
  SETTABLEKS R13 R12 K19 ["searchLabel"]
  MOVE R13 R1
  CALL R13 0 1
  SETTABLEKS R13 R12 K11 ["LayoutOrder"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K13 ["Content"]
  CALL R6 3 -1
  RETURN R6 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["PlaceVersionHistory"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["ReactUtils"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Foundation"]
  CALL R3 1 1
  GETTABLEKS R4 R2 K10 ["createNextOrder"]
  GETTABLEKS R5 R2 K11 ["useToggleState"]
  GETTABLEKS R7 R0 K12 ["Src"]
  GETTABLEKS R6 R7 K13 ["Components"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R6 K14 ["Dropdown"]
  CALL R7 1 1
  DUPCLOSURE R8 K15 [PROTO_1]
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R3
  DUPCLOSURE R9 K16 [PROTO_2]
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R3
  DUPCLOSURE R10 K17 [PROTO_4]
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R8
  CAPTURE VAL R3
  DUPCLOSURE R11 K18 [PROTO_6]
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R3
  DUPCLOSURE R12 K19 [PROTO_7]
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R11
  DUPCLOSURE R13 K20 [PROTO_11]
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R12
  RETURN R13 1
