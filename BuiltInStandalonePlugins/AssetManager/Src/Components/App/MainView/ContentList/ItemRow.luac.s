PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["use"]
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["AssetInfoField"]
        7 GETTABLEKS                       R3 R3 K2 ["Creator"]
        9 JUMPIFNOTEQ                      R1 R3 ; [+11]
       11 GETTABLEKS                       R4 R0 K3 ["Name"]
       13 JUMPIFEQKS                       R4 K4 [""] ; [+4]
       15 GETTABLEKS                       R3 R0 K3 ["Name"]
       17 RETURN                           R3 1
       18 GETTABLEKS                       R3 R0 K5 ["Id"]
       20 RETURN                           R3 1
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R3 R3 K1 ["AssetInfoField"]
       24 GETTABLEKS                       R3 R3 K6 ["Modified"]
       26 JUMPIFEQ                         R1 R3 ; [+8]
       28 GETUPVAL                         R3 1
       29 GETTABLEKS                       R3 R3 K1 ["AssetInfoField"]
       31 GETTABLEKS                       R3 R3 K7 ["Created"]
       33 JUMPIFNOTEQ                      R1 R3 ; [+14]
       35 GETIMPORT                        R3 K10 [DateTime.fromIsoDate]
       37 MOVE                             R4 R0
       38 CALL                             R3 1 1
       39 JUMPIFNOT                        R3 ; [+6]
       40 LOADK                            R6 K11 ["lll"]
       41 LOADK                            R7 K12 ["en-us"]
       42 NAMECALL                         R4 R3 K13 ["FormatLocalTime"]
       44 CALL                             R4 3 1
       45 RETURN                           R4 1
       46 LOADK                            R4 K14 ["--"]
       47 RETURN                           R4 1
       48 GETUPVAL                         R3 1
       49 GETTABLEKS                       R3 R3 K1 ["AssetInfoField"]
       51 GETTABLEKS                       R3 R3 K15 ["AssetType"]
       53 JUMPIFNOTEQ                      R1 R3 ; [+7]
       55 LOADK                            R5 K15 ["AssetType"]
       56 MOVE                             R6 R0
       57 NAMECALL                         R3 R2 K16 ["getText"]
       59 CALL                             R3 3 -1
       60 RETURN                           R3 -1
       61 GETUPVAL                         R3 1
       62 GETTABLEKS                       R3 R3 K1 ["AssetInfoField"]
       64 GETTABLEKS                       R3 R3 K17 ["Source"]
       66 JUMPIFNOTEQ                      R1 R3 ; [+7]
       68 LOADK                            R5 K18 ["AssetSource"]
       69 MOVE                             R6 R0
       70 NAMECALL                         R3 R2 K16 ["getText"]
       72 CALL                             R3 3 -1
       73 RETURN                           R3 -1
       74 GETUPVAL                         R3 1
       75 GETTABLEKS                       R3 R3 K1 ["AssetInfoField"]
       77 GETTABLEKS                       R3 R3 K19 ["AssetId"]
       79 JUMPIFNOTEQ                      R1 R3 ; [+7]
       81 JUMPIFNOTEQKN                    R0 K20 [0] ; [+5]
       83 GETUPVAL                         R3 2
       84 GETTABLEKS                       R3 R3 K21 ["PlaceholderText"]
       86 RETURN                           R3 1
       87 FASTCALL1                        TOSTRING R0 ; [+3]
       88 MOVE                             R4 R0
       89 GETIMPORT                        R3 K23 [tostring]
       91 CALL                             R3 1 1
       92 RETURN                           R3 1

