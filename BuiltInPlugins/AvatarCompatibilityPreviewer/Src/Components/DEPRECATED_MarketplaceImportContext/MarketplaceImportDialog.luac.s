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
       19 GETTABLEKS                       R9 R9 K3 ["createElement"]
       21 GETUPVAL                         R10 2
       22 DUPTABLE                         R11 K7 [{["tag"] = "row gap-small size-full-0 auto-y padding-y-small", ["LayoutOrder"]}]
       23 NAMECALL                         R12 R3 K8 ["getNextOrder"]
       25 CALL                             R12 1 1
       26 SETTABLEKS                       R12 R11 K6 ["LayoutOrder"]
       28 DUPTABLE                         R12 K12 [{"Thumbnail", "ItemContent", "RemoveButton"}]
       29 GETUPVAL                         R13 1
       30 GETTABLEKS                       R13 R13 K3 ["createElement"]
       32 GETUPVAL                         R14 2
       33 DUPTABLE                         R15 K14 [{["tag"] = "col auto-xy padding-y-xsmall", ["LayoutOrder"]}]
       34 NAMECALL                         R16 R3 K8 ["getNextOrder"]
       36 CALL                             R16 1 1
       37 SETTABLEKS                       R16 R15 K6 ["LayoutOrder"]
       39 GETUPVAL                         R16 1
       40 GETTABLEKS                       R16 R16 K3 ["createElement"]
       42 GETUPVAL                         R17 3
       43 DUPTABLE                         R18 K17 [{["Image"], ["tag"] = "size-1000-1000 radius-medium"}]
       44 GETTABLEKS                       R20 R8 K18 ["itemType"]
       46 JUMPIFNOTEQKS                    R20 K19 ["Asset"] ; [+6]
       48 GETUPVAL                         R19 4
       49 GETTABLEKS                       R20 R8 K20 ["itemId"]
       51 CALL                             R19 1 1
       52 JUMP                             ; [+4]
       53 GETUPVAL                         R19 5
       54 GETTABLEKS                       R20 R8 K20 ["itemId"]
       56 CALL                             R19 1 1
       57 SETTABLEKS                       R19 R18 K15 ["Image"]
       59 CALL                             R16 2 -1
       60 CALL                             R13 -1 1
       61 SETTABLEKS                       R13 R12 K9 ["Thumbnail"]
       63 GETUPVAL                         R13 1
       64 GETTABLEKS                       R13 R13 K3 ["createElement"]
       66 GETUPVAL                         R14 2
       67 DUPTABLE                         R15 K22 [{["tag"] = "col align-x-left grow", ["LayoutOrder"]}]
       68 NAMECALL                         R16 R3 K8 ["getNextOrder"]
       70 CALL                             R16 1 1
       71 SETTABLEKS                       R16 R15 K6 ["LayoutOrder"]
       73 DUPTABLE                         R16 K26 [{"ItemName", "CreatorNameView", "ItemId"}]
       74 GETUPVAL                         R17 1
       75 GETTABLEKS                       R17 R17 K3 ["createElement"]
       77 GETUPVAL                         R18 6
       78 DUPTABLE                         R19 K29 [{["Text"], ["tag"] = "auto-xy text-title-small content-system-contrast", ["LayoutOrder"]}]
       79 GETTABLEKS                       R20 R8 K30 ["name"]
       81 SETTABLEKS                       R20 R19 K27 ["Text"]
       83 NAMECALL                         R20 R3 K8 ["getNextOrder"]
       85 CALL                             R20 1 1
       86 SETTABLEKS                       R20 R19 K6 ["LayoutOrder"]
       88 CALL                             R17 2 1
       89 SETTABLEKS                       R17 R16 K23 ["ItemName"]
       91 GETUPVAL                         R17 1
       92 GETTABLEKS                       R17 R17 K3 ["createElement"]
       94 GETUPVAL                         R18 2
       95 DUPTABLE                         R19 K32 [{["tag"] = "row gap-xxsmall auto-xy", ["LayoutOrder"]}]
       96 NAMECALL                         R20 R3 K8 ["getNextOrder"]
       98 CALL                             R20 1 1
       99 SETTABLEKS                       R20 R19 K6 ["LayoutOrder"]
      101 DUPTABLE                         R20 K35 [{"CreatorName", "VerificationBadge"}]
      102 GETUPVAL                         R21 1
      103 GETTABLEKS                       R21 R21 K3 ["createElement"]
      105 GETUPVAL                         R22 6
      106 DUPTABLE                         R23 K37 [{["Text"], ["tag"] = "auto-xy text-body-small content-system-contrast"}]
      107 GETTABLEKS                       R24 R8 K38 ["creatorName"]
      109 SETTABLEKS                       R24 R23 K27 ["Text"]
      111 CALL                             R21 2 1
      112 SETTABLEKS                       R21 R20 K33 ["CreatorName"]
      114 GETTABLEKS                       R22 R8 K39 ["hasVerifiedBadge"]
      116 JUMPIFNOT                        R22 ; [+22]
      117 GETUPVAL                         R21 1
      118 GETTABLEKS                       R21 R21 K3 ["createElement"]
      120 GETUPVAL                         R22 7
      121 DUPTABLE                         R23 K42 [{"name", "size", "variant"}]
      122 GETUPVAL                         R24 8
      123 GETTABLEKS                       R24 R24 K43 ["VerifiedMono"]
      125 SETTABLEKS                       R24 R23 K30 ["name"]
      127 GETUPVAL                         R24 9
      128 GETTABLEKS                       R24 R24 K44 ["XSmall"]
      130 SETTABLEKS                       R24 R23 K40 ["size"]
      132 GETUPVAL                         R24 10
      133 GETTABLEKS                       R24 R24 K45 ["Filled"]
      135 SETTABLEKS                       R24 R23 K41 ["variant"]
      137 CALL                             R21 2 1
      138 JUMP                             ; [+1]
      139 LOADNIL                          R21
      140 SETTABLEKS                       R21 R20 K34 ["VerificationBadge"]
      142 CALL                             R17 3 1
      143 SETTABLEKS                       R17 R16 K24 ["CreatorNameView"]
      145 GETUPVAL                         R17 1
      146 GETTABLEKS                       R17 R17 K3 ["createElement"]
      148 GETUPVAL                         R18 6
      149 DUPTABLE                         R19 K46 [{["Text"], ["tag"] = "auto-xy text-body-small content-system-contrast", ["LayoutOrder"]}]
      150 GETTABLEKS                       R20 R8 K20 ["itemId"]
      152 SETTABLEKS                       R20 R19 K27 ["Text"]
      154 NAMECALL                         R20 R3 K8 ["getNextOrder"]
      156 CALL                             R20 1 1
      157 SETTABLEKS                       R20 R19 K6 ["LayoutOrder"]
      159 CALL                             R17 2 1
      160 SETTABLEKS                       R17 R16 K25 ["ItemId"]
      162 CALL                             R13 3 1
      163 SETTABLEKS                       R13 R12 K10 ["ItemContent"]
      165 GETUPVAL                         R13 1
      166 GETTABLEKS                       R13 R13 K3 ["createElement"]
      168 GETUPVAL                         R14 2
      169 DUPTABLE                         R15 K48 [{["tag"] = "col self-center auto-xy", ["LayoutOrder"]}]
      170 NAMECALL                         R16 R3 K8 ["getNextOrder"]
      172 CALL                             R16 1 1
      173 SETTABLEKS                       R16 R15 K6 ["LayoutOrder"]
      175 GETUPVAL                         R16 1
      176 GETTABLEKS                       R16 R16 K3 ["createElement"]
      178 GETUPVAL                         R17 11
      179 DUPTABLE                         R18 K53 [{["size"], ["icon"], ["isCircular"] = True, ["variant"], ["onActivated"]}]
      180 GETUPVAL                         R19 12
      181 GETTABLEKS                       R19 R19 K54 ["Small"]
      183 SETTABLEKS                       R19 R18 K40 ["size"]
      185 GETUPVAL                         R19 8
      186 GETTABLEKS                       R19 R19 K55 ["CircleMinus"]
      188 SETTABLEKS                       R19 R18 K49 ["icon"]
      190 GETUPVAL                         R19 13
      191 GETTABLEKS                       R19 R19 K56 ["Utility"]
      193 SETTABLEKS                       R19 R18 K41 ["variant"]
      195 NEWCLOSURE                       R19 P0
      196 CAPTURE                          VAL R1
      197 CAPTURE                          VAL R8
      198 SETTABLEKS                       R19 R18 K52 ["onActivated"]
      200 CALL                             R16 2 -1
      201 CALL                             R13 -1 1
      202 SETTABLEKS                       R13 R12 K11 ["RemoveButton"]
      204 CALL                             R9 3 1
      205 SETTABLE                         R9 R2 R7
      206 FORGLOOP                         R4 2 ; [-189]
      208 RETURN                           R2 1

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
        3 JUMPIF                           R0 ; [+10]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["onTextEntered"]
        7 GETUPVAL                         R1 1
        8 GETUPVAL                         R2 2
        9 CALL                             R1 1 -1
       10 CALL                             R0 -1 0
       11 GETUPVAL                         R0 3
       12 LOADK                            R1 K2 [""]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

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
      148 DUPTABLE                         R26 K50 [{"ItemIdInput", "PressEnterCaption"}]
      149 GETUPVAL                         R27 4
      150 GETTABLEKS                       R27 R27 K10 ["createElement"]
      152 GETUPVAL                         R28 12
      153 DUPTABLE                         R29 K60 [{["text"], ["textBoxRef"], ["placeholder"], ["label"] = "", ["onChanged"], ["size"], ["width"], ["LayoutOrder"] = 1, ["onReturnPressed"]}]
      154 SETTABLEKS                       R8 R29 K51 ["text"]
      156 SETTABLEKS                       R13 R29 K52 ["textBoxRef"]
      158 LOADK                            R32 K43 ["MarketplaceImport"]
      159 LOADK                            R33 K61 ["ItemIdInputPlaceholder"]
      160 NAMECALL                         R30 R2 K45 ["getText"]
      162 CALL                             R30 3 1
      163 SETTABLEKS                       R30 R29 K53 ["placeholder"]
      165 NEWCLOSURE                       R30 P3
      166 CAPTURE                          VAL R0
      167 CAPTURE                          VAL R9
      168 SETTABLEKS                       R30 R29 K55 ["onChanged"]
      170 GETUPVAL                         R30 13
      171 GETTABLEKS                       R30 R30 K62 ["XSmall"]
      173 SETTABLEKS                       R30 R29 K56 ["size"]
      175 GETIMPORT                        R30 K64 [UDim.new]
      177 LOADN                            R31 1
      178 LOADN                            R32 0
      179 CALL                             R30 2 1
      180 SETTABLEKS                       R30 R29 K57 ["width"]
      182 NEWCLOSURE                       R30 P4
      183 CAPTURE                          VAL R0
      184 CAPTURE                          UPVAL U14
      185 CAPTURE                          VAL R8
      186 CAPTURE                          VAL R9
      187 SETTABLEKS                       R30 R29 K59 ["onReturnPressed"]
      189 CALL                             R27 2 1
      190 SETTABLEKS                       R27 R26 K48 ["ItemIdInput"]
      192 GETUPVAL                         R27 4
      193 GETTABLEKS                       R27 R27 K10 ["createElement"]
      195 GETUPVAL                         R28 11
      196 DUPTABLE                         R29 K67 [{["Text"], ["tag"] = "auto-xy padding-top-xsmall text-caption-small content-default", ["LayoutOrder"] = 2}]
      197 LOADK                            R32 K43 ["MarketplaceImport"]
      198 LOADK                            R33 K68 ["PressEnterToLoadAssetIDs"]
      199 NAMECALL                         R30 R2 K45 ["getText"]
      201 CALL                             R30 3 1
      202 SETTABLEKS                       R30 R29 K40 ["Text"]
      204 CALL                             R27 2 1
      205 SETTABLEKS                       R27 R26 K49 ["PressEnterCaption"]
      207 CALL                             R23 3 1
      208 SETTABLEKS                       R23 R22 K34 ["ItemIdInputGroup"]
      210 LENGTH                           R24 R4
      211 JUMPIFNOTEQKN                    R24 K9 [0] ; [+3]
      213 LOADNIL                          R23
      214 JUMP                             ; [+91]
      215 GETUPVAL                         R23 4
      216 GETTABLEKS                       R23 R23 K10 ["createElement"]
      218 GETUPVAL                         R24 10
      219 DUPTABLE                         R25 K70 [{["tag"] = "size-full-0 auto-y stroke-system-alert radius-small", ["LayoutOrder"]}]
      220 NAMECALL                         R26 R3 K32 ["getNextOrder"]
      222 CALL                             R26 1 1
      223 SETTABLEKS                       R26 R25 K30 ["LayoutOrder"]
      225 DUPTABLE                         R26 K72 [{"ErrorBannerContent"}]
      226 LENGTH                           R28 R4
      227 JUMPIFNOTEQKN                    R28 K58 [1] ; [+21]
      229 GETUPVAL                         R27 4
      230 GETTABLEKS                       R27 R27 K10 ["createElement"]
      232 GETUPVAL                         R28 15
      233 DUPTABLE                         R29 K76 [{"variant", "severity", "title"}]
      234 GETUPVAL                         R30 16
      235 GETTABLEKS                       R30 R30 K77 ["Standard"]
      237 SETTABLEKS                       R30 R29 K73 ["variant"]
      239 GETUPVAL                         R30 17
      240 GETTABLEKS                       R30 R30 K78 ["Error"]
      242 SETTABLEKS                       R30 R29 K74 ["severity"]
      244 GETTABLEN                        R30 R4 1
      245 SETTABLEKS                       R30 R29 K75 ["title"]
      247 CALL                             R27 2 1
      248 JUMP                             ; [+54]
      249 GETUPVAL                         R27 4
      250 GETTABLEKS                       R27 R27 K10 ["createElement"]
      252 GETUPVAL                         R28 15
      253 DUPTABLE                         R29 K80 [{"variant", "severity", "title", "actions"}]
      254 GETUPVAL                         R30 16
      255 GETTABLEKS                       R30 R30 K77 ["Standard"]
      257 SETTABLEKS                       R30 R29 K73 ["variant"]
      259 GETUPVAL                         R30 17
      260 GETTABLEKS                       R30 R30 K78 ["Error"]
      262 SETTABLEKS                       R30 R29 K74 ["severity"]
      264 LOADK                            R32 K43 ["MarketplaceImport"]
      265 LOADK                            R33 K81 ["ErrorBannerText"]
      266 DUPTABLE                         R34 K83 [{"numErrors"}]
      267 LENGTH                           R36 R4
      268 FASTCALL1                        TOSTRING R36 ; [+2]
      269 GETIMPORT                        R35 K85 [tostring]
      271 CALL                             R35 1 1
      272 SETTABLEKS                       R35 R34 K82 ["numErrors"]
      274 NAMECALL                         R30 R2 K45 ["getText"]
      276 CALL                             R30 4 1
      277 SETTABLEKS                       R30 R29 K75 ["title"]
      279 NEWTABLE                         R30 0 1
      281 DUPTABLE                         R31 K87 [{"text", "variant", "onActivated"}]
      282 LOADK                            R34 K43 ["MarketplaceImport"]
      283 LOADK                            R35 K88 ["SeeDetailsActionLabel"]
      284 NAMECALL                         R32 R2 K45 ["getText"]
      286 CALL                             R32 3 1
      287 SETTABLEKS                       R32 R31 K51 ["text"]
      289 GETUPVAL                         R32 18
      290 GETTABLEKS                       R32 R32 K77 ["Standard"]
      292 SETTABLEKS                       R32 R31 K73 ["variant"]
      294 GETTABLEKS                       R32 R12 K89 ["enable"]
      296 SETTABLEKS                       R32 R31 K86 ["onActivated"]
      298 SETLIST                          R30 R31 1 [1]
      300 SETTABLEKS                       R30 R29 K79 ["actions"]
      302 CALL                             R27 2 1
      303 SETTABLEKS                       R27 R26 K71 ["ErrorBannerContent"]
      305 CALL                             R23 3 1
      306 SETTABLEKS                       R23 R22 K35 ["ErrorBanner"]
      308 JUMPIFEQKNIL                     R5 ; [+7]
      310 GETIMPORT                        R24 K91 [next]
      312 MOVE                             R25 R5
      313 CALL                             R24 1 1
      314 JUMPIFNOTEQKNIL                  R24 ; [+3]
      316 LOADNIL                          R23
      317 JUMP                             ; [+64]
      318 GETUPVAL                         R23 4
      319 GETTABLEKS                       R23 R23 K10 ["createElement"]
      321 GETUPVAL                         R24 19
      322 DUPTABLE                         R25 K96 [{["tag"] = "grow size-full", ["scroll"], ["sizeConstraint"], ["layout"], ["LayoutOrder"]}]
      323 DUPTABLE                         R26 K102 [{"ScrollingDirection", "AutomaticCanvasSize", "CanvasSize", "scrollBarVisibility", "VerticalScrollBarInset"}]
      324 GETIMPORT                        R27 K105 [Enum.ScrollingDirection.Y]
      326 SETTABLEKS                       R27 R26 K97 ["ScrollingDirection"]
      328 GETIMPORT                        R27 K107 [Enum.AutomaticSize.Y]
      330 SETTABLEKS                       R27 R26 K98 ["AutomaticCanvasSize"]
      332 GETIMPORT                        R27 K110 [UDim2.fromScale]
      334 LOADN                            R28 0
      335 LOADN                            R29 1
      336 CALL                             R27 2 1
      337 SETTABLEKS                       R27 R26 K99 ["CanvasSize"]
      339 GETUPVAL                         R27 20
      340 GETTABLEKS                       R27 R27 K111 ["Auto"]
      342 SETTABLEKS                       R27 R26 K100 ["scrollBarVisibility"]
      344 GETIMPORT                        R27 K114 [Enum.ScrollBarInset.Always]
      346 SETTABLEKS                       R27 R26 K101 ["VerticalScrollBarInset"]
      348 SETTABLEKS                       R26 R25 K93 ["scroll"]
      350 DUPTABLE                         R26 K116 [{"MaxSize"}]
      351 GETIMPORT                        R27 K118 [Vector2.new]
      353 LOADK                            R28 K119 [Infinity]
      354 MOVE                             R29 R7
      355 CALL                             R27 2 1
      356 SETTABLEKS                       R27 R26 K115 ["MaxSize"]
      358 SETTABLEKS                       R26 R25 K94 ["sizeConstraint"]
      360 DUPTABLE                         R26 K122 [{"SortOrder", "FillDirection"}]
      361 GETIMPORT                        R27 K123 [Enum.SortOrder.LayoutOrder]
      363 SETTABLEKS                       R27 R26 K120 ["SortOrder"]
      365 GETIMPORT                        R27 K125 [Enum.FillDirection.Vertical]
      367 SETTABLEKS                       R27 R26 K121 ["FillDirection"]
      369 SETTABLEKS                       R26 R25 K95 ["layout"]
      371 NAMECALL                         R26 R3 K32 ["getNextOrder"]
      373 CALL                             R26 1 1
      374 SETTABLEKS                       R26 R25 K30 ["LayoutOrder"]
      376 GETUPVAL                         R26 21
      377 MOVE                             R27 R5
      378 GETTABLEKS                       R28 R0 K126 ["onRemoveItem"]
      380 CALL                             R26 2 1
      381 CALL                             R23 3 1
      382 SETTABLEKS                       R23 R22 K36 ["ItemRows"]
      384 GETUPVAL                         R23 4
      385 GETTABLEKS                       R23 R23 K10 ["createElement"]
      387 GETUPVAL                         R24 10
      388 DUPTABLE                         R25 K128 [{["tag"] = "row align-x-right gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      389 NAMECALL                         R26 R3 K32 ["getNextOrder"]
      391 CALL                             R26 1 1
      392 SETTABLEKS                       R26 R25 K30 ["LayoutOrder"]
      394 DUPTABLE                         R26 K131 [{"AddItemsButton", "CancelButton"}]
      395 GETUPVAL                         R27 4
      396 GETTABLEKS                       R27 R27 K10 ["createElement"]
      398 GETUPVAL                         R28 22
      399 DUPTABLE                         R29 K133 [{"text", "variant", "onActivated", "isDisabled", "width", "size", "LayoutOrder"}]
      400 LOADK                            R32 K43 ["MarketplaceImport"]
      401 LOADK                            R33 K134 ["AddButtonLabel"]
      402 NAMECALL                         R30 R2 K45 ["getText"]
      404 CALL                             R30 3 1
      405 SETTABLEKS                       R30 R29 K51 ["text"]
      407 GETUPVAL                         R30 18
      408 GETTABLEKS                       R30 R30 K135 ["Emphasis"]
      410 SETTABLEKS                       R30 R29 K73 ["variant"]
      412 GETTABLEKS                       R30 R0 K136 ["onAddItems"]
      414 SETTABLEKS                       R30 R29 K86 ["onActivated"]
      416 SETTABLEKS                       R14 R29 K132 ["isDisabled"]
      418 GETIMPORT                        R30 K64 [UDim.new]
      420 LOADK                            R31 K137 [0.25]
      421 LOADN                            R32 0
      422 CALL                             R30 2 1
      423 SETTABLEKS                       R30 R29 K57 ["width"]
      425 GETUPVAL                         R30 13
      426 GETTABLEKS                       R30 R30 K62 ["XSmall"]
      428 SETTABLEKS                       R30 R29 K56 ["size"]
      430 NAMECALL                         R30 R3 K32 ["getNextOrder"]
      432 CALL                             R30 1 1
      433 SETTABLEKS                       R30 R29 K30 ["LayoutOrder"]
      435 CALL                             R27 2 1
      436 SETTABLEKS                       R27 R26 K129 ["AddItemsButton"]
      438 GETUPVAL                         R27 4
      439 GETTABLEKS                       R27 R27 K10 ["createElement"]
      441 GETUPVAL                         R28 22
      442 DUPTABLE                         R29 K139 [{["text"], ["variant"], ["onActivated"], ["isDisabled"] = False, ["width"], ["size"], ["LayoutOrder"]}]
      443 LOADK                            R32 K43 ["MarketplaceImport"]
      444 LOADK                            R33 K140 ["CancelButtonLabel"]
      445 NAMECALL                         R30 R2 K45 ["getText"]
      447 CALL                             R30 3 1
      448 SETTABLEKS                       R30 R29 K51 ["text"]
      450 GETUPVAL                         R30 18
      451 GETTABLEKS                       R30 R30 K77 ["Standard"]
      453 SETTABLEKS                       R30 R29 K73 ["variant"]
      455 GETTABLEKS                       R30 R0 K21 ["onClose"]
      457 SETTABLEKS                       R30 R29 K86 ["onActivated"]
      459 GETIMPORT                        R30 K64 [UDim.new]
      461 LOADK                            R31 K137 [0.25]
      462 LOADN                            R32 0
      463 CALL                             R30 2 1
      464 SETTABLEKS                       R30 R29 K57 ["width"]
      466 GETUPVAL                         R30 13
      467 GETTABLEKS                       R30 R30 K62 ["XSmall"]
      469 SETTABLEKS                       R30 R29 K56 ["size"]
      471 NAMECALL                         R30 R3 K32 ["getNextOrder"]
      473 CALL                             R30 1 1
      474 SETTABLEKS                       R30 R29 K30 ["LayoutOrder"]
      476 CALL                             R27 2 1
      477 SETTABLEKS                       R27 R26 K130 ["CancelButton"]
      479 CALL                             R23 3 1
      480 SETTABLEKS                       R23 R22 K37 ["Footer"]
      482 GETTABLEKS                       R24 R12 K141 ["enabled"]
      484 JUMPIFNOT                        R24 ; [+13]
      485 GETUPVAL                         R23 4
      486 GETTABLEKS                       R23 R23 K10 ["createElement"]
      488 GETUPVAL                         R24 23
      489 DUPTABLE                         R25 K142 [{"errors", "onClose"}]
      490 SETTABLEKS                       R4 R25 K3 ["errors"]
      492 GETTABLEKS                       R26 R12 K143 ["disable"]
      494 SETTABLEKS                       R26 R25 K21 ["onClose"]
      496 CALL                             R23 2 1
      497 JUMP                             ; [+1]
      498 LOADNIL                          R23
      499 SETTABLEKS                       R23 R22 K38 ["ErrorDialog"]
      501 CALL                             R19 3 1
      502 SETTABLEKS                       R19 R18 K23 ["Content"]
      504 CALL                             R15 3 -1
      505 RETURN                           R15 -1

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
      147 GETTABLEKS                       R32 R0 K36 ["Src"]
      149 GETTABLEKS                       R32 R32 K44 ["Flags"]
      151 GETTABLEKS                       R32 R32 K45 ["getFFlagAvatarPreviewerLookComposer"]
      153 CALL                             R31 1 1
      154 GETIMPORT                        R32 K48 [Vector2.new]
      156 LOADN                            R33 400
      157 LOADN                            R34 116
      158 CALL                             R32 2 1
      159 DUPCLOSURE                       R33 K49 [PROTO_0]
      160 DUPCLOSURE                       R34 K50 [PROTO_2]
      161 CAPTURE                          VAL R23
      162 CAPTURE                          VAL R2
      163 CAPTURE                          VAL R19
      164 CAPTURE                          VAL R14
      165 CAPTURE                          VAL R27
      166 CAPTURE                          VAL R28
      167 CAPTURE                          VAL R17
      168 CAPTURE                          VAL R13
      169 CAPTURE                          VAL R7
      170 CAPTURE                          VAL R8
      171 CAPTURE                          VAL R9
      172 CAPTURE                          VAL R12
      173 CAPTURE                          VAL R10
      174 CAPTURE                          VAL R6
      175 DUPCLOSURE                       R35 K51 [PROTO_8]
      176 CAPTURE                          VAL R31
      177 CAPTURE                          VAL R25
      178 CAPTURE                          VAL R24
      179 CAPTURE                          VAL R23
      180 CAPTURE                          VAL R2
      181 CAPTURE                          VAL R1
      182 CAPTURE                          VAL R32
      183 CAPTURE                          VAL R26
      184 CAPTURE                          VAL R22
      185 CAPTURE                          VAL R21
      186 CAPTURE                          VAL R19
      187 CAPTURE                          VAL R17
      188 CAPTURE                          VAL R18
      189 CAPTURE                          VAL R10
      190 CAPTURE                          VAL R33
      191 CAPTURE                          VAL R16
      192 CAPTURE                          VAL R4
      193 CAPTURE                          VAL R5
      194 CAPTURE                          VAL R6
      195 CAPTURE                          VAL R15
      196 CAPTURE                          VAL R11
      197 CAPTURE                          VAL R34
      198 CAPTURE                          VAL R12
      199 CAPTURE                          VAL R30
      200 RETURN                           R35 1
