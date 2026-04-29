PROTO_0:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["requestSearch"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["setSearchTerm"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["showSearchOptions"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 CALL                             R3 0 1
       10 GETUPVAL                         R5 3
       11 GETTABLEKS                       R4 R5 K1 ["createElement"]
       13 GETUPVAL                         R5 4
       14 NEWTABLE                         R6 2 0
       16 GETTABLEKS                       R7 R0 K2 ["LayoutOrder"]
       18 SETTABLEKS                       R7 R6 K2 ["LayoutOrder"]
       20 GETUPVAL                         R8 3
       21 GETTABLEKS                       R7 R8 K3 ["Tag"]
       23 LOADK                            R8 K4 ["SearchPanel X-Stroke"]
       24 SETTABLE                         R8 R6 R7
       25 DUPTABLE                         R7 K6 [{"MyView"}]
       26 GETUPVAL                         R9 3
       27 GETTABLEKS                       R8 R9 K1 ["createElement"]
       29 GETUPVAL                         R10 5
       30 GETTABLEKS                       R9 R10 K7 ["View"]
       32 DUPTABLE                         R10 K9 [{"tag"}]
       33 LOADK                            R11 K10 ["row size-full"]
       34 SETTABLEKS                       R11 R10 K8 ["tag"]
       36 NEWTABLE                         R11 0 2
       38 GETUPVAL                         R13 3
       39 GETTABLEKS                       R12 R13 K1 ["createElement"]
       41 GETUPVAL                         R14 5
       42 GETTABLEKS                       R13 R14 K7 ["View"]
       44 DUPTABLE                         R14 K9 [{"tag"}]
       45 LOADK                            R15 K11 ["TopSidebarButtonPadding"]
       46 SETTABLEKS                       R15 R14 K8 ["tag"]
       48 CALL                             R12 2 1
       49 GETUPVAL                         R14 3
       50 GETTABLEKS                       R13 R14 K1 ["createElement"]
       52 GETUPVAL                         R15 5
       53 GETTABLEKS                       R14 R15 K7 ["View"]
       55 DUPTABLE                         R15 K9 [{"tag"}]
       56 LOADK                            R16 K12 ["size-0-full fill"]
       57 SETTABLEKS                       R16 R15 K8 ["tag"]
       59 DUPTABLE                         R16 K14 [{"SearchBar"}]
       60 GETUPVAL                         R18 3
       61 GETTABLEKS                       R17 R18 K1 ["createElement"]
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
       95 GETUPVAL                         R21 3
       96 GETTABLEKS                       R20 R21 K3 ["Tag"]
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

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["setSearchTerm"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 0
        6 NAMECALL                         R0 R0 K1 ["requestSearch"]
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 2
       10 LOADB                            R1 0
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createElement"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["Text"]
        6 DUPTABLE                         R4 K5 [{"LayoutOrder", "Text", "onActivated", "tag"}]
        7 SETTABLEKS                       R1 R4 K2 ["LayoutOrder"]
        9 SETTABLEKS                       R0 R4 K1 ["Text"]
       11 NEWCLOSURE                       R5 P0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U3
       15 SETTABLEKS                       R5 R4 K3 ["onActivated"]
       17 LOADK                            R5 K6 ["size-full-0 auto-y text-align-x-left text-align-y-center text-body-small text-truncate-split radius-small padding-xsmall"]
       18 SETTABLEKS                       R5 R4 K4 ["tag"]
       20 CALL                             R2 2 -1
       21 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["Popover"]
        6 GETTABLEKS                       R2 R3 K2 ["Root"]
        8 DUPTABLE                         R3 K4 [{"isOpen"}]
        9 GETUPVAL                         R4 2
       10 SETTABLEKS                       R4 R3 K3 ["isOpen"]
       12 DUPTABLE                         R4 K7 [{"Anchor", "Content"}]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R5 R6 K0 ["createElement"]
       16 GETUPVAL                         R8 1
       17 GETTABLEKS                       R7 R8 K1 ["Popover"]
       19 GETTABLEKS                       R6 R7 K5 ["Anchor"]
       21 DUPTABLE                         R7 K9 [{"anchorRef"}]
       22 GETUPVAL                         R8 3
       23 SETTABLEKS                       R8 R7 K8 ["anchorRef"]
       25 CALL                             R5 2 1
       26 SETTABLEKS                       R5 R4 K5 ["Anchor"]
       28 GETUPVAL                         R6 0
       29 GETTABLEKS                       R5 R6 K0 ["createElement"]
       31 GETUPVAL                         R8 1
       32 GETTABLEKS                       R7 R8 K1 ["Popover"]
       34 GETTABLEKS                       R6 R7 K6 ["Content"]
       36 DUPTABLE                         R7 K14 [{"align", "side", "hasArrow", "onPressedOutside"}]
       37 GETUPVAL                         R11 1
       38 GETTABLEKS                       R10 R11 K15 ["Enums"]
       40 GETTABLEKS                       R9 R10 K16 ["PopoverAlign"]
       42 GETTABLEKS                       R8 R9 K17 ["Center"]
       44 SETTABLEKS                       R8 R7 K10 ["align"]
       46 GETUPVAL                         R11 1
       47 GETTABLEKS                       R10 R11 K15 ["Enums"]
       49 GETTABLEKS                       R9 R10 K18 ["PopoverSide"]
       51 GETTABLEKS                       R8 R9 K19 ["Bottom"]
       53 SETTABLEKS                       R8 R7 K11 ["side"]
       55 LOADB                            R8 0
       56 SETTABLEKS                       R8 R7 K12 ["hasArrow"]
       58 NEWCLOSURE                       R8 P0
       59 CAPTURE                          UPVAL U4
       60 SETTABLEKS                       R8 R7 K13 ["onPressedOutside"]
       62 GETUPVAL                         R9 0
       63 GETTABLEKS                       R8 R9 K0 ["createElement"]
       65 GETUPVAL                         R10 1
       66 GETTABLEKS                       R9 R10 K20 ["View"]
       68 DUPTABLE                         R10 K23 [{"tag", "Size"}]
       69 LOADK                            R11 K24 ["col gap-small padding-small stroke-default radius-medium"]
       70 SETTABLEKS                       R11 R10 K21 ["tag"]
       72 GETUPVAL                         R12 5
       73 JUMPIFEQKNIL                     R12 ; [+13]
       75 GETIMPORT                        R11 K27 [UDim2.new]
       77 LOADN                            R12 0
       78 GETUPVAL                         R15 5
       79 GETTABLEKS                       R14 R15 K28 ["AbsoluteSize"]
       81 GETTABLEKS                       R13 R14 K29 ["X"]
       83 LOADN                            R14 1
       84 LOADN                            R15 0
       85 CALL                             R11 4 1
       86 JUMP                             ; [+1]
       87 LOADNIL                          R11
       88 SETTABLEKS                       R11 R10 K22 ["Size"]
       90 GETUPVAL                         R12 6
       91 GETTABLEKS                       R11 R12 K30 ["map"]
       93 GETUPVAL                         R12 7
       94 NEWCLOSURE                       R13 P1
       95 CAPTURE                          UPVAL U0
       96 CAPTURE                          UPVAL U1
       97 CAPTURE                          UPVAL U8
       98 CAPTURE                          UPVAL U4
       99 CALL                             R11 2 -1
      100 CALL                             R8 -1 -1
      101 CALL                             R5 -1 1
      102 SETTABLEKS                       R5 R4 K6 ["Content"]
      104 CALL                             R1 3 -1
      105 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["requestSearch"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["setSearchTerm"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["showSearchOptions"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 CALL                             R3 0 1
       10 GETUPVAL                         R4 3
       11 CALL                             R4 0 1
       12 GETUPVAL                         R6 4
       13 GETTABLEKS                       R5 R6 K1 ["useState"]
       15 LOADB                            R6 0
       16 CALL                             R5 1 2
       17 GETUPVAL                         R8 4
       18 GETTABLEKS                       R7 R8 K2 ["useRef"]
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
       33 CAPTURE                          VAL R2
       34 GETUPVAL                         R11 4
       35 GETTABLEKS                       R10 R11 K4 ["createElement"]
       37 GETUPVAL                         R12 5
       38 GETTABLEKS                       R11 R12 K5 ["View"]
       40 DUPTABLE                         R12 K9 [{"LayoutOrder", "Size", "tag"}]
       41 GETTABLEKS                       R13 R0 K6 ["LayoutOrder"]
       43 SETTABLEKS                       R13 R12 K6 ["LayoutOrder"]
       45 GETIMPORT                        R13 K12 [UDim2.new]
       47 LOADN                            R14 1
       48 GETUPVAL                         R16 7
       49 GETTABLEKS                       R15 R16 K13 ["PaddingSmall"]
       51 LOADN                            R16 0
       52 GETUPVAL                         R18 7
       53 GETTABLEKS                       R17 R18 K14 ["TopBarHeight"]
       55 CALL                             R13 4 1
       56 SETTABLEKS                       R13 R12 K7 ["Size"]
       58 LOADK                            R13 K15 ["row padding-small"]
       59 SETTABLEKS                       R13 R12 K8 ["tag"]
       61 NEWTABLE                         R13 0 2
       63 GETUPVAL                         R15 4
       64 GETTABLEKS                       R14 R15 K4 ["createElement"]
       66 GETUPVAL                         R16 5
       67 GETTABLEKS                       R15 R16 K5 ["View"]
       69 DUPTABLE                         R16 K16 [{"LayoutOrder", "tag"}]
       70 LOADN                            R17 1
       71 SETTABLEKS                       R17 R16 K6 ["LayoutOrder"]
       73 LOADK                            R17 K17 ["TopSidebarButtonPadding"]
       74 SETTABLEKS                       R17 R16 K8 ["tag"]
       76 CALL                             R14 2 1
       77 GETUPVAL                         R16 4
       78 GETTABLEKS                       R15 R16 K4 ["createElement"]
       80 GETUPVAL                         R17 5
       81 GETTABLEKS                       R16 R17 K5 ["View"]
       83 DUPTABLE                         R17 K16 [{"LayoutOrder", "tag"}]
       84 LOADN                            R18 2
       85 SETTABLEKS                       R18 R17 K6 ["LayoutOrder"]
       87 LOADK                            R18 K18 ["fill auto-y"]
       88 SETTABLEKS                       R18 R17 K8 ["tag"]
       90 DUPTABLE                         R18 K21 [{"SearchInput", "History"}]
       91 GETUPVAL                         R20 4
       92 GETTABLEKS                       R19 R20 K4 ["createElement"]
       94 GETUPVAL                         R21 5
       95 GETTABLEKS                       R20 R21 K22 ["TextInput"]
       97 DUPTABLE                         R21 K34 [{"label", "leadingIcon", "placeholder", "text", "size", "width", "variant", "onReturnPressed", "onChanged", "onFocusGained", "ref"}]
       98 LOADK                            R22 K35 [""]
       99 SETTABLEKS                       R22 R21 K23 ["label"]
      101 GETUPVAL                         R25 5
      102 GETTABLEKS                       R24 R25 K36 ["Enums"]
      104 GETTABLEKS                       R23 R24 K37 ["IconName"]
      106 GETTABLEKS                       R22 R23 K38 ["MagnifyingGlass"]
      108 SETTABLEKS                       R22 R21 K24 ["leadingIcon"]
      110 LOADK                            R24 K39 ["Search"]
      111 LOADK                            R25 K40 ["Placeholder"]
      112 NAMECALL                         R22 R1 K41 ["getText"]
      114 CALL                             R22 3 1
      115 SETTABLEKS                       R22 R21 K25 ["placeholder"]
      117 GETTABLEKS                       R22 R3 K42 ["SearchTerm"]
      119 SETTABLEKS                       R22 R21 K26 ["text"]
      121 GETUPVAL                         R25 5
      122 GETTABLEKS                       R24 R25 K36 ["Enums"]
      124 GETTABLEKS                       R23 R24 K43 ["InputSize"]
      126 GETTABLEKS                       R22 R23 K44 ["XSmall"]
      128 SETTABLEKS                       R22 R21 K27 ["size"]
      130 GETIMPORT                        R22 K46 [UDim.new]
      132 LOADN                            R23 1
      133 LOADN                            R24 0
      134 CALL                             R22 2 1
      135 SETTABLEKS                       R22 R21 K28 ["width"]
      137 GETUPVAL                         R25 5
      138 GETTABLEKS                       R24 R25 K36 ["Enums"]
      140 GETTABLEKS                       R23 R24 K47 ["InputVariant"]
      142 GETTABLEKS                       R22 R23 K48 ["Standard"]
      144 SETTABLEKS                       R22 R21 K29 ["variant"]
      146 NEWCLOSURE                       R22 P1
      147 CAPTURE                          VAL R2
      148 CAPTURE                          VAL R6
      149 SETTABLEKS                       R22 R21 K30 ["onReturnPressed"]
      151 NEWCLOSURE                       R22 P2
      152 CAPTURE                          VAL R2
      153 SETTABLEKS                       R22 R21 K31 ["onChanged"]
      155 NEWCLOSURE                       R22 P3
      156 CAPTURE                          VAL R2
      157 CAPTURE                          VAL R6
      158 SETTABLEKS                       R22 R21 K32 ["onFocusGained"]
      160 SETTABLEKS                       R7 R21 K33 ["ref"]
      162 CALL                             R19 2 1
      163 SETTABLEKS                       R19 R18 K19 ["SearchInput"]
      165 LENGTH                           R20 R4
      166 LOADN                            R21 0
      167 JUMPIFNOTLT                      R21 R20 ; [+7]
      169 GETUPVAL                         R20 4
      170 GETTABLEKS                       R19 R20 K4 ["createElement"]
      172 MOVE                             R20 R9
      173 CALL                             R19 1 1
      174 JUMP                             ; [+1]
      175 LOADNIL                          R19
      176 SETTABLEKS                       R19 R18 K20 ["History"]
      178 CALL                             R15 3 -1
      179 SETLIST                          R13 R14 -1 [1]
      181 CALL                             R10 3 -1
      182 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Dash"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R6 K10 ["Foundation"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R3 K11 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K12 ["Localization"]
       39 GETIMPORT                        R7 K5 [require]
       41 GETTABLEKS                       R10 R0 K13 ["Src"]
       43 GETTABLEKS                       R9 R10 K14 ["Controllers"]
       45 GETTABLEKS                       R8 R9 K15 ["SearchController"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K5 [require]
       50 GETTABLEKS                       R11 R0 K13 ["Src"]
       52 GETTABLEKS                       R10 R11 K16 ["Hooks"]
       54 GETTABLEKS                       R9 R10 K17 ["useSearchInfo"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K5 [require]
       59 GETTABLEKS                       R12 R0 K13 ["Src"]
       61 GETTABLEKS                       R11 R12 K16 ["Hooks"]
       63 GETTABLEKS                       R10 R11 K18 ["useSearchHistory"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETTABLEKS                       R13 R0 K13 ["Src"]
       70 GETTABLEKS                       R12 R13 K19 ["Resources"]
       72 GETTABLEKS                       R11 R12 K20 ["StyleConstants"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R14 R0 K13 ["Src"]
       79 GETTABLEKS                       R13 R14 K21 ["Flags"]
       81 GETTABLEKS                       R12 R13 K22 ["getFFlagAmrSearchHistoryFoundation"]
       83 CALL                             R11 1 1
       84 GETTABLEKS                       R12 R3 K23 ["UI"]
       86 GETTABLEKS                       R13 R12 K24 ["Pane"]
       88 GETTABLEKS                       R14 R12 K25 ["SearchBar"]
       90 DUPCLOSURE                       R15 K26 [PROTO_3]
       91 CAPTURE                          VAL R6
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R8
       94 CAPTURE                          VAL R1
       95 CAPTURE                          VAL R13
       96 CAPTURE                          VAL R4
       97 CAPTURE                          VAL R14
       98 DUPCLOSURE                       R16 K27 [PROTO_11]
       99 CAPTURE                          VAL R6
      100 CAPTURE                          VAL R7
      101 CAPTURE                          VAL R8
      102 CAPTURE                          VAL R9
      103 CAPTURE                          VAL R1
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R2
      106 CAPTURE                          VAL R10
      107 MOVE                             R18 R11
      108 CALL                             R18 0 1
      109 JUMPIFNOT                        R18 ; [+2]
      110 MOVE                             R17 R16
      111 RETURN                           R17 1
      112 MOVE                             R17 R15
      113 RETURN                           R17 1