PROTO_1:
        0 NEWTABLE                         R3 0 0
        2 GETUPVAL                         R4 0
        3 CALL                             R4 0 2
        4 GETUPVAL                         R6 1
        5 CALL                             R6 0 1
        6 GETTABLEKS                       R7 R0 K0 ["ParentScope"]
        8 GETTABLEKS                       R7 R7 K1 ["Uid"]
       10 GETTABLEKS                       R8 R0 K2 ["ItemPath"]
       12 GETTABLEKS                       R11 R6 K3 ["ListRowHeight"]
       14 GETUPVAL                         R12 2
       15 GETTABLEKS                       R12 R12 K4 ["ListThumbnailContainerScale"]
       17 MUL                              R10 R11 R12
       18 FASTCALL1                        MATH_FLOOR R10 ; [+2]
       19 GETIMPORT                        R9 K7 [math.floor]
       21 CALL                             R9 1 1
       22 MOVE                             R10 R4
       23 LOADNIL                          R11
       24 LOADNIL                          R12
       25 FORGPREP                         R10
       26 MOVE                             R17 R7
       27 MOVE                             R18 R8
       28 MOVE                             R19 R14
       29 NAMECALL                         R15 R1 K8 ["getItemField"]
       31 CALL                             R15 4 1
       32 JUMPIFNOT                        R15 ; [+5]
       33 GETUPVAL                         R16 3
       34 MOVE                             R17 R15
       35 MOVE                             R18 R14
       36 CALL                             R16 2 1
       37 JUMP                             ; [+3]
       38 GETUPVAL                         R16 4
       39 GETTABLEKS                       R16 R16 K9 ["PlaceholderText"]
       41 GETTABLE                         R17 R5 R13
       42 GETTABLEKS                       R17 R17 K10 ["Offset"]
       44 GETUPVAL                         R19 5
       45 MOVE                             R20 R16
       46 CALL                             R19 1 1
       47 GETTABLEKS                       R19 R19 K11 ["X"]
       49 GETUPVAL                         R22 6
       50 LOADK                            R24 K13 ["CellContentPadding"]
       51 NAMECALL                         R22 R22 K14 ["GetAttribute"]
       53 CALL                             R22 2 1
       54 MULK                             R21 R22 K12 [2]
       55 SUB                              R20 R17 R21
       56 JUMPIFLT                         R20 R19 ; [+2]
       58 LOADB                            R18 0 +1
       59 LOADB                            R18 1
       60 JUMPIFNOTEQKN                    R13 K15 [1] ; [+190]
       62 MOVE                             R21 R7
       63 MOVE                             R22 R8
       64 GETUPVAL                         R23 7
       65 GETTABLEKS                       R23 R23 K16 ["AssetInfoField"]
       67 GETTABLEKS                       R23 R23 K17 ["AssetType"]
       69 NAMECALL                         R19 R1 K8 ["getItemField"]
       71 CALL                             R19 4 1
       72 MOVE                             R22 R7
       73 MOVE                             R23 R8
       74 GETUPVAL                         R24 7
       75 GETTABLEKS                       R24 R24 K16 ["AssetInfoField"]
       77 GETTABLEKS                       R24 R24 K18 ["AssetId"]
       79 NAMECALL                         R20 R1 K8 ["getItemField"]
       81 CALL                             R20 4 1
       82 MOVE                             R23 R7
       83 MOVE                             R24 R8
       84 GETUPVAL                         R25 7
       85 GETTABLEKS                       R25 R25 K16 ["AssetInfoField"]
       87 GETTABLEKS                       R25 R25 K19 ["IsPackage"]
       89 NAMECALL                         R21 R1 K8 ["getItemField"]
       91 CALL                             R21 4 1
       92 SUB                              R23 R17 R9
       93 GETUPVAL                         R24 6
       94 LOADK                            R26 K13 ["CellContentPadding"]
       95 NAMECALL                         R24 R24 K14 ["GetAttribute"]
       97 CALL                             R24 2 1
       98 SUB                              R22 R23 R24
       99 GETUPVAL                         R23 8
      100 GETTABLEKS                       R23 R23 K20 ["createElement"]
      102 GETUPVAL                         R24 9
      103 GETTABLEKS                       R24 R24 K21 ["View"]
      105 DUPTABLE                         R25 K26 [{["LayoutOrder"], ["Size"], ["tag"] = "row align-x-left align-y-center padding-left-small"}]
      106 SETTABLEKS                       R13 R25 K22 ["LayoutOrder"]
      108 GETIMPORT                        R26 K29 [UDim2.new]
      110 LOADN                            R27 0
      111 MOVE                             R28 R17
      112 LOADN                            R29 1
      113 LOADN                            R30 0
      114 CALL                             R26 4 1
      115 SETTABLEKS                       R26 R25 K23 ["Size"]
      117 DUPTABLE                         R26 K32 [{"ThumbnailContainer", "AssetName"}]
      118 GETUPVAL                         R27 8
      119 GETTABLEKS                       R27 R27 K20 ["createElement"]
      121 GETUPVAL                         R28 9
      122 GETTABLEKS                       R28 R28 K21 ["View"]
      124 DUPTABLE                         R29 K33 [{["LayoutOrder"] = 1, ["Size"], ["tag"]}]
      125 GETIMPORT                        R30 K35 [UDim2.fromOffset]
      127 MOVE                             R31 R9
      128 MOVE                             R32 R9
      129 CALL                             R30 2 1
      130 SETTABLEKS                       R30 R29 K23 ["Size"]
      132 NEWTABLE                         R30 1 0
      134 LOADB                            R31 1
      135 SETTABLEKS                       R31 R30 K36 ["bg-foreground-contrast radius-small"]
      137 SETTABLEKS                       R30 R29 K24 ["tag"]
      139 DUPTABLE                         R30 K39 [{"Thumbnail", "PackageLinkIcon"}]
      140 GETUPVAL                         R31 8
      141 GETTABLEKS                       R31 R31 K20 ["createElement"]
      143 GETUPVAL                         R32 10
      144 DUPTABLE                         R33 K40 [{"AssetId", "AssetType"}]
      145 SETTABLEKS                       R20 R33 K18 ["AssetId"]
      147 SETTABLEKS                       R19 R33 K17 ["AssetType"]
      149 CALL                             R31 2 1
      150 SETTABLEKS                       R31 R30 K37 ["Thumbnail"]
      152 JUMPIFNOT                        R21 ; [+9]
      153 GETUPVAL                         R31 8
      154 GETTABLEKS                       R31 R31 K20 ["createElement"]
      156 GETUPVAL                         R32 9
      157 GETTABLEKS                       R32 R32 K41 ["Image"]
      159 DUPTABLE                         R33 K46 [{["ZIndex"] = 2, ["tag"] = "am-size-icon-xsmall icon-packageLink anchor-bottom-right radius-xsmall bg-over-media-0", ["testId"] = "package-link-icon"}]
      160 CALL                             R31 2 1
      161 JUMP                             ; [+1]
      162 LOADNIL                          R31
      163 SETTABLEKS                       R31 R30 K38 ["PackageLinkIcon"]
      165 CALL                             R27 3 1
      166 SETTABLEKS                       R27 R26 K30 ["ThumbnailContainer"]
      168 JUMPIFNOT                        R2 ; [+22]
      169 GETUPVAL                         R27 8
      170 GETTABLEKS                       R27 R27 K20 ["createElement"]
      172 GETUPVAL                         R28 11
      173 DUPTABLE                         R29 K49 [{["LayoutOrder"] = 2, ["InitialText"], ["ItemType"], ["ItemPath"], ["Size"]}]
      174 SETTABLEKS                       R16 R29 K47 ["InitialText"]
      176 SETTABLEKS                       R19 R29 K48 ["ItemType"]
      178 SETTABLEKS                       R8 R29 K2 ["ItemPath"]
      180 GETIMPORT                        R30 K29 [UDim2.new]
      182 LOADN                            R31 0
      183 MOVE                             R32 R22
      184 LOADN                            R33 1
      185 LOADN                            R34 0
      186 CALL                             R30 4 1
      187 SETTABLEKS                       R30 R29 K23 ["Size"]
      189 CALL                             R27 2 1
      190 JUMP                             ; [+55]
      191 JUMPIFNOT                        R18 ; [+37]
      192 GETUPVAL                         R27 8
      193 GETTABLEKS                       R27 R27 K20 ["createElement"]
      195 GETUPVAL                         R28 9
      196 GETTABLEKS                       R28 R28 K50 ["Tooltip"]
      198 DUPTABLE                         R29 K53 [{["LayoutOrder"] = 2, ["title"], ["side"]}]
      199 SETTABLEKS                       R16 R29 K51 ["title"]
      201 GETUPVAL                         R30 9
      202 GETTABLEKS                       R30 R30 K54 ["Enums"]
      204 GETTABLEKS                       R30 R30 K55 ["PopoverSide"]
      206 GETTABLEKS                       R30 R30 K56 ["Bottom"]
      208 SETTABLEKS                       R30 R29 K52 ["side"]
      210 GETUPVAL                         R30 8
      211 GETTABLEKS                       R30 R30 K20 ["createElement"]
      213 GETUPVAL                         R31 9
      214 GETTABLEKS                       R31 R31 K57 ["Text"]
      216 DUPTABLE                         R32 K59 [{["LayoutOrder"] = 2, ["Text"], ["Size"], ["tag"] = "auto-y padding-x-small text-body-small text-align-x-left text-truncate-end"}]
      217 SETTABLEKS                       R16 R32 K57 ["Text"]
      219 GETIMPORT                        R33 K35 [UDim2.fromOffset]
      221 MOVE                             R34 R22
      222 LOADN                            R35 0
      223 CALL                             R33 2 1
      224 SETTABLEKS                       R33 R32 K23 ["Size"]
      226 CALL                             R30 2 -1
      227 CALL                             R27 -1 1
      228 JUMP                             ; [+17]
      229 GETUPVAL                         R27 8
      230 GETTABLEKS                       R27 R27 K20 ["createElement"]
      232 GETUPVAL                         R28 9
      233 GETTABLEKS                       R28 R28 K57 ["Text"]
      235 DUPTABLE                         R29 K59 [{["LayoutOrder"] = 2, ["Text"], ["Size"], ["tag"] = "auto-y padding-x-small text-body-small text-align-x-left text-truncate-end"}]
      236 SETTABLEKS                       R16 R29 K57 ["Text"]
      238 GETIMPORT                        R30 K35 [UDim2.fromOffset]
      240 MOVE                             R31 R22
      241 LOADN                            R32 0
      242 CALL                             R30 2 1
      243 SETTABLEKS                       R30 R29 K23 ["Size"]
      245 CALL                             R27 2 1
      246 SETTABLEKS                       R27 R26 K31 ["AssetName"]
      248 CALL                             R23 3 1
      249 SETTABLE                         R23 R3 R13
      250 JUMP                             ; [+66]
      251 JUMPIFNOT                        R18 ; [+43]
      252 GETUPVAL                         R19 8
      253 GETTABLEKS                       R19 R19 K20 ["createElement"]
      255 GETUPVAL                         R20 9
      256 GETTABLEKS                       R20 R20 K50 ["Tooltip"]
      258 DUPTABLE                         R21 K60 [{"LayoutOrder", "title", "side"}]
      259 SETTABLEKS                       R13 R21 K22 ["LayoutOrder"]
      261 SETTABLEKS                       R16 R21 K51 ["title"]
      263 GETUPVAL                         R22 9
      264 GETTABLEKS                       R22 R22 K54 ["Enums"]
      266 GETTABLEKS                       R22 R22 K55 ["PopoverSide"]
      268 GETTABLEKS                       R22 R22 K56 ["Bottom"]
      270 SETTABLEKS                       R22 R21 K52 ["side"]
      272 GETUPVAL                         R22 8
      273 GETTABLEKS                       R22 R22 K20 ["createElement"]
      275 GETUPVAL                         R23 9
      276 GETTABLEKS                       R23 R23 K57 ["Text"]
      278 DUPTABLE                         R24 K62 [{["LayoutOrder"], ["Text"], ["Size"], ["tag"] = "padding-x-small text-body-small text-align-x-left text-truncate-end"}]
      279 SETTABLEKS                       R13 R24 K22 ["LayoutOrder"]
      281 SETTABLEKS                       R16 R24 K57 ["Text"]
      283 GETIMPORT                        R25 K29 [UDim2.new]
      285 LOADN                            R26 0
      286 MOVE                             R27 R17
      287 LOADN                            R28 1
      288 LOADN                            R29 0
      289 CALL                             R25 4 1
      290 SETTABLEKS                       R25 R24 K23 ["Size"]
      292 CALL                             R22 2 -1
      293 CALL                             R19 -1 1
      294 JUMP                             ; [+21]
      295 GETUPVAL                         R19 8
      296 GETTABLEKS                       R19 R19 K20 ["createElement"]
      298 GETUPVAL                         R20 9
      299 GETTABLEKS                       R20 R20 K57 ["Text"]
      301 DUPTABLE                         R21 K62 [{["LayoutOrder"], ["Text"], ["Size"], ["tag"] = "padding-x-small text-body-small text-align-x-left text-truncate-end"}]
      302 SETTABLEKS                       R13 R21 K22 ["LayoutOrder"]
      304 SETTABLEKS                       R16 R21 K57 ["Text"]
      306 GETIMPORT                        R22 K29 [UDim2.new]
      308 LOADN                            R23 0
      309 MOVE                             R24 R17
      310 LOADN                            R25 1
      311 LOADN                            R26 0
      312 CALL                             R22 4 1
      313 SETTABLEKS                       R22 R21 K23 ["Size"]
      315 CALL                             R19 2 1
      316 SETTABLE                         R19 R3 R13
      317 FORGLOOP                         R10 2 ; [-292]
      319 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ItemPath"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["UiZone"]
        7 GETTABLEKS                       R3 R3 K2 ["Browser"]
        9 MOVE                             R4 R0
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K3 ["Key"]
       13 GETUPVAL                         R6 3
       14 NAMECALL                         R1 R1 K4 ["handleMouse2Click"]
       16 CALL                             R1 5 0
       17 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R5 R5 K0 ["UiZone"]
        4 GETTABLEKS                       R5 R5 K1 ["Browser"]
        6 GETUPVAL                         R6 2
        7 GETTABLEKS                       R6 R6 K2 ["Key"]
        9 NAMECALL                         R3 R3 K3 ["handleMouse1Down"]
       11 CALL                             R3 3 0
       12 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R5 R5 K0 ["UiZone"]
        4 GETTABLEKS                       R5 R5 K1 ["Browser"]
        6 GETUPVAL                         R6 2
        7 GETTABLEKS                       R6 R6 K2 ["Key"]
        9 NAMECALL                         R3 R3 K3 ["handleMouse1Up"]
       11 CALL                             R3 3 0
       12 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 CALL                             R3 0 1
       10 GETUPVAL                         R4 3
       11 GETTABLEKS                       R5 R0 K1 ["ItemPath"]
       13 CALL                             R4 1 1
       14 GETUPVAL                         R5 4
       15 MOVE                             R6 R0
       16 NAMECALL                         R7 R2 K2 ["getItemsCache"]
       18 CALL                             R7 1 1
       19 MOVE                             R8 R4
       20 CALL                             R5 3 1
       21 GETTABLEKS                       R7 R0 K1 ["ItemPath"]
       23 GETTABLE                         R6 R3 R7
       24 GETUPVAL                         R7 5
       25 CALL                             R7 0 1
       26 GETUPVAL                         R8 6
       27 GETTABLEKS                       R8 R8 K3 ["useRef"]
       29 LOADNIL                          R9
       30 CALL                             R8 1 1
       31 GETUPVAL                         R9 7
       32 MOVE                             R10 R8
       33 CALL                             R9 1 1
       34 GETUPVAL                         R10 8
       35 MOVE                             R11 R9
       36 GETTABLEKS                       R12 R0 K1 ["ItemPath"]
       38 CALL                             R10 2 1
       39 GETUPVAL                         R11 9
       40 GETUPVAL                         R12 10
       41 GETTABLEKS                       R12 R12 K4 ["MenuContext"]
       43 GETTABLEKS                       R12 R12 K5 ["Asset"]
       45 DUPTABLE                         R13 K8 [{"Path", "Index"}]
       46 GETTABLEKS                       R14 R0 K1 ["ItemPath"]
       48 SETTABLEKS                       R14 R13 K6 ["Path"]
       50 GETTABLEKS                       R14 R0 K9 ["Key"]
       52 SETTABLEKS                       R14 R13 K7 ["Index"]
       54 CALL                             R11 2 1
       55 GETUPVAL                         R12 6
       56 GETTABLEKS                       R12 R12 K10 ["createElement"]
       58 GETUPVAL                         R13 11
       59 GETTABLEKS                       R13 R13 K11 ["View"]
       61 DUPTABLE                         R14 K17 [{"LayoutOrder", "Position", "Size", "ref", "tag"}]
       62 GETTABLEKS                       R15 R0 K9 ["Key"]
       64 SETTABLEKS                       R15 R14 K12 ["LayoutOrder"]
       66 GETTABLEKS                       R15 R0 K13 ["Position"]
       68 SETTABLEKS                       R15 R14 K13 ["Position"]
       70 GETIMPORT                        R15 K20 [UDim2.new]
       72 LOADN                            R16 1
       73 LOADN                            R17 0
       74 LOADN                            R18 0
       75 GETTABLEKS                       R19 R7 K21 ["ListRowHeight"]
       77 CALL                             R15 4 1
       78 SETTABLEKS                       R15 R14 K14 ["Size"]
       80 SETTABLEKS                       R8 R14 K15 ["ref"]
       82 NEWTABLE                         R15 8 0
       84 LOADB                            R16 1
       85 SETTABLEKS                       R16 R15 K22 ["auto-x"]
       87 SETTABLEKS                       R6 R15 K23 ["bg-action-soft-emphasis"]
       89 NOT                              R17 R6
       90 AND                              R16 R17 R9
       91 SETTABLEKS                       R16 R15 K24 ["bg-shift-200"]
       93 NOT                              R16 R10
       94 SETTABLEKS                       R16 R15 K25 ["stroke-thin stroke-default"]
       96 SETTABLEKS                       R10 R15 K26 ["stroke-standard stroke-position-inner stroke-system-emphasis"]
       98 SETTABLEKS                       R15 R14 K16 ["tag"]
      100 DUPTABLE                         R15 K28 [{"InputHandler"}]
      101 GETUPVAL                         R16 6
      102 GETTABLEKS                       R16 R16 K10 ["createElement"]
      104 LOADK                            R17 K29 ["ImageButton"]
      105 NEWTABLE                         R18 4 0
      107 GETUPVAL                         R19 6
      108 GETTABLEKS                       R19 R19 K30 ["Event"]
      110 GETTABLEKS                       R19 R19 K31 ["MouseButton2Click"]
      112 NEWCLOSURE                       R20 P0
      113 CAPTURE                          VAL R0
      114 CAPTURE                          VAL R1
      115 CAPTURE                          UPVAL U10
      116 CAPTURE                          VAL R11
      117 SETTABLE                         R20 R18 R19
      118 GETUPVAL                         R19 6
      119 GETTABLEKS                       R19 R19 K30 ["Event"]
      121 GETTABLEKS                       R19 R19 K32 ["MouseButton1Down"]
      123 NEWCLOSURE                       R20 P1
      124 CAPTURE                          VAL R1
      125 CAPTURE                          UPVAL U10
      126 CAPTURE                          VAL R0
      127 SETTABLE                         R20 R18 R19
      128 GETUPVAL                         R19 6
      129 GETTABLEKS                       R19 R19 K30 ["Event"]
      131 GETTABLEKS                       R19 R19 K33 ["MouseButton1Up"]
      133 NEWCLOSURE                       R20 P2
      134 CAPTURE                          VAL R1
      135 CAPTURE                          UPVAL U10
      136 CAPTURE                          VAL R0
      137 SETTABLE                         R20 R18 R19
      138 GETUPVAL                         R19 6
      139 GETTABLEKS                       R19 R19 K34 ["Tag"]
      141 LOADK                            R20 K35 ["gui-object-defaults size-full row align-x-left align-y-center"]
      142 SETTABLE                         R20 R18 R19
      143 MOVE                             R19 R5
      144 CALL                             R16 3 1
      145 SETTABLEKS                       R16 R15 K27 ["InputHandler"]
      147 CALL                             R12 3 -1
      148 RETURN                           R12 -1

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
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["Localization"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R0 K12 ["Src"]
       36 GETTABLEKS                       R7 R7 K13 ["Components"]
       38 GETTABLEKS                       R7 R7 K14 ["Shared"]
       40 GETTABLEKS                       R7 R7 K15 ["EditNameInput"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K5 [require]
       45 GETTABLEKS                       R8 R0 K12 ["Src"]
       47 GETTABLEKS                       R8 R8 K13 ["Components"]
       49 GETTABLEKS                       R8 R8 K14 ["Shared"]
       51 GETTABLEKS                       R8 R8 K16 ["ItemThumbnail"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K12 ["Src"]
       58 GETTABLEKS                       R9 R9 K17 ["Controllers"]
       60 GETTABLEKS                       R9 R9 K18 ["Input"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K12 ["Src"]
       67 GETTABLEKS                       R10 R10 K17 ["Controllers"]
       69 GETTABLEKS                       R10 R10 K19 ["ItemsController"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K12 ["Src"]
       76 GETTABLEKS                       R11 R11 K20 ["Hooks"]
       78 GETTABLEKS                       R11 R11 K21 ["useColumns"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K12 ["Src"]
       85 GETTABLEKS                       R12 R12 K20 ["Hooks"]
       87 GETTABLEKS                       R12 R12 K22 ["useContextMenu"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETTABLEKS                       R13 R0 K12 ["Src"]
       94 GETTABLEKS                       R13 R13 K20 ["Hooks"]
       96 GETTABLEKS                       R13 R13 K23 ["useIsEditItem"]
       98 CALL                             R12 1 1
       99 GETIMPORT                        R13 K5 [require]
      101 GETTABLEKS                       R14 R0 K12 ["Src"]
      103 GETTABLEKS                       R14 R14 K20 ["Hooks"]
      105 GETTABLEKS                       R14 R14 K24 ["useItemHovered"]
      107 CALL                             R13 1 1
      108 GETIMPORT                        R14 K5 [require]
      110 GETTABLEKS                       R15 R0 K12 ["Src"]
      112 GETTABLEKS                       R15 R15 K20 ["Hooks"]
      114 GETTABLEKS                       R15 R15 K25 ["useItemDragHovered"]
      116 CALL                             R14 1 1
      117 GETIMPORT                        R15 K5 [require]
      119 GETTABLEKS                       R16 R0 K12 ["Src"]
      121 GETTABLEKS                       R16 R16 K20 ["Hooks"]
      123 GETTABLEKS                       R16 R16 K26 ["useItemSelection"]
      125 CALL                             R15 1 1
      126 GETIMPORT                        R16 K5 [require]
      128 GETTABLEKS                       R17 R0 K12 ["Src"]
      130 GETTABLEKS                       R17 R17 K20 ["Hooks"]
      132 GETTABLEKS                       R17 R17 K27 ["useLayoutInfo"]
      134 CALL                             R16 1 1
      135 GETIMPORT                        R17 K5 [require]
      137 GETTABLEKS                       R18 R0 K12 ["Src"]
      139 GETTABLEKS                       R18 R18 K28 ["Types"]
      141 CALL                             R17 1 1
      142 GETIMPORT                        R18 K5 [require]
      144 GETTABLEKS                       R19 R0 K12 ["Src"]
      146 GETTABLEKS                       R19 R19 K29 ["Resources"]
      148 GETTABLEKS                       R19 R19 K30 ["Constants"]
      150 CALL                             R18 1 1
      151 GETIMPORT                        R19 K5 [require]
      153 GETTABLEKS                       R20 R0 K12 ["Src"]
      155 GETTABLEKS                       R20 R20 K29 ["Resources"]
      157 GETTABLEKS                       R20 R20 K31 ["StyleConstants"]
      159 CALL                             R19 1 1
      160 GETTABLEKS                       R20 R3 K32 ["Util"]
      162 GETTABLEKS                       R20 R20 K33 ["GetTextSize"]
      164 GETIMPORT                        R21 K5 [require]
      166 GETTABLEKS                       R22 R0 K12 ["Src"]
      168 GETTABLEKS                       R22 R22 K29 ["Resources"]
      170 GETTABLEKS                       R22 R22 K34 ["PluginStyles"]
      172 CALL                             R21 1 1
      173 DUPCLOSURE                       R22 K35 [PROTO_0]
      174 CAPTURE                          VAL R5
      175 CAPTURE                          VAL R17
      176 CAPTURE                          VAL R18
      177 DUPCLOSURE                       R23 K36 [PROTO_1]
      178 CAPTURE                          VAL R10
      179 CAPTURE                          VAL R16
      180 CAPTURE                          VAL R19
      181 CAPTURE                          VAL R22
      182 CAPTURE                          VAL R18
      183 CAPTURE                          VAL R20
      184 CAPTURE                          VAL R21
      185 CAPTURE                          VAL R17
      186 CAPTURE                          VAL R1
      187 CAPTURE                          VAL R2
      188 CAPTURE                          VAL R7
      189 CAPTURE                          VAL R6
      190 DUPCLOSURE                       R24 K37 [PROTO_5]
      191 CAPTURE                          VAL R8
      192 CAPTURE                          VAL R9
      193 CAPTURE                          VAL R15
      194 CAPTURE                          VAL R12
      195 CAPTURE                          VAL R23
      196 CAPTURE                          VAL R16
      197 CAPTURE                          VAL R1
      198 CAPTURE                          VAL R13
      199 CAPTURE                          VAL R14
      200 CAPTURE                          VAL R11
      201 CAPTURE                          VAL R17
      202 CAPTURE                          VAL R2
      203 RETURN                           R24 1
