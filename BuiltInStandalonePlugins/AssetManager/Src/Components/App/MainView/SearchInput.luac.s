PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["View"]
        6 DUPTABLE                         R3 K6 [{["LayoutOrder"], ["tag"] = "row align-y-center size-full-0 auto-y padding-xsmall radius-small", ["onActivated"]}]
        7 GETTABLEKS                       R4 R0 K2 ["LayoutOrder"]
        9 SETTABLEKS                       R4 R3 K2 ["LayoutOrder"]
       11 GETTABLEKS                       R4 R0 K5 ["onActivated"]
       13 SETTABLEKS                       R4 R3 K5 ["onActivated"]
       15 DUPTABLE                         R4 K9 [{"SearchText", "AssetTypeText"}]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K0 ["createElement"]
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R6 R6 K10 ["Text"]
       22 DUPTABLE                         R7 K13 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "fill auto-y text-body-small text-align-x-left text-truncate-split"}]
       23 GETTABLEKS                       R8 R0 K14 ["SearchTerm"]
       25 SETTABLEKS                       R8 R7 K10 ["Text"]
       27 CALL                             R5 2 1
       28 SETTABLEKS                       R5 R4 K7 ["SearchText"]
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R5 R5 K0 ["createElement"]
       33 GETUPVAL                         R6 1
       34 GETTABLEKS                       R6 R6 K10 ["Text"]
       36 DUPTABLE                         R7 K17 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "auto-xy text-caption-small text-align-x-left content-muted"}]
       37 GETTABLEKS                       R8 R0 K18 ["AssetType"]
       39 SETTABLEKS                       R8 R7 K10 ["Text"]
       41 CALL                             R5 2 1
       42 SETTABLEKS                       R5 R4 K8 ["AssetTypeText"]
       44 CALL                             R1 3 -1
       45 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnSearchRequested"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 NAMECALL                         R0 R0 K1 ["Connect"]
        7 CALL                             R0 2 1
        8 NEWCLOSURE                       R1 P1
        9 CAPTURE                          VAL R0
       10 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
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
       14 RETURN                           R0 0

PROTO_6:
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
       25 SETTABLEKS                       R5 R4 K4 ["onActivated"]
       27 CALL                             R2 2 -1
       28 RETURN                           R2 -1

