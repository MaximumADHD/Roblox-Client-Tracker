PROTO_0:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["useContext"]
  GETUPVAL R3 2
  CALL R2 1 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["useContext"]
  GETUPVAL R4 3
  CALL R3 1 1
  GETTABLEKS R4 R3 K1 ["contributorsController"]
  GETTABLEKS R5 R3 K2 ["placesController"]
  GETTABLEKS R6 R3 K3 ["pageController"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K4 ["createElement"]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K5 ["View"]
  DUPTABLE R9 K8 [{"tag", "LayoutOrder"}]
  LOADK R10 K9 ["size-0-0 auto-xy row align-y-center gap-small"]
  SETTABLEKS R10 R9 K6 ["tag"]
  GETTABLEKS R10 R0 K7 ["LayoutOrder"]
  SETTABLEKS R10 R9 K7 ["LayoutOrder"]
  DUPTABLE R10 K13 [{"PlaceSelector", "ContributorSelector", "DateRangeSelector"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K4 ["createElement"]
  GETUPVAL R12 5
  DUPTABLE R13 K21 [{"items", "id", "onIdChanged", "search", "onSearchChanged", "placeholderLabel", "searchLabel", "LayoutOrder"}]
  GETTABLEKS R14 R5 K22 ["places"]
  SETTABLEKS R14 R13 K14 ["items"]
  GETTABLEKS R14 R2 K23 ["placeId"]
  SETTABLEKS R14 R13 K15 ["id"]
  GETTABLEKS R14 R2 K24 ["setPlaceId"]
  SETTABLEKS R14 R13 K16 ["onIdChanged"]
  GETTABLEKS R14 R5 K17 ["search"]
  SETTABLEKS R14 R13 K17 ["search"]
  GETTABLEKS R14 R5 K25 ["setSearch"]
  SETTABLEKS R14 R13 K18 ["onSearchChanged"]
  LOADK R14 K26 [". . ."]
  SETTABLEKS R14 R13 K19 ["placeholderLabel"]
  LOADK R14 K27 ["Find a place"]
  SETTABLEKS R14 R13 K20 ["searchLabel"]
  MOVE R14 R1
  CALL R14 0 1
  SETTABLEKS R14 R13 K7 ["LayoutOrder"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K10 ["PlaceSelector"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K4 ["createElement"]
  GETUPVAL R12 5
  DUPTABLE R13 K29 [{"items", "id", "onIdChanged", "search", "onSearchChanged", "placeholderLabel", "searchLabel", "resetLabel", "LayoutOrder"}]
  GETTABLEKS R14 R4 K30 ["contributors"]
  SETTABLEKS R14 R13 K14 ["items"]
  GETTABLEKS R14 R6 K31 ["contributor"]
  SETTABLEKS R14 R13 K15 ["id"]
  GETTABLEKS R14 R6 K32 ["setContributor"]
  SETTABLEKS R14 R13 K16 ["onIdChanged"]
  GETTABLEKS R14 R4 K17 ["search"]
  SETTABLEKS R14 R13 K17 ["search"]
  GETTABLEKS R14 R4 K25 ["setSearch"]
  SETTABLEKS R14 R13 K18 ["onSearchChanged"]
  LOADK R14 K33 ["All users"]
  SETTABLEKS R14 R13 K19 ["placeholderLabel"]
  LOADK R14 K34 ["Find a user"]
  SETTABLEKS R14 R13 K20 ["searchLabel"]
  LOADK R14 K35 ["Show history for all users"]
  SETTABLEKS R14 R13 K28 ["resetLabel"]
  MOVE R14 R1
  CALL R14 0 1
  SETTABLEKS R14 R13 K7 ["LayoutOrder"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K11 ["ContributorSelector"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K4 ["createElement"]
  GETUPVAL R12 6
  DUPTABLE R13 K40 [{"startDate", "onStartDateChanged", "endDate", "onEndDateChanged", "LayoutOrder"}]
  GETTABLEKS R14 R6 K36 ["startDate"]
  SETTABLEKS R14 R13 K36 ["startDate"]
  GETTABLEKS R14 R6 K41 ["setStartDate"]
  SETTABLEKS R14 R13 K37 ["onStartDateChanged"]
  GETTABLEKS R14 R6 K38 ["endDate"]
  SETTABLEKS R14 R13 K38 ["endDate"]
  GETTABLEKS R14 R6 K42 ["setEndDate"]
  SETTABLEKS R14 R13 K39 ["onEndDateChanged"]
  MOVE R14 R1
  CALL R14 0 1
  SETTABLEKS R14 R13 K7 ["LayoutOrder"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K12 ["DateRangeSelector"]
  CALL R7 3 -1
  RETURN R7 -1

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
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["useContext"]
  GETUPVAL R3 2
  CALL R2 1 1
  GETTABLEKS R3 R2 K1 ["pageController"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["useState"]
  LOADK R5 K3 [""]
  CALL R4 1 2
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K4 ["useEffect"]
  NEWCLOSURE R7 P0
  CAPTURE VAL R5
  CAPTURE VAL R3
  NEWTABLE R8 0 1
  GETTABLEKS R9 R3 K5 ["search"]
  SETLIST R8 R9 1 [1]
  CALL R6 2 0
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K6 ["useCallback"]
  NEWCLOSURE R7 P1
  CAPTURE VAL R3
  CAPTURE VAL R4
  NEWTABLE R8 0 1
  MOVE R9 R4
  SETLIST R8 R9 1 [1]
  CALL R6 2 1
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K7 ["createElement"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K8 ["View"]
  DUPTABLE R9 K11 [{"tag", "LayoutOrder"}]
  LOADK R10 K12 ["size-0-0 auto-xy row align-y-center gap-small"]
  SETTABLEKS R10 R9 K9 ["tag"]
  GETTABLEKS R10 R0 K10 ["LayoutOrder"]
  SETTABLEKS R10 R9 K10 ["LayoutOrder"]
  DUPTABLE R10 K16 [{"SearchBar", "FilterSelector", "RefreshButton"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K7 ["createElement"]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K17 ["TextInput"]
  DUPTABLE R13 K27 [{"size", "width", "text", "label", "placeholder", "leadingIcon", "onChanged", "onReturnPressed", "testId", "LayoutOrder"}]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K28 ["Enums"]
  GETTABLEKS R15 R16 K29 ["InputSize"]
  GETTABLEKS R14 R15 K30 ["XSmall"]
  SETTABLEKS R14 R13 K18 ["size"]
  GETIMPORT R14 K33 [UDim.new]
  LOADN R15 0
  LOADN R16 180
  CALL R14 2 1
  SETTABLEKS R14 R13 K19 ["width"]
  SETTABLEKS R4 R13 K20 ["text"]
  LOADK R14 K3 [""]
  SETTABLEKS R14 R13 K21 ["label"]
  LOADK R14 K34 ["Search"]
  SETTABLEKS R14 R13 K22 ["placeholder"]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K28 ["Enums"]
  GETTABLEKS R15 R16 K35 ["IconName"]
  GETTABLEKS R14 R15 K36 ["MagnifyingGlass"]
  SETTABLEKS R14 R13 K23 ["leadingIcon"]
  SETTABLEKS R5 R13 K24 ["onChanged"]
  SETTABLEKS R6 R13 K25 ["onReturnPressed"]
  LOADK R14 K37 ["--search-bar"]
  SETTABLEKS R14 R13 K26 ["testId"]
  MOVE R14 R1
  CALL R14 0 1
  SETTABLEKS R14 R13 K10 ["LayoutOrder"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K13 ["SearchBar"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K7 ["createElement"]
  GETUPVAL R12 4
  DUPTABLE R13 K44 [{"saveType", "onSaveTypeChanged", "published", "onPublishedChanged", "hasNotes", "onHasNotesChanged", "LayoutOrder"}]
  GETTABLEKS R14 R3 K38 ["saveType"]
  SETTABLEKS R14 R13 K38 ["saveType"]
  GETTABLEKS R14 R3 K45 ["setSaveType"]
  SETTABLEKS R14 R13 K39 ["onSaveTypeChanged"]
  GETTABLEKS R14 R3 K40 ["published"]
  SETTABLEKS R14 R13 K40 ["published"]
  GETTABLEKS R14 R3 K46 ["setPublished"]
  SETTABLEKS R14 R13 K41 ["onPublishedChanged"]
  GETTABLEKS R14 R3 K42 ["hasNotes"]
  SETTABLEKS R14 R13 K42 ["hasNotes"]
  GETTABLEKS R14 R3 K47 ["setHasNotes"]
  SETTABLEKS R14 R13 K43 ["onHasNotesChanged"]
  MOVE R14 R1
  CALL R14 0 1
  SETTABLEKS R14 R13 K10 ["LayoutOrder"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K14 ["FilterSelector"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K7 ["createElement"]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K48 ["IconButton"]
  DUPTABLE R13 K51 [{"icon", "size", "onActivated", "LayoutOrder"}]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K28 ["Enums"]
  GETTABLEKS R15 R16 K35 ["IconName"]
  GETTABLEKS R14 R15 K52 ["ArrowSpinClockwise"]
  SETTABLEKS R14 R13 K49 ["icon"]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K28 ["Enums"]
  GETTABLEKS R15 R16 K29 ["InputSize"]
  GETTABLEKS R14 R15 K30 ["XSmall"]
  SETTABLEKS R14 R13 K18 ["size"]
  GETTABLEKS R14 R2 K53 ["refresh"]
  SETTABLEKS R14 R13 K50 ["onActivated"]
  MOVE R14 R1
  CALL R14 0 1
  SETTABLEKS R14 R13 K10 ["LayoutOrder"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K15 ["RefreshButton"]
  CALL R7 3 -1
  RETURN R7 -1

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
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["useContext"]
  GETUPVAL R3 2
  CALL R2 1 1
  GETTABLEKS R3 R2 K1 ["pageController"]
  GETTABLEKS R4 R3 K2 ["isEmpty"]
  GETTABLEKS R5 R3 K3 ["isDone"]
  GETTABLEKS R6 R3 K4 ["isFiltered"]
  GETTABLEKS R7 R3 K5 ["isFailure"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K6 ["createElement"]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K7 ["View"]
  DUPTABLE R10 K10 [{"tag", "LayoutOrder"}]
  LOADK R11 K11 ["size-full-0 fill clip"]
  SETTABLEKS R11 R10 K8 ["tag"]
  GETTABLEKS R11 R0 K9 ["LayoutOrder"]
  SETTABLEKS R11 R10 K9 ["LayoutOrder"]
  DUPTABLE R11 K14 [{"EmptyPage", "PlaceVersionList"}]
  MOVE R12 R4
  JUMPIFNOT R12 [+235]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K6 ["createElement"]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K7 ["View"]
  DUPTABLE R14 K10 [{"tag", "LayoutOrder"}]
  LOADK R15 K15 ["size-full-full col align-x-center gap-medium padding-small"]
  SETTABLEKS R15 R14 K8 ["tag"]
  MOVE R15 R1
  CALL R15 0 1
  SETTABLEKS R15 R14 K9 ["LayoutOrder"]
  DUPTABLE R15 K23 [{"StartSpacer", "LoadingIcon", "NoResultsText", "SuggestionText", "ClearFiltersButton", "RefreshButton", "EndSpacer"}]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K6 ["createElement"]
  GETUPVAL R18 3
  GETTABLEKS R17 R18 K7 ["View"]
  DUPTABLE R18 K24 [{"LayoutOrder", "tag"}]
  MOVE R19 R1
  CALL R19 0 1
  SETTABLEKS R19 R18 K9 ["LayoutOrder"]
  LOADK R19 K25 ["fill"]
  SETTABLEKS R19 R18 K8 ["tag"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K16 ["StartSpacer"]
  NOT R16 R5
  JUMPIFNOT R16 [+39]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K6 ["createElement"]
  GETUPVAL R18 3
  GETTABLEKS R17 R18 K26 ["Button"]
  DUPTABLE R18 K32 [{"onActivated", "variant", "isLoading", "isDisabled", "size", "LayoutOrder"}]
  LOADNIL R19
  SETTABLEKS R19 R18 K27 ["onActivated"]
  GETUPVAL R22 3
  GETTABLEKS R21 R22 K33 ["Enums"]
  GETTABLEKS R20 R21 K34 ["ButtonVariant"]
  GETTABLEKS R19 R20 K35 ["Text"]
  SETTABLEKS R19 R18 K28 ["variant"]
  LOADB R19 1
  SETTABLEKS R19 R18 K29 ["isLoading"]
  LOADB R19 1
  SETTABLEKS R19 R18 K30 ["isDisabled"]
  GETUPVAL R22 3
  GETTABLEKS R21 R22 K33 ["Enums"]
  GETTABLEKS R20 R21 K36 ["InputSize"]
  GETTABLEKS R19 R20 K37 ["Large"]
  SETTABLEKS R19 R18 K31 ["size"]
  MOVE R19 R1
  CALL R19 0 1
  SETTABLEKS R19 R18 K9 ["LayoutOrder"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K17 ["LoadingIcon"]
  MOVE R16 R5
  JUMPIFNOT R16 [+24]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K6 ["createElement"]
  GETUPVAL R18 3
  GETTABLEKS R17 R18 K35 ["Text"]
  DUPTABLE R18 K38 [{"tag", "Text", "LayoutOrder"}]
  LOADK R19 K39 ["size-0-0 auto-xy text-label-medium text-wrap content-emphasis"]
  SETTABLEKS R19 R18 K8 ["tag"]
  JUMPIFNOT R7 [+2]
  LOADK R19 K40 ["Error loading version history"]
  JUMP [+4]
  JUMPIFNOT R6 [+2]
  LOADK R19 K41 ["Nothing matches your filters"]
  JUMP [+1]
  LOADK R19 K42 ["Start saving to track your version history"]
  SETTABLEKS R19 R18 K35 ["Text"]
  MOVE R19 R1
  CALL R19 0 1
  SETTABLEKS R19 R18 K9 ["LayoutOrder"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K18 ["NoResultsText"]
  MOVE R16 R5
  JUMPIFNOT R16 [+24]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K6 ["createElement"]
  GETUPVAL R18 3
  GETTABLEKS R17 R18 K35 ["Text"]
  DUPTABLE R18 K38 [{"tag", "Text", "LayoutOrder"}]
  LOADK R19 K43 ["size-0-0 auto-xy text-body-small text-wrap"]
  SETTABLEKS R19 R18 K8 ["tag"]
  JUMPIFNOT R7 [+2]
  LOADK R19 K44 ["Something went wrong. Please try again."]
  JUMP [+4]
  JUMPIFNOT R6 [+2]
  LOADK R19 K45 ["Try adjusting or clearing your filters."]
  JUMP [+1]
  LOADK R19 K46 ["Save to Roblox to see new history. Your old history will appear soon after."]
  SETTABLEKS R19 R18 K35 ["Text"]
  MOVE R19 R1
  CALL R19 0 1
  SETTABLEKS R19 R18 K9 ["LayoutOrder"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K19 ["SuggestionText"]
  MOVE R16 R5
  JUMPIFNOT R16 [+39]
  MOVE R16 R6
  JUMPIFNOT R16 [+37]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K6 ["createElement"]
  GETUPVAL R18 3
  GETTABLEKS R17 R18 K26 ["Button"]
  DUPTABLE R18 K48 [{"text", "variant", "onActivated", "size", "LayoutOrder"}]
  LOADK R19 K49 ["Clear filters"]
  SETTABLEKS R19 R18 K47 ["text"]
  GETUPVAL R22 3
  GETTABLEKS R21 R22 K33 ["Enums"]
  GETTABLEKS R20 R21 K34 ["ButtonVariant"]
  GETTABLEKS R19 R20 K50 ["Standard"]
  SETTABLEKS R19 R18 K28 ["variant"]
  GETTABLEKS R19 R3 K51 ["clearFilters"]
  SETTABLEKS R19 R18 K27 ["onActivated"]
  GETUPVAL R22 3
  GETTABLEKS R21 R22 K33 ["Enums"]
  GETTABLEKS R20 R21 K36 ["InputSize"]
  GETTABLEKS R19 R20 K52 ["Small"]
  SETTABLEKS R19 R18 K31 ["size"]
  MOVE R19 R1
  CALL R19 0 1
  SETTABLEKS R19 R18 K9 ["LayoutOrder"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K20 ["ClearFiltersButton"]
  MOVE R16 R5
  JUMPIFNOT R16 [+39]
  NOT R16 R6
  JUMPIFNOT R16 [+37]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K6 ["createElement"]
  GETUPVAL R18 3
  GETTABLEKS R17 R18 K26 ["Button"]
  DUPTABLE R18 K48 [{"text", "variant", "onActivated", "size", "LayoutOrder"}]
  LOADK R19 K53 ["Refresh"]
  SETTABLEKS R19 R18 K47 ["text"]
  GETUPVAL R22 3
  GETTABLEKS R21 R22 K33 ["Enums"]
  GETTABLEKS R20 R21 K34 ["ButtonVariant"]
  GETTABLEKS R19 R20 K50 ["Standard"]
  SETTABLEKS R19 R18 K28 ["variant"]
  GETTABLEKS R19 R2 K54 ["refresh"]
  SETTABLEKS R19 R18 K27 ["onActivated"]
  GETUPVAL R22 3
  GETTABLEKS R21 R22 K33 ["Enums"]
  GETTABLEKS R20 R21 K36 ["InputSize"]
  GETTABLEKS R19 R20 K52 ["Small"]
  SETTABLEKS R19 R18 K31 ["size"]
  MOVE R19 R1
  CALL R19 0 1
  SETTABLEKS R19 R18 K9 ["LayoutOrder"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K21 ["RefreshButton"]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K6 ["createElement"]
  GETUPVAL R18 3
  GETTABLEKS R17 R18 K7 ["View"]
  DUPTABLE R18 K24 [{"LayoutOrder", "tag"}]
  MOVE R19 R1
  CALL R19 0 1
  SETTABLEKS R19 R18 K9 ["LayoutOrder"]
  LOADK R19 K25 ["fill"]
  SETTABLEKS R19 R18 K8 ["tag"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K22 ["EndSpacer"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K12 ["EmptyPage"]
  NOT R12 R4
  JUMPIFNOT R12 [+14]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K6 ["createElement"]
  GETUPVAL R13 4
  DUPTABLE R14 K56 [{"page", "LayoutOrder"}]
  GETTABLEKS R15 R3 K55 ["page"]
  SETTABLEKS R15 R14 K55 ["page"]
  MOVE R15 R1
  CALL R15 0 1
  SETTABLEKS R15 R14 K9 ["LayoutOrder"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K13 ["PlaceVersionList"]
  CALL R8 3 -1
  RETURN R8 -1

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
  CALL R0 0 1
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K1 ["View"]
  DUPTABLE R3 K3 [{"tag"}]
  LOADK R4 K4 ["size-full-full col align-x-center"]
  SETTABLEKS R4 R3 K2 ["tag"]
  DUPTABLE R4 K9 [{"Header", "Body", "Divider", "Footer"}]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 3
  DUPTABLE R7 K11 [{"LayoutOrder"}]
  MOVE R8 R0
  CALL R8 0 1
  SETTABLEKS R8 R7 K10 ["LayoutOrder"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K5 ["Header"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 4
  DUPTABLE R7 K11 [{"LayoutOrder"}]
  MOVE R8 R0
  CALL R8 0 1
  SETTABLEKS R8 R7 K10 ["LayoutOrder"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K6 ["Body"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K7 ["Divider"]
  DUPTABLE R7 K11 [{"LayoutOrder"}]
  MOVE R8 R0
  CALL R8 0 1
  SETTABLEKS R8 R7 K10 ["LayoutOrder"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K7 ["Divider"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 5
  DUPTABLE R7 K11 [{"LayoutOrder"}]
  MOVE R8 R0
  CALL R8 0 1
  SETTABLEKS R8 R7 K10 ["LayoutOrder"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K8 ["Footer"]
  CALL R1 3 -1
  RETURN R1 -1

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
  GETTABLEKS R5 R0 K10 ["Src"]
  GETTABLEKS R4 R5 K11 ["Contexts"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R4 K12 ["ControllerContext"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R4 K13 ["SettingContext"]
  CALL R6 1 1
  GETTABLEKS R7 R2 K14 ["createNextOrder"]
  GETTABLEKS R9 R0 K10 ["Src"]
  GETTABLEKS R8 R9 K15 ["Components"]
  GETIMPORT R9 K5 [require]
  GETTABLEKS R10 R8 K16 ["PlaceVersionList"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R11 R8 K17 ["FilterSelector"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R12 R8 K18 ["DateRangeSelector"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R13 R8 K19 ["PageSelector"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R14 R8 K20 ["SearchableSelector"]
  CALL R13 1 1
  DUPCLOSURE R14 K21 [PROTO_0]
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R13
  CAPTURE VAL R11
  DUPCLOSURE R15 K22 [PROTO_3]
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R10
  DUPCLOSURE R16 K23 [PROTO_4]
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R14
  CAPTURE VAL R15
  DUPCLOSURE R17 K24 [PROTO_5]
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R9
  DUPCLOSURE R18 K25 [PROTO_6]
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R12
  DUPCLOSURE R19 K26 [PROTO_7]
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R16
  CAPTURE VAL R17
  CAPTURE VAL R18
  RETURN R19 1
