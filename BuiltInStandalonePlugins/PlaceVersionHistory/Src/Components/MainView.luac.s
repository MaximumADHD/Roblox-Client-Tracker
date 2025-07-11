PROTO_0:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["View"]
  DUPTABLE R4 K4 [{"tag", "LayoutOrder"}]
  LOADK R5 K5 ["size-0-0 auto-xy row align-y-center gap-small radius-small"]
  SETTABLEKS R5 R4 K2 ["tag"]
  GETTABLEKS R5 R0 K3 ["LayoutOrder"]
  SETTABLEKS R5 R4 K3 ["LayoutOrder"]
  DUPTABLE R5 K7 [{"PlaceNameText"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K0 ["createElement"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K8 ["Text"]
  DUPTABLE R8 K9 [{"tag", "Text", "LayoutOrder"}]
  LOADK R9 K10 ["size-2500-0 auto-y radius-small padding-small text-label-small text-no-wrap text-truncate-end bg-surface-100"]
  SETTABLEKS R9 R8 K2 ["tag"]
  LOADK R9 K11 ["My Place"]
  SETTABLEKS R9 R8 K8 ["Text"]
  MOVE R9 R1
  CALL R9 0 1
  SETTABLEKS R9 R8 K3 ["LayoutOrder"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K6 ["PlaceNameText"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["PageController"]
  GETTABLEKS R0 R1 K1 ["setSearch"]
  DUPTABLE R1 K3 [{"Term"}]
  GETUPVAL R2 1
  SETTABLEKS R2 R1 K2 ["Term"]
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["PageController"]
  GETTABLEKS R0 R1 K1 ["setFilter"]
  DUPTABLE R1 K4 [{"Autosave", "Published"}]
  LOADNIL R2
  SETTABLEKS R2 R1 K2 ["Autosave"]
  LOADNIL R2
  SETTABLEKS R2 R1 K3 ["Published"]
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["useState"]
  LOADK R3 K1 [""]
  CALL R2 1 2
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["createElement"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K3 ["View"]
  DUPTABLE R6 K6 [{"tag", "LayoutOrder"}]
  LOADK R7 K7 ["size-0-0 auto-xy row align-y-center gap-small radius-small"]
  SETTABLEKS R7 R6 K4 ["tag"]
  GETTABLEKS R7 R0 K5 ["LayoutOrder"]
  SETTABLEKS R7 R6 K5 ["LayoutOrder"]
  DUPTABLE R7 K10 [{"SearchBar", "FilterButton"}]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K2 ["createElement"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K11 ["TextInput"]
  DUPTABLE R10 K20 [{"size", "width", "text", "label", "placeholder", "onChanged", "onReturnPressed", "iconLeading", "LayoutOrder"}]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K21 ["Enums"]
  GETTABLEKS R12 R13 K22 ["InputSize"]
  GETTABLEKS R11 R12 K23 ["Small"]
  SETTABLEKS R11 R10 K12 ["size"]
  GETIMPORT R11 K26 [UDim.new]
  LOADN R12 0
  LOADN R13 44
  CALL R11 2 1
  SETTABLEKS R11 R10 K13 ["width"]
  SETTABLEKS R2 R10 K14 ["text"]
  LOADK R11 K1 [""]
  SETTABLEKS R11 R10 K15 ["label"]
  LOADK R11 K27 ["Search"]
  SETTABLEKS R11 R10 K16 ["placeholder"]
  NEWCLOSURE R11 P0
  CAPTURE VAL R3
  SETTABLEKS R11 R10 K17 ["onChanged"]
  NEWCLOSURE R11 P1
  CAPTURE VAL R0
  CAPTURE VAL R2
  SETTABLEKS R11 R10 K18 ["onReturnPressed"]
  LOADK R11 K28 ["icons/common/search_small"]
  SETTABLEKS R11 R10 K19 ["iconLeading"]
  MOVE R11 R1
  CALL R11 0 1
  SETTABLEKS R11 R10 K5 ["LayoutOrder"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K8 ["SearchBar"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K2 ["createElement"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K29 ["IconButton"]
  DUPTABLE R10 K32 [{"tag", "onActivated", "icon", "size", "LayoutOrder"}]
  LOADK R11 K33 ["auto-xy radius-small"]
  SETTABLEKS R11 R10 K4 ["tag"]
  NEWCLOSURE R11 P2
  CAPTURE VAL R0
  SETTABLEKS R11 R10 K30 ["onActivated"]
  LOADK R11 K34 ["icons/actions/filter_small"]
  SETTABLEKS R11 R10 K31 ["icon"]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K21 ["Enums"]
  GETTABLEKS R12 R13 K35 ["IconSize"]
  GETTABLEKS R11 R12 K23 ["Small"]
  SETTABLEKS R11 R10 K12 ["size"]
  MOVE R11 R1
  CALL R11 0 1
  SETTABLEKS R11 R10 K5 ["LayoutOrder"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K9 ["FilterButton"]
  CALL R4 3 -1
  RETURN R4 -1

PROTO_5:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["View"]
  DUPTABLE R4 K4 [{"tag", "LayoutOrder"}]
  LOADK R5 K5 ["size-full-0 auto-y row align-y-center gap-small radius-small bg-surface-100"]
  SETTABLEKS R5 R4 K2 ["tag"]
  GETTABLEKS R5 R0 K3 ["LayoutOrder"]
  SETTABLEKS R5 R4 K3 ["LayoutOrder"]
  DUPTABLE R5 K9 [{"HeaderLeft", "Spacer", "HeaderRight"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K0 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K11 [{"LayoutOrder", "PageController"}]
  MOVE R9 R1
  CALL R9 0 1
  SETTABLEKS R9 R8 K3 ["LayoutOrder"]
  GETTABLEKS R9 R0 K10 ["PageController"]
  SETTABLEKS R9 R8 K10 ["PageController"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K6 ["HeaderLeft"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K0 ["createElement"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K1 ["View"]
  DUPTABLE R8 K12 [{"LayoutOrder", "tag"}]
  MOVE R9 R1
  CALL R9 0 1
  SETTABLEKS R9 R8 K3 ["LayoutOrder"]
  LOADK R9 K13 ["fill"]
  SETTABLEKS R9 R8 K2 ["tag"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K7 ["Spacer"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K0 ["createElement"]
  GETUPVAL R7 4
  DUPTABLE R8 K11 [{"LayoutOrder", "PageController"}]
  MOVE R9 R1
  CALL R9 0 1
  SETTABLEKS R9 R8 K3 ["LayoutOrder"]
  GETTABLEKS R9 R0 K10 ["PageController"]
  SETTABLEKS R9 R8 K10 ["PageController"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K8 ["HeaderRight"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_6:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["View"]
  DUPTABLE R4 K4 [{"tag", "LayoutOrder"}]
  LOADK R5 K5 ["size-full-0 fill radius-small bg-surface-100"]
  SETTABLEKS R5 R4 K2 ["tag"]
  GETTABLEKS R5 R0 K3 ["LayoutOrder"]
  SETTABLEKS R5 R4 K3 ["LayoutOrder"]
  DUPTABLE R5 K7 [{"PlaceVersionList"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K0 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K9 [{"page", "LayoutOrder"}]
  GETTABLEKS R10 R0 K10 ["PageController"]
  GETTABLEKS R9 R10 K8 ["page"]
  SETTABLEKS R9 R8 K8 ["page"]
  MOVE R9 R1
  CALL R9 0 1
  SETTABLEKS R9 R8 K3 ["LayoutOrder"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K6 ["PlaceVersionList"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_7:
  SUBK R1 R0 K0 [1]
  RETURN R1 1

PROTO_8:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["PageController"]
  GETTABLEKS R0 R1 K1 ["setPageNumber"]
  DUPCLOSURE R1 K2 [PROTO_7]
  CALL R0 1 0
  RETURN R0 0

PROTO_9:
  ADDK R1 R0 K0 [1]
  RETURN R1 1

PROTO_10:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["PageController"]
  GETTABLEKS R0 R1 K1 ["setPageNumber"]
  DUPCLOSURE R1 K2 [PROTO_9]
  CALL R0 1 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["View"]
  DUPTABLE R4 K4 [{"tag", "LayoutOrder"}]
  LOADK R5 K5 ["size-full-0 auto-y row align-y-center gap-small radius-small bg-surface-100"]
  SETTABLEKS R5 R4 K2 ["tag"]
  GETTABLEKS R5 R0 K3 ["LayoutOrder"]
  SETTABLEKS R5 R4 K3 ["LayoutOrder"]
  DUPTABLE R5 K9 [{"PrevPageButton", "NextPageButton", "PageNumber"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K0 ["createElement"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K10 ["Button"]
  DUPTABLE R8 K17 [{"icon", "text", "variant", "onActivated", "isDisabled", "size", "LayoutOrder"}]
  LOADK R9 K18 ["icons/actions/cycleLeft"]
  SETTABLEKS R9 R8 K11 ["icon"]
  LOADK R9 K19 ["prev page"]
  SETTABLEKS R9 R8 K12 ["text"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K20 ["Enums"]
  GETTABLEKS R10 R11 K21 ["ButtonVariant"]
  GETTABLEKS R9 R10 K22 ["Emphasis"]
  SETTABLEKS R9 R8 K13 ["variant"]
  NEWCLOSURE R9 P0
  CAPTURE VAL R0
  SETTABLEKS R9 R8 K14 ["onActivated"]
  GETTABLEKS R11 R0 K23 ["PageController"]
  GETTABLEKS R10 R11 K24 ["pageNumber"]
  JUMPIFEQKN R10 K25 [1] [+2]
  LOADB R9 0 +1
  LOADB R9 1
  SETTABLEKS R9 R8 K15 ["isDisabled"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K20 ["Enums"]
  GETTABLEKS R10 R11 K26 ["ButtonSize"]
  GETTABLEKS R9 R10 K27 ["Small"]
  SETTABLEKS R9 R8 K16 ["size"]
  MOVE R9 R1
  CALL R9 0 1
  SETTABLEKS R9 R8 K3 ["LayoutOrder"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K6 ["PrevPageButton"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K0 ["createElement"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K10 ["Button"]
  DUPTABLE R8 K17 [{"icon", "text", "variant", "onActivated", "isDisabled", "size", "LayoutOrder"}]
  LOADK R9 K28 ["icons/actions/cycleRight"]
  SETTABLEKS R9 R8 K11 ["icon"]
  LOADK R9 K29 ["next page"]
  SETTABLEKS R9 R8 K12 ["text"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K20 ["Enums"]
  GETTABLEKS R10 R11 K21 ["ButtonVariant"]
  GETTABLEKS R9 R10 K22 ["Emphasis"]
  SETTABLEKS R9 R8 K13 ["variant"]
  NEWCLOSURE R9 P1
  CAPTURE VAL R0
  SETTABLEKS R9 R8 K14 ["onActivated"]
  GETTABLEKS R11 R0 K23 ["PageController"]
  GETTABLEKS R10 R11 K24 ["pageNumber"]
  GETTABLEKS R12 R0 K23 ["PageController"]
  GETTABLEKS R11 R12 K30 ["maxPageNumber"]
  JUMPIFEQ R10 R11 [+2]
  LOADB R9 0 +1
  LOADB R9 1
  SETTABLEKS R9 R8 K15 ["isDisabled"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K20 ["Enums"]
  GETTABLEKS R10 R11 K26 ["ButtonSize"]
  GETTABLEKS R9 R10 K27 ["Small"]
  SETTABLEKS R9 R8 K16 ["size"]
  MOVE R9 R1
  CALL R9 0 1
  SETTABLEKS R9 R8 K3 ["LayoutOrder"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K7 ["NextPageButton"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K0 ["createElement"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K31 ["Text"]
  DUPTABLE R8 K32 [{"tag", "Text", "LayoutOrder"}]
  LOADK R9 K33 ["size-0-0 auto-xy radius-small padding-small text-label-xlarge text-no-wrap"]
  SETTABLEKS R9 R8 K2 ["tag"]
  GETTABLEKS R11 R0 K23 ["PageController"]
  GETTABLEKS R10 R11 K24 ["pageNumber"]
  FASTCALL1 TOSTRING R10 [+2]
  GETIMPORT R9 K35 [tostring]
  CALL R9 1 1
  SETTABLEKS R9 R8 K31 ["Text"]
  MOVE R9 R1
  CALL R9 0 1
  SETTABLEKS R9 R8 K3 ["LayoutOrder"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K8 ["PageNumber"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_12:
  GETUPVAL R0 0
  CALL R0 0 1
  GETUPVAL R1 1
  CALL R1 0 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K1 ["View"]
  DUPTABLE R4 K3 [{"tag"}]
  LOADK R5 K4 ["size-full-full col align-x-center gap-small padding-small bg-surface-100"]
  SETTABLEKS R5 R4 K2 ["tag"]
  DUPTABLE R5 K8 [{"Header", "Body", "Footer"}]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K0 ["createElement"]
  GETUPVAL R7 4
  DUPTABLE R8 K11 [{"LayoutOrder", "PageController"}]
  MOVE R9 R0
  CALL R9 0 1
  SETTABLEKS R9 R8 K9 ["LayoutOrder"]
  SETTABLEKS R1 R8 K10 ["PageController"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["Header"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K0 ["createElement"]
  GETUPVAL R7 5
  DUPTABLE R8 K11 [{"LayoutOrder", "PageController"}]
  MOVE R9 R0
  CALL R9 0 1
  SETTABLEKS R9 R8 K9 ["LayoutOrder"]
  SETTABLEKS R1 R8 K10 ["PageController"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K6 ["Body"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K0 ["createElement"]
  GETUPVAL R7 6
  DUPTABLE R8 K11 [{"LayoutOrder", "PageController"}]
  MOVE R9 R0
  CALL R9 0 1
  SETTABLEKS R9 R8 K9 ["LayoutOrder"]
  SETTABLEKS R1 R8 K10 ["PageController"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K7 ["Footer"]
  CALL R2 3 -1
  RETURN R2 -1

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
  GETTABLEKS R3 R4 K8 ["Foundation"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["ReactUtils"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K10 ["Src"]
  GETTABLEKS R5 R6 K11 ["Types"]
  CALL R4 1 1
  GETTABLEKS R6 R0 K10 ["Src"]
  GETTABLEKS R5 R6 K12 ["Hooks"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R5 K13 ["usePageController"]
  CALL R6 1 1
  GETTABLEKS R7 R3 K14 ["createNextOrder"]
  GETTABLEKS R9 R0 K10 ["Src"]
  GETTABLEKS R8 R9 K15 ["Components"]
  GETIMPORT R9 K5 [require]
  GETTABLEKS R10 R8 K16 ["PlaceVersionList"]
  CALL R9 1 1
  DUPCLOSURE R10 K17 [PROTO_0]
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE VAL R2
  DUPCLOSURE R11 K18 [PROTO_4]
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE VAL R2
  DUPCLOSURE R12 K19 [PROTO_5]
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R10
  CAPTURE VAL R11
  DUPCLOSURE R13 K20 [PROTO_6]
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R9
  DUPCLOSURE R14 K21 [PROTO_11]
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE VAL R2
  DUPCLOSURE R15 K22 [PROTO_12]
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R14
  RETURN R15 1