PROTO_7:
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
       36 DUPTABLE                         R7 K15 [{["align"], ["side"], ["hasArrow"] = False, ["onPressedOutside"]}]
       37 GETUPVAL                         R8 1
       38 GETTABLEKS                       R8 R8 K16 ["Enums"]
       40 GETTABLEKS                       R8 R8 K17 ["PopoverAlign"]
       42 GETTABLEKS                       R8 R8 K18 ["Center"]
       44 SETTABLEKS                       R8 R7 K10 ["align"]
       46 GETUPVAL                         R8 1
       47 GETTABLEKS                       R8 R8 K16 ["Enums"]
       49 GETTABLEKS                       R8 R8 K19 ["PopoverSide"]
       51 GETTABLEKS                       R8 R8 K20 ["Bottom"]
       53 SETTABLEKS                       R8 R7 K11 ["side"]
       55 NEWCLOSURE                       R8 P0
       56 CAPTURE                          UPVAL U4
       57 SETTABLEKS                       R8 R7 K14 ["onPressedOutside"]
       59 GETUPVAL                         R8 0
       60 GETTABLEKS                       R8 R8 K0 ["createElement"]
       62 GETUPVAL                         R9 1
       63 GETTABLEKS                       R9 R9 K21 ["View"]
       65 DUPTABLE                         R10 K25 [{["tag"] = "col gap-small padding-small stroke-default radius-medium", ["Size"]}]
       66 GETUPVAL                         R12 5
       67 JUMPIFEQKNIL                     R12 ; [+13]
       69 GETIMPORT                        R11 K28 [UDim2.new]
       71 LOADN                            R12 0
       72 GETUPVAL                         R13 5
       73 GETTABLEKS                       R13 R13 K29 ["AbsoluteSize"]
       75 GETTABLEKS                       R13 R13 K30 ["X"]
       77 LOADN                            R14 1
       78 LOADN                            R15 0
       79 CALL                             R11 4 1
       80 JUMP                             ; [+1]
       81 LOADNIL                          R11
       82 SETTABLEKS                       R11 R10 K24 ["Size"]
       84 GETUPVAL                         R11 6
       85 GETTABLEKS                       R11 R11 K31 ["map"]
       87 GETUPVAL                         R12 7
       88 NEWCLOSURE                       R13 P1
       89 CAPTURE                          UPVAL U0
       90 CAPTURE                          UPVAL U8
       91 CAPTURE                          UPVAL U9
       92 CAPTURE                          UPVAL U10
       93 CALL                             R11 2 -1
       94 CALL                             R8 -1 -1
       95 CALL                             R5 -1 1
       96 SETTABLEKS                       R5 R4 K6 ["Content"]
       98 CALL                             R1 3 -1
       99 RETURN                           R1 -1

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
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K0 ["use"]
        7 CALL                             R3 0 1
        8 GETUPVAL                         R4 3
        9 GETTABLEKS                       R4 R4 K0 ["use"]
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
       24 GETUPVAL                         R9 4
       25 GETTABLEKS                       R9 R9 K4 ["useEffect"]
       27 NEWCLOSURE                       R10 P0
       28 CAPTURE                          VAL R4
       29 CAPTURE                          VAL R6
       30 NEWTABLE                         R11 0 0
       32 CALL                             R9 2 0
       33 NEWCLOSURE                       R9 P1
       34 CAPTURE                          UPVAL U4
       35 CAPTURE                          UPVAL U5
       36 CAPTURE                          VAL R5
       37 CAPTURE                          VAL R7
       38 CAPTURE                          VAL R6
       39 CAPTURE                          VAL R8
       40 CAPTURE                          UPVAL U6
       41 CAPTURE                          VAL R2
       42 CAPTURE                          UPVAL U7
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R4
       45 GETUPVAL                         R10 4
       46 GETTABLEKS                       R10 R10 K5 ["createElement"]
       48 GETUPVAL                         R11 5
       49 GETTABLEKS                       R11 R11 K6 ["View"]
       51 DUPTABLE                         R12 K10 [{["LayoutOrder"], ["tag"] = "fill auto-y"}]
       52 GETTABLEKS                       R13 R0 K7 ["LayoutOrder"]
       54 SETTABLEKS                       R13 R12 K7 ["LayoutOrder"]
       56 DUPTABLE                         R13 K13 [{"SearchInput", "History"}]
       57 GETUPVAL                         R14 4
       58 GETTABLEKS                       R14 R14 K5 ["createElement"]
       60 GETUPVAL                         R15 5
       61 GETTABLEKS                       R15 R15 K14 ["TextInput"]
       63 DUPTABLE                         R16 K27 [{["label"] = "", ["leadingIcon"], ["placeholder"], ["text"], ["size"], ["width"], ["variant"], ["onReturnPressed"], ["onChanged"], ["onFocusGained"], ["ref"]}]
       64 GETUPVAL                         R17 5
       65 GETTABLEKS                       R17 R17 K28 ["Enums"]
       67 GETTABLEKS                       R17 R17 K29 ["IconName"]
       69 GETTABLEKS                       R17 R17 K30 ["MagnifyingGlass"]
       71 SETTABLEKS                       R17 R16 K17 ["leadingIcon"]
       73 LOADK                            R19 K31 ["Search"]
       74 LOADK                            R20 K32 ["Placeholder"]
       75 NAMECALL                         R17 R3 K33 ["getText"]
       77 CALL                             R17 3 1
       78 SETTABLEKS                       R17 R16 K18 ["placeholder"]
       80 GETTABLEKS                       R17 R1 K34 ["SearchTerm"]
       82 SETTABLEKS                       R17 R16 K19 ["text"]
       84 GETUPVAL                         R17 5
       85 GETTABLEKS                       R17 R17 K28 ["Enums"]
       87 GETTABLEKS                       R17 R17 K35 ["InputSize"]
       89 GETTABLEKS                       R17 R17 K36 ["XSmall"]
       91 SETTABLEKS                       R17 R16 K20 ["size"]
       93 GETIMPORT                        R17 K39 [UDim.new]
       95 LOADN                            R18 1
       96 LOADN                            R19 0
       97 CALL                             R17 2 1
       98 SETTABLEKS                       R17 R16 K21 ["width"]
      100 GETUPVAL                         R17 5
      101 GETTABLEKS                       R17 R17 K28 ["Enums"]
      103 GETTABLEKS                       R17 R17 K40 ["InputVariant"]
      105 GETTABLEKS                       R17 R17 K41 ["Standard"]
      107 SETTABLEKS                       R17 R16 K22 ["variant"]
      109 NEWCLOSURE                       R17 P2
      110 CAPTURE                          VAL R4
      111 CAPTURE                          VAL R6
      112 SETTABLEKS                       R17 R16 K23 ["onReturnPressed"]
      114 NEWCLOSURE                       R17 P3
      115 CAPTURE                          VAL R4
      116 SETTABLEKS                       R17 R16 K24 ["onChanged"]
      118 NEWCLOSURE                       R17 P4
      119 CAPTURE                          VAL R4
      120 CAPTURE                          VAL R6
      121 SETTABLEKS                       R17 R16 K25 ["onFocusGained"]
      123 SETTABLEKS                       R7 R16 K26 ["ref"]
      125 CALL                             R14 2 1
      126 SETTABLEKS                       R14 R13 K11 ["SearchInput"]
      128 LENGTH                           R15 R2
      129 LOADN                            R16 0
      130 JUMPIFNOTLT                      R16 R15 ; [+7]
      132 GETUPVAL                         R14 4
      133 GETTABLEKS                       R14 R14 K5 ["createElement"]
      135 MOVE                             R15 R9
      136 CALL                             R14 1 1
      137 JUMP                             ; [+1]
      138 LOADNIL                          R14
      139 SETTABLEKS                       R14 R13 K12 ["History"]
      141 CALL                             R10 3 -1
      142 RETURN                           R10 -1

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
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Dash"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R2 K11 ["ContextServices"]
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
       66 DUPCLOSURE                       R10 K19 [PROTO_0]
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R3
       69 DUPCLOSURE                       R11 K20 [PROTO_11]
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R10
       78 RETURN                           R11 1
