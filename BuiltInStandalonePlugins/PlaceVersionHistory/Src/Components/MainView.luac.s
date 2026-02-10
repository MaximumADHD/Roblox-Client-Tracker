PROTO_0:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R2 1
  NAMECALL R2 R2 K0 ["use"]
  CALL R2 1 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["useContext"]
  GETUPVAL R4 3
  CALL R3 1 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K1 ["useContext"]
  GETUPVAL R5 4
  CALL R4 1 1
  GETTABLEKS R5 R4 K2 ["contributorsController"]
  GETTABLEKS R6 R4 K3 ["placesController"]
  GETTABLEKS R7 R4 K4 ["pageController"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K5 ["createElement"]
  GETUPVAL R10 5
  GETTABLEKS R9 R10 K6 ["View"]
  DUPTABLE R10 K9 [{"tag", "LayoutOrder"}]
  LOADK R11 K10 ["size-0-0 auto-xy row align-y-center gap-small"]
  SETTABLEKS R11 R10 K7 ["tag"]
  GETTABLEKS R11 R0 K8 ["LayoutOrder"]
  SETTABLEKS R11 R10 K8 ["LayoutOrder"]
  DUPTABLE R11 K14 [{"PlaceSelector", "ContributorSelector", "DateRangeSelector"}]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K5 ["createElement"]
  GETUPVAL R13 6
  DUPTABLE R14 K22 [{"items", "id", "onIdChanged", "search", "onSearchChanged", "placeholderLabel", "searchLabel", "LayoutOrder"}]
  GETTABLEKS R15 R6 K23 ["places"]
  SETTABLEKS R15 R14 K15 ["items"]
  GETTABLEKS R15 R3 K24 ["placeId"]
  SETTABLEKS R15 R14 K16 ["id"]
  GETTABLEKS R15 R3 K25 ["setPlaceId"]
  SETTABLEKS R15 R14 K17 ["onIdChanged"]
  GETTABLEKS R15 R6 K18 ["search"]
  SETTABLEKS R15 R14 K18 ["search"]
  GETTABLEKS R15 R6 K26 ["setSearch"]
  SETTABLEKS R15 R14 K19 ["onSearchChanged"]
  LOADK R15 K27 [". . ."]
  SETTABLEKS R15 R14 K20 ["placeholderLabel"]
  LOADK R17 K28 ["Label"]
  LOADK R18 K29 ["FindAPlace"]
  NAMECALL R15 R2 K30 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K21 ["searchLabel"]
  MOVE R15 R1
  CALL R15 0 1
  SETTABLEKS R15 R14 K8 ["LayoutOrder"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K11 ["PlaceSelector"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K5 ["createElement"]
  GETUPVAL R13 6
  DUPTABLE R14 K32 [{"items", "id", "onIdChanged", "search", "onSearchChanged", "placeholderLabel", "searchLabel", "resetLabel", "LayoutOrder"}]
  GETTABLEKS R15 R5 K33 ["contributors"]
  SETTABLEKS R15 R14 K15 ["items"]
  GETTABLEKS R15 R7 K34 ["contributor"]
  SETTABLEKS R15 R14 K16 ["id"]
  GETTABLEKS R15 R7 K35 ["setContributor"]
  SETTABLEKS R15 R14 K17 ["onIdChanged"]
  GETTABLEKS R15 R5 K18 ["search"]
  SETTABLEKS R15 R14 K18 ["search"]
  GETTABLEKS R15 R5 K26 ["setSearch"]
  SETTABLEKS R15 R14 K19 ["onSearchChanged"]
  LOADK R17 K28 ["Label"]
  LOADK R18 K36 ["AllUsers"]
  NAMECALL R15 R2 K30 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K20 ["placeholderLabel"]
  LOADK R17 K28 ["Label"]
  LOADK R18 K37 ["FindAUser"]
  NAMECALL R15 R2 K30 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K21 ["searchLabel"]
  LOADK R17 K28 ["Label"]
  LOADK R18 K38 ["ResetUser"]
  NAMECALL R15 R2 K30 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K31 ["resetLabel"]
  MOVE R15 R1
  CALL R15 0 1
  SETTABLEKS R15 R14 K8 ["LayoutOrder"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K12 ["ContributorSelector"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K5 ["createElement"]
  GETUPVAL R13 7
  DUPTABLE R14 K43 [{"startDate", "onStartDateChanged", "endDate", "onEndDateChanged", "LayoutOrder"}]
  GETTABLEKS R15 R7 K39 ["startDate"]
  SETTABLEKS R15 R14 K39 ["startDate"]
  GETTABLEKS R15 R7 K44 ["setStartDate"]
  SETTABLEKS R15 R14 K40 ["onStartDateChanged"]
  GETTABLEKS R15 R7 K41 ["endDate"]
  SETTABLEKS R15 R14 K41 ["endDate"]
  GETTABLEKS R15 R7 K45 ["setEndDate"]
  SETTABLEKS R15 R14 K42 ["onEndDateChanged"]
  MOVE R15 R1
  CALL R15 0 1
  SETTABLEKS R15 R14 K8 ["LayoutOrder"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K13 ["DateRangeSelector"]
  CALL R8 3 -1
  RETURN R8 -1

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["search"]
  JUMPIFNOT R2 [+4]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["search"]
  JUMP [+1]
  LOADK R1 K1 [""]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["setSearch"]
  GETIMPORT R2 K3 [utf8.len]
  GETUPVAL R3 1
  CALL R2 1 1
  JUMPIFNOTEQKN R2 K4 [0] [+3]
  LOADNIL R1
  JUMP [+1]
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R2 1
  NAMECALL R2 R2 K0 ["use"]
  CALL R2 1 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["useContext"]
  GETUPVAL R4 3
  CALL R3 1 1
  GETTABLEKS R4 R3 K2 ["pageController"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K3 ["useState"]
  LOADK R6 K4 [""]
  CALL R5 1 2
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K5 ["useEffect"]
  NEWCLOSURE R8 P0
  CAPTURE VAL R6
  CAPTURE VAL R4
  NEWTABLE R9 0 1
  GETTABLEKS R10 R4 K6 ["search"]
  SETLIST R9 R10 1 [1]
  CALL R7 2 0
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K7 ["useCallback"]
  NEWCLOSURE R8 P1
  CAPTURE VAL R4
  CAPTURE VAL R5
  NEWTABLE R9 0 1
  MOVE R10 R5
  SETLIST R9 R10 1 [1]
  CALL R7 2 1
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K8 ["createElement"]
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K9 ["View"]
  DUPTABLE R10 K12 [{"tag", "LayoutOrder"}]
  LOADK R11 K13 ["size-0-0 auto-xy row align-y-center gap-small"]
  SETTABLEKS R11 R10 K10 ["tag"]
  GETTABLEKS R11 R0 K11 ["LayoutOrder"]
  SETTABLEKS R11 R10 K11 ["LayoutOrder"]
  DUPTABLE R11 K17 [{"SearchBar", "FilterSelector", "RefreshButton"}]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K8 ["createElement"]
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K18 ["TextInput"]
  DUPTABLE R14 K28 [{"size", "width", "text", "label", "placeholder", "leadingIcon", "onChanged", "onReturnPressed", "testId", "LayoutOrder"}]
  GETUPVAL R18 4
  GETTABLEKS R17 R18 K29 ["Enums"]
  GETTABLEKS R16 R17 K30 ["InputSize"]
  GETTABLEKS R15 R16 K31 ["XSmall"]
  SETTABLEKS R15 R14 K19 ["size"]
  GETIMPORT R15 K34 [UDim.new]
  LOADN R16 0
  LOADN R17 180
  CALL R15 2 1
  SETTABLEKS R15 R14 K20 ["width"]
  SETTABLEKS R5 R14 K21 ["text"]
  LOADK R15 K4 [""]
  SETTABLEKS R15 R14 K22 ["label"]
  LOADK R17 K35 ["Label"]
  LOADK R18 K36 ["Search"]
  NAMECALL R15 R2 K37 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K23 ["placeholder"]
  GETUPVAL R18 4
  GETTABLEKS R17 R18 K29 ["Enums"]
  GETTABLEKS R16 R17 K38 ["IconName"]
  GETTABLEKS R15 R16 K39 ["MagnifyingGlass"]
  SETTABLEKS R15 R14 K24 ["leadingIcon"]
  SETTABLEKS R6 R14 K25 ["onChanged"]
  SETTABLEKS R7 R14 K26 ["onReturnPressed"]
  LOADK R15 K40 ["--search-bar"]
  SETTABLEKS R15 R14 K27 ["testId"]
  MOVE R15 R1
  CALL R15 0 1
  SETTABLEKS R15 R14 K11 ["LayoutOrder"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K14 ["SearchBar"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K8 ["createElement"]
  GETUPVAL R13 5
  DUPTABLE R14 K47 [{"saveType", "onSaveTypeChanged", "published", "onPublishedChanged", "hasNotes", "onHasNotesChanged", "LayoutOrder"}]
  GETTABLEKS R15 R4 K41 ["saveType"]
  SETTABLEKS R15 R14 K41 ["saveType"]
  GETTABLEKS R15 R4 K48 ["setSaveType"]
  SETTABLEKS R15 R14 K42 ["onSaveTypeChanged"]
  GETTABLEKS R15 R4 K43 ["published"]
  SETTABLEKS R15 R14 K43 ["published"]
  GETTABLEKS R15 R4 K49 ["setPublished"]
  SETTABLEKS R15 R14 K44 ["onPublishedChanged"]
  GETTABLEKS R15 R4 K45 ["hasNotes"]
  SETTABLEKS R15 R14 K45 ["hasNotes"]
  GETTABLEKS R15 R4 K50 ["setHasNotes"]
  SETTABLEKS R15 R14 K46 ["onHasNotesChanged"]
  MOVE R15 R1
  CALL R15 0 1
  SETTABLEKS R15 R14 K11 ["LayoutOrder"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K15 ["FilterSelector"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K8 ["createElement"]
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K51 ["IconButton"]
  DUPTABLE R14 K54 [{"icon", "size", "onActivated", "LayoutOrder"}]
  GETUPVAL R18 4
  GETTABLEKS R17 R18 K29 ["Enums"]
  GETTABLEKS R16 R17 K38 ["IconName"]
  GETTABLEKS R15 R16 K55 ["ArrowSpinClockwise"]
  SETTABLEKS R15 R14 K52 ["icon"]
  GETUPVAL R18 4
  GETTABLEKS R17 R18 K29 ["Enums"]
  GETTABLEKS R16 R17 K30 ["InputSize"]
  GETTABLEKS R15 R16 K31 ["XSmall"]
  SETTABLEKS R15 R14 K19 ["size"]
  GETTABLEKS R15 R3 K56 ["refresh"]
  SETTABLEKS R15 R14 K53 ["onActivated"]
  MOVE R15 R1
  CALL R15 0 1
  SETTABLEKS R15 R14 K11 ["LayoutOrder"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K16 ["RefreshButton"]
  CALL R8 3 -1
  RETURN R8 -1

PROTO_4:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["View"]
  DUPTABLE R4 K4 [{"tag", "LayoutOrder"}]
  LOADK R5 K5 ["size-full-0 auto-y row align-y-center padding-small gap-small"]
  SETTABLEKS R5 R4 K2 ["tag"]
  GETTABLEKS R5 R0 K3 ["LayoutOrder"]
  SETTABLEKS R5 R4 K3 ["LayoutOrder"]
  DUPTABLE R5 K9 [{"HeaderLeft", "Spacer", "HeaderRight"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K0 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K10 [{"LayoutOrder"}]
  MOVE R9 R1
  CALL R9 0 1
  SETTABLEKS R9 R8 K3 ["LayoutOrder"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K6 ["HeaderLeft"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K0 ["createElement"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K1 ["View"]
  DUPTABLE R8 K11 [{"LayoutOrder", "tag"}]
  MOVE R9 R1
  CALL R9 0 1
  SETTABLEKS R9 R8 K3 ["LayoutOrder"]
  LOADK R9 K12 ["fill"]
  SETTABLEKS R9 R8 K2 ["tag"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K7 ["Spacer"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K0 ["createElement"]
  GETUPVAL R7 4
  DUPTABLE R8 K10 [{"LayoutOrder"}]
  MOVE R9 R1
  CALL R9 0 1
  SETTABLEKS R9 R8 K3 ["LayoutOrder"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K8 ["HeaderRight"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_5:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R2 1
  NAMECALL R2 R2 K0 ["use"]
  CALL R2 1 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["useContext"]
  GETUPVAL R4 3
  CALL R3 1 1
  GETTABLEKS R4 R3 K2 ["pageController"]
  GETTABLEKS R5 R4 K3 ["isEmpty"]
  GETTABLEKS R6 R4 K4 ["isDone"]
  GETTABLEKS R7 R4 K5 ["isFiltered"]
  GETTABLEKS R8 R4 K6 ["isFailure"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K7 ["createElement"]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K8 ["View"]
  DUPTABLE R11 K11 [{"tag", "LayoutOrder"}]
  LOADK R12 K12 ["size-full-0 fill clip"]
  SETTABLEKS R12 R11 K9 ["tag"]
  GETTABLEKS R12 R0 K10 ["LayoutOrder"]
  SETTABLEKS R12 R11 K10 ["LayoutOrder"]
  DUPTABLE R12 K15 [{"EmptyPage", "PlaceVersionList"}]
  MOVE R13 R5
  JUMPIFNOT R13 [+267]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K7 ["createElement"]
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K8 ["View"]
  DUPTABLE R15 K11 [{"tag", "LayoutOrder"}]
  LOADK R16 K16 ["size-full-full col align-x-center gap-medium padding-small"]
  SETTABLEKS R16 R15 K9 ["tag"]
  MOVE R16 R1
  CALL R16 0 1
  SETTABLEKS R16 R15 K10 ["LayoutOrder"]
  DUPTABLE R16 K24 [{"StartSpacer", "LoadingIcon", "Title", "Description", "ClearFiltersButton", "RefreshButton", "EndSpacer"}]
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K7 ["createElement"]
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K8 ["View"]
  DUPTABLE R19 K25 [{"LayoutOrder", "tag"}]
  MOVE R20 R1
  CALL R20 0 1
  SETTABLEKS R20 R19 K10 ["LayoutOrder"]
  LOADK R20 K26 ["fill"]
  SETTABLEKS R20 R19 K9 ["tag"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K17 ["StartSpacer"]
  NOT R17 R6
  JUMPIFNOT R17 [+39]
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K7 ["createElement"]
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K27 ["Button"]
  DUPTABLE R19 K33 [{"onActivated", "variant", "isLoading", "isDisabled", "size", "LayoutOrder"}]
  LOADNIL R20
  SETTABLEKS R20 R19 K28 ["onActivated"]
  GETUPVAL R23 4
  GETTABLEKS R22 R23 K34 ["Enums"]
  GETTABLEKS R21 R22 K35 ["ButtonVariant"]
  GETTABLEKS R20 R21 K36 ["Text"]
  SETTABLEKS R20 R19 K29 ["variant"]
  LOADB R20 1
  SETTABLEKS R20 R19 K30 ["isLoading"]
  LOADB R20 1
  SETTABLEKS R20 R19 K31 ["isDisabled"]
  GETUPVAL R23 4
  GETTABLEKS R22 R23 K34 ["Enums"]
  GETTABLEKS R21 R22 K37 ["InputSize"]
  GETTABLEKS R20 R21 K38 ["Large"]
  SETTABLEKS R20 R19 K32 ["size"]
  MOVE R20 R1
  CALL R20 0 1
  SETTABLEKS R20 R19 K10 ["LayoutOrder"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K18 ["LoadingIcon"]
  MOVE R17 R6
  JUMPIFNOT R17 [+36]
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K7 ["createElement"]
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K36 ["Text"]
  DUPTABLE R19 K39 [{"tag", "Text", "LayoutOrder"}]
  LOADK R20 K40 ["size-0-0 auto-xy text-label-medium text-wrap content-emphasis"]
  SETTABLEKS R20 R19 K9 ["tag"]
  JUMPIFNOT R8 [+6]
  LOADK R22 K19 ["Title"]
  LOADK R23 K41 ["ErrorLoadingHistory"]
  NAMECALL R20 R2 K42 ["getText"]
  CALL R20 3 1
  JUMP [+12]
  JUMPIFNOT R7 [+6]
  LOADK R22 K19 ["Title"]
  LOADK R23 K43 ["NothingMatchesFilters"]
  NAMECALL R20 R2 K42 ["getText"]
  CALL R20 3 1
  JUMP [+5]
  LOADK R22 K19 ["Title"]
  LOADK R23 K44 ["StartSaving"]
  NAMECALL R20 R2 K42 ["getText"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K36 ["Text"]
  MOVE R20 R1
  CALL R20 0 1
  SETTABLEKS R20 R19 K10 ["LayoutOrder"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K19 ["Title"]
  MOVE R17 R6
  JUMPIFNOT R17 [+36]
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K7 ["createElement"]
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K36 ["Text"]
  DUPTABLE R19 K39 [{"tag", "Text", "LayoutOrder"}]
  LOADK R20 K45 ["size-0-0 auto-xy text-body-small text-wrap"]
  SETTABLEKS R20 R19 K9 ["tag"]
  JUMPIFNOT R8 [+6]
  LOADK R22 K20 ["Description"]
  LOADK R23 K41 ["ErrorLoadingHistory"]
  NAMECALL R20 R2 K42 ["getText"]
  CALL R20 3 1
  JUMP [+12]
  JUMPIFNOT R7 [+6]
  LOADK R22 K20 ["Description"]
  LOADK R23 K43 ["NothingMatchesFilters"]
  NAMECALL R20 R2 K42 ["getText"]
  CALL R20 3 1
  JUMP [+5]
  LOADK R22 K20 ["Description"]
  LOADK R23 K44 ["StartSaving"]
  NAMECALL R20 R2 K42 ["getText"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K36 ["Text"]
  MOVE R20 R1
  CALL R20 0 1
  SETTABLEKS R20 R19 K10 ["LayoutOrder"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K20 ["Description"]
  MOVE R17 R6
  JUMPIFNOT R17 [+43]
  MOVE R17 R7
  JUMPIFNOT R17 [+41]
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K7 ["createElement"]
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K27 ["Button"]
  DUPTABLE R19 K47 [{"text", "variant", "onActivated", "size", "LayoutOrder"}]
  LOADK R22 K48 ["Action"]
  LOADK R23 K49 ["ClearFilters"]
  NAMECALL R20 R2 K42 ["getText"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K46 ["text"]
  GETUPVAL R23 4
  GETTABLEKS R22 R23 K34 ["Enums"]
  GETTABLEKS R21 R22 K35 ["ButtonVariant"]
  GETTABLEKS R20 R21 K50 ["Standard"]
  SETTABLEKS R20 R19 K29 ["variant"]
  GETTABLEKS R20 R4 K51 ["clearFilters"]
  SETTABLEKS R20 R19 K28 ["onActivated"]
  GETUPVAL R23 4
  GETTABLEKS R22 R23 K34 ["Enums"]
  GETTABLEKS R21 R22 K37 ["InputSize"]
  GETTABLEKS R20 R21 K52 ["Small"]
  SETTABLEKS R20 R19 K32 ["size"]
  MOVE R20 R1
  CALL R20 0 1
  SETTABLEKS R20 R19 K10 ["LayoutOrder"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K21 ["ClearFiltersButton"]
  MOVE R17 R6
  JUMPIFNOT R17 [+43]
  NOT R17 R7
  JUMPIFNOT R17 [+41]
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K7 ["createElement"]
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K27 ["Button"]
  DUPTABLE R19 K47 [{"text", "variant", "onActivated", "size", "LayoutOrder"}]
  LOADK R22 K48 ["Action"]
  LOADK R23 K53 ["Refresh"]
  NAMECALL R20 R2 K42 ["getText"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K46 ["text"]
  GETUPVAL R23 4
  GETTABLEKS R22 R23 K34 ["Enums"]
  GETTABLEKS R21 R22 K35 ["ButtonVariant"]
  GETTABLEKS R20 R21 K50 ["Standard"]
  SETTABLEKS R20 R19 K29 ["variant"]
  GETTABLEKS R20 R3 K54 ["refresh"]
  SETTABLEKS R20 R19 K28 ["onActivated"]
  GETUPVAL R23 4
  GETTABLEKS R22 R23 K34 ["Enums"]
  GETTABLEKS R21 R22 K37 ["InputSize"]
  GETTABLEKS R20 R21 K52 ["Small"]
  SETTABLEKS R20 R19 K32 ["size"]
  MOVE R20 R1
  CALL R20 0 1
  SETTABLEKS R20 R19 K10 ["LayoutOrder"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K22 ["RefreshButton"]
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K7 ["createElement"]
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K8 ["View"]
  DUPTABLE R19 K25 [{"LayoutOrder", "tag"}]
  MOVE R20 R1
  CALL R20 0 1
  SETTABLEKS R20 R19 K10 ["LayoutOrder"]
  LOADK R20 K26 ["fill"]
  SETTABLEKS R20 R19 K9 ["tag"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K23 ["EndSpacer"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K13 ["EmptyPage"]
  NOT R13 R5
  JUMPIFNOT R13 [+14]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K7 ["createElement"]
  GETUPVAL R14 5
  DUPTABLE R15 K56 [{"page", "LayoutOrder"}]
  GETTABLEKS R16 R4 K55 ["page"]
  SETTABLEKS R16 R15 K55 ["page"]
  MOVE R16 R1
  CALL R16 0 1
  SETTABLEKS R16 R15 K10 ["LayoutOrder"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K14 ["PlaceVersionList"]
  CALL R9 3 -1
  RETURN R9 -1

PROTO_6:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["useContext"]
  GETUPVAL R3 2
  CALL R2 1 1
  GETTABLEKS R3 R2 K1 ["pageController"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["createElement"]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K3 ["View"]
  DUPTABLE R6 K6 [{"tag", "LayoutOrder"}]
  LOADK R7 K7 ["size-full-0 auto-y row align-y-center"]
  SETTABLEKS R7 R6 K4 ["tag"]
  GETTABLEKS R7 R0 K5 ["LayoutOrder"]
  SETTABLEKS R7 R6 K5 ["LayoutOrder"]
  DUPTABLE R7 K10 [{"Spacer", "PageSelector"}]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K2 ["createElement"]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K3 ["View"]
  DUPTABLE R10 K11 [{"LayoutOrder", "tag"}]
  MOVE R11 R1
  CALL R11 0 1
  SETTABLEKS R11 R10 K5 ["LayoutOrder"]
  LOADK R11 K12 ["fill"]
  SETTABLEKS R11 R10 K4 ["tag"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K8 ["Spacer"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K2 ["createElement"]
  GETUPVAL R9 4
  DUPTABLE R10 K18 [{"pageSize", "pageNumber", "maxPageNumber", "onPageNumberChanged", "onPageSizeChanged", "LayoutOrder"}]
  GETTABLEKS R11 R3 K13 ["pageSize"]
  SETTABLEKS R11 R10 K13 ["pageSize"]
  GETTABLEKS R11 R3 K14 ["pageNumber"]
  SETTABLEKS R11 R10 K14 ["pageNumber"]
  GETTABLEKS R11 R3 K15 ["maxPageNumber"]
  SETTABLEKS R11 R10 K15 ["maxPageNumber"]
  GETTABLEKS R11 R3 K19 ["setPageNumber"]
  SETTABLEKS R11 R10 K16 ["onPageNumberChanged"]
  GETTABLEKS R11 R3 K20 ["setPageSize"]
  SETTABLEKS R11 R10 K17 ["onPageSizeChanged"]
  MOVE R11 R1
  CALL R11 0 1
  SETTABLEKS R11 R10 K5 ["LayoutOrder"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K9 ["PageSelector"]
  CALL R4 3 -1
  RETURN R4 -1

PROTO_7:
  GETUPVAL R0 0
  GETUPVAL R2 1
  DUPTABLE R3 K2 [{"isNewFeature", "targetPlaceId"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K0 ["isNewFeature"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K3 ["placeId"]
  SETTABLEKS R4 R3 K1 ["targetPlaceId"]
  NAMECALL R0 R0 K4 ["logRobloxTelemetryEvent"]
  CALL R0 3 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R0 0
  GETUPVAL R2 1
  DUPTABLE R3 K2 [{"isNewFeature", "targetPlaceId"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K0 ["isNewFeature"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K3 ["placeId"]
  SETTABLEKS R4 R3 K1 ["targetPlaceId"]
  NAMECALL R0 R0 K4 ["logRobloxTelemetryEvent"]
  CALL R0 3 0
  NEWCLOSURE R0 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U2
  RETURN R0 1

PROTO_9:
  GETUPVAL R0 0
  CALL R0 0 1
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["useContext"]
  GETUPVAL R2 2
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["useEffect"]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE VAL R1
  CAPTURE UPVAL U5
  NEWTABLE R4 0 0
  CALL R2 2 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["createElement"]
  GETUPVAL R4 6
  GETTABLEKS R3 R4 K3 ["View"]
  DUPTABLE R4 K5 [{"tag"}]
  LOADK R5 K6 ["size-full-full col align-x-center"]
  SETTABLEKS R5 R4 K4 ["tag"]
  DUPTABLE R5 K11 [{"Header", "Body", "Divider", "Footer"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K2 ["createElement"]
  GETUPVAL R7 7
  DUPTABLE R8 K13 [{"LayoutOrder"}]
  MOVE R9 R0
  CALL R9 0 1
  SETTABLEKS R9 R8 K12 ["LayoutOrder"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K7 ["Header"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K2 ["createElement"]
  GETUPVAL R7 8
  DUPTABLE R8 K13 [{"LayoutOrder"}]
  MOVE R9 R0
  CALL R9 0 1
  SETTABLEKS R9 R8 K12 ["LayoutOrder"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K8 ["Body"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K2 ["createElement"]
  GETUPVAL R8 6
  GETTABLEKS R7 R8 K9 ["Divider"]
  DUPTABLE R8 K13 [{"LayoutOrder"}]
  MOVE R9 R0
  CALL R9 0 1
  SETTABLEKS R9 R8 K12 ["LayoutOrder"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K9 ["Divider"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K2 ["createElement"]
  GETUPVAL R7 9
  DUPTABLE R8 K13 [{"LayoutOrder"}]
  MOVE R9 R0
  CALL R9 0 1
  SETTABLEKS R9 R8 K12 ["LayoutOrder"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K10 ["Footer"]
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
  GETTABLEKS R3 R4 K8 ["ReactUtils"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Foundation"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Packages"]
  GETTABLEKS R5 R6 K10 ["Framework"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K6 ["Packages"]
  GETTABLEKS R6 R7 K11 ["TelemetryProtocol"]
  CALL R5 1 1
  GETTABLEKS R6 R4 K12 ["ContextServices"]
  GETTABLEKS R7 R6 K13 ["Localization"]
  GETTABLEKS R9 R0 K14 ["Src"]
  GETTABLEKS R8 R9 K15 ["Contexts"]
  GETIMPORT R9 K5 [require]
  GETTABLEKS R10 R8 K16 ["ControllerContext"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R11 R8 K17 ["SettingContext"]
  CALL R10 1 1
  GETTABLEKS R11 R5 K18 ["new"]
  CALL R11 0 1
  GETTABLEKS R13 R0 K14 ["Src"]
  GETTABLEKS R12 R13 K19 ["Events"]
  GETIMPORT R13 K5 [require]
  GETTABLEKS R14 R12 K20 ["OpenEvent"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R15 R12 K21 ["CloseEvent"]
  CALL R14 1 1
  GETTABLEKS R15 R2 K22 ["createNextOrder"]
  GETTABLEKS R17 R0 K14 ["Src"]
  GETTABLEKS R16 R17 K23 ["Components"]
  GETIMPORT R17 K5 [require]
  GETTABLEKS R18 R16 K24 ["PlaceVersionList"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R19 R16 K25 ["FilterSelector"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R20 R16 K26 ["DateRangeSelector"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETTABLEKS R21 R16 K27 ["PageSelector"]
  CALL R20 1 1
  GETIMPORT R21 K5 [require]
  GETTABLEKS R22 R16 K28 ["SearchableSelector"]
  CALL R21 1 1
  DUPCLOSURE R22 K29 [PROTO_0]
  CAPTURE VAL R15
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE VAL R10
  CAPTURE VAL R9
  CAPTURE VAL R3
  CAPTURE VAL R21
  CAPTURE VAL R19
  DUPCLOSURE R23 K30 [PROTO_3]
  CAPTURE VAL R15
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE VAL R9
  CAPTURE VAL R3
  CAPTURE VAL R18
  DUPCLOSURE R24 K31 [PROTO_4]
  CAPTURE VAL R15
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R22
  CAPTURE VAL R23
  DUPCLOSURE R25 K32 [PROTO_5]
  CAPTURE VAL R15
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE VAL R9
  CAPTURE VAL R3
  CAPTURE VAL R17
  DUPCLOSURE R26 K33 [PROTO_6]
  CAPTURE VAL R15
  CAPTURE VAL R1
  CAPTURE VAL R9
  CAPTURE VAL R3
  CAPTURE VAL R20
  DUPCLOSURE R27 K34 [PROTO_9]
  CAPTURE VAL R15
  CAPTURE VAL R1
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R3
  CAPTURE VAL R24
  CAPTURE VAL R25
  CAPTURE VAL R26
  RETURN R27 1
