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
       76 DUPTABLE                         R17 K19 [{["Title"] = "", ["MinContentSize"], ["Size"], ["Modal"] = True, ["OnClose"], ["Enabled"] = True}]
       77 GETUPVAL                         R18 6
       78 SETTABLEKS                       R18 R17 K13 ["MinContentSize"]
       80 SETTABLEKS                       R10 R17 K14 ["Size"]
       82 GETTABLEKS                       R18 R0 K20 ["onClose"]
       84 SETTABLEKS                       R18 R17 K17 ["OnClose"]
       86 DUPTABLE                         R18 K23 [{"StyleLink", "Content"}]
       87 GETUPVAL                         R19 4
       88 GETTABLEKS                       R19 R19 K10 ["createElement"]
       90 LOADK                            R20 K21 ["StyleLink"]
       91 DUPTABLE                         R21 K25 [{"StyleSheet"}]
       92 SETTABLEKS                       R1 R21 K24 ["StyleSheet"]
       94 CALL                             R19 2 1
       95 SETTABLEKS                       R19 R18 K21 ["StyleLink"]
       97 GETUPVAL                         R19 4
       98 GETTABLEKS                       R19 R19 K10 ["createElement"]
      100 GETUPVAL                         R20 9
      101 DUPTABLE                         R21 K30 [{["onAbsoluteSizeChanged"], ["tag"] = "col gap-medium size-full-0 auto-y padding-x-large padding-bottom-medium padding-top-medium", ["LayoutOrder"]}]
      102 NEWCLOSURE                       R22 P2
      103 CAPTURE                          VAL R11
      104 SETTABLEKS                       R22 R21 K26 ["onAbsoluteSizeChanged"]
      106 NAMECALL                         R22 R3 K31 ["getNextOrder"]
      108 CALL                             R22 1 1
      109 SETTABLEKS                       R22 R21 K29 ["LayoutOrder"]
      111 DUPTABLE                         R22 K38 [{"ItemIdLabel", "ItemIdInputGroup", "ErrorBanner", "ItemRows", "Footer", "ErrorDialog"}]
      112 GETUPVAL                         R23 4
      113 GETTABLEKS                       R23 R23 K10 ["createElement"]
      115 GETUPVAL                         R24 10
      116 DUPTABLE                         R25 K41 [{["Text"], ["tag"] = "auto-xy text-title-medium text-align-y-center content-emphasis"}]
      117 LOADK                            R28 K42 ["MarketplaceImport"]
      118 LOADK                            R29 K43 ["AddAvatarItemsLabel"]
      119 NAMECALL                         R26 R2 K44 ["getText"]
      121 CALL                             R26 3 1
      122 SETTABLEKS                       R26 R25 K39 ["Text"]
      124 CALL                             R23 2 1
      125 SETTABLEKS                       R23 R22 K32 ["ItemIdLabel"]
      127 GETUPVAL                         R23 4
      128 GETTABLEKS                       R23 R23 K10 ["createElement"]
      130 GETUPVAL                         R24 9
      131 DUPTABLE                         R25 K46 [{["tag"] = "col gap-xxsmall size-full-0 auto-y", ["LayoutOrder"]}]
      132 NAMECALL                         R26 R3 K31 ["getNextOrder"]
      134 CALL                             R26 1 1
      135 SETTABLEKS                       R26 R25 K29 ["LayoutOrder"]
      137 DUPTABLE                         R26 K50 [{"ItemIdInput", "ItemIdInputRow", "PressEnterCaption"}]
      138 GETUPVAL                         R28 11
      139 CALL                             R28 0 1
      140 JUMPIFNOT                        R28 ; [+2]
      141 LOADNIL                          R27
      142 JUMP                             ; [+42]
      143 GETUPVAL                         R27 4
      144 GETTABLEKS                       R27 R27 K10 ["createElement"]
      146 GETUPVAL                         R28 12
      147 DUPTABLE                         R29 K62 [{["text"], ["testId"] = "import-dialog-item-id-input", ["textBoxRef"], ["placeholder"], ["label"] = "", ["onChanged"], ["size"], ["width"], ["LayoutOrder"] = 1, ["onReturnPressed"]}]
      148 SETTABLEKS                       R8 R29 K51 ["text"]
      150 SETTABLEKS                       R13 R29 K54 ["textBoxRef"]
      152 LOADK                            R32 K42 ["MarketplaceImport"]
      153 LOADK                            R33 K63 ["ItemIdInputPlaceholder"]
      154 NAMECALL                         R30 R2 K44 ["getText"]
      156 CALL                             R30 3 1
      157 SETTABLEKS                       R30 R29 K55 ["placeholder"]
      159 NEWCLOSURE                       R30 P3
      160 CAPTURE                          VAL R0
      161 CAPTURE                          VAL R9
      162 SETTABLEKS                       R30 R29 K57 ["onChanged"]
      164 GETUPVAL                         R30 13
      165 GETTABLEKS                       R30 R30 K64 ["XSmall"]
      167 SETTABLEKS                       R30 R29 K58 ["size"]
      169 GETIMPORT                        R30 K66 [UDim.new]
      171 LOADN                            R31 1
      172 LOADN                            R32 0
      173 CALL                             R30 2 1
      174 SETTABLEKS                       R30 R29 K59 ["width"]
      176 NEWCLOSURE                       R30 P4
      177 CAPTURE                          VAL R0
      178 CAPTURE                          UPVAL U14
      179 CAPTURE                          VAL R8
      180 CAPTURE                          UPVAL U15
      181 CAPTURE                          VAL R9
      182 SETTABLEKS                       R30 R29 K61 ["onReturnPressed"]
      184 CALL                             R27 2 1
      185 SETTABLEKS                       R27 R26 K47 ["ItemIdInput"]
      187 GETUPVAL                         R28 11
      188 CALL                             R28 0 1
      189 JUMPIFNOT                        R28 ; [+15]
      190 GETUPVAL                         R27 4
      191 GETTABLEKS                       R27 R27 K10 ["createElement"]
      193 GETUPVAL                         R28 16
      194 DUPTABLE                         R29 K69 [{["isFetching"], ["onTextEntered"], ["LayoutOrder"] = 1}]
      195 GETTABLEKS                       R30 R0 K67 ["isFetching"]
      197 SETTABLEKS                       R30 R29 K67 ["isFetching"]
      199 GETTABLEKS                       R30 R0 K68 ["onTextEntered"]
      201 SETTABLEKS                       R30 R29 K68 ["onTextEntered"]
      203 CALL                             R27 2 1
      204 JUMP                             ; [+1]
      205 LOADNIL                          R27
      206 SETTABLEKS                       R27 R26 K48 ["ItemIdInputRow"]
      208 GETUPVAL                         R27 4
      209 GETTABLEKS                       R27 R27 K10 ["createElement"]
      211 GETUPVAL                         R28 10
      212 DUPTABLE                         R29 K72 [{["Text"], ["tag"] = "auto-xy padding-top-xsmall text-caption-small content-default", ["LayoutOrder"] = 2}]
      213 GETUPVAL                         R31 14
      214 CALL                             R31 0 1
      215 JUMPIFNOT                        R31 ; [+6]
      216 LOADK                            R32 K42 ["MarketplaceImport"]
      217 LOADK                            R33 K73 ["AddMultipleIdsHint"]
      218 NAMECALL                         R30 R2 K44 ["getText"]
      220 CALL                             R30 3 1
      221 JUMP                             ; [+5]
      222 LOADK                            R32 K42 ["MarketplaceImport"]
      223 LOADK                            R33 K74 ["PressEnterToLoadAssetIDs"]
      224 NAMECALL                         R30 R2 K44 ["getText"]
      226 CALL                             R30 3 1
      227 SETTABLEKS                       R30 R29 K39 ["Text"]
      229 CALL                             R27 2 1
      230 SETTABLEKS                       R27 R26 K49 ["PressEnterCaption"]
      232 CALL                             R23 3 1
      233 SETTABLEKS                       R23 R22 K33 ["ItemIdInputGroup"]
      235 LENGTH                           R24 R4
      236 JUMPIFNOTEQKN                    R24 K9 [0] ; [+3]
      238 LOADNIL                          R23
      239 JUMP                             ; [+91]
      240 GETUPVAL                         R23 4
      241 GETTABLEKS                       R23 R23 K10 ["createElement"]
      243 GETUPVAL                         R24 9
      244 DUPTABLE                         R25 K76 [{["tag"] = "size-full-0 auto-y stroke-system-alert radius-small", ["LayoutOrder"]}]
      245 NAMECALL                         R26 R3 K31 ["getNextOrder"]
      247 CALL                             R26 1 1
      248 SETTABLEKS                       R26 R25 K29 ["LayoutOrder"]
      250 DUPTABLE                         R26 K78 [{"ErrorBannerContent"}]
      251 LENGTH                           R28 R4
      252 JUMPIFNOTEQKN                    R28 K60 [1] ; [+21]
      254 GETUPVAL                         R27 4
      255 GETTABLEKS                       R27 R27 K10 ["createElement"]
      257 GETUPVAL                         R28 17
      258 DUPTABLE                         R29 K82 [{"variant", "severity", "title"}]
      259 GETUPVAL                         R30 18
      260 GETTABLEKS                       R30 R30 K83 ["Standard"]
      262 SETTABLEKS                       R30 R29 K79 ["variant"]
      264 GETUPVAL                         R30 19
      265 GETTABLEKS                       R30 R30 K84 ["Error"]
      267 SETTABLEKS                       R30 R29 K80 ["severity"]
      269 GETTABLEN                        R30 R4 1
      270 SETTABLEKS                       R30 R29 K81 ["title"]
      272 CALL                             R27 2 1
      273 JUMP                             ; [+54]
      274 GETUPVAL                         R27 4
      275 GETTABLEKS                       R27 R27 K10 ["createElement"]
      277 GETUPVAL                         R28 17
      278 DUPTABLE                         R29 K86 [{"variant", "severity", "title", "actions"}]
      279 GETUPVAL                         R30 18
      280 GETTABLEKS                       R30 R30 K83 ["Standard"]
      282 SETTABLEKS                       R30 R29 K79 ["variant"]
      284 GETUPVAL                         R30 19
      285 GETTABLEKS                       R30 R30 K84 ["Error"]
      287 SETTABLEKS                       R30 R29 K80 ["severity"]
      289 LOADK                            R32 K42 ["MarketplaceImport"]
      290 LOADK                            R33 K87 ["ErrorBannerText"]
      291 DUPTABLE                         R34 K89 [{"numErrors"}]
      292 LENGTH                           R36 R4
      293 FASTCALL1                        TOSTRING R36 ; [+2]
      294 GETIMPORT                        R35 K91 [tostring]
      296 CALL                             R35 1 1
      297 SETTABLEKS                       R35 R34 K88 ["numErrors"]
      299 NAMECALL                         R30 R2 K44 ["getText"]
      301 CALL                             R30 4 1
      302 SETTABLEKS                       R30 R29 K81 ["title"]
      304 NEWTABLE                         R30 0 1
      306 DUPTABLE                         R31 K93 [{"text", "variant", "onActivated"}]
      307 LOADK                            R34 K42 ["MarketplaceImport"]
      308 LOADK                            R35 K94 ["SeeDetailsActionLabel"]
      309 NAMECALL                         R32 R2 K44 ["getText"]
      311 CALL                             R32 3 1
      312 SETTABLEKS                       R32 R31 K51 ["text"]
      314 GETUPVAL                         R32 20
      315 GETTABLEKS                       R32 R32 K83 ["Standard"]
      317 SETTABLEKS                       R32 R31 K79 ["variant"]
      319 GETTABLEKS                       R32 R12 K95 ["enable"]
      321 SETTABLEKS                       R32 R31 K92 ["onActivated"]
      323 SETLIST                          R30 R31 1 [1]
      325 SETTABLEKS                       R30 R29 K85 ["actions"]
      327 CALL                             R27 2 1
      328 SETTABLEKS                       R27 R26 K77 ["ErrorBannerContent"]
      330 CALL                             R23 3 1
      331 SETTABLEKS                       R23 R22 K34 ["ErrorBanner"]
      333 JUMPIFEQKNIL                     R5 ; [+7]
      335 GETIMPORT                        R24 K97 [next]
      337 MOVE                             R25 R5
      338 CALL                             R24 1 1
      339 JUMPIFNOTEQKNIL                  R24 ; [+3]
      341 LOADNIL                          R23
      342 JUMP                             ; [+64]
      343 GETUPVAL                         R23 4
      344 GETTABLEKS                       R23 R23 K10 ["createElement"]
      346 GETUPVAL                         R24 21
      347 DUPTABLE                         R25 K102 [{["tag"] = "grow size-full", ["scroll"], ["sizeConstraint"], ["layout"], ["LayoutOrder"]}]
      348 DUPTABLE                         R26 K108 [{"ScrollingDirection", "AutomaticCanvasSize", "CanvasSize", "scrollBarVisibility", "VerticalScrollBarInset"}]
      349 GETIMPORT                        R27 K111 [Enum.ScrollingDirection.Y]
      351 SETTABLEKS                       R27 R26 K103 ["ScrollingDirection"]
      353 GETIMPORT                        R27 K113 [Enum.AutomaticSize.Y]
      355 SETTABLEKS                       R27 R26 K104 ["AutomaticCanvasSize"]
      357 GETIMPORT                        R27 K116 [UDim2.fromScale]
      359 LOADN                            R28 0
      360 LOADN                            R29 1
      361 CALL                             R27 2 1
      362 SETTABLEKS                       R27 R26 K105 ["CanvasSize"]
      364 GETUPVAL                         R27 22
      365 GETTABLEKS                       R27 R27 K117 ["Auto"]
      367 SETTABLEKS                       R27 R26 K106 ["scrollBarVisibility"]
      369 GETIMPORT                        R27 K120 [Enum.ScrollBarInset.Always]
      371 SETTABLEKS                       R27 R26 K107 ["VerticalScrollBarInset"]
      373 SETTABLEKS                       R26 R25 K99 ["scroll"]
      375 DUPTABLE                         R26 K122 [{"MaxSize"}]
      376 GETIMPORT                        R27 K124 [Vector2.new]
      378 LOADK                            R28 K125 [∞]
      379 MOVE                             R29 R7
      380 CALL                             R27 2 1
      381 SETTABLEKS                       R27 R26 K121 ["MaxSize"]
      383 SETTABLEKS                       R26 R25 K100 ["sizeConstraint"]
      385 DUPTABLE                         R26 K128 [{"SortOrder", "FillDirection"}]
      386 GETIMPORT                        R27 K129 [Enum.SortOrder.LayoutOrder]
      388 SETTABLEKS                       R27 R26 K126 ["SortOrder"]
      390 GETIMPORT                        R27 K131 [Enum.FillDirection.Vertical]
      392 SETTABLEKS                       R27 R26 K127 ["FillDirection"]
      394 SETTABLEKS                       R26 R25 K101 ["layout"]
      396 NAMECALL                         R26 R3 K31 ["getNextOrder"]
      398 CALL                             R26 1 1
      399 SETTABLEKS                       R26 R25 K29 ["LayoutOrder"]
      401 GETUPVAL                         R26 23
      402 MOVE                             R27 R5
      403 GETTABLEKS                       R28 R0 K132 ["onRemoveItem"]
      405 CALL                             R26 2 1
      406 CALL                             R23 3 1
      407 SETTABLEKS                       R23 R22 K35 ["ItemRows"]
      409 GETUPVAL                         R23 4
      410 GETTABLEKS                       R23 R23 K10 ["createElement"]
      412 GETUPVAL                         R24 9
      413 DUPTABLE                         R25 K134 [{["tag"] = "row align-x-right gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      414 NAMECALL                         R26 R3 K31 ["getNextOrder"]
      416 CALL                             R26 1 1
      417 SETTABLEKS                       R26 R25 K29 ["LayoutOrder"]
      419 DUPTABLE                         R26 K137 [{"AddItemsButton", "CancelButton"}]
      420 GETUPVAL                         R27 4
      421 GETTABLEKS                       R27 R27 K10 ["createElement"]
      423 GETUPVAL                         R28 24
      424 DUPTABLE                         R29 K139 [{"text", "variant", "onActivated", "isDisabled", "width", "size", "LayoutOrder"}]
      425 GETUPVAL                         R31 11
      426 CALL                             R31 0 1
      427 JUMPIFNOT                        R31 ; [+6]
      428 LOADK                            R32 K42 ["MarketplaceImport"]
      429 LOADK                            R33 K140 ["ContinueButtonLabel"]
      430 NAMECALL                         R30 R2 K44 ["getText"]
      432 CALL                             R30 3 1
      433 JUMP                             ; [+5]
      434 LOADK                            R32 K42 ["MarketplaceImport"]
      435 LOADK                            R33 K141 ["AddButtonLabel"]
      436 NAMECALL                         R30 R2 K44 ["getText"]
      438 CALL                             R30 3 1
      439 SETTABLEKS                       R30 R29 K51 ["text"]
      441 GETUPVAL                         R30 20
      442 GETTABLEKS                       R30 R30 K142 ["Emphasis"]
      444 SETTABLEKS                       R30 R29 K79 ["variant"]
      446 GETTABLEKS                       R30 R0 K143 ["onAddItems"]
      448 SETTABLEKS                       R30 R29 K92 ["onActivated"]
      450 SETTABLEKS                       R14 R29 K138 ["isDisabled"]
      452 GETIMPORT                        R30 K66 [UDim.new]
      454 LOADK                            R31 K144 [0.25]
      455 LOADN                            R32 0
      456 CALL                             R30 2 1
      457 SETTABLEKS                       R30 R29 K59 ["width"]
      459 GETUPVAL                         R30 13
      460 GETTABLEKS                       R30 R30 K64 ["XSmall"]
      462 SETTABLEKS                       R30 R29 K58 ["size"]
      464 NAMECALL                         R30 R3 K31 ["getNextOrder"]
      466 CALL                             R30 1 1
      467 SETTABLEKS                       R30 R29 K29 ["LayoutOrder"]
      469 CALL                             R27 2 1
      470 SETTABLEKS                       R27 R26 K135 ["AddItemsButton"]
      472 GETUPVAL                         R27 4
      473 GETTABLEKS                       R27 R27 K10 ["createElement"]
      475 GETUPVAL                         R28 24
      476 DUPTABLE                         R29 K146 [{["text"], ["variant"], ["onActivated"], ["isDisabled"] = False, ["width"], ["size"], ["LayoutOrder"]}]
      477 LOADK                            R32 K42 ["MarketplaceImport"]
      478 LOADK                            R33 K147 ["CancelButtonLabel"]
      479 NAMECALL                         R30 R2 K44 ["getText"]
      481 CALL                             R30 3 1
      482 SETTABLEKS                       R30 R29 K51 ["text"]
      484 GETUPVAL                         R30 20
      485 GETTABLEKS                       R30 R30 K83 ["Standard"]
      487 SETTABLEKS                       R30 R29 K79 ["variant"]
      489 GETTABLEKS                       R30 R0 K20 ["onClose"]
      491 SETTABLEKS                       R30 R29 K92 ["onActivated"]
      493 GETIMPORT                        R30 K66 [UDim.new]
      495 LOADK                            R31 K144 [0.25]
      496 LOADN                            R32 0
      497 CALL                             R30 2 1
      498 SETTABLEKS                       R30 R29 K59 ["width"]
      500 GETUPVAL                         R30 13
      501 GETTABLEKS                       R30 R30 K64 ["XSmall"]
      503 SETTABLEKS                       R30 R29 K58 ["size"]
      505 NAMECALL                         R30 R3 K31 ["getNextOrder"]
      507 CALL                             R30 1 1
      508 SETTABLEKS                       R30 R29 K29 ["LayoutOrder"]
      510 CALL                             R27 2 1
      511 SETTABLEKS                       R27 R26 K136 ["CancelButton"]
      513 CALL                             R23 3 1
      514 SETTABLEKS                       R23 R22 K36 ["Footer"]
      516 GETTABLEKS                       R24 R12 K148 ["enabled"]
      518 JUMPIFNOT                        R24 ; [+13]
      519 GETUPVAL                         R23 4
      520 GETTABLEKS                       R23 R23 K10 ["createElement"]
      522 GETUPVAL                         R24 25
      523 DUPTABLE                         R25 K149 [{"errors", "onClose"}]
      524 SETTABLEKS                       R4 R25 K3 ["errors"]
      526 GETTABLEKS                       R26 R12 K150 ["disable"]
      528 SETTABLEKS                       R26 R25 K20 ["onClose"]
      530 CALL                             R23 2 1
      531 JUMP                             ; [+1]
      532 LOADNIL                          R23
      533 SETTABLEKS                       R23 R22 K37 ["ErrorDialog"]
      535 CALL                             R19 3 1
      536 SETTABLEKS                       R19 R18 K22 ["Content"]
      538 CALL                             R15 3 -1
      539 RETURN                           R15 -1

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
       83 GETTABLEKS                       R21 R20 K28 ["UI"]
       85 GETTABLEKS                       R22 R20 K29 ["Util"]
       87 GETTABLEKS                       R22 R22 K30 ["LayoutOrderIterator"]
       89 GETTABLEKS                       R23 R20 K31 ["ContextServices"]
       91 GETTABLEKS                       R23 R23 K32 ["Localization"]
       93 GETTABLEKS                       R24 R20 K31 ["ContextServices"]
       95 GETTABLEKS                       R24 R24 K33 ["Design"]
       97 GETIMPORT                        R25 K5 [require]
       99 GETTABLEKS                       R26 R0 K34 ["Src"]
      101 GETTABLEKS                       R26 R26 K35 ["Hooks"]
      103 GETTABLEKS                       R26 R26 K36 ["useToggleState"]
      105 CALL                             R25 1 1
      106 GETIMPORT                        R26 K5 [require]
      108 GETTABLEKS                       R27 R0 K34 ["Src"]
      110 GETTABLEKS                       R27 R27 K29 ["Util"]
      112 GETTABLEKS                       R27 R27 K37 ["getAssetThumbnail"]
      114 CALL                             R26 1 1
      115 GETIMPORT                        R27 K5 [require]
      117 GETTABLEKS                       R28 R0 K34 ["Src"]
      119 GETTABLEKS                       R28 R28 K29 ["Util"]
      121 GETTABLEKS                       R28 R28 K38 ["getBundleThumbnail"]
      123 CALL                             R27 1 1
      124 GETIMPORT                        R28 K5 [require]
      126 GETTABLEKS                       R29 R0 K34 ["Src"]
      128 GETTABLEKS                       R29 R29 K39 ["Types"]
      130 CALL                             R28 1 1
      131 GETIMPORT                        R29 K5 [require]
      133 GETIMPORT                        R30 K1 [script]
      135 GETTABLEKS                       R30 R30 K40 ["Parent"]
      137 GETTABLEKS                       R30 R30 K41 ["ImportErrorsDialog"]
      139 CALL                             R29 1 1
      140 GETIMPORT                        R30 K5 [require]
      142 GETIMPORT                        R31 K1 [script]
      144 GETTABLEKS                       R31 R31 K40 ["Parent"]
      146 GETTABLEKS                       R31 R31 K42 ["ImportItemRow"]
      148 CALL                             R30 1 1
      149 GETIMPORT                        R31 K5 [require]
      151 GETIMPORT                        R32 K1 [script]
      153 GETTABLEKS                       R32 R32 K40 ["Parent"]
      155 GETTABLEKS                       R32 R32 K43 ["ItemIdInputRow"]
      157 CALL                             R31 1 1
      158 GETIMPORT                        R32 K5 [require]
      160 GETTABLEKS                       R33 R0 K34 ["Src"]
      162 GETTABLEKS                       R33 R33 K44 ["Flags"]
      164 GETTABLEKS                       R33 R33 K45 ["getFFlagAvatarPreviewerLookComposer"]
      166 CALL                             R32 1 1
      167 GETIMPORT                        R33 K5 [require]
      169 GETTABLEKS                       R34 R0 K34 ["Src"]
      171 GETTABLEKS                       R34 R34 K44 ["Flags"]
      173 GETTABLEKS                       R34 R34 K46 ["getFFlagAvatarPreviewerMarketplaceImportAddButton"]
      175 CALL                             R33 1 1
      176 GETIMPORT                        R34 K5 [require]
      178 GETTABLEKS                       R35 R0 K34 ["Src"]
      180 GETTABLEKS                       R35 R35 K44 ["Flags"]
      182 GETTABLEKS                       R35 R35 K47 ["getFFlagAvatarPreviewerMarketplaceImportFlexibleIds"]
      184 CALL                             R34 1 1
      185 GETIMPORT                        R35 K5 [require]
      187 GETTABLEKS                       R36 R0 K34 ["Src"]
      189 GETTABLEKS                       R36 R36 K44 ["Flags"]
      191 GETTABLEKS                       R36 R36 K48 ["getFFlagAvatarPreviewerMarketplaceImportPriceText"]
      193 CALL                             R35 1 1
      194 GETIMPORT                        R36 K51 [Vector2.new]
      196 LOADN                            R37 400
      197 LOADN                            R38 116
      198 CALL                             R36 2 1
      199 DUPCLOSURE                       R37 K52 [PROTO_0]
      200 DUPCLOSURE                       R38 K53 [PROTO_2]
      201 CAPTURE                          VAL R22
      202 CAPTURE                          VAL R35
      203 CAPTURE                          VAL R2
      204 CAPTURE                          VAL R30
      205 CAPTURE                          VAL R19
      206 CAPTURE                          VAL R14
      207 CAPTURE                          VAL R26
      208 CAPTURE                          VAL R27
      209 CAPTURE                          VAL R17
      210 CAPTURE                          VAL R13
      211 CAPTURE                          VAL R7
      212 CAPTURE                          VAL R8
      213 CAPTURE                          VAL R9
      214 CAPTURE                          VAL R12
      215 CAPTURE                          VAL R10
      216 CAPTURE                          VAL R6
      217 DUPCLOSURE                       R39 K54 [PROTO_8]
      218 CAPTURE                          VAL R32
      219 CAPTURE                          VAL R24
      220 CAPTURE                          VAL R23
      221 CAPTURE                          VAL R22
      222 CAPTURE                          VAL R2
      223 CAPTURE                          VAL R1
      224 CAPTURE                          VAL R36
      225 CAPTURE                          VAL R25
      226 CAPTURE                          VAL R21
      227 CAPTURE                          VAL R19
      228 CAPTURE                          VAL R17
      229 CAPTURE                          VAL R33
      230 CAPTURE                          VAL R18
      231 CAPTURE                          VAL R10
      232 CAPTURE                          VAL R34
      233 CAPTURE                          VAL R37
      234 CAPTURE                          VAL R31
      235 CAPTURE                          VAL R16
      236 CAPTURE                          VAL R4
      237 CAPTURE                          VAL R5
      238 CAPTURE                          VAL R6
      239 CAPTURE                          VAL R15
      240 CAPTURE                          VAL R11
      241 CAPTURE                          VAL R38
      242 CAPTURE                          VAL R12
      243 CAPTURE                          VAL R29
      244 RETURN                           R39 1
