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
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K2 ["new"]
       13 CALL                             R3 0 1
       14 MOVE                             R4 R0
       15 LOADNIL                          R5
       16 LOADNIL                          R6
       17 FORGPREP                         R4
       18 GETUPVAL                         R10 1
       19 GETTABLEKS                       R9 R10 K3 ["createElement"]
       21 GETUPVAL                         R10 2
       22 DUPTABLE                         R11 K6 [{"tag", "LayoutOrder"}]
       23 LOADK                            R12 K7 ["row size-full-0 auto-y padding-y-small gap-small"]
       24 SETTABLEKS                       R12 R11 K4 ["tag"]
       26 NAMECALL                         R12 R3 K8 ["getNextOrder"]
       28 CALL                             R12 1 1
       29 SETTABLEKS                       R12 R11 K5 ["LayoutOrder"]
       31 DUPTABLE                         R12 K12 [{"Thumbnail", "ItemContent", "RemoveButton"}]
       32 GETUPVAL                         R14 1
       33 GETTABLEKS                       R13 R14 K3 ["createElement"]
       35 GETUPVAL                         R14 2
       36 DUPTABLE                         R15 K6 [{"tag", "LayoutOrder"}]
       37 LOADK                            R16 K13 ["col auto-xy padding-y-xsmall"]
       38 SETTABLEKS                       R16 R15 K4 ["tag"]
       40 NAMECALL                         R16 R3 K8 ["getNextOrder"]
       42 CALL                             R16 1 1
       43 SETTABLEKS                       R16 R15 K5 ["LayoutOrder"]
       45 GETUPVAL                         R17 1
       46 GETTABLEKS                       R16 R17 K3 ["createElement"]
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
       65 LOADK                            R19 K19 ["size-1000-1000"]
       66 SETTABLEKS                       R19 R18 K4 ["tag"]
       68 CALL                             R16 2 -1
       69 CALL                             R13 -1 1
       70 SETTABLEKS                       R13 R12 K9 ["Thumbnail"]
       72 GETUPVAL                         R14 1
       73 GETTABLEKS                       R13 R14 K3 ["createElement"]
       75 GETUPVAL                         R14 2
       76 DUPTABLE                         R15 K6 [{"tag", "LayoutOrder"}]
       77 LOADK                            R16 K20 ["col grow align-x-left"]
       78 SETTABLEKS                       R16 R15 K4 ["tag"]
       80 NAMECALL                         R16 R3 K8 ["getNextOrder"]
       82 CALL                             R16 1 1
       83 SETTABLEKS                       R16 R15 K5 ["LayoutOrder"]
       85 DUPTABLE                         R16 K24 [{"ItemName", "CreatorNameView", "ItemId"}]
       86 GETUPVAL                         R18 1
       87 GETTABLEKS                       R17 R18 K3 ["createElement"]
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
      106 GETUPVAL                         R18 1
      107 GETTABLEKS                       R17 R18 K3 ["createElement"]
      109 GETUPVAL                         R18 2
      110 DUPTABLE                         R19 K6 [{"tag", "LayoutOrder"}]
      111 LOADK                            R20 K29 ["row auto-xy gap-xxsmall"]
      112 SETTABLEKS                       R20 R19 K4 ["tag"]
      114 NAMECALL                         R20 R3 K8 ["getNextOrder"]
      116 CALL                             R20 1 1
      117 SETTABLEKS                       R20 R19 K5 ["LayoutOrder"]
      119 DUPTABLE                         R20 K32 [{"CreatorName", "VerificationBadge"}]
      120 GETUPVAL                         R22 1
      121 GETTABLEKS                       R21 R22 K3 ["createElement"]
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
      138 GETUPVAL                         R22 1
      139 GETTABLEKS                       R21 R22 K3 ["createElement"]
      141 GETUPVAL                         R22 7
      142 DUPTABLE                         R23 K39 [{"name", "size", "variant"}]
      143 GETUPVAL                         R25 8
      144 GETTABLEKS                       R24 R25 K40 ["VerifiedMono"]
      146 SETTABLEKS                       R24 R23 K27 ["name"]
      148 GETUPVAL                         R25 9
      149 GETTABLEKS                       R24 R25 K41 ["XSmall"]
      151 SETTABLEKS                       R24 R23 K37 ["size"]
      153 GETUPVAL                         R25 10
      154 GETTABLEKS                       R24 R25 K42 ["Filled"]
      156 SETTABLEKS                       R24 R23 K38 ["variant"]
      158 CALL                             R21 2 1
      159 JUMP                             ; [+1]
      160 LOADNIL                          R21
      161 SETTABLEKS                       R21 R20 K31 ["VerificationBadge"]
      163 CALL                             R17 3 1
      164 SETTABLEKS                       R17 R16 K22 ["CreatorNameView"]
      166 GETUPVAL                         R18 1
      167 GETTABLEKS                       R17 R18 K3 ["createElement"]
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
      189 GETUPVAL                         R14 1
      190 GETTABLEKS                       R13 R14 K3 ["createElement"]
      192 GETUPVAL                         R14 2
      193 DUPTABLE                         R15 K6 [{"tag", "LayoutOrder"}]
      194 LOADK                            R16 K43 ["col self-center auto-xy"]
      195 SETTABLEKS                       R16 R15 K4 ["tag"]
      197 NAMECALL                         R16 R3 K8 ["getNextOrder"]
      199 CALL                             R16 1 1
      200 SETTABLEKS                       R16 R15 K5 ["LayoutOrder"]
      202 GETUPVAL                         R17 1
      203 GETTABLEKS                       R16 R17 K3 ["createElement"]
      205 GETUPVAL                         R17 11
      206 DUPTABLE                         R18 K47 [{"size", "icon", "isCircular", "variant", "onActivated"}]
      207 GETUPVAL                         R20 12
      208 GETTABLEKS                       R19 R20 K48 ["Small"]
      210 SETTABLEKS                       R19 R18 K37 ["size"]
      212 GETUPVAL                         R20 8
      213 GETTABLEKS                       R19 R20 K49 ["CircleMinus"]
      215 SETTABLEKS                       R19 R18 K44 ["icon"]
      217 LOADB                            R19 1
      218 SETTABLEKS                       R19 R18 K45 ["isCircular"]
      220 GETUPVAL                         R20 13
      221 GETTABLEKS                       R19 R20 K50 ["Utility"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["count"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["isFetching"]
        3 JUMPIF                           R1 ; [+3]
        4 GETUPVAL                         R1 1
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["isFetching"]
        3 JUMPIF                           R0 ; [+10]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K1 ["onTextEntered"]
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
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K0 ["use"]
        8 CALL                             R1 0 1
        9 NAMECALL                         R1 R1 K1 ["get"]
       11 CALL                             R1 1 1
       12 GETUPVAL                         R2 2
       13 NAMECALL                         R2 R2 K0 ["use"]
       15 CALL                             R2 1 1
       16 GETUPVAL                         R4 3
       17 GETTABLEKS                       R3 R4 K2 ["new"]
       19 CALL                             R3 0 1
       20 GETTABLEKS                       R4 R0 K3 ["errors"]
       22 GETTABLEKS                       R5 R0 K4 ["itemRows"]
       24 GETUPVAL                         R7 4
       25 GETTABLEKS                       R6 R7 K5 ["useMemo"]
       27 NEWCLOSURE                       R7 P0
       28 CAPTURE                          UPVAL U5
       29 CAPTURE                          VAL R5
       30 NEWTABLE                         R8 0 1
       32 MOVE                             R9 R5
       33 SETLIST                          R8 R9 1 [1]
       35 CALL                             R6 2 1
       36 GETUPVAL                         R8 4
       37 GETTABLEKS                       R7 R8 K5 ["useMemo"]
       39 NEWCLOSURE                       R8 P1
       40 CAPTURE                          VAL R6
       41 NEWTABLE                         R9 0 1
       43 MOVE                             R10 R6
       44 SETLIST                          R9 R10 1 [1]
       46 CALL                             R7 2 1
       47 GETUPVAL                         R9 4
       48 GETTABLEKS                       R8 R9 K6 ["useState"]
       50 LOADK                            R9 K7 [""]
       51 CALL                             R8 1 2
       52 GETUPVAL                         R11 4
       53 GETTABLEKS                       R10 R11 K6 ["useState"]
       55 GETUPVAL                         R11 6
       56 CALL                             R10 1 2
       57 GETUPVAL                         R12 7
       58 LOADB                            R13 0
       59 CALL                             R12 1 1
       60 GETUPVAL                         R14 4
       61 GETTABLEKS                       R13 R14 K8 ["useRef"]
       63 LOADNIL                          R14
       64 CALL                             R13 1 1
       65 JUMPIFNOTEQKN                    R6 K9 [0] ; [+3]
       67 LOADB                            R14 1
       68 JUMP                             ; [+1]
       69 LOADB                            R14 0
       70 GETUPVAL                         R16 4
       71 GETTABLEKS                       R15 R16 K10 ["createElement"]
       73 GETUPVAL                         R17 8
       74 GETTABLEKS                       R16 R17 K11 ["Dialog"]
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
       96 GETUPVAL                         R20 4
       97 GETTABLEKS                       R19 R20 K10 ["createElement"]
       99 LOADK                            R20 K20 ["StyleLink"]
      100 DUPTABLE                         R21 K24 [{"StyleSheet"}]
      101 SETTABLEKS                       R1 R21 K23 ["StyleSheet"]
      103 CALL                             R19 2 1
      104 SETTABLEKS                       R19 R18 K20 ["StyleLink"]
      106 GETUPVAL                         R20 4
      107 GETTABLEKS                       R19 R20 K10 ["createElement"]
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
      123 DUPTABLE                         R22 K37 [{"ItemIdLabel", "ItemIdInput", "ErrorBanner", "ItemRows", "Footer", "ErrorDialog"}]
      124 GETUPVAL                         R24 4
      125 GETTABLEKS                       R23 R24 K10 ["createElement"]
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
      142 GETUPVAL                         R24 4
      143 GETTABLEKS                       R23 R24 K10 ["createElement"]
      145 GETUPVAL                         R24 11
      146 DUPTABLE                         R25 K52 [{"text", "textBoxRef", "placeholder", "label", "onChanged", "size", "width", "LayoutOrder", "onReturnPressed"}]
      147 SETTABLEKS                       R8 R25 K44 ["text"]
      149 SETTABLEKS                       R13 R25 K45 ["textBoxRef"]
      151 LOADK                            R28 K40 ["MarketplaceImport"]
      152 LOADK                            R29 K53 ["ItemIdInputPlaceholder"]
      153 NAMECALL                         R26 R2 K42 ["getText"]
      155 CALL                             R26 3 1
      156 SETTABLEKS                       R26 R25 K46 ["placeholder"]
      158 LOADK                            R26 K7 [""]
      159 SETTABLEKS                       R26 R25 K47 ["label"]
      161 NEWCLOSURE                       R26 P3
      162 CAPTURE                          VAL R0
      163 CAPTURE                          VAL R9
      164 SETTABLEKS                       R26 R25 K48 ["onChanged"]
      166 GETUPVAL                         R27 12
      167 GETTABLEKS                       R26 R27 K54 ["XSmall"]
      169 SETTABLEKS                       R26 R25 K49 ["size"]
      171 GETIMPORT                        R26 K56 [UDim.new]
      173 LOADN                            R27 1
      174 LOADN                            R28 0
      175 CALL                             R26 2 1
      176 SETTABLEKS                       R26 R25 K50 ["width"]
      178 NAMECALL                         R26 R3 K30 ["getNextOrder"]
      180 CALL                             R26 1 1
      181 SETTABLEKS                       R26 R25 K27 ["LayoutOrder"]
      183 NEWCLOSURE                       R26 P4
      184 CAPTURE                          VAL R0
      185 CAPTURE                          UPVAL U13
      186 CAPTURE                          VAL R8
      187 CAPTURE                          VAL R9
      188 SETTABLEKS                       R26 R25 K51 ["onReturnPressed"]
      190 CALL                             R23 2 1
      191 SETTABLEKS                       R23 R22 K32 ["ItemIdInput"]
      193 LENGTH                           R24 R4
      194 JUMPIFNOTEQKN                    R24 K9 [0] ; [+3]
      196 LOADNIL                          R23
      197 JUMP                             ; [+94]
      198 GETUPVAL                         R24 4
      199 GETTABLEKS                       R23 R24 K10 ["createElement"]
      201 GETUPVAL                         R24 9
      202 DUPTABLE                         R25 K57 [{"tag", "LayoutOrder"}]
      203 LOADK                            R26 K58 ["radius-small size-full-0 auto-y stroke-system-alert"]
      204 SETTABLEKS                       R26 R25 K26 ["tag"]
      206 NAMECALL                         R26 R3 K30 ["getNextOrder"]
      208 CALL                             R26 1 1
      209 SETTABLEKS                       R26 R25 K27 ["LayoutOrder"]
      211 DUPTABLE                         R26 K60 [{"ErrorBannerContent"}]
      212 LENGTH                           R28 R4
      213 JUMPIFNOTEQKN                    R28 K61 [1] ; [+21]
      215 GETUPVAL                         R28 4
      216 GETTABLEKS                       R27 R28 K10 ["createElement"]
      218 GETUPVAL                         R28 14
      219 DUPTABLE                         R29 K65 [{"variant", "severity", "title"}]
      220 GETUPVAL                         R31 15
      221 GETTABLEKS                       R30 R31 K66 ["Standard"]
      223 SETTABLEKS                       R30 R29 K62 ["variant"]
      225 GETUPVAL                         R31 16
      226 GETTABLEKS                       R30 R31 K67 ["Error"]
      228 SETTABLEKS                       R30 R29 K63 ["severity"]
      230 GETTABLEN                        R30 R4 1
      231 SETTABLEKS                       R30 R29 K64 ["title"]
      233 CALL                             R27 2 1
      234 JUMP                             ; [+54]
      235 GETUPVAL                         R28 4
      236 GETTABLEKS                       R27 R28 K10 ["createElement"]
      238 GETUPVAL                         R28 14
      239 DUPTABLE                         R29 K69 [{"variant", "severity", "title", "actions"}]
      240 GETUPVAL                         R31 15
      241 GETTABLEKS                       R30 R31 K66 ["Standard"]
      243 SETTABLEKS                       R30 R29 K62 ["variant"]
      245 GETUPVAL                         R31 16
      246 GETTABLEKS                       R30 R31 K67 ["Error"]
      248 SETTABLEKS                       R30 R29 K63 ["severity"]
      250 LOADK                            R32 K40 ["MarketplaceImport"]
      251 LOADK                            R33 K70 ["ErrorBannerText"]
      252 DUPTABLE                         R34 K72 [{"numErrors"}]
      253 LENGTH                           R36 R4
      254 FASTCALL1                        TOSTRING R36 ; [+2]
      255 GETIMPORT                        R35 K74 [tostring]
      257 CALL                             R35 1 1
      258 SETTABLEKS                       R35 R34 K71 ["numErrors"]
      260 NAMECALL                         R30 R2 K42 ["getText"]
      262 CALL                             R30 4 1
      263 SETTABLEKS                       R30 R29 K64 ["title"]
      265 NEWTABLE                         R30 0 1
      267 DUPTABLE                         R31 K76 [{"text", "variant", "onActivated"}]
      268 LOADK                            R34 K40 ["MarketplaceImport"]
      269 LOADK                            R35 K77 ["SeeDetailsActionLabel"]
      270 NAMECALL                         R32 R2 K42 ["getText"]
      272 CALL                             R32 3 1
      273 SETTABLEKS                       R32 R31 K44 ["text"]
      275 GETUPVAL                         R33 17
      276 GETTABLEKS                       R32 R33 K66 ["Standard"]
      278 SETTABLEKS                       R32 R31 K62 ["variant"]
      280 GETTABLEKS                       R32 R12 K78 ["enable"]
      282 SETTABLEKS                       R32 R31 K75 ["onActivated"]
      284 SETLIST                          R30 R31 1 [1]
      286 SETTABLEKS                       R30 R29 K68 ["actions"]
      288 CALL                             R27 2 1
      289 SETTABLEKS                       R27 R26 K59 ["ErrorBannerContent"]
      291 CALL                             R23 3 1
      292 SETTABLEKS                       R23 R22 K33 ["ErrorBanner"]
      294 JUMPIFEQKNIL                     R5 ; [+7]
      296 GETIMPORT                        R24 K80 [next]
      298 MOVE                             R25 R5
      299 CALL                             R24 1 1
      300 JUMPIFNOTEQKNIL                  R24 ; [+3]
      302 LOADNIL                          R23
      303 JUMP                             ; [+67]
      304 GETUPVAL                         R24 4
      305 GETTABLEKS                       R23 R24 K10 ["createElement"]
      307 GETUPVAL                         R24 18
      308 DUPTABLE                         R25 K84 [{"tag", "scroll", "sizeConstraint", "layout", "LayoutOrder"}]
      309 LOADK                            R26 K85 ["size-full grow"]
      310 SETTABLEKS                       R26 R25 K26 ["tag"]
      312 DUPTABLE                         R26 K91 [{"ScrollingDirection", "AutomaticCanvasSize", "CanvasSize", "scrollBarVisibility", "VerticalScrollBarInset"}]
      313 GETIMPORT                        R27 K94 [Enum.ScrollingDirection.Y]
      315 SETTABLEKS                       R27 R26 K86 ["ScrollingDirection"]
      317 GETIMPORT                        R27 K96 [Enum.AutomaticSize.Y]
      319 SETTABLEKS                       R27 R26 K87 ["AutomaticCanvasSize"]
      321 GETIMPORT                        R27 K99 [UDim2.fromScale]
      323 LOADN                            R28 0
      324 LOADN                            R29 1
      325 CALL                             R27 2 1
      326 SETTABLEKS                       R27 R26 K88 ["CanvasSize"]
      328 GETUPVAL                         R28 19
      329 GETTABLEKS                       R27 R28 K100 ["Auto"]
      331 SETTABLEKS                       R27 R26 K89 ["scrollBarVisibility"]
      333 GETIMPORT                        R27 K103 [Enum.ScrollBarInset.Always]
      335 SETTABLEKS                       R27 R26 K90 ["VerticalScrollBarInset"]
      337 SETTABLEKS                       R26 R25 K81 ["scroll"]
      339 DUPTABLE                         R26 K105 [{"MaxSize"}]
      340 GETIMPORT                        R27 K107 [Vector2.new]
      342 LOADK                            R28 K108 [∞]
      343 MOVE                             R29 R7
      344 CALL                             R27 2 1
      345 SETTABLEKS                       R27 R26 K104 ["MaxSize"]
      347 SETTABLEKS                       R26 R25 K82 ["sizeConstraint"]
      349 DUPTABLE                         R26 K111 [{"SortOrder", "FillDirection"}]
      350 GETIMPORT                        R27 K112 [Enum.SortOrder.LayoutOrder]
      352 SETTABLEKS                       R27 R26 K109 ["SortOrder"]
      354 GETIMPORT                        R27 K114 [Enum.FillDirection.Vertical]
      356 SETTABLEKS                       R27 R26 K110 ["FillDirection"]
      358 SETTABLEKS                       R26 R25 K83 ["layout"]
      360 NAMECALL                         R26 R3 K30 ["getNextOrder"]
      362 CALL                             R26 1 1
      363 SETTABLEKS                       R26 R25 K27 ["LayoutOrder"]
      365 GETUPVAL                         R26 20
      366 MOVE                             R27 R5
      367 GETTABLEKS                       R28 R0 K115 ["onRemoveItem"]
      369 CALL                             R26 2 1
      370 CALL                             R23 3 1
      371 SETTABLEKS                       R23 R22 K34 ["ItemRows"]
      373 GETUPVAL                         R24 4
      374 GETTABLEKS                       R23 R24 K10 ["createElement"]
      376 GETUPVAL                         R24 9
      377 DUPTABLE                         R25 K57 [{"tag", "LayoutOrder"}]
      378 LOADK                            R26 K116 ["row gap-small align-x-right size-full-0 auto-y"]
      379 SETTABLEKS                       R26 R25 K26 ["tag"]
      381 NAMECALL                         R26 R3 K30 ["getNextOrder"]
      383 CALL                             R26 1 1
      384 SETTABLEKS                       R26 R25 K27 ["LayoutOrder"]
      386 DUPTABLE                         R26 K119 [{"AddItemsButton", "CancelButton"}]
      387 GETUPVAL                         R28 4
      388 GETTABLEKS                       R27 R28 K10 ["createElement"]
      390 GETUPVAL                         R28 21
      391 DUPTABLE                         R29 K121 [{"text", "variant", "onActivated", "isDisabled", "width", "size", "LayoutOrder"}]
      392 LOADK                            R32 K40 ["MarketplaceImport"]
      393 LOADK                            R33 K122 ["AddButtonLabel"]
      394 NAMECALL                         R30 R2 K42 ["getText"]
      396 CALL                             R30 3 1
      397 SETTABLEKS                       R30 R29 K44 ["text"]
      399 GETUPVAL                         R31 17
      400 GETTABLEKS                       R30 R31 K123 ["Emphasis"]
      402 SETTABLEKS                       R30 R29 K62 ["variant"]
      404 GETTABLEKS                       R30 R0 K124 ["onAddItems"]
      406 SETTABLEKS                       R30 R29 K75 ["onActivated"]
      408 SETTABLEKS                       R14 R29 K120 ["isDisabled"]
      410 GETIMPORT                        R30 K56 [UDim.new]
      412 LOADK                            R31 K125 [0.25]
      413 LOADN                            R32 0
      414 CALL                             R30 2 1
      415 SETTABLEKS                       R30 R29 K50 ["width"]
      417 GETUPVAL                         R31 12
      418 GETTABLEKS                       R30 R31 K54 ["XSmall"]
      420 SETTABLEKS                       R30 R29 K49 ["size"]
      422 NAMECALL                         R30 R3 K30 ["getNextOrder"]
      424 CALL                             R30 1 1
      425 SETTABLEKS                       R30 R29 K27 ["LayoutOrder"]
      427 CALL                             R27 2 1
      428 SETTABLEKS                       R27 R26 K117 ["AddItemsButton"]
      430 GETUPVAL                         R28 4
      431 GETTABLEKS                       R27 R28 K10 ["createElement"]
      433 GETUPVAL                         R28 21
      434 DUPTABLE                         R29 K121 [{"text", "variant", "onActivated", "isDisabled", "width", "size", "LayoutOrder"}]
      435 LOADK                            R32 K40 ["MarketplaceImport"]
      436 LOADK                            R33 K126 ["CancelButtonLabel"]
      437 NAMECALL                         R30 R2 K42 ["getText"]
      439 CALL                             R30 3 1
      440 SETTABLEKS                       R30 R29 K44 ["text"]
      442 GETUPVAL                         R31 17
      443 GETTABLEKS                       R30 R31 K66 ["Standard"]
      445 SETTABLEKS                       R30 R29 K62 ["variant"]
      447 GETTABLEKS                       R30 R0 K19 ["onClose"]
      449 SETTABLEKS                       R30 R29 K75 ["onActivated"]
      451 LOADB                            R30 0
      452 SETTABLEKS                       R30 R29 K120 ["isDisabled"]
      454 GETIMPORT                        R30 K56 [UDim.new]
      456 LOADK                            R31 K125 [0.25]
      457 LOADN                            R32 0
      458 CALL                             R30 2 1
      459 SETTABLEKS                       R30 R29 K50 ["width"]
      461 GETUPVAL                         R31 12
      462 GETTABLEKS                       R30 R31 K54 ["XSmall"]
      464 SETTABLEKS                       R30 R29 K49 ["size"]
      466 NAMECALL                         R30 R3 K30 ["getNextOrder"]
      468 CALL                             R30 1 1
      469 SETTABLEKS                       R30 R29 K27 ["LayoutOrder"]
      471 CALL                             R27 2 1
      472 SETTABLEKS                       R27 R26 K118 ["CancelButton"]
      474 CALL                             R23 3 1
      475 SETTABLEKS                       R23 R22 K35 ["Footer"]
      477 GETTABLEKS                       R24 R12 K127 ["enabled"]
      479 JUMPIFNOT                        R24 ; [+13]
      480 GETUPVAL                         R24 4
      481 GETTABLEKS                       R23 R24 K10 ["createElement"]
      483 GETUPVAL                         R24 22
      484 DUPTABLE                         R25 K128 [{"errors", "onClose"}]
      485 SETTABLEKS                       R4 R25 K3 ["errors"]
      487 GETTABLEKS                       R26 R12 K129 ["disable"]
      489 SETTABLEKS                       R26 R25 K19 ["onClose"]
      491 CALL                             R23 2 1
      492 JUMP                             ; [+1]
      493 LOADNIL                          R23
      494 SETTABLEKS                       R23 R22 K36 ["ErrorDialog"]
      496 CALL                             R19 3 1
      497 SETTABLEKS                       R19 R18 K21 ["Content"]
      499 CALL                             R15 3 -1
      500 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R5 R3 K10 ["Enums"]
       30 GETTABLEKS                       R4 R5 K11 ["AlertVariant"]
       32 GETTABLEKS                       R6 R3 K10 ["Enums"]
       34 GETTABLEKS                       R5 R6 K12 ["AlertSeverity"]
       36 GETTABLEKS                       R7 R3 K10 ["Enums"]
       38 GETTABLEKS                       R6 R7 K13 ["ButtonVariant"]
       40 GETTABLEKS                       R8 R3 K10 ["Enums"]
       42 GETTABLEKS                       R7 R8 K14 ["IconName"]
       44 GETTABLEKS                       R9 R3 K10 ["Enums"]
       46 GETTABLEKS                       R8 R9 K15 ["IconSize"]
       48 GETTABLEKS                       R10 R3 K10 ["Enums"]
       50 GETTABLEKS                       R9 R10 K16 ["IconVariant"]
       52 GETTABLEKS                       R11 R3 K10 ["Enums"]
       54 GETTABLEKS                       R10 R11 K17 ["InputSize"]
       56 GETTABLEKS                       R12 R3 K10 ["Enums"]
       58 GETTABLEKS                       R11 R12 K18 ["ScrollBarVisibility"]
       60 GETTABLEKS                       R12 R3 K19 ["Button"]
       62 GETTABLEKS                       R13 R3 K20 ["Icon"]
       64 GETTABLEKS                       R14 R3 K21 ["Image"]
       66 GETTABLEKS                       R15 R3 K22 ["ScrollView"]
       68 GETTABLEKS                       R16 R3 K23 ["SystemBanner"]
       70 GETTABLEKS                       R17 R3 K24 ["Text"]
       72 GETTABLEKS                       R18 R3 K25 ["TextInput"]
       74 GETTABLEKS                       R19 R3 K26 ["View"]
       76 GETIMPORT                        R20 K5 [require]
       78 GETTABLEKS                       R22 R0 K6 ["Packages"]
       80 GETTABLEKS                       R21 R22 K27 ["Framework"]
       82 CALL                             R20 1 1
       83 GETTABLEKS                       R21 R20 K28 ["UI"]
       85 GETTABLEKS                       R23 R20 K29 ["Util"]
       87 GETTABLEKS                       R22 R23 K30 ["LayoutOrderIterator"]
       89 GETTABLEKS                       R24 R20 K31 ["ContextServices"]
       91 GETTABLEKS                       R23 R24 K32 ["Localization"]
       93 GETTABLEKS                       R25 R20 K31 ["ContextServices"]
       95 GETTABLEKS                       R24 R25 K33 ["Design"]
       97 GETIMPORT                        R25 K5 [require]
       99 GETTABLEKS                       R28 R0 K34 ["Src"]
      101 GETTABLEKS                       R27 R28 K35 ["Hooks"]
      103 GETTABLEKS                       R26 R27 K36 ["useToggleState"]
      105 CALL                             R25 1 1
      106 GETIMPORT                        R26 K5 [require]
      108 GETTABLEKS                       R29 R0 K34 ["Src"]
      110 GETTABLEKS                       R28 R29 K29 ["Util"]
      112 GETTABLEKS                       R27 R28 K37 ["getAssetThumbnail"]
      114 CALL                             R26 1 1
      115 GETIMPORT                        R27 K5 [require]
      117 GETTABLEKS                       R30 R0 K34 ["Src"]
      119 GETTABLEKS                       R29 R30 K29 ["Util"]
      121 GETTABLEKS                       R28 R29 K38 ["getBundleThumbnail"]
      123 CALL                             R27 1 1
      124 GETIMPORT                        R28 K5 [require]
      126 GETTABLEKS                       R30 R0 K34 ["Src"]
      128 GETTABLEKS                       R29 R30 K39 ["Types"]
      130 CALL                             R28 1 1
      131 GETIMPORT                        R29 K5 [require]
      133 GETIMPORT                        R32 K1 [script]
      135 GETTABLEKS                       R31 R32 K40 ["Parent"]
      137 GETTABLEKS                       R30 R31 K41 ["ImportErrorsDialog"]
      139 CALL                             R29 1 1
      140 GETIMPORT                        R30 K5 [require]
      142 GETTABLEKS                       R33 R0 K34 ["Src"]
      144 GETTABLEKS                       R32 R33 K42 ["Flags"]
      146 GETTABLEKS                       R31 R32 K43 ["getFFlagAvatarPreviewerLookComposer"]
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
