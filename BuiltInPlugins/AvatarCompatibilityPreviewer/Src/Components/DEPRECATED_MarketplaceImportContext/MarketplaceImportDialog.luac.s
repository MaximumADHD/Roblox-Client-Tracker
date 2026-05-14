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
       22 DUPTABLE                         R11 K6 [{"tag", "LayoutOrder"}]
       23 LOADK                            R12 K7 ["row size-full-0 auto-y padding-y-small gap-small"]
       24 SETTABLEKS                       R12 R11 K4 ["tag"]
       26 NAMECALL                         R12 R3 K8 ["getNextOrder"]
       28 CALL                             R12 1 1
       29 SETTABLEKS                       R12 R11 K5 ["LayoutOrder"]
       31 DUPTABLE                         R12 K12 [{"Thumbnail", "ItemContent", "RemoveButton"}]
       32 GETUPVAL                         R13 1
       33 GETTABLEKS                       R13 R13 K3 ["createElement"]
       35 GETUPVAL                         R14 2
       36 DUPTABLE                         R15 K6 [{"tag", "LayoutOrder"}]
       37 LOADK                            R16 K13 ["col auto-xy padding-y-xsmall"]
       38 SETTABLEKS                       R16 R15 K4 ["tag"]
       40 NAMECALL                         R16 R3 K8 ["getNextOrder"]
       42 CALL                             R16 1 1
       43 SETTABLEKS                       R16 R15 K5 ["LayoutOrder"]
       45 GETUPVAL                         R16 1
       46 GETTABLEKS                       R16 R16 K3 ["createElement"]
       48 GETUPVAL                         R17 3
       49 DUPTABLE                         R18 K15 [{"Image", "tag"}]
       50 GETTABLEKS                       R20 R8 K16 ["itemType"]
       52 JUMPIFNOTEQKS                    R20 K17 ["Asset"] ; [+6]
       54 GETUPVAL                         R19 4
       55 GETTABLEKS                       R20 R8 K18 ["itemId"]
       57 CALL                             R19 1 1
       58 JUMP                             ; [+4]
       59 GETUPVAL                         R19 5
       60 GETTABLEKS                       R20 R8 K18 ["itemId"]
       62 CALL                             R19 1 1
       63 SETTABLEKS                       R19 R18 K14 ["Image"]
       65 LOADK                            R19 K19 ["size-1000-1000 radius-medium"]
       66 SETTABLEKS                       R19 R18 K4 ["tag"]
       68 CALL                             R16 2 -1
       69 CALL                             R13 -1 1
       70 SETTABLEKS                       R13 R12 K9 ["Thumbnail"]
       72 GETUPVAL                         R13 1
       73 GETTABLEKS                       R13 R13 K3 ["createElement"]
       75 GETUPVAL                         R14 2
       76 DUPTABLE                         R15 K6 [{"tag", "LayoutOrder"}]
       77 LOADK                            R16 K20 ["col grow align-x-left"]
       78 SETTABLEKS                       R16 R15 K4 ["tag"]
       80 NAMECALL                         R16 R3 K8 ["getNextOrder"]
       82 CALL                             R16 1 1
       83 SETTABLEKS                       R16 R15 K5 ["LayoutOrder"]
       85 DUPTABLE                         R16 K24 [{"ItemName", "CreatorNameView", "ItemId"}]
       86 GETUPVAL                         R17 1
       87 GETTABLEKS                       R17 R17 K3 ["createElement"]
       89 GETUPVAL                         R18 6
       90 DUPTABLE                         R19 K26 [{"Text", "tag", "LayoutOrder"}]
       91 GETTABLEKS                       R20 R8 K27 ["name"]
       93 SETTABLEKS                       R20 R19 K25 ["Text"]
       95 LOADK                            R20 K28 ["text-title-small auto-xy content-system-contrast "]
       96 SETTABLEKS                       R20 R19 K4 ["tag"]
       98 NAMECALL                         R20 R3 K8 ["getNextOrder"]
      100 CALL                             R20 1 1
      101 SETTABLEKS                       R20 R19 K5 ["LayoutOrder"]
      103 CALL                             R17 2 1
      104 SETTABLEKS                       R17 R16 K21 ["ItemName"]
      106 GETUPVAL                         R17 1
      107 GETTABLEKS                       R17 R17 K3 ["createElement"]
      109 GETUPVAL                         R18 2
      110 DUPTABLE                         R19 K6 [{"tag", "LayoutOrder"}]
      111 LOADK                            R20 K29 ["row auto-xy gap-xxsmall"]
      112 SETTABLEKS                       R20 R19 K4 ["tag"]
      114 NAMECALL                         R20 R3 K8 ["getNextOrder"]
      116 CALL                             R20 1 1
      117 SETTABLEKS                       R20 R19 K5 ["LayoutOrder"]
      119 DUPTABLE                         R20 K32 [{"CreatorName", "VerificationBadge"}]
      120 GETUPVAL                         R21 1
      121 GETTABLEKS                       R21 R21 K3 ["createElement"]
      123 GETUPVAL                         R22 6
      124 DUPTABLE                         R23 K33 [{"Text", "tag"}]
      125 GETTABLEKS                       R24 R8 K34 ["creatorName"]
      127 SETTABLEKS                       R24 R23 K25 ["Text"]
      129 LOADK                            R24 K35 ["text-body-small auto-xy content-system-contrast"]
      130 SETTABLEKS                       R24 R23 K4 ["tag"]
      132 CALL                             R21 2 1
      133 SETTABLEKS                       R21 R20 K30 ["CreatorName"]
      135 GETTABLEKS                       R22 R8 K36 ["hasVerifiedBadge"]
      137 JUMPIFNOT                        R22 ; [+22]
      138 GETUPVAL                         R21 1
      139 GETTABLEKS                       R21 R21 K3 ["createElement"]
      141 GETUPVAL                         R22 7
      142 DUPTABLE                         R23 K39 [{"name", "size", "variant"}]
      143 GETUPVAL                         R24 8
      144 GETTABLEKS                       R24 R24 K40 ["VerifiedMono"]
      146 SETTABLEKS                       R24 R23 K27 ["name"]
      148 GETUPVAL                         R24 9
      149 GETTABLEKS                       R24 R24 K41 ["XSmall"]
      151 SETTABLEKS                       R24 R23 K37 ["size"]
      153 GETUPVAL                         R24 10
      154 GETTABLEKS                       R24 R24 K42 ["Filled"]
      156 SETTABLEKS                       R24 R23 K38 ["variant"]
      158 CALL                             R21 2 1
      159 JUMP                             ; [+1]
      160 LOADNIL                          R21
      161 SETTABLEKS                       R21 R20 K31 ["VerificationBadge"]
      163 CALL                             R17 3 1
      164 SETTABLEKS                       R17 R16 K22 ["CreatorNameView"]
      166 GETUPVAL                         R17 1
      167 GETTABLEKS                       R17 R17 K3 ["createElement"]
      169 GETUPVAL                         R18 6
      170 DUPTABLE                         R19 K26 [{"Text", "tag", "LayoutOrder"}]
      171 GETTABLEKS                       R20 R8 K18 ["itemId"]
      173 SETTABLEKS                       R20 R19 K25 ["Text"]
      175 LOADK                            R20 K35 ["text-body-small auto-xy content-system-contrast"]
      176 SETTABLEKS                       R20 R19 K4 ["tag"]
      178 NAMECALL                         R20 R3 K8 ["getNextOrder"]
      180 CALL                             R20 1 1
      181 SETTABLEKS                       R20 R19 K5 ["LayoutOrder"]
      183 CALL                             R17 2 1
      184 SETTABLEKS                       R17 R16 K23 ["ItemId"]
      186 CALL                             R13 3 1
      187 SETTABLEKS                       R13 R12 K10 ["ItemContent"]
      189 GETUPVAL                         R13 1
      190 GETTABLEKS                       R13 R13 K3 ["createElement"]
      192 GETUPVAL                         R14 2
      193 DUPTABLE                         R15 K6 [{"tag", "LayoutOrder"}]
      194 LOADK                            R16 K43 ["col self-center auto-xy"]
      195 SETTABLEKS                       R16 R15 K4 ["tag"]
      197 NAMECALL                         R16 R3 K8 ["getNextOrder"]
      199 CALL                             R16 1 1
      200 SETTABLEKS                       R16 R15 K5 ["LayoutOrder"]
      202 GETUPVAL                         R16 1
      203 GETTABLEKS                       R16 R16 K3 ["createElement"]
      205 GETUPVAL                         R17 11
      206 DUPTABLE                         R18 K47 [{"size", "icon", "isCircular", "variant", "onActivated"}]
      207 GETUPVAL                         R19 12
      208 GETTABLEKS                       R19 R19 K48 ["Small"]
      210 SETTABLEKS                       R19 R18 K37 ["size"]
      212 GETUPVAL                         R19 8
      213 GETTABLEKS                       R19 R19 K49 ["CircleMinus"]
      215 SETTABLEKS                       R19 R18 K44 ["icon"]
      217 LOADB                            R19 1
      218 SETTABLEKS                       R19 R18 K45 ["isCircular"]
      220 GETUPVAL                         R19 13
      221 GETTABLEKS                       R19 R19 K50 ["Utility"]
      223 SETTABLEKS                       R19 R18 K38 ["variant"]
      225 NEWCLOSURE                       R19 P0
      226 CAPTURE                          VAL R1
      227 CAPTURE                          VAL R8
      228 SETTABLEKS                       R19 R18 K46 ["onActivated"]
      230 CALL                             R16 2 -1
      231 CALL                             R13 -1 1
      232 SETTABLEKS                       R13 R12 K11 ["RemoveButton"]
      234 CALL                             R9 3 1
      235 SETTABLE                         R9 R2 R7
      236 FORGLOOP                         R4 2 ; [-219]
      238 RETURN                           R2 1

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
       76 DUPTABLE                         R17 K18 [{"Title", "MinContentSize", "Size", "Modal", "OnClose", "Enabled"}]
       77 LOADK                            R18 K7 [""]
       78 SETTABLEKS                       R18 R17 K12 ["Title"]
       80 GETUPVAL                         R18 6
       81 SETTABLEKS                       R18 R17 K13 ["MinContentSize"]
       83 SETTABLEKS                       R10 R17 K14 ["Size"]
       85 LOADB                            R18 1
       86 SETTABLEKS                       R18 R17 K15 ["Modal"]
       88 GETTABLEKS                       R18 R0 K19 ["onClose"]
       90 SETTABLEKS                       R18 R17 K16 ["OnClose"]
       92 LOADB                            R18 1
       93 SETTABLEKS                       R18 R17 K17 ["Enabled"]
       95 DUPTABLE                         R18 K22 [{"StyleLink", "Content"}]
       96 GETUPVAL                         R19 4
       97 GETTABLEKS                       R19 R19 K10 ["createElement"]
       99 LOADK                            R20 K20 ["StyleLink"]
      100 DUPTABLE                         R21 K24 [{"StyleSheet"}]
      101 SETTABLEKS                       R1 R21 K23 ["StyleSheet"]
      103 CALL                             R19 2 1
      104 SETTABLEKS                       R19 R18 K20 ["StyleLink"]
      106 GETUPVAL                         R19 4
      107 GETTABLEKS                       R19 R19 K10 ["createElement"]
      109 GETUPVAL                         R20 9
      110 DUPTABLE                         R21 K28 [{"onAbsoluteSizeChanged", "tag", "LayoutOrder"}]
      111 NEWCLOSURE                       R22 P2
      112 CAPTURE                          VAL R11
      113 SETTABLEKS                       R22 R21 K25 ["onAbsoluteSizeChanged"]
      115 LOADK                            R22 K29 ["col size-full-0 auto-y padding-x-large padding-top-medium padding-bottom-medium gap-medium"]
      116 SETTABLEKS                       R22 R21 K26 ["tag"]
      118 NAMECALL                         R22 R3 K30 ["getNextOrder"]
      120 CALL                             R22 1 1
      121 SETTABLEKS                       R22 R21 K27 ["LayoutOrder"]
      123 DUPTABLE                         R22 K37 [{"ItemIdLabel", "ItemIdInputGroup", "ErrorBanner", "ItemRows", "Footer", "ErrorDialog"}]
      124 GETUPVAL                         R23 4
      125 GETTABLEKS                       R23 R23 K10 ["createElement"]
      127 GETUPVAL                         R24 10
      128 DUPTABLE                         R25 K39 [{"Text", "tag"}]
      129 LOADK                            R28 K40 ["MarketplaceImport"]
      130 LOADK                            R29 K41 ["AddAvatarItemsLabel"]
      131 NAMECALL                         R26 R2 K42 ["getText"]
      133 CALL                             R26 3 1
      134 SETTABLEKS                       R26 R25 K38 ["Text"]
      136 LOADK                            R26 K43 ["text-title-medium auto-xy text-align-y-center content-emphasis"]
      137 SETTABLEKS                       R26 R25 K26 ["tag"]
      139 CALL                             R23 2 1
      140 SETTABLEKS                       R23 R22 K31 ["ItemIdLabel"]
      142 GETUPVAL                         R23 4
      143 GETTABLEKS                       R23 R23 K10 ["createElement"]
      145 GETUPVAL                         R24 9
      146 DUPTABLE                         R25 K44 [{"tag", "LayoutOrder"}]
      147 LOADK                            R26 K45 ["col size-full-0 auto-y gap-xxsmall"]
      148 SETTABLEKS                       R26 R25 K26 ["tag"]
      150 NAMECALL                         R26 R3 K30 ["getNextOrder"]
      152 CALL                             R26 1 1
      153 SETTABLEKS                       R26 R25 K27 ["LayoutOrder"]
      155 DUPTABLE                         R26 K48 [{"ItemIdInput", "PressEnterCaption"}]
      156 GETUPVAL                         R27 4
      157 GETTABLEKS                       R27 R27 K10 ["createElement"]
      159 GETUPVAL                         R28 11
      160 DUPTABLE                         R29 K57 [{"text", "textBoxRef", "placeholder", "label", "onChanged", "size", "width", "LayoutOrder", "onReturnPressed"}]
      161 SETTABLEKS                       R8 R29 K49 ["text"]
      163 SETTABLEKS                       R13 R29 K50 ["textBoxRef"]
      165 LOADK                            R32 K40 ["MarketplaceImport"]
      166 LOADK                            R33 K58 ["ItemIdInputPlaceholder"]
      167 NAMECALL                         R30 R2 K42 ["getText"]
      169 CALL                             R30 3 1
      170 SETTABLEKS                       R30 R29 K51 ["placeholder"]
      172 LOADK                            R30 K7 [""]
      173 SETTABLEKS                       R30 R29 K52 ["label"]
      175 NEWCLOSURE                       R30 P3
      176 CAPTURE                          VAL R0
      177 CAPTURE                          VAL R9
      178 SETTABLEKS                       R30 R29 K53 ["onChanged"]
      180 GETUPVAL                         R30 12
      181 GETTABLEKS                       R30 R30 K59 ["XSmall"]
      183 SETTABLEKS                       R30 R29 K54 ["size"]
      185 GETIMPORT                        R30 K61 [UDim.new]
      187 LOADN                            R31 1
      188 LOADN                            R32 0
      189 CALL                             R30 2 1
      190 SETTABLEKS                       R30 R29 K55 ["width"]
      192 LOADN                            R30 1
      193 SETTABLEKS                       R30 R29 K27 ["LayoutOrder"]
      195 NEWCLOSURE                       R30 P4
      196 CAPTURE                          VAL R0
      197 CAPTURE                          UPVAL U13
      198 CAPTURE                          VAL R8
      199 CAPTURE                          VAL R9
      200 SETTABLEKS                       R30 R29 K56 ["onReturnPressed"]
      202 CALL                             R27 2 1
      203 SETTABLEKS                       R27 R26 K46 ["ItemIdInput"]
      205 GETUPVAL                         R27 4
      206 GETTABLEKS                       R27 R27 K10 ["createElement"]
      208 GETUPVAL                         R28 10
      209 DUPTABLE                         R29 K62 [{"Text", "tag", "LayoutOrder"}]
      210 LOADK                            R32 K40 ["MarketplaceImport"]
      211 LOADK                            R33 K63 ["PressEnterToLoadAssetIDs"]
      212 NAMECALL                         R30 R2 K42 ["getText"]
      214 CALL                             R30 3 1
      215 SETTABLEKS                       R30 R29 K38 ["Text"]
      217 LOADK                            R30 K64 ["text-caption-small font-weight-semibold content-default auto-xy padding-top-xsmall"]
      218 SETTABLEKS                       R30 R29 K26 ["tag"]
      220 LOADN                            R30 2
      221 SETTABLEKS                       R30 R29 K27 ["LayoutOrder"]
      223 CALL                             R27 2 1
      224 SETTABLEKS                       R27 R26 K47 ["PressEnterCaption"]
      226 CALL                             R23 3 1
      227 SETTABLEKS                       R23 R22 K32 ["ItemIdInputGroup"]
      229 LENGTH                           R24 R4
      230 JUMPIFNOTEQKN                    R24 K9 [0] ; [+3]
      232 LOADNIL                          R23
      233 JUMP                             ; [+94]
      234 GETUPVAL                         R23 4
      235 GETTABLEKS                       R23 R23 K10 ["createElement"]
      237 GETUPVAL                         R24 9
      238 DUPTABLE                         R25 K44 [{"tag", "LayoutOrder"}]
      239 LOADK                            R26 K65 ["radius-small size-full-0 auto-y stroke-system-alert"]
      240 SETTABLEKS                       R26 R25 K26 ["tag"]
      242 NAMECALL                         R26 R3 K30 ["getNextOrder"]
      244 CALL                             R26 1 1
      245 SETTABLEKS                       R26 R25 K27 ["LayoutOrder"]
      247 DUPTABLE                         R26 K67 [{"ErrorBannerContent"}]
      248 LENGTH                           R28 R4
      249 JUMPIFNOTEQKN                    R28 K68 [1] ; [+21]
      251 GETUPVAL                         R27 4
      252 GETTABLEKS                       R27 R27 K10 ["createElement"]
      254 GETUPVAL                         R28 14
      255 DUPTABLE                         R29 K72 [{"variant", "severity", "title"}]
      256 GETUPVAL                         R30 15
      257 GETTABLEKS                       R30 R30 K73 ["Standard"]
      259 SETTABLEKS                       R30 R29 K69 ["variant"]
      261 GETUPVAL                         R30 16
      262 GETTABLEKS                       R30 R30 K74 ["Error"]
      264 SETTABLEKS                       R30 R29 K70 ["severity"]
      266 GETTABLEN                        R30 R4 1
      267 SETTABLEKS                       R30 R29 K71 ["title"]
      269 CALL                             R27 2 1
      270 JUMP                             ; [+54]
      271 GETUPVAL                         R27 4
      272 GETTABLEKS                       R27 R27 K10 ["createElement"]
      274 GETUPVAL                         R28 14
      275 DUPTABLE                         R29 K76 [{"variant", "severity", "title", "actions"}]
      276 GETUPVAL                         R30 15
      277 GETTABLEKS                       R30 R30 K73 ["Standard"]
      279 SETTABLEKS                       R30 R29 K69 ["variant"]
      281 GETUPVAL                         R30 16
      282 GETTABLEKS                       R30 R30 K74 ["Error"]
      284 SETTABLEKS                       R30 R29 K70 ["severity"]
      286 LOADK                            R32 K40 ["MarketplaceImport"]
      287 LOADK                            R33 K77 ["ErrorBannerText"]
      288 DUPTABLE                         R34 K79 [{"numErrors"}]
      289 LENGTH                           R36 R4
      290 FASTCALL1                        TOSTRING R36 ; [+2]
      291 GETIMPORT                        R35 K81 [tostring]
      293 CALL                             R35 1 1
      294 SETTABLEKS                       R35 R34 K78 ["numErrors"]
      296 NAMECALL                         R30 R2 K42 ["getText"]
      298 CALL                             R30 4 1
      299 SETTABLEKS                       R30 R29 K71 ["title"]
      301 NEWTABLE                         R30 0 1
      303 DUPTABLE                         R31 K83 [{"text", "variant", "onActivated"}]
      304 LOADK                            R34 K40 ["MarketplaceImport"]
      305 LOADK                            R35 K84 ["SeeDetailsActionLabel"]
      306 NAMECALL                         R32 R2 K42 ["getText"]
      308 CALL                             R32 3 1
      309 SETTABLEKS                       R32 R31 K49 ["text"]
      311 GETUPVAL                         R32 17
      312 GETTABLEKS                       R32 R32 K73 ["Standard"]
      314 SETTABLEKS                       R32 R31 K69 ["variant"]
      316 GETTABLEKS                       R32 R12 K85 ["enable"]
      318 SETTABLEKS                       R32 R31 K82 ["onActivated"]
      320 SETLIST                          R30 R31 1 [1]
      322 SETTABLEKS                       R30 R29 K75 ["actions"]
      324 CALL                             R27 2 1
      325 SETTABLEKS                       R27 R26 K66 ["ErrorBannerContent"]
      327 CALL                             R23 3 1
      328 SETTABLEKS                       R23 R22 K33 ["ErrorBanner"]
      330 JUMPIFEQKNIL                     R5 ; [+7]
      332 GETIMPORT                        R24 K87 [next]
      334 MOVE                             R25 R5
      335 CALL                             R24 1 1
      336 JUMPIFNOTEQKNIL                  R24 ; [+3]
      338 LOADNIL                          R23
      339 JUMP                             ; [+67]
      340 GETUPVAL                         R23 4
      341 GETTABLEKS                       R23 R23 K10 ["createElement"]
      343 GETUPVAL                         R24 18
      344 DUPTABLE                         R25 K91 [{"tag", "scroll", "sizeConstraint", "layout", "LayoutOrder"}]
      345 LOADK                            R26 K92 ["size-full grow"]
      346 SETTABLEKS                       R26 R25 K26 ["tag"]
      348 DUPTABLE                         R26 K98 [{"ScrollingDirection", "AutomaticCanvasSize", "CanvasSize", "scrollBarVisibility", "VerticalScrollBarInset"}]
      349 GETIMPORT                        R27 K101 [Enum.ScrollingDirection.Y]
      351 SETTABLEKS                       R27 R26 K93 ["ScrollingDirection"]
      353 GETIMPORT                        R27 K103 [Enum.AutomaticSize.Y]
      355 SETTABLEKS                       R27 R26 K94 ["AutomaticCanvasSize"]
      357 GETIMPORT                        R27 K106 [UDim2.fromScale]
      359 LOADN                            R28 0
      360 LOADN                            R29 1
      361 CALL                             R27 2 1
      362 SETTABLEKS                       R27 R26 K95 ["CanvasSize"]
      364 GETUPVAL                         R27 19
      365 GETTABLEKS                       R27 R27 K107 ["Auto"]
      367 SETTABLEKS                       R27 R26 K96 ["scrollBarVisibility"]
      369 GETIMPORT                        R27 K110 [Enum.ScrollBarInset.Always]
      371 SETTABLEKS                       R27 R26 K97 ["VerticalScrollBarInset"]
      373 SETTABLEKS                       R26 R25 K88 ["scroll"]
      375 DUPTABLE                         R26 K112 [{"MaxSize"}]
      376 GETIMPORT                        R27 K114 [Vector2.new]
      378 LOADK                            R28 K115 [∞]
      379 MOVE                             R29 R7
      380 CALL                             R27 2 1
      381 SETTABLEKS                       R27 R26 K111 ["MaxSize"]
      383 SETTABLEKS                       R26 R25 K89 ["sizeConstraint"]
      385 DUPTABLE                         R26 K118 [{"SortOrder", "FillDirection"}]
      386 GETIMPORT                        R27 K119 [Enum.SortOrder.LayoutOrder]
      388 SETTABLEKS                       R27 R26 K116 ["SortOrder"]
      390 GETIMPORT                        R27 K121 [Enum.FillDirection.Vertical]
      392 SETTABLEKS                       R27 R26 K117 ["FillDirection"]
      394 SETTABLEKS                       R26 R25 K90 ["layout"]
      396 NAMECALL                         R26 R3 K30 ["getNextOrder"]
      398 CALL                             R26 1 1
      399 SETTABLEKS                       R26 R25 K27 ["LayoutOrder"]
      401 GETUPVAL                         R26 20
      402 MOVE                             R27 R5
      403 GETTABLEKS                       R28 R0 K122 ["onRemoveItem"]
      405 CALL                             R26 2 1
      406 CALL                             R23 3 1
      407 SETTABLEKS                       R23 R22 K34 ["ItemRows"]
      409 GETUPVAL                         R23 4
      410 GETTABLEKS                       R23 R23 K10 ["createElement"]
      412 GETUPVAL                         R24 9
      413 DUPTABLE                         R25 K44 [{"tag", "LayoutOrder"}]
      414 LOADK                            R26 K123 ["row gap-small align-x-right size-full-0 auto-y"]
      415 SETTABLEKS                       R26 R25 K26 ["tag"]
      417 NAMECALL                         R26 R3 K30 ["getNextOrder"]
      419 CALL                             R26 1 1
      420 SETTABLEKS                       R26 R25 K27 ["LayoutOrder"]
      422 DUPTABLE                         R26 K126 [{"AddItemsButton", "CancelButton"}]
      423 GETUPVAL                         R27 4
      424 GETTABLEKS                       R27 R27 K10 ["createElement"]
      426 GETUPVAL                         R28 21
      427 DUPTABLE                         R29 K128 [{"text", "variant", "onActivated", "isDisabled", "width", "size", "LayoutOrder"}]
      428 LOADK                            R32 K40 ["MarketplaceImport"]
      429 LOADK                            R33 K129 ["AddButtonLabel"]
      430 NAMECALL                         R30 R2 K42 ["getText"]
      432 CALL                             R30 3 1
      433 SETTABLEKS                       R30 R29 K49 ["text"]
      435 GETUPVAL                         R30 17
      436 GETTABLEKS                       R30 R30 K130 ["Emphasis"]
      438 SETTABLEKS                       R30 R29 K69 ["variant"]
      440 GETTABLEKS                       R30 R0 K131 ["onAddItems"]
      442 SETTABLEKS                       R30 R29 K82 ["onActivated"]
      444 SETTABLEKS                       R14 R29 K127 ["isDisabled"]
      446 GETIMPORT                        R30 K61 [UDim.new]
      448 LOADK                            R31 K132 [0.25]
      449 LOADN                            R32 0
      450 CALL                             R30 2 1
      451 SETTABLEKS                       R30 R29 K55 ["width"]
      453 GETUPVAL                         R30 12
      454 GETTABLEKS                       R30 R30 K59 ["XSmall"]
      456 SETTABLEKS                       R30 R29 K54 ["size"]
      458 NAMECALL                         R30 R3 K30 ["getNextOrder"]
      460 CALL                             R30 1 1
      461 SETTABLEKS                       R30 R29 K27 ["LayoutOrder"]
      463 CALL                             R27 2 1
      464 SETTABLEKS                       R27 R26 K124 ["AddItemsButton"]
      466 GETUPVAL                         R27 4
      467 GETTABLEKS                       R27 R27 K10 ["createElement"]
      469 GETUPVAL                         R28 21
      470 DUPTABLE                         R29 K128 [{"text", "variant", "onActivated", "isDisabled", "width", "size", "LayoutOrder"}]
      471 LOADK                            R32 K40 ["MarketplaceImport"]
      472 LOADK                            R33 K133 ["CancelButtonLabel"]
      473 NAMECALL                         R30 R2 K42 ["getText"]
      475 CALL                             R30 3 1
      476 SETTABLEKS                       R30 R29 K49 ["text"]
      478 GETUPVAL                         R30 17
      479 GETTABLEKS                       R30 R30 K73 ["Standard"]
      481 SETTABLEKS                       R30 R29 K69 ["variant"]
      483 GETTABLEKS                       R30 R0 K19 ["onClose"]
      485 SETTABLEKS                       R30 R29 K82 ["onActivated"]
      487 LOADB                            R30 0
      488 SETTABLEKS                       R30 R29 K127 ["isDisabled"]
      490 GETIMPORT                        R30 K61 [UDim.new]
      492 LOADK                            R31 K132 [0.25]
      493 LOADN                            R32 0
      494 CALL                             R30 2 1
      495 SETTABLEKS                       R30 R29 K55 ["width"]
      497 GETUPVAL                         R30 12
      498 GETTABLEKS                       R30 R30 K59 ["XSmall"]
      500 SETTABLEKS                       R30 R29 K54 ["size"]
      502 NAMECALL                         R30 R3 K30 ["getNextOrder"]
      504 CALL                             R30 1 1
      505 SETTABLEKS                       R30 R29 K27 ["LayoutOrder"]
      507 CALL                             R27 2 1
      508 SETTABLEKS                       R27 R26 K125 ["CancelButton"]
      510 CALL                             R23 3 1
      511 SETTABLEKS                       R23 R22 K35 ["Footer"]
      513 GETTABLEKS                       R24 R12 K134 ["enabled"]
      515 JUMPIFNOT                        R24 ; [+13]
      516 GETUPVAL                         R23 4
      517 GETTABLEKS                       R23 R23 K10 ["createElement"]
      519 GETUPVAL                         R24 22
      520 DUPTABLE                         R25 K135 [{"errors", "onClose"}]
      521 SETTABLEKS                       R4 R25 K3 ["errors"]
      523 GETTABLEKS                       R26 R12 K136 ["disable"]
      525 SETTABLEKS                       R26 R25 K19 ["onClose"]
      527 CALL                             R23 2 1
      528 JUMP                             ; [+1]
      529 LOADNIL                          R23
      530 SETTABLEKS                       R23 R22 K36 ["ErrorDialog"]
      532 CALL                             R19 3 1
      533 SETTABLEKS                       R19 R18 K21 ["Content"]
      535 CALL                             R15 3 -1
      536 RETURN                           R15 -1

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
      151 LOADN                            R32 144
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
