PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 NAMECALL                         R2 R2 K0 ["use"]
        5 CALL                             R2 1 1
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K1 ["useContext"]
        9 GETUPVAL                         R4 3
       10 CALL                             R3 1 1
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R4 R4 K1 ["useContext"]
       14 GETUPVAL                         R5 4
       15 CALL                             R4 1 1
       16 GETTABLEKS                       R5 R4 K2 ["contributorsController"]
       18 GETTABLEKS                       R6 R4 K3 ["placesController"]
       20 GETTABLEKS                       R7 R4 K4 ["pageController"]
       22 GETUPVAL                         R8 2
       23 GETTABLEKS                       R8 R8 K5 ["createElement"]
       25 GETUPVAL                         R9 5
       26 GETTABLEKS                       R9 R9 K6 ["View"]
       28 DUPTABLE                         R10 K10 [{["tag"] = "row align-y-center gap-small size-0-0 auto-xy", ["LayoutOrder"]}]
       29 GETTABLEKS                       R11 R0 K9 ["LayoutOrder"]
       31 SETTABLEKS                       R11 R10 K9 ["LayoutOrder"]
       33 DUPTABLE                         R11 K14 [{"PlaceSelector", "ContributorSelector", "DateRangeSelector"}]
       34 GETUPVAL                         R12 2
       35 GETTABLEKS                       R12 R12 K5 ["createElement"]
       37 GETUPVAL                         R13 6
       38 DUPTABLE                         R14 K26 [{["items"], ["id"], ["onIdChanged"], ["search"], ["onSearchChanged"], ["placeholderLabel"] = ". . .", ["searchLabel"], ["resetId"], ["resetLabel"], ["resetIcon"], ["LayoutOrder"]}]
       39 GETTABLEKS                       R15 R6 K27 ["places"]
       41 SETTABLEKS                       R15 R14 K15 ["items"]
       43 GETTABLEKS                       R15 R3 K28 ["placeId"]
       45 SETTABLEKS                       R15 R14 K16 ["id"]
       47 GETTABLEKS                       R15 R3 K29 ["setPlaceId"]
       49 SETTABLEKS                       R15 R14 K17 ["onIdChanged"]
       51 GETTABLEKS                       R15 R6 K18 ["search"]
       53 SETTABLEKS                       R15 R14 K18 ["search"]
       55 GETTABLEKS                       R15 R6 K30 ["setSearch"]
       57 SETTABLEKS                       R15 R14 K19 ["onSearchChanged"]
       59 LOADK                            R17 K31 ["Label"]
       60 LOADK                            R18 K32 ["FindAPlace"]
       61 NAMECALL                         R15 R2 K33 ["getText"]
       63 CALL                             R15 3 1
       64 SETTABLEKS                       R15 R14 K22 ["searchLabel"]
       66 GETTABLEKS                       R15 R3 K34 ["sessionPlaceId"]
       68 SETTABLEKS                       R15 R14 K23 ["resetId"]
       70 LOADK                            R17 K31 ["Label"]
       71 LOADK                            R18 K35 ["ResetPlace"]
       72 NAMECALL                         R15 R2 K33 ["getText"]
       74 CALL                             R15 3 1
       75 SETTABLEKS                       R15 R14 K24 ["resetLabel"]
       77 GETUPVAL                         R15 5
       78 GETTABLEKS                       R15 R15 K36 ["Enums"]
       80 GETTABLEKS                       R15 R15 K37 ["IconName"]
       82 GETTABLEKS                       R15 R15 K38 ["ArrowSmallLeft"]
       84 SETTABLEKS                       R15 R14 K25 ["resetIcon"]
       86 MOVE                             R15 R1
       87 CALL                             R15 0 1
       88 SETTABLEKS                       R15 R14 K9 ["LayoutOrder"]
       90 CALL                             R12 2 1
       91 SETTABLEKS                       R12 R11 K11 ["PlaceSelector"]
       93 GETUPVAL                         R12 2
       94 GETTABLEKS                       R12 R12 K5 ["createElement"]
       96 GETUPVAL                         R13 6
       97 DUPTABLE                         R14 K39 [{"items", "id", "onIdChanged", "search", "onSearchChanged", "placeholderLabel", "searchLabel", "resetLabel", "LayoutOrder"}]
       98 GETTABLEKS                       R15 R5 K40 ["contributors"]
      100 SETTABLEKS                       R15 R14 K15 ["items"]
      102 GETTABLEKS                       R15 R7 K41 ["contributor"]
      104 SETTABLEKS                       R15 R14 K16 ["id"]
      106 GETTABLEKS                       R15 R7 K42 ["setContributor"]
      108 SETTABLEKS                       R15 R14 K17 ["onIdChanged"]
      110 GETTABLEKS                       R15 R5 K18 ["search"]
      112 SETTABLEKS                       R15 R14 K18 ["search"]
      114 GETTABLEKS                       R15 R5 K30 ["setSearch"]
      116 SETTABLEKS                       R15 R14 K19 ["onSearchChanged"]
      118 LOADK                            R17 K31 ["Label"]
      119 LOADK                            R18 K43 ["AllUsers"]
      120 NAMECALL                         R15 R2 K33 ["getText"]
      122 CALL                             R15 3 1
      123 SETTABLEKS                       R15 R14 K20 ["placeholderLabel"]
      125 LOADK                            R17 K31 ["Label"]
      126 LOADK                            R18 K44 ["FindAUser"]
      127 NAMECALL                         R15 R2 K33 ["getText"]
      129 CALL                             R15 3 1
      130 SETTABLEKS                       R15 R14 K22 ["searchLabel"]
      132 LOADK                            R17 K31 ["Label"]
      133 LOADK                            R18 K45 ["ResetUser"]
      134 NAMECALL                         R15 R2 K33 ["getText"]
      136 CALL                             R15 3 1
      137 SETTABLEKS                       R15 R14 K24 ["resetLabel"]
      139 MOVE                             R15 R1
      140 CALL                             R15 0 1
      141 SETTABLEKS                       R15 R14 K9 ["LayoutOrder"]
      143 CALL                             R12 2 1
      144 SETTABLEKS                       R12 R11 K12 ["ContributorSelector"]
      146 GETUPVAL                         R12 2
      147 GETTABLEKS                       R12 R12 K5 ["createElement"]
      149 GETUPVAL                         R13 7
      150 DUPTABLE                         R14 K50 [{"startDate", "onStartDateChanged", "endDate", "onEndDateChanged", "LayoutOrder"}]
      151 GETTABLEKS                       R15 R7 K46 ["startDate"]
      153 SETTABLEKS                       R15 R14 K46 ["startDate"]
      155 GETTABLEKS                       R15 R7 K51 ["setStartDate"]
      157 SETTABLEKS                       R15 R14 K47 ["onStartDateChanged"]
      159 GETTABLEKS                       R15 R7 K48 ["endDate"]
      161 SETTABLEKS                       R15 R14 K48 ["endDate"]
      163 GETTABLEKS                       R15 R7 K52 ["setEndDate"]
      165 SETTABLEKS                       R15 R14 K49 ["onEndDateChanged"]
      167 MOVE                             R15 R1
      168 CALL                             R15 0 1
      169 SETTABLEKS                       R15 R14 K9 ["LayoutOrder"]
      171 CALL                             R12 2 1
      172 SETTABLEKS                       R12 R11 K13 ["DateRangeSelector"]
      174 CALL                             R8 3 -1
      175 RETURN                           R8 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["search"]
        4 JUMPIFNOT                        R2 ; [+4]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K0 ["search"]
        8 JUMP                             ; [+1]
        9 LOADK                            R1 K1 [""]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setSearch"]
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
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K1 ["setSearch"]
        6 LOADNIL                          R1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 NAMECALL                         R2 R2 K0 ["use"]
        5 CALL                             R2 1 1
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K1 ["useContext"]
        9 GETUPVAL                         R4 3
       10 CALL                             R3 1 1
       11 GETTABLEKS                       R4 R3 K2 ["pageController"]
       13 GETUPVAL                         R5 2
       14 GETTABLEKS                       R5 R5 K3 ["useState"]
       16 LOADK                            R6 K4 [""]
       17 CALL                             R5 1 2
       18 GETUPVAL                         R7 2
       19 GETTABLEKS                       R7 R7 K5 ["useEffect"]
       21 NEWCLOSURE                       R8 P0
       22 CAPTURE                          VAL R6
       23 CAPTURE                          VAL R4
       24 NEWTABLE                         R9 0 1
       26 GETTABLEKS                       R10 R4 K6 ["search"]
       28 SETLIST                          R9 R10 1 [1]
       30 CALL                             R7 2 0
       31 GETUPVAL                         R7 2
       32 GETTABLEKS                       R7 R7 K7 ["useCallback"]
       34 NEWCLOSURE                       R8 P1
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R5
       37 NEWTABLE                         R9 0 1
       39 MOVE                             R10 R5
       40 SETLIST                          R9 R10 1 [1]
       42 CALL                             R7 2 1
       43 GETUPVAL                         R8 2
       44 GETTABLEKS                       R8 R8 K7 ["useCallback"]
       46 NEWCLOSURE                       R9 P2
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R4
       49 NEWTABLE                         R10 0 0
       51 CALL                             R8 2 1
       52 GETUPVAL                         R9 2
       53 GETTABLEKS                       R9 R9 K8 ["createElement"]
       55 GETUPVAL                         R10 4
       56 GETTABLEKS                       R10 R10 K9 ["View"]
       58 DUPTABLE                         R11 K13 [{["tag"] = "row align-y-center gap-small size-0-0 auto-xy", ["LayoutOrder"]}]
       59 GETTABLEKS                       R12 R0 K12 ["LayoutOrder"]
       61 SETTABLEKS                       R12 R11 K12 ["LayoutOrder"]
       63 DUPTABLE                         R12 K17 [{"SearchBar", "FilterSelector", "RefreshButton"}]
       64 GETUPVAL                         R13 2
       65 GETTABLEKS                       R13 R13 K8 ["createElement"]
       67 GETUPVAL                         R14 4
       68 GETTABLEKS                       R14 R14 K18 ["TextInput"]
       70 DUPTABLE                         R15 K30 [{["size"], ["width"], ["text"], ["label"] = "", ["placeholder"], ["leadingIcon"], ["iconTrailing"], ["onChanged"], ["onReturnPressed"], ["testId"] = "--search-bar", ["LayoutOrder"]}]
       71 GETUPVAL                         R16 4
       72 GETTABLEKS                       R16 R16 K31 ["Enums"]
       74 GETTABLEKS                       R16 R16 K32 ["InputSize"]
       76 GETTABLEKS                       R16 R16 K33 ["XSmall"]
       78 SETTABLEKS                       R16 R15 K19 ["size"]
       80 GETIMPORT                        R16 K36 [UDim.new]
       82 LOADN                            R17 0
       83 LOADN                            R18 180
       84 CALL                             R16 2 1
       85 SETTABLEKS                       R16 R15 K20 ["width"]
       87 SETTABLEKS                       R5 R15 K21 ["text"]
       89 LOADK                            R18 K37 ["Label"]
       90 LOADK                            R19 K38 ["Search"]
       91 NAMECALL                         R16 R2 K39 ["getText"]
       93 CALL                             R16 3 1
       94 SETTABLEKS                       R16 R15 K23 ["placeholder"]
       96 GETUPVAL                         R16 4
       97 GETTABLEKS                       R16 R16 K31 ["Enums"]
       99 GETTABLEKS                       R16 R16 K40 ["IconName"]
      101 GETTABLEKS                       R16 R16 K41 ["MagnifyingGlass"]
      103 SETTABLEKS                       R16 R15 K24 ["leadingIcon"]
      105 GETTABLEKS                       R17 R4 K6 ["search"]
      107 JUMPIFNOT                        R17 ; [+13]
      108 DUPTABLE                         R16 K44 [{"name", "onActivated"}]
      109 GETUPVAL                         R17 4
      110 GETTABLEKS                       R17 R17 K31 ["Enums"]
      112 GETTABLEKS                       R17 R17 K40 ["IconName"]
      114 GETTABLEKS                       R17 R17 K33 ["XSmall"]
      116 SETTABLEKS                       R17 R16 K42 ["name"]
      118 SETTABLEKS                       R8 R16 K43 ["onActivated"]
      120 JUMP                             ; [+1]
      121 LOADNIL                          R16
      122 SETTABLEKS                       R16 R15 K25 ["iconTrailing"]
      124 SETTABLEKS                       R6 R15 K26 ["onChanged"]
      126 SETTABLEKS                       R7 R15 K27 ["onReturnPressed"]
      128 MOVE                             R16 R1
      129 CALL                             R16 0 1
      130 SETTABLEKS                       R16 R15 K12 ["LayoutOrder"]
      132 CALL                             R13 2 1
      133 SETTABLEKS                       R13 R12 K14 ["SearchBar"]
      135 GETUPVAL                         R13 2
      136 GETTABLEKS                       R13 R13 K8 ["createElement"]
      138 GETUPVAL                         R14 5
      139 DUPTABLE                         R15 K51 [{"saveType", "onSaveTypeChanged", "isPublished", "onIsPublishedChanged", "hasNotes", "onHasNotesChanged", "LayoutOrder"}]
      140 GETTABLEKS                       R16 R4 K45 ["saveType"]
      142 SETTABLEKS                       R16 R15 K45 ["saveType"]
      144 GETTABLEKS                       R16 R4 K52 ["setSaveType"]
      146 SETTABLEKS                       R16 R15 K46 ["onSaveTypeChanged"]
      148 GETTABLEKS                       R16 R4 K47 ["isPublished"]
      150 SETTABLEKS                       R16 R15 K47 ["isPublished"]
      152 GETTABLEKS                       R16 R4 K53 ["setIsPublished"]
      154 SETTABLEKS                       R16 R15 K48 ["onIsPublishedChanged"]
      156 GETTABLEKS                       R16 R4 K49 ["hasNotes"]
      158 SETTABLEKS                       R16 R15 K49 ["hasNotes"]
      160 GETTABLEKS                       R16 R4 K54 ["setHasNotes"]
      162 SETTABLEKS                       R16 R15 K50 ["onHasNotesChanged"]
      164 MOVE                             R16 R1
      165 CALL                             R16 0 1
      166 SETTABLEKS                       R16 R15 K12 ["LayoutOrder"]
      168 CALL                             R13 2 1
      169 SETTABLEKS                       R13 R12 K15 ["FilterSelector"]
      171 GETUPVAL                         R13 2
      172 GETTABLEKS                       R13 R13 K8 ["createElement"]
      174 GETUPVAL                         R14 4
      175 GETTABLEKS                       R14 R14 K55 ["IconButton"]
      177 DUPTABLE                         R15 K57 [{"icon", "size", "onActivated", "LayoutOrder"}]
      178 GETUPVAL                         R16 4
      179 GETTABLEKS                       R16 R16 K31 ["Enums"]
      181 GETTABLEKS                       R16 R16 K40 ["IconName"]
      183 GETTABLEKS                       R16 R16 K58 ["ArrowSpinClockwise"]
      185 SETTABLEKS                       R16 R15 K56 ["icon"]
      187 GETUPVAL                         R16 4
      188 GETTABLEKS                       R16 R16 K31 ["Enums"]
      190 GETTABLEKS                       R16 R16 K32 ["InputSize"]
      192 GETTABLEKS                       R16 R16 K33 ["XSmall"]
      194 SETTABLEKS                       R16 R15 K19 ["size"]
      196 GETTABLEKS                       R16 R3 K59 ["refresh"]
      198 SETTABLEKS                       R16 R15 K43 ["onActivated"]
      200 MOVE                             R16 R1
      201 CALL                             R16 0 1
      202 SETTABLEKS                       R16 R15 K12 ["LayoutOrder"]
      204 CALL                             R13 2 1
      205 SETTABLEKS                       R13 R12 K16 ["RefreshButton"]
      207 CALL                             R9 3 -1
      208 RETURN                           R9 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["createElement"]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K1 ["View"]
        8 DUPTABLE                         R4 K5 [{["tag"] = "row align-y-center gap-small size-full-0 auto-y padding-small", ["LayoutOrder"]}]
        9 GETTABLEKS                       R5 R0 K4 ["LayoutOrder"]
       11 SETTABLEKS                       R5 R4 K4 ["LayoutOrder"]
       13 DUPTABLE                         R5 K9 [{"HeaderLeft", "Spacer", "HeaderRight"}]
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R6 R6 K0 ["createElement"]
       17 GETUPVAL                         R7 3
       18 DUPTABLE                         R8 K10 [{"LayoutOrder"}]
       19 MOVE                             R9 R1
       20 CALL                             R9 0 1
       21 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
       23 CALL                             R6 2 1
       24 SETTABLEKS                       R6 R5 K6 ["HeaderLeft"]
       26 GETUPVAL                         R6 1
       27 GETTABLEKS                       R6 R6 K0 ["createElement"]
       29 GETUPVAL                         R7 2
       30 GETTABLEKS                       R7 R7 K1 ["View"]
       32 DUPTABLE                         R8 K12 [{["LayoutOrder"], ["tag"] = "fill"}]
       33 MOVE                             R9 R1
       34 CALL                             R9 0 1
       35 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
       37 CALL                             R6 2 1
       38 SETTABLEKS                       R6 R5 K7 ["Spacer"]
       40 GETUPVAL                         R6 1
       41 GETTABLEKS                       R6 R6 K0 ["createElement"]
       43 GETUPVAL                         R7 4
       44 DUPTABLE                         R8 K10 [{"LayoutOrder"}]
       45 MOVE                             R9 R1
       46 CALL                             R9 0 1
       47 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
       49 CALL                             R6 2 1
       50 SETTABLEKS                       R6 R5 K8 ["HeaderRight"]
       52 CALL                             R2 3 -1
       53 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["publishInProgress"]
        3 JUMPIFNOTEQKS                    R0 K1 ["None"] ; [+18]
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K2 ["pageNumber"]
        8 JUMPIFNOTEQKN                    R0 K3 [1] ; [+13]
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K4 ["placeId"]
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K5 ["sessionPlaceId"]
       16 JUMPIFNOTEQ                      R0 R1 ; [+5]
       18 GETUPVAL                         R0 2
       19 GETTABLEKS                       R0 R0 K6 ["refresh"]
       21 CALL                             R0 0 0
       22 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useContext"]
        5 GETUPVAL                         R3 2
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K0 ["useContext"]
       10 GETUPVAL                         R4 3
       11 CALL                             R3 1 1
       12 GETTABLEKS                       R4 R3 K1 ["pageController"]
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R5 R5 K2 ["useEffect"]
       17 NEWCLOSURE                       R6 P0
       18 CAPTURE                          VAL R2
       19 CAPTURE                          VAL R4
       20 CAPTURE                          VAL R3
       21 NEWTABLE                         R7 0 1
       23 GETTABLEKS                       R8 R2 K3 ["publishInProgress"]
       25 SETLIST                          R7 R8 1 [1]
       27 CALL                             R5 2 0
       28 GETUPVAL                         R5 1
       29 GETTABLEKS                       R5 R5 K4 ["createElement"]
       31 GETUPVAL                         R6 4
       32 GETTABLEKS                       R6 R6 K5 ["View"]
       34 DUPTABLE                         R7 K9 [{["tag"] = "fill size-full-0 clip", ["LayoutOrder"]}]
       35 GETTABLEKS                       R8 R0 K8 ["LayoutOrder"]
       37 SETTABLEKS                       R8 R7 K8 ["LayoutOrder"]
       39 DUPTABLE                         R8 K11 [{"Page"}]
       40 GETTABLEKS                       R10 R4 K12 ["isEmpty"]
       42 JUMPIFNOT                        R10 ; [+31]
       43 GETUPVAL                         R9 1
       44 GETTABLEKS                       R9 R9 K4 ["createElement"]
       46 GETUPVAL                         R10 5
       47 DUPTABLE                         R11 K18 [{"isDone", "isFiltered", "isFailure", "onClearFiltersActivated", "onRefreshActivated", "LayoutOrder"}]
       48 GETTABLEKS                       R12 R4 K13 ["isDone"]
       50 SETTABLEKS                       R12 R11 K13 ["isDone"]
       52 GETTABLEKS                       R12 R4 K14 ["isFiltered"]
       54 SETTABLEKS                       R12 R11 K14 ["isFiltered"]
       56 GETTABLEKS                       R12 R4 K15 ["isFailure"]
       58 SETTABLEKS                       R12 R11 K15 ["isFailure"]
       60 GETTABLEKS                       R12 R4 K19 ["clearFilters"]
       62 SETTABLEKS                       R12 R11 K16 ["onClearFiltersActivated"]
       64 GETTABLEKS                       R12 R3 K20 ["refresh"]
       66 SETTABLEKS                       R12 R11 K17 ["onRefreshActivated"]
       68 MOVE                             R12 R1
       69 CALL                             R12 0 1
       70 SETTABLEKS                       R12 R11 K8 ["LayoutOrder"]
       72 CALL                             R9 2 1
       73 JUMP                             ; [+18]
       74 GETUPVAL                         R9 1
       75 GETTABLEKS                       R9 R9 K4 ["createElement"]
       77 GETUPVAL                         R10 6
       78 DUPTABLE                         R11 K23 [{"pageNumber", "page", "LayoutOrder"}]
       79 GETTABLEKS                       R12 R4 K21 ["pageNumber"]
       81 SETTABLEKS                       R12 R11 K21 ["pageNumber"]
       83 GETTABLEKS                       R12 R4 K22 ["page"]
       85 SETTABLEKS                       R12 R11 K22 ["page"]
       87 MOVE                             R12 R1
       88 CALL                             R12 0 1
       89 SETTABLEKS                       R12 R11 K8 ["LayoutOrder"]
       91 CALL                             R9 2 1
       92 SETTABLEKS                       R9 R8 K10 ["Page"]
       94 CALL                             R5 3 -1
       95 RETURN                           R5 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useContext"]
        5 GETUPVAL                         R3 2
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R3 R2 K1 ["pageController"]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K2 ["createElement"]
       12 GETUPVAL                         R5 3
       13 GETTABLEKS                       R5 R5 K3 ["View"]
       15 DUPTABLE                         R6 K7 [{["tag"] = "row align-y-center size-full-0 auto-y", ["LayoutOrder"]}]
       16 GETTABLEKS                       R7 R0 K6 ["LayoutOrder"]
       18 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
       20 DUPTABLE                         R7 K10 [{"Spacer", "PageSelector"}]
       21 GETUPVAL                         R8 1
       22 GETTABLEKS                       R8 R8 K2 ["createElement"]
       24 GETUPVAL                         R9 3
       25 GETTABLEKS                       R9 R9 K3 ["View"]
       27 DUPTABLE                         R10 K12 [{["LayoutOrder"], ["tag"] = "fill"}]
       28 MOVE                             R11 R1
       29 CALL                             R11 0 1
       30 SETTABLEKS                       R11 R10 K6 ["LayoutOrder"]
       32 CALL                             R8 2 1
       33 SETTABLEKS                       R8 R7 K8 ["Spacer"]
       35 GETUPVAL                         R8 1
       36 GETTABLEKS                       R8 R8 K2 ["createElement"]
       38 GETUPVAL                         R9 4
       39 DUPTABLE                         R10 K18 [{"pageSize", "pageNumber", "maxPageNumber", "onPageNumberChanged", "onPageSizeChanged", "LayoutOrder"}]
       40 GETTABLEKS                       R11 R3 K13 ["pageSize"]
       42 SETTABLEKS                       R11 R10 K13 ["pageSize"]
       44 GETTABLEKS                       R11 R3 K14 ["pageNumber"]
       46 SETTABLEKS                       R11 R10 K14 ["pageNumber"]
       48 GETTABLEKS                       R11 R3 K15 ["maxPageNumber"]
       50 SETTABLEKS                       R11 R10 K15 ["maxPageNumber"]
       52 GETTABLEKS                       R11 R3 K19 ["setPageNumber"]
       54 SETTABLEKS                       R11 R10 K16 ["onPageNumberChanged"]
       56 GETTABLEKS                       R11 R3 K20 ["setPageSize"]
       58 SETTABLEKS                       R11 R10 K17 ["onPageSizeChanged"]
       60 MOVE                             R11 R1
       61 CALL                             R11 0 1
       62 SETTABLEKS                       R11 R10 K6 ["LayoutOrder"]
       64 CALL                             R8 2 1
       65 SETTABLEKS                       R8 R7 K9 ["PageSelector"]
       67 CALL                             R4 3 -1
       68 RETURN                           R4 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K3 [{[1] = True, ["targetPlaceId"]}]
        3 GETUPVAL                         R4 2
        4 GETTABLEKS                       R4 R4 K4 ["placeId"]
        6 SETTABLEKS                       R4 R3 K2 ["targetPlaceId"]
        8 NAMECALL                         R0 R0 K5 ["logRobloxTelemetryEvent"]
       10 CALL                             R0 3 0
       11 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K3 [{[1] = True, ["targetPlaceId"]}]
        3 GETUPVAL                         R4 2
        4 GETTABLEKS                       R4 R4 K4 ["placeId"]
        6 SETTABLEKS                       R4 R3 K2 ["targetPlaceId"]
        8 NAMECALL                         R0 R0 K5 ["logRobloxTelemetryEvent"]
       10 CALL                             R0 3 0
       11 NEWCLOSURE                       R0 P0
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U2
       15 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["useContext"]
        5 GETUPVAL                         R2 2
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K1 ["useEffect"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          VAL R1
       14 CAPTURE                          UPVAL U5
       15 NEWTABLE                         R4 0 0
       17 CALL                             R2 2 0
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R2 R2 K2 ["createElement"]
       21 GETUPVAL                         R3 6
       22 GETTABLEKS                       R3 R3 K3 ["View"]
       24 DUPTABLE                         R4 K6 [{["tag"] = "col align-x-center size-full-full"}]
       25 DUPTABLE                         R5 K11 [{"Header", "Body", "Divider", "Footer"}]
       26 GETUPVAL                         R6 1
       27 GETTABLEKS                       R6 R6 K2 ["createElement"]
       29 GETUPVAL                         R7 7
       30 DUPTABLE                         R8 K13 [{"LayoutOrder"}]
       31 MOVE                             R9 R0
       32 CALL                             R9 0 1
       33 SETTABLEKS                       R9 R8 K12 ["LayoutOrder"]
       35 CALL                             R6 2 1
       36 SETTABLEKS                       R6 R5 K7 ["Header"]
       38 GETUPVAL                         R6 1
       39 GETTABLEKS                       R6 R6 K2 ["createElement"]
       41 GETUPVAL                         R7 8
       42 DUPTABLE                         R8 K13 [{"LayoutOrder"}]
       43 MOVE                             R9 R0
       44 CALL                             R9 0 1
       45 SETTABLEKS                       R9 R8 K12 ["LayoutOrder"]
       47 CALL                             R6 2 1
       48 SETTABLEKS                       R6 R5 K8 ["Body"]
       50 GETUPVAL                         R6 1
       51 GETTABLEKS                       R6 R6 K2 ["createElement"]
       53 GETUPVAL                         R7 6
       54 GETTABLEKS                       R7 R7 K9 ["Divider"]
       56 DUPTABLE                         R8 K13 [{"LayoutOrder"}]
       57 MOVE                             R9 R0
       58 CALL                             R9 0 1
       59 SETTABLEKS                       R9 R8 K12 ["LayoutOrder"]
       61 CALL                             R6 2 1
       62 SETTABLEKS                       R6 R5 K9 ["Divider"]
       64 GETUPVAL                         R6 1
       65 GETTABLEKS                       R6 R6 K2 ["createElement"]
       67 GETUPVAL                         R7 9
       68 DUPTABLE                         R8 K13 [{"LayoutOrder"}]
       69 MOVE                             R9 R0
       70 CALL                             R9 0 1
       71 SETTABLEKS                       R9 R8 K12 ["LayoutOrder"]
       73 CALL                             R6 2 1
       74 SETTABLEKS                       R6 R5 K10 ["Footer"]
       76 CALL                             R2 3 -1
       77 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceVersionHistory"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Framework"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Packages"]
       39 GETTABLEKS                       R6 R6 K11 ["TelemetryProtocol"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R4 K12 ["ContextServices"]
       44 GETTABLEKS                       R7 R6 K13 ["Localization"]
       46 GETTABLEKS                       R8 R0 K14 ["Src"]
       48 GETTABLEKS                       R8 R8 K15 ["Contexts"]
       50 GETIMPORT                        R9 K5 [require]
       52 GETTABLEKS                       R10 R8 K16 ["ControllerContext"]
       54 CALL                             R9 1 1
       55 GETIMPORT                        R10 K5 [require]
       57 GETTABLEKS                       R11 R8 K17 ["SettingContext"]
       59 CALL                             R10 1 1
       60 GETTABLEKS                       R11 R5 K18 ["new"]
       62 CALL                             R11 0 1
       63 GETTABLEKS                       R12 R0 K14 ["Src"]
       65 GETTABLEKS                       R12 R12 K19 ["Events"]
       67 GETIMPORT                        R13 K5 [require]
       69 GETTABLEKS                       R14 R12 K20 ["OpenEvent"]
       71 CALL                             R13 1 1
       72 GETIMPORT                        R14 K5 [require]
       74 GETTABLEKS                       R15 R12 K21 ["CloseEvent"]
       76 CALL                             R14 1 1
       77 GETTABLEKS                       R15 R2 K22 ["createNextOrder"]
       79 GETTABLEKS                       R16 R0 K14 ["Src"]
       81 GETTABLEKS                       R16 R16 K23 ["Components"]
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
