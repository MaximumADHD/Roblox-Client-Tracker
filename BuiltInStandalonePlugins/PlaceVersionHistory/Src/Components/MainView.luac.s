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
       41 DUPTABLE                         R14 K25 [{"items", "id", "onIdChanged", "search", "onSearchChanged", "placeholderLabel", "searchLabel", "resetId", "resetLabel", "resetIcon", "LayoutOrder"}]
       42 GETTABLEKS                       R15 R6 K26 ["places"]
       44 SETTABLEKS                       R15 R14 K15 ["items"]
       46 GETTABLEKS                       R15 R3 K27 ["placeId"]
       48 SETTABLEKS                       R15 R14 K16 ["id"]
       50 GETTABLEKS                       R15 R3 K28 ["setPlaceId"]
       52 SETTABLEKS                       R15 R14 K17 ["onIdChanged"]
       54 GETTABLEKS                       R15 R6 K18 ["search"]
       56 SETTABLEKS                       R15 R14 K18 ["search"]
       58 GETTABLEKS                       R15 R6 K29 ["setSearch"]
       60 SETTABLEKS                       R15 R14 K19 ["onSearchChanged"]
       62 LOADK                            R15 K30 [". . ."]
       63 SETTABLEKS                       R15 R14 K20 ["placeholderLabel"]
       65 LOADK                            R17 K31 ["Label"]
       66 LOADK                            R18 K32 ["FindAPlace"]
       67 NAMECALL                         R15 R2 K33 ["getText"]
       69 CALL                             R15 3 1
       70 SETTABLEKS                       R15 R14 K21 ["searchLabel"]
       72 GETTABLEKS                       R15 R3 K34 ["sessionPlaceId"]
       74 SETTABLEKS                       R15 R14 K22 ["resetId"]
       76 LOADK                            R17 K31 ["Label"]
       77 LOADK                            R18 K35 ["ResetPlace"]
       78 NAMECALL                         R15 R2 K33 ["getText"]
       80 CALL                             R15 3 1
       81 SETTABLEKS                       R15 R14 K23 ["resetLabel"]
       83 GETUPVAL                         R18 5
       84 GETTABLEKS                       R17 R18 K36 ["Enums"]
       86 GETTABLEKS                       R16 R17 K37 ["IconName"]
       88 GETTABLEKS                       R15 R16 K38 ["ArrowSmallLeft"]
       90 SETTABLEKS                       R15 R14 K24 ["resetIcon"]
       92 MOVE                             R15 R1
       93 CALL                             R15 0 1
       94 SETTABLEKS                       R15 R14 K8 ["LayoutOrder"]
       96 CALL                             R12 2 1
       97 SETTABLEKS                       R12 R11 K11 ["PlaceSelector"]
       99 GETUPVAL                         R13 2
      100 GETTABLEKS                       R12 R13 K5 ["createElement"]
      102 GETUPVAL                         R13 6
      103 DUPTABLE                         R14 K39 [{"items", "id", "onIdChanged", "search", "onSearchChanged", "placeholderLabel", "searchLabel", "resetLabel", "LayoutOrder"}]
      104 GETTABLEKS                       R15 R5 K40 ["contributors"]
      106 SETTABLEKS                       R15 R14 K15 ["items"]
      108 GETTABLEKS                       R15 R7 K41 ["contributor"]
      110 SETTABLEKS                       R15 R14 K16 ["id"]
      112 GETTABLEKS                       R15 R7 K42 ["setContributor"]
      114 SETTABLEKS                       R15 R14 K17 ["onIdChanged"]
      116 GETTABLEKS                       R15 R5 K18 ["search"]
      118 SETTABLEKS                       R15 R14 K18 ["search"]
      120 GETTABLEKS                       R15 R5 K29 ["setSearch"]
      122 SETTABLEKS                       R15 R14 K19 ["onSearchChanged"]
      124 LOADK                            R17 K31 ["Label"]
      125 LOADK                            R18 K43 ["AllUsers"]
      126 NAMECALL                         R15 R2 K33 ["getText"]
      128 CALL                             R15 3 1
      129 SETTABLEKS                       R15 R14 K20 ["placeholderLabel"]
      131 LOADK                            R17 K31 ["Label"]
      132 LOADK                            R18 K44 ["FindAUser"]
      133 NAMECALL                         R15 R2 K33 ["getText"]
      135 CALL                             R15 3 1
      136 SETTABLEKS                       R15 R14 K21 ["searchLabel"]
      138 LOADK                            R17 K31 ["Label"]
      139 LOADK                            R18 K45 ["ResetUser"]
      140 NAMECALL                         R15 R2 K33 ["getText"]
      142 CALL                             R15 3 1
      143 SETTABLEKS                       R15 R14 K23 ["resetLabel"]
      145 MOVE                             R15 R1
      146 CALL                             R15 0 1
      147 SETTABLEKS                       R15 R14 K8 ["LayoutOrder"]
      149 CALL                             R12 2 1
      150 SETTABLEKS                       R12 R11 K12 ["ContributorSelector"]
      152 GETUPVAL                         R13 2
      153 GETTABLEKS                       R12 R13 K5 ["createElement"]
      155 GETUPVAL                         R13 7
      156 DUPTABLE                         R14 K50 [{"startDate", "onStartDateChanged", "endDate", "onEndDateChanged", "LayoutOrder"}]
      157 GETTABLEKS                       R15 R7 K46 ["startDate"]
      159 SETTABLEKS                       R15 R14 K46 ["startDate"]
      161 GETTABLEKS                       R15 R7 K51 ["setStartDate"]
      163 SETTABLEKS                       R15 R14 K47 ["onStartDateChanged"]
      165 GETTABLEKS                       R15 R7 K48 ["endDate"]
      167 SETTABLEKS                       R15 R14 K48 ["endDate"]
      169 GETTABLEKS                       R15 R7 K52 ["setEndDate"]
      171 SETTABLEKS                       R15 R14 K49 ["onEndDateChanged"]
      173 MOVE                             R15 R1
      174 CALL                             R15 0 1
      175 SETTABLEKS                       R15 R14 K8 ["LayoutOrder"]
      177 CALL                             R12 2 1
      178 SETTABLEKS                       R12 R11 K13 ["DateRangeSelector"]
      180 CALL                             R8 3 -1
      181 RETURN                           R8 -1

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
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 [""]
        2 CALL                             R0 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K1 ["setSearch"]
        6 LOADNIL                          R1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_4:
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
       44 GETTABLEKS                       R8 R9 K7 ["useCallback"]
       46 NEWCLOSURE                       R9 P2
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R4
       49 NEWTABLE                         R10 0 0
       51 CALL                             R8 2 1
       52 GETUPVAL                         R10 2
       53 GETTABLEKS                       R9 R10 K8 ["createElement"]
       55 GETUPVAL                         R11 4
       56 GETTABLEKS                       R10 R11 K9 ["View"]
       58 DUPTABLE                         R11 K12 [{"tag", "LayoutOrder"}]
       59 LOADK                            R12 K13 ["size-0-0 auto-xy row align-y-center gap-small"]
       60 SETTABLEKS                       R12 R11 K10 ["tag"]
       62 GETTABLEKS                       R12 R0 K11 ["LayoutOrder"]
       64 SETTABLEKS                       R12 R11 K11 ["LayoutOrder"]
       66 DUPTABLE                         R12 K17 [{"SearchBar", "FilterSelector", "RefreshButton"}]
       67 GETUPVAL                         R14 2
       68 GETTABLEKS                       R13 R14 K8 ["createElement"]
       70 GETUPVAL                         R15 4
       71 GETTABLEKS                       R14 R15 K18 ["TextInput"]
       73 DUPTABLE                         R15 K29 [{"size", "width", "text", "label", "placeholder", "leadingIcon", "iconTrailing", "onChanged", "onReturnPressed", "testId", "LayoutOrder"}]
       74 GETUPVAL                         R19 4
       75 GETTABLEKS                       R18 R19 K30 ["Enums"]
       77 GETTABLEKS                       R17 R18 K31 ["InputSize"]
       79 GETTABLEKS                       R16 R17 K32 ["XSmall"]
       81 SETTABLEKS                       R16 R15 K19 ["size"]
       83 GETIMPORT                        R16 K35 [UDim.new]
       85 LOADN                            R17 0
       86 LOADN                            R18 180
       87 CALL                             R16 2 1
       88 SETTABLEKS                       R16 R15 K20 ["width"]
       90 SETTABLEKS                       R5 R15 K21 ["text"]
       92 LOADK                            R16 K4 [""]
       93 SETTABLEKS                       R16 R15 K22 ["label"]
       95 LOADK                            R18 K36 ["Label"]
       96 LOADK                            R19 K37 ["Search"]
       97 NAMECALL                         R16 R2 K38 ["getText"]
       99 CALL                             R16 3 1
      100 SETTABLEKS                       R16 R15 K23 ["placeholder"]
      102 GETUPVAL                         R19 4
      103 GETTABLEKS                       R18 R19 K30 ["Enums"]
      105 GETTABLEKS                       R17 R18 K39 ["IconName"]
      107 GETTABLEKS                       R16 R17 K40 ["MagnifyingGlass"]
      109 SETTABLEKS                       R16 R15 K24 ["leadingIcon"]
      111 GETTABLEKS                       R17 R4 K6 ["search"]
      113 JUMPIFNOT                        R17 ; [+13]
      114 DUPTABLE                         R16 K43 [{"name", "onActivated"}]
      115 GETUPVAL                         R20 4
      116 GETTABLEKS                       R19 R20 K30 ["Enums"]
      118 GETTABLEKS                       R18 R19 K39 ["IconName"]
      120 GETTABLEKS                       R17 R18 K32 ["XSmall"]
      122 SETTABLEKS                       R17 R16 K41 ["name"]
      124 SETTABLEKS                       R8 R16 K42 ["onActivated"]
      126 JUMP                             ; [+1]
      127 LOADNIL                          R16
      128 SETTABLEKS                       R16 R15 K25 ["iconTrailing"]
      130 SETTABLEKS                       R6 R15 K26 ["onChanged"]
      132 SETTABLEKS                       R7 R15 K27 ["onReturnPressed"]
      134 LOADK                            R16 K44 ["--search-bar"]
      135 SETTABLEKS                       R16 R15 K28 ["testId"]
      137 MOVE                             R16 R1
      138 CALL                             R16 0 1
      139 SETTABLEKS                       R16 R15 K11 ["LayoutOrder"]
      141 CALL                             R13 2 1
      142 SETTABLEKS                       R13 R12 K14 ["SearchBar"]
      144 GETUPVAL                         R14 2
      145 GETTABLEKS                       R13 R14 K8 ["createElement"]
      147 GETUPVAL                         R14 5
      148 DUPTABLE                         R15 K51 [{"saveType", "onSaveTypeChanged", "isPublished", "onIsPublishedChanged", "hasNotes", "onHasNotesChanged", "LayoutOrder"}]
      149 GETTABLEKS                       R16 R4 K45 ["saveType"]
      151 SETTABLEKS                       R16 R15 K45 ["saveType"]
      153 GETTABLEKS                       R16 R4 K52 ["setSaveType"]
      155 SETTABLEKS                       R16 R15 K46 ["onSaveTypeChanged"]
      157 GETTABLEKS                       R16 R4 K47 ["isPublished"]
      159 SETTABLEKS                       R16 R15 K47 ["isPublished"]
      161 GETTABLEKS                       R16 R4 K53 ["setIsPublished"]
      163 SETTABLEKS                       R16 R15 K48 ["onIsPublishedChanged"]
      165 GETTABLEKS                       R16 R4 K49 ["hasNotes"]
      167 SETTABLEKS                       R16 R15 K49 ["hasNotes"]
      169 GETTABLEKS                       R16 R4 K54 ["setHasNotes"]
      171 SETTABLEKS                       R16 R15 K50 ["onHasNotesChanged"]
      173 MOVE                             R16 R1
      174 CALL                             R16 0 1
      175 SETTABLEKS                       R16 R15 K11 ["LayoutOrder"]
      177 CALL                             R13 2 1
      178 SETTABLEKS                       R13 R12 K15 ["FilterSelector"]
      180 GETUPVAL                         R14 2
      181 GETTABLEKS                       R13 R14 K8 ["createElement"]
      183 GETUPVAL                         R15 4
      184 GETTABLEKS                       R14 R15 K55 ["IconButton"]
      186 DUPTABLE                         R15 K57 [{"icon", "size", "onActivated", "LayoutOrder"}]
      187 GETUPVAL                         R19 4
      188 GETTABLEKS                       R18 R19 K30 ["Enums"]
      190 GETTABLEKS                       R17 R18 K39 ["IconName"]
      192 GETTABLEKS                       R16 R17 K58 ["ArrowSpinClockwise"]
      194 SETTABLEKS                       R16 R15 K56 ["icon"]
      196 GETUPVAL                         R19 4
      197 GETTABLEKS                       R18 R19 K30 ["Enums"]
      199 GETTABLEKS                       R17 R18 K31 ["InputSize"]
      201 GETTABLEKS                       R16 R17 K32 ["XSmall"]
      203 SETTABLEKS                       R16 R15 K19 ["size"]
      205 GETTABLEKS                       R16 R3 K59 ["refresh"]
      207 SETTABLEKS                       R16 R15 K42 ["onActivated"]
      209 MOVE                             R16 R1
      210 CALL                             R16 0 1
      211 SETTABLEKS                       R16 R15 K11 ["LayoutOrder"]
      213 CALL                             R13 2 1
      214 SETTABLEKS                       R13 R12 K16 ["RefreshButton"]
      216 CALL                             R9 3 -1
      217 RETURN                           R9 -1

