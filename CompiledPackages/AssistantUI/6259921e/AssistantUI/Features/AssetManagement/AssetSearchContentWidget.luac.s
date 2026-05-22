PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssetSearch"]
        2 LOADK                            R3 K1 ["Searching"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 1
        6 GETUPVAL                         R1 1
        7 JUMPIFEQKS                       R1 K3 [""] ; [+12]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K0 ["AssetSearch"]
       11 LOADK                            R4 K4 ["SearchingWithQuery"]
       12 DUPTABLE                         R5 K6 [{"query"}]
       13 GETUPVAL                         R6 1
       14 SETTABLEKS                       R6 R5 K5 ["query"]
       16 NAMECALL                         R1 R1 K2 ["getText"]
       18 CALL                             R1 4 1
       19 MOVE                             R0 R1
       20 DUPTABLE                         R1 K9 [{"FailedToSearch", "Preparing", "Searching"}]
       21 GETUPVAL                         R2 0
       22 LOADK                            R4 K0 ["AssetSearch"]
       23 LOADK                            R5 K7 ["FailedToSearch"]
       24 NAMECALL                         R2 R2 K2 ["getText"]
       26 CALL                             R2 3 1
       27 SETTABLEKS                       R2 R1 K7 ["FailedToSearch"]
       29 GETUPVAL                         R2 0
       30 LOADK                            R4 K0 ["AssetSearch"]
       31 LOADK                            R5 K8 ["Preparing"]
       32 NAMECALL                         R2 R2 K2 ["getText"]
       34 CALL                             R2 3 1
       35 SETTABLEKS                       R2 R1 K8 ["Preparing"]
       37 SETTABLEKS                       R0 R1 K1 ["Searching"]
       39 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["mode"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["Searching"]
        5 JUMPIFNOTEQ                      R2 R3 ; [+4]
        7 GETTABLEKS                       R1 R0 K2 ["query"]
        9 JUMP                             ; [+1]
       10 LOADK                            R1 K3 [""]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K4 ["useMemo"]
       14 NEWCLOSURE                       R3 P0
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          VAL R1
       17 NEWTABLE                         R4 0 2
       19 GETUPVAL                         R5 2
       20 GETTABLEKS                       R5 R5 K5 ["locale"]
       22 MOVE                             R6 R1
       23 SETLIST                          R4 R5 2 [1]
       25 CALL                             R2 2 1
       26 GETUPVAL                         R4 3
       27 CALL                             R4 0 1
       28 JUMPIFNOT                        R4 ; [+22]
       29 GETTABLEKS                       R4 R0 K6 ["isError"]
       31 NOT                              R3 R4
       32 JUMPIFNOT                        R3 ; [+21]
       33 LOADB                            R3 1
       34 GETTABLEKS                       R4 R0 K0 ["mode"]
       36 GETUPVAL                         R5 0
       37 GETTABLEKS                       R5 R5 K7 ["Preparing"]
       39 JUMPIFEQ                         R4 R5 ; [+14]
       41 GETTABLEKS                       R4 R0 K0 ["mode"]
       43 GETUPVAL                         R5 0
       44 GETTABLEKS                       R5 R5 K1 ["Searching"]
       46 JUMPIFEQ                         R4 R5 ; [+2]
       48 LOADB                            R3 0 +1
       49 LOADB                            R3 1
       50 JUMP                             ; [+3]
       51 GETTABLEKS                       R4 R0 K6 ["isError"]
       53 NOT                              R3 R4
       54 GETUPVAL                         R4 4
       55 CALL                             R4 0 1
       56 GETUPVAL                         R5 5
       57 GETUPVAL                         R6 6
       58 GETTABLEKS                       R6 R6 K8 ["Root"]
       60 DUPTABLE                         R7 K13 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
       61 GETTABLEKS                       R8 R0 K9 ["LayoutOrder"]
       63 SETTABLEKS                       R8 R7 K9 ["LayoutOrder"]
       65 LOADB                            R8 0
       66 SETTABLEKS                       R8 R7 K10 ["expanded"]
       68 GETTABLEKS                       R8 R0 K11 ["contentId"]
       70 SETTABLEKS                       R8 R7 K11 ["contentId"]
       72 GETTABLEKS                       R8 R0 K12 ["editThisContent"]
       74 SETTABLEKS                       R8 R7 K12 ["editThisContent"]
       76 DUPTABLE                         R8 K15 [{"Header"}]
       77 GETUPVAL                         R9 5
       78 GETUPVAL                         R10 6
       79 GETTABLEKS                       R10 R10 K14 ["Header"]
       81 DUPTABLE                         R11 K18 [{"IsDisabled", "LayoutOrder", "testId"}]
       82 LOADB                            R12 1
       83 SETTABLEKS                       R12 R11 K16 ["IsDisabled"]
       85 MOVE                             R12 R4
       86 CALL                             R12 0 1
       87 SETTABLEKS                       R12 R11 K9 ["LayoutOrder"]
       89 GETUPVAL                         R12 7
       90 GETTABLEKS                       R12 R12 K19 ["AssetSearch"]
       92 GETTABLEKS                       R12 R12 K20 ["Expand"]
       94 SETTABLEKS                       R12 R11 K17 ["testId"]
       96 DUPTABLE                         R12 K22 [{"Text"}]
       97 GETUPVAL                         R13 5
       98 GETUPVAL                         R14 8
       99 DUPTABLE                         R15 K24 [{"tag", "Text", "LayoutOrder"}]
      100 LOADK                            R16 K25 ["size-0-full auto-x text-label-small content-default text-truncate-end text-align-y-center"]
      101 SETTABLEKS                       R16 R15 K23 ["tag"]
      103 GETTABLEKS                       R17 R0 K6 ["isError"]
      105 JUMPIFNOT                        R17 ; [+3]
      106 GETTABLEKS                       R16 R2 K26 ["FailedToSearch"]
      108 JUMP                             ; [+22]
      109 GETTABLEKS                       R17 R0 K0 ["mode"]
      111 GETUPVAL                         R18 0
      112 GETTABLEKS                       R18 R18 K1 ["Searching"]
      114 JUMPIFNOTEQ                      R17 R18 ; [+4]
      116 GETTABLEKS                       R16 R2 K1 ["Searching"]
      118 JUMP                             ; [+12]
      119 GETTABLEKS                       R17 R0 K0 ["mode"]
      121 GETUPVAL                         R18 0
      122 GETTABLEKS                       R18 R18 K7 ["Preparing"]
      124 JUMPIFNOTEQ                      R17 R18 ; [+4]
      126 GETTABLEKS                       R16 R2 K7 ["Preparing"]
      128 JUMP                             ; [+2]
      129 GETTABLEKS                       R16 R2 K26 ["FailedToSearch"]
      131 SETTABLEKS                       R16 R15 K21 ["Text"]
      133 MOVE                             R16 R4
      134 CALL                             R16 0 1
      135 SETTABLEKS                       R16 R15 K9 ["LayoutOrder"]
      137 DUPTABLE                         R16 K28 [{"Shimmer"}]
      138 MOVE                             R17 R3
      139 JUMPIFNOT                        R17 ; [+3]
      140 GETUPVAL                         R17 5
      141 GETUPVAL                         R18 9
      142 CALL                             R17 1 1
      143 SETTABLEKS                       R17 R16 K27 ["Shimmer"]
      145 CALL                             R13 3 1
      146 SETTABLEKS                       R13 R12 K21 ["Text"]
      148 CALL                             R9 3 1
      149 SETTABLEKS                       R9 R8 K14 ["Header"]
      151 CALL                             R5 3 -1
      152 RETURN                           R5 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["source"]
        2 JUMPIFNOTEQKS                    R1 K1 ["inventory"] ; [+52]
        4 GETTABLEKS                       R1 R0 K2 ["location"]
        6 JUMPIFNOTEQKS                    R1 K3 ["user"] ; [+8]
        8 GETUPVAL                         R1 0
        9 LOADK                            R3 K4 ["AssetSearch"]
       10 LOADK                            R4 K5 ["SourceMine"]
       11 NAMECALL                         R1 R1 K6 ["getText"]
       13 CALL                             R1 3 -1
       14 RETURN                           R1 -1
       15 GETTABLEKS                       R1 R0 K2 ["location"]
       17 JUMPIFNOTEQKS                    R1 K7 ["group"] ; [+8]
       19 GETUPVAL                         R1 0
       20 LOADK                            R3 K4 ["AssetSearch"]
       21 LOADK                            R4 K8 ["SourceGroup"]
       22 NAMECALL                         R1 R1 K6 ["getText"]
       24 CALL                             R1 3 -1
       25 RETURN                           R1 -1
       26 GETTABLEKS                       R1 R0 K2 ["location"]
       28 JUMPIFNOTEQKS                    R1 K9 ["universe"] ; [+8]
       30 GETUPVAL                         R1 0
       31 LOADK                            R3 K4 ["AssetSearch"]
       32 LOADK                            R4 K10 ["SourceGame"]
       33 NAMECALL                         R1 R1 K6 ["getText"]
       35 CALL                             R1 3 -1
       36 RETURN                           R1 -1
       37 GETTABLEKS                       R1 R0 K2 ["location"]
       39 JUMPIFNOTEQKS                    R1 K11 ["folder"] ; [+8]
       41 GETUPVAL                         R1 0
       42 LOADK                            R3 K4 ["AssetSearch"]
       43 LOADK                            R4 K12 ["SourceFolder"]
       44 NAMECALL                         R1 R1 K6 ["getText"]
       46 CALL                             R1 3 -1
       47 RETURN                           R1 -1
       48 GETUPVAL                         R1 0
       49 LOADK                            R3 K4 ["AssetSearch"]
       50 LOADK                            R4 K13 ["SourceInventory"]
       51 NAMECALL                         R1 R1 K6 ["getText"]
       53 CALL                             R1 3 -1
       54 RETURN                           R1 -1
       55 GETTABLEKS                       R1 R0 K0 ["source"]
       57 JUMPIFNOTEQKS                    R1 K14 ["creator_store"] ; [+24]
       59 GETTABLEKS                       R1 R0 K15 ["priceLabel"]
       61 JUMPIFNOT                        R1 ; [+3]
       62 GETTABLEKS                       R1 R0 K15 ["priceLabel"]
       64 RETURN                           R1 1
       65 GETTABLEKS                       R1 R0 K16 ["isFree"]
       67 JUMPIFNOT                        R1 ; [+7]
       68 GETUPVAL                         R1 0
       69 LOADK                            R3 K4 ["AssetSearch"]
       70 LOADK                            R4 K17 ["SourceFree"]
       71 NAMECALL                         R1 R1 K6 ["getText"]
       73 CALL                             R1 3 -1
       74 RETURN                           R1 -1
       75 GETUPVAL                         R1 0
       76 LOADK                            R3 K4 ["AssetSearch"]
       77 LOADK                            R4 K18 ["SourceStore"]
       78 NAMECALL                         R1 R1 K6 ["getText"]
       80 CALL                             R1 3 -1
       81 RETURN                           R1 -1
       82 LOADK                            R1 K19 [""]
       83 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onItemClicked"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["onItemClicked"]
        7 GETUPVAL                         R1 1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["results"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETUPVAL                         R6 1
        9 MOVE                             R7 R5
       10 CALL                             R6 1 1
       11 LOADK                            R8 K1 ["Item-%*"]
       12 MOVE                             R10 R4
       13 NAMECALL                         R8 R8 K2 ["format"]
       15 CALL                             R8 2 1
       16 MOVE                             R7 R8
       17 GETUPVAL                         R8 2
       18 GETUPVAL                         R9 3
       19 DUPTABLE                         R10 K6 [{"tag", "Size", "LayoutOrder"}]
       20 LOADK                            R11 K7 ["col auto-y align-x-center gap-xxsmall"]
       21 SETTABLEKS                       R11 R10 K3 ["tag"]
       23 GETIMPORT                        R11 K10 [UDim2.fromOffset]
       25 LOADN                            R12 70
       26 LOADN                            R13 0
       27 CALL                             R11 2 1
       28 SETTABLEKS                       R11 R10 K4 ["Size"]
       30 SETTABLEKS                       R4 R10 K5 ["LayoutOrder"]
       32 DUPTABLE                         R11 K13 [{"Tile", "Label"}]
       33 GETUPVAL                         R12 2
       34 GETUPVAL                         R13 3
       35 DUPTABLE                         R14 K15 [{"tag", "Size", "onActivated"}]
       36 LOADK                            R15 K16 ["bg-shift-300 radius-small"]
       37 SETTABLEKS                       R15 R14 K3 ["tag"]
       39 GETIMPORT                        R15 K10 [UDim2.fromOffset]
       41 LOADN                            R16 70
       42 LOADN                            R17 70
       43 CALL                             R15 2 1
       44 SETTABLEKS                       R15 R14 K4 ["Size"]
       46 NEWCLOSURE                       R15 P0
       47 CAPTURE                          UPVAL U0
       48 CAPTURE                          VAL R5
       49 SETTABLEKS                       R15 R14 K14 ["onActivated"]
       51 DUPTABLE                         R15 K19 [{"Image", "UIPadding"}]
       52 GETUPVAL                         R16 2
       53 GETUPVAL                         R17 4
       54 DUPTABLE                         R18 K20 [{"tag", "Image"}]
       55 LOADK                            R19 K21 ["size-full-full radius-small anchor-center-center position-center-center"]
       56 SETTABLEKS                       R19 R18 K3 ["tag"]
       58 LOADK                            R20 K22 ["rbxthumb://type=Asset&id=%*&w=150&h=150"]
       59 GETTABLEKS                       R22 R5 K23 ["assetId"]
       61 NAMECALL                         R20 R20 K2 ["format"]
       63 CALL                             R20 2 1
       64 MOVE                             R19 R20
       65 SETTABLEKS                       R19 R18 K17 ["Image"]
       67 CALL                             R16 2 1
       68 SETTABLEKS                       R16 R15 K17 ["Image"]
       70 GETUPVAL                         R16 2
       71 LOADK                            R17 K18 ["UIPadding"]
       72 DUPTABLE                         R18 K28 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
       73 GETIMPORT                        R19 K31 [UDim.new]
       75 LOADN                            R20 0
       76 GETUPVAL                         R21 5
       77 CALL                             R19 2 1
       78 SETTABLEKS                       R19 R18 K24 ["PaddingLeft"]
       80 GETIMPORT                        R19 K31 [UDim.new]
       82 LOADN                            R20 0
       83 GETUPVAL                         R21 5
       84 CALL                             R19 2 1
       85 SETTABLEKS                       R19 R18 K25 ["PaddingRight"]
       87 GETIMPORT                        R19 K31 [UDim.new]
       89 LOADN                            R20 0
       90 GETUPVAL                         R21 5
       91 CALL                             R19 2 1
       92 SETTABLEKS                       R19 R18 K26 ["PaddingTop"]
       94 GETIMPORT                        R19 K31 [UDim.new]
       96 LOADN                            R20 0
       97 GETUPVAL                         R21 5
       98 CALL                             R19 2 1
       99 SETTABLEKS                       R19 R18 K27 ["PaddingBottom"]
      101 CALL                             R16 2 1
      102 SETTABLEKS                       R16 R15 K18 ["UIPadding"]
      104 CALL                             R12 3 1
      105 SETTABLEKS                       R12 R11 K11 ["Tile"]
      107 LOADB                            R12 0
      108 JUMPIFEQKS                       R6 K32 [""] ; [+10]
      110 GETUPVAL                         R12 2
      111 GETUPVAL                         R13 6
      112 DUPTABLE                         R14 K34 [{"tag", "Text"}]
      113 LOADK                            R15 K35 ["size-full-0 auto-y text-body-small content-muted text-truncate-end text-align-x-center"]
      114 SETTABLEKS                       R15 R14 K3 ["tag"]
      116 SETTABLEKS                       R6 R14 K33 ["Text"]
      118 CALL                             R12 2 1
      119 SETTABLEKS                       R12 R11 K12 ["Label"]
      121 CALL                             R8 3 1
      122 SETTABLE                         R8 R0 R7
      123 FORGLOOP                         R1 2 ; [-116]
      125 RETURN                           R0 1

PROTO_5:
        0 DUPTABLE                         R0 K8 [{"AutomaticCanvasSize", "AutomaticSize", "CanvasSize", "ScrollingDirection", "ScrollingEnabled", "HorizontalScrollBarInset", "VerticalScrollBarInset", "scrollBarVisibility"}]
        1 GETIMPORT                        R1 K11 [Enum.AutomaticSize.X]
        3 SETTABLEKS                       R1 R0 K0 ["AutomaticCanvasSize"]
        5 GETIMPORT                        R1 K13 [Enum.AutomaticSize.Y]
        7 SETTABLEKS                       R1 R0 K1 ["AutomaticSize"]
        9 GETIMPORT                        R1 K16 [UDim2.fromOffset]
       11 LOADN                            R2 0
       12 LOADN                            R3 70
       13 CALL                             R1 2 1
       14 SETTABLEKS                       R1 R0 K2 ["CanvasSize"]
       16 GETIMPORT                        R1 K17 [Enum.ScrollingDirection.X]
       18 SETTABLEKS                       R1 R0 K3 ["ScrollingDirection"]
       20 LOADB                            R1 1
       21 SETTABLEKS                       R1 R0 K4 ["ScrollingEnabled"]
       23 GETIMPORT                        R1 K20 [Enum.ScrollBarInset.ScrollBar]
       25 SETTABLEKS                       R1 R0 K5 ["HorizontalScrollBarInset"]
       27 GETIMPORT                        R1 K22 [Enum.ScrollBarInset.None]
       29 SETTABLEKS                       R1 R0 K6 ["VerticalScrollBarInset"]
       31 GETUPVAL                         R1 0
       32 GETTABLEKS                       R1 R1 K23 ["Enums"]
       34 GETTABLEKS                       R1 R1 K24 ["Visibility"]
       36 GETTABLEKS                       R1 R1 K25 ["Auto"]
       38 SETTABLEKS                       R1 R0 K7 ["scrollBarVisibility"]
       40 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["resultCount"]
        3 JUMPIFNOTEQKN                    R1 K1 [1] ; [+14]
        5 GETUPVAL                         R0 1
        6 LOADK                            R2 K2 ["AssetSearch"]
        7 LOADK                            R3 K3 ["FoundSingularWithQuery"]
        8 DUPTABLE                         R4 K5 [{"query"}]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R5 R5 K4 ["query"]
       12 SETTABLEKS                       R5 R4 K4 ["query"]
       14 NAMECALL                         R0 R0 K6 ["getText"]
       16 CALL                             R0 4 1
       17 JUMP                             ; [+17]
       18 GETUPVAL                         R0 1
       19 LOADK                            R2 K2 ["AssetSearch"]
       20 LOADK                            R3 K7 ["FoundWithQuery"]
       21 DUPTABLE                         R4 K9 [{"count", "query"}]
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R5 R5 K0 ["resultCount"]
       25 SETTABLEKS                       R5 R4 K8 ["count"]
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R5 R5 K4 ["query"]
       30 SETTABLEKS                       R5 R4 K4 ["query"]
       32 NAMECALL                         R0 R0 K6 ["getText"]
       34 CALL                             R0 4 1
       35 DUPTABLE                         R1 K11 [{"Found"}]
       36 SETTABLEKS                       R0 R1 K10 ["Found"]
       38 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R2 R1 K2 ["Padding"]
        8 GETTABLEKS                       R2 R2 K3 ["XXSmall"]
       10 LOADB                            R3 0
       11 GETTABLEKS                       R4 R0 K4 ["results"]
       13 LOADNIL                          R5
       14 LOADNIL                          R6
       15 FORGPREP                         R4
       16 GETTABLEKS                       R9 R8 K5 ["isFree"]
       18 JUMPIFNOTEQKB                    R9 FALSE ; [+3]
       20 LOADB                            R3 1
       21 JUMP                             ; [+2]
       22 FORGLOOP                         R4 2 ; [-7]
       24 GETTABLEKS                       R6 R0 K4 ["results"]
       26 LENGTH                           R5 R6
       27 LOADN                            R6 0
       28 JUMPIFLT                         R6 R5 ; [+2]
       30 LOADB                            R4 0 +1
       31 LOADB                            R4 1
       32 GETUPVAL                         R5 1
       33 GETTABLEKS                       R5 R5 K6 ["useMemo"]
       35 NEWCLOSURE                       R6 P0
       36 CAPTURE                          VAL R0
       37 CAPTURE                          UPVAL U2
       38 CAPTURE                          UPVAL U3
       39 CAPTURE                          UPVAL U4
       40 CAPTURE                          UPVAL U5
       41 CAPTURE                          VAL R2
       42 CAPTURE                          UPVAL U6
       43 NEWTABLE                         R7 0 3
       45 GETTABLEKS                       R8 R0 K4 ["results"]
       47 GETTABLEKS                       R9 R0 K7 ["onItemClicked"]
       49 MOVE                             R10 R2
       50 SETLIST                          R7 R8 3 [1]
       52 CALL                             R5 2 1
       53 GETUPVAL                         R6 1
       54 GETTABLEKS                       R6 R6 K6 ["useMemo"]
       56 DUPCLOSURE                       R7 K8 [PROTO_5]
       57 CAPTURE                          UPVAL U0
       58 NEWTABLE                         R8 0 0
       60 CALL                             R6 2 1
       61 GETUPVAL                         R7 1
       62 GETTABLEKS                       R7 R7 K6 ["useMemo"]
       64 NEWCLOSURE                       R8 P2
       65 CAPTURE                          VAL R0
       66 CAPTURE                          UPVAL U7
       67 NEWTABLE                         R9 0 3
       69 GETUPVAL                         R10 7
       70 GETTABLEKS                       R10 R10 K9 ["locale"]
       72 GETTABLEKS                       R11 R0 K10 ["resultCount"]
       74 GETTABLEKS                       R12 R0 K11 ["query"]
       76 SETLIST                          R9 R10 3 [1]
       78 CALL                             R7 2 1
       79 GETUPVAL                         R8 8
       80 CALL                             R8 0 1
       81 GETUPVAL                         R9 3
       82 GETUPVAL                         R10 9
       83 GETTABLEKS                       R10 R10 K12 ["Root"]
       85 DUPTABLE                         R11 K17 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
       86 GETTABLEKS                       R12 R0 K13 ["LayoutOrder"]
       88 SETTABLEKS                       R12 R11 K13 ["LayoutOrder"]
       90 GETTABLEKS                       R12 R0 K14 ["expanded"]
       92 SETTABLEKS                       R12 R11 K14 ["expanded"]
       94 GETTABLEKS                       R12 R0 K15 ["contentId"]
       96 SETTABLEKS                       R12 R11 K15 ["contentId"]
       98 GETTABLEKS                       R12 R0 K16 ["editThisContent"]
      100 SETTABLEKS                       R12 R11 K16 ["editThisContent"]
      102 DUPTABLE                         R12 K20 [{"Header", "Content"}]
      103 GETUPVAL                         R13 3
      104 GETUPVAL                         R14 9
      105 GETTABLEKS                       R14 R14 K18 ["Header"]
      107 DUPTABLE                         R15 K22 [{"LayoutOrder", "testId"}]
      108 MOVE                             R16 R8
      109 CALL                             R16 0 1
      110 SETTABLEKS                       R16 R15 K13 ["LayoutOrder"]
      112 GETUPVAL                         R16 10
      113 GETTABLEKS                       R16 R16 K23 ["AssetSearch"]
      115 GETTABLEKS                       R16 R16 K24 ["Expand"]
      117 SETTABLEKS                       R16 R15 K21 ["testId"]
      119 DUPTABLE                         R16 K26 [{"Text"}]
      120 GETUPVAL                         R17 3
      121 GETUPVAL                         R18 6
      122 DUPTABLE                         R19 K28 [{"tag", "Text", "LayoutOrder"}]
      123 LOADK                            R20 K29 ["size-0-full auto-x text-label-small content-default text-truncate-end text-align-y-center"]
      124 SETTABLEKS                       R20 R19 K27 ["tag"]
      126 GETTABLEKS                       R20 R7 K30 ["Found"]
      128 SETTABLEKS                       R20 R19 K25 ["Text"]
      130 MOVE                             R20 R8
      131 CALL                             R20 0 1
      132 SETTABLEKS                       R20 R19 K13 ["LayoutOrder"]
      134 CALL                             R17 2 1
      135 SETTABLEKS                       R17 R16 K25 ["Text"]
      137 CALL                             R13 3 1
      138 SETTABLEKS                       R13 R12 K18 ["Header"]
      140 GETUPVAL                         R13 3
      141 GETUPVAL                         R14 9
      142 GETTABLEKS                       R14 R14 K19 ["Content"]
      144 DUPTABLE                         R15 K31 [{"tag", "LayoutOrder"}]
      145 LOADK                            R16 K32 ["col size-0-0 fill auto-y gap-small"]
      146 SETTABLEKS                       R16 R15 K27 ["tag"]
      148 MOVE                             R16 R8
      149 CALL                             R16 0 1
      150 SETTABLEKS                       R16 R15 K13 ["LayoutOrder"]
      152 DUPTABLE                         R16 K36 [{"MainCarousel", "NoResults", "ClickHint"}]
      153 MOVE                             R17 R4
      154 JUMPIFNOT                        R17 ; [+31]
      155 GETUPVAL                         R17 3
      156 GETUPVAL                         R18 11
      157 DUPTABLE                         R19 K38 [{"tag", "scroll", "LayoutOrder"}]
      158 LOADK                            R20 K39 ["size-full-0 auto-y Component-Carousel"]
      159 SETTABLEKS                       R20 R19 K27 ["tag"]
      161 SETTABLEKS                       R6 R19 K37 ["scroll"]
      163 MOVE                             R20 R8
      164 CALL                             R20 0 1
      165 SETTABLEKS                       R20 R19 K13 ["LayoutOrder"]
      167 DUPTABLE                         R20 K41 [{"Container"}]
      168 GETUPVAL                         R21 3
      169 GETUPVAL                         R22 4
      170 DUPTABLE                         R23 K42 [{"tag", "testId"}]
      171 LOADK                            R24 K43 ["row auto-xy gap-small padding-bottom-xsmall"]
      172 SETTABLEKS                       R24 R23 K27 ["tag"]
      174 GETUPVAL                         R24 10
      175 GETTABLEKS                       R24 R24 K44 ["Carousel"]
      177 GETTABLEKS                       R24 R24 K40 ["Container"]
      179 SETTABLEKS                       R24 R23 K21 ["testId"]
      181 MOVE                             R24 R5
      182 CALL                             R21 3 1
      183 SETTABLEKS                       R21 R20 K40 ["Container"]
      185 CALL                             R17 3 1
      186 SETTABLEKS                       R17 R16 K33 ["MainCarousel"]
      188 NOT                              R17 R4
      189 JUMPIFNOT                        R17 ; [+19]
      190 GETUPVAL                         R17 3
      191 GETUPVAL                         R18 6
      192 DUPTABLE                         R19 K28 [{"tag", "Text", "LayoutOrder"}]
      193 LOADK                            R20 K45 ["size-0-0 auto-xy text-body-small content-muted"]
      194 SETTABLEKS                       R20 R19 K27 ["tag"]
      196 GETUPVAL                         R20 7
      197 LOADK                            R22 K23 ["AssetSearch"]
      198 LOADK                            R23 K34 ["NoResults"]
      199 NAMECALL                         R20 R20 K46 ["getText"]
      201 CALL                             R20 3 1
      202 SETTABLEKS                       R20 R19 K25 ["Text"]
      204 MOVE                             R20 R8
      205 CALL                             R20 0 1
      206 SETTABLEKS                       R20 R19 K13 ["LayoutOrder"]
      208 CALL                             R17 2 1
      209 SETTABLEKS                       R17 R16 K34 ["NoResults"]
      211 MOVE                             R17 R4
      212 JUMPIFNOT                        R17 ; [+27]
      213 GETUPVAL                         R17 3
      214 GETUPVAL                         R18 6
      215 DUPTABLE                         R19 K28 [{"tag", "Text", "LayoutOrder"}]
      216 LOADK                            R20 K45 ["size-0-0 auto-xy text-body-small content-muted"]
      217 SETTABLEKS                       R20 R19 K27 ["tag"]
      219 JUMPIFNOT                        R3 ; [+7]
      220 GETUPVAL                         R20 7
      221 LOADK                            R22 K23 ["AssetSearch"]
      222 LOADK                            R23 K47 ["ClickToInsertOrPurchase"]
      223 NAMECALL                         R20 R20 K46 ["getText"]
      225 CALL                             R20 3 1
      226 JUMP                             ; [+6]
      227 GETUPVAL                         R20 7
      228 LOADK                            R22 K23 ["AssetSearch"]
      229 LOADK                            R23 K48 ["ClickToInsert"]
      230 NAMECALL                         R20 R20 K46 ["getText"]
      232 CALL                             R20 3 1
      233 SETTABLEKS                       R20 R19 K25 ["Text"]
      235 MOVE                             R20 R8
      236 CALL                             R20 0 1
      237 SETTABLEKS                       R20 R19 K13 ["LayoutOrder"]
      239 CALL                             R17 2 1
      240 SETTABLEKS                       R17 R16 K35 ["ClickHint"]
      242 CALL                             R13 3 1
      243 SETTABLEKS                       R13 R12 K19 ["Content"]
      245 CALL                             R9 3 -1
      246 RETURN                           R9 -1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["toolResult"]
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETTABLEKS                       R1 R0 K0 ["toolResult"]
        5 GETTABLEKS                       R1 R1 K1 ["isError"]
        7 GETTABLEKS                       R2 R0 K2 ["mode"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K3 ["Results"]
       12 JUMPIFNOTEQ                      R2 R3 ; [+7]
       14 JUMPIF                           R1 ; [+5]
       15 GETUPVAL                         R2 1
       16 GETUPVAL                         R3 2
       17 MOVE                             R4 R0
       18 CALL                             R2 2 -1
       19 RETURN                           R2 -1
       20 GETUPVAL                         R2 1
       21 GETUPVAL                         R3 3
       22 GETUPVAL                         R4 4
       23 GETTABLEKS                       R4 R4 K4 ["Dictionary"]
       25 GETTABLEKS                       R4 R4 K5 ["join"]
       27 MOVE                             R5 R0
       28 DUPTABLE                         R6 K6 [{"isError"}]
       29 SETTABLEKS                       R1 R6 K1 ["isError"]
       31 CALL                             R4 2 1
       32 CALL                             R2 2 -1
       33 RETURN                           R2 -1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETTABLEKS                       R1 R0 K3 ["mode"]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K4 ["Results"]
       13 JUMPIFNOTEQ                      R1 R2 ; [+31]
       15 DUPTABLE                         R1 K11 [{"type", "mode", "query", "searchId", "resultCount", "results", "expanded"}]
       16 GETTABLEKS                       R2 R0 K5 ["type"]
       18 SETTABLEKS                       R2 R1 K5 ["type"]
       20 GETTABLEKS                       R2 R0 K3 ["mode"]
       22 SETTABLEKS                       R2 R1 K3 ["mode"]
       24 GETTABLEKS                       R2 R0 K6 ["query"]
       26 SETTABLEKS                       R2 R1 K6 ["query"]
       28 GETTABLEKS                       R2 R0 K7 ["searchId"]
       30 SETTABLEKS                       R2 R1 K7 ["searchId"]
       32 GETTABLEKS                       R2 R0 K8 ["resultCount"]
       34 SETTABLEKS                       R2 R1 K8 ["resultCount"]
       36 GETTABLEKS                       R2 R0 K9 ["results"]
       38 SETTABLEKS                       R2 R1 K9 ["results"]
       40 GETTABLEKS                       R2 R0 K10 ["expanded"]
       42 SETTABLEKS                       R2 R1 K10 ["expanded"]
       44 RETURN                           R1 1
       45 DUPTABLE                         R1 K12 [{"type", "mode"}]
       46 GETTABLEKS                       R2 R0 K5 ["type"]
       48 SETTABLEKS                       R2 R1 K5 ["type"]
       50 GETUPVAL                         R2 1
       51 GETTABLEKS                       R2 R2 K13 ["Preparing"]
       53 SETTABLEKS                       R2 R1 K3 ["mode"]
       55 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 2 0
        8 GETTABLEKS                       R2 R0 K3 ["mode"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K4 ["Results"]
       13 JUMPIFNOTEQ                      R2 R3 ; [+38]
       15 DUPTABLE                         R2 K12 [{"type", "mode", "query", "searchId", "resultCount", "results", "expanded", "onItemClicked"}]
       16 GETTABLEKS                       R3 R0 K5 ["type"]
       18 SETTABLEKS                       R3 R2 K5 ["type"]
       20 GETTABLEKS                       R3 R0 K3 ["mode"]
       22 SETTABLEKS                       R3 R2 K3 ["mode"]
       24 GETTABLEKS                       R3 R0 K6 ["query"]
       26 SETTABLEKS                       R3 R2 K6 ["query"]
       28 GETTABLEKS                       R3 R0 K7 ["searchId"]
       30 SETTABLEKS                       R3 R2 K7 ["searchId"]
       32 GETTABLEKS                       R3 R0 K8 ["resultCount"]
       34 SETTABLEKS                       R3 R2 K8 ["resultCount"]
       36 GETTABLEKS                       R3 R0 K9 ["results"]
       38 SETTABLEKS                       R3 R2 K9 ["results"]
       40 GETTABLEKS                       R3 R0 K10 ["expanded"]
       42 SETTABLEKS                       R3 R2 K10 ["expanded"]
       44 GETUPVAL                         R3 2
       45 GETTABLEKS                       R3 R3 K13 ["createUnimplemented"]
       47 LOADK                            R4 K11 ["onItemClicked"]
       48 CALL                             R3 1 1
       49 SETTABLEKS                       R3 R2 K11 ["onItemClicked"]
       51 RETURN                           R2 1
       52 DUPTABLE                         R2 K15 [{"type", "mode", "isError"}]
       53 GETTABLEKS                       R3 R0 K5 ["type"]
       55 SETTABLEKS                       R3 R2 K5 ["type"]
       57 GETUPVAL                         R3 1
       58 GETTABLEKS                       R3 R3 K16 ["Preparing"]
       60 SETTABLEKS                       R3 R2 K3 ["mode"]
       62 LOADB                            R3 1
       63 SETTABLEKS                       R3 R2 K14 ["isError"]
       65 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Accordion"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Cryo"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K8 ["Parent"]
       39 GETTABLEKS                       R6 R6 K12 ["ReactUtils"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K13 ["Util"]
       46 GETTABLEKS                       R7 R7 K14 ["Serializer"]
       48 GETTABLEKS                       R7 R7 K15 ["SerializerTypes"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K6 ["Components"]
       55 GETTABLEKS                       R8 R8 K16 ["ShimmerGradient"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K13 ["Util"]
       62 GETTABLEKS                       R9 R9 K17 ["TestIds"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K18 ["Resources"]
       69 GETTABLEKS                       R10 R10 K19 ["Localization"]
       71 GETTABLEKS                       R10 R10 K20 ["Translator"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K21 ["Types"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R12 R0 K22 ["Flags"]
       83 GETTABLEKS                       R12 R12 K23 ["FFlagAssistantMultipleChatPersistence"]
       85 CALL                             R11 1 1
       86 GETTABLEKS                       R12 R3 K24 ["Image"]
       88 GETTABLEKS                       R13 R3 K25 ["ScrollView"]
       90 GETTABLEKS                       R14 R3 K26 ["Text"]
       92 GETTABLEKS                       R15 R3 K27 ["View"]
       94 GETTABLEKS                       R16 R5 K28 ["createNextOrder"]
       96 GETTABLEKS                       R17 R4 K29 ["createElement"]
       98 DUPTABLE                         R18 K33 [{"Preparing", "Searching", "Results"}]
       99 LOADK                            R19 K30 ["Preparing"]
      100 SETTABLEKS                       R19 R18 K30 ["Preparing"]
      102 LOADK                            R19 K31 ["Searching"]
      103 SETTABLEKS                       R19 R18 K31 ["Searching"]
      105 LOADK                            R19 K32 ["Results"]
      106 SETTABLEKS                       R19 R18 K32 ["Results"]
      108 DUPCLOSURE                       R19 K34 [PROTO_1]
      109 CAPTURE                          VAL R18
      110 CAPTURE                          VAL R4
      111 CAPTURE                          VAL R9
      112 CAPTURE                          VAL R11
      113 CAPTURE                          VAL R16
      114 CAPTURE                          VAL R17
      115 CAPTURE                          VAL R1
      116 CAPTURE                          VAL R8
      117 CAPTURE                          VAL R14
      118 CAPTURE                          VAL R7
      119 DUPCLOSURE                       R20 K35 [PROTO_2]
      120 CAPTURE                          VAL R9
      121 DUPCLOSURE                       R21 K36 [PROTO_7]
      122 CAPTURE                          VAL R3
      123 CAPTURE                          VAL R4
      124 CAPTURE                          VAL R20
      125 CAPTURE                          VAL R17
      126 CAPTURE                          VAL R15
      127 CAPTURE                          VAL R12
      128 CAPTURE                          VAL R14
      129 CAPTURE                          VAL R9
      130 CAPTURE                          VAL R16
      131 CAPTURE                          VAL R1
      132 CAPTURE                          VAL R8
      133 CAPTURE                          VAL R13
      134 DUPCLOSURE                       R22 K37 [PROTO_8]
      135 CAPTURE                          VAL R18
      136 CAPTURE                          VAL R17
      137 CAPTURE                          VAL R21
      138 CAPTURE                          VAL R19
      139 CAPTURE                          VAL R2
      140 DUPTABLE                         R23 K40 [{"toMeta", "fromMeta"}]
      141 DUPCLOSURE                       R24 K41 [PROTO_9]
      142 CAPTURE                          VAL R11
      143 CAPTURE                          VAL R18
      144 SETTABLEKS                       R24 R23 K38 ["toMeta"]
      146 DUPCLOSURE                       R24 K42 [PROTO_10]
      147 CAPTURE                          VAL R11
      148 CAPTURE                          VAL R18
      149 CAPTURE                          VAL R5
      150 SETTABLEKS                       R24 R23 K39 ["fromMeta"]
      152 DUPTABLE                         R24 K47 [{"Type", "ContentWidget", "Serialization", "Modes"}]
      153 LOADK                            R25 K48 ["AssetSearch"]
      154 SETTABLEKS                       R25 R24 K43 ["Type"]
      156 GETTABLEKS                       R25 R4 K49 ["memo"]
      158 MOVE                             R26 R22
      159 CALL                             R25 1 1
      160 SETTABLEKS                       R25 R24 K44 ["ContentWidget"]
      162 SETTABLEKS                       R23 R24 K45 ["Serialization"]
      164 SETTABLEKS                       R18 R24 K46 ["Modes"]
      166 RETURN                           R24 1
