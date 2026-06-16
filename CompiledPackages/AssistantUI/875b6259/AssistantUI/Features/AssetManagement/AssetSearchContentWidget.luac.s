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
       35 DUPTABLE                         R11 K8 [{"tag", "Size", "LayoutOrder"}]
       36 LOADK                            R12 K9 ["col auto-y align-x-center gap-xxsmall"]
       37 SETTABLEKS                       R12 R11 K5 ["tag"]
       39 GETIMPORT                        R12 K12 [UDim2.fromOffset]
       41 LOADN                            R13 70
       42 LOADN                            R14 0
       43 CALL                             R12 2 1
       44 SETTABLEKS                       R12 R11 K6 ["Size"]
       46 SETTABLEKS                       R4 R11 K7 ["LayoutOrder"]
       48 DUPTABLE                         R12 K15 [{"Tile", "Label"}]
       49 GETUPVAL                         R13 2
       50 GETUPVAL                         R14 3
       51 DUPTABLE                         R15 K17 [{"tag", "Size", "onActivated"}]
       52 LOADK                            R16 K18 ["bg-shift-300 radius-small"]
       53 SETTABLEKS                       R16 R15 K5 ["tag"]
       55 GETIMPORT                        R16 K12 [UDim2.fromOffset]
       57 LOADN                            R17 70
       58 LOADN                            R18 70
       59 CALL                             R16 2 1
       60 SETTABLEKS                       R16 R15 K6 ["Size"]
       62 NEWCLOSURE                       R16 P0
       63 CAPTURE                          VAL R7
       64 CAPTURE                          UPVAL U0
       65 CAPTURE                          VAL R5
       66 SETTABLEKS                       R16 R15 K16 ["onActivated"]
       68 DUPTABLE                         R16 K22 [{"Image", "UIPadding", "InsertingOverlay"}]
       69 GETUPVAL                         R17 2
       70 GETUPVAL                         R18 4
       71 DUPTABLE                         R19 K23 [{"tag", "Image"}]
       72 LOADK                            R20 K24 ["size-full-full radius-small anchor-center-center position-center-center"]
       73 SETTABLEKS                       R20 R19 K5 ["tag"]
       75 LOADK                            R21 K25 ["rbxthumb://type=Asset&id=%*&w=150&h=150"]
       76 GETTABLEKS                       R23 R5 K2 ["assetId"]
       78 NAMECALL                         R21 R21 K4 ["format"]
       80 CALL                             R21 2 1
       81 MOVE                             R20 R21
       82 SETTABLEKS                       R20 R19 K19 ["Image"]
       84 CALL                             R17 2 1
       85 SETTABLEKS                       R17 R16 K19 ["Image"]
       87 GETUPVAL                         R17 2
       88 LOADK                            R18 K20 ["UIPadding"]
       89 DUPTABLE                         R19 K30 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
       90 GETIMPORT                        R20 K33 [UDim.new]
       92 LOADN                            R21 0
       93 GETUPVAL                         R22 5
       94 CALL                             R20 2 1
       95 SETTABLEKS                       R20 R19 K26 ["PaddingLeft"]
       97 GETIMPORT                        R20 K33 [UDim.new]
       99 LOADN                            R21 0
      100 GETUPVAL                         R22 5
      101 CALL                             R20 2 1
      102 SETTABLEKS                       R20 R19 K27 ["PaddingRight"]
      104 GETIMPORT                        R20 K33 [UDim.new]
      106 LOADN                            R21 0
      107 GETUPVAL                         R22 5
      108 CALL                             R20 2 1
      109 SETTABLEKS                       R20 R19 K28 ["PaddingTop"]
      111 GETIMPORT                        R20 K33 [UDim.new]
      113 LOADN                            R21 0
      114 GETUPVAL                         R22 5
      115 CALL                             R20 2 1
      116 SETTABLEKS                       R20 R19 K29 ["PaddingBottom"]
      118 CALL                             R17 2 1
      119 SETTABLEKS                       R17 R16 K20 ["UIPadding"]
      121 MOVE                             R17 R7
      122 JUMPIFNOT                        R17 ; [+26]
      123 GETUPVAL                         R17 2
      124 GETUPVAL                         R18 3
      125 DUPTABLE                         R19 K36 [{"tag", "Size", "BackgroundTransparency", "ZIndex"}]
      126 LOADK                            R20 K37 ["bg-shift-300 radius-small anchor-center-center position-center-center"]
      127 SETTABLEKS                       R20 R19 K5 ["tag"]
      129 GETIMPORT                        R20 K39 [UDim2.fromScale]
      131 LOADN                            R21 1
      132 LOADN                            R22 1
      133 CALL                             R20 2 1
      134 SETTABLEKS                       R20 R19 K6 ["Size"]
      136 LOADK                            R20 K40 [0.4]
      137 SETTABLEKS                       R20 R19 K34 ["BackgroundTransparency"]
      139 LOADN                            R20 2
      140 SETTABLEKS                       R20 R19 K35 ["ZIndex"]
      142 DUPTABLE                         R20 K42 [{"Shimmer"}]
      143 GETUPVAL                         R21 2
      144 GETUPVAL                         R22 6
      145 CALL                             R21 1 1
      146 SETTABLEKS                       R21 R20 K41 ["Shimmer"]
      148 CALL                             R17 3 1
      149 SETTABLEKS                       R17 R16 K21 ["InsertingOverlay"]
      151 CALL                             R13 3 1
      152 SETTABLEKS                       R13 R12 K13 ["Tile"]
      154 LOADB                            R13 0
      155 JUMPIFEQKS                       R6 K43 [""] ; [+10]
      157 GETUPVAL                         R13 2
      158 GETUPVAL                         R14 7
      159 DUPTABLE                         R15 K45 [{"tag", "Text"}]
      160 LOADK                            R16 K46 ["size-full-0 auto-y text-body-small content-muted text-truncate-end text-align-x-center"]
      161 SETTABLEKS                       R16 R15 K5 ["tag"]
      163 SETTABLEKS                       R6 R15 K44 ["Text"]
      165 CALL                             R13 2 1
      166 SETTABLEKS                       R13 R12 K14 ["Label"]
      168 CALL                             R9 3 1
      169 SETTABLE                         R9 R0 R8
      170 FORGLOOP                         R1 2 ; [-163]
      172 RETURN                           R0 1

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
      138 JUMPIFEQKS                       R20 K31 [""] ; [+24]
      140 GETUPVAL                         R19 3
      141 GETUPVAL                         R20 5
      142 DUPTABLE                         R21 K35 [{"tag", "Image", "ImageRectOffset", "ImageRectSize", "LayoutOrder"}]
      143 LOADK                            R22 K36 ["size-400-400 radius-small"]
      144 SETTABLEKS                       R22 R21 K32 ["tag"]
      146 GETTABLEKS                       R22 R9 K30 ["Image"]
      148 SETTABLEKS                       R22 R21 K30 ["Image"]
      150 GETTABLEKS                       R22 R9 K33 ["ImageRectOffset"]
      152 SETTABLEKS                       R22 R21 K33 ["ImageRectOffset"]
      154 GETTABLEKS                       R22 R9 K34 ["ImageRectSize"]
      156 SETTABLEKS                       R22 R21 K34 ["ImageRectSize"]
      158 MOVE                             R22 R10
      159 CALL                             R22 0 1
      160 SETTABLEKS                       R22 R21 K15 ["LayoutOrder"]
      162 CALL                             R19 2 1
      163 SETTABLEKS                       R19 R18 K27 ["TypeIcon"]
      165 GETUPVAL                         R19 3
      166 GETUPVAL                         R20 7
      167 DUPTABLE                         R21 K37 [{"tag", "Text", "LayoutOrder"}]
      168 LOADK                            R22 K38 ["size-0-full auto-x text-label-small content-default text-truncate-end text-align-y-center"]
      169 SETTABLEKS                       R22 R21 K32 ["tag"]
      171 GETTABLEKS                       R22 R7 K39 ["Found"]
      173 SETTABLEKS                       R22 R21 K28 ["Text"]
      175 MOVE                             R22 R10
      176 CALL                             R22 0 1
      177 SETTABLEKS                       R22 R21 K15 ["LayoutOrder"]
      179 CALL                             R19 2 1
      180 SETTABLEKS                       R19 R18 K28 ["Text"]
      182 CALL                             R15 3 1
      183 SETTABLEKS                       R15 R14 K20 ["Header"]
      185 GETUPVAL                         R15 3
      186 GETUPVAL                         R16 12
      187 GETTABLEKS                       R16 R16 K21 ["Content"]
      189 DUPTABLE                         R17 K40 [{"tag", "LayoutOrder"}]
      190 LOADK                            R18 K41 ["col size-0-0 fill auto-y gap-small"]
      191 SETTABLEKS                       R18 R17 K32 ["tag"]
      193 MOVE                             R18 R10
      194 CALL                             R18 0 1
      195 SETTABLEKS                       R18 R17 K15 ["LayoutOrder"]
      197 DUPTABLE                         R18 K45 [{"MainCarousel", "NoResults", "ClickHint"}]
      198 MOVE                             R19 R4
      199 JUMPIFNOT                        R19 ; [+31]
      200 GETUPVAL                         R19 3
      201 GETUPVAL                         R20 14
      202 DUPTABLE                         R21 K47 [{"tag", "scroll", "LayoutOrder"}]
      203 LOADK                            R22 K48 ["size-full-0 auto-y Component-Carousel"]
      204 SETTABLEKS                       R22 R21 K32 ["tag"]
      206 SETTABLEKS                       R6 R21 K46 ["scroll"]
      208 MOVE                             R22 R10
      209 CALL                             R22 0 1
      210 SETTABLEKS                       R22 R21 K15 ["LayoutOrder"]
      212 DUPTABLE                         R22 K50 [{"Container"}]
      213 GETUPVAL                         R23 3
      214 GETUPVAL                         R24 4
      215 DUPTABLE                         R25 K51 [{"tag", "testId"}]
      216 LOADK                            R26 K52 ["row auto-xy gap-small padding-bottom-xsmall"]
      217 SETTABLEKS                       R26 R25 K32 ["tag"]
      219 GETUPVAL                         R26 13
      220 GETTABLEKS                       R26 R26 K53 ["Carousel"]
      222 GETTABLEKS                       R26 R26 K49 ["Container"]
      224 SETTABLEKS                       R26 R25 K23 ["testId"]
      226 MOVE                             R26 R5
      227 CALL                             R23 3 1
      228 SETTABLEKS                       R23 R22 K49 ["Container"]
      230 CALL                             R19 3 1
      231 SETTABLEKS                       R19 R18 K42 ["MainCarousel"]
      233 NOT                              R19 R4
      234 JUMPIFNOT                        R19 ; [+19]
      235 GETUPVAL                         R19 3
      236 GETUPVAL                         R20 7
      237 DUPTABLE                         R21 K37 [{"tag", "Text", "LayoutOrder"}]
      238 LOADK                            R22 K54 ["size-0-0 auto-xy text-body-small content-muted"]
      239 SETTABLEKS                       R22 R21 K32 ["tag"]
      241 GETUPVAL                         R22 8
      242 LOADK                            R24 K25 ["AssetSearch"]
      243 LOADK                            R25 K43 ["NoResults"]
      244 NAMECALL                         R22 R22 K55 ["getText"]
      246 CALL                             R22 3 1
      247 SETTABLEKS                       R22 R21 K28 ["Text"]
      249 MOVE                             R22 R10
      250 CALL                             R22 0 1
      251 SETTABLEKS                       R22 R21 K15 ["LayoutOrder"]
      253 CALL                             R19 2 1
      254 SETTABLEKS                       R19 R18 K43 ["NoResults"]
      256 MOVE                             R19 R4
      257 JUMPIFNOT                        R19 ; [+27]
      258 GETUPVAL                         R19 3
      259 GETUPVAL                         R20 7
      260 DUPTABLE                         R21 K37 [{"tag", "Text", "LayoutOrder"}]
      261 LOADK                            R22 K54 ["size-0-0 auto-xy text-body-small content-muted"]
      262 SETTABLEKS                       R22 R21 K32 ["tag"]
      264 JUMPIFNOT                        R3 ; [+7]
      265 GETUPVAL                         R22 8
      266 LOADK                            R24 K25 ["AssetSearch"]
      267 LOADK                            R25 K56 ["ClickToInsertOrPurchase"]
      268 NAMECALL                         R22 R22 K55 ["getText"]
      270 CALL                             R22 3 1
      271 JUMP                             ; [+6]
      272 GETUPVAL                         R22 8
      273 LOADK                            R24 K25 ["AssetSearch"]
      274 LOADK                            R25 K57 ["ClickToInsert"]
      275 NAMECALL                         R22 R22 K55 ["getText"]
      277 CALL                             R22 3 1
      278 SETTABLEKS                       R22 R21 K28 ["Text"]
      280 MOVE                             R22 R10
      281 CALL                             R22 0 1
      282 SETTABLEKS                       R22 R21 K15 ["LayoutOrder"]
      284 CALL                             R19 2 1
      285 SETTABLEKS                       R19 R18 K44 ["ClickHint"]
      287 CALL                             R15 3 1
      288 SETTABLEKS                       R15 R14 K21 ["Content"]
      290 CALL                             R11 3 -1
      291 RETURN                           R11 -1

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
       15 DUPTABLE                         R1 K11 [{"type", "mode", "query", "assetType", "resultCount", "results", "expanded"}]
       16 GETTABLEKS                       R2 R0 K5 ["type"]
       18 SETTABLEKS                       R2 R1 K5 ["type"]
       20 GETTABLEKS                       R2 R0 K3 ["mode"]
       22 SETTABLEKS                       R2 R1 K3 ["mode"]
       24 GETTABLEKS                       R2 R0 K6 ["query"]
       26 SETTABLEKS                       R2 R1 K6 ["query"]
       28 GETTABLEKS                       R2 R0 K7 ["assetType"]
       30 SETTABLEKS                       R2 R1 K7 ["assetType"]
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
       13 JUMPIFNOTEQ                      R2 R3 ; [+41]
       15 DUPTABLE                         R2 K13 [{"type", "mode", "query", "assetType", "resultCount", "results", "expanded", "onItemClicked", "insertingAssetIds"}]
       16 GETTABLEKS                       R3 R0 K5 ["type"]
       18 SETTABLEKS                       R3 R2 K5 ["type"]
       20 GETTABLEKS                       R3 R0 K3 ["mode"]
       22 SETTABLEKS                       R3 R2 K3 ["mode"]
       24 GETTABLEKS                       R3 R0 K6 ["query"]
       26 SETTABLEKS                       R3 R2 K6 ["query"]
       28 GETTABLEKS                       R3 R0 K7 ["assetType"]
       30 SETTABLEKS                       R3 R2 K7 ["assetType"]
       32 GETTABLEKS                       R3 R0 K8 ["resultCount"]
       34 SETTABLEKS                       R3 R2 K8 ["resultCount"]
       36 GETTABLEKS                       R3 R0 K9 ["results"]
       38 SETTABLEKS                       R3 R2 K9 ["results"]
       40 GETTABLEKS                       R3 R0 K10 ["expanded"]
       42 SETTABLEKS                       R3 R2 K10 ["expanded"]
       44 GETUPVAL                         R3 2
       45 GETTABLEKS                       R3 R3 K14 ["createUnimplemented"]
       47 LOADK                            R4 K11 ["onItemClicked"]
       48 CALL                             R3 1 1
       49 SETTABLEKS                       R3 R2 K11 ["onItemClicked"]
       51 LOADNIL                          R3
       52 SETTABLEKS                       R3 R2 K12 ["insertingAssetIds"]
       54 RETURN                           R2 1
       55 DUPTABLE                         R2 K16 [{"type", "mode", "isError"}]
       56 GETTABLEKS                       R3 R0 K5 ["type"]
       58 SETTABLEKS                       R3 R2 K5 ["type"]
       60 GETUPVAL                         R3 1
       61 GETTABLEKS                       R3 R3 K17 ["Preparing"]
       63 SETTABLEKS                       R3 R2 K3 ["mode"]
       65 LOADB                            R3 1
       66 SETTABLEKS                       R3 R2 K15 ["isError"]
       68 RETURN                           R2 1

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
      166 CAPTURE                          VAL R7
      167 CAPTURE                          VAL R16
      168 CAPTURE                          VAL R9
      169 CAPTURE                          VAL R12
      170 CAPTURE                          VAL R11
      171 CAPTURE                          VAL R18
      172 CAPTURE                          VAL R1
      173 CAPTURE                          VAL R8
      174 CAPTURE                          VAL R15
      175 DUPCLOSURE                       R24 K50 [PROTO_8]
      176 CAPTURE                          VAL R20
      177 CAPTURE                          VAL R19
      178 CAPTURE                          VAL R23
      179 CAPTURE                          VAL R21
      180 CAPTURE                          VAL R2
      181 DUPTABLE                         R25 K53 [{"toMeta", "fromMeta"}]
      182 DUPCLOSURE                       R26 K54 [PROTO_9]
      183 CAPTURE                          VAL R13
      184 CAPTURE                          VAL R20
      185 SETTABLEKS                       R26 R25 K51 ["toMeta"]
      187 DUPCLOSURE                       R26 K55 [PROTO_10]
      188 CAPTURE                          VAL R13
      189 CAPTURE                          VAL R20
      190 CAPTURE                          VAL R5
      191 SETTABLEKS                       R26 R25 K52 ["fromMeta"]
      193 DUPTABLE                         R26 K60 [{"Type", "ContentWidget", "Serialization", "Modes"}]
      194 LOADK                            R27 K61 ["AssetSearch"]
      195 SETTABLEKS                       R27 R26 K56 ["Type"]
      197 GETTABLEKS                       R27 R4 K62 ["memo"]
      199 MOVE                             R28 R24
      200 CALL                             R27 1 1
      201 SETTABLEKS                       R27 R26 K57 ["ContentWidget"]
      203 SETTABLEKS                       R25 R26 K58 ["Serialization"]
      205 SETTABLEKS                       R20 R26 K59 ["Modes"]
      207 RETURN                           R26 1
