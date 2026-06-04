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
       11 GETTABLEKS                       R3 R0 K0 ["mode"]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K1 ["Searching"]
       16 JUMPIFNOTEQ                      R3 R4 ; [+4]
       18 GETTABLEKS                       R2 R0 K4 ["assetType"]
       20 JUMP                             ; [+1]
       21 LOADNIL                          R2
       22 JUMPIFNOT                        R2 ; [+3]
       23 GETUPVAL                         R4 1
       24 GETTABLE                         R3 R4 R2
       25 JUMP                             ; [+1]
       26 LOADNIL                          R3
       27 GETUPVAL                         R4 2
       28 MOVE                             R5 R3
       29 CALL                             R4 1 1
       30 GETUPVAL                         R5 3
       31 GETTABLEKS                       R5 R5 K5 ["useMemo"]
       33 NEWCLOSURE                       R6 P0
       34 CAPTURE                          UPVAL U4
       35 CAPTURE                          VAL R1
       36 NEWTABLE                         R7 0 2
       38 GETUPVAL                         R8 4
       39 GETTABLEKS                       R8 R8 K6 ["locale"]
       41 MOVE                             R9 R1
       42 SETLIST                          R7 R8 2 [1]
       44 CALL                             R5 2 1
       45 GETUPVAL                         R7 5
       46 CALL                             R7 0 1
       47 JUMPIFNOT                        R7 ; [+22]
       48 GETTABLEKS                       R7 R0 K7 ["isError"]
       50 NOT                              R6 R7
       51 JUMPIFNOT                        R6 ; [+21]
       52 LOADB                            R6 1
       53 GETTABLEKS                       R7 R0 K0 ["mode"]
       55 GETUPVAL                         R8 0
       56 GETTABLEKS                       R8 R8 K8 ["Preparing"]
       58 JUMPIFEQ                         R7 R8 ; [+14]
       60 GETTABLEKS                       R7 R0 K0 ["mode"]
       62 GETUPVAL                         R8 0
       63 GETTABLEKS                       R8 R8 K1 ["Searching"]
       65 JUMPIFEQ                         R7 R8 ; [+2]
       67 LOADB                            R6 0 +1
       68 LOADB                            R6 1
       69 JUMP                             ; [+3]
       70 GETTABLEKS                       R7 R0 K7 ["isError"]
       72 NOT                              R6 R7
       73 GETUPVAL                         R7 6
       74 CALL                             R7 0 1
       75 GETUPVAL                         R8 7
       76 GETUPVAL                         R9 8
       77 GETTABLEKS                       R9 R9 K9 ["Root"]
       79 DUPTABLE                         R10 K14 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
       80 GETTABLEKS                       R11 R0 K10 ["LayoutOrder"]
       82 SETTABLEKS                       R11 R10 K10 ["LayoutOrder"]
       84 LOADB                            R11 0
       85 SETTABLEKS                       R11 R10 K11 ["expanded"]
       87 GETTABLEKS                       R11 R0 K12 ["contentId"]
       89 SETTABLEKS                       R11 R10 K12 ["contentId"]
       91 GETTABLEKS                       R11 R0 K13 ["editThisContent"]
       93 SETTABLEKS                       R11 R10 K13 ["editThisContent"]
       95 DUPTABLE                         R11 K16 [{"Header"}]
       96 GETUPVAL                         R12 7
       97 GETUPVAL                         R13 8
       98 GETTABLEKS                       R13 R13 K15 ["Header"]
      100 DUPTABLE                         R14 K19 [{"IsDisabled", "LayoutOrder", "testId"}]
      101 LOADB                            R15 1
      102 SETTABLEKS                       R15 R14 K17 ["IsDisabled"]
      104 MOVE                             R15 R7
      105 CALL                             R15 0 1
      106 SETTABLEKS                       R15 R14 K10 ["LayoutOrder"]
      108 GETUPVAL                         R15 9
      109 GETTABLEKS                       R15 R15 K20 ["AssetSearch"]
      111 GETTABLEKS                       R15 R15 K21 ["Expand"]
      113 SETTABLEKS                       R15 R14 K18 ["testId"]
      115 DUPTABLE                         R15 K24 [{"TypeIcon", "Text"}]
      116 LOADB                            R16 0
      117 GETTABLEKS                       R17 R4 K25 ["Image"]
      119 JUMPIFEQKS                       R17 K3 [""] ; [+24]
      121 GETUPVAL                         R16 7
      122 GETUPVAL                         R17 10
      123 DUPTABLE                         R18 K29 [{"tag", "Image", "ImageRectOffset", "ImageRectSize", "LayoutOrder"}]
      124 LOADK                            R19 K30 ["size-400-400 radius-small"]
      125 SETTABLEKS                       R19 R18 K26 ["tag"]
      127 GETTABLEKS                       R19 R4 K25 ["Image"]
      129 SETTABLEKS                       R19 R18 K25 ["Image"]
      131 GETTABLEKS                       R19 R4 K27 ["ImageRectOffset"]
      133 SETTABLEKS                       R19 R18 K27 ["ImageRectOffset"]
      135 GETTABLEKS                       R19 R4 K28 ["ImageRectSize"]
      137 SETTABLEKS                       R19 R18 K28 ["ImageRectSize"]
      139 MOVE                             R19 R7
      140 CALL                             R19 0 1
      141 SETTABLEKS                       R19 R18 K10 ["LayoutOrder"]
      143 CALL                             R16 2 1
      144 SETTABLEKS                       R16 R15 K22 ["TypeIcon"]
      146 GETUPVAL                         R16 7
      147 GETUPVAL                         R17 11
      148 DUPTABLE                         R18 K31 [{"tag", "Text", "LayoutOrder"}]
      149 LOADK                            R19 K32 ["size-0-full auto-x text-label-small content-default text-truncate-end text-align-y-center"]
      150 SETTABLEKS                       R19 R18 K26 ["tag"]
      152 GETTABLEKS                       R20 R0 K7 ["isError"]
      154 JUMPIFNOT                        R20 ; [+3]
      155 GETTABLEKS                       R19 R5 K33 ["FailedToSearch"]
      157 JUMP                             ; [+22]
      158 GETTABLEKS                       R20 R0 K0 ["mode"]
      160 GETUPVAL                         R21 0
      161 GETTABLEKS                       R21 R21 K1 ["Searching"]
      163 JUMPIFNOTEQ                      R20 R21 ; [+4]
      165 GETTABLEKS                       R19 R5 K1 ["Searching"]
      167 JUMP                             ; [+12]
      168 GETTABLEKS                       R20 R0 K0 ["mode"]
      170 GETUPVAL                         R21 0
      171 GETTABLEKS                       R21 R21 K8 ["Preparing"]
      173 JUMPIFNOTEQ                      R20 R21 ; [+4]
      175 GETTABLEKS                       R19 R5 K8 ["Preparing"]
      177 JUMP                             ; [+2]
      178 GETTABLEKS                       R19 R5 K33 ["FailedToSearch"]
      180 SETTABLEKS                       R19 R18 K23 ["Text"]
      182 MOVE                             R19 R7
      183 CALL                             R19 0 1
      184 SETTABLEKS                       R19 R18 K10 ["LayoutOrder"]
      186 DUPTABLE                         R19 K35 [{"Shimmer"}]
      187 MOVE                             R20 R6
      188 JUMPIFNOT                        R20 ; [+3]
      189 GETUPVAL                         R20 7
      190 GETUPVAL                         R21 12
      191 CALL                             R20 1 1
      192 SETTABLEKS                       R20 R19 K34 ["Shimmer"]
      194 CALL                             R16 3 1
      195 SETTABLEKS                       R16 R15 K23 ["Text"]
      197 CALL                             R12 3 1
      198 SETTABLEKS                       R12 R11 K15 ["Header"]
      200 CALL                             R8 3 -1
      201 RETURN                           R8 -1

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
       79 GETTABLEKS                       R9 R0 K12 ["assetType"]
       81 JUMPIFNOT                        R9 ; [+5]
       82 GETUPVAL                         R9 8
       83 GETTABLEKS                       R10 R0 K12 ["assetType"]
       85 GETTABLE                         R8 R9 R10
       86 JUMP                             ; [+1]
       87 LOADNIL                          R8
       88 GETUPVAL                         R9 9
       89 MOVE                             R10 R8
       90 CALL                             R9 1 1
       91 GETUPVAL                         R10 10
       92 CALL                             R10 0 1
       93 GETUPVAL                         R11 3
       94 GETUPVAL                         R12 11
       95 GETTABLEKS                       R12 R12 K13 ["Root"]
       97 DUPTABLE                         R13 K18 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
       98 GETTABLEKS                       R14 R0 K14 ["LayoutOrder"]
      100 SETTABLEKS                       R14 R13 K14 ["LayoutOrder"]
      102 GETTABLEKS                       R14 R0 K15 ["expanded"]
      104 SETTABLEKS                       R14 R13 K15 ["expanded"]
      106 GETTABLEKS                       R14 R0 K16 ["contentId"]
      108 SETTABLEKS                       R14 R13 K16 ["contentId"]
      110 GETTABLEKS                       R14 R0 K17 ["editThisContent"]
      112 SETTABLEKS                       R14 R13 K17 ["editThisContent"]
      114 DUPTABLE                         R14 K21 [{"Header", "Content"}]
      115 GETUPVAL                         R15 3
      116 GETUPVAL                         R16 11
      117 GETTABLEKS                       R16 R16 K19 ["Header"]
      119 DUPTABLE                         R17 K23 [{"LayoutOrder", "testId"}]
      120 MOVE                             R18 R10
      121 CALL                             R18 0 1
      122 SETTABLEKS                       R18 R17 K14 ["LayoutOrder"]
      124 GETUPVAL                         R18 12
      125 GETTABLEKS                       R18 R18 K24 ["AssetSearch"]
      127 GETTABLEKS                       R18 R18 K25 ["Expand"]
      129 SETTABLEKS                       R18 R17 K22 ["testId"]
      131 DUPTABLE                         R18 K28 [{"TypeIcon", "Text"}]
      132 LOADB                            R19 0
      133 GETTABLEKS                       R20 R9 K29 ["Image"]
      135 JUMPIFEQKS                       R20 K30 [""] ; [+24]
      137 GETUPVAL                         R19 3
      138 GETUPVAL                         R20 5
      139 DUPTABLE                         R21 K34 [{"tag", "Image", "ImageRectOffset", "ImageRectSize", "LayoutOrder"}]
      140 LOADK                            R22 K35 ["size-400-400 radius-small"]
      141 SETTABLEKS                       R22 R21 K31 ["tag"]
      143 GETTABLEKS                       R22 R9 K29 ["Image"]
      145 SETTABLEKS                       R22 R21 K29 ["Image"]
      147 GETTABLEKS                       R22 R9 K32 ["ImageRectOffset"]
      149 SETTABLEKS                       R22 R21 K32 ["ImageRectOffset"]
      151 GETTABLEKS                       R22 R9 K33 ["ImageRectSize"]
      153 SETTABLEKS                       R22 R21 K33 ["ImageRectSize"]
      155 MOVE                             R22 R10
      156 CALL                             R22 0 1
      157 SETTABLEKS                       R22 R21 K14 ["LayoutOrder"]
      159 CALL                             R19 2 1
      160 SETTABLEKS                       R19 R18 K26 ["TypeIcon"]
      162 GETUPVAL                         R19 3
      163 GETUPVAL                         R20 6
      164 DUPTABLE                         R21 K36 [{"tag", "Text", "LayoutOrder"}]
      165 LOADK                            R22 K37 ["size-0-full auto-x text-label-small content-default text-truncate-end text-align-y-center"]
      166 SETTABLEKS                       R22 R21 K31 ["tag"]
      168 GETTABLEKS                       R22 R7 K38 ["Found"]
      170 SETTABLEKS                       R22 R21 K27 ["Text"]
      172 MOVE                             R22 R10
      173 CALL                             R22 0 1
      174 SETTABLEKS                       R22 R21 K14 ["LayoutOrder"]
      176 CALL                             R19 2 1
      177 SETTABLEKS                       R19 R18 K27 ["Text"]
      179 CALL                             R15 3 1
      180 SETTABLEKS                       R15 R14 K19 ["Header"]
      182 GETUPVAL                         R15 3
      183 GETUPVAL                         R16 11
      184 GETTABLEKS                       R16 R16 K20 ["Content"]
      186 DUPTABLE                         R17 K39 [{"tag", "LayoutOrder"}]
      187 LOADK                            R18 K40 ["col size-0-0 fill auto-y gap-small"]
      188 SETTABLEKS                       R18 R17 K31 ["tag"]
      190 MOVE                             R18 R10
      191 CALL                             R18 0 1
      192 SETTABLEKS                       R18 R17 K14 ["LayoutOrder"]
      194 DUPTABLE                         R18 K44 [{"MainCarousel", "NoResults", "ClickHint"}]
      195 MOVE                             R19 R4
      196 JUMPIFNOT                        R19 ; [+31]
      197 GETUPVAL                         R19 3
      198 GETUPVAL                         R20 13
      199 DUPTABLE                         R21 K46 [{"tag", "scroll", "LayoutOrder"}]
      200 LOADK                            R22 K47 ["size-full-0 auto-y Component-Carousel"]
      201 SETTABLEKS                       R22 R21 K31 ["tag"]
      203 SETTABLEKS                       R6 R21 K45 ["scroll"]
      205 MOVE                             R22 R10
      206 CALL                             R22 0 1
      207 SETTABLEKS                       R22 R21 K14 ["LayoutOrder"]
      209 DUPTABLE                         R22 K49 [{"Container"}]
      210 GETUPVAL                         R23 3
      211 GETUPVAL                         R24 4
      212 DUPTABLE                         R25 K50 [{"tag", "testId"}]
      213 LOADK                            R26 K51 ["row auto-xy gap-small padding-bottom-xsmall"]
      214 SETTABLEKS                       R26 R25 K31 ["tag"]
      216 GETUPVAL                         R26 12
      217 GETTABLEKS                       R26 R26 K52 ["Carousel"]
      219 GETTABLEKS                       R26 R26 K48 ["Container"]
      221 SETTABLEKS                       R26 R25 K22 ["testId"]
      223 MOVE                             R26 R5
      224 CALL                             R23 3 1
      225 SETTABLEKS                       R23 R22 K48 ["Container"]
      227 CALL                             R19 3 1
      228 SETTABLEKS                       R19 R18 K41 ["MainCarousel"]
      230 NOT                              R19 R4
      231 JUMPIFNOT                        R19 ; [+19]
      232 GETUPVAL                         R19 3
      233 GETUPVAL                         R20 6
      234 DUPTABLE                         R21 K36 [{"tag", "Text", "LayoutOrder"}]
      235 LOADK                            R22 K53 ["size-0-0 auto-xy text-body-small content-muted"]
      236 SETTABLEKS                       R22 R21 K31 ["tag"]
      238 GETUPVAL                         R22 7
      239 LOADK                            R24 K24 ["AssetSearch"]
      240 LOADK                            R25 K42 ["NoResults"]
      241 NAMECALL                         R22 R22 K54 ["getText"]
      243 CALL                             R22 3 1
      244 SETTABLEKS                       R22 R21 K27 ["Text"]
      246 MOVE                             R22 R10
      247 CALL                             R22 0 1
      248 SETTABLEKS                       R22 R21 K14 ["LayoutOrder"]
      250 CALL                             R19 2 1
      251 SETTABLEKS                       R19 R18 K42 ["NoResults"]
      253 MOVE                             R19 R4
      254 JUMPIFNOT                        R19 ; [+27]
      255 GETUPVAL                         R19 3
      256 GETUPVAL                         R20 6
      257 DUPTABLE                         R21 K36 [{"tag", "Text", "LayoutOrder"}]
      258 LOADK                            R22 K53 ["size-0-0 auto-xy text-body-small content-muted"]
      259 SETTABLEKS                       R22 R21 K31 ["tag"]
      261 JUMPIFNOT                        R3 ; [+7]
      262 GETUPVAL                         R22 7
      263 LOADK                            R24 K24 ["AssetSearch"]
      264 LOADK                            R25 K55 ["ClickToInsertOrPurchase"]
      265 NAMECALL                         R22 R22 K54 ["getText"]
      267 CALL                             R22 3 1
      268 JUMP                             ; [+6]
      269 GETUPVAL                         R22 7
      270 LOADK                            R24 K24 ["AssetSearch"]
      271 LOADK                            R25 K56 ["ClickToInsert"]
      272 NAMECALL                         R22 R22 K54 ["getText"]
      274 CALL                             R22 3 1
      275 SETTABLEKS                       R22 R21 K27 ["Text"]
      277 MOVE                             R22 R10
      278 CALL                             R22 0 1
      279 SETTABLEKS                       R22 R21 K14 ["LayoutOrder"]
      281 CALL                             R19 2 1
      282 SETTABLEKS                       R19 R18 K43 ["ClickHint"]
      284 CALL                             R15 3 1
      285 SETTABLEKS                       R15 R14 K20 ["Content"]
      287 CALL                             R11 3 -1
      288 RETURN                           R11 -1

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
       13 JUMPIFNOTEQ                      R1 R2 ; [+35]
       15 DUPTABLE                         R1 K12 [{"type", "mode", "query", "assetType", "searchId", "resultCount", "results", "expanded"}]
       16 GETTABLEKS                       R2 R0 K5 ["type"]
       18 SETTABLEKS                       R2 R1 K5 ["type"]
       20 GETTABLEKS                       R2 R0 K3 ["mode"]
       22 SETTABLEKS                       R2 R1 K3 ["mode"]
       24 GETTABLEKS                       R2 R0 K6 ["query"]
       26 SETTABLEKS                       R2 R1 K6 ["query"]
       28 GETTABLEKS                       R2 R0 K7 ["assetType"]
       30 SETTABLEKS                       R2 R1 K7 ["assetType"]
       32 GETTABLEKS                       R2 R0 K8 ["searchId"]
       34 SETTABLEKS                       R2 R1 K8 ["searchId"]
       36 GETTABLEKS                       R2 R0 K9 ["resultCount"]
       38 SETTABLEKS                       R2 R1 K9 ["resultCount"]
       40 GETTABLEKS                       R2 R0 K10 ["results"]
       42 SETTABLEKS                       R2 R1 K10 ["results"]
       44 GETTABLEKS                       R2 R0 K11 ["expanded"]
       46 SETTABLEKS                       R2 R1 K11 ["expanded"]
       48 RETURN                           R1 1
       49 DUPTABLE                         R1 K13 [{"type", "mode"}]
       50 GETTABLEKS                       R2 R0 K5 ["type"]
       52 SETTABLEKS                       R2 R1 K5 ["type"]
       54 GETUPVAL                         R2 1
       55 GETTABLEKS                       R2 R2 K14 ["Preparing"]
       57 SETTABLEKS                       R2 R1 K3 ["mode"]
       59 RETURN                           R1 1

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
       13 JUMPIFNOTEQ                      R2 R3 ; [+42]
       15 DUPTABLE                         R2 K13 [{"type", "mode", "query", "assetType", "searchId", "resultCount", "results", "expanded", "onItemClicked"}]
       16 GETTABLEKS                       R3 R0 K5 ["type"]
       18 SETTABLEKS                       R3 R2 K5 ["type"]
       20 GETTABLEKS                       R3 R0 K3 ["mode"]
       22 SETTABLEKS                       R3 R2 K3 ["mode"]
       24 GETTABLEKS                       R3 R0 K6 ["query"]
       26 SETTABLEKS                       R3 R2 K6 ["query"]
       28 GETTABLEKS                       R3 R0 K7 ["assetType"]
       30 SETTABLEKS                       R3 R2 K7 ["assetType"]
       32 GETTABLEKS                       R3 R0 K8 ["searchId"]
       34 SETTABLEKS                       R3 R2 K8 ["searchId"]
       36 GETTABLEKS                       R3 R0 K9 ["resultCount"]
       38 SETTABLEKS                       R3 R2 K9 ["resultCount"]
       40 GETTABLEKS                       R3 R0 K10 ["results"]
       42 SETTABLEKS                       R3 R2 K10 ["results"]
       44 GETTABLEKS                       R3 R0 K11 ["expanded"]
       46 SETTABLEKS                       R3 R2 K11 ["expanded"]
       48 GETUPVAL                         R3 2
       49 GETTABLEKS                       R3 R3 K14 ["createUnimplemented"]
       51 LOADK                            R4 K12 ["onItemClicked"]
       52 CALL                             R3 1 1
       53 SETTABLEKS                       R3 R2 K12 ["onItemClicked"]
       55 RETURN                           R2 1
       56 DUPTABLE                         R2 K16 [{"type", "mode", "isError"}]
       57 GETTABLEKS                       R3 R0 K5 ["type"]
       59 SETTABLEKS                       R3 R2 K5 ["type"]
       61 GETUPVAL                         R3 1
       62 GETTABLEKS                       R3 R3 K17 ["Preparing"]
       64 SETTABLEKS                       R3 R2 K3 ["mode"]
       66 LOADB                            R3 1
       67 SETTABLEKS                       R3 R2 K15 ["isError"]
       69 RETURN                           R2 1

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
       81 GETTABLEKS                       R12 R0 K22 ["Hooks"]
       83 GETTABLEKS                       R12 R12 K23 ["useClassIcon"]
       85 CALL                             R11 1 1
       86 DUPTABLE                         R12 K33 [{"Model", "Package", "Image", "Decal", "Audio", "MeshPart", "Mesh", "Video", "Animation"}]
       87 LOADK                            R13 K24 ["Model"]
       88 SETTABLEKS                       R13 R12 K24 ["Model"]
       90 LOADK                            R13 K24 ["Model"]
       91 SETTABLEKS                       R13 R12 K25 ["Package"]
       93 LOADK                            R13 K27 ["Decal"]
       94 SETTABLEKS                       R13 R12 K26 ["Image"]
       96 LOADK                            R13 K27 ["Decal"]
       97 SETTABLEKS                       R13 R12 K27 ["Decal"]
       99 LOADK                            R13 K34 ["Sound"]
      100 SETTABLEKS                       R13 R12 K28 ["Audio"]
      102 LOADK                            R13 K29 ["MeshPart"]
      103 SETTABLEKS                       R13 R12 K29 ["MeshPart"]
      105 LOADK                            R13 K29 ["MeshPart"]
      106 SETTABLEKS                       R13 R12 K30 ["Mesh"]
      108 LOADK                            R13 K35 ["VideoFrame"]
      109 SETTABLEKS                       R13 R12 K31 ["Video"]
      111 LOADK                            R13 K32 ["Animation"]
      112 SETTABLEKS                       R13 R12 K32 ["Animation"]
      114 GETIMPORT                        R13 K5 [require]
      116 GETTABLEKS                       R14 R0 K36 ["Flags"]
      118 GETTABLEKS                       R14 R14 K37 ["FFlagAssistantMultipleChatPersistence"]
      120 CALL                             R13 1 1
      121 GETTABLEKS                       R14 R3 K26 ["Image"]
      123 GETTABLEKS                       R15 R3 K38 ["ScrollView"]
      125 GETTABLEKS                       R16 R3 K39 ["Text"]
      127 GETTABLEKS                       R17 R3 K40 ["View"]
      129 GETTABLEKS                       R18 R5 K41 ["createNextOrder"]
      131 GETTABLEKS                       R19 R4 K42 ["createElement"]
      133 DUPTABLE                         R20 K46 [{"Preparing", "Searching", "Results"}]
      134 LOADK                            R21 K43 ["Preparing"]
      135 SETTABLEKS                       R21 R20 K43 ["Preparing"]
      137 LOADK                            R21 K44 ["Searching"]
      138 SETTABLEKS                       R21 R20 K44 ["Searching"]
      140 LOADK                            R21 K45 ["Results"]
      141 SETTABLEKS                       R21 R20 K45 ["Results"]
      143 DUPCLOSURE                       R21 K47 [PROTO_1]
      144 CAPTURE                          VAL R20
      145 CAPTURE                          VAL R12
      146 CAPTURE                          VAL R11
      147 CAPTURE                          VAL R4
      148 CAPTURE                          VAL R9
      149 CAPTURE                          VAL R13
      150 CAPTURE                          VAL R18
      151 CAPTURE                          VAL R19
      152 CAPTURE                          VAL R1
      153 CAPTURE                          VAL R8
      154 CAPTURE                          VAL R14
      155 CAPTURE                          VAL R16
      156 CAPTURE                          VAL R7
      157 DUPCLOSURE                       R22 K48 [PROTO_2]
      158 CAPTURE                          VAL R9
      159 DUPCLOSURE                       R23 K49 [PROTO_7]
      160 CAPTURE                          VAL R3
      161 CAPTURE                          VAL R4
      162 CAPTURE                          VAL R22
      163 CAPTURE                          VAL R19
      164 CAPTURE                          VAL R17
      165 CAPTURE                          VAL R14
      166 CAPTURE                          VAL R16
      167 CAPTURE                          VAL R9
      168 CAPTURE                          VAL R12
      169 CAPTURE                          VAL R11
      170 CAPTURE                          VAL R18
      171 CAPTURE                          VAL R1
      172 CAPTURE                          VAL R8
      173 CAPTURE                          VAL R15
      174 DUPCLOSURE                       R24 K50 [PROTO_8]
      175 CAPTURE                          VAL R20
      176 CAPTURE                          VAL R19
      177 CAPTURE                          VAL R23
      178 CAPTURE                          VAL R21
      179 CAPTURE                          VAL R2
      180 DUPTABLE                         R25 K53 [{"toMeta", "fromMeta"}]
      181 DUPCLOSURE                       R26 K54 [PROTO_9]
      182 CAPTURE                          VAL R13
      183 CAPTURE                          VAL R20
      184 SETTABLEKS                       R26 R25 K51 ["toMeta"]
      186 DUPCLOSURE                       R26 K55 [PROTO_10]
      187 CAPTURE                          VAL R13
      188 CAPTURE                          VAL R20
      189 CAPTURE                          VAL R5
      190 SETTABLEKS                       R26 R25 K52 ["fromMeta"]
      192 DUPTABLE                         R26 K60 [{"Type", "ContentWidget", "Serialization", "Modes"}]
      193 LOADK                            R27 K61 ["AssetSearch"]
      194 SETTABLEKS                       R27 R26 K56 ["Type"]
      196 GETTABLEKS                       R27 R4 K62 ["memo"]
      198 MOVE                             R28 R24
      199 CALL                             R27 1 1
      200 SETTABLEKS                       R27 R26 K57 ["ContentWidget"]
      202 SETTABLEKS                       R25 R26 K58 ["Serialization"]
      204 SETTABLEKS                       R20 R26 K59 ["Modes"]
      206 RETURN                           R26 1
