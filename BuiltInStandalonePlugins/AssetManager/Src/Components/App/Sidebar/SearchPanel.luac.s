PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["View"]
        6 DUPTABLE                         R3 K5 [{"LayoutOrder", "tag", "onActivated"}]
        7 GETTABLEKS                       R4 R0 K2 ["LayoutOrder"]
        9 SETTABLEKS                       R4 R3 K2 ["LayoutOrder"]
       11 LOADK                            R4 K6 ["row size-full-0 auto-y radius-small padding-xsmall align-y-center"]
       12 SETTABLEKS                       R4 R3 K3 ["tag"]
       14 GETTABLEKS                       R4 R0 K4 ["onActivated"]
       16 SETTABLEKS                       R4 R3 K4 ["onActivated"]
       18 DUPTABLE                         R4 K9 [{"SearchText", "AssetTypeText"}]
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R5 R5 K0 ["createElement"]
       22 GETUPVAL                         R6 1
       23 GETTABLEKS                       R6 R6 K10 ["Text"]
       25 DUPTABLE                         R7 K11 [{"LayoutOrder", "Text", "tag"}]
       26 LOADN                            R8 1
       27 SETTABLEKS                       R8 R7 K2 ["LayoutOrder"]
       29 GETTABLEKS                       R8 R0 K12 ["SearchTerm"]
       31 SETTABLEKS                       R8 R7 K10 ["Text"]
       33 LOADK                            R8 K13 ["fill auto-y text-align-x-left text-body-small text-truncate-split"]
       34 SETTABLEKS                       R8 R7 K3 ["tag"]
       36 CALL                             R5 2 1
       37 SETTABLEKS                       R5 R4 K7 ["SearchText"]
       39 GETUPVAL                         R5 0
       40 GETTABLEKS                       R5 R5 K0 ["createElement"]
       42 GETUPVAL                         R6 1
       43 GETTABLEKS                       R6 R6 K10 ["Text"]
       45 DUPTABLE                         R7 K11 [{"LayoutOrder", "Text", "tag"}]
       46 LOADN                            R8 2
       47 SETTABLEKS                       R8 R7 K2 ["LayoutOrder"]
       49 GETTABLEKS                       R8 R0 K14 ["AssetType"]
       51 SETTABLEKS                       R8 R7 K10 ["Text"]
       53 LOADK                            R8 K15 ["auto-xy text-align-x-left text-caption-small content-muted"]
       54 SETTABLEKS                       R8 R7 K3 ["tag"]
       56 CALL                             R5 2 1
       57 SETTABLEKS                       R5 R4 K8 ["AssetTypeText"]
       59 CALL                             R1 3 -1
       60 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["requestSearch"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["setSearchTerm"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["showSearchOptions"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 CALL                             R3 0 1
       10 GETUPVAL                         R4 3
       11 GETTABLEKS                       R4 R4 K1 ["createElement"]
       13 GETUPVAL                         R5 4
       14 NEWTABLE                         R6 2 0
       16 GETTABLEKS                       R7 R0 K2 ["LayoutOrder"]
       18 SETTABLEKS                       R7 R6 K2 ["LayoutOrder"]
       20 GETUPVAL                         R7 3
       21 GETTABLEKS                       R7 R7 K3 ["Tag"]
       23 LOADK                            R8 K4 ["SearchPanel X-Stroke"]
       24 SETTABLE                         R8 R6 R7
       25 DUPTABLE                         R7 K6 [{"MyView"}]
       26 GETUPVAL                         R8 3
       27 GETTABLEKS                       R8 R8 K1 ["createElement"]
       29 GETUPVAL                         R9 5
       30 GETTABLEKS                       R9 R9 K7 ["View"]
       32 DUPTABLE                         R10 K9 [{"tag"}]
       33 LOADK                            R11 K10 ["row size-full"]
       34 SETTABLEKS                       R11 R10 K8 ["tag"]
       36 NEWTABLE                         R11 0 2
       38 GETUPVAL                         R12 3
       39 GETTABLEKS                       R12 R12 K1 ["createElement"]
       41 GETUPVAL                         R13 5
       42 GETTABLEKS                       R13 R13 K7 ["View"]
       44 DUPTABLE                         R14 K9 [{"tag"}]
       45 LOADK                            R15 K11 ["TopSidebarButtonPadding"]
       46 SETTABLEKS                       R15 R14 K8 ["tag"]
       48 CALL                             R12 2 1
       49 GETUPVAL                         R13 3
       50 GETTABLEKS                       R13 R13 K1 ["createElement"]
       52 GETUPVAL                         R14 5
       53 GETTABLEKS                       R14 R14 K7 ["View"]
       55 DUPTABLE                         R15 K9 [{"tag"}]
       56 LOADK                            R16 K12 ["size-0-full fill"]
       57 SETTABLEKS                       R16 R15 K8 ["tag"]
       59 DUPTABLE                         R16 K14 [{"SearchBar"}]
       60 GETUPVAL                         R17 3
       61 GETTABLEKS                       R17 R17 K1 ["createElement"]
       63 GETUPVAL                         R18 6
       64 NEWTABLE                         R19 8 0
       66 LOADK                            R22 K15 ["Search"]
       67 LOADK                            R23 K16 ["Placeholder"]
       68 NAMECALL                         R20 R1 K17 ["getText"]
       70 CALL                             R20 3 1
       71 SETTABLEKS                       R20 R19 K18 ["PlaceholderText"]
       73 GETTABLEKS                       R20 R3 K19 ["SearchTerm"]
       75 SETTABLEKS                       R20 R19 K19 ["SearchTerm"]
       77 NEWCLOSURE                       R20 P0
       78 CAPTURE                          VAL R2
       79 SETTABLEKS                       R20 R19 K20 ["OnSearchRequested"]
       81 NEWCLOSURE                       R20 P1
       82 CAPTURE                          VAL R2
       83 SETTABLEKS                       R20 R19 K21 ["OnTextChanged"]
       85 NEWCLOSURE                       R20 P2
       86 CAPTURE                          VAL R2
       87 SETTABLEKS                       R20 R19 K22 ["OnTextBoxFocusGained"]
       89 LOADB                            R20 1
       90 SETTABLEKS                       R20 R19 K23 ["ShowSearchIcon"]
       92 LOADB                            R20 0
       93 SETTABLEKS                       R20 R19 K24 ["ShowSearchButton"]
       95 GETUPVAL                         R20 3
       96 GETTABLEKS                       R20 R20 K3 ["Tag"]
       98 LOADK                            R21 K25 ["X-AnchorCenter X-Pad"]
       99 SETTABLE                         R21 R19 R20
      100 CALL                             R17 2 1
      101 SETTABLEKS                       R17 R16 K13 ["SearchBar"]
      103 CALL                             R13 3 -1
      104 SETLIST                          R11 R12 -1 [1]
      106 CALL                             R8 3 1
      107 SETTABLEKS                       R8 R7 K5 ["MyView"]
      109 CALL                             R4 3 -1
      110 RETURN                           R4 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["SearchTerm"]
        4 NAMECALL                         R0 R0 K1 ["setSearchTerm"]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 0
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K2 ["SearchOptions"]
       11 NAMECALL                         R0 R0 K3 ["setSearchOptions"]
       13 CALL                             R0 2 0
       14 GETUPVAL                         R0 2
       15 LOADB                            R1 0
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K5 [{"LayoutOrder", "SearchTerm", "AssetType", "onActivated"}]
        5 SETTABLEKS                       R1 R4 K1 ["LayoutOrder"]
        7 GETTABLEKS                       R5 R0 K2 ["SearchTerm"]
        9 SETTABLEKS                       R5 R4 K2 ["SearchTerm"]
       11 GETUPVAL                         R5 2
       12 LOADK                            R7 K3 ["AssetType"]
       13 GETTABLEKS                       R8 R0 K6 ["SearchOptions"]
       15 GETTABLEKS                       R8 R8 K3 ["AssetType"]
       17 NAMECALL                         R5 R5 K7 ["getText"]
       19 CALL                             R5 3 1
       20 SETTABLEKS                       R5 R4 K3 ["AssetType"]
       22 NEWCLOSURE                       R5 P0
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          VAL R0
       25 CAPTURE                          UPVAL U4
       26 SETTABLEKS                       R5 R4 K4 ["onActivated"]
       28 CALL                             R2 2 -1
       29 RETURN                           R2 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Popover"]
        6 GETTABLEKS                       R2 R2 K2 ["Root"]
        8 DUPTABLE                         R3 K4 [{"isOpen"}]
        9 GETUPVAL                         R4 2
       10 SETTABLEKS                       R4 R3 K3 ["isOpen"]
       12 DUPTABLE                         R4 K7 [{"Anchor", "Content"}]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K0 ["createElement"]
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R6 R6 K1 ["Popover"]
       19 GETTABLEKS                       R6 R6 K5 ["Anchor"]
       21 DUPTABLE                         R7 K9 [{"anchorRef"}]
       22 GETUPVAL                         R8 3
       23 SETTABLEKS                       R8 R7 K8 ["anchorRef"]
       25 CALL                             R5 2 1
       26 SETTABLEKS                       R5 R4 K5 ["Anchor"]
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R5 R5 K0 ["createElement"]
       31 GETUPVAL                         R6 1
       32 GETTABLEKS                       R6 R6 K1 ["Popover"]
       34 GETTABLEKS                       R6 R6 K6 ["Content"]
       36 DUPTABLE                         R7 K14 [{"align", "side", "hasArrow", "onPressedOutside"}]
       37 GETUPVAL                         R8 1
       38 GETTABLEKS                       R8 R8 K15 ["Enums"]
       40 GETTABLEKS                       R8 R8 K16 ["PopoverAlign"]
       42 GETTABLEKS                       R8 R8 K17 ["Center"]
       44 SETTABLEKS                       R8 R7 K10 ["align"]
       46 GETUPVAL                         R8 1
       47 GETTABLEKS                       R8 R8 K15 ["Enums"]
       49 GETTABLEKS                       R8 R8 K18 ["PopoverSide"]
       51 GETTABLEKS                       R8 R8 K19 ["Bottom"]
       53 SETTABLEKS                       R8 R7 K11 ["side"]
       55 LOADB                            R8 0
       56 SETTABLEKS                       R8 R7 K12 ["hasArrow"]
       58 NEWCLOSURE                       R8 P0
       59 CAPTURE                          UPVAL U4
       60 SETTABLEKS                       R8 R7 K13 ["onPressedOutside"]
       62 GETUPVAL                         R8 0
       63 GETTABLEKS                       R8 R8 K0 ["createElement"]
       65 GETUPVAL                         R9 1
       66 GETTABLEKS                       R9 R9 K20 ["View"]
       68 DUPTABLE                         R10 K23 [{"tag", "Size"}]
       69 LOADK                            R11 K24 ["col gap-small padding-small stroke-default radius-medium"]
       70 SETTABLEKS                       R11 R10 K21 ["tag"]
       72 GETUPVAL                         R12 5
       73 JUMPIFEQKNIL                     R12 ; [+13]
       75 GETIMPORT                        R11 K27 [UDim2.new]
       77 LOADN                            R12 0
       78 GETUPVAL                         R13 5
       79 GETTABLEKS                       R13 R13 K28 ["AbsoluteSize"]
       81 GETTABLEKS                       R13 R13 K29 ["X"]
       83 LOADN                            R14 1
       84 LOADN                            R15 0
       85 CALL                             R11 4 1
       86 JUMP                             ; [+1]
       87 LOADNIL                          R11
       88 SETTABLEKS                       R11 R10 K22 ["Size"]
       90 GETUPVAL                         R11 6
       91 GETTABLEKS                       R11 R11 K30 ["map"]
       93 GETUPVAL                         R12 7
       94 NEWCLOSURE                       R13 P1
       95 CAPTURE                          UPVAL U0
       96 CAPTURE                          UPVAL U8
       97 CAPTURE                          UPVAL U9
       98 CAPTURE                          UPVAL U10
       99 CAPTURE                          UPVAL U4
      100 CALL                             R11 2 -1
      101 CALL                             R8 -1 -1
      102 CALL                             R5 -1 1
      103 SETTABLEKS                       R5 R4 K6 ["Content"]
      105 CALL                             R1 3 -1
      106 RETURN                           R1 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["requestSearch"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["setSearchTerm"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["showSearchOptions"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 CALL                             R3 0 1
       10 GETUPVAL                         R4 3
       11 CALL                             R4 0 1
       12 GETUPVAL                         R5 4
       13 GETTABLEKS                       R5 R5 K1 ["useState"]
       15 LOADB                            R6 0
       16 CALL                             R5 1 2
       17 GETUPVAL                         R7 4
       18 GETTABLEKS                       R7 R7 K2 ["useRef"]
       20 LOADNIL                          R8
       21 CALL                             R7 1 1
       22 GETTABLEKS                       R8 R7 K3 ["current"]
       24 NEWCLOSURE                       R9 P0
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          UPVAL U5
       27 CAPTURE                          VAL R5
       28 CAPTURE                          VAL R7
       29 CAPTURE                          VAL R6
       30 CAPTURE                          VAL R8
       31 CAPTURE                          UPVAL U6
       32 CAPTURE                          VAL R4
       33 CAPTURE                          UPVAL U7
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R2
       36 GETUPVAL                         R10 4
       37 GETTABLEKS                       R10 R10 K4 ["createElement"]
       39 GETUPVAL                         R11 5
       40 GETTABLEKS                       R11 R11 K5 ["View"]
       42 DUPTABLE                         R12 K9 [{"LayoutOrder", "Size", "tag"}]
       43 GETTABLEKS                       R13 R0 K6 ["LayoutOrder"]
       45 SETTABLEKS                       R13 R12 K6 ["LayoutOrder"]
       47 GETIMPORT                        R13 K12 [UDim2.new]
       49 LOADN                            R14 1
       50 GETUPVAL                         R15 8
       51 GETTABLEKS                       R15 R15 K13 ["PaddingSmall"]
       53 LOADN                            R16 0
       54 GETUPVAL                         R17 8
       55 GETTABLEKS                       R17 R17 K14 ["TopBarHeight"]
       57 CALL                             R13 4 1
       58 SETTABLEKS                       R13 R12 K7 ["Size"]
       60 LOADK                            R13 K15 ["row padding-small"]
       61 SETTABLEKS                       R13 R12 K8 ["tag"]
       63 NEWTABLE                         R13 0 2
       65 GETUPVAL                         R14 4
       66 GETTABLEKS                       R14 R14 K4 ["createElement"]
       68 GETUPVAL                         R15 5
       69 GETTABLEKS                       R15 R15 K5 ["View"]
       71 DUPTABLE                         R16 K16 [{"LayoutOrder", "tag"}]
       72 LOADN                            R17 1
       73 SETTABLEKS                       R17 R16 K6 ["LayoutOrder"]
       75 LOADK                            R17 K17 ["TopSidebarButtonPadding"]
       76 SETTABLEKS                       R17 R16 K8 ["tag"]
       78 CALL                             R14 2 1
       79 GETUPVAL                         R15 4
       80 GETTABLEKS                       R15 R15 K4 ["createElement"]
       82 GETUPVAL                         R16 5
       83 GETTABLEKS                       R16 R16 K5 ["View"]
       85 DUPTABLE                         R17 K16 [{"LayoutOrder", "tag"}]
       86 LOADN                            R18 2
       87 SETTABLEKS                       R18 R17 K6 ["LayoutOrder"]
       89 LOADK                            R18 K18 ["fill auto-y"]
       90 SETTABLEKS                       R18 R17 K8 ["tag"]
       92 DUPTABLE                         R18 K21 [{"SearchInput", "History"}]
       93 GETUPVAL                         R19 4
       94 GETTABLEKS                       R19 R19 K4 ["createElement"]
       96 GETUPVAL                         R20 5
       97 GETTABLEKS                       R20 R20 K22 ["TextInput"]
       99 DUPTABLE                         R21 K34 [{"label", "leadingIcon", "placeholder", "text", "size", "width", "variant", "onReturnPressed", "onChanged", "onFocusGained", "ref"}]
      100 LOADK                            R22 K35 [""]
      101 SETTABLEKS                       R22 R21 K23 ["label"]
      103 GETUPVAL                         R22 5
      104 GETTABLEKS                       R22 R22 K36 ["Enums"]
      106 GETTABLEKS                       R22 R22 K37 ["IconName"]
      108 GETTABLEKS                       R22 R22 K38 ["MagnifyingGlass"]
      110 SETTABLEKS                       R22 R21 K24 ["leadingIcon"]
      112 LOADK                            R24 K39 ["Search"]
      113 LOADK                            R25 K40 ["Placeholder"]
      114 NAMECALL                         R22 R1 K41 ["getText"]
      116 CALL                             R22 3 1
      117 SETTABLEKS                       R22 R21 K25 ["placeholder"]
      119 GETTABLEKS                       R22 R3 K42 ["SearchTerm"]
      121 SETTABLEKS                       R22 R21 K26 ["text"]
      123 GETUPVAL                         R22 5
      124 GETTABLEKS                       R22 R22 K36 ["Enums"]
      126 GETTABLEKS                       R22 R22 K43 ["InputSize"]
      128 GETTABLEKS                       R22 R22 K44 ["XSmall"]
      130 SETTABLEKS                       R22 R21 K27 ["size"]
      132 GETIMPORT                        R22 K46 [UDim.new]
      134 LOADN                            R23 1
      135 LOADN                            R24 0
      136 CALL                             R22 2 1
      137 SETTABLEKS                       R22 R21 K28 ["width"]
      139 GETUPVAL                         R22 5
      140 GETTABLEKS                       R22 R22 K36 ["Enums"]
      142 GETTABLEKS                       R22 R22 K47 ["InputVariant"]
      144 GETTABLEKS                       R22 R22 K48 ["Standard"]
      146 SETTABLEKS                       R22 R21 K29 ["variant"]
      148 NEWCLOSURE                       R22 P1
      149 CAPTURE                          VAL R2
      150 CAPTURE                          VAL R6
      151 SETTABLEKS                       R22 R21 K30 ["onReturnPressed"]
      153 NEWCLOSURE                       R22 P2
      154 CAPTURE                          VAL R2
      155 SETTABLEKS                       R22 R21 K31 ["onChanged"]
      157 NEWCLOSURE                       R22 P3
      158 CAPTURE                          VAL R2
      159 CAPTURE                          VAL R6
      160 SETTABLEKS                       R22 R21 K32 ["onFocusGained"]
      162 SETTABLEKS                       R7 R21 K33 ["ref"]
      164 CALL                             R19 2 1
      165 SETTABLEKS                       R19 R18 K19 ["SearchInput"]
      167 LENGTH                           R20 R4
      168 LOADN                            R21 0
      169 JUMPIFNOTLT                      R21 R20 ; [+7]
      171 GETUPVAL                         R19 4
      172 GETTABLEKS                       R19 R19 K4 ["createElement"]
      174 MOVE                             R20 R9
      175 CALL                             R19 1 1
      176 JUMP                             ; [+1]
      177 LOADNIL                          R19
      178 SETTABLEKS                       R19 R18 K20 ["History"]
      180 CALL                             R15 3 -1
      181 SETLIST                          R13 R14 -1 [1]
      183 CALL                             R10 3 -1
      184 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Dash"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Foundation"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R3 K11 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K12 ["Localization"]
       39 GETIMPORT                        R7 K5 [require]
       41 GETTABLEKS                       R8 R0 K13 ["Src"]
       43 GETTABLEKS                       R8 R8 K14 ["Controllers"]
       45 GETTABLEKS                       R8 R8 K15 ["SearchController"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K5 [require]
       50 GETTABLEKS                       R9 R0 K13 ["Src"]
       52 GETTABLEKS                       R9 R9 K16 ["Hooks"]
       54 GETTABLEKS                       R9 R9 K17 ["useSearchInfo"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K5 [require]
       59 GETTABLEKS                       R10 R0 K13 ["Src"]
       61 GETTABLEKS                       R10 R10 K16 ["Hooks"]
       63 GETTABLEKS                       R10 R10 K18 ["useSearchHistory"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETTABLEKS                       R11 R0 K13 ["Src"]
       70 GETTABLEKS                       R11 R11 K19 ["Resources"]
       72 GETTABLEKS                       R11 R11 K20 ["StyleConstants"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R12 R0 K13 ["Src"]
       79 GETTABLEKS                       R12 R12 K21 ["Flags"]
       81 GETTABLEKS                       R12 R12 K22 ["getFFlagAmrSearchHistoryFoundation"]
       83 CALL                             R11 1 1
       84 GETTABLEKS                       R12 R3 K23 ["UI"]
       86 GETTABLEKS                       R13 R12 K24 ["Pane"]
       88 GETTABLEKS                       R14 R12 K25 ["SearchBar"]
       90 DUPCLOSURE                       R15 K26 [PROTO_0]
       91 CAPTURE                          VAL R1
       92 CAPTURE                          VAL R4
       93 DUPCLOSURE                       R16 K27 [PROTO_4]
       94 CAPTURE                          VAL R6
       95 CAPTURE                          VAL R7
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R13
       99 CAPTURE                          VAL R4
      100 CAPTURE                          VAL R14
      101 DUPCLOSURE                       R17 K28 [PROTO_12]
      102 CAPTURE                          VAL R6
      103 CAPTURE                          VAL R7
      104 CAPTURE                          VAL R8
      105 CAPTURE                          VAL R9
      106 CAPTURE                          VAL R1
      107 CAPTURE                          VAL R4
      108 CAPTURE                          VAL R2
      109 CAPTURE                          VAL R15
      110 CAPTURE                          VAL R10
      111 MOVE                             R19 R11
      112 CALL                             R19 0 1
      113 JUMPIFNOT                        R19 ; [+2]
      114 MOVE                             R18 R17
      115 RETURN                           R18 1
      116 MOVE                             R18 R16
      117 RETURN                           R18 1
