PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 NAMECALL                         R2 R2 K0 ["use"]
        5 CALL                             R2 1 1
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R3 R4 K1 ["useContext"]
        9 GETUPVAL                         R4 3
       10 CALL                             R3 1 1
       11 GETUPVAL                         R5 2
       12 GETTABLEKS                       R4 R5 K1 ["useContext"]
       14 GETUPVAL                         R5 4
       15 CALL                             R4 1 1
       16 GETTABLEKS                       R5 R4 K2 ["contributorsController"]
       18 GETTABLEKS                       R6 R4 K3 ["placesController"]
       20 GETTABLEKS                       R7 R4 K4 ["pageController"]
       22 GETUPVAL                         R9 2
       23 GETTABLEKS                       R8 R9 K5 ["createElement"]
       25 GETUPVAL                         R10 5
       26 GETTABLEKS                       R9 R10 K6 ["View"]
       28 DUPTABLE                         R10 K9 [{"tag", "LayoutOrder"}]
       29 LOADK                            R11 K10 ["size-0-0 auto-xy row align-y-center gap-small"]
       30 SETTABLEKS                       R11 R10 K7 ["tag"]
       32 GETTABLEKS                       R11 R0 K8 ["LayoutOrder"]
       34 SETTABLEKS                       R11 R10 K8 ["LayoutOrder"]
       36 DUPTABLE                         R11 K14 [{"PlaceSelector", "ContributorSelector", "DateRangeSelector"}]
       37 GETUPVAL                         R13 2
       38 GETTABLEKS                       R12 R13 K5 ["createElement"]
       40 GETUPVAL                         R13 6
       41 DUPTABLE                         R14 K22 [{"items", "id", "onIdChanged", "search", "onSearchChanged", "placeholderLabel", "searchLabel", "LayoutOrder"}]
       42 GETTABLEKS                       R15 R6 K23 ["places"]
       44 SETTABLEKS                       R15 R14 K15 ["items"]
       46 GETTABLEKS                       R15 R3 K24 ["placeId"]
       48 SETTABLEKS                       R15 R14 K16 ["id"]
       50 GETTABLEKS                       R15 R3 K25 ["setPlaceId"]
       52 SETTABLEKS                       R15 R14 K17 ["onIdChanged"]
       54 GETTABLEKS                       R15 R6 K18 ["search"]
       56 SETTABLEKS                       R15 R14 K18 ["search"]
       58 GETTABLEKS                       R15 R6 K26 ["setSearch"]
       60 SETTABLEKS                       R15 R14 K19 ["onSearchChanged"]
       62 LOADK                            R15 K27 [". . ."]
       63 SETTABLEKS                       R15 R14 K20 ["placeholderLabel"]
       65 LOADK                            R17 K28 ["Label"]
       66 LOADK                            R18 K29 ["FindAPlace"]
       67 NAMECALL                         R15 R2 K30 ["getText"]
       69 CALL                             R15 3 1
       70 SETTABLEKS                       R15 R14 K21 ["searchLabel"]
       72 MOVE                             R15 R1
       73 CALL                             R15 0 1
       74 SETTABLEKS                       R15 R14 K8 ["LayoutOrder"]
       76 CALL                             R12 2 1
       77 SETTABLEKS                       R12 R11 K11 ["PlaceSelector"]
       79 GETUPVAL                         R13 2
       80 GETTABLEKS                       R12 R13 K5 ["createElement"]
       82 GETUPVAL                         R13 6
       83 DUPTABLE                         R14 K32 [{"items", "id", "onIdChanged", "search", "onSearchChanged", "placeholderLabel", "searchLabel", "resetLabel", "LayoutOrder"}]
       84 GETTABLEKS                       R15 R5 K33 ["contributors"]
       86 SETTABLEKS                       R15 R14 K15 ["items"]
       88 GETTABLEKS                       R15 R7 K34 ["contributor"]
       90 SETTABLEKS                       R15 R14 K16 ["id"]
       92 GETTABLEKS                       R15 R7 K35 ["setContributor"]
       94 SETTABLEKS                       R15 R14 K17 ["onIdChanged"]
       96 GETTABLEKS                       R15 R5 K18 ["search"]
       98 SETTABLEKS                       R15 R14 K18 ["search"]
      100 GETTABLEKS                       R15 R5 K26 ["setSearch"]
      102 SETTABLEKS                       R15 R14 K19 ["onSearchChanged"]
      104 LOADK                            R17 K28 ["Label"]
      105 LOADK                            R18 K36 ["AllUsers"]
      106 NAMECALL                         R15 R2 K30 ["getText"]
      108 CALL                             R15 3 1
      109 SETTABLEKS                       R15 R14 K20 ["placeholderLabel"]
      111 LOADK                            R17 K28 ["Label"]
      112 LOADK                            R18 K37 ["FindAUser"]
      113 NAMECALL                         R15 R2 K30 ["getText"]
      115 CALL                             R15 3 1
      116 SETTABLEKS                       R15 R14 K21 ["searchLabel"]
      118 LOADK                            R17 K28 ["Label"]
      119 LOADK                            R18 K38 ["ResetUser"]
      120 NAMECALL                         R15 R2 K30 ["getText"]
      122 CALL                             R15 3 1
      123 SETTABLEKS                       R15 R14 K31 ["resetLabel"]
      125 MOVE                             R15 R1
      126 CALL                             R15 0 1
      127 SETTABLEKS                       R15 R14 K8 ["LayoutOrder"]
      129 CALL                             R12 2 1
      130 SETTABLEKS                       R12 R11 K12 ["ContributorSelector"]
      132 GETUPVAL                         R13 2
      133 GETTABLEKS                       R12 R13 K5 ["createElement"]
      135 GETUPVAL                         R13 7
      136 DUPTABLE                         R14 K43 [{"startDate", "onStartDateChanged", "endDate", "onEndDateChanged", "LayoutOrder"}]
      137 GETTABLEKS                       R15 R7 K39 ["startDate"]
      139 SETTABLEKS                       R15 R14 K39 ["startDate"]
      141 GETTABLEKS                       R15 R7 K44 ["setStartDate"]
      143 SETTABLEKS                       R15 R14 K40 ["onStartDateChanged"]
      145 GETTABLEKS                       R15 R7 K41 ["endDate"]
      147 SETTABLEKS                       R15 R14 K41 ["endDate"]
      149 GETTABLEKS                       R15 R7 K45 ["setEndDate"]
      151 SETTABLEKS                       R15 R14 K42 ["onEndDateChanged"]
      153 MOVE                             R15 R1
      154 CALL                             R15 0 1
      155 SETTABLEKS                       R15 R14 K8 ["LayoutOrder"]
      157 CALL                             R12 2 1
      158 SETTABLEKS                       R12 R11 K13 ["DateRangeSelector"]
      160 CALL                             R8 3 -1
      161 RETURN                           R8 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["search"]
        4 JUMPIFNOT                        R2 ; [+4]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K0 ["search"]
        8 JUMP                             ; [+1]
        9 LOADK                            R1 K1 [""]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setSearch"]
        3 GETIMPORT                        R2 K3 [utf8.len]
        5 GETUPVAL                         R3 1
        6 CALL                             R2 1 1
        7 JUMPIFNOTEQKN                    R2 K4 [0] ; [+3]
        9 LOADNIL                          R1
       10 JUMP                             ; [+1]
       11 GETUPVAL                         R1 1
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 NAMECALL                         R2 R2 K0 ["use"]
        5 CALL                             R2 1 1
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R3 R4 K1 ["useContext"]
        9 GETUPVAL                         R4 3
       10 CALL                             R3 1 1
       11 GETTABLEKS                       R4 R3 K2 ["pageController"]
       13 GETUPVAL                         R6 2
       14 GETTABLEKS                       R5 R6 K3 ["useState"]
       16 LOADK                            R6 K4 [""]
       17 CALL                             R5 1 2
       18 GETUPVAL                         R8 2
       19 GETTABLEKS                       R7 R8 K5 ["useEffect"]
       21 NEWCLOSURE                       R8 P0
       22 CAPTURE                          VAL R6
       23 CAPTURE                          VAL R4
       24 NEWTABLE                         R9 0 1
       26 GETTABLEKS                       R10 R4 K6 ["search"]
       28 SETLIST                          R9 R10 1 [1]
       30 CALL                             R7 2 0
       31 GETUPVAL                         R8 2
       32 GETTABLEKS                       R7 R8 K7 ["useCallback"]
       34 NEWCLOSURE                       R8 P1
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R5
       37 NEWTABLE                         R9 0 1
       39 MOVE                             R10 R5
       40 SETLIST                          R9 R10 1 [1]
       42 CALL                             R7 2 1
       43 GETUPVAL                         R9 2
       44 GETTABLEKS                       R8 R9 K8 ["createElement"]
       46 GETUPVAL                         R10 4
       47 GETTABLEKS                       R9 R10 K9 ["View"]
       49 DUPTABLE                         R10 K12 [{"tag", "LayoutOrder"}]
       50 LOADK                            R11 K13 ["size-0-0 auto-xy row align-y-center gap-small"]
       51 SETTABLEKS                       R11 R10 K10 ["tag"]
       53 GETTABLEKS                       R11 R0 K11 ["LayoutOrder"]
       55 SETTABLEKS                       R11 R10 K11 ["LayoutOrder"]
       57 DUPTABLE                         R11 K17 [{"SearchBar", "FilterSelector", "RefreshButton"}]
       58 GETUPVAL                         R13 2
       59 GETTABLEKS                       R12 R13 K8 ["createElement"]
       61 GETUPVAL                         R14 4
       62 GETTABLEKS                       R13 R14 K18 ["TextInput"]
       64 DUPTABLE                         R14 K28 [{"size", "width", "text", "label", "placeholder", "leadingIcon", "onChanged", "onReturnPressed", "testId", "LayoutOrder"}]
       65 GETUPVAL                         R18 4
       66 GETTABLEKS                       R17 R18 K29 ["Enums"]
       68 GETTABLEKS                       R16 R17 K30 ["InputSize"]
       70 GETTABLEKS                       R15 R16 K31 ["XSmall"]
       72 SETTABLEKS                       R15 R14 K19 ["size"]
       74 GETIMPORT                        R15 K34 [UDim.new]
       76 LOADN                            R16 0
       77 LOADN                            R17 180
       78 CALL                             R15 2 1
       79 SETTABLEKS                       R15 R14 K20 ["width"]
       81 SETTABLEKS                       R5 R14 K21 ["text"]
       83 LOADK                            R15 K4 [""]
       84 SETTABLEKS                       R15 R14 K22 ["label"]
       86 LOADK                            R17 K35 ["Label"]
       87 LOADK                            R18 K36 ["Search"]
       88 NAMECALL                         R15 R2 K37 ["getText"]
       90 CALL                             R15 3 1
       91 SETTABLEKS                       R15 R14 K23 ["placeholder"]
       93 GETUPVAL                         R18 4
       94 GETTABLEKS                       R17 R18 K29 ["Enums"]
       96 GETTABLEKS                       R16 R17 K38 ["IconName"]
       98 GETTABLEKS                       R15 R16 K39 ["MagnifyingGlass"]
      100 SETTABLEKS                       R15 R14 K24 ["leadingIcon"]
      102 SETTABLEKS                       R6 R14 K25 ["onChanged"]
      104 SETTABLEKS                       R7 R14 K26 ["onReturnPressed"]
      106 LOADK                            R15 K40 ["--search-bar"]
      107 SETTABLEKS                       R15 R14 K27 ["testId"]
      109 MOVE                             R15 R1
      110 CALL                             R15 0 1
      111 SETTABLEKS                       R15 R14 K11 ["LayoutOrder"]
      113 CALL                             R12 2 1
      114 SETTABLEKS                       R12 R11 K14 ["SearchBar"]
      116 GETUPVAL                         R13 2
      117 GETTABLEKS                       R12 R13 K8 ["createElement"]
      119 GETUPVAL                         R13 5
      120 DUPTABLE                         R14 K47 [{"saveType", "onSaveTypeChanged", "published", "onPublishedChanged", "hasNotes", "onHasNotesChanged", "LayoutOrder"}]
      121 GETTABLEKS                       R15 R4 K41 ["saveType"]
      123 SETTABLEKS                       R15 R14 K41 ["saveType"]
      125 GETTABLEKS                       R15 R4 K48 ["setSaveType"]
      127 SETTABLEKS                       R15 R14 K42 ["onSaveTypeChanged"]
      129 GETTABLEKS                       R15 R4 K43 ["published"]
      131 SETTABLEKS                       R15 R14 K43 ["published"]
      133 GETTABLEKS                       R15 R4 K49 ["setPublished"]
      135 SETTABLEKS                       R15 R14 K44 ["onPublishedChanged"]
      137 GETTABLEKS                       R15 R4 K45 ["hasNotes"]
      139 SETTABLEKS                       R15 R14 K45 ["hasNotes"]
      141 GETTABLEKS                       R15 R4 K50 ["setHasNotes"]
      143 SETTABLEKS                       R15 R14 K46 ["onHasNotesChanged"]
      145 MOVE                             R15 R1
      146 CALL                             R15 0 1
      147 SETTABLEKS                       R15 R14 K11 ["LayoutOrder"]
      149 CALL                             R12 2 1
      150 SETTABLEKS                       R12 R11 K15 ["FilterSelector"]
      152 GETUPVAL                         R13 2
      153 GETTABLEKS                       R12 R13 K8 ["createElement"]
      155 GETUPVAL                         R14 4
      156 GETTABLEKS                       R13 R14 K51 ["IconButton"]
      158 DUPTABLE                         R14 K54 [{"icon", "size", "onActivated", "LayoutOrder"}]
      159 GETUPVAL                         R18 4
      160 GETTABLEKS                       R17 R18 K29 ["Enums"]
      162 GETTABLEKS                       R16 R17 K38 ["IconName"]
      164 GETTABLEKS                       R15 R16 K55 ["ArrowSpinClockwise"]
      166 SETTABLEKS                       R15 R14 K52 ["icon"]
      168 GETUPVAL                         R18 4
      169 GETTABLEKS                       R17 R18 K29 ["Enums"]
      171 GETTABLEKS                       R16 R17 K30 ["InputSize"]
      173 GETTABLEKS                       R15 R16 K31 ["XSmall"]
      175 SETTABLEKS                       R15 R14 K19 ["size"]
      177 GETTABLEKS                       R15 R3 K56 ["refresh"]
      179 SETTABLEKS                       R15 R14 K53 ["onActivated"]
      181 MOVE                             R15 R1
      182 CALL                             R15 0 1
      183 SETTABLEKS                       R15 R14 K11 ["LayoutOrder"]
      185 CALL                             R12 2 1
      186 SETTABLEKS                       R12 R11 K16 ["RefreshButton"]
      188 CALL                             R8 3 -1
      189 RETURN                           R8 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["createElement"]
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R3 R4 K1 ["View"]
        8 DUPTABLE                         R4 K4 [{"tag", "LayoutOrder"}]
        9 LOADK                            R5 K5 ["size-full-0 auto-y row align-y-center padding-small gap-small"]
       10 SETTABLEKS                       R5 R4 K2 ["tag"]
       12 GETTABLEKS                       R5 R0 K3 ["LayoutOrder"]
       14 SETTABLEKS                       R5 R4 K3 ["LayoutOrder"]
       16 DUPTABLE                         R5 K9 [{"HeaderLeft", "Spacer", "HeaderRight"}]
       17 GETUPVAL                         R7 1
       18 GETTABLEKS                       R6 R7 K0 ["createElement"]
       20 GETUPVAL                         R7 3
       21 DUPTABLE                         R8 K10 [{"LayoutOrder"}]
       22 MOVE                             R9 R1
       23 CALL                             R9 0 1
       24 SETTABLEKS                       R9 R8 K3 ["LayoutOrder"]
       26 CALL                             R6 2 1
       27 SETTABLEKS                       R6 R5 K6 ["HeaderLeft"]
       29 GETUPVAL                         R7 1
       30 GETTABLEKS                       R6 R7 K0 ["createElement"]
       32 GETUPVAL                         R8 2
       33 GETTABLEKS                       R7 R8 K1 ["View"]
       35 DUPTABLE                         R8 K11 [{"LayoutOrder", "tag"}]
       36 MOVE                             R9 R1
       37 CALL                             R9 0 1
       38 SETTABLEKS                       R9 R8 K3 ["LayoutOrder"]
       40 LOADK                            R9 K12 ["fill"]
       41 SETTABLEKS                       R9 R8 K2 ["tag"]
       43 CALL                             R6 2 1
       44 SETTABLEKS                       R6 R5 K7 ["Spacer"]
       46 GETUPVAL                         R7 1
       47 GETTABLEKS                       R6 R7 K0 ["createElement"]
       49 GETUPVAL                         R7 4
       50 DUPTABLE                         R8 K10 [{"LayoutOrder"}]
       51 MOVE                             R9 R1
       52 CALL                             R9 0 1
       53 SETTABLEKS                       R9 R8 K3 ["LayoutOrder"]
       55 CALL                             R6 2 1
       56 SETTABLEKS                       R6 R5 K8 ["HeaderRight"]
       58 CALL                             R2 3 -1
       59 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 NAMECALL                         R2 R2 K0 ["use"]
        5 CALL                             R2 1 1
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R3 R4 K1 ["useContext"]
        9 GETUPVAL                         R4 3
       10 CALL                             R3 1 1
       11 GETTABLEKS                       R4 R3 K2 ["pageController"]
       13 GETTABLEKS                       R5 R4 K3 ["isEmpty"]
       15 GETTABLEKS                       R6 R4 K4 ["isDone"]
       17 GETTABLEKS                       R7 R4 K5 ["isFiltered"]
       19 GETTABLEKS                       R8 R4 K6 ["isFailure"]
       21 GETUPVAL                         R10 2
       22 GETTABLEKS                       R9 R10 K7 ["createElement"]
       24 GETUPVAL                         R11 4
       25 GETTABLEKS                       R10 R11 K8 ["View"]
       27 DUPTABLE                         R11 K11 [{"tag", "LayoutOrder"}]
       28 LOADK                            R12 K12 ["size-full-0 fill clip"]
       29 SETTABLEKS                       R12 R11 K9 ["tag"]
       31 GETTABLEKS                       R12 R0 K10 ["LayoutOrder"]
       33 SETTABLEKS                       R12 R11 K10 ["LayoutOrder"]
       35 DUPTABLE                         R12 K15 [{"EmptyPage", "PlaceVersionList"}]
       36 MOVE                             R13 R5
       37 JUMPIFNOT                        R13 ; [+267]
       38 GETUPVAL                         R14 2
       39 GETTABLEKS                       R13 R14 K7 ["createElement"]
       41 GETUPVAL                         R15 4
       42 GETTABLEKS                       R14 R15 K8 ["View"]
       44 DUPTABLE                         R15 K11 [{"tag", "LayoutOrder"}]
       45 LOADK                            R16 K16 ["size-full-full col align-x-center gap-medium padding-small"]
       46 SETTABLEKS                       R16 R15 K9 ["tag"]
       48 MOVE                             R16 R1
       49 CALL                             R16 0 1
       50 SETTABLEKS                       R16 R15 K10 ["LayoutOrder"]
       52 DUPTABLE                         R16 K24 [{"StartSpacer", "LoadingIcon", "Title", "Description", "ClearFiltersButton", "RefreshButton", "EndSpacer"}]
       53 GETUPVAL                         R18 2
       54 GETTABLEKS                       R17 R18 K7 ["createElement"]
       56 GETUPVAL                         R19 4
       57 GETTABLEKS                       R18 R19 K8 ["View"]
       59 DUPTABLE                         R19 K25 [{"LayoutOrder", "tag"}]
       60 MOVE                             R20 R1
       61 CALL                             R20 0 1
       62 SETTABLEKS                       R20 R19 K10 ["LayoutOrder"]
       64 LOADK                            R20 K26 ["fill"]
       65 SETTABLEKS                       R20 R19 K9 ["tag"]
       67 CALL                             R17 2 1
       68 SETTABLEKS                       R17 R16 K17 ["StartSpacer"]
       70 NOT                              R17 R6
       71 JUMPIFNOT                        R17 ; [+39]
       72 GETUPVAL                         R18 2
       73 GETTABLEKS                       R17 R18 K7 ["createElement"]
       75 GETUPVAL                         R19 4
       76 GETTABLEKS                       R18 R19 K27 ["Button"]
       78 DUPTABLE                         R19 K33 [{"onActivated", "variant", "isLoading", "isDisabled", "size", "LayoutOrder"}]
       79 LOADNIL                          R20
       80 SETTABLEKS                       R20 R19 K28 ["onActivated"]
       82 GETUPVAL                         R23 4
       83 GETTABLEKS                       R22 R23 K34 ["Enums"]
       85 GETTABLEKS                       R21 R22 K35 ["ButtonVariant"]
       87 GETTABLEKS                       R20 R21 K36 ["Text"]
       89 SETTABLEKS                       R20 R19 K29 ["variant"]
       91 LOADB                            R20 1
       92 SETTABLEKS                       R20 R19 K30 ["isLoading"]
       94 LOADB                            R20 1
       95 SETTABLEKS                       R20 R19 K31 ["isDisabled"]
       97 GETUPVAL                         R23 4
       98 GETTABLEKS                       R22 R23 K34 ["Enums"]
      100 GETTABLEKS                       R21 R22 K37 ["InputSize"]
      102 GETTABLEKS                       R20 R21 K38 ["Large"]
      104 SETTABLEKS                       R20 R19 K32 ["size"]
      106 MOVE                             R20 R1
      107 CALL                             R20 0 1
      108 SETTABLEKS                       R20 R19 K10 ["LayoutOrder"]
      110 CALL                             R17 2 1
      111 SETTABLEKS                       R17 R16 K18 ["LoadingIcon"]
      113 MOVE                             R17 R6
      114 JUMPIFNOT                        R17 ; [+36]
      115 GETUPVAL                         R18 2
      116 GETTABLEKS                       R17 R18 K7 ["createElement"]
      118 GETUPVAL                         R19 4
      119 GETTABLEKS                       R18 R19 K36 ["Text"]
      121 DUPTABLE                         R19 K39 [{"tag", "Text", "LayoutOrder"}]
      122 LOADK                            R20 K40 ["size-0-0 auto-xy text-label-medium text-wrap content-emphasis"]
      123 SETTABLEKS                       R20 R19 K9 ["tag"]
      125 JUMPIFNOT                        R8 ; [+6]
      126 LOADK                            R22 K19 ["Title"]
      127 LOADK                            R23 K41 ["ErrorLoadingHistory"]
      128 NAMECALL                         R20 R2 K42 ["getText"]
      130 CALL                             R20 3 1
      131 JUMP                             ; [+12]
      132 JUMPIFNOT                        R7 ; [+6]
      133 LOADK                            R22 K19 ["Title"]
      134 LOADK                            R23 K43 ["NothingMatchesFilters"]
      135 NAMECALL                         R20 R2 K42 ["getText"]
      137 CALL                             R20 3 1
      138 JUMP                             ; [+5]
      139 LOADK                            R22 K19 ["Title"]
      140 LOADK                            R23 K44 ["StartSaving"]
      141 NAMECALL                         R20 R2 K42 ["getText"]
      143 CALL                             R20 3 1
      144 SETTABLEKS                       R20 R19 K36 ["Text"]
      146 MOVE                             R20 R1
      147 CALL                             R20 0 1
      148 SETTABLEKS                       R20 R19 K10 ["LayoutOrder"]
      150 CALL                             R17 2 1
      151 SETTABLEKS                       R17 R16 K19 ["Title"]
      153 MOVE                             R17 R6
      154 JUMPIFNOT                        R17 ; [+36]
      155 GETUPVAL                         R18 2
      156 GETTABLEKS                       R17 R18 K7 ["createElement"]
      158 GETUPVAL                         R19 4
      159 GETTABLEKS                       R18 R19 K36 ["Text"]
      161 DUPTABLE                         R19 K39 [{"tag", "Text", "LayoutOrder"}]
      162 LOADK                            R20 K45 ["size-0-0 auto-xy text-body-small text-wrap"]
      163 SETTABLEKS                       R20 R19 K9 ["tag"]
      165 JUMPIFNOT                        R8 ; [+6]
      166 LOADK                            R22 K20 ["Description"]
      167 LOADK                            R23 K41 ["ErrorLoadingHistory"]
      168 NAMECALL                         R20 R2 K42 ["getText"]
      170 CALL                             R20 3 1
      171 JUMP                             ; [+12]
      172 JUMPIFNOT                        R7 ; [+6]
      173 LOADK                            R22 K20 ["Description"]
      174 LOADK                            R23 K43 ["NothingMatchesFilters"]
      175 NAMECALL                         R20 R2 K42 ["getText"]
      177 CALL                             R20 3 1
      178 JUMP                             ; [+5]
      179 LOADK                            R22 K20 ["Description"]
      180 LOADK                            R23 K44 ["StartSaving"]
      181 NAMECALL                         R20 R2 K42 ["getText"]
      183 CALL                             R20 3 1
      184 SETTABLEKS                       R20 R19 K36 ["Text"]
      186 MOVE                             R20 R1
      187 CALL                             R20 0 1
      188 SETTABLEKS                       R20 R19 K10 ["LayoutOrder"]
      190 CALL                             R17 2 1
      191 SETTABLEKS                       R17 R16 K20 ["Description"]
      193 MOVE                             R17 R6
      194 JUMPIFNOT                        R17 ; [+43]
      195 MOVE                             R17 R7
      196 JUMPIFNOT                        R17 ; [+41]
      197 GETUPVAL                         R18 2
      198 GETTABLEKS                       R17 R18 K7 ["createElement"]
      200 GETUPVAL                         R19 4
      201 GETTABLEKS                       R18 R19 K27 ["Button"]
      203 DUPTABLE                         R19 K47 [{"text", "variant", "onActivated", "size", "LayoutOrder"}]
      204 LOADK                            R22 K48 ["Action"]
      205 LOADK                            R23 K49 ["ClearFilters"]
      206 NAMECALL                         R20 R2 K42 ["getText"]
      208 CALL                             R20 3 1
      209 SETTABLEKS                       R20 R19 K46 ["text"]
      211 GETUPVAL                         R23 4
      212 GETTABLEKS                       R22 R23 K34 ["Enums"]
      214 GETTABLEKS                       R21 R22 K35 ["ButtonVariant"]
      216 GETTABLEKS                       R20 R21 K50 ["Standard"]
      218 SETTABLEKS                       R20 R19 K29 ["variant"]
      220 GETTABLEKS                       R20 R4 K51 ["clearFilters"]
      222 SETTABLEKS                       R20 R19 K28 ["onActivated"]
      224 GETUPVAL                         R23 4
      225 GETTABLEKS                       R22 R23 K34 ["Enums"]
      227 GETTABLEKS                       R21 R22 K37 ["InputSize"]
      229 GETTABLEKS                       R20 R21 K52 ["Small"]
      231 SETTABLEKS                       R20 R19 K32 ["size"]
      233 MOVE                             R20 R1
      234 CALL                             R20 0 1
      235 SETTABLEKS                       R20 R19 K10 ["LayoutOrder"]
      237 CALL                             R17 2 1
      238 SETTABLEKS                       R17 R16 K21 ["ClearFiltersButton"]
      240 MOVE                             R17 R6
      241 JUMPIFNOT                        R17 ; [+43]
      242 NOT                              R17 R7
      243 JUMPIFNOT                        R17 ; [+41]
      244 GETUPVAL                         R18 2
      245 GETTABLEKS                       R17 R18 K7 ["createElement"]
      247 GETUPVAL                         R19 4
      248 GETTABLEKS                       R18 R19 K27 ["Button"]
      250 DUPTABLE                         R19 K47 [{"text", "variant", "onActivated", "size", "LayoutOrder"}]
      251 LOADK                            R22 K48 ["Action"]
      252 LOADK                            R23 K53 ["Refresh"]
      253 NAMECALL                         R20 R2 K42 ["getText"]
      255 CALL                             R20 3 1
      256 SETTABLEKS                       R20 R19 K46 ["text"]
      258 GETUPVAL                         R23 4
      259 GETTABLEKS                       R22 R23 K34 ["Enums"]
      261 GETTABLEKS                       R21 R22 K35 ["ButtonVariant"]
      263 GETTABLEKS                       R20 R21 K50 ["Standard"]
      265 SETTABLEKS                       R20 R19 K29 ["variant"]
      267 GETTABLEKS                       R20 R3 K54 ["refresh"]
      269 SETTABLEKS                       R20 R19 K28 ["onActivated"]
      271 GETUPVAL                         R23 4
      272 GETTABLEKS                       R22 R23 K34 ["Enums"]
      274 GETTABLEKS                       R21 R22 K37 ["InputSize"]
      276 GETTABLEKS                       R20 R21 K52 ["Small"]
      278 SETTABLEKS                       R20 R19 K32 ["size"]
      280 MOVE                             R20 R1
      281 CALL                             R20 0 1
      282 SETTABLEKS                       R20 R19 K10 ["LayoutOrder"]
      284 CALL                             R17 2 1
      285 SETTABLEKS                       R17 R16 K22 ["RefreshButton"]
      287 GETUPVAL                         R18 2
      288 GETTABLEKS                       R17 R18 K7 ["createElement"]
      290 GETUPVAL                         R19 4
      291 GETTABLEKS                       R18 R19 K8 ["View"]
      293 DUPTABLE                         R19 K25 [{"LayoutOrder", "tag"}]
      294 MOVE                             R20 R1
      295 CALL                             R20 0 1
      296 SETTABLEKS                       R20 R19 K10 ["LayoutOrder"]
      298 LOADK                            R20 K26 ["fill"]
      299 SETTABLEKS                       R20 R19 K9 ["tag"]
      301 CALL                             R17 2 1
      302 SETTABLEKS                       R17 R16 K23 ["EndSpacer"]
      304 CALL                             R13 3 1
      305 SETTABLEKS                       R13 R12 K13 ["EmptyPage"]
      307 NOT                              R13 R5
      308 JUMPIFNOT                        R13 ; [+14]
      309 GETUPVAL                         R14 2
      310 GETTABLEKS                       R13 R14 K7 ["createElement"]
      312 GETUPVAL                         R14 5
      313 DUPTABLE                         R15 K56 [{"page", "LayoutOrder"}]
      314 GETTABLEKS                       R16 R4 K55 ["page"]
      316 SETTABLEKS                       R16 R15 K55 ["page"]
      318 MOVE                             R16 R1
      319 CALL                             R16 0 1
      320 SETTABLEKS                       R16 R15 K10 ["LayoutOrder"]
      322 CALL                             R13 2 1
      323 SETTABLEKS                       R13 R12 K14 ["PlaceVersionList"]
      325 CALL                             R9 3 -1
      326 RETURN                           R9 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["useContext"]
        5 GETUPVAL                         R3 2
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R3 R2 K1 ["pageController"]
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R4 R5 K2 ["createElement"]
       12 GETUPVAL                         R6 3
       13 GETTABLEKS                       R5 R6 K3 ["View"]
       15 DUPTABLE                         R6 K6 [{"tag", "LayoutOrder"}]
       16 LOADK                            R7 K7 ["size-full-0 auto-y row align-y-center"]
       17 SETTABLEKS                       R7 R6 K4 ["tag"]
       19 GETTABLEKS                       R7 R0 K5 ["LayoutOrder"]
       21 SETTABLEKS                       R7 R6 K5 ["LayoutOrder"]
       23 DUPTABLE                         R7 K10 [{"Spacer", "PageSelector"}]
       24 GETUPVAL                         R9 1
       25 GETTABLEKS                       R8 R9 K2 ["createElement"]
       27 GETUPVAL                         R10 3
       28 GETTABLEKS                       R9 R10 K3 ["View"]
       30 DUPTABLE                         R10 K11 [{"LayoutOrder", "tag"}]
       31 MOVE                             R11 R1
       32 CALL                             R11 0 1
       33 SETTABLEKS                       R11 R10 K5 ["LayoutOrder"]
       35 LOADK                            R11 K12 ["fill"]
       36 SETTABLEKS                       R11 R10 K4 ["tag"]
       38 CALL                             R8 2 1
       39 SETTABLEKS                       R8 R7 K8 ["Spacer"]
       41 GETUPVAL                         R9 1
       42 GETTABLEKS                       R8 R9 K2 ["createElement"]
       44 GETUPVAL                         R9 4
       45 DUPTABLE                         R10 K18 [{"pageSize", "pageNumber", "maxPageNumber", "onPageNumberChanged", "onPageSizeChanged", "LayoutOrder"}]
       46 GETTABLEKS                       R11 R3 K13 ["pageSize"]
       48 SETTABLEKS                       R11 R10 K13 ["pageSize"]
       50 GETTABLEKS                       R11 R3 K14 ["pageNumber"]
       52 SETTABLEKS                       R11 R10 K14 ["pageNumber"]
       54 GETTABLEKS                       R11 R3 K15 ["maxPageNumber"]
       56 SETTABLEKS                       R11 R10 K15 ["maxPageNumber"]
       58 GETTABLEKS                       R11 R3 K19 ["setPageNumber"]
       60 SETTABLEKS                       R11 R10 K16 ["onPageNumberChanged"]
       62 GETTABLEKS                       R11 R3 K20 ["setPageSize"]
       64 SETTABLEKS                       R11 R10 K17 ["onPageSizeChanged"]
       66 MOVE                             R11 R1
       67 CALL                             R11 0 1
       68 SETTABLEKS                       R11 R10 K5 ["LayoutOrder"]
       70 CALL                             R8 2 1
       71 SETTABLEKS                       R8 R7 K9 ["PageSelector"]
       73 CALL                             R4 3 -1
       74 RETURN                           R4 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K2 [{"isNewFeature", "targetPlaceId"}]
        3 LOADB                            R4 1
        4 SETTABLEKS                       R4 R3 K0 ["isNewFeature"]
        6 GETUPVAL                         R5 2
        7 GETTABLEKS                       R4 R5 K3 ["placeId"]
        9 SETTABLEKS                       R4 R3 K1 ["targetPlaceId"]
       11 NAMECALL                         R0 R0 K4 ["logRobloxTelemetryEvent"]
       13 CALL                             R0 3 0
       14 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K2 [{"isNewFeature", "targetPlaceId"}]
        3 LOADB                            R4 1
        4 SETTABLEKS                       R4 R3 K0 ["isNewFeature"]
        6 GETUPVAL                         R5 2
        7 GETTABLEKS                       R4 R5 K3 ["placeId"]
        9 SETTABLEKS                       R4 R3 K1 ["targetPlaceId"]
       11 NAMECALL                         R0 R0 K4 ["logRobloxTelemetryEvent"]
       13 CALL                             R0 3 0
       14 NEWCLOSURE                       R0 P0
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          UPVAL U2
       18 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K0 ["useContext"]
        5 GETUPVAL                         R2 2
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K1 ["useEffect"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          VAL R1
       14 CAPTURE                          UPVAL U5
       15 NEWTABLE                         R4 0 0
       17 CALL                             R2 2 0
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R2 R3 K2 ["createElement"]
       21 GETUPVAL                         R4 6
       22 GETTABLEKS                       R3 R4 K3 ["View"]
       24 DUPTABLE                         R4 K5 [{"tag"}]
       25 LOADK                            R5 K6 ["size-full-full col align-x-center"]
       26 SETTABLEKS                       R5 R4 K4 ["tag"]
       28 DUPTABLE                         R5 K11 [{"Header", "Body", "Divider", "Footer"}]
       29 GETUPVAL                         R7 1
       30 GETTABLEKS                       R6 R7 K2 ["createElement"]
       32 GETUPVAL                         R7 7
       33 DUPTABLE                         R8 K13 [{"LayoutOrder"}]
       34 MOVE                             R9 R0
       35 CALL                             R9 0 1
       36 SETTABLEKS                       R9 R8 K12 ["LayoutOrder"]
       38 CALL                             R6 2 1
       39 SETTABLEKS                       R6 R5 K7 ["Header"]
       41 GETUPVAL                         R7 1
       42 GETTABLEKS                       R6 R7 K2 ["createElement"]
       44 GETUPVAL                         R7 8
       45 DUPTABLE                         R8 K13 [{"LayoutOrder"}]
       46 MOVE                             R9 R0
       47 CALL                             R9 0 1
       48 SETTABLEKS                       R9 R8 K12 ["LayoutOrder"]
       50 CALL                             R6 2 1
       51 SETTABLEKS                       R6 R5 K8 ["Body"]
       53 GETUPVAL                         R7 1
       54 GETTABLEKS                       R6 R7 K2 ["createElement"]
       56 GETUPVAL                         R8 6
       57 GETTABLEKS                       R7 R8 K9 ["Divider"]
       59 DUPTABLE                         R8 K13 [{"LayoutOrder"}]
       60 MOVE                             R9 R0
       61 CALL                             R9 0 1
       62 SETTABLEKS                       R9 R8 K12 ["LayoutOrder"]
       64 CALL                             R6 2 1
       65 SETTABLEKS                       R6 R5 K9 ["Divider"]
       67 GETUPVAL                         R7 1
       68 GETTABLEKS                       R6 R7 K2 ["createElement"]
       70 GETUPVAL                         R7 9
       71 DUPTABLE                         R8 K13 [{"LayoutOrder"}]
       72 MOVE                             R9 R0
       73 CALL                             R9 0 1
       74 SETTABLEKS                       R9 R8 K12 ["LayoutOrder"]
       76 CALL                             R6 2 1
       77 SETTABLEKS                       R6 R5 K10 ["Footer"]
       79 CALL                             R2 3 -1
       80 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceVersionHistory"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R6 K10 ["Framework"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K6 ["Packages"]
       39 GETTABLEKS                       R6 R7 K11 ["TelemetryProtocol"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R4 K12 ["ContextServices"]
       44 GETTABLEKS                       R7 R6 K13 ["Localization"]
       46 GETTABLEKS                       R9 R0 K14 ["Src"]
       48 GETTABLEKS                       R8 R9 K15 ["Contexts"]
       50 GETIMPORT                        R9 K5 [require]
       52 GETTABLEKS                       R10 R8 K16 ["ControllerContext"]
       54 CALL                             R9 1 1
       55 GETIMPORT                        R10 K5 [require]
       57 GETTABLEKS                       R11 R8 K17 ["SettingContext"]
       59 CALL                             R10 1 1
       60 GETTABLEKS                       R11 R5 K18 ["new"]
       62 CALL                             R11 0 1
       63 GETTABLEKS                       R13 R0 K14 ["Src"]
       65 GETTABLEKS                       R12 R13 K19 ["Events"]
       67 GETIMPORT                        R13 K5 [require]
       69 GETTABLEKS                       R14 R12 K20 ["OpenEvent"]
       71 CALL                             R13 1 1
       72 GETIMPORT                        R14 K5 [require]
       74 GETTABLEKS                       R15 R12 K21 ["CloseEvent"]
       76 CALL                             R14 1 1
       77 GETTABLEKS                       R15 R2 K22 ["createNextOrder"]
       79 GETTABLEKS                       R17 R0 K14 ["Src"]
       81 GETTABLEKS                       R16 R17 K23 ["Components"]
       83 GETIMPORT                        R17 K5 [require]
       85 GETTABLEKS                       R18 R16 K24 ["PlaceVersionList"]
       87 CALL                             R17 1 1
       88 GETIMPORT                        R18 K5 [require]
       90 GETTABLEKS                       R19 R16 K25 ["FilterSelector"]
       92 CALL                             R18 1 1
       93 GETIMPORT                        R19 K5 [require]
       95 GETTABLEKS                       R20 R16 K26 ["DateRangeSelector"]
       97 CALL                             R19 1 1
       98 GETIMPORT                        R20 K5 [require]
      100 GETTABLEKS                       R21 R16 K27 ["PageSelector"]
      102 CALL                             R20 1 1
      103 GETIMPORT                        R21 K5 [require]
      105 GETTABLEKS                       R22 R16 K28 ["SearchableSelector"]
      107 CALL                             R21 1 1
      108 DUPCLOSURE                       R22 K29 [PROTO_0]
      109 CAPTURE                          VAL R15
      110 CAPTURE                          VAL R7
      111 CAPTURE                          VAL R1
      112 CAPTURE                          VAL R10
      113 CAPTURE                          VAL R9
      114 CAPTURE                          VAL R3
      115 CAPTURE                          VAL R21
      116 CAPTURE                          VAL R19
      117 DUPCLOSURE                       R23 K30 [PROTO_3]
      118 CAPTURE                          VAL R15
      119 CAPTURE                          VAL R7
      120 CAPTURE                          VAL R1
      121 CAPTURE                          VAL R9
      122 CAPTURE                          VAL R3
      123 CAPTURE                          VAL R18
      124 DUPCLOSURE                       R24 K31 [PROTO_4]
      125 CAPTURE                          VAL R15
      126 CAPTURE                          VAL R1
      127 CAPTURE                          VAL R3
      128 CAPTURE                          VAL R22
      129 CAPTURE                          VAL R23
      130 DUPCLOSURE                       R25 K32 [PROTO_5]
      131 CAPTURE                          VAL R15
      132 CAPTURE                          VAL R7
      133 CAPTURE                          VAL R1
      134 CAPTURE                          VAL R9
      135 CAPTURE                          VAL R3
      136 CAPTURE                          VAL R17
      137 DUPCLOSURE                       R26 K33 [PROTO_6]
      138 CAPTURE                          VAL R15
      139 CAPTURE                          VAL R1
      140 CAPTURE                          VAL R9
      141 CAPTURE                          VAL R3
      142 CAPTURE                          VAL R20
      143 DUPCLOSURE                       R27 K34 [PROTO_9]
      144 CAPTURE                          VAL R15
      145 CAPTURE                          VAL R1
      146 CAPTURE                          VAL R10
      147 CAPTURE                          VAL R11
      148 CAPTURE                          VAL R13
      149 CAPTURE                          VAL R14
      150 CAPTURE                          VAL R3
      151 CAPTURE                          VAL R24
      152 CAPTURE                          VAL R25
      153 CAPTURE                          VAL R26
      154 RETURN                           R27 1
