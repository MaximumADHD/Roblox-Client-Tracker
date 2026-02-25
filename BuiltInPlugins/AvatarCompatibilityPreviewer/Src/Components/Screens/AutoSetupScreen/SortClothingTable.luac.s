PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["decrementCount"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["incrementCount"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 NEWCLOSURE                       R0 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U1
        8 RETURN                           R0 1

PROTO_2:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R1 R4 K0 ["ASSET_CLASSIFICATION_OPTIONS"]
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
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETUPVAL                         R1 1
        4 JUMPIFEQKNIL                     R1 ; [+5]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R2 R0 K0 ["Id"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R3 K1 ["X"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["ColumnIndex"]
        2 JUMPIFEQKN                       R1 K1 [2] ; [+8]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K2 ["createElement"]
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R0
        9 CALL                             R1 2 -1
       10 RETURN                           R1 -1
       11 GETUPVAL                         R2 2
       12 CALL                             R2 0 1
       13 JUMPIFNOT                        R2 ; [+8]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R1 R2 K3 ["useContext"]
       17 GETUPVAL                         R3 3
       18 GETTABLEKS                       R2 R3 K4 ["Context"]
       20 CALL                             R1 1 1
       21 JUMP                             ; [+1]
       22 LOADNIL                          R1
       23 GETUPVAL                         R2 4
       24 NAMECALL                         R2 R2 K5 ["use"]
       26 CALL                             R2 1 1
       27 GETUPVAL                         R3 5
       28 GETTABLEKS                       R5 R0 K6 ["Row"]
       30 GETTABLEKS                       R4 R5 K7 ["Instance"]
       32 CALL                             R3 1 2
       33 GETUPVAL                         R5 2
       34 CALL                             R5 0 1
       35 JUMPIFNOT                        R5 ; [+12]
       36 GETUPVAL                         R6 0
       37 GETTABLEKS                       R5 R6 K8 ["useEffect"]
       39 NEWCLOSURE                       R6 P0
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R3
       42 NEWTABLE                         R7 0 1
       44 MOVE                             R8 R3
       45 SETLIST                          R7 R8 1 [1]
       47 CALL                             R5 2 0
       48 GETUPVAL                         R6 0
       49 GETTABLEKS                       R5 R6 K9 ["useMemo"]
       51 NEWCLOSURE                       R6 P1
       52 CAPTURE                          UPVAL U6
       53 CAPTURE                          VAL R2
       54 NEWTABLE                         R7 0 1
       56 GETUPVAL                         R9 6
       57 GETTABLEKS                       R8 R9 K10 ["ASSET_CLASSIFICATION_OPTIONS"]
       59 SETLIST                          R7 R8 1 [1]
       61 CALL                             R5 2 1
       62 GETUPVAL                         R7 0
       63 GETTABLEKS                       R6 R7 K11 ["useCallback"]
       65 NEWCLOSURE                       R7 P2
       66 CAPTURE                          UPVAL U2
       67 CAPTURE                          VAL R4
       68 NEWTABLE                         R8 0 1
       70 MOVE                             R9 R4
       71 SETLIST                          R8 R9 1 [1]
       73 CALL                             R6 2 1
       74 GETUPVAL                         R8 0
       75 GETTABLEKS                       R7 R8 K12 ["useState"]
       77 LOADN                            R8 100
       78 CALL                             R7 1 2
       79 GETTABLEKS                       R9 R0 K13 ["Style"]
       81 GETTABLEKS                       R11 R0 K14 ["Emphasis"]
       83 JUMPIFNOT                        R11 ; [+3]
       84 GETTABLEKS                       R10 R9 K15 ["BackgroundOdd"]
       86 JUMP                             ; [+2]
       87 GETTABLEKS                       R10 R9 K16 ["BackgroundEven"]
       89 GETIMPORT                        R11 K19 [UDim.new]
       91 GETTABLEKS                       R14 R0 K21 ["Columns"]
       93 LENGTH                           R13 R14
       94 DIVRK                            R12 R20 K13 ["Style"]
       95 LOADN                            R13 0
       96 CALL                             R11 2 1
       97 GETTABLEKS                       R13 R0 K22 ["CellProps"]
       99 GETTABLEKS                       R12 R13 K23 ["Padding"]
      101 GETTABLEKS                       R14 R12 K24 ["Left"]
      103 GETTABLEKS                       R15 R12 K25 ["Right"]
      105 ADD                              R13 R14 R15
      106 GETUPVAL                         R15 0
      107 GETTABLEKS                       R14 R15 K2 ["createElement"]
      109 GETUPVAL                         R15 7
      110 NEWTABLE                         R16 16 0
      112 GETUPVAL                         R18 2
      113 CALL                             R18 0 1
      114 JUMPIFNOT                        R18 ; [+3]
      115 GETIMPORT                        R17 K28 [Enum.HorizontalAlignment.Left]
      117 JUMP                             ; [+1]
      118 LOADNIL                          R17
      119 SETTABLEKS                       R17 R16 K27 ["HorizontalAlignment"]
      121 GETTABLEKS                       R17 R0 K0 ["ColumnIndex"]
      123 SETTABLEKS                       R17 R16 K29 ["LayoutOrder"]
      125 GETUPVAL                         R18 2
      126 CALL                             R18 0 1
      127 JUMPIFNOT                        R18 ; [+3]
      128 GETIMPORT                        R17 K32 [Enum.FillDirection.Horizontal]
      130 JUMP                             ; [+1]
      131 LOADNIL                          R17
      132 SETTABLEKS                       R17 R16 K33 ["Layout"]
      134 SETTABLEKS                       R12 R16 K23 ["Padding"]
      136 LOADK                            R17 K34 ["Box"]
      137 SETTABLEKS                       R17 R16 K13 ["Style"]
      139 SETTABLEKS                       R10 R16 K35 ["BackgroundColor3"]
      141 LOADN                            R17 1
      142 SETTABLEKS                       R17 R16 K36 ["BorderSizePixel"]
      144 GETTABLEKS                       R17 R9 K37 ["Border"]
      146 SETTABLEKS                       R17 R16 K38 ["BorderColor3"]
      148 GETIMPORT                        R17 K40 [UDim2.new]
      150 GETTABLEKS                       R18 R11 K41 ["Scale"]
      152 GETTABLEKS                       R19 R11 K42 ["Offset"]
      154 LOADN                            R20 1
      155 LOADN                            R21 0
      156 CALL                             R17 4 1
      157 SETTABLEKS                       R17 R16 K43 ["Size"]
      159 LOADB                            R17 1
      160 SETTABLEKS                       R17 R16 K44 ["ClipsDescendants"]
      162 GETUPVAL                         R19 0
      163 GETTABLEKS                       R18 R19 K45 ["Change"]
      165 GETTABLEKS                       R17 R18 K46 ["AbsoluteSize"]
      167 NEWCLOSURE                       R18 P3
      168 CAPTURE                          VAL R8
      169 SETTABLE                         R18 R16 R17
      170 DUPTABLE                         R17 K48 [{"SelectInput"}]
      171 GETUPVAL                         R19 2
      172 CALL                             R19 0 1
      173 JUMPIFNOT                        R19 ; [+2]
      174 JUMPIFEQKNIL                     R4 ; [+31]
      176 GETUPVAL                         R19 0
      177 GETTABLEKS                       R18 R19 K2 ["createElement"]
      179 GETUPVAL                         R19 8
      180 DUPTABLE                         R20 K54 [{"Items", "OnItemActivated", "PlaceholderText", "SelectedId", "Size", "Width"}]
      181 SETTABLEKS                       R5 R20 K49 ["Items"]
      183 SETTABLEKS                       R6 R20 K50 ["OnItemActivated"]
      185 LOADK                            R23 K55 ["SortClothingTable"]
      186 LOADK                            R24 K51 ["PlaceholderText"]
      187 NAMECALL                         R21 R2 K56 ["getText"]
      189 CALL                             R21 3 1
      190 SETTABLEKS                       R21 R20 K51 ["PlaceholderText"]
      192 SETTABLEKS                       R3 R20 K52 ["SelectedId"]
      194 GETIMPORT                        R21 K58 [UDim2.fromScale]
      196 LOADN                            R22 1
      197 LOADN                            R23 1
      198 CALL                             R21 2 1
      199 SETTABLEKS                       R21 R20 K43 ["Size"]
      201 SUB                              R21 R7 R13
      202 SETTABLEKS                       R21 R20 K53 ["Width"]
      204 CALL                             R18 2 1
      205 JUMP                             ; [+71]
      206 GETUPVAL                         R19 0
      207 GETTABLEKS                       R18 R19 K2 ["createElement"]
      209 GETUPVAL                         R20 9
      210 GETTABLEKS                       R19 R20 K59 ["Tooltip"]
      212 DUPTABLE                         R20 K64 [{"title", "text", "side", "align"}]
      213 JUMPIFNOTEQKS                    R3 K65 ["Avatar"] ; [+7]
      215 LOADK                            R23 K55 ["SortClothingTable"]
      216 LOADK                            R24 K66 ["AvatarExplanationTitle"]
      217 NAMECALL                         R21 R2 K56 ["getText"]
      219 CALL                             R21 3 1
      220 JUMP                             ; [+5]
      221 LOADK                            R23 K55 ["SortClothingTable"]
      222 LOADK                            R24 K67 ["BodyExplanationTitle"]
      223 NAMECALL                         R21 R2 K56 ["getText"]
      225 CALL                             R21 3 1
      226 SETTABLEKS                       R21 R20 K60 ["title"]
      228 JUMPIFNOTEQKS                    R3 K65 ["Avatar"] ; [+7]
      230 LOADK                            R23 K55 ["SortClothingTable"]
      231 LOADK                            R24 K68 ["AvatarExplanationDescription"]
      232 NAMECALL                         R21 R2 K56 ["getText"]
      234 CALL                             R21 3 1
      235 JUMP                             ; [+1]
      236 LOADNIL                          R21
      237 SETTABLEKS                       R21 R20 K61 ["text"]
      239 GETUPVAL                         R24 9
      240 GETTABLEKS                       R23 R24 K69 ["Enums"]
      242 GETTABLEKS                       R22 R23 K70 ["PopoverSide"]
      244 GETTABLEKS                       R21 R22 K71 ["Bottom"]
      246 SETTABLEKS                       R21 R20 K62 ["side"]
      248 GETUPVAL                         R24 9
      249 GETTABLEKS                       R23 R24 K69 ["Enums"]
      251 GETTABLEKS                       R22 R23 K72 ["PopoverAlign"]
      253 GETTABLEKS                       R21 R22 K73 ["Start"]
      255 SETTABLEKS                       R21 R20 K63 ["align"]
      257 GETUPVAL                         R22 0
      258 GETTABLEKS                       R21 R22 K2 ["createElement"]
      260 GETUPVAL                         R22 10
      261 DUPTABLE                         R23 K77 [{"Position", "Text", "TextXAlignment"}]
      262 GETIMPORT                        R24 K79 [UDim2.fromOffset]
      264 LOADN                            R25 10
      265 LOADN                            R26 0
      266 CALL                             R24 2 1
      267 SETTABLEKS                       R24 R23 K74 ["Position"]
      269 SETTABLEKS                       R3 R23 K75 ["Text"]
      271 GETIMPORT                        R24 K80 [Enum.TextXAlignment.Left]
      273 SETTABLEKS                       R24 R23 K76 ["TextXAlignment"]
      275 CALL                             R21 2 -1
      276 CALL                             R18 -1 1
      277 SETTABLEKS                       R18 R17 K47 ["SelectInput"]
      279 CALL                             R14 3 -1
      280 RETURN                           R14 -1

PROTO_6:
        0 DUPTABLE                         R1 K2 [{"Name", "Instance"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K3 ["getInstanceNameWithoutClassification"]
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
       15 GETUPVAL                         R11 0
       16 GETTABLEKS                       R10 R11 K6 ["getInstanceNameWithoutClassification"]
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
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAvatarPreviewerSortClothingUI is not enabled"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 1
        9 NAMECALL                         R1 R1 K3 ["use"]
       11 CALL                             R1 1 1
       12 GETUPVAL                         R2 2
       13 LOADK                            R4 K4 ["SortClothingTable"]
       14 NAMECALL                         R2 R2 K3 ["use"]
       16 CALL                             R2 2 1
       17 GETTABLEKS                       R4 R0 K5 ["target"]
       19 JUMPIFNOT                        R4 ; [+5]
       20 GETTABLEKS                       R4 R0 K5 ["target"]
       22 GETTABLEKS                       R3 R4 K6 ["lastFilteredSelection"]
       24 JUMP                             ; [+1]
       25 LOADNIL                          R3
       26 GETUPVAL                         R5 3
       27 GETTABLEKS                       R4 R5 K7 ["useMemo"]
       29 NEWCLOSURE                       R5 P0
       30 CAPTURE                          VAL R3
       31 CAPTURE                          UPVAL U4
       32 NEWTABLE                         R6 0 1
       34 MOVE                             R7 R3
       35 SETLIST                          R6 R7 1 [1]
       37 CALL                             R4 2 1
       38 GETIMPORT                        R5 K9 [next]
       40 MOVE                             R6 R4
       41 CALL                             R5 1 1
       42 JUMPIF                           R5 ; [+2]
       43 LOADNIL                          R5
       44 RETURN                           R5 1
       45 GETUPVAL                         R6 3
       46 GETTABLEKS                       R5 R6 K10 ["createElement"]
       48 GETUPVAL                         R6 5
       49 DUPTABLE                         R7 K19 [{"LayoutOrder", "Rows", "Columns", "RowHeight", "Size", "Scroll", "CellComponent", "CellProps"}]
       50 GETUPVAL                         R9 6
       51 CALL                             R9 0 1
       52 JUMPIFNOT                        R9 ; [+2]
       53 LOADN                            R8 2
       54 JUMP                             ; [+1]
       55 LOADNIL                          R8
       56 SETTABLEKS                       R8 R7 K11 ["LayoutOrder"]
       58 SETTABLEKS                       R4 R7 K12 ["Rows"]
       60 NEWTABLE                         R8 0 2
       62 DUPTABLE                         R9 K21 [{"Name"}]
       63 LOADK                            R12 K4 ["SortClothingTable"]
       64 LOADK                            R13 K20 ["Name"]
       65 NAMECALL                         R10 R1 K22 ["getText"]
       67 CALL                             R10 3 1
       68 SETTABLEKS                       R10 R9 K20 ["Name"]
       70 DUPTABLE                         R10 K21 [{"Name"}]
       71 LOADK                            R13 K4 ["SortClothingTable"]
       72 LOADK                            R14 K23 ["Type"]
       73 NAMECALL                         R11 R1 K22 ["getText"]
       75 CALL                             R11 3 1
       76 SETTABLEKS                       R11 R10 K20 ["Name"]
       78 SETLIST                          R8 R9 2 [1]
       80 SETTABLEKS                       R8 R7 K13 ["Columns"]
       82 GETTABLEKS                       R8 R2 K14 ["RowHeight"]
       84 SETTABLEKS                       R8 R7 K14 ["RowHeight"]
       86 GETUPVAL                         R9 6
       87 CALL                             R9 0 1
       88 JUMPIFNOT                        R9 ; [+8]
       89 GETIMPORT                        R8 K26 [UDim2.new]
       91 LOADN                            R9 1
       92 LOADN                            R10 0
       93 LOADN                            R11 1
       94 LOADN                            R12 232
       95 CALL                             R8 4 1
       96 JUMP                             ; [+5]
       97 GETIMPORT                        R8 K28 [UDim2.fromScale]
       99 LOADN                            R9 1
      100 LOADN                            R10 1
      101 CALL                             R8 2 1
      102 SETTABLEKS                       R8 R7 K15 ["Size"]
      104 LOADB                            R8 1
      105 SETTABLEKS                       R8 R7 K16 ["Scroll"]
      107 GETUPVAL                         R8 7
      108 SETTABLEKS                       R8 R7 K17 ["CellComponent"]
      110 DUPTABLE                         R8 K30 [{"Padding"}]
      111 GETTABLEKS                       R9 R2 K31 ["CellPadding"]
      113 SETTABLEKS                       R9 R8 K29 ["Padding"]
      115 SETTABLEKS                       R8 R7 K18 ["CellProps"]
      117 CALL                             R5 2 -1
      118 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["AssetClassificationUtils"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Src"]
       20 GETTABLEKS                       R4 R5 K9 ["Components"]
       22 GETTABLEKS                       R3 R4 K10 ["AutoSetupOptionsContext"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R5 R0 K11 ["Packages"]
       29 GETTABLEKS                       R4 R5 K12 ["Foundation"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R6 R0 K11 ["Packages"]
       36 GETTABLEKS                       R5 R6 K13 ["Framework"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R7 R0 K11 ["Packages"]
       43 GETTABLEKS                       R6 R7 K14 ["React"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R11 R0 K6 ["Src"]
       50 GETTABLEKS                       R10 R11 K9 ["Components"]
       52 GETTABLEKS                       R9 R10 K15 ["Screens"]
       54 GETTABLEKS                       R8 R9 K16 ["AutoSetupScreen"]
       56 GETTABLEKS                       R7 R8 K17 ["TableCell"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R10 R0 K6 ["Src"]
       63 GETTABLEKS                       R9 R10 K18 ["Resources"]
       65 GETTABLEKS                       R8 R9 K19 ["Theme"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R10 R0 K6 ["Src"]
       72 GETTABLEKS                       R9 R10 K20 ["Types"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R12 R0 K6 ["Src"]
       79 GETTABLEKS                       R11 R12 K21 ["Hooks"]
       81 GETTABLEKS                       R10 R11 K22 ["useSelectedAssetClassification"]
       83 CALL                             R9 1 1
       84 GETIMPORT                        R10 K5 [require]
       86 GETTABLEKS                       R13 R0 K6 ["Src"]
       88 GETTABLEKS                       R12 R13 K23 ["Flags"]
       90 GETTABLEKS                       R11 R12 K24 ["getFFlagAvatarAutosetupOptionsInput"]
       92 CALL                             R10 1 1
       93 GETIMPORT                        R11 K5 [require]
       95 GETTABLEKS                       R14 R0 K6 ["Src"]
       97 GETTABLEKS                       R13 R14 K23 ["Flags"]
       99 GETTABLEKS                       R12 R13 K25 ["getFFlagAvatarPreviewerSortClothingUI"]
      101 CALL                             R11 1 1
      102 GETTABLEKS                       R12 R4 K26 ["UI"]
      104 GETTABLEKS                       R13 R12 K27 ["Pane"]
      106 GETTABLEKS                       R14 R12 K28 ["SelectInput"]
      108 GETTABLEKS                       R15 R12 K29 ["Table"]
      110 GETTABLEKS                       R16 R12 K30 ["TextLabel"]
      112 GETTABLEKS                       R18 R4 K31 ["ContextServices"]
      114 GETTABLEKS                       R17 R18 K32 ["Localization"]
      116 GETTABLEKS                       R19 R4 K31 ["ContextServices"]
      118 GETTABLEKS                       R18 R19 K33 ["Stylizer"]
      120 DUPCLOSURE                       R19 K34 [PROTO_5]
      121 CAPTURE                          VAL R5
      122 CAPTURE                          VAL R6
      123 CAPTURE                          VAL R10
      124 CAPTURE                          VAL R2
      125 CAPTURE                          VAL R17
      126 CAPTURE                          VAL R9
      127 CAPTURE                          VAL R1
      128 CAPTURE                          VAL R13
      129 CAPTURE                          VAL R14
      130 CAPTURE                          VAL R3
      131 CAPTURE                          VAL R16
      132 DUPCLOSURE                       R20 K35 [PROTO_10]
      133 CAPTURE                          VAL R11
      134 CAPTURE                          VAL R17
      135 CAPTURE                          VAL R18
      136 CAPTURE                          VAL R5
      137 CAPTURE                          VAL R1
      138 CAPTURE                          VAL R15
      139 CAPTURE                          VAL R10
      140 CAPTURE                          VAL R19
      141 RETURN                           R20 1
