PROTO_0:
        0 GETIMPORT                        R1 K2 [string.gsub]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["[^%d,]"]
        4 LOADK                            R4 K4 [""]
        5 CALL                             R1 3 -1
        6 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 JUMPIFNOT                        R0 ; [+5]
        1 GETIMPORT                        R2 K1 [next]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIF                           R2 ; [+2]
        6 LOADNIL                          R2
        7 RETURN                           R2 1
        8 NEWTABLE                         R2 0 0
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K2 ["new"]
       13 CALL                             R3 0 1
       14 MOVE                             R4 R0
       15 LOADNIL                          R5
       16 LOADNIL                          R6
       17 FORGPREP                         R4
       18 GETUPVAL                         R9 1
       19 CALL                             R9 0 1
       20 JUMPIFNOT                        R9 ; [+17]
       21 GETUPVAL                         R9 2
       22 GETTABLEKS                       R9 R9 K3 ["createElement"]
       24 GETUPVAL                         R10 3
       25 DUPTABLE                         R11 K7 [{"item", "onRemoveItem", "LayoutOrder"}]
       26 SETTABLEKS                       R8 R11 K4 ["item"]
       28 SETTABLEKS                       R1 R11 K5 ["onRemoveItem"]
       30 NAMECALL                         R12 R3 K8 ["getNextOrder"]
       32 CALL                             R12 1 1
       33 SETTABLEKS                       R12 R11 K6 ["LayoutOrder"]
       35 CALL                             R9 2 1
       36 SETTABLE                         R9 R2 R7
       37 JUMP                             ; [+192]
       38 GETUPVAL                         R9 2
       39 GETTABLEKS                       R9 R9 K3 ["createElement"]
       41 GETUPVAL                         R10 4
       42 DUPTABLE                         R11 K11 [{["tag"] = "row gap-small size-full-0 auto-y padding-y-small", ["LayoutOrder"]}]
       43 NAMECALL                         R12 R3 K8 ["getNextOrder"]
       45 CALL                             R12 1 1
       46 SETTABLEKS                       R12 R11 K6 ["LayoutOrder"]
       48 DUPTABLE                         R12 K15 [{"Thumbnail", "ItemContent", "RemoveButton"}]
       49 GETUPVAL                         R13 2
       50 GETTABLEKS                       R13 R13 K3 ["createElement"]
       52 GETUPVAL                         R14 4
       53 DUPTABLE                         R15 K17 [{["tag"] = "col auto-xy padding-y-xsmall", ["LayoutOrder"]}]
       54 NAMECALL                         R16 R3 K8 ["getNextOrder"]
       56 CALL                             R16 1 1
       57 SETTABLEKS                       R16 R15 K6 ["LayoutOrder"]
       59 GETUPVAL                         R16 2
       60 GETTABLEKS                       R16 R16 K3 ["createElement"]
       62 GETUPVAL                         R17 5
       63 DUPTABLE                         R18 K20 [{["Image"], ["tag"] = "size-1000-1000 radius-medium"}]
       64 GETTABLEKS                       R20 R8 K21 ["itemType"]
       66 JUMPIFNOTEQKS                    R20 K22 ["Asset"] ; [+6]
       68 GETUPVAL                         R19 6
       69 GETTABLEKS                       R20 R8 K23 ["itemId"]
       71 CALL                             R19 1 1
       72 JUMP                             ; [+4]
       73 GETUPVAL                         R19 7
       74 GETTABLEKS                       R20 R8 K23 ["itemId"]
       76 CALL                             R19 1 1
       77 SETTABLEKS                       R19 R18 K18 ["Image"]
       79 CALL                             R16 2 -1
       80 CALL                             R13 -1 1
       81 SETTABLEKS                       R13 R12 K12 ["Thumbnail"]
       83 GETUPVAL                         R13 2
       84 GETTABLEKS                       R13 R13 K3 ["createElement"]
       86 GETUPVAL                         R14 4
       87 DUPTABLE                         R15 K25 [{["tag"] = "col align-x-left grow", ["LayoutOrder"]}]
       88 NAMECALL                         R16 R3 K8 ["getNextOrder"]
       90 CALL                             R16 1 1
       91 SETTABLEKS                       R16 R15 K6 ["LayoutOrder"]
       93 DUPTABLE                         R16 K29 [{"ItemName", "CreatorNameView", "ItemId"}]
       94 GETUPVAL                         R17 2
       95 GETTABLEKS                       R17 R17 K3 ["createElement"]
       97 GETUPVAL                         R18 8
       98 DUPTABLE                         R19 K32 [{["Text"], ["tag"] = "auto-xy text-title-small content-system-contrast", ["LayoutOrder"]}]
       99 GETTABLEKS                       R20 R8 K33 ["name"]
      101 SETTABLEKS                       R20 R19 K30 ["Text"]
      103 NAMECALL                         R20 R3 K8 ["getNextOrder"]
      105 CALL                             R20 1 1
      106 SETTABLEKS                       R20 R19 K6 ["LayoutOrder"]
      108 CALL                             R17 2 1
      109 SETTABLEKS                       R17 R16 K26 ["ItemName"]
      111 GETUPVAL                         R17 2
      112 GETTABLEKS                       R17 R17 K3 ["createElement"]
      114 GETUPVAL                         R18 4
      115 DUPTABLE                         R19 K35 [{["tag"] = "row gap-xxsmall auto-xy", ["LayoutOrder"]}]
      116 NAMECALL                         R20 R3 K8 ["getNextOrder"]
      118 CALL                             R20 1 1
      119 SETTABLEKS                       R20 R19 K6 ["LayoutOrder"]
      121 DUPTABLE                         R20 K38 [{"CreatorName", "VerificationBadge"}]
      122 GETUPVAL                         R21 2
      123 GETTABLEKS                       R21 R21 K3 ["createElement"]
      125 GETUPVAL                         R22 8
      126 DUPTABLE                         R23 K40 [{["Text"], ["tag"] = "auto-xy text-body-small content-system-contrast"}]
      127 GETTABLEKS                       R24 R8 K41 ["creatorName"]
      129 SETTABLEKS                       R24 R23 K30 ["Text"]
      131 CALL                             R21 2 1
      132 SETTABLEKS                       R21 R20 K36 ["CreatorName"]
      134 GETTABLEKS                       R22 R8 K42 ["hasVerifiedBadge"]
      136 JUMPIFNOT                        R22 ; [+22]
      137 GETUPVAL                         R21 2
      138 GETTABLEKS                       R21 R21 K3 ["createElement"]
      140 GETUPVAL                         R22 9
      141 DUPTABLE                         R23 K45 [{"name", "size", "variant"}]
      142 GETUPVAL                         R24 10
      143 GETTABLEKS                       R24 R24 K46 ["VerifiedMono"]
      145 SETTABLEKS                       R24 R23 K33 ["name"]
      147 GETUPVAL                         R24 11
      148 GETTABLEKS                       R24 R24 K47 ["XSmall"]
      150 SETTABLEKS                       R24 R23 K43 ["size"]
      152 GETUPVAL                         R24 12
      153 GETTABLEKS                       R24 R24 K48 ["Filled"]
      155 SETTABLEKS                       R24 R23 K44 ["variant"]
      157 CALL                             R21 2 1
      158 JUMP                             ; [+1]
      159 LOADNIL                          R21
      160 SETTABLEKS                       R21 R20 K37 ["VerificationBadge"]
      162 CALL                             R17 3 1
      163 SETTABLEKS                       R17 R16 K27 ["CreatorNameView"]
      165 GETUPVAL                         R17 2
      166 GETTABLEKS                       R17 R17 K3 ["createElement"]
      168 GETUPVAL                         R18 8
      169 DUPTABLE                         R19 K49 [{["Text"], ["tag"] = "auto-xy text-body-small content-system-contrast", ["LayoutOrder"]}]
      170 GETTABLEKS                       R21 R8 K23 ["itemId"]
      172 FASTCALL1                        TOSTRING R21 ; [+2]
      173 GETIMPORT                        R20 K51 [tostring]
      175 CALL                             R20 1 1
      176 SETTABLEKS                       R20 R19 K30 ["Text"]
      178 NAMECALL                         R20 R3 K8 ["getNextOrder"]
      180 CALL                             R20 1 1
      181 SETTABLEKS                       R20 R19 K6 ["LayoutOrder"]
      183 CALL                             R17 2 1
      184 SETTABLEKS                       R17 R16 K28 ["ItemId"]
      186 CALL                             R13 3 1
      187 SETTABLEKS                       R13 R12 K13 ["ItemContent"]
      189 GETUPVAL                         R13 2
      190 GETTABLEKS                       R13 R13 K3 ["createElement"]
      192 GETUPVAL                         R14 4
      193 DUPTABLE                         R15 K53 [{["tag"] = "col self-center auto-xy", ["LayoutOrder"]}]
      194 NAMECALL                         R16 R3 K8 ["getNextOrder"]
      196 CALL                             R16 1 1
      197 SETTABLEKS                       R16 R15 K6 ["LayoutOrder"]
      199 GETUPVAL                         R16 2
      200 GETTABLEKS                       R16 R16 K3 ["createElement"]
      202 GETUPVAL                         R17 13
      203 DUPTABLE                         R18 K58 [{["size"], ["icon"], ["isCircular"] = True, ["variant"], ["onActivated"]}]
      204 GETUPVAL                         R19 14
      205 GETTABLEKS                       R19 R19 K59 ["Small"]
      207 SETTABLEKS                       R19 R18 K43 ["size"]
      209 GETUPVAL                         R19 10
      210 GETTABLEKS                       R19 R19 K60 ["CircleMinus"]
      212 SETTABLEKS                       R19 R18 K54 ["icon"]
      214 GETUPVAL                         R19 15
      215 GETTABLEKS                       R19 R19 K61 ["Utility"]
      217 SETTABLEKS                       R19 R18 K44 ["variant"]
      219 NEWCLOSURE                       R19 P0
      220 CAPTURE                          VAL R1
      221 CAPTURE                          VAL R8
      222 SETTABLEKS                       R19 R18 K57 ["onActivated"]
      224 CALL                             R16 2 -1
      225 CALL                             R13 -1 1
      226 SETTABLEKS                       R13 R12 K14 ["RemoveButton"]
      228 CALL                             R9 3 1
      229 SETTABLE                         R9 R2 R7
      230 FORGLOOP                         R4 2 ; [-213]
      232 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["count"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_4:
        0 LOADN                            R2 3
        1 GETUPVAL                         R3 0
        2 FASTCALL2                        MATH_MIN R2 R3 ; [+3]
        4 GETIMPORT                        R1 K3 [math.min]
        6 CALL                             R1 2 1
        7 MULK                             R0 R1 K0 [64]
        8 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isFetching"]
        3 JUMPIF                           R1 ; [+3]
        4 GETUPVAL                         R1 1
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isFetching"]
        3 JUMPIF                           R0 ; [+19]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 1
        6 JUMPIFNOT                        R0 ; [+6]
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K1 ["onTextEntered"]
       10 GETUPVAL                         R1 2
       11 CALL                             R0 1 0
       12 JUMP                             ; [+7]
       13 GETUPVAL                         R0 0
       14 GETTABLEKS                       R0 R0 K1 ["onTextEntered"]
       16 GETUPVAL                         R1 3
       17 GETUPVAL                         R2 2
       18 CALL                             R1 1 -1
       19 CALL                             R0 -1 0
       20 GETUPVAL                         R0 4
       21 LOADK                            R1 K2 [""]
       22 CALL                             R0 1 0
       23 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K0 ["use"]
        8 CALL                             R1 0 1
        9 NAMECALL                         R1 R1 K1 ["get"]
       11 CALL                             R1 1 1
       12 GETUPVAL                         R2 2
       13 NAMECALL                         R2 R2 K0 ["use"]
       15 CALL                             R2 1 1
       16 GETUPVAL                         R3 3
       17 GETTABLEKS                       R3 R3 K2 ["new"]
       19 CALL                             R3 0 1
       20 GETTABLEKS                       R4 R0 K3 ["errors"]
       22 GETTABLEKS                       R5 R0 K4 ["itemRows"]
       24 GETUPVAL                         R6 4
       25 GETTABLEKS                       R6 R6 K5 ["useMemo"]
       27 NEWCLOSURE                       R7 P0
       28 CAPTURE                          UPVAL U5
       29 CAPTURE                          VAL R5
       30 NEWTABLE                         R8 0 1
       32 MOVE                             R9 R5
       33 SETLIST                          R8 R9 1 [1]
       35 CALL                             R6 2 1
       36 GETUPVAL                         R7 4
       37 GETTABLEKS                       R7 R7 K5 ["useMemo"]
       39 NEWCLOSURE                       R8 P1
       40 CAPTURE                          VAL R6
       41 NEWTABLE                         R9 0 1
       43 MOVE                             R10 R6
       44 SETLIST                          R9 R10 1 [1]
       46 CALL                             R7 2 1
       47 GETUPVAL                         R8 4
       48 GETTABLEKS                       R8 R8 K6 ["useState"]
       50 LOADK                            R9 K7 [""]
       51 CALL                             R8 1 2
       52 GETUPVAL                         R10 4
       53 GETTABLEKS                       R10 R10 K6 ["useState"]
       55 GETUPVAL                         R11 6
       56 CALL                             R10 1 2
       57 GETUPVAL                         R12 7
       58 LOADB                            R13 0
       59 CALL                             R12 1 1
       60 GETUPVAL                         R13 4
       61 GETTABLEKS                       R13 R13 K8 ["useRef"]
       63 LOADNIL                          R14
       64 CALL                             R13 1 1
       65 JUMPIFNOTEQKN                    R6 K9 [0] ; [+3]
       67 LOADB                            R14 1
       68 JUMP                             ; [+1]
       69 LOADB                            R14 0
       70 GETUPVAL                         R15 4
       71 GETTABLEKS                       R15 R15 K10 ["createElement"]
       73 GETUPVAL                         R16 8
       74 GETTABLEKS                       R16 R16 K11 ["Dialog"]
       76 DUPTABLE                         R17 K20 [{["Title"] = "", ["MinContentSize"], ["Size"], ["Modal"] = True, ["OnClose"], ["Enabled"] = True, ["PluginDesign"]}]
       77 GETUPVAL                         R18 6
       78 SETTABLEKS                       R18 R17 K13 ["MinContentSize"]
       80 SETTABLEKS                       R10 R17 K14 ["Size"]
       82 GETTABLEKS                       R18 R0 K21 ["onClose"]
       84 SETTABLEKS                       R18 R17 K17 ["OnClose"]
       86 GETUPVAL                         R19 9
       87 JUMPIFNOT                        R19 ; [+2]
       88 MOVE                             R18 R1
       89 JUMP                             ; [+1]
       90 LOADNIL                          R18
       91 SETTABLEKS                       R18 R17 K19 ["PluginDesign"]
       93 DUPTABLE                         R18 K24 [{"StyleLink", "Content"}]
       94 GETUPVAL                         R20 9
       95 JUMPIF                           R20 ; [+9]
       96 GETUPVAL                         R19 4
       97 GETTABLEKS                       R19 R19 K10 ["createElement"]
       99 LOADK                            R20 K22 ["StyleLink"]
      100 DUPTABLE                         R21 K26 [{"StyleSheet"}]
      101 SETTABLEKS                       R1 R21 K25 ["StyleSheet"]
      103 CALL                             R19 2 1
      104 JUMP                             ; [+1]
      105 LOADNIL                          R19
      106 SETTABLEKS                       R19 R18 K22 ["StyleLink"]
      108 GETUPVAL                         R19 4
      109 GETTABLEKS                       R19 R19 K10 ["createElement"]
      111 GETUPVAL                         R20 10
      112 DUPTABLE                         R21 K31 [{["onAbsoluteSizeChanged"], ["tag"] = "col gap-medium size-full-0 auto-y padding-x-large padding-bottom-medium padding-top-medium", ["LayoutOrder"]}]
      113 NEWCLOSURE                       R22 P2
      114 CAPTURE                          VAL R11
      115 SETTABLEKS                       R22 R21 K27 ["onAbsoluteSizeChanged"]
      117 NAMECALL                         R22 R3 K32 ["getNextOrder"]
      119 CALL                             R22 1 1
      120 SETTABLEKS                       R22 R21 K30 ["LayoutOrder"]
      122 DUPTABLE                         R22 K39 [{"ItemIdLabel", "ItemIdInputGroup", "ErrorBanner", "ItemRows", "Footer", "ErrorDialog"}]
      123 GETUPVAL                         R23 4
      124 GETTABLEKS                       R23 R23 K10 ["createElement"]
      126 GETUPVAL                         R24 11
      127 DUPTABLE                         R25 K42 [{["Text"], ["tag"] = "auto-xy text-title-medium text-align-y-center content-emphasis"}]
      128 LOADK                            R28 K43 ["MarketplaceImport"]
      129 LOADK                            R29 K44 ["AddAvatarItemsLabel"]
      130 NAMECALL                         R26 R2 K45 ["getText"]
      132 CALL                             R26 3 1
      133 SETTABLEKS                       R26 R25 K40 ["Text"]
      135 CALL                             R23 2 1
      136 SETTABLEKS                       R23 R22 K33 ["ItemIdLabel"]
      138 GETUPVAL                         R23 4
      139 GETTABLEKS                       R23 R23 K10 ["createElement"]
      141 GETUPVAL                         R24 10
      142 DUPTABLE                         R25 K47 [{["tag"] = "col gap-xxsmall size-full-0 auto-y", ["LayoutOrder"]}]
      143 NAMECALL                         R26 R3 K32 ["getNextOrder"]
      145 CALL                             R26 1 1
      146 SETTABLEKS                       R26 R25 K30 ["LayoutOrder"]
      148 DUPTABLE                         R26 K51 [{"ItemIdInput", "ItemIdInputRow", "PressEnterCaption"}]
      149 GETUPVAL                         R28 12
      150 CALL                             R28 0 1
      151 JUMPIFNOT                        R28 ; [+2]
      152 LOADNIL                          R27
      153 JUMP                             ; [+42]
      154 GETUPVAL                         R27 4
      155 GETTABLEKS                       R27 R27 K10 ["createElement"]
      157 GETUPVAL                         R28 13
      158 DUPTABLE                         R29 K63 [{["text"], ["testId"] = "import-dialog-item-id-input", ["textBoxRef"], ["placeholder"], ["label"] = "", ["onChanged"], ["size"], ["width"], ["LayoutOrder"] = 1, ["onReturnPressed"]}]
      159 SETTABLEKS                       R8 R29 K52 ["text"]
      161 SETTABLEKS                       R13 R29 K55 ["textBoxRef"]
      163 LOADK                            R32 K43 ["MarketplaceImport"]
      164 LOADK                            R33 K64 ["ItemIdInputPlaceholder"]
      165 NAMECALL                         R30 R2 K45 ["getText"]
      167 CALL                             R30 3 1
      168 SETTABLEKS                       R30 R29 K56 ["placeholder"]
      170 NEWCLOSURE                       R30 P3
      171 CAPTURE                          VAL R0
      172 CAPTURE                          VAL R9
      173 SETTABLEKS                       R30 R29 K58 ["onChanged"]
      175 GETUPVAL                         R30 14
      176 GETTABLEKS                       R30 R30 K65 ["XSmall"]
      178 SETTABLEKS                       R30 R29 K59 ["size"]
      180 GETIMPORT                        R30 K67 [UDim.new]
      182 LOADN                            R31 1
      183 LOADN                            R32 0
      184 CALL                             R30 2 1
      185 SETTABLEKS                       R30 R29 K60 ["width"]
      187 NEWCLOSURE                       R30 P4
      188 CAPTURE                          VAL R0
      189 CAPTURE                          UPVAL U15
      190 CAPTURE                          VAL R8
      191 CAPTURE                          UPVAL U16
      192 CAPTURE                          VAL R9
      193 SETTABLEKS                       R30 R29 K62 ["onReturnPressed"]
      195 CALL                             R27 2 1
      196 SETTABLEKS                       R27 R26 K48 ["ItemIdInput"]
      198 GETUPVAL                         R28 12
      199 CALL                             R28 0 1
      200 JUMPIFNOT                        R28 ; [+15]
      201 GETUPVAL                         R27 4
      202 GETTABLEKS                       R27 R27 K10 ["createElement"]
      204 GETUPVAL                         R28 17
      205 DUPTABLE                         R29 K70 [{["isFetching"], ["onTextEntered"], ["LayoutOrder"] = 1}]
      206 GETTABLEKS                       R30 R0 K68 ["isFetching"]
      208 SETTABLEKS                       R30 R29 K68 ["isFetching"]
      210 GETTABLEKS                       R30 R0 K69 ["onTextEntered"]
      212 SETTABLEKS                       R30 R29 K69 ["onTextEntered"]
      214 CALL                             R27 2 1
      215 JUMP                             ; [+1]
      216 LOADNIL                          R27
      217 SETTABLEKS                       R27 R26 K49 ["ItemIdInputRow"]
      219 GETUPVAL                         R27 4
      220 GETTABLEKS                       R27 R27 K10 ["createElement"]
      222 GETUPVAL                         R28 11
      223 DUPTABLE                         R29 K73 [{["Text"], ["tag"] = "auto-xy padding-top-xsmall text-caption-small content-default", ["LayoutOrder"] = 2}]
      224 GETUPVAL                         R31 15
      225 CALL                             R31 0 1
      226 JUMPIFNOT                        R31 ; [+6]
      227 LOADK                            R32 K43 ["MarketplaceImport"]
      228 LOADK                            R33 K74 ["AddMultipleIdsHint"]
      229 NAMECALL                         R30 R2 K45 ["getText"]
      231 CALL                             R30 3 1
      232 JUMP                             ; [+5]
      233 LOADK                            R32 K43 ["MarketplaceImport"]
      234 LOADK                            R33 K75 ["PressEnterToLoadAssetIDs"]
      235 NAMECALL                         R30 R2 K45 ["getText"]
      237 CALL                             R30 3 1
      238 SETTABLEKS                       R30 R29 K40 ["Text"]
      240 CALL                             R27 2 1
      241 SETTABLEKS                       R27 R26 K50 ["PressEnterCaption"]
      243 CALL                             R23 3 1
      244 SETTABLEKS                       R23 R22 K34 ["ItemIdInputGroup"]
      246 LENGTH                           R24 R4
      247 JUMPIFNOTEQKN                    R24 K9 [0] ; [+3]
      249 LOADNIL                          R23
      250 JUMP                             ; [+91]
      251 GETUPVAL                         R23 4
      252 GETTABLEKS                       R23 R23 K10 ["createElement"]
      254 GETUPVAL                         R24 10
      255 DUPTABLE                         R25 K77 [{["tag"] = "size-full-0 auto-y stroke-system-alert radius-small", ["LayoutOrder"]}]
      256 NAMECALL                         R26 R3 K32 ["getNextOrder"]
      258 CALL                             R26 1 1
      259 SETTABLEKS                       R26 R25 K30 ["LayoutOrder"]
      261 DUPTABLE                         R26 K79 [{"ErrorBannerContent"}]
      262 LENGTH                           R28 R4
      263 JUMPIFNOTEQKN                    R28 K61 [1] ; [+21]
      265 GETUPVAL                         R27 4
      266 GETTABLEKS                       R27 R27 K10 ["createElement"]
      268 GETUPVAL                         R28 18
      269 DUPTABLE                         R29 K83 [{"variant", "severity", "title"}]
      270 GETUPVAL                         R30 19
      271 GETTABLEKS                       R30 R30 K84 ["Standard"]
      273 SETTABLEKS                       R30 R29 K80 ["variant"]
      275 GETUPVAL                         R30 20
      276 GETTABLEKS                       R30 R30 K85 ["Error"]
      278 SETTABLEKS                       R30 R29 K81 ["severity"]
      280 GETTABLEN                        R30 R4 1
      281 SETTABLEKS                       R30 R29 K82 ["title"]
      283 CALL                             R27 2 1
      284 JUMP                             ; [+54]
      285 GETUPVAL                         R27 4
      286 GETTABLEKS                       R27 R27 K10 ["createElement"]
      288 GETUPVAL                         R28 18
      289 DUPTABLE                         R29 K87 [{"variant", "severity", "title", "actions"}]
      290 GETUPVAL                         R30 19
      291 GETTABLEKS                       R30 R30 K84 ["Standard"]
      293 SETTABLEKS                       R30 R29 K80 ["variant"]
      295 GETUPVAL                         R30 20
      296 GETTABLEKS                       R30 R30 K85 ["Error"]
      298 SETTABLEKS                       R30 R29 K81 ["severity"]
      300 LOADK                            R32 K43 ["MarketplaceImport"]
      301 LOADK                            R33 K88 ["ErrorBannerText"]
      302 DUPTABLE                         R34 K90 [{"numErrors"}]
      303 LENGTH                           R36 R4
      304 FASTCALL1                        TOSTRING R36 ; [+2]
      305 GETIMPORT                        R35 K92 [tostring]
      307 CALL                             R35 1 1
      308 SETTABLEKS                       R35 R34 K89 ["numErrors"]
      310 NAMECALL                         R30 R2 K45 ["getText"]
      312 CALL                             R30 4 1
      313 SETTABLEKS                       R30 R29 K82 ["title"]
      315 NEWTABLE                         R30 0 1
      317 DUPTABLE                         R31 K94 [{"text", "variant", "onActivated"}]
      318 LOADK                            R34 K43 ["MarketplaceImport"]
      319 LOADK                            R35 K95 ["SeeDetailsActionLabel"]
      320 NAMECALL                         R32 R2 K45 ["getText"]
      322 CALL                             R32 3 1
      323 SETTABLEKS                       R32 R31 K52 ["text"]
      325 GETUPVAL                         R32 21
      326 GETTABLEKS                       R32 R32 K84 ["Standard"]
      328 SETTABLEKS                       R32 R31 K80 ["variant"]
      330 GETTABLEKS                       R32 R12 K96 ["enable"]
      332 SETTABLEKS                       R32 R31 K93 ["onActivated"]
      334 SETLIST                          R30 R31 1 [1]
      336 SETTABLEKS                       R30 R29 K86 ["actions"]
      338 CALL                             R27 2 1
      339 SETTABLEKS                       R27 R26 K78 ["ErrorBannerContent"]
      341 CALL                             R23 3 1
      342 SETTABLEKS                       R23 R22 K35 ["ErrorBanner"]
      344 JUMPIFEQKNIL                     R5 ; [+7]
      346 GETIMPORT                        R24 K98 [next]
      348 MOVE                             R25 R5
      349 CALL                             R24 1 1
      350 JUMPIFNOTEQKNIL                  R24 ; [+3]
      352 LOADNIL                          R23
      353 JUMP                             ; [+64]
      354 GETUPVAL                         R23 4
      355 GETTABLEKS                       R23 R23 K10 ["createElement"]
      357 GETUPVAL                         R24 22
      358 DUPTABLE                         R25 K103 [{["tag"] = "grow size-full", ["scroll"], ["sizeConstraint"], ["layout"], ["LayoutOrder"]}]
      359 DUPTABLE                         R26 K109 [{"ScrollingDirection", "AutomaticCanvasSize", "CanvasSize", "scrollBarVisibility", "VerticalScrollBarInset"}]
      360 GETIMPORT                        R27 K112 [Enum.ScrollingDirection.Y]
      362 SETTABLEKS                       R27 R26 K104 ["ScrollingDirection"]
      364 GETIMPORT                        R27 K114 [Enum.AutomaticSize.Y]
      366 SETTABLEKS                       R27 R26 K105 ["AutomaticCanvasSize"]
      368 GETIMPORT                        R27 K117 [UDim2.fromScale]
      370 LOADN                            R28 0
      371 LOADN                            R29 1
      372 CALL                             R27 2 1
      373 SETTABLEKS                       R27 R26 K106 ["CanvasSize"]
      375 GETUPVAL                         R27 23
      376 GETTABLEKS                       R27 R27 K118 ["Auto"]
      378 SETTABLEKS                       R27 R26 K107 ["scrollBarVisibility"]
      380 GETIMPORT                        R27 K121 [Enum.ScrollBarInset.Always]
      382 SETTABLEKS                       R27 R26 K108 ["VerticalScrollBarInset"]
      384 SETTABLEKS                       R26 R25 K100 ["scroll"]
      386 DUPTABLE                         R26 K123 [{"MaxSize"}]
      387 GETIMPORT                        R27 K125 [Vector2.new]
      389 LOADK                            R28 K126 [∞]
      390 MOVE                             R29 R7
      391 CALL                             R27 2 1
      392 SETTABLEKS                       R27 R26 K122 ["MaxSize"]
      394 SETTABLEKS                       R26 R25 K101 ["sizeConstraint"]
      396 DUPTABLE                         R26 K129 [{"SortOrder", "FillDirection"}]
      397 GETIMPORT                        R27 K130 [Enum.SortOrder.LayoutOrder]
      399 SETTABLEKS                       R27 R26 K127 ["SortOrder"]
      401 GETIMPORT                        R27 K132 [Enum.FillDirection.Vertical]
      403 SETTABLEKS                       R27 R26 K128 ["FillDirection"]
      405 SETTABLEKS                       R26 R25 K102 ["layout"]
      407 NAMECALL                         R26 R3 K32 ["getNextOrder"]
      409 CALL                             R26 1 1
      410 SETTABLEKS                       R26 R25 K30 ["LayoutOrder"]
      412 GETUPVAL                         R26 24
      413 MOVE                             R27 R5
      414 GETTABLEKS                       R28 R0 K133 ["onRemoveItem"]
      416 CALL                             R26 2 1
      417 CALL                             R23 3 1
      418 SETTABLEKS                       R23 R22 K36 ["ItemRows"]
      420 GETUPVAL                         R23 4
      421 GETTABLEKS                       R23 R23 K10 ["createElement"]
      423 GETUPVAL                         R24 10
      424 DUPTABLE                         R25 K135 [{["tag"] = "row align-x-right gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      425 NAMECALL                         R26 R3 K32 ["getNextOrder"]
      427 CALL                             R26 1 1
      428 SETTABLEKS                       R26 R25 K30 ["LayoutOrder"]
      430 DUPTABLE                         R26 K138 [{"AddItemsButton", "CancelButton"}]
      431 GETUPVAL                         R27 4
      432 GETTABLEKS                       R27 R27 K10 ["createElement"]
      434 GETUPVAL                         R28 25
      435 DUPTABLE                         R29 K140 [{"text", "variant", "onActivated", "isDisabled", "width", "size", "LayoutOrder"}]
      436 GETUPVAL                         R31 12
      437 CALL                             R31 0 1
      438 JUMPIFNOT                        R31 ; [+6]
      439 LOADK                            R32 K43 ["MarketplaceImport"]
      440 LOADK                            R33 K141 ["ContinueButtonLabel"]
      441 NAMECALL                         R30 R2 K45 ["getText"]
      443 CALL                             R30 3 1
      444 JUMP                             ; [+5]
      445 LOADK                            R32 K43 ["MarketplaceImport"]
      446 LOADK                            R33 K142 ["AddButtonLabel"]
      447 NAMECALL                         R30 R2 K45 ["getText"]
      449 CALL                             R30 3 1
      450 SETTABLEKS                       R30 R29 K52 ["text"]
      452 GETUPVAL                         R30 21
      453 GETTABLEKS                       R30 R30 K143 ["Emphasis"]
      455 SETTABLEKS                       R30 R29 K80 ["variant"]
      457 GETTABLEKS                       R30 R0 K144 ["onAddItems"]
      459 SETTABLEKS                       R30 R29 K93 ["onActivated"]
      461 SETTABLEKS                       R14 R29 K139 ["isDisabled"]
      463 GETIMPORT                        R30 K67 [UDim.new]
      465 LOADK                            R31 K145 [0.25]
      466 LOADN                            R32 0
      467 CALL                             R30 2 1
      468 SETTABLEKS                       R30 R29 K60 ["width"]
      470 GETUPVAL                         R30 14
      471 GETTABLEKS                       R30 R30 K65 ["XSmall"]
      473 SETTABLEKS                       R30 R29 K59 ["size"]
      475 NAMECALL                         R30 R3 K32 ["getNextOrder"]
      477 CALL                             R30 1 1
      478 SETTABLEKS                       R30 R29 K30 ["LayoutOrder"]
      480 CALL                             R27 2 1
      481 SETTABLEKS                       R27 R26 K136 ["AddItemsButton"]
      483 GETUPVAL                         R27 4
      484 GETTABLEKS                       R27 R27 K10 ["createElement"]
      486 GETUPVAL                         R28 25
      487 DUPTABLE                         R29 K147 [{["text"], ["variant"], ["onActivated"], ["isDisabled"] = False, ["width"], ["size"], ["LayoutOrder"]}]
      488 LOADK                            R32 K43 ["MarketplaceImport"]
      489 LOADK                            R33 K148 ["CancelButtonLabel"]
      490 NAMECALL                         R30 R2 K45 ["getText"]
      492 CALL                             R30 3 1
      493 SETTABLEKS                       R30 R29 K52 ["text"]
      495 GETUPVAL                         R30 21
      496 GETTABLEKS                       R30 R30 K84 ["Standard"]
      498 SETTABLEKS                       R30 R29 K80 ["variant"]
      500 GETTABLEKS                       R30 R0 K21 ["onClose"]
      502 SETTABLEKS                       R30 R29 K93 ["onActivated"]
      504 GETIMPORT                        R30 K67 [UDim.new]
      506 LOADK                            R31 K145 [0.25]
      507 LOADN                            R32 0
      508 CALL                             R30 2 1
      509 SETTABLEKS                       R30 R29 K60 ["width"]
      511 GETUPVAL                         R30 14
      512 GETTABLEKS                       R30 R30 K65 ["XSmall"]
      514 SETTABLEKS                       R30 R29 K59 ["size"]
      516 NAMECALL                         R30 R3 K32 ["getNextOrder"]
      518 CALL                             R30 1 1
      519 SETTABLEKS                       R30 R29 K30 ["LayoutOrder"]
      521 CALL                             R27 2 1
      522 SETTABLEKS                       R27 R26 K137 ["CancelButton"]
      524 CALL                             R23 3 1
      525 SETTABLEKS                       R23 R22 K37 ["Footer"]
      527 GETTABLEKS                       R24 R12 K149 ["enabled"]
      529 JUMPIFNOT                        R24 ; [+13]
      530 GETUPVAL                         R23 4
      531 GETTABLEKS                       R23 R23 K10 ["createElement"]
      533 GETUPVAL                         R24 26
      534 DUPTABLE                         R25 K150 [{"errors", "onClose"}]
      535 SETTABLEKS                       R4 R25 K3 ["errors"]
      537 GETTABLEKS                       R26 R12 K151 ["disable"]
      539 SETTABLEKS                       R26 R25 K21 ["onClose"]
      541 CALL                             R23 2 1
      542 JUMP                             ; [+1]
      543 LOADNIL                          R23
      544 SETTABLEKS                       R23 R22 K38 ["ErrorDialog"]
      546 CALL                             R19 3 1
      547 SETTABLEKS                       R19 R18 K23 ["Content"]
      549 CALL                             R15 3 -1
      550 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["Enums"]
       30 GETTABLEKS                       R4 R4 K11 ["AlertVariant"]
       32 GETTABLEKS                       R5 R3 K10 ["Enums"]
       34 GETTABLEKS                       R5 R5 K12 ["AlertSeverity"]
       36 GETTABLEKS                       R6 R3 K10 ["Enums"]
       38 GETTABLEKS                       R6 R6 K13 ["ButtonVariant"]
       40 GETTABLEKS                       R7 R3 K10 ["Enums"]
       42 GETTABLEKS                       R7 R7 K14 ["IconName"]
       44 GETTABLEKS                       R8 R3 K10 ["Enums"]
       46 GETTABLEKS                       R8 R8 K15 ["IconSize"]
       48 GETTABLEKS                       R9 R3 K10 ["Enums"]
       50 GETTABLEKS                       R9 R9 K16 ["IconVariant"]
       52 GETTABLEKS                       R10 R3 K10 ["Enums"]
       54 GETTABLEKS                       R10 R10 K17 ["InputSize"]
       56 GETTABLEKS                       R11 R3 K10 ["Enums"]
       58 GETTABLEKS                       R11 R11 K18 ["ScrollBarVisibility"]
       60 GETTABLEKS                       R12 R3 K19 ["Button"]
       62 GETTABLEKS                       R13 R3 K20 ["Icon"]
       64 GETTABLEKS                       R14 R3 K21 ["Image"]
       66 GETTABLEKS                       R15 R3 K22 ["ScrollView"]
       68 GETTABLEKS                       R16 R3 K23 ["SystemBanner"]
       70 GETTABLEKS                       R17 R3 K24 ["Text"]
       72 GETTABLEKS                       R18 R3 K25 ["TextInput"]
       74 GETTABLEKS                       R19 R3 K26 ["View"]
       76 GETIMPORT                        R20 K5 [require]
       78 GETTABLEKS                       R21 R0 K6 ["Packages"]
       80 GETTABLEKS                       R21 R21 K27 ["Framework"]
       82 CALL                             R20 1 1
       83 GETTABLEKS                       R21 R20 K28 ["SharedFlags"]
       85 GETTABLEKS                       R21 R21 K29 ["getFFlagDevFrameworkUsePluginDesign"]
       87 CALL                             R21 0 1
       88 GETTABLEKS                       R22 R20 K30 ["UI"]
       90 GETTABLEKS                       R23 R20 K31 ["Util"]
       92 GETTABLEKS                       R23 R23 K32 ["LayoutOrderIterator"]
       94 GETTABLEKS                       R24 R20 K33 ["ContextServices"]
       96 GETTABLEKS                       R24 R24 K34 ["Localization"]
       98 GETTABLEKS                       R25 R20 K33 ["ContextServices"]
      100 GETTABLEKS                       R25 R25 K35 ["Design"]
      102 GETIMPORT                        R26 K5 [require]
      104 GETTABLEKS                       R27 R0 K36 ["Src"]
      106 GETTABLEKS                       R27 R27 K37 ["Hooks"]
      108 GETTABLEKS                       R27 R27 K38 ["useToggleState"]
      110 CALL                             R26 1 1
      111 GETIMPORT                        R27 K5 [require]
      113 GETTABLEKS                       R28 R0 K36 ["Src"]
      115 GETTABLEKS                       R28 R28 K31 ["Util"]
      117 GETTABLEKS                       R28 R28 K39 ["getAssetThumbnail"]
      119 CALL                             R27 1 1
      120 GETIMPORT                        R28 K5 [require]
      122 GETTABLEKS                       R29 R0 K36 ["Src"]
      124 GETTABLEKS                       R29 R29 K31 ["Util"]
      126 GETTABLEKS                       R29 R29 K40 ["getBundleThumbnail"]
      128 CALL                             R28 1 1
      129 GETIMPORT                        R29 K5 [require]
      131 GETTABLEKS                       R30 R0 K36 ["Src"]
      133 GETTABLEKS                       R30 R30 K41 ["Types"]
      135 CALL                             R29 1 1
      136 GETIMPORT                        R30 K5 [require]
      138 GETIMPORT                        R31 K1 [script]
      140 GETTABLEKS                       R31 R31 K42 ["Parent"]
      142 GETTABLEKS                       R31 R31 K43 ["ImportErrorsDialog"]
      144 CALL                             R30 1 1
      145 GETIMPORT                        R31 K5 [require]
      147 GETIMPORT                        R32 K1 [script]
      149 GETTABLEKS                       R32 R32 K42 ["Parent"]
      151 GETTABLEKS                       R32 R32 K44 ["ImportItemRow"]
      153 CALL                             R31 1 1
      154 GETIMPORT                        R32 K5 [require]
      156 GETIMPORT                        R33 K1 [script]
      158 GETTABLEKS                       R33 R33 K42 ["Parent"]
      160 GETTABLEKS                       R33 R33 K45 ["ItemIdInputRow"]
      162 CALL                             R32 1 1
      163 GETIMPORT                        R33 K5 [require]
      165 GETTABLEKS                       R34 R0 K36 ["Src"]
      167 GETTABLEKS                       R34 R34 K46 ["Flags"]
      169 GETTABLEKS                       R34 R34 K47 ["getFFlagAvatarPreviewerLookComposer"]
      171 CALL                             R33 1 1
      172 GETIMPORT                        R34 K5 [require]
      174 GETTABLEKS                       R35 R0 K36 ["Src"]
      176 GETTABLEKS                       R35 R35 K46 ["Flags"]
      178 GETTABLEKS                       R35 R35 K48 ["getFFlagAvatarPreviewerMarketplaceImportAddButton"]
      180 CALL                             R34 1 1
      181 GETIMPORT                        R35 K5 [require]
      183 GETTABLEKS                       R36 R0 K36 ["Src"]
      185 GETTABLEKS                       R36 R36 K46 ["Flags"]
      187 GETTABLEKS                       R36 R36 K49 ["getFFlagAvatarPreviewerMarketplaceImportFlexibleIds"]
      189 CALL                             R35 1 1
      190 GETIMPORT                        R36 K5 [require]
      192 GETTABLEKS                       R37 R0 K36 ["Src"]
      194 GETTABLEKS                       R37 R37 K46 ["Flags"]
      196 GETTABLEKS                       R37 R37 K50 ["getFFlagAvatarPreviewerMarketplaceImportPriceText"]
      198 CALL                             R36 1 1
      199 GETIMPORT                        R37 K53 [Vector2.new]
      201 LOADN                            R38 400
      202 LOADN                            R39 116
      203 CALL                             R37 2 1
      204 DUPCLOSURE                       R38 K54 [PROTO_0]
      205 DUPCLOSURE                       R39 K55 [PROTO_2]
      206 CAPTURE                          VAL R23
      207 CAPTURE                          VAL R36
      208 CAPTURE                          VAL R2
      209 CAPTURE                          VAL R31
      210 CAPTURE                          VAL R19
      211 CAPTURE                          VAL R14
      212 CAPTURE                          VAL R27
      213 CAPTURE                          VAL R28
      214 CAPTURE                          VAL R17
      215 CAPTURE                          VAL R13
      216 CAPTURE                          VAL R7
      217 CAPTURE                          VAL R8
      218 CAPTURE                          VAL R9
      219 CAPTURE                          VAL R12
      220 CAPTURE                          VAL R10
      221 CAPTURE                          VAL R6
      222 DUPCLOSURE                       R40 K56 [PROTO_8]
      223 CAPTURE                          VAL R33
      224 CAPTURE                          VAL R25
      225 CAPTURE                          VAL R24
      226 CAPTURE                          VAL R23
      227 CAPTURE                          VAL R2
      228 CAPTURE                          VAL R1
      229 CAPTURE                          VAL R37
      230 CAPTURE                          VAL R26
      231 CAPTURE                          VAL R22
      232 CAPTURE                          VAL R21
      233 CAPTURE                          VAL R19
      234 CAPTURE                          VAL R17
      235 CAPTURE                          VAL R34
      236 CAPTURE                          VAL R18
      237 CAPTURE                          VAL R10
      238 CAPTURE                          VAL R35
      239 CAPTURE                          VAL R38
      240 CAPTURE                          VAL R32
      241 CAPTURE                          VAL R16
      242 CAPTURE                          VAL R4
      243 CAPTURE                          VAL R5
      244 CAPTURE                          VAL R6
      245 CAPTURE                          VAL R15
      246 CAPTURE                          VAL R11
      247 CAPTURE                          VAL R39
      248 CAPTURE                          VAL R12
      249 CAPTURE                          VAL R30
      250 RETURN                           R40 1
