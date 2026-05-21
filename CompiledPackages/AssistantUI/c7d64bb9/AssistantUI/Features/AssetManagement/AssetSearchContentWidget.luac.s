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

PROTO_5:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["results"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETUPVAL                         R6 1
        9 MOVE                             R7 R5
       10 CALL                             R6 1 1
       11 JUMPIFEQKS                       R6 K1 [""] ; [+8]
       13 LOADK                            R8 K2 ["%*"]
       14 MOVE                             R10 R6
       15 NAMECALL                         R8 R8 K3 ["format"]
       17 CALL                             R8 2 1
       18 MOVE                             R7 R8
       19 JUMP                             ; [+1]
       20 LOADK                            R7 K1 [""]
       21 LOADN                            R8 5
       22 JUMPIFNOTLE                      R4 R8 ; [+41]
       24 LOADK                            R9 K4 ["Label-%*"]
       25 MOVE                             R11 R4
       26 NAMECALL                         R9 R9 K3 ["format"]
       28 CALL                             R9 2 1
       29 MOVE                             R8 R9
       30 GETUPVAL                         R9 2
       31 GETUPVAL                         R10 3
       32 GETTABLEKS                       R10 R10 K5 ["View"]
       34 DUPTABLE                         R11 K9 [{"tag", "Size", "LayoutOrder"}]
       35 LOADK                            R12 K10 ["col auto-xy align-x-center"]
       36 SETTABLEKS                       R12 R11 K6 ["tag"]
       38 GETIMPORT                        R12 K13 [UDim2.fromOffset]
       40 LOADN                            R13 70
       41 LOADN                            R14 0
       42 CALL                             R12 2 1
       43 SETTABLEKS                       R12 R11 K7 ["Size"]
       45 SETTABLEKS                       R4 R11 K8 ["LayoutOrder"]
       47 DUPTABLE                         R12 K15 [{"BadgeText"}]
       48 LOADB                            R13 0
       49 JUMPIFEQKS                       R7 K1 [""] ; [+10]
       51 GETUPVAL                         R13 2
       52 GETUPVAL                         R14 4
       53 DUPTABLE                         R15 K17 [{"tag", "Text"}]
       54 LOADK                            R16 K18 ["size-0-0 auto-xy text-body-small content-muted text-truncate-end text-align-x-center"]
       55 SETTABLEKS                       R16 R15 K6 ["tag"]
       57 SETTABLEKS                       R7 R15 K16 ["Text"]
       59 CALL                             R13 2 1
       60 SETTABLEKS                       R13 R12 K14 ["BadgeText"]
       62 CALL                             R9 3 1
       63 SETTABLE                         R9 R0 R8
       64 FORGLOOP                         R1 2 ; [-57]
       66 RETURN                           R0 1

PROTO_6:
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
       24 NEWTABLE                         R4 0 0
       26 GETTABLEKS                       R5 R0 K4 ["results"]
       28 LOADNIL                          R6
       29 LOADNIL                          R7
       30 FORGPREP                         R5
       31 LOADK                            R11 K6 ["rbxthumb://type=Asset&id=%*&w=150&h=150"]
       32 GETTABLEKS                       R13 R9 K7 ["assetId"]
       34 NAMECALL                         R11 R11 K8 ["format"]
       36 CALL                             R11 2 1
       37 MOVE                             R10 R11
       38 DUPTABLE                         R13 K11 [{"uri", "onActivated"}]
       39 SETTABLEKS                       R10 R13 K9 ["uri"]
       41 NEWCLOSURE                       R14 P0
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R9
       44 SETTABLEKS                       R14 R13 K10 ["onActivated"]
       46 FASTCALL2                        TABLE_INSERT R4 R13 ; [+4]
       48 MOVE                             R12 R4
       49 GETIMPORT                        R11 K14 [table.insert]
       51 CALL                             R11 2 0
       52 FORGLOOP                         R5 2 ; [-22]
       54 GETUPVAL                         R5 1
       55 GETTABLEKS                       R5 R5 K15 ["useMemo"]
       57 NEWCLOSURE                       R6 P1
       58 CAPTURE                          VAL R0
       59 CAPTURE                          UPVAL U2
       60 NEWTABLE                         R7 0 3
       62 GETUPVAL                         R8 2
       63 GETTABLEKS                       R8 R8 K16 ["locale"]
       65 GETTABLEKS                       R9 R0 K17 ["resultCount"]
       67 GETTABLEKS                       R10 R0 K18 ["query"]
       69 SETLIST                          R7 R8 3 [1]
       71 CALL                             R5 2 1
       72 GETUPVAL                         R6 3
       73 CALL                             R6 0 1
       74 GETUPVAL                         R7 4
       75 GETUPVAL                         R8 5
       76 GETTABLEKS                       R8 R8 K19 ["Root"]
       78 DUPTABLE                         R9 K24 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
       79 GETTABLEKS                       R10 R0 K20 ["LayoutOrder"]
       81 SETTABLEKS                       R10 R9 K20 ["LayoutOrder"]
       83 LOADB                            R10 1
       84 SETTABLEKS                       R10 R9 K21 ["expanded"]
       86 GETTABLEKS                       R10 R0 K22 ["contentId"]
       88 SETTABLEKS                       R10 R9 K22 ["contentId"]
       90 GETTABLEKS                       R10 R0 K23 ["editThisContent"]
       92 SETTABLEKS                       R10 R9 K23 ["editThisContent"]
       94 DUPTABLE                         R10 K27 [{"Header", "Content"}]
       95 GETUPVAL                         R11 4
       96 GETUPVAL                         R12 5
       97 GETTABLEKS                       R12 R12 K25 ["Header"]
       99 DUPTABLE                         R13 K29 [{"LayoutOrder", "testId"}]
      100 MOVE                             R14 R6
      101 CALL                             R14 0 1
      102 SETTABLEKS                       R14 R13 K20 ["LayoutOrder"]
      104 GETUPVAL                         R14 6
      105 GETTABLEKS                       R14 R14 K30 ["AssetSearch"]
      107 GETTABLEKS                       R14 R14 K31 ["Expand"]
      109 SETTABLEKS                       R14 R13 K28 ["testId"]
      111 DUPTABLE                         R14 K33 [{"Text"}]
      112 GETUPVAL                         R15 4
      113 GETUPVAL                         R16 7
      114 DUPTABLE                         R17 K35 [{"tag", "Text", "LayoutOrder"}]
      115 LOADK                            R18 K36 ["size-0-full auto-x text-label-small content-default text-truncate-end text-align-y-center"]
      116 SETTABLEKS                       R18 R17 K34 ["tag"]
      118 GETTABLEKS                       R18 R5 K37 ["Found"]
      120 SETTABLEKS                       R18 R17 K32 ["Text"]
      122 MOVE                             R18 R6
      123 CALL                             R18 0 1
      124 SETTABLEKS                       R18 R17 K20 ["LayoutOrder"]
      126 CALL                             R15 2 1
      127 SETTABLEKS                       R15 R14 K32 ["Text"]
      129 CALL                             R11 3 1
      130 SETTABLEKS                       R11 R10 K25 ["Header"]
      132 GETUPVAL                         R11 4
      133 GETUPVAL                         R12 5
      134 GETTABLEKS                       R12 R12 K26 ["Content"]
      136 DUPTABLE                         R13 K38 [{"tag", "LayoutOrder"}]
      137 LOADK                            R14 K39 ["col size-0-0 fill auto-y gap-small"]
      138 SETTABLEKS                       R14 R13 K34 ["tag"]
      140 MOVE                             R14 R6
      141 CALL                             R14 0 1
      142 SETTABLEKS                       R14 R13 K20 ["LayoutOrder"]
      144 DUPTABLE                         R14 K44 [{"MainCarousel", "NoResults", "ItemLabels", "ClickHint"}]
      145 LENGTH                           R16 R4
      146 LOADN                            R17 0
      147 JUMPIFNOTLT                      R17 R16 ; [+20]
      149 GETUPVAL                         R15 4
      150 GETUPVAL                         R16 8
      151 DUPTABLE                         R17 K49 [{"height", "imagePadding", "canSelect", "items", "LayoutOrder"}]
      152 LOADN                            R18 70
      153 SETTABLEKS                       R18 R17 K45 ["height"]
      155 SETTABLEKS                       R2 R17 K46 ["imagePadding"]
      157 LOADB                            R18 0
      158 SETTABLEKS                       R18 R17 K47 ["canSelect"]
      160 SETTABLEKS                       R4 R17 K48 ["items"]
      162 MOVE                             R18 R6
      163 CALL                             R18 0 1
      164 SETTABLEKS                       R18 R17 K20 ["LayoutOrder"]
      166 CALL                             R15 2 1
      167 JUMP                             ; [+1]
      168 LOADNIL                          R15
      169 SETTABLEKS                       R15 R14 K40 ["MainCarousel"]
      171 LOADB                            R15 0
      172 LENGTH                           R16 R4
      173 JUMPIFNOTEQKN                    R16 K50 [0] ; [+20]
      175 GETUPVAL                         R15 4
      176 GETUPVAL                         R16 7
      177 DUPTABLE                         R17 K35 [{"tag", "Text", "LayoutOrder"}]
      178 LOADK                            R18 K51 ["size-0-0 auto-xy text-body-small content-muted"]
      179 SETTABLEKS                       R18 R17 K34 ["tag"]
      181 GETUPVAL                         R18 2
      182 LOADK                            R20 K30 ["AssetSearch"]
      183 LOADK                            R21 K41 ["NoResults"]
      184 NAMECALL                         R18 R18 K52 ["getText"]
      186 CALL                             R18 3 1
      187 SETTABLEKS                       R18 R17 K32 ["Text"]
      189 MOVE                             R18 R6
      190 CALL                             R18 0 1
      191 SETTABLEKS                       R18 R17 K20 ["LayoutOrder"]
      193 CALL                             R15 2 1
      194 SETTABLEKS                       R15 R14 K41 ["NoResults"]
      196 LOADB                            R15 0
      197 LENGTH                           R16 R4
      198 LOADN                            R17 0
      199 JUMPIFNOTLT                      R17 R16 ; [+21]
      201 GETUPVAL                         R15 4
      202 GETUPVAL                         R16 0
      203 GETTABLEKS                       R16 R16 K53 ["View"]
      205 DUPTABLE                         R17 K38 [{"tag", "LayoutOrder"}]
      206 LOADK                            R18 K54 ["row size-full-0 auto-y gap-small"]
      207 SETTABLEKS                       R18 R17 K34 ["tag"]
      209 MOVE                             R18 R6
      210 CALL                             R18 0 1
      211 SETTABLEKS                       R18 R17 K20 ["LayoutOrder"]
      213 NEWCLOSURE                       R18 P2
      214 CAPTURE                          VAL R0
      215 CAPTURE                          UPVAL U9
      216 CAPTURE                          UPVAL U4
      217 CAPTURE                          UPVAL U0
      218 CAPTURE                          UPVAL U7
      219 CALL                             R18 0 1
      220 CALL                             R15 3 1
      221 SETTABLEKS                       R15 R14 K42 ["ItemLabels"]
      223 LOADB                            R15 0
      224 LENGTH                           R16 R4
      225 LOADN                            R17 0
      226 JUMPIFNOTLT                      R17 R16 ; [+28]
      228 GETUPVAL                         R15 4
      229 GETUPVAL                         R16 7
      230 DUPTABLE                         R17 K35 [{"tag", "Text", "LayoutOrder"}]
      231 LOADK                            R18 K51 ["size-0-0 auto-xy text-body-small content-muted"]
      232 SETTABLEKS                       R18 R17 K34 ["tag"]
      234 JUMPIFNOT                        R3 ; [+7]
      235 GETUPVAL                         R18 2
      236 LOADK                            R20 K30 ["AssetSearch"]
      237 LOADK                            R21 K55 ["ClickToInsertOrPurchase"]
      238 NAMECALL                         R18 R18 K52 ["getText"]
      240 CALL                             R18 3 1
      241 JUMP                             ; [+6]
      242 GETUPVAL                         R18 2
      243 LOADK                            R20 K30 ["AssetSearch"]
      244 LOADK                            R21 K56 ["ClickToInsert"]
      245 NAMECALL                         R18 R18 K52 ["getText"]
      247 CALL                             R18 3 1
      248 SETTABLEKS                       R18 R17 K32 ["Text"]
      250 MOVE                             R18 R6
      251 CALL                             R18 0 1
      252 SETTABLEKS                       R18 R17 K20 ["LayoutOrder"]
      254 CALL                             R15 2 1
      255 SETTABLEKS                       R15 R14 K43 ["ClickHint"]
      257 CALL                             R11 3 1
      258 SETTABLEKS                       R11 R10 K26 ["Content"]
      260 CALL                             R7 3 -1
      261 RETURN                           R7 -1

PROTO_7:
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

PROTO_8:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETTABLEKS                       R1 R0 K3 ["mode"]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K4 ["Results"]
       13 JUMPIFNOTEQ                      R1 R2 ; [+27]
       15 DUPTABLE                         R1 K10 [{"type", "mode", "query", "searchId", "resultCount", "results"}]
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
       40 RETURN                           R1 1
       41 DUPTABLE                         R1 K11 [{"type", "mode"}]
       42 GETTABLEKS                       R2 R0 K5 ["type"]
       44 SETTABLEKS                       R2 R1 K5 ["type"]
       46 GETUPVAL                         R2 1
       47 GETTABLEKS                       R2 R2 K12 ["Preparing"]
       49 SETTABLEKS                       R2 R1 K3 ["mode"]
       51 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 2 0
        8 GETTABLEKS                       R2 R0 K3 ["mode"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K4 ["Results"]
       13 JUMPIFNOTEQ                      R2 R3 ; [+34]
       15 DUPTABLE                         R2 K11 [{"type", "mode", "query", "searchId", "resultCount", "results", "onItemClicked"}]
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
       40 GETUPVAL                         R3 2
       41 GETTABLEKS                       R3 R3 K12 ["createUnimplemented"]
       43 LOADK                            R4 K10 ["onItemClicked"]
       44 CALL                             R3 1 1
       45 SETTABLEKS                       R3 R2 K10 ["onItemClicked"]
       47 RETURN                           R2 1
       48 DUPTABLE                         R2 K14 [{"type", "mode", "isError"}]
       49 GETTABLEKS                       R3 R0 K5 ["type"]
       51 SETTABLEKS                       R3 R2 K5 ["type"]
       53 GETUPVAL                         R3 1
       54 GETTABLEKS                       R3 R3 K15 ["Preparing"]
       56 SETTABLEKS                       R3 R2 K3 ["mode"]
       58 LOADB                            R3 1
       59 SETTABLEKS                       R3 R2 K13 ["isError"]
       61 RETURN                           R2 1

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
       16 GETTABLEKS                       R3 R0 K6 ["Components"]
       18 GETTABLEKS                       R3 R3 K8 ["Carousel"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["Cryo"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K9 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["Foundation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K9 ["Parent"]
       39 GETTABLEKS                       R6 R6 K12 ["React"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K9 ["Parent"]
       46 GETTABLEKS                       R7 R7 K13 ["ReactUtils"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K14 ["Util"]
       53 GETTABLEKS                       R8 R8 K15 ["Serializer"]
       55 GETTABLEKS                       R8 R8 K16 ["SerializerTypes"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K6 ["Components"]
       62 GETTABLEKS                       R9 R9 K17 ["ShimmerGradient"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K14 ["Util"]
       69 GETTABLEKS                       R10 R10 K18 ["TestIds"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K19 ["Resources"]
       76 GETTABLEKS                       R11 R11 K20 ["Localization"]
       78 GETTABLEKS                       R11 R11 K21 ["Translator"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K22 ["Types"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R13 R0 K23 ["Flags"]
       90 GETTABLEKS                       R13 R13 K24 ["FFlagAssistantMultipleChatPersistence"]
       92 CALL                             R12 1 1
       93 GETTABLEKS                       R13 R4 K25 ["Text"]
       95 GETTABLEKS                       R14 R6 K26 ["createNextOrder"]
       97 GETTABLEKS                       R15 R5 K27 ["createElement"]
       99 DUPTABLE                         R16 K31 [{"Preparing", "Searching", "Results"}]
      100 LOADK                            R17 K28 ["Preparing"]
      101 SETTABLEKS                       R17 R16 K28 ["Preparing"]
      103 LOADK                            R17 K29 ["Searching"]
      104 SETTABLEKS                       R17 R16 K29 ["Searching"]
      106 LOADK                            R17 K30 ["Results"]
      107 SETTABLEKS                       R17 R16 K30 ["Results"]
      109 DUPCLOSURE                       R17 K32 [PROTO_1]
      110 CAPTURE                          VAL R16
      111 CAPTURE                          VAL R5
      112 CAPTURE                          VAL R10
      113 CAPTURE                          VAL R12
      114 CAPTURE                          VAL R14
      115 CAPTURE                          VAL R15
      116 CAPTURE                          VAL R1
      117 CAPTURE                          VAL R9
      118 CAPTURE                          VAL R13
      119 CAPTURE                          VAL R8
      120 DUPCLOSURE                       R18 K33 [PROTO_2]
      121 CAPTURE                          VAL R10
      122 DUPCLOSURE                       R19 K34 [PROTO_6]
      123 CAPTURE                          VAL R4
      124 CAPTURE                          VAL R5
      125 CAPTURE                          VAL R10
      126 CAPTURE                          VAL R14
      127 CAPTURE                          VAL R15
      128 CAPTURE                          VAL R1
      129 CAPTURE                          VAL R9
      130 CAPTURE                          VAL R13
      131 CAPTURE                          VAL R2
      132 CAPTURE                          VAL R18
      133 DUPCLOSURE                       R20 K35 [PROTO_7]
      134 CAPTURE                          VAL R16
      135 CAPTURE                          VAL R15
      136 CAPTURE                          VAL R19
      137 CAPTURE                          VAL R17
      138 CAPTURE                          VAL R3
      139 DUPTABLE                         R21 K38 [{"toMeta", "fromMeta"}]
      140 DUPCLOSURE                       R22 K39 [PROTO_8]
      141 CAPTURE                          VAL R12
      142 CAPTURE                          VAL R16
      143 SETTABLEKS                       R22 R21 K36 ["toMeta"]
      145 DUPCLOSURE                       R22 K40 [PROTO_9]
      146 CAPTURE                          VAL R12
      147 CAPTURE                          VAL R16
      148 CAPTURE                          VAL R6
      149 SETTABLEKS                       R22 R21 K37 ["fromMeta"]
      151 DUPTABLE                         R22 K45 [{"Type", "ContentWidget", "Serialization", "Modes"}]
      152 LOADK                            R23 K46 ["AssetSearch"]
      153 SETTABLEKS                       R23 R22 K41 ["Type"]
      155 GETTABLEKS                       R23 R5 K47 ["memo"]
      157 MOVE                             R24 R20
      158 CALL                             R23 1 1
      159 SETTABLEKS                       R23 R22 K42 ["ContentWidget"]
      161 SETTABLEKS                       R21 R22 K43 ["Serialization"]
      163 SETTABLEKS                       R16 R22 K44 ["Modes"]
      165 RETURN                           R22 1