PROTO_5:
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

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["publishInProgress"]
        3 JUMPIFNOTEQKS                    R0 K1 ["None"] ; [+18]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R0 R1 K2 ["pageNumber"]
        8 JUMPIFNOTEQKN                    R0 K3 [1] ; [+13]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R0 R1 K4 ["placeId"]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R1 R2 K5 ["sessionPlaceId"]
       16 JUMPIFNOTEQ                      R0 R1 ; [+5]
       18 GETUPVAL                         R1 2
       19 GETTABLEKS                       R0 R1 K6 ["refresh"]
       21 CALL                             R0 0 0
       22 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["useContext"]
        5 GETUPVAL                         R3 2
        6 CALL                             R2 1 1
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R3 R4 K0 ["useContext"]
       10 GETUPVAL                         R4 3
       11 CALL                             R3 1 1
       12 GETTABLEKS                       R4 R3 K1 ["pageController"]
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R5 R6 K2 ["useEffect"]
       17 NEWCLOSURE                       R6 P0
       18 CAPTURE                          VAL R2
       19 CAPTURE                          VAL R4
       20 CAPTURE                          VAL R3
       21 NEWTABLE                         R7 0 1
       23 GETTABLEKS                       R8 R2 K3 ["publishInProgress"]
       25 SETLIST                          R7 R8 1 [1]
       27 CALL                             R5 2 0
       28 GETUPVAL                         R6 1
       29 GETTABLEKS                       R5 R6 K4 ["createElement"]
       31 GETUPVAL                         R7 4
       32 GETTABLEKS                       R6 R7 K5 ["View"]
       34 DUPTABLE                         R7 K8 [{"tag", "LayoutOrder"}]
       35 LOADK                            R8 K9 ["size-full-0 fill clip"]
       36 SETTABLEKS                       R8 R7 K6 ["tag"]
       38 GETTABLEKS                       R8 R0 K7 ["LayoutOrder"]
       40 SETTABLEKS                       R8 R7 K7 ["LayoutOrder"]
       42 DUPTABLE                         R8 K11 [{"Page"}]
       43 GETTABLEKS                       R10 R4 K12 ["isEmpty"]
       45 JUMPIFNOT                        R10 ; [+31]
       46 GETUPVAL                         R10 1
       47 GETTABLEKS                       R9 R10 K4 ["createElement"]
       49 GETUPVAL                         R10 5
       50 DUPTABLE                         R11 K18 [{"isDone", "isFiltered", "isFailure", "onClearFiltersActivated", "onRefreshActivated", "LayoutOrder"}]
       51 GETTABLEKS                       R12 R4 K13 ["isDone"]
       53 SETTABLEKS                       R12 R11 K13 ["isDone"]
       55 GETTABLEKS                       R12 R4 K14 ["isFiltered"]
       57 SETTABLEKS                       R12 R11 K14 ["isFiltered"]
       59 GETTABLEKS                       R12 R4 K15 ["isFailure"]
       61 SETTABLEKS                       R12 R11 K15 ["isFailure"]
       63 GETTABLEKS                       R12 R4 K19 ["clearFilters"]
       65 SETTABLEKS                       R12 R11 K16 ["onClearFiltersActivated"]
       67 GETTABLEKS                       R12 R3 K20 ["refresh"]
       69 SETTABLEKS                       R12 R11 K17 ["onRefreshActivated"]
       71 MOVE                             R12 R1
       72 CALL                             R12 0 1
       73 SETTABLEKS                       R12 R11 K7 ["LayoutOrder"]
       75 CALL                             R9 2 1
       76 JUMP                             ; [+18]
       77 GETUPVAL                         R10 1
       78 GETTABLEKS                       R9 R10 K4 ["createElement"]
       80 GETUPVAL                         R10 6
       81 DUPTABLE                         R11 K23 [{"pageNumber", "page", "LayoutOrder"}]
       82 GETTABLEKS                       R12 R4 K21 ["pageNumber"]
       84 SETTABLEKS                       R12 R11 K21 ["pageNumber"]
       86 GETTABLEKS                       R12 R4 K22 ["page"]
       88 SETTABLEKS                       R12 R11 K22 ["page"]
       90 MOVE                             R12 R1
       91 CALL                             R12 0 1
       92 SETTABLEKS                       R12 R11 K7 ["LayoutOrder"]
       94 CALL                             R9 2 1
       95 SETTABLEKS                       R9 R8 K10 ["Page"]
       97 CALL                             R5 3 -1
       98 RETURN                           R5 -1

