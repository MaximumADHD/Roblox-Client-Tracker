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
      137 DUPTABLE                         R26 K49 [{"ItemIdInput", "PressEnterCaption"}]
      138 GETUPVAL                         R27 4
      139 GETTABLEKS                       R27 R27 K10 ["createElement"]
      141 GETUPVAL                         R28 11
      142 DUPTABLE                         R29 K59 [{["text"], ["textBoxRef"], ["placeholder"], ["label"] = "", ["onChanged"], ["size"], ["width"], ["LayoutOrder"] = 1, ["onReturnPressed"]}]
      143 SETTABLEKS                       R8 R29 K50 ["text"]
      145 SETTABLEKS                       R13 R29 K51 ["textBoxRef"]
      147 LOADK                            R32 K42 ["MarketplaceImport"]
      148 LOADK                            R33 K60 ["ItemIdInputPlaceholder"]
      149 NAMECALL                         R30 R2 K44 ["getText"]
      151 CALL                             R30 3 1
      152 SETTABLEKS                       R30 R29 K52 ["placeholder"]
      154 NEWCLOSURE                       R30 P3
      155 CAPTURE                          VAL R0
      156 CAPTURE                          VAL R9
      157 SETTABLEKS                       R30 R29 K54 ["onChanged"]
      159 GETUPVAL                         R30 12
      160 GETTABLEKS                       R30 R30 K61 ["XSmall"]
      162 SETTABLEKS                       R30 R29 K55 ["size"]
      164 GETIMPORT                        R30 K63 [UDim.new]
      166 LOADN                            R31 1
      167 LOADN                            R32 0
      168 CALL                             R30 2 1
      169 SETTABLEKS                       R30 R29 K56 ["width"]
      171 NEWCLOSURE                       R30 P4
      172 CAPTURE                          VAL R0
      173 CAPTURE                          UPVAL U13
      174 CAPTURE                          VAL R8
      175 CAPTURE                          VAL R9
      176 SETTABLEKS                       R30 R29 K58 ["onReturnPressed"]
      178 CALL                             R27 2 1
      179 SETTABLEKS                       R27 R26 K47 ["ItemIdInput"]
      181 GETUPVAL                         R27 4
      182 GETTABLEKS                       R27 R27 K10 ["createElement"]
      184 GETUPVAL                         R28 10
      185 DUPTABLE                         R29 K66 [{["Text"], ["tag"] = "auto-xy padding-top-xsmall text-caption-small content-default", ["LayoutOrder"] = 2}]
      186 LOADK                            R32 K42 ["MarketplaceImport"]
      187 LOADK                            R33 K67 ["PressEnterToLoadAssetIDs"]
      188 NAMECALL                         R30 R2 K44 ["getText"]
      190 CALL                             R30 3 1
      191 SETTABLEKS                       R30 R29 K39 ["Text"]
      193 CALL                             R27 2 1
      194 SETTABLEKS                       R27 R26 K48 ["PressEnterCaption"]
      196 CALL                             R23 3 1
      197 SETTABLEKS                       R23 R22 K33 ["ItemIdInputGroup"]
      199 LENGTH                           R24 R4
      200 JUMPIFNOTEQKN                    R24 K9 [0] ; [+3]
      202 LOADNIL                          R23
      203 JUMP                             ; [+91]
      204 GETUPVAL                         R23 4
      205 GETTABLEKS                       R23 R23 K10 ["createElement"]
      207 GETUPVAL                         R24 9
      208 DUPTABLE                         R25 K69 [{["tag"] = "size-full-0 auto-y stroke-system-alert radius-small", ["LayoutOrder"]}]
      209 NAMECALL                         R26 R3 K31 ["getNextOrder"]
      211 CALL                             R26 1 1
      212 SETTABLEKS                       R26 R25 K29 ["LayoutOrder"]
      214 DUPTABLE                         R26 K71 [{"ErrorBannerContent"}]
      215 LENGTH                           R28 R4
      216 JUMPIFNOTEQKN                    R28 K57 [1] ; [+21]
      218 GETUPVAL                         R27 4
      219 GETTABLEKS                       R27 R27 K10 ["createElement"]
      221 GETUPVAL                         R28 14
      222 DUPTABLE                         R29 K75 [{"variant", "severity", "title"}]
      223 GETUPVAL                         R30 15
      224 GETTABLEKS                       R30 R30 K76 ["Standard"]
      226 SETTABLEKS                       R30 R29 K72 ["variant"]
      228 GETUPVAL                         R30 16
      229 GETTABLEKS                       R30 R30 K77 ["Error"]
      231 SETTABLEKS                       R30 R29 K73 ["severity"]
      233 GETTABLEN                        R30 R4 1
      234 SETTABLEKS                       R30 R29 K74 ["title"]
      236 CALL                             R27 2 1
      237 JUMP                             ; [+54]
      238 GETUPVAL                         R27 4
      239 GETTABLEKS                       R27 R27 K10 ["createElement"]
      241 GETUPVAL                         R28 14
      242 DUPTABLE                         R29 K79 [{"variant", "severity", "title", "actions"}]
      243 GETUPVAL                         R30 15
      244 GETTABLEKS                       R30 R30 K76 ["Standard"]
      246 SETTABLEKS                       R30 R29 K72 ["variant"]
      248 GETUPVAL                         R30 16
      249 GETTABLEKS                       R30 R30 K77 ["Error"]
      251 SETTABLEKS                       R30 R29 K73 ["severity"]
      253 LOADK                            R32 K42 ["MarketplaceImport"]
      254 LOADK                            R33 K80 ["ErrorBannerText"]
      255 DUPTABLE                         R34 K82 [{"numErrors"}]
      256 LENGTH                           R36 R4
      257 FASTCALL1                        TOSTRING R36 ; [+2]
      258 GETIMPORT                        R35 K84 [tostring]
      260 CALL                             R35 1 1
      261 SETTABLEKS                       R35 R34 K81 ["numErrors"]
      263 NAMECALL                         R30 R2 K44 ["getText"]
      265 CALL                             R30 4 1
      266 SETTABLEKS                       R30 R29 K74 ["title"]
      268 NEWTABLE                         R30 0 1
      270 DUPTABLE                         R31 K86 [{"text", "variant", "onActivated"}]
      271 LOADK                            R34 K42 ["MarketplaceImport"]
      272 LOADK                            R35 K87 ["SeeDetailsActionLabel"]
      273 NAMECALL                         R32 R2 K44 ["getText"]
      275 CALL                             R32 3 1
      276 SETTABLEKS                       R32 R31 K50 ["text"]
      278 GETUPVAL                         R32 17
      279 GETTABLEKS                       R32 R32 K76 ["Standard"]
      281 SETTABLEKS                       R32 R31 K72 ["variant"]
      283 GETTABLEKS                       R32 R12 K88 ["enable"]
      285 SETTABLEKS                       R32 R31 K85 ["onActivated"]
      287 SETLIST                          R30 R31 1 [1]
      289 SETTABLEKS                       R30 R29 K78 ["actions"]
      291 CALL                             R27 2 1
      292 SETTABLEKS                       R27 R26 K70 ["ErrorBannerContent"]
      294 CALL                             R23 3 1
      295 SETTABLEKS                       R23 R22 K34 ["ErrorBanner"]
      297 JUMPIFEQKNIL                     R5 ; [+7]
      299 GETIMPORT                        R24 K90 [next]
      301 MOVE                             R25 R5
      302 CALL                             R24 1 1
      303 JUMPIFNOTEQKNIL                  R24 ; [+3]
      305 LOADNIL                          R23
      306 JUMP                             ; [+64]
      307 GETUPVAL                         R23 4
      308 GETTABLEKS                       R23 R23 K10 ["createElement"]
      310 GETUPVAL                         R24 18
      311 DUPTABLE                         R25 K95 [{["tag"] = "grow size-full", ["scroll"], ["sizeConstraint"], ["layout"], ["LayoutOrder"]}]
      312 DUPTABLE                         R26 K101 [{"ScrollingDirection", "AutomaticCanvasSize", "CanvasSize", "scrollBarVisibility", "VerticalScrollBarInset"}]
      313 GETIMPORT                        R27 K104 [Enum.ScrollingDirection.Y]
      315 SETTABLEKS                       R27 R26 K96 ["ScrollingDirection"]
      317 GETIMPORT                        R27 K106 [Enum.AutomaticSize.Y]
      319 SETTABLEKS                       R27 R26 K97 ["AutomaticCanvasSize"]
      321 GETIMPORT                        R27 K109 [UDim2.fromScale]
      323 LOADN                            R28 0
      324 LOADN                            R29 1
      325 CALL                             R27 2 1
      326 SETTABLEKS                       R27 R26 K98 ["CanvasSize"]
      328 GETUPVAL                         R27 19
      329 GETTABLEKS                       R27 R27 K110 ["Auto"]
      331 SETTABLEKS                       R27 R26 K99 ["scrollBarVisibility"]
      333 GETIMPORT                        R27 K113 [Enum.ScrollBarInset.Always]
      335 SETTABLEKS                       R27 R26 K100 ["VerticalScrollBarInset"]
      337 SETTABLEKS                       R26 R25 K92 ["scroll"]
      339 DUPTABLE                         R26 K115 [{"MaxSize"}]
      340 GETIMPORT                        R27 K117 [Vector2.new]
      342 LOADK                            R28 K118 [∞]
      343 MOVE                             R29 R7
      344 CALL                             R27 2 1
      345 SETTABLEKS                       R27 R26 K114 ["MaxSize"]
      347 SETTABLEKS                       R26 R25 K93 ["sizeConstraint"]
      349 DUPTABLE                         R26 K121 [{"SortOrder", "FillDirection"}]
      350 GETIMPORT                        R27 K122 [Enum.SortOrder.LayoutOrder]
      352 SETTABLEKS                       R27 R26 K119 ["SortOrder"]
      354 GETIMPORT                        R27 K124 [Enum.FillDirection.Vertical]
      356 SETTABLEKS                       R27 R26 K120 ["FillDirection"]
      358 SETTABLEKS                       R26 R25 K94 ["layout"]
      360 NAMECALL                         R26 R3 K31 ["getNextOrder"]
      362 CALL                             R26 1 1
      363 SETTABLEKS                       R26 R25 K29 ["LayoutOrder"]
      365 GETUPVAL                         R26 20
      366 MOVE                             R27 R5
      367 GETTABLEKS                       R28 R0 K125 ["onRemoveItem"]
      369 CALL                             R26 2 1
      370 CALL                             R23 3 1
      371 SETTABLEKS                       R23 R22 K35 ["ItemRows"]
      373 GETUPVAL                         R23 4
      374 GETTABLEKS                       R23 R23 K10 ["createElement"]
      376 GETUPVAL                         R24 9
      377 DUPTABLE                         R25 K127 [{["tag"] = "row align-x-right gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      378 NAMECALL                         R26 R3 K31 ["getNextOrder"]
      380 CALL                             R26 1 1
      381 SETTABLEKS                       R26 R25 K29 ["LayoutOrder"]
      383 DUPTABLE                         R26 K130 [{"AddItemsButton", "CancelButton"}]
      384 GETUPVAL                         R27 4
      385 GETTABLEKS                       R27 R27 K10 ["createElement"]
      387 GETUPVAL                         R28 21
      388 DUPTABLE                         R29 K132 [{"text", "variant", "onActivated", "isDisabled", "width", "size", "LayoutOrder"}]
      389 LOADK                            R32 K42 ["MarketplaceImport"]
      390 LOADK                            R33 K133 ["AddButtonLabel"]
      391 NAMECALL                         R30 R2 K44 ["getText"]
      393 CALL                             R30 3 1
      394 SETTABLEKS                       R30 R29 K50 ["text"]
      396 GETUPVAL                         R30 17
      397 GETTABLEKS                       R30 R30 K134 ["Emphasis"]
      399 SETTABLEKS                       R30 R29 K72 ["variant"]
      401 GETTABLEKS                       R30 R0 K135 ["onAddItems"]
      403 SETTABLEKS                       R30 R29 K85 ["onActivated"]
      405 SETTABLEKS                       R14 R29 K131 ["isDisabled"]
      407 GETIMPORT                        R30 K63 [UDim.new]
      409 LOADK                            R31 K136 [0.25]
      410 LOADN                            R32 0
      411 CALL                             R30 2 1
      412 SETTABLEKS                       R30 R29 K56 ["width"]
      414 GETUPVAL                         R30 12
      415 GETTABLEKS                       R30 R30 K61 ["XSmall"]
      417 SETTABLEKS                       R30 R29 K55 ["size"]
      419 NAMECALL                         R30 R3 K31 ["getNextOrder"]
      421 CALL                             R30 1 1
      422 SETTABLEKS                       R30 R29 K29 ["LayoutOrder"]
      424 CALL                             R27 2 1
      425 SETTABLEKS                       R27 R26 K128 ["AddItemsButton"]
      427 GETUPVAL                         R27 4
      428 GETTABLEKS                       R27 R27 K10 ["createElement"]
      430 GETUPVAL                         R28 21
      431 DUPTABLE                         R29 K138 [{["text"], ["variant"], ["onActivated"], ["isDisabled"] = False, ["width"], ["size"], ["LayoutOrder"]}]
      432 LOADK                            R32 K42 ["MarketplaceImport"]
      433 LOADK                            R33 K139 ["CancelButtonLabel"]
      434 NAMECALL                         R30 R2 K44 ["getText"]
      436 CALL                             R30 3 1
      437 SETTABLEKS                       R30 R29 K50 ["text"]
      439 GETUPVAL                         R30 17
      440 GETTABLEKS                       R30 R30 K76 ["Standard"]
      442 SETTABLEKS                       R30 R29 K72 ["variant"]
      444 GETTABLEKS                       R30 R0 K20 ["onClose"]
      446 SETTABLEKS                       R30 R29 K85 ["onActivated"]
      448 GETIMPORT                        R30 K63 [UDim.new]
      450 LOADK                            R31 K136 [0.25]
      451 LOADN                            R32 0
      452 CALL                             R30 2 1
      453 SETTABLEKS                       R30 R29 K56 ["width"]
      455 GETUPVAL                         R30 12
      456 GETTABLEKS                       R30 R30 K61 ["XSmall"]
      458 SETTABLEKS                       R30 R29 K55 ["size"]
      460 NAMECALL                         R30 R3 K31 ["getNextOrder"]
      462 CALL                             R30 1 1
      463 SETTABLEKS                       R30 R29 K29 ["LayoutOrder"]
      465 CALL                             R27 2 1
      466 SETTABLEKS                       R27 R26 K129 ["CancelButton"]
      468 CALL                             R23 3 1
      469 SETTABLEKS                       R23 R22 K36 ["Footer"]
      471 GETTABLEKS                       R24 R12 K140 ["enabled"]
      473 JUMPIFNOT                        R24 ; [+13]
      474 GETUPVAL                         R23 4
      475 GETTABLEKS                       R23 R23 K10 ["createElement"]
      477 GETUPVAL                         R24 22
      478 DUPTABLE                         R25 K141 [{"errors", "onClose"}]
      479 SETTABLEKS                       R4 R25 K3 ["errors"]
      481 GETTABLEKS                       R26 R12 K142 ["disable"]
      483 SETTABLEKS                       R26 R25 K20 ["onClose"]
      485 CALL                             R23 2 1
      486 JUMP                             ; [+1]
      487 LOADNIL                          R23
      488 SETTABLEKS                       R23 R22 K37 ["ErrorDialog"]
      490 CALL                             R19 3 1
      491 SETTABLEKS                       R19 R18 K22 ["Content"]
      493 CALL                             R15 3 -1
      494 RETURN                           R15 -1

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
      142 GETTABLEKS                       R31 R0 K34 ["Src"]
      144 GETTABLEKS                       R31 R31 K42 ["Flags"]
      146 GETTABLEKS                       R31 R31 K43 ["getFFlagAvatarPreviewerLookComposer"]
      148 CALL                             R30 1 1
      149 GETIMPORT                        R31 K46 [Vector2.new]
      151 LOADN                            R32 400
      152 LOADN                            R33 116
      153 CALL                             R31 2 1
      154 DUPCLOSURE                       R32 K47 [PROTO_0]
      155 DUPCLOSURE                       R33 K48 [PROTO_2]
      156 CAPTURE                          VAL R22
      157 CAPTURE                          VAL R2
      158 CAPTURE                          VAL R19
      159 CAPTURE                          VAL R14
      160 CAPTURE                          VAL R26
      161 CAPTURE                          VAL R27
      162 CAPTURE                          VAL R17
      163 CAPTURE                          VAL R13
      164 CAPTURE                          VAL R7
      165 CAPTURE                          VAL R8
      166 CAPTURE                          VAL R9
      167 CAPTURE                          VAL R12
      168 CAPTURE                          VAL R10
      169 CAPTURE                          VAL R6
      170 DUPCLOSURE                       R34 K49 [PROTO_8]
      171 CAPTURE                          VAL R30
      172 CAPTURE                          VAL R24
      173 CAPTURE                          VAL R23
      174 CAPTURE                          VAL R22
      175 CAPTURE                          VAL R2
      176 CAPTURE                          VAL R1
      177 CAPTURE                          VAL R31
      178 CAPTURE                          VAL R25
      179 CAPTURE                          VAL R21
      180 CAPTURE                          VAL R19
      181 CAPTURE                          VAL R17
      182 CAPTURE                          VAL R18
      183 CAPTURE                          VAL R10
      184 CAPTURE                          VAL R32
      185 CAPTURE                          VAL R16
      186 CAPTURE                          VAL R4
      187 CAPTURE                          VAL R5
      188 CAPTURE                          VAL R6
      189 CAPTURE                          VAL R15
      190 CAPTURE                          VAL R11
      191 CAPTURE                          VAL R33
      192 CAPTURE                          VAL R12
      193 CAPTURE                          VAL R29
      194 RETURN                           R34 1
