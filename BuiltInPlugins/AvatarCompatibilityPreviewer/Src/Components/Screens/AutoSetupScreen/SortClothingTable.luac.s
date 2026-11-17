PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["decrementCount"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["incrementCount"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 NEWCLOSURE                       R0 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U1
        8 RETURN                           R0 1

PROTO_2:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["ASSET_CLASSIFICATION_OPTIONS"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 DUPTABLE                         R8 K3 [{"Id", "Label"}]
        9 SETTABLEKS                       R5 R8 K1 ["Id"]
       11 GETUPVAL                         R9 1
       12 LOADK                            R11 K4 ["SortClothingTable"]
       13 MOVE                             R12 R5
       14 NAMECALL                         R9 R9 K5 ["getText"]
       16 CALL                             R9 3 1
       17 SETTABLEKS                       R9 R8 K2 ["Label"]
       19 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       21 MOVE                             R7 R0
       22 GETIMPORT                        R6 K8 [table.insert]
       24 CALL                             R6 2 0
       25 FORGLOOP                         R1 2 ; [-18]
       27 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQKNIL                     R1 ; [+5]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R2 R0 K0 ["Id"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R2 K1 ["X"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["ColumnIndex"]
        2 JUMPIFEQKN                       R1 K1 [2] ; [+8]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K2 ["createElement"]
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R0
        9 CALL                             R1 2 -1
       10 RETURN                           R1 -1
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K3 ["useContext"]
       14 GETUPVAL                         R2 2
       15 GETTABLEKS                       R2 R2 K4 ["Context"]
       17 CALL                             R1 1 1
       18 GETUPVAL                         R2 3
       19 NAMECALL                         R2 R2 K5 ["use"]
       21 CALL                             R2 1 1
       22 GETUPVAL                         R3 4
       23 GETTABLEKS                       R4 R0 K6 ["Row"]
       25 GETTABLEKS                       R4 R4 K7 ["Instance"]
       27 CALL                             R3 1 2
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R5 R5 K8 ["useEffect"]
       31 NEWCLOSURE                       R6 P0
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R3
       34 NEWTABLE                         R7 0 1
       36 MOVE                             R8 R3
       37 SETLIST                          R7 R8 1 [1]
       39 CALL                             R5 2 0
       40 GETUPVAL                         R5 0
       41 GETTABLEKS                       R5 R5 K9 ["useMemo"]
       43 NEWCLOSURE                       R6 P1
       44 CAPTURE                          UPVAL U5
       45 CAPTURE                          VAL R2
       46 NEWTABLE                         R7 0 1
       48 GETUPVAL                         R8 5
       49 GETTABLEKS                       R8 R8 K10 ["ASSET_CLASSIFICATION_OPTIONS"]
       51 SETLIST                          R7 R8 1 [1]
       53 CALL                             R5 2 1
       54 GETUPVAL                         R6 0
       55 GETTABLEKS                       R6 R6 K11 ["useCallback"]
       57 NEWCLOSURE                       R7 P2
       58 CAPTURE                          VAL R4
       59 NEWTABLE                         R8 0 1
       61 MOVE                             R9 R4
       62 SETLIST                          R8 R9 1 [1]
       64 CALL                             R6 2 1
       65 GETUPVAL                         R7 0
       66 GETTABLEKS                       R7 R7 K12 ["useState"]
       68 LOADN                            R8 100
       69 CALL                             R7 1 2
       70 GETTABLEKS                       R9 R0 K13 ["Style"]
       72 GETTABLEKS                       R11 R0 K14 ["Emphasis"]
       74 JUMPIFNOT                        R11 ; [+3]
       75 GETTABLEKS                       R10 R9 K15 ["BackgroundOdd"]
       77 JUMP                             ; [+2]
       78 GETTABLEKS                       R10 R9 K16 ["BackgroundEven"]
       80 GETIMPORT                        R11 K19 [UDim.new]
       82 GETTABLEKS                       R14 R0 K21 ["Columns"]
       84 LENGTH                           R13 R14
       85 DIVRK                            R12 K20 [1] R13
       86 LOADN                            R13 0
       87 CALL                             R11 2 1
       88 GETTABLEKS                       R12 R0 K22 ["CellProps"]
       90 GETTABLEKS                       R12 R12 K23 ["Padding"]
       92 GETTABLEKS                       R14 R12 K24 ["Left"]
       94 GETTABLEKS                       R15 R12 K25 ["Right"]
       96 ADD                              R13 R14 R15
       97 GETUPVAL                         R14 0
       98 GETTABLEKS                       R14 R14 K2 ["createElement"]
      100 GETUPVAL                         R15 6
      101 NEWTABLE                         R16 16 0
      103 GETIMPORT                        R17 K28 [Enum.HorizontalAlignment.Left]
      105 SETTABLEKS                       R17 R16 K27 ["HorizontalAlignment"]
      107 GETTABLEKS                       R17 R0 K0 ["ColumnIndex"]
      109 SETTABLEKS                       R17 R16 K29 ["LayoutOrder"]
      111 GETIMPORT                        R17 K32 [Enum.FillDirection.Horizontal]
      113 SETTABLEKS                       R17 R16 K33 ["Layout"]
      115 SETTABLEKS                       R12 R16 K23 ["Padding"]
      117 LOADK                            R17 K34 ["Box"]
      118 SETTABLEKS                       R17 R16 K13 ["Style"]
      120 SETTABLEKS                       R10 R16 K35 ["BackgroundColor3"]
      122 LOADN                            R17 1
      123 SETTABLEKS                       R17 R16 K36 ["BorderSizePixel"]
      125 GETTABLEKS                       R17 R9 K37 ["Border"]
      127 SETTABLEKS                       R17 R16 K38 ["BorderColor3"]
      129 GETIMPORT                        R17 K40 [UDim2.new]
      131 GETTABLEKS                       R18 R11 K41 ["Scale"]
      133 GETTABLEKS                       R19 R11 K42 ["Offset"]
      135 LOADN                            R20 1
      136 LOADN                            R21 0
      137 CALL                             R17 4 1
      138 SETTABLEKS                       R17 R16 K43 ["Size"]
      140 LOADB                            R17 1
      141 SETTABLEKS                       R17 R16 K44 ["ClipsDescendants"]
      143 GETUPVAL                         R17 0
      144 GETTABLEKS                       R17 R17 K45 ["Change"]
      146 GETTABLEKS                       R17 R17 K46 ["AbsoluteSize"]
      148 NEWCLOSURE                       R18 P3
      149 CAPTURE                          VAL R8
      150 SETTABLE                         R18 R16 R17
      151 DUPTABLE                         R17 K48 [{"SelectInput"}]
      152 JUMPIFEQKNIL                     R4 ; [+31]
      154 GETUPVAL                         R18 0
      155 GETTABLEKS                       R18 R18 K2 ["createElement"]
      157 GETUPVAL                         R19 7
      158 DUPTABLE                         R20 K54 [{"Items", "OnItemActivated", "PlaceholderText", "SelectedId", "Size", "Width"}]
      159 SETTABLEKS                       R5 R20 K49 ["Items"]
      161 SETTABLEKS                       R6 R20 K50 ["OnItemActivated"]
      163 LOADK                            R23 K55 ["SortClothingTable"]
      164 LOADK                            R24 K51 ["PlaceholderText"]
      165 NAMECALL                         R21 R2 K56 ["getText"]
      167 CALL                             R21 3 1
      168 SETTABLEKS                       R21 R20 K51 ["PlaceholderText"]
      170 SETTABLEKS                       R3 R20 K52 ["SelectedId"]
      172 GETIMPORT                        R21 K58 [UDim2.fromScale]
      174 LOADN                            R22 1
      175 LOADN                            R23 1
      176 CALL                             R21 2 1
      177 SETTABLEKS                       R21 R20 K43 ["Size"]
      179 SUB                              R21 R7 R13
      180 SETTABLEKS                       R21 R20 K53 ["Width"]
      182 CALL                             R18 2 1
      183 JUMP                             ; [+71]
      184 GETUPVAL                         R18 0
      185 GETTABLEKS                       R18 R18 K2 ["createElement"]
      187 GETUPVAL                         R19 8
      188 GETTABLEKS                       R19 R19 K59 ["Tooltip"]
      190 DUPTABLE                         R20 K64 [{"title", "text", "side", "align"}]
      191 JUMPIFNOTEQKS                    R3 K65 ["Avatar"] ; [+7]
      193 LOADK                            R23 K55 ["SortClothingTable"]
      194 LOADK                            R24 K66 ["AvatarExplanationTitle"]
      195 NAMECALL                         R21 R2 K56 ["getText"]
      197 CALL                             R21 3 1
      198 JUMP                             ; [+5]
      199 LOADK                            R23 K55 ["SortClothingTable"]
      200 LOADK                            R24 K67 ["BodyExplanationTitle"]
      201 NAMECALL                         R21 R2 K56 ["getText"]
      203 CALL                             R21 3 1
      204 SETTABLEKS                       R21 R20 K60 ["title"]
      206 JUMPIFNOTEQKS                    R3 K65 ["Avatar"] ; [+7]
      208 LOADK                            R23 K55 ["SortClothingTable"]
      209 LOADK                            R24 K68 ["AvatarExplanationDescription"]
      210 NAMECALL                         R21 R2 K56 ["getText"]
      212 CALL                             R21 3 1
      213 JUMP                             ; [+1]
      214 LOADNIL                          R21
      215 SETTABLEKS                       R21 R20 K61 ["text"]
      217 GETUPVAL                         R21 8
      218 GETTABLEKS                       R21 R21 K69 ["Enums"]
      220 GETTABLEKS                       R21 R21 K70 ["PopoverSide"]
      222 GETTABLEKS                       R21 R21 K71 ["Bottom"]
      224 SETTABLEKS                       R21 R20 K62 ["side"]
      226 GETUPVAL                         R21 8
      227 GETTABLEKS                       R21 R21 K69 ["Enums"]
      229 GETTABLEKS                       R21 R21 K72 ["PopoverAlign"]
      231 GETTABLEKS                       R21 R21 K73 ["Start"]
      233 SETTABLEKS                       R21 R20 K63 ["align"]
      235 GETUPVAL                         R21 0
      236 GETTABLEKS                       R21 R21 K2 ["createElement"]
      238 GETUPVAL                         R22 9
      239 DUPTABLE                         R23 K77 [{"Position", "Text", "TextXAlignment"}]
      240 GETIMPORT                        R24 K79 [UDim2.fromOffset]
      242 LOADN                            R25 10
      243 LOADN                            R26 0
      244 CALL                             R24 2 1
      245 SETTABLEKS                       R24 R23 K74 ["Position"]
      247 SETTABLEKS                       R3 R23 K75 ["Text"]
      249 GETIMPORT                        R24 K80 [Enum.TextXAlignment.Left]
      251 SETTABLEKS                       R24 R23 K76 ["TextXAlignment"]
      253 CALL                             R21 2 -1
      254 CALL                             R18 -1 1
      255 SETTABLEKS                       R18 R17 K47 ["SelectInput"]
      257 CALL                             R14 3 -1
      258 RETURN                           R14 -1

PROTO_6:
        0 DUPTABLE                         R1 K2 [{"Name", "Instance"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K3 ["getInstanceNameWithoutClassification"]
        4 GETTABLEKS                       R3 R0 K0 ["Name"]
        6 CALL                             R2 1 1
        7 SETTABLEKS                       R2 R1 K0 ["Name"]
        9 SETTABLEKS                       R0 R1 K1 ["Instance"]
       11 RETURN                           R1 1

PROTO_7:
        0 MOVE                             R2 R1
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 LOADK                            R9 K0 ["Model"]
        5 NAMECALL                         R7 R6 K1 ["IsA"]
        7 CALL                             R7 2 1
        8 JUMPIF                           R7 ; [+5]
        9 LOADK                            R9 K2 ["BasePart"]
       10 NAMECALL                         R7 R6 K1 ["IsA"]
       12 CALL                             R7 2 1
       13 JUMPIFNOT                        R7 ; [+17]
       14 DUPTABLE                         R9 K5 [{"Name", "Instance"}]
       15 GETUPVAL                         R10 0
       16 GETTABLEKS                       R10 R10 K6 ["getInstanceNameWithoutClassification"]
       18 GETTABLEKS                       R11 R6 K3 ["Name"]
       20 CALL                             R10 1 1
       21 SETTABLEKS                       R10 R9 K3 ["Name"]
       23 SETTABLEKS                       R6 R9 K4 ["Instance"]
       25 FASTCALL2                        TABLE_INSERT R0 R9 ; [+4]
       27 MOVE                             R8 R0
       28 GETIMPORT                        R7 K9 [table.insert]
       30 CALL                             R7 2 0
       31 FORGLOOP                         R2 2 ; [-28]
       33 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R3 R0 K0 ["Name"]
        2 GETTABLEKS                       R4 R1 K0 ["Name"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+4]
        3 NEWTABLE                         R0 0 0
        5 RETURN                           R0 1
        6 DUPCLOSURE                       R0 K0 [PROTO_6]
        7 CAPTURE                          UPVAL U1
        8 DUPCLOSURE                       R1 K1 [PROTO_7]
        9 CAPTURE                          UPVAL U1
       10 NEWTABLE                         R2 0 0
       12 MOVE                             R3 R1
       13 MOVE                             R4 R2
       14 GETUPVAL                         R5 0
       15 CALL                             R3 2 0
       16 GETUPVAL                         R3 0
       17 LOADNIL                          R4
       18 LOADNIL                          R5
       19 FORGPREP                         R3
       20 LOADK                            R10 K2 ["Folder"]
       21 NAMECALL                         R8 R7 K3 ["IsA"]
       23 CALL                             R8 2 1
       24 JUMPIFNOT                        R8 ; [+6]
       25 MOVE                             R8 R1
       26 MOVE                             R9 R2
       27 NAMECALL                         R10 R7 K4 ["GetChildren"]
       29 CALL                             R10 1 -1
       30 CALL                             R8 -1 0
       31 FORGLOOP                         R3 2 ; [-12]
       33 GETIMPORT                        R3 K7 [table.sort]
       35 MOVE                             R4 R2
       36 DUPCLOSURE                       R5 K8 [PROTO_8]
       37 CALL                             R3 2 0
       38 RETURN                           R2 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 LOADK                            R4 K1 ["SortClothingTable"]
        6 NAMECALL                         R2 R2 K0 ["use"]
        8 CALL                             R2 2 1
        9 GETTABLEKS                       R4 R0 K2 ["target"]
       11 JUMPIFNOT                        R4 ; [+5]
       12 GETTABLEKS                       R3 R0 K2 ["target"]
       14 GETTABLEKS                       R3 R3 K3 ["lastFilteredSelection"]
       16 JUMP                             ; [+1]
       17 LOADNIL                          R3
       18 GETUPVAL                         R4 2
       19 GETTABLEKS                       R4 R4 K4 ["useMemo"]
       21 NEWCLOSURE                       R5 P0
       22 CAPTURE                          VAL R3
       23 CAPTURE                          UPVAL U3
       24 NEWTABLE                         R6 0 1
       26 MOVE                             R7 R3
       27 SETLIST                          R6 R7 1 [1]
       29 CALL                             R4 2 1
       30 GETIMPORT                        R5 K6 [next]
       32 MOVE                             R6 R4
       33 CALL                             R5 1 1
       34 JUMPIF                           R5 ; [+2]
       35 LOADNIL                          R5
       36 RETURN                           R5 1
       37 GETUPVAL                         R5 2
       38 GETTABLEKS                       R5 R5 K7 ["createElement"]
       40 GETUPVAL                         R6 4
       41 DUPTABLE                         R7 K18 [{["LayoutOrder"] = 2, ["Rows"], ["Columns"], ["RowHeight"], ["Size"], ["Scroll"] = True, ["CellComponent"], ["CellProps"]}]
       42 SETTABLEKS                       R4 R7 K10 ["Rows"]
       44 NEWTABLE                         R8 0 2
       46 DUPTABLE                         R9 K20 [{"Name"}]
       47 LOADK                            R12 K1 ["SortClothingTable"]
       48 LOADK                            R13 K19 ["Name"]
       49 NAMECALL                         R10 R1 K21 ["getText"]
       51 CALL                             R10 3 1
       52 SETTABLEKS                       R10 R9 K19 ["Name"]
       54 DUPTABLE                         R10 K20 [{"Name"}]
       55 LOADK                            R13 K1 ["SortClothingTable"]
       56 LOADK                            R14 K22 ["Type"]
       57 NAMECALL                         R11 R1 K21 ["getText"]
       59 CALL                             R11 3 1
       60 SETTABLEKS                       R11 R10 K19 ["Name"]
       62 SETLIST                          R8 R9 2 [1]
       64 SETTABLEKS                       R8 R7 K11 ["Columns"]
       66 GETTABLEKS                       R8 R2 K12 ["RowHeight"]
       68 SETTABLEKS                       R8 R7 K12 ["RowHeight"]
       70 GETIMPORT                        R8 K25 [UDim2.new]
       72 LOADN                            R9 1
       73 LOADN                            R10 0
       74 LOADN                            R11 1
       75 LOADN                            R12 -24
       76 CALL                             R8 4 1
       77 SETTABLEKS                       R8 R7 K13 ["Size"]
       79 GETUPVAL                         R8 5
       80 SETTABLEKS                       R8 R7 K16 ["CellComponent"]
       82 DUPTABLE                         R8 K27 [{"Padding"}]
       83 GETTABLEKS                       R9 R2 K28 ["CellPadding"]
       85 SETTABLEKS                       R9 R8 K26 ["Padding"]
       87 SETTABLEKS                       R8 R7 K17 ["CellProps"]
       89 CALL                             R5 2 -1
       90 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["AssetClassificationUtils"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Components"]
       22 GETTABLEKS                       R3 R3 K10 ["AutoSetupOptionsContext"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K11 ["Packages"]
       29 GETTABLEKS                       R4 R4 K12 ["Foundation"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K11 ["Packages"]
       36 GETTABLEKS                       R5 R5 K13 ["Framework"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K11 ["Packages"]
       43 GETTABLEKS                       R6 R6 K14 ["React"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K6 ["Src"]
       50 GETTABLEKS                       R7 R7 K9 ["Components"]
       52 GETTABLEKS                       R7 R7 K15 ["Screens"]
       54 GETTABLEKS                       R7 R7 K16 ["AutoSetupScreen"]
       56 GETTABLEKS                       R7 R7 K17 ["TableCell"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R8 R0 K6 ["Src"]
       63 GETTABLEKS                       R8 R8 K18 ["Resources"]
       65 GETTABLEKS                       R8 R8 K19 ["Theme"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R9 R0 K6 ["Src"]
       72 GETTABLEKS                       R9 R9 K20 ["Types"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R10 R0 K6 ["Src"]
       79 GETTABLEKS                       R10 R10 K21 ["Hooks"]
       81 GETTABLEKS                       R10 R10 K22 ["useSelectedAssetClassification"]
       83 CALL                             R9 1 1
       84 GETTABLEKS                       R10 R4 K23 ["UI"]
       86 GETTABLEKS                       R11 R10 K24 ["Pane"]
       88 GETTABLEKS                       R12 R10 K25 ["SelectInput"]
       90 GETTABLEKS                       R13 R10 K26 ["Table"]
       92 GETTABLEKS                       R14 R10 K27 ["TextLabel"]
       94 GETTABLEKS                       R15 R4 K28 ["ContextServices"]
       96 GETTABLEKS                       R15 R15 K29 ["Localization"]
       98 GETTABLEKS                       R16 R4 K28 ["ContextServices"]
      100 GETTABLEKS                       R16 R16 K30 ["Stylizer"]
      102 DUPCLOSURE                       R17 K31 [PROTO_5]
      103 CAPTURE                          VAL R5
      104 CAPTURE                          VAL R6
      105 CAPTURE                          VAL R2
      106 CAPTURE                          VAL R15
      107 CAPTURE                          VAL R9
      108 CAPTURE                          VAL R1
      109 CAPTURE                          VAL R11
      110 CAPTURE                          VAL R12
      111 CAPTURE                          VAL R3
      112 CAPTURE                          VAL R14
      113 DUPCLOSURE                       R18 K32 [PROTO_10]
      114 CAPTURE                          VAL R15
      115 CAPTURE                          VAL R16
      116 CAPTURE                          VAL R5
      117 CAPTURE                          VAL R1
      118 CAPTURE                          VAL R13
      119 CAPTURE                          VAL R17
      120 RETURN                           R18 1