PROTO_8:
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

PROTO_9:
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

PROTO_10:
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

PROTO_11:
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
       85 GETTABLEKS                       R18 R16 K24 ["EmptyPage"]
       87 CALL                             R17 1 1
       88 GETIMPORT                        R18 K5 [require]
       90 GETTABLEKS                       R19 R16 K25 ["PlaceVersionList"]
       92 CALL                             R18 1 1
       93 GETIMPORT                        R19 K5 [require]
       95 GETTABLEKS                       R20 R16 K26 ["FilterSelector"]
       97 CALL                             R19 1 1
       98 GETIMPORT                        R20 K5 [require]
      100 GETTABLEKS                       R21 R16 K27 ["DateRangeSelector"]
      102 CALL                             R20 1 1
      103 GETIMPORT                        R21 K5 [require]
      105 GETTABLEKS                       R22 R16 K28 ["PageSelector"]
      107 CALL                             R21 1 1
      108 GETIMPORT                        R22 K5 [require]
      110 GETTABLEKS                       R23 R16 K29 ["SearchableSelector"]
      112 CALL                             R22 1 1
      113 DUPCLOSURE                       R23 K30 [PROTO_0]
      114 CAPTURE                          VAL R15
      115 CAPTURE                          VAL R7
      116 CAPTURE                          VAL R1
      117 CAPTURE                          VAL R10
      118 CAPTURE                          VAL R9
      119 CAPTURE                          VAL R3
      120 CAPTURE                          VAL R22
      121 CAPTURE                          VAL R20
      122 DUPCLOSURE                       R24 K31 [PROTO_4]
      123 CAPTURE                          VAL R15
      124 CAPTURE                          VAL R7
      125 CAPTURE                          VAL R1
      126 CAPTURE                          VAL R9
      127 CAPTURE                          VAL R3
      128 CAPTURE                          VAL R19
      129 DUPCLOSURE                       R25 K32 [PROTO_5]
      130 CAPTURE                          VAL R15
      131 CAPTURE                          VAL R1
      132 CAPTURE                          VAL R3
      133 CAPTURE                          VAL R23
      134 CAPTURE                          VAL R24
      135 DUPCLOSURE                       R26 K33 [PROTO_7]
      136 CAPTURE                          VAL R15
      137 CAPTURE                          VAL R1
      138 CAPTURE                          VAL R10
      139 CAPTURE                          VAL R9
      140 CAPTURE                          VAL R3
      141 CAPTURE                          VAL R17
      142 CAPTURE                          VAL R18
      143 DUPCLOSURE                       R27 K34 [PROTO_8]
      144 CAPTURE                          VAL R15
      145 CAPTURE                          VAL R1
      146 CAPTURE                          VAL R9
      147 CAPTURE                          VAL R3
      148 CAPTURE                          VAL R21
      149 DUPCLOSURE                       R28 K35 [PROTO_11]
      150 CAPTURE                          VAL R15
      151 CAPTURE                          VAL R1
      152 CAPTURE                          VAL R10
      153 CAPTURE                          VAL R11
      154 CAPTURE                          VAL R13
      155 CAPTURE                          VAL R14
      156 CAPTURE                          VAL R3
      157 CAPTURE                          VAL R25
      158 CAPTURE                          VAL R26
      159 CAPTURE                          VAL R27
      160 RETURN                           R28 1
