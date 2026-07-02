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
       45 GETTABLEKS                       R7 R0 K7 ["isError"]
       47 NOT                              R6 R7
       48 JUMPIFNOT                        R6 ; [+17]
       49 LOADB                            R6 1
       50 GETTABLEKS                       R7 R0 K0 ["mode"]
       52 GETUPVAL                         R8 0
       53 GETTABLEKS                       R8 R8 K8 ["Preparing"]
       55 JUMPIFEQ                         R7 R8 ; [+10]
       57 GETTABLEKS                       R7 R0 K0 ["mode"]
       59 GETUPVAL                         R8 0
       60 GETTABLEKS                       R8 R8 K1 ["Searching"]
       62 JUMPIFEQ                         R7 R8 ; [+2]
       64 LOADB                            R6 0 +1
       65 LOADB                            R6 1
       66 GETUPVAL                         R7 5
       67 CALL                             R7 0 1
       68 GETUPVAL                         R8 6
       69 GETUPVAL                         R9 7
       70 GETTABLEKS                       R9 R9 K9 ["Root"]
       72 DUPTABLE                         R10 K15 [{["LayoutOrder"], ["expanded"] = False, ["contentId"], ["editThisContent"]}]
       73 GETTABLEKS                       R11 R0 K10 ["LayoutOrder"]
       75 SETTABLEKS                       R11 R10 K10 ["LayoutOrder"]
       77 GETTABLEKS                       R11 R0 K13 ["contentId"]
       79 SETTABLEKS                       R11 R10 K13 ["contentId"]
       81 GETTABLEKS                       R11 R0 K14 ["editThisContent"]
       83 SETTABLEKS                       R11 R10 K14 ["editThisContent"]
       85 DUPTABLE                         R11 K17 [{"Header"}]
       86 GETUPVAL                         R12 6
       87 GETUPVAL                         R13 7
       88 GETTABLEKS                       R13 R13 K16 ["Header"]
       90 DUPTABLE                         R14 K21 [{["IsDisabled"] = True, ["LayoutOrder"], ["testId"]}]
       91 MOVE                             R15 R7
       92 CALL                             R15 0 1
       93 SETTABLEKS                       R15 R14 K10 ["LayoutOrder"]
       95 GETUPVAL                         R15 8
       96 GETTABLEKS                       R15 R15 K22 ["AssetSearch"]
       98 GETTABLEKS                       R15 R15 K23 ["Expand"]
      100 SETTABLEKS                       R15 R14 K20 ["testId"]
      102 DUPTABLE                         R15 K26 [{"TypeIcon", "Text"}]
      103 LOADB                            R16 0
      104 GETTABLEKS                       R17 R4 K27 ["Image"]
      106 JUMPIFEQKS                       R17 K3 [""] ; [+21]
      108 GETUPVAL                         R16 6
      109 GETUPVAL                         R17 9
      110 DUPTABLE                         R18 K32 [{["tag"] = "size-400-400 radius-small", ["Image"], ["ImageRectOffset"], ["ImageRectSize"], ["LayoutOrder"]}]
      111 GETTABLEKS                       R19 R4 K27 ["Image"]
      113 SETTABLEKS                       R19 R18 K27 ["Image"]
      115 GETTABLEKS                       R19 R4 K30 ["ImageRectOffset"]
      117 SETTABLEKS                       R19 R18 K30 ["ImageRectOffset"]
      119 GETTABLEKS                       R19 R4 K31 ["ImageRectSize"]
      121 SETTABLEKS                       R19 R18 K31 ["ImageRectSize"]
      123 MOVE                             R19 R7
      124 CALL                             R19 0 1
      125 SETTABLEKS                       R19 R18 K10 ["LayoutOrder"]
      127 CALL                             R16 2 1
      128 SETTABLEKS                       R16 R15 K24 ["TypeIcon"]
      130 GETUPVAL                         R16 6
      131 GETUPVAL                         R17 10
      132 DUPTABLE                         R18 K34 [{["tag"] = "size-0-full auto-x text-label-small text-align-y-center text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      133 GETTABLEKS                       R20 R0 K7 ["isError"]
      135 JUMPIFNOT                        R20 ; [+3]
      136 GETTABLEKS                       R19 R5 K35 ["FailedToSearch"]
      138 JUMP                             ; [+22]
      139 GETTABLEKS                       R20 R0 K0 ["mode"]
      141 GETUPVAL                         R21 0
      142 GETTABLEKS                       R21 R21 K1 ["Searching"]
      144 JUMPIFNOTEQ                      R20 R21 ; [+4]
      146 GETTABLEKS                       R19 R5 K1 ["Searching"]
      148 JUMP                             ; [+12]
      149 GETTABLEKS                       R20 R0 K0 ["mode"]
      151 GETUPVAL                         R21 0
      152 GETTABLEKS                       R21 R21 K8 ["Preparing"]
      154 JUMPIFNOTEQ                      R20 R21 ; [+4]
      156 GETTABLEKS                       R19 R5 K8 ["Preparing"]
      158 JUMP                             ; [+2]
      159 GETTABLEKS                       R19 R5 K35 ["FailedToSearch"]
      161 SETTABLEKS                       R19 R18 K25 ["Text"]
      163 MOVE                             R19 R7
      164 CALL                             R19 0 1
      165 SETTABLEKS                       R19 R18 K10 ["LayoutOrder"]
      167 DUPTABLE                         R19 K37 [{"Shimmer"}]
      168 MOVE                             R20 R6
      169 JUMPIFNOT                        R20 ; [+3]
      170 GETUPVAL                         R20 6
      171 GETUPVAL                         R21 11
      172 CALL                             R20 1 1
      173 SETTABLEKS                       R20 R19 K36 ["Shimmer"]
      175 CALL                             R16 3 1
      176 SETTABLEKS                       R16 R15 K25 ["Text"]
      178 CALL                             R12 3 1
      179 SETTABLEKS                       R12 R11 K16 ["Header"]
      181 CALL                             R8 3 -1
      182 RETURN                           R8 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["source"]
        2 JUMPIFNOTEQKS                    R1 K1 ["inventory"] ; [+63]
        4 GETTABLEKS                       R1 R0 K2 ["location"]
        6 JUMPIFNOTEQKS                    R1 K3 ["user"] ; [+8]
        8 GETUPVAL                         R1 0
        9 LOADK                            R3 K4 ["AssetSearch"]
       10 LOADK                            R4 K5 ["SourceMine"]
       11 NAMECALL                         R1 R1 K6 ["getText"]
       13 CALL                             R1 3 -1
       14 RETURN                           R1 -1
       15 GETTABLEKS                       R1 R0 K2 ["location"]
       17 JUMPIFNOTEQKS                    R1 K7 ["group"] ; [+19]
       19 GETTABLEKS                       R1 R0 K8 ["creatorName"]
       21 JUMPIFEQKNIL                     R1 ; [+8]
       23 GETTABLEKS                       R1 R0 K8 ["creatorName"]
       25 JUMPIFEQKS                       R1 K9 [""] ; [+4]
       27 GETTABLEKS                       R1 R0 K8 ["creatorName"]
       29 RETURN                           R1 1
       30 GETUPVAL                         R1 0
       31 LOADK                            R3 K4 ["AssetSearch"]
       32 LOADK                            R4 K10 ["SourceGroup"]
       33 NAMECALL                         R1 R1 K6 ["getText"]
       35 CALL                             R1 3 -1
       36 RETURN                           R1 -1
       37 GETTABLEKS                       R1 R0 K2 ["location"]
       39 JUMPIFNOTEQKS                    R1 K11 ["universe"] ; [+8]
       41 GETUPVAL                         R1 0
       42 LOADK                            R3 K4 ["AssetSearch"]
       43 LOADK                            R4 K12 ["SourceGame"]
       44 NAMECALL                         R1 R1 K6 ["getText"]
       46 CALL                             R1 3 -1
       47 RETURN                           R1 -1
       48 GETTABLEKS                       R1 R0 K2 ["location"]
       50 JUMPIFNOTEQKS                    R1 K13 ["folder"] ; [+8]
       52 GETUPVAL                         R1 0
       53 LOADK                            R3 K4 ["AssetSearch"]
       54 LOADK                            R4 K14 ["SourceFolder"]
       55 NAMECALL                         R1 R1 K6 ["getText"]
       57 CALL                             R1 3 -1
       58 RETURN                           R1 -1
       59 GETUPVAL                         R1 0
       60 LOADK                            R3 K4 ["AssetSearch"]
       61 LOADK                            R4 K15 ["SourceInventory"]
       62 NAMECALL                         R1 R1 K6 ["getText"]
       64 CALL                             R1 3 -1
       65 RETURN                           R1 -1
       66 GETTABLEKS                       R1 R0 K0 ["source"]
       68 JUMPIFNOTEQKS                    R1 K16 ["creator_store"] ; [+24]
       70 GETTABLEKS                       R1 R0 K17 ["priceLabel"]
       72 JUMPIFNOT                        R1 ; [+3]
       73 GETTABLEKS                       R1 R0 K17 ["priceLabel"]
       75 RETURN                           R1 1
       76 GETTABLEKS                       R1 R0 K18 ["isFree"]
       78 JUMPIFNOT                        R1 ; [+7]
       79 GETUPVAL                         R1 0
       80 LOADK                            R3 K4 ["AssetSearch"]
       81 LOADK                            R4 K19 ["SourceFree"]
       82 NAMECALL                         R1 R1 K6 ["getText"]
       84 CALL                             R1 3 -1
       85 RETURN                           R1 -1
       86 GETUPVAL                         R1 0
       87 LOADK                            R3 K4 ["AssetSearch"]
       88 LOADK                            R4 K20 ["SourceStore"]
       89 NAMECALL                         R1 R1 K6 ["getText"]
       91 CALL                             R1 3 -1
       92 RETURN                           R1 -1
       93 LOADK                            R1 K9 [""]
       94 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["onItemClicked"]
        6 JUMPIFNOT                        R0 ; [+5]
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K0 ["onItemClicked"]
       10 GETUPVAL                         R1 2
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

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
       11 LOADB                            R7 0
       12 GETUPVAL                         R8 0
       13 GETTABLEKS                       R8 R8 K1 ["insertingAssetIds"]
       15 JUMPIFEQKNIL                     R8 ; [+11]
       17 GETUPVAL                         R9 0
       18 GETTABLEKS                       R9 R9 K1 ["insertingAssetIds"]
       20 GETTABLEKS                       R10 R5 K2 ["assetId"]
       22 GETTABLE                         R8 R9 R10
       23 JUMPIFEQKB                       R8 TRUE ; [+2]
       25 LOADB                            R7 0 +1
       26 LOADB                            R7 1
       27 LOADK                            R9 K3 ["Item-%*"]
       28 MOVE                             R11 R4
       29 NAMECALL                         R9 R9 K4 ["format"]
       31 CALL                             R9 2 1
       32 MOVE                             R8 R9
       33 GETUPVAL                         R9 2
       34 GETUPVAL                         R10 3
       35 DUPTABLE                         R11 K9 [{["tag"] = "col align-x-center gap-xxsmall auto-y", ["Size"], ["LayoutOrder"]}]
       36 GETIMPORT                        R12 K12 [UDim2.fromOffset]
       38 LOADN                            R13 70
       39 LOADN                            R14 0
       40 CALL                             R12 2 1
       41 SETTABLEKS                       R12 R11 K7 ["Size"]
       43 SETTABLEKS                       R4 R11 K8 ["LayoutOrder"]
       45 DUPTABLE                         R12 K15 [{"Tile", "Label"}]
       46 GETUPVAL                         R13 2
       47 GETUPVAL                         R14 3
       48 DUPTABLE                         R15 K18 [{["tag"] = "radius-small bg-shift-300", ["Size"], ["onActivated"]}]
       49 GETIMPORT                        R16 K12 [UDim2.fromOffset]
       51 LOADN                            R17 70
       52 LOADN                            R18 70
       53 CALL                             R16 2 1
       54 SETTABLEKS                       R16 R15 K7 ["Size"]
       56 NEWCLOSURE                       R16 P0
       57 CAPTURE                          VAL R7
       58 CAPTURE                          UPVAL U0
       59 CAPTURE                          VAL R5
       60 SETTABLEKS                       R16 R15 K17 ["onActivated"]
       62 DUPTABLE                         R16 K22 [{"Image", "UIPadding", "InsertingOverlay"}]
       63 GETUPVAL                         R17 2
       64 GETUPVAL                         R18 4
       65 DUPTABLE                         R19 K24 [{["tag"] = "position-center-center anchor-center-center size-full-full radius-small", ["Image"]}]
       66 LOADK                            R21 K25 ["rbxthumb://type=Asset&id=%*&w=150&h=150"]
       67 GETTABLEKS                       R23 R5 K2 ["assetId"]
       69 NAMECALL                         R21 R21 K4 ["format"]
       71 CALL                             R21 2 1
       72 MOVE                             R20 R21
       73 SETTABLEKS                       R20 R19 K19 ["Image"]
       75 CALL                             R17 2 1
       76 SETTABLEKS                       R17 R16 K19 ["Image"]
       78 GETUPVAL                         R17 2
       79 LOADK                            R18 K20 ["UIPadding"]
       80 DUPTABLE                         R19 K30 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
       81 GETIMPORT                        R20 K33 [UDim.new]
       83 LOADN                            R21 0
       84 GETUPVAL                         R22 5
       85 CALL                             R20 2 1
       86 SETTABLEKS                       R20 R19 K26 ["PaddingLeft"]
       88 GETIMPORT                        R20 K33 [UDim.new]
       90 LOADN                            R21 0
       91 GETUPVAL                         R22 5
       92 CALL                             R20 2 1
       93 SETTABLEKS                       R20 R19 K27 ["PaddingRight"]
       95 GETIMPORT                        R20 K33 [UDim.new]
       97 LOADN                            R21 0
       98 GETUPVAL                         R22 5
       99 CALL                             R20 2 1
      100 SETTABLEKS                       R20 R19 K28 ["PaddingTop"]
      102 GETIMPORT                        R20 K33 [UDim.new]
      104 LOADN                            R21 0
      105 GETUPVAL                         R22 5
      106 CALL                             R20 2 1
      107 SETTABLEKS                       R20 R19 K29 ["PaddingBottom"]
      109 CALL                             R17 2 1
      110 SETTABLEKS                       R17 R16 K20 ["UIPadding"]
      112 MOVE                             R17 R7
      113 JUMPIFNOT                        R17 ; [+17]
      114 GETUPVAL                         R17 2
      115 GETUPVAL                         R18 3
      116 DUPTABLE                         R19 K39 [{["tag"] = "position-center-center anchor-center-center radius-small bg-shift-300", ["Size"], ["BackgroundTransparency"] = 0.4, ["ZIndex"] = 2}]
      117 GETIMPORT                        R20 K41 [UDim2.fromScale]
      119 LOADN                            R21 1
      120 LOADN                            R22 1
      121 CALL                             R20 2 1
      122 SETTABLEKS                       R20 R19 K7 ["Size"]
      124 DUPTABLE                         R20 K43 [{"Shimmer"}]
      125 GETUPVAL                         R21 2
      126 GETUPVAL                         R22 6
      127 CALL                             R21 1 1
      128 SETTABLEKS                       R21 R20 K42 ["Shimmer"]
      130 CALL                             R17 3 1
      131 SETTABLEKS                       R17 R16 K21 ["InsertingOverlay"]
      133 CALL                             R13 3 1
      134 SETTABLEKS                       R13 R12 K13 ["Tile"]
      136 LOADB                            R13 0
      137 JUMPIFEQKS                       R6 K44 [""] ; [+7]
      139 GETUPVAL                         R13 2
      140 GETUPVAL                         R14 7
      141 DUPTABLE                         R15 K47 [{["tag"] = "size-full-0 auto-y text-body-small text-align-x-center text-truncate-end content-muted", ["Text"]}]
      142 SETTABLEKS                       R6 R15 K46 ["Text"]
      144 CALL                             R13 2 1
      145 SETTABLEKS                       R13 R12 K14 ["Label"]
      147 CALL                             R9 3 1
      148 SETTABLE                         R9 R0 R8
      149 FORGLOOP                         R1 2 ; [-142]
      151 RETURN                           R0 1

PROTO_5:
        0 DUPTABLE                         R0 K9 [{[1], ["AutomaticSize"], ["CanvasSize"], ["ScrollingDirection"], ["ScrollingEnabled"] = True, ["HorizontalScrollBarInset"], ["VerticalScrollBarInset"], ["scrollBarVisibility"]}]
        1 GETIMPORT                        R1 K12 [Enum.AutomaticSize.X]
        3 SETTABLEKS                       R1 R0 K0 ["AutomaticCanvasSize"]
        5 GETIMPORT                        R1 K14 [Enum.AutomaticSize.Y]
        7 SETTABLEKS                       R1 R0 K1 ["AutomaticSize"]
        9 GETIMPORT                        R1 K17 [UDim2.fromOffset]
       11 LOADN                            R2 0
       12 LOADN                            R3 70
       13 CALL                             R1 2 1
       14 SETTABLEKS                       R1 R0 K2 ["CanvasSize"]
       16 GETIMPORT                        R1 K18 [Enum.ScrollingDirection.X]
       18 SETTABLEKS                       R1 R0 K3 ["ScrollingDirection"]
       20 GETIMPORT                        R1 K21 [Enum.ScrollBarInset.ScrollBar]
       22 SETTABLEKS                       R1 R0 K6 ["HorizontalScrollBarInset"]
       24 GETIMPORT                        R1 K23 [Enum.ScrollBarInset.None]
       26 SETTABLEKS                       R1 R0 K7 ["VerticalScrollBarInset"]
       28 GETUPVAL                         R1 0
       29 GETTABLEKS                       R1 R1 K24 ["Enums"]
       31 GETTABLEKS                       R1 R1 K25 ["Visibility"]
       33 GETTABLEKS                       R1 R1 K26 ["Auto"]
       35 SETTABLEKS                       R1 R0 K8 ["scrollBarVisibility"]
       37 RETURN                           R0 1

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
       43 CAPTURE                          UPVAL U7
       44 NEWTABLE                         R7 0 4
       46 GETTABLEKS                       R8 R0 K4 ["results"]
       48 GETTABLEKS                       R9 R0 K7 ["onItemClicked"]
       50 GETTABLEKS                       R10 R0 K8 ["insertingAssetIds"]
       52 MOVE                             R11 R2
       53 SETLIST                          R7 R8 4 [1]
       55 CALL                             R5 2 1
       56 GETUPVAL                         R6 1
       57 GETTABLEKS                       R6 R6 K6 ["useMemo"]
       59 DUPCLOSURE                       R7 K9 [PROTO_5]
       60 CAPTURE                          UPVAL U0
       61 NEWTABLE                         R8 0 0
       63 CALL                             R6 2 1
       64 GETUPVAL                         R7 1
       65 GETTABLEKS                       R7 R7 K6 ["useMemo"]
       67 NEWCLOSURE                       R8 P2
       68 CAPTURE                          VAL R0
       69 CAPTURE                          UPVAL U8
       70 NEWTABLE                         R9 0 3
       72 GETUPVAL                         R10 8
       73 GETTABLEKS                       R10 R10 K10 ["locale"]
       75 GETTABLEKS                       R11 R0 K11 ["resultCount"]
       77 GETTABLEKS                       R12 R0 K12 ["query"]
       79 SETLIST                          R9 R10 3 [1]
       81 CALL                             R7 2 1
       82 GETTABLEKS                       R9 R0 K13 ["assetType"]
       84 JUMPIFNOT                        R9 ; [+5]
       85 GETUPVAL                         R9 9
       86 GETTABLEKS                       R10 R0 K13 ["assetType"]
       88 GETTABLE                         R8 R9 R10
       89 JUMP                             ; [+1]
       90 LOADNIL                          R8
       91 GETUPVAL                         R9 10
       92 MOVE                             R10 R8
       93 CALL                             R9 1 1
       94 GETUPVAL                         R10 11
       95 CALL                             R10 0 1
       96 GETUPVAL                         R11 3
       97 GETUPVAL                         R12 12
       98 GETTABLEKS                       R12 R12 K14 ["Root"]
      100 DUPTABLE                         R13 K19 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
      101 GETTABLEKS                       R14 R0 K15 ["LayoutOrder"]
      103 SETTABLEKS                       R14 R13 K15 ["LayoutOrder"]
      105 GETTABLEKS                       R14 R0 K16 ["expanded"]
      107 SETTABLEKS                       R14 R13 K16 ["expanded"]
      109 GETTABLEKS                       R14 R0 K17 ["contentId"]
      111 SETTABLEKS                       R14 R13 K17 ["contentId"]
      113 GETTABLEKS                       R14 R0 K18 ["editThisContent"]
      115 SETTABLEKS                       R14 R13 K18 ["editThisContent"]
      117 DUPTABLE                         R14 K22 [{"Header", "Content"}]
      118 GETUPVAL                         R15 3
      119 GETUPVAL                         R16 12
      120 GETTABLEKS                       R16 R16 K20 ["Header"]
      122 DUPTABLE                         R17 K24 [{"LayoutOrder", "testId"}]
      123 MOVE                             R18 R10
      124 CALL                             R18 0 1
      125 SETTABLEKS                       R18 R17 K15 ["LayoutOrder"]
      127 GETUPVAL                         R18 13
      128 GETTABLEKS                       R18 R18 K25 ["AssetSearch"]
      130 GETTABLEKS                       R18 R18 K26 ["Expand"]
      132 SETTABLEKS                       R18 R17 K23 ["testId"]
      134 DUPTABLE                         R18 K29 [{"TypeIcon", "Text"}]
      135 LOADB                            R19 0
      136 GETTABLEKS                       R20 R9 K30 ["Image"]
      138 JUMPIFEQKS                       R20 K31 [""] ; [+21]
      140 GETUPVAL                         R19 3
      141 GETUPVAL                         R20 5
      142 DUPTABLE                         R21 K36 [{["tag"] = "size-400-400 radius-small", ["Image"], ["ImageRectOffset"], ["ImageRectSize"], ["LayoutOrder"]}]
      143 GETTABLEKS                       R22 R9 K30 ["Image"]
      145 SETTABLEKS                       R22 R21 K30 ["Image"]
      147 GETTABLEKS                       R22 R9 K34 ["ImageRectOffset"]
      149 SETTABLEKS                       R22 R21 K34 ["ImageRectOffset"]
      151 GETTABLEKS                       R22 R9 K35 ["ImageRectSize"]
      153 SETTABLEKS                       R22 R21 K35 ["ImageRectSize"]
      155 MOVE                             R22 R10
      156 CALL                             R22 0 1
      157 SETTABLEKS                       R22 R21 K15 ["LayoutOrder"]
      159 CALL                             R19 2 1
      160 SETTABLEKS                       R19 R18 K27 ["TypeIcon"]
      162 GETUPVAL                         R19 3
      163 GETUPVAL                         R20 7
      164 DUPTABLE                         R21 K38 [{["tag"] = "size-0-full auto-x text-label-small text-align-y-center text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      165 GETTABLEKS                       R22 R7 K39 ["Found"]
      167 SETTABLEKS                       R22 R21 K28 ["Text"]
      169 MOVE                             R22 R10
      170 CALL                             R22 0 1
      171 SETTABLEKS                       R22 R21 K15 ["LayoutOrder"]
      173 CALL                             R19 2 1
      174 SETTABLEKS                       R19 R18 K28 ["Text"]
      176 CALL                             R15 3 1
      177 SETTABLEKS                       R15 R14 K20 ["Header"]
      179 GETUPVAL                         R15 3
      180 GETUPVAL                         R16 12
      181 GETTABLEKS                       R16 R16 K21 ["Content"]
      183 DUPTABLE                         R17 K41 [{["tag"] = "col fill gap-small size-0-0 auto-y", ["LayoutOrder"]}]
      184 MOVE                             R18 R10
      185 CALL                             R18 0 1
      186 SETTABLEKS                       R18 R17 K15 ["LayoutOrder"]
      188 DUPTABLE                         R18 K45 [{"MainCarousel", "NoResults", "ClickHint"}]
      189 MOVE                             R19 R4
      190 JUMPIFNOT                        R19 ; [+25]
      191 GETUPVAL                         R19 3
      192 GETUPVAL                         R20 14
      193 DUPTABLE                         R21 K48 [{["tag"] = "Component-Carousel size-full-0 auto-y", ["scroll"], ["LayoutOrder"]}]
      194 SETTABLEKS                       R6 R21 K47 ["scroll"]
      196 MOVE                             R22 R10
      197 CALL                             R22 0 1
      198 SETTABLEKS                       R22 R21 K15 ["LayoutOrder"]
      200 DUPTABLE                         R22 K50 [{"Container"}]
      201 GETUPVAL                         R23 3
      202 GETUPVAL                         R24 4
      203 DUPTABLE                         R25 K52 [{["tag"] = "row gap-small auto-xy padding-bottom-xsmall", ["testId"]}]
      204 GETUPVAL                         R26 13
      205 GETTABLEKS                       R26 R26 K53 ["Carousel"]
      207 GETTABLEKS                       R26 R26 K49 ["Container"]
      209 SETTABLEKS                       R26 R25 K23 ["testId"]
      211 MOVE                             R26 R5
      212 CALL                             R23 3 1
      213 SETTABLEKS                       R23 R22 K49 ["Container"]
      215 CALL                             R19 3 1
      216 SETTABLEKS                       R19 R18 K42 ["MainCarousel"]
      218 NOT                              R19 R4
      219 JUMPIFNOT                        R19 ; [+16]
      220 GETUPVAL                         R19 3
      221 GETUPVAL                         R20 7
      222 DUPTABLE                         R21 K55 [{["tag"] = "size-0-0 auto-xy text-body-small content-muted", ["Text"], ["LayoutOrder"]}]
      223 GETUPVAL                         R22 8
      224 LOADK                            R24 K25 ["AssetSearch"]
      225 LOADK                            R25 K43 ["NoResults"]
      226 NAMECALL                         R22 R22 K56 ["getText"]
      228 CALL                             R22 3 1
      229 SETTABLEKS                       R22 R21 K28 ["Text"]
      231 MOVE                             R22 R10
      232 CALL                             R22 0 1
      233 SETTABLEKS                       R22 R21 K15 ["LayoutOrder"]
      235 CALL                             R19 2 1
      236 SETTABLEKS                       R19 R18 K43 ["NoResults"]
      238 MOVE                             R19 R4
      239 JUMPIFNOT                        R19 ; [+24]
      240 GETUPVAL                         R19 3
      241 GETUPVAL                         R20 7
      242 DUPTABLE                         R21 K55 [{["tag"] = "size-0-0 auto-xy text-body-small content-muted", ["Text"], ["LayoutOrder"]}]
      243 JUMPIFNOT                        R3 ; [+7]
      244 GETUPVAL                         R22 8
      245 LOADK                            R24 K25 ["AssetSearch"]
      246 LOADK                            R25 K57 ["ClickToInsertOrPurchase"]
      247 NAMECALL                         R22 R22 K56 ["getText"]
      249 CALL                             R22 3 1
      250 JUMP                             ; [+6]
      251 GETUPVAL                         R22 8
      252 LOADK                            R24 K25 ["AssetSearch"]
      253 LOADK                            R25 K58 ["ClickToInsert"]
      254 NAMECALL                         R22 R22 K56 ["getText"]
      256 CALL                             R22 3 1
      257 SETTABLEKS                       R22 R21 K28 ["Text"]
      259 MOVE                             R22 R10
      260 CALL                             R22 0 1
      261 SETTABLEKS                       R22 R21 K15 ["LayoutOrder"]
      263 CALL                             R19 2 1
      264 SETTABLEKS                       R19 R18 K44 ["ClickHint"]
      266 CALL                             R15 3 1
      267 SETTABLEKS                       R15 R14 K21 ["Content"]
      269 CALL                             R11 3 -1
      270 RETURN                           R11 -1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["toolResult"]
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETTABLEKS                       R1 R0 K0 ["toolResult"]
        5 GETTABLEKS                       R1 R1 K1 ["isError"]
        7 JUMPIF                           R1 ; [+17]
        8 GETTABLEKS                       R2 R0 K2 ["mode"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K3 ["Results"]
       13 JUMPIFNOTEQ                      R2 R3 ; [+11]
       15 GETTABLEKS                       R2 R0 K4 ["query"]
       17 JUMPIFNOTEQKS                    R2 K5 [""] ; [+7]
       19 GETTABLEKS                       R2 R0 K6 ["resultCount"]
       21 JUMPIFNOTEQKN                    R2 K7 [0] ; [+3]
       23 LOADNIL                          R2
       24 RETURN                           R2 1
       25 GETTABLEKS                       R2 R0 K2 ["mode"]
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R3 R3 K3 ["Results"]
       30 JUMPIFNOTEQ                      R2 R3 ; [+7]
       32 JUMPIF                           R1 ; [+5]
       33 GETUPVAL                         R2 1
       34 GETUPVAL                         R3 2
       35 MOVE                             R4 R0
       36 CALL                             R2 2 -1
       37 RETURN                           R2 -1
       38 GETUPVAL                         R2 1
       39 GETUPVAL                         R3 3
       40 GETUPVAL                         R4 4
       41 GETTABLEKS                       R4 R4 K8 ["Dictionary"]
       43 GETTABLEKS                       R4 R4 K9 ["join"]
       45 MOVE                             R5 R0
       46 DUPTABLE                         R6 K10 [{"isError"}]
       47 SETTABLEKS                       R1 R6 K1 ["isError"]
       49 CALL                             R4 2 1
       50 CALL                             R2 2 -1
       51 RETURN                           R2 -1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["mode"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["Results"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+31]
        7 DUPTABLE                         R1 K8 [{"type", "mode", "query", "assetType", "resultCount", "results", "expanded"}]
        8 GETTABLEKS                       R2 R0 K2 ["type"]
       10 SETTABLEKS                       R2 R1 K2 ["type"]
       12 GETTABLEKS                       R2 R0 K0 ["mode"]
       14 SETTABLEKS                       R2 R1 K0 ["mode"]
       16 GETTABLEKS                       R2 R0 K3 ["query"]
       18 SETTABLEKS                       R2 R1 K3 ["query"]
       20 GETTABLEKS                       R2 R0 K4 ["assetType"]
       22 SETTABLEKS                       R2 R1 K4 ["assetType"]
       24 GETTABLEKS                       R2 R0 K5 ["resultCount"]
       26 SETTABLEKS                       R2 R1 K5 ["resultCount"]
       28 GETTABLEKS                       R2 R0 K6 ["results"]
       30 SETTABLEKS                       R2 R1 K6 ["results"]
       32 GETTABLEKS                       R2 R0 K7 ["expanded"]
       34 SETTABLEKS                       R2 R1 K7 ["expanded"]
       36 RETURN                           R1 1
       37 DUPTABLE                         R1 K9 [{"type", "mode"}]
       38 GETTABLEKS                       R2 R0 K2 ["type"]
       40 SETTABLEKS                       R2 R1 K2 ["type"]
       42 GETUPVAL                         R2 0
       43 GETTABLEKS                       R2 R2 K10 ["Preparing"]
       45 SETTABLEKS                       R2 R1 K0 ["mode"]
       47 RETURN                           R1 1

PROTO_10:
        0 GETTABLEKS                       R2 R0 K0 ["mode"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["Results"]
        5 JUMPIFNOTEQ                      R2 R3 ; [+38]
        7 DUPTABLE                         R2 K11 [{["type"], [2], ["query"], ["assetType"], ["resultCount"], ["results"], ["expanded"], ["onItemClicked"], ["insertingAssetIds"] = }]
        8 GETTABLEKS                       R3 R0 K2 ["type"]
       10 SETTABLEKS                       R3 R2 K2 ["type"]
       12 GETTABLEKS                       R3 R0 K0 ["mode"]
       14 SETTABLEKS                       R3 R2 K0 ["mode"]
       16 GETTABLEKS                       R3 R0 K3 ["query"]
       18 SETTABLEKS                       R3 R2 K3 ["query"]
       20 GETTABLEKS                       R3 R0 K4 ["assetType"]
       22 SETTABLEKS                       R3 R2 K4 ["assetType"]
       24 GETTABLEKS                       R3 R0 K5 ["resultCount"]
       26 SETTABLEKS                       R3 R2 K5 ["resultCount"]
       28 GETTABLEKS                       R3 R0 K6 ["results"]
       30 SETTABLEKS                       R3 R2 K6 ["results"]
       32 GETTABLEKS                       R3 R0 K7 ["expanded"]
       34 SETTABLEKS                       R3 R2 K7 ["expanded"]
       36 GETUPVAL                         R3 1
       37 GETTABLEKS                       R3 R3 K12 ["createUnimplemented"]
       39 LOADK                            R4 K8 ["onItemClicked"]
       40 CALL                             R3 1 1
       41 SETTABLEKS                       R3 R2 K8 ["onItemClicked"]
       43 RETURN                           R2 1
       44 DUPTABLE                         R2 K15 [{["type"], [2], ["isError"] = True}]
       45 GETTABLEKS                       R3 R0 K2 ["type"]
       47 SETTABLEKS                       R3 R2 K2 ["type"]
       49 GETUPVAL                         R3 0
       50 GETTABLEKS                       R3 R3 K16 ["Preparing"]
       52 SETTABLEKS                       R3 R2 K0 ["mode"]
       54 RETURN                           R2 1

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
       86 DUPTABLE                         R12 K35 [{["Model"] = "Model", ["Package"] = "Model", ["Image"] = "Decal", ["Decal"] = "Decal", ["Audio"] = "Sound", ["MeshPart"] = "MeshPart", ["Mesh"] = "MeshPart", ["Video"] = "VideoFrame", ["Animation"] = "Animation"}]
       87 GETTABLEKS                       R13 R3 K26 ["Image"]
       89 GETTABLEKS                       R14 R3 K36 ["ScrollView"]
       91 GETTABLEKS                       R15 R3 K37 ["Text"]
       93 GETTABLEKS                       R16 R3 K38 ["View"]
       95 GETTABLEKS                       R17 R5 K39 ["createNextOrder"]
       97 GETTABLEKS                       R18 R4 K40 ["createElement"]
       99 DUPTABLE                         R19 K44 [{["Preparing"] = "Preparing", ["Searching"] = "Searching", ["Results"] = "Results"}]
      100 DUPCLOSURE                       R20 K45 [PROTO_1]
      101 CAPTURE                          VAL R19
      102 CAPTURE                          VAL R12
      103 CAPTURE                          VAL R11
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R9
      106 CAPTURE                          VAL R17
      107 CAPTURE                          VAL R18
      108 CAPTURE                          VAL R1
      109 CAPTURE                          VAL R8
      110 CAPTURE                          VAL R13
      111 CAPTURE                          VAL R15
      112 CAPTURE                          VAL R7
      113 DUPCLOSURE                       R21 K46 [PROTO_2]
      114 CAPTURE                          VAL R9
      115 DUPCLOSURE                       R22 K47 [PROTO_7]
      116 CAPTURE                          VAL R3
      117 CAPTURE                          VAL R4
      118 CAPTURE                          VAL R21
      119 CAPTURE                          VAL R18
      120 CAPTURE                          VAL R16
      121 CAPTURE                          VAL R13
      122 CAPTURE                          VAL R7
      123 CAPTURE                          VAL R15
      124 CAPTURE                          VAL R9
      125 CAPTURE                          VAL R12
      126 CAPTURE                          VAL R11
      127 CAPTURE                          VAL R17
      128 CAPTURE                          VAL R1
      129 CAPTURE                          VAL R8
      130 CAPTURE                          VAL R14
      131 DUPCLOSURE                       R23 K48 [PROTO_8]
      132 CAPTURE                          VAL R19
      133 CAPTURE                          VAL R18
      134 CAPTURE                          VAL R22
      135 CAPTURE                          VAL R20
      136 CAPTURE                          VAL R2
      137 DUPTABLE                         R24 K51 [{"toMeta", "fromMeta"}]
      138 DUPCLOSURE                       R25 K52 [PROTO_9]
      139 CAPTURE                          VAL R19
      140 SETTABLEKS                       R25 R24 K49 ["toMeta"]
      142 DUPCLOSURE                       R25 K53 [PROTO_10]
      143 CAPTURE                          VAL R19
      144 CAPTURE                          VAL R5
      145 SETTABLEKS                       R25 R24 K50 ["fromMeta"]
      147 DUPTABLE                         R25 K59 [{["Type"] = "AssetSearch", ["ContentWidget"], ["Serialization"], ["Modes"]}]
      148 GETTABLEKS                       R26 R4 K60 ["memo"]
      150 MOVE                             R27 R23
      151 CALL                             R26 1 1
      152 SETTABLEKS                       R26 R25 K56 ["ContentWidget"]
      154 SETTABLEKS                       R24 R25 K57 ["Serialization"]
      156 SETTABLEKS                       R19 R25 K58 ["Modes"]
      158 RETURN                           R25 1
