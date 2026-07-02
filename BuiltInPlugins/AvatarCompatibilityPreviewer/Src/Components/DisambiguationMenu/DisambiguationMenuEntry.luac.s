PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K6 [{["tag"] = "radius-medium bg-surface-200", ["Size"], ["LayoutOrder"] = 1}]
        5 GETIMPORT                        R3 K9 [UDim2.fromOffset]
        7 LOADN                            R4 40
        8 LOADN                            R5 40
        9 CALL                             R3 2 1
       10 SETTABLEKS                       R3 R2 K3 ["Size"]
       12 DUPTABLE                         R3 K11 [{"ItemDataPreviewModel"}]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K0 ["createElement"]
       16 GETUPVAL                         R5 2
       17 DUPTABLE                         R6 K13 [{"Instance"}]
       18 GETUPVAL                         R7 3
       19 GETTABLEKS                       R7 R7 K12 ["Instance"]
       21 SETTABLEKS                       R7 R6 K12 ["Instance"]
       23 CALL                             R4 2 1
       24 SETTABLEKS                       R4 R3 K10 ["ItemDataPreviewModel"]
       26 CALL                             R0 3 -1
       27 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+68]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["createElement"]
        6 GETUPVAL                         R1 2
        7 DUPTABLE                         R2 K5 [{["tag"] = "col align-x-left grow gap-xxsmall auto-y", ["LayoutOrder"] = 2}]
        8 DUPTABLE                         R3 K8 [{"AssetName", "AssetTypeSubtitle"}]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K0 ["createElement"]
       12 GETUPVAL                         R5 3
       13 DUPTABLE                         R6 K12 [{["Text"], ["Size"], ["tag"] = "auto-y text-title-small text-align-x-left text-truncate-end content-emphasis", ["LayoutOrder"]}]
       14 GETUPVAL                         R7 4
       15 GETTABLEKS                       R7 R7 K13 ["Name"]
       17 SETTABLEKS                       R7 R6 K9 ["Text"]
       19 GETIMPORT                        R7 K16 [UDim2.new]
       21 LOADN                            R8 1
       22 LOADN                            R9 0
       23 LOADN                            R10 0
       24 LOADN                            R11 0
       25 CALL                             R7 4 1
       26 SETTABLEKS                       R7 R6 K10 ["Size"]
       28 GETUPVAL                         R7 5
       29 NAMECALL                         R7 R7 K17 ["getNextOrder"]
       31 CALL                             R7 1 1
       32 SETTABLEKS                       R7 R6 K3 ["LayoutOrder"]
       34 CALL                             R4 2 1
       35 SETTABLEKS                       R4 R3 K6 ["AssetName"]
       37 GETUPVAL                         R4 4
       38 GETTABLEKS                       R4 R4 K18 ["Subtitle"]
       40 JUMPIFNOT                        R4 ; [+26]
       41 GETUPVAL                         R4 1
       42 GETTABLEKS                       R4 R4 K0 ["createElement"]
       44 GETUPVAL                         R5 3
       45 DUPTABLE                         R6 K20 [{["Text"], ["Size"], ["tag"] = "auto-y text-body-small text-align-x-left text-truncate-end content-default", ["LayoutOrder"]}]
       46 GETUPVAL                         R7 4
       47 GETTABLEKS                       R7 R7 K18 ["Subtitle"]
       49 SETTABLEKS                       R7 R6 K9 ["Text"]
       51 GETIMPORT                        R7 K16 [UDim2.new]
       53 LOADN                            R8 1
       54 LOADN                            R9 0
       55 LOADN                            R10 0
       56 LOADN                            R11 0
       57 CALL                             R7 4 1
       58 SETTABLEKS                       R7 R6 K10 ["Size"]
       60 GETUPVAL                         R7 5
       61 NAMECALL                         R7 R7 K17 ["getNextOrder"]
       63 CALL                             R7 1 1
       64 SETTABLEKS                       R7 R6 K3 ["LayoutOrder"]
       66 CALL                             R4 2 1
       67 SETTABLEKS                       R4 R3 K7 ["AssetTypeSubtitle"]
       69 CALL                             R0 3 -1
       70 RETURN                           R0 -1
       71 GETUPVAL                         R0 1
       72 GETTABLEKS                       R0 R0 K0 ["createElement"]
       74 GETUPVAL                         R1 2
       75 DUPTABLE                         R2 K22 [{["tag"] = "col align-x-left gap-xxsmall auto-y", ["LayoutOrder"] = 2, ["Size"]}]
       76 GETIMPORT                        R3 K16 [UDim2.new]
       78 LOADN                            R4 0
       79 LOADN                            R5 186
       80 LOADN                            R6 0
       81 LOADN                            R7 0
       82 CALL                             R3 4 1
       83 SETTABLEKS                       R3 R2 K10 ["Size"]
       85 DUPTABLE                         R3 K8 [{"AssetName", "AssetTypeSubtitle"}]
       86 GETUPVAL                         R4 1
       87 GETTABLEKS                       R4 R4 K0 ["createElement"]
       89 GETUPVAL                         R5 3
       90 DUPTABLE                         R6 K24 [{["Text"], ["tag"] = "auto-xy text-title-small text-truncate-end content-emphasis", ["LayoutOrder"]}]
       91 GETUPVAL                         R7 4
       92 GETTABLEKS                       R7 R7 K13 ["Name"]
       94 SETTABLEKS                       R7 R6 K9 ["Text"]
       96 GETUPVAL                         R7 5
       97 NAMECALL                         R7 R7 K17 ["getNextOrder"]
       99 CALL                             R7 1 1
      100 SETTABLEKS                       R7 R6 K3 ["LayoutOrder"]
      102 CALL                             R4 2 1
      103 SETTABLEKS                       R4 R3 K6 ["AssetName"]
      105 GETUPVAL                         R4 4
      106 GETTABLEKS                       R4 R4 K18 ["Subtitle"]
      108 JUMPIFNOT                        R4 ; [+17]
      109 GETUPVAL                         R4 1
      110 GETTABLEKS                       R4 R4 K0 ["createElement"]
      112 GETUPVAL                         R5 3
      113 DUPTABLE                         R6 K26 [{["Text"], ["tag"] = "auto-xy text-body-small content-default", ["LayoutOrder"]}]
      114 GETUPVAL                         R7 4
      115 GETTABLEKS                       R7 R7 K18 ["Subtitle"]
      117 SETTABLEKS                       R7 R6 K9 ["Text"]
      119 GETUPVAL                         R7 5
      120 NAMECALL                         R7 R7 K17 ["getNextOrder"]
      122 CALL                             R7 1 1
      123 SETTABLEKS                       R7 R6 K3 ["LayoutOrder"]
      125 CALL                             R4 2 1
      126 SETTABLEKS                       R4 R3 K7 ["AssetTypeSubtitle"]
      128 CALL                             R0 3 -1
      129 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+17]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["createElement"]
        6 GETUPVAL                         R1 2
        7 DUPTABLE                         R2 K6 [{["tag"] = "row align-y-center gap-small auto-y", ["LayoutOrder"] = 3, ["Size"]}]
        8 GETIMPORT                        R3 K9 [UDim2.fromOffset]
       10 GETUPVAL                         R4 3
       11 LOADN                            R5 0
       12 CALL                             R3 2 1
       13 SETTABLEKS                       R3 R2 K5 ["Size"]
       15 GETUPVAL                         R3 4
       16 GETTABLEKS                       R3 R3 K10 ["children"]
       18 CALL                             R0 3 -1
       19 RETURN                           R0 -1
       20 GETUPVAL                         R0 1
       21 GETTABLEKS                       R0 R0 K0 ["createElement"]
       23 GETUPVAL                         R1 2
       24 DUPTABLE                         R2 K12 [{["tag"] = "row align-y-center gap-small", ["LayoutOrder"] = 3, ["Size"]}]
       25 GETIMPORT                        R3 K14 [UDim2.new]
       27 LOADN                            R4 0
       28 LOADN                            R5 130
       29 LOADN                            R6 0
       30 LOADN                            R7 0
       31 CALL                             R3 4 1
       32 SETTABLEKS                       R3 R2 K5 ["Size"]
       34 GETUPVAL                         R3 4
       35 GETTABLEKS                       R3 R3 K10 ["children"]
       37 CALL                             R0 3 -1
       38 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K4 [{["tag"] = "row align-y-center gap-small size-full-0 auto-y padding-y-small", ["LayoutOrder"]}]
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R4 R4 K5 ["WarningText"]
        8 JUMPIFNOT                        R4 ; [+2]
        9 LOADN                            R3 1
       10 JUMP                             ; [+3]
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K3 ["LayoutOrder"]
       14 SETTABLEKS                       R3 R2 K3 ["LayoutOrder"]
       16 DUPTABLE                         R3 K9 [{"Thumbnail", "AssetInfo", "DropdownsContainer"}]
       17 GETUPVAL                         R4 3
       18 SETTABLEKS                       R4 R3 K6 ["Thumbnail"]
       20 GETUPVAL                         R4 4
       21 SETTABLEKS                       R4 R3 K7 ["AssetInfo"]
       23 GETUPVAL                         R4 5
       24 SETTABLEKS                       R4 R3 K8 ["DropdownsContainer"]
       26 CALL                             R0 3 -1
       27 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R2 K1 ["X"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 LOADK                            R4 K1 ["DisambiguationMenu"]
        6 NAMECALL                         R2 R2 K2 ["use"]
        8 CALL                             R2 2 1
        9 GETUPVAL                         R3 2
       10 CALL                             R3 0 1
       11 JUMPIFNOT                        R3 ; [+110]
       12 GETUPVAL                         R3 3
       13 GETTABLEKS                       R3 R3 K3 ["useMemo"]
       15 NEWCLOSURE                       R4 P0
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          UPVAL U5
       19 CAPTURE                          VAL R0
       20 NEWTABLE                         R5 0 1
       22 GETTABLEKS                       R6 R0 K4 ["Instance"]
       24 SETLIST                          R5 R6 1 [1]
       26 CALL                             R3 2 1
       27 GETTABLEKS                       R5 R0 K5 ["hasSecondaryDropdown"]
       29 JUMPIFNOT                        R5 ; [+2]
       30 LOADN                            R4 268
       31 JUMP                             ; [+1]
       32 LOADN                            R4 130
       33 GETUPVAL                         R5 3
       34 GETTABLEKS                       R5 R5 K3 ["useMemo"]
       36 NEWCLOSURE                       R6 P1
       37 CAPTURE                          UPVAL U6
       38 CAPTURE                          UPVAL U3
       39 CAPTURE                          UPVAL U4
       40 CAPTURE                          UPVAL U7
       41 CAPTURE                          VAL R0
       42 CAPTURE                          VAL R1
       43 NEWTABLE                         R7 0 2
       45 GETTABLEKS                       R8 R0 K6 ["Name"]
       47 GETTABLEKS                       R9 R0 K7 ["Subtitle"]
       49 SETLIST                          R7 R8 2 [1]
       51 CALL                             R5 2 1
       52 GETUPVAL                         R6 3
       53 GETTABLEKS                       R6 R6 K3 ["useMemo"]
       55 NEWCLOSURE                       R7 P2
       56 CAPTURE                          UPVAL U6
       57 CAPTURE                          UPVAL U3
       58 CAPTURE                          UPVAL U4
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R0
       61 NEWTABLE                         R8 0 2
       63 GETTABLEKS                       R9 R0 K8 ["children"]
       65 MOVE                             R10 R4
       66 SETLIST                          R8 R9 2 [1]
       68 CALL                             R6 2 1
       69 GETUPVAL                         R7 3
       70 GETTABLEKS                       R7 R7 K3 ["useMemo"]
       72 NEWCLOSURE                       R8 P3
       73 CAPTURE                          UPVAL U3
       74 CAPTURE                          UPVAL U4
       75 CAPTURE                          VAL R0
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R6
       79 NEWTABLE                         R9 0 5
       81 MOVE                             R10 R3
       82 MOVE                             R11 R5
       83 MOVE                             R12 R6
       84 GETTABLEKS                       R13 R0 K9 ["WarningText"]
       86 GETTABLEKS                       R14 R0 K10 ["LayoutOrder"]
       88 SETLIST                          R9 R10 5 [1]
       90 CALL                             R7 2 1
       91 GETTABLEKS                       R9 R0 K9 ["WarningText"]
       93 JUMPIFNOT                        R9 ; [+26]
       94 GETUPVAL                         R8 3
       95 GETTABLEKS                       R8 R8 K11 ["createElement"]
       97 GETUPVAL                         R9 4
       98 DUPTABLE                         R10 K14 [{["tag"] = "col gap-xxsmall size-full-0 auto-y", ["LayoutOrder"]}]
       99 GETTABLEKS                       R11 R0 K10 ["LayoutOrder"]
      101 SETTABLEKS                       R11 R10 K10 ["LayoutOrder"]
      103 DUPTABLE                         R11 K16 [{"Row", "WarningText"}]
      104 SETTABLEKS                       R7 R11 K15 ["Row"]
      106 GETUPVAL                         R12 3
      107 GETTABLEKS                       R12 R12 K11 ["createElement"]
      109 GETUPVAL                         R13 7
      110 DUPTABLE                         R14 K20 [{["Text"], ["tag"] = "wrap auto-xy text-body-small content-system-warning", ["LayoutOrder"] = 2}]
      111 GETTABLEKS                       R15 R0 K9 ["WarningText"]
      113 SETTABLEKS                       R15 R14 K17 ["Text"]
      115 CALL                             R12 2 1
      116 SETTABLEKS                       R12 R11 K9 ["WarningText"]
      118 CALL                             R8 3 1
      119 RETURN                           R8 1
      120 MOVE                             R8 R7
      121 RETURN                           R8 1
      122 GETUPVAL                         R3 3
      123 GETTABLEKS                       R3 R3 K21 ["useState"]
      125 LOADN                            R4 0
      126 CALL                             R3 1 2
      127 GETUPVAL                         R5 3
      128 GETTABLEKS                       R5 R5 K22 ["useRef"]
      130 LOADNIL                          R6
      131 CALL                             R5 1 1
      132 GETUPVAL                         R6 3
      133 GETTABLEKS                       R6 R6 K11 ["createElement"]
      135 GETUPVAL                         R7 8
      136 DUPTABLE                         R8 K26 [{"AutomaticSize", "LayoutOrder", "Layout", "Spacing"}]
      137 GETIMPORT                        R9 K29 [Enum.AutomaticSize.Y]
      139 SETTABLEKS                       R9 R8 K23 ["AutomaticSize"]
      141 GETTABLEKS                       R9 R0 K10 ["LayoutOrder"]
      143 SETTABLEKS                       R9 R8 K10 ["LayoutOrder"]
      145 GETIMPORT                        R9 K32 [Enum.FillDirection.Horizontal]
      147 SETTABLEKS                       R9 R8 K24 ["Layout"]
      149 GETTABLEKS                       R9 R2 K33 ["HorizontalSpacing"]
      151 SETTABLEKS                       R9 R8 K25 ["Spacing"]
      153 DUPTABLE                         R9 K37 [{"ItemIcon", "ItemNames", "Children"}]
      154 GETUPVAL                         R10 3
      155 GETTABLEKS                       R10 R10 K11 ["createElement"]
      157 GETUPVAL                         R11 8
      158 DUPTABLE                         R12 K40 [{"BackgroundColor3", "LayoutOrder", "Size"}]
      159 GETTABLEKS                       R13 R2 K41 ["IconBackground"]
      161 SETTABLEKS                       R13 R12 K38 ["BackgroundColor3"]
      163 NAMECALL                         R13 R1 K42 ["getNextOrder"]
      165 CALL                             R13 1 1
      166 SETTABLEKS                       R13 R12 K10 ["LayoutOrder"]
      168 GETTABLEKS                       R13 R2 K43 ["IconSize"]
      170 SETTABLEKS                       R13 R12 K39 ["Size"]
      172 DUPTABLE                         R13 K45 [{"ItemDataPreviewModel"}]
      173 GETUPVAL                         R14 3
      174 GETTABLEKS                       R14 R14 K11 ["createElement"]
      176 GETUPVAL                         R15 5
      177 DUPTABLE                         R16 K46 [{"Instance"}]
      178 GETTABLEKS                       R17 R0 K4 ["Instance"]
      180 SETTABLEKS                       R17 R16 K4 ["Instance"]
      182 CALL                             R14 2 1
      183 SETTABLEKS                       R14 R13 K44 ["ItemDataPreviewModel"]
      185 CALL                             R10 3 1
      186 SETTABLEKS                       R10 R9 K34 ["ItemIcon"]
      188 GETUPVAL                         R10 3
      189 GETTABLEKS                       R10 R10 K11 ["createElement"]
      191 GETUPVAL                         R11 8
      192 DUPTABLE                         R12 K47 [{"AutomaticSize", "LayoutOrder", "Layout", "Spacing", "Size"}]
      193 GETIMPORT                        R13 K29 [Enum.AutomaticSize.Y]
      195 SETTABLEKS                       R13 R12 K23 ["AutomaticSize"]
      197 NAMECALL                         R13 R1 K42 ["getNextOrder"]
      199 CALL                             R13 1 1
      200 SETTABLEKS                       R13 R12 K10 ["LayoutOrder"]
      202 GETIMPORT                        R13 K49 [Enum.FillDirection.Vertical]
      204 SETTABLEKS                       R13 R12 K24 ["Layout"]
      206 GETTABLEKS                       R13 R2 K50 ["TextSpacing"]
      208 SETTABLEKS                       R13 R12 K25 ["Spacing"]
      210 GETIMPORT                        R13 K52 [UDim2.new]
      212 LOADN                            R14 1
      213 GETTABLEKS                       R18 R2 K43 ["IconSize"]
      215 GETTABLEKS                       R18 R18 K53 ["X"]
      217 GETTABLEKS                       R18 R18 K54 ["Offset"]
      219 GETTABLEKS                       R19 R2 K33 ["HorizontalSpacing"]
      221 ADD                              R17 R18 R19
      222 ADD                              R16 R17 R3
      223 MINUS                            R15 R16
      224 LOADN                            R16 0
      225 LOADN                            R17 0
      226 CALL                             R13 4 1
      227 SETTABLEKS                       R13 R12 K39 ["Size"]
      229 DUPTABLE                         R13 K57 [{"ItemName", "Subtitle", "Warning"}]
      230 GETUPVAL                         R14 3
      231 GETTABLEKS                       R14 R14 K11 ["createElement"]
      233 GETUPVAL                         R15 9
      234 DUPTABLE                         R16 K60 [{"AutomaticSize", "LayoutOrder", "Size", "Text", "TextXAlignment", "TextTruncate"}]
      235 GETIMPORT                        R17 K29 [Enum.AutomaticSize.Y]
      237 SETTABLEKS                       R17 R16 K23 ["AutomaticSize"]
      239 NAMECALL                         R17 R1 K42 ["getNextOrder"]
      241 CALL                             R17 1 1
      242 SETTABLEKS                       R17 R16 K10 ["LayoutOrder"]
      244 GETIMPORT                        R17 K62 [UDim2.fromScale]
      246 LOADN                            R18 1
      247 LOADN                            R19 0
      248 CALL                             R17 2 1
      249 SETTABLEKS                       R17 R16 K39 ["Size"]
      251 GETTABLEKS                       R17 R0 K6 ["Name"]
      253 SETTABLEKS                       R17 R16 K17 ["Text"]
      255 GETIMPORT                        R17 K64 [Enum.TextXAlignment.Left]
      257 SETTABLEKS                       R17 R16 K58 ["TextXAlignment"]
      259 GETIMPORT                        R17 K66 [Enum.TextTruncate.AtEnd]
      261 SETTABLEKS                       R17 R16 K59 ["TextTruncate"]
      263 CALL                             R14 2 1
      264 SETTABLEKS                       R14 R13 K55 ["ItemName"]
      266 GETTABLEKS                       R14 R0 K7 ["Subtitle"]
      268 JUMPIFNOT                        R14 ; [+34]
      269 GETUPVAL                         R14 3
      270 GETTABLEKS                       R14 R14 K11 ["createElement"]
      272 GETUPVAL                         R15 9
      273 DUPTABLE                         R16 K69 [{["AutomaticSize"], ["LayoutOrder"], ["Style"] = "SubText", ["Size"], ["Text"], ["TextXAlignment"], ["TextTruncate"]}]
      274 GETIMPORT                        R17 K29 [Enum.AutomaticSize.Y]
      276 SETTABLEKS                       R17 R16 K23 ["AutomaticSize"]
      278 NAMECALL                         R17 R1 K42 ["getNextOrder"]
      280 CALL                             R17 1 1
      281 SETTABLEKS                       R17 R16 K10 ["LayoutOrder"]
      283 GETIMPORT                        R17 K62 [UDim2.fromScale]
      285 LOADN                            R18 1
      286 LOADN                            R19 0
      287 CALL                             R17 2 1
      288 SETTABLEKS                       R17 R16 K39 ["Size"]
      290 GETTABLEKS                       R17 R0 K7 ["Subtitle"]
      292 SETTABLEKS                       R17 R16 K17 ["Text"]
      294 GETIMPORT                        R17 K64 [Enum.TextXAlignment.Left]
      296 SETTABLEKS                       R17 R16 K58 ["TextXAlignment"]
      298 GETIMPORT                        R17 K66 [Enum.TextTruncate.AtEnd]
      300 SETTABLEKS                       R17 R16 K59 ["TextTruncate"]
      302 CALL                             R14 2 1
      303 SETTABLEKS                       R14 R13 K7 ["Subtitle"]
      305 GETTABLEKS                       R14 R0 K9 ["WarningText"]
      307 JUMPIFNOT                        R14 ; [+30]
      308 GETUPVAL                         R14 3
      309 GETTABLEKS                       R14 R14 K11 ["createElement"]
      311 GETUPVAL                         R15 9
      312 DUPTABLE                         R16 K72 [{["AutomaticSize"], ["LayoutOrder"], ["Style"] = "Warning", ["Size"], ["Text"], ["TextXAlignment"], ["TextWrapped"] = True}]
      313 GETIMPORT                        R17 K29 [Enum.AutomaticSize.Y]
      315 SETTABLEKS                       R17 R16 K23 ["AutomaticSize"]
      317 NAMECALL                         R17 R1 K42 ["getNextOrder"]
      319 CALL                             R17 1 1
      320 SETTABLEKS                       R17 R16 K10 ["LayoutOrder"]
      322 GETIMPORT                        R17 K62 [UDim2.fromScale]
      324 LOADN                            R18 1
      325 LOADN                            R19 0
      326 CALL                             R17 2 1
      327 SETTABLEKS                       R17 R16 K39 ["Size"]
      329 GETTABLEKS                       R17 R0 K9 ["WarningText"]
      331 SETTABLEKS                       R17 R16 K17 ["Text"]
      333 GETIMPORT                        R17 K64 [Enum.TextXAlignment.Left]
      335 SETTABLEKS                       R17 R16 K58 ["TextXAlignment"]
      337 CALL                             R14 2 1
      338 SETTABLEKS                       R14 R13 K56 ["Warning"]
      340 CALL                             R10 3 1
      341 SETTABLEKS                       R10 R9 K35 ["ItemNames"]
      343 GETUPVAL                         R10 3
      344 GETTABLEKS                       R10 R10 K11 ["createElement"]
      346 GETUPVAL                         R11 8
      347 NEWTABLE                         R12 4 0
      349 GETIMPORT                        R13 K74 [Enum.AutomaticSize.XY]
      351 SETTABLEKS                       R13 R12 K23 ["AutomaticSize"]
      353 NAMECALL                         R13 R1 K42 ["getNextOrder"]
      355 CALL                             R13 1 1
      356 SETTABLEKS                       R13 R12 K10 ["LayoutOrder"]
      358 SETTABLEKS                       R5 R12 K75 ["ref"]
      360 GETUPVAL                         R13 3
      361 GETTABLEKS                       R13 R13 K76 ["Change"]
      363 GETTABLEKS                       R13 R13 K77 ["AbsoluteSize"]
      365 NEWCLOSURE                       R14 P4
      366 CAPTURE                          VAL R4
      367 SETTABLE                         R14 R12 R13
      368 GETTABLEKS                       R13 R0 K8 ["children"]
      370 CALL                             R10 3 1
      371 SETTABLEKS                       R10 R9 K36 ["Children"]
      373 CALL                             R6 3 -1
      374 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Components"]
       27 GETTABLEKS                       R4 R4 K11 ["ItemDataPreview"]
       29 GETTABLEKS                       R4 R4 K12 ["ItemDataPreviewModel"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K9 ["Src"]
       36 GETTABLEKS                       R5 R5 K13 ["Flags"]
       38 GETTABLEKS                       R5 R5 K14 ["getFFlagAvatarPreviewerUpdateDialogUI"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K9 ["Src"]
       45 GETTABLEKS                       R6 R6 K15 ["Resources"]
       47 GETTABLEKS                       R6 R6 K16 ["Theme"]
       49 CALL                             R5 1 1
       50 GETTABLEKS                       R6 R1 K17 ["UI"]
       52 GETTABLEKS                       R7 R6 K18 ["Pane"]
       54 GETTABLEKS                       R8 R6 K19 ["TextLabel"]
       56 GETTABLEKS                       R9 R1 K20 ["Util"]
       58 GETTABLEKS                       R9 R9 K21 ["LayoutOrderIterator"]
       60 GETTABLEKS                       R10 R1 K22 ["ContextServices"]
       62 GETTABLEKS                       R10 R10 K23 ["Stylizer"]
       64 GETIMPORT                        R11 K5 [require]
       66 GETTABLEKS                       R12 R0 K6 ["Packages"]
       68 GETTABLEKS                       R12 R12 K24 ["Foundation"]
       70 CALL                             R11 1 1
       71 GETTABLEKS                       R12 R11 K25 ["Text"]
       73 GETTABLEKS                       R13 R11 K26 ["View"]
       75 GETIMPORT                        R14 K5 [require]
       77 GETTABLEKS                       R15 R0 K9 ["Src"]
       79 GETTABLEKS                       R15 R15 K13 ["Flags"]
       81 GETTABLEKS                       R15 R15 K27 ["getFFlagAvatarPreviewerFixDisambiguationDropdownClipping"]
       83 CALL                             R14 1 1
       84 DUPCLOSURE                       R15 K28 [PROTO_5]
       85 CAPTURE                          VAL R9
       86 CAPTURE                          VAL R10
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R2
       89 CAPTURE                          VAL R13
       90 CAPTURE                          VAL R3
       91 CAPTURE                          VAL R14
       92 CAPTURE                          VAL R12
       93 CAPTURE                          VAL R7
       94 CAPTURE                          VAL R8
       95 RETURN                           R15 1
