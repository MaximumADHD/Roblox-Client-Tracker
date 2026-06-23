PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["expanded"]
        2 NOT                              R1 R2
        3 SETTABLEKS                       R1 R0 K0 ["expanded"]
        5 GETUPVAL                         R1 0
        6 CALL                             R1 0 1
        7 JUMPIFNOT                        R1 ; [+5]
        8 DUPTABLE                         R1 K2 [{"rawTransformValues"}]
        9 LOADB                            R2 1
       10 SETTABLEKS                       R2 R1 K1 ["rawTransformValues"]
       12 RETURN                           R1 1
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["editThisContent"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["contentId"]
        6 DUPCLOSURE                       R2 K2 [PROTO_0]
        7 CAPTURE                          UPVAL U1
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["noExpand"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 LOADNIL                          R0
        5 RETURN                           R0 1
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K1 ["toolResult"]
        9 JUMPIF                           R0 ; [+2]
       10 LOADNIL                          R0
       11 RETURN                           R0 1
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K1 ["toolResult"]
       15 GETTABLEKS                       R0 R0 K2 ["content"]
       17 JUMPIFNOT                        R0 ; [+6]
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K1 ["toolResult"]
       21 GETTABLEKS                       R1 R1 K2 ["content"]
       23 GETTABLEN                        R0 R1 1
       24 JUMPIFNOT                        R0 ; [+7]
       25 GETTABLEKS                       R1 R0 K3 ["type"]
       27 JUMPIFNOTEQKS                    R1 K4 ["text"] ; [+4]
       29 GETTABLEKS                       R1 R0 K4 ["text"]
       31 JUMPIF                           R1 ; [+2]
       32 LOADNIL                          R1
       33 RETURN                           R1 1
       34 GETTABLEKS                       R1 R0 K4 ["text"]
       36 LOADK                            R3 K5 ["\n"]
       37 NAMECALL                         R1 R1 K6 ["split"]
       39 CALL                             R1 2 1
       40 NEWTABLE                         R2 0 0
       42 MOVE                             R3 R1
       43 LOADNIL                          R4
       44 LOADNIL                          R5
       45 FORGPREP                         R3
       46 JUMPIFEQKS                       R7 K7 [""] ; [+8]
       48 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       50 MOVE                             R9 R2
       51 MOVE                             R10 R7
       52 GETIMPORT                        R8 K10 [table.insert]
       54 CALL                             R8 2 0
       55 FORGLOOP                         R3 2 ; [-10]
       57 LENGTH                           R3 R2
       58 JUMPIFNOTEQKN                    R3 K11 [0] ; [+3]
       60 LOADNIL                          R3
       61 RETURN                           R3 1
       62 LENGTH                           R4 R2
       63 FASTCALL2K                       MATH_MIN R4 K12 ; [+4]
       65 LOADK                            R5 K12 [12]
       66 GETIMPORT                        R3 K15 [math.min]
       68 CALL                             R3 2 1
       69 NEWTABLE                         R4 0 0
       71 LOADN                            R7 1
       72 MOVE                             R5 R3
       73 LOADN                            R6 1
       74 FORNPREP                         R5
       75 GETTABLE                         R10 R2 R7
       76 FASTCALL2                        TABLE_INSERT R4 R10 ; [+4]
       78 MOVE                             R9 R4
       79 GETIMPORT                        R8 K10 [table.insert]
       81 CALL                             R8 2 0
       82 FORNLOOP                         R5
       83 LENGTH                           R5 R2
       84 LOADN                            R6 12
       85 JUMPIFNOTLT                      R6 R5 ; [+17]
       87 MOVE                             R6 R4
       88 GETUPVAL                         R7 1
       89 LOADK                            R9 K16 ["Summarized"]
       90 LOADK                            R10 K17 ["AndMore"]
       91 DUPTABLE                         R11 K19 [{"count"}]
       92 LENGTH                           R13 R2
       93 SUBK                             R12 R13 K12 [12]
       94 SETTABLEKS                       R12 R11 K18 ["count"]
       96 NAMECALL                         R7 R7 K20 ["getText"]
       98 CALL                             R7 4 -1
       99 FASTCALL                         TABLE_INSERT ; [+2]
      100 GETIMPORT                        R5 K10 [table.insert]
      102 CALL                             R5 -1 0
      103 GETIMPORT                        R5 K22 [table.concat]
      105 MOVE                             R6 R4
      106 LOADK                            R7 K5 ["\n"]
      107 CALL                             R5 2 -1
      108 RETURN                           R5 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R0 K0 ["icon"]
        4 JUMPIFNOT                        R2 ; [+4]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R4 R0 K0 ["icon"]
        8 GETTABLE                         R2 R3 R4
        9 GETUPVAL                         R3 2
       10 CALL                             R3 0 1
       11 GETTABLEKS                       R5 R0 K1 ["expanded"]
       13 JUMPIFEQKB                       R5 TRUE ; [+2]
       15 LOADB                            R4 0 +1
       16 LOADB                            R4 1
       17 GETTABLEKS                       R5 R0 K2 ["summary"]
       19 GETTABLEKS                       R6 R0 K3 ["subtitle"]
       21 JUMPIFNOT                        R6 ; [+30]
       22 GETTABLEKS                       R6 R0 K3 ["subtitle"]
       24 JUMPIFEQKS                       R6 K4 [""] ; [+27]
       26 GETTABLEKS                       R9 R0 K2 ["summary"]
       28 LOADN                            R11 1
       29 LOADN                            R12 1
       30 NAMECALL                         R9 R9 K5 ["sub"]
       32 CALL                             R9 3 1
       33 NAMECALL                         R9 R9 K6 ["lower"]
       35 CALL                             R9 1 1
       36 MOVE                             R7 R9
       37 GETTABLEKS                       R8 R0 K2 ["summary"]
       39 LOADN                            R10 2
       40 NAMECALL                         R8 R8 K5 ["sub"]
       42 CALL                             R8 2 1
       43 CONCAT                           R6 R7 R8
       44 LOADK                            R7 K7 ["%* | %*"]
       45 GETTABLEKS                       R9 R0 K3 ["subtitle"]
       47 MOVE                             R10 R6
       48 NAMECALL                         R7 R7 K8 ["format"]
       50 CALL                             R7 3 1
       51 MOVE                             R5 R7
       52 GETUPVAL                         R6 3
       53 GETTABLEKS                       R6 R6 K9 ["useCallback"]
       55 NEWCLOSURE                       R7 P0
       56 CAPTURE                          VAL R0
       57 CAPTURE                          UPVAL U4
       58 NEWTABLE                         R8 0 2
       60 GETTABLEKS                       R9 R0 K10 ["contentId"]
       62 GETTABLEKS                       R10 R0 K11 ["editThisContent"]
       64 SETLIST                          R8 R9 2 [1]
       66 CALL                             R6 2 1
       67 GETUPVAL                         R7 3
       68 GETTABLEKS                       R7 R7 K12 ["useMemo"]
       70 NEWCLOSURE                       R8 P1
       71 CAPTURE                          VAL R0
       72 CAPTURE                          UPVAL U5
       73 NEWTABLE                         R9 0 2
       75 GETTABLEKS                       R10 R0 K13 ["toolResult"]
       77 GETTABLEKS                       R11 R0 K14 ["noExpand"]
       79 SETLIST                          R9 R10 2 [1]
       81 CALL                             R7 2 1
       82 JUMPIFNOTEQKNIL                  R7 ; [+2]
       84 LOADB                            R8 0 +1
       85 LOADB                            R8 1
       86 GETUPVAL                         R9 6
       87 GETUPVAL                         R10 7
       88 DUPTABLE                         R11 K17 [{"tag", "LayoutOrder"}]
       89 LOADK                            R12 K18 ["col size-full-0 auto-xy gap-xsmall"]
       90 SETTABLEKS                       R12 R11 K15 ["tag"]
       92 GETTABLEKS                       R12 R0 K16 ["LayoutOrder"]
       94 SETTABLEKS                       R12 R11 K16 ["LayoutOrder"]
       96 DUPTABLE                         R12 K21 [{"Header", "Content"}]
       97 GETUPVAL                         R13 6
       98 GETUPVAL                         R14 7
       99 DUPTABLE                         R15 K24 [{"tag", "onActivated", "LayoutOrder", "testId"}]
      100 LOADK                            R16 K25 ["row gap-xsmall size-full-600 radius-medium align-y-center"]
      101 SETTABLEKS                       R16 R15 K15 ["tag"]
      103 JUMPIFNOT                        R8 ; [+2]
      104 MOVE                             R16 R6
      105 JUMP                             ; [+1]
      106 LOADNIL                          R16
      107 SETTABLEKS                       R16 R15 K22 ["onActivated"]
      109 MOVE                             R16 R1
      110 CALL                             R16 0 1
      111 SETTABLEKS                       R16 R15 K16 ["LayoutOrder"]
      113 JUMPIFNOT                        R8 ; [+6]
      114 GETUPVAL                         R16 8
      115 GETTABLEKS                       R16 R16 K26 ["Summarized"]
      117 GETTABLEKS                       R16 R16 K27 ["Expand"]
      119 JUMP                             ; [+1]
      120 LOADNIL                          R16
      121 SETTABLEKS                       R16 R15 K23 ["testId"]
      123 DUPTABLE                         R16 K31 [{"ExpandIcon", "Icon", "SummaryText"}]
      124 MOVE                             R17 R8
      125 JUMPIFNOT                        R17 ; [+36]
      126 GETUPVAL                         R17 6
      127 GETUPVAL                         R18 9
      128 DUPTABLE                         R19 K35 [{"name", "size", "style", "LayoutOrder"}]
      129 JUMPIFNOT                        R4 ; [+8]
      130 GETUPVAL                         R20 10
      131 GETTABLEKS                       R20 R20 K36 ["Enums"]
      133 GETTABLEKS                       R20 R20 K37 ["IconName"]
      135 GETTABLEKS                       R20 R20 K38 ["ChevronSmallDown"]
      137 JUMP                             ; [+7]
      138 GETUPVAL                         R20 10
      139 GETTABLEKS                       R20 R20 K36 ["Enums"]
      141 GETTABLEKS                       R20 R20 K37 ["IconName"]
      143 GETTABLEKS                       R20 R20 K39 ["ChevronSmallRight"]
      145 SETTABLEKS                       R20 R19 K32 ["name"]
      147 LOADN                            R20 12
      148 SETTABLEKS                       R20 R19 K33 ["size"]
      150 GETTABLEKS                       R20 R3 K40 ["Color"]
      152 GETTABLEKS                       R20 R20 K20 ["Content"]
      154 GETTABLEKS                       R20 R20 K41 ["Emphasis"]
      156 SETTABLEKS                       R20 R19 K34 ["style"]
      158 LOADN                            R20 255
      159 SETTABLEKS                       R20 R19 K16 ["LayoutOrder"]
      161 CALL                             R17 2 1
      162 SETTABLEKS                       R17 R16 K28 ["ExpandIcon"]
      164 MOVE                             R17 R2
      165 JUMPIFNOT                        R17 ; [+58]
      166 GETUPVAL                         R18 11
      167 CALL                             R18 0 1
      168 JUMPIFNOT                        R18 ; [+35]
      169 GETUPVAL                         R17 6
      170 GETUPVAL                         R18 9
      171 DUPTABLE                         R19 K42 [{"name", "style", "size", "LayoutOrder", "testId"}]
      172 SETTABLEKS                       R2 R19 K32 ["name"]
      174 GETTABLEKS                       R20 R3 K40 ["Color"]
      176 GETTABLEKS                       R20 R20 K20 ["Content"]
      178 GETTABLEKS                       R20 R20 K43 ["Muted"]
      180 SETTABLEKS                       R20 R19 K34 ["style"]
      182 GETUPVAL                         R20 10
      183 GETTABLEKS                       R20 R20 K36 ["Enums"]
      185 GETTABLEKS                       R20 R20 K44 ["IconSize"]
      187 GETTABLEKS                       R20 R20 K45 ["XSmall"]
      189 SETTABLEKS                       R20 R19 K33 ["size"]
      191 MOVE                             R20 R1
      192 CALL                             R20 0 1
      193 SETTABLEKS                       R20 R19 K16 ["LayoutOrder"]
      195 GETUPVAL                         R20 8
      196 GETTABLEKS                       R20 R20 K26 ["Summarized"]
      198 GETTABLEKS                       R20 R20 K29 ["Icon"]
      200 SETTABLEKS                       R20 R19 K23 ["testId"]
      202 CALL                             R17 2 1
      203 JUMP                             ; [+20]
      204 GETUPVAL                         R17 6
      205 GETUPVAL                         R18 12
      206 DUPTABLE                         R19 K47 [{"Image", "tag", "LayoutOrder", "testId"}]
      207 SETTABLEKS                       R2 R19 K46 ["Image"]
      209 LOADK                            R20 K48 ["size-300-300 anchor-center-center position-center-center content-muted"]
      210 SETTABLEKS                       R20 R19 K15 ["tag"]
      212 MOVE                             R20 R1
      213 CALL                             R20 0 1
      214 SETTABLEKS                       R20 R19 K16 ["LayoutOrder"]
      216 GETUPVAL                         R20 8
      217 GETTABLEKS                       R20 R20 K26 ["Summarized"]
      219 GETTABLEKS                       R20 R20 K29 ["Icon"]
      221 SETTABLEKS                       R20 R19 K23 ["testId"]
      223 CALL                             R17 2 1
      224 SETTABLEKS                       R17 R16 K29 ["Icon"]
      226 GETUPVAL                         R17 6
      227 GETUPVAL                         R18 13
      228 DUPTABLE                         R19 K50 [{"tag", "Text", "LayoutOrder"}]
      229 LOADK                            R20 K51 ["size-0-full text-label-small text-truncate-end content-default text-align-x-left"]
      230 SETTABLEKS                       R20 R19 K15 ["tag"]
      232 SETTABLEKS                       R5 R19 K49 ["Text"]
      234 MOVE                             R20 R1
      235 CALL                             R20 0 1
      236 SETTABLEKS                       R20 R19 K16 ["LayoutOrder"]
      238 DUPTABLE                         R20 K54 [{"UIFlexItem", "Shimmer"}]
      239 GETUPVAL                         R21 6
      240 LOADK                            R22 K52 ["UIFlexItem"]
      241 DUPTABLE                         R23 K56 [{"FlexMode"}]
      242 GETIMPORT                        R24 K60 [Enum.UIFlexMode.Fill]
      244 SETTABLEKS                       R24 R23 K55 ["FlexMode"]
      246 CALL                             R21 2 1
      247 SETTABLEKS                       R21 R20 K52 ["UIFlexItem"]
      249 GETTABLEKS                       R21 R0 K61 ["generating"]
      251 JUMPIFNOT                        R21 ; [+3]
      252 GETUPVAL                         R21 6
      253 GETUPVAL                         R22 14
      254 CALL                             R21 1 1
      255 SETTABLEKS                       R21 R20 K53 ["Shimmer"]
      257 CALL                             R17 3 1
      258 SETTABLEKS                       R17 R16 K30 ["SummaryText"]
      260 CALL                             R13 3 1
      261 SETTABLEKS                       R13 R12 K19 ["Header"]
      263 MOVE                             R13 R4
      264 JUMPIFNOT                        R13 ; [+90]
      265 MOVE                             R13 R7
      266 JUMPIFNOT                        R13 ; [+88]
      267 GETUPVAL                         R13 6
      268 GETUPVAL                         R14 15
      269 DUPTABLE                         R15 K63 [{"tag", "scroll", "LayoutOrder"}]
      270 LOADK                            R16 K64 ["size-full-0 auto-y bg-shift-300 padding-small radius-small stroke-default"]
      271 SETTABLEKS                       R16 R15 K15 ["tag"]
      273 GETUPVAL                         R16 16
      274 SETTABLEKS                       R16 R15 K62 ["scroll"]
      276 MOVE                             R16 R1
      277 CALL                             R16 0 1
      278 SETTABLEKS                       R16 R15 K16 ["LayoutOrder"]
      280 DUPTABLE                         R16 K66 [{"PreviewText"}]
      281 GETUPVAL                         R17 6
      282 LOADK                            R18 K67 ["TextBox"]
      283 DUPTABLE                         R19 K80 [{"TextEditable", "ClearTextOnFocus", "AutomaticSize", "TextColor3", "TextTransparency", "TextXAlignment", "TextYAlignment", "TextSize", "LineHeight", "Text", "FontFace", "BackgroundTransparency", "BorderSizePixel"}]
      284 LOADB                            R20 0
      285 SETTABLEKS                       R20 R19 K68 ["TextEditable"]
      287 LOADB                            R20 0
      288 SETTABLEKS                       R20 R19 K69 ["ClearTextOnFocus"]
      290 GETIMPORT                        R20 K82 [Enum.AutomaticSize.XY]
      292 SETTABLEKS                       R20 R19 K70 ["AutomaticSize"]
      294 GETTABLEKS                       R20 R3 K40 ["Color"]
      296 GETTABLEKS                       R20 R20 K20 ["Content"]
      298 GETTABLEKS                       R20 R20 K43 ["Muted"]
      300 GETTABLEKS                       R20 R20 K83 ["Color3"]
      302 SETTABLEKS                       R20 R19 K71 ["TextColor3"]
      304 GETTABLEKS                       R20 R3 K40 ["Color"]
      306 GETTABLEKS                       R20 R20 K20 ["Content"]
      308 GETTABLEKS                       R20 R20 K43 ["Muted"]
      310 GETTABLEKS                       R20 R20 K84 ["Transparency"]
      312 SETTABLEKS                       R20 R19 K72 ["TextTransparency"]
      314 GETIMPORT                        R20 K86 [Enum.TextXAlignment.Left]
      316 SETTABLEKS                       R20 R19 K73 ["TextXAlignment"]
      318 GETIMPORT                        R20 K88 [Enum.TextYAlignment.Top]
      320 SETTABLEKS                       R20 R19 K74 ["TextYAlignment"]
      322 GETTABLEKS                       R20 R3 K89 ["Typography"]
      324 GETTABLEKS                       R20 R20 K90 ["CaptionMedium"]
      326 GETTABLEKS                       R20 R20 K91 ["FontSize"]
      328 SETTABLEKS                       R20 R19 K75 ["TextSize"]
      330 GETTABLEKS                       R20 R3 K89 ["Typography"]
      332 GETTABLEKS                       R20 R20 K90 ["CaptionMedium"]
      334 GETTABLEKS                       R20 R20 K76 ["LineHeight"]
      336 SETTABLEKS                       R20 R19 K76 ["LineHeight"]
      338 SETTABLEKS                       R7 R19 K49 ["Text"]
      340 GETUPVAL                         R20 17
      341 GETTABLEKS                       R20 R20 K92 ["CODE_FONT"]
      343 SETTABLEKS                       R20 R19 K77 ["FontFace"]
      345 LOADN                            R20 1
      346 SETTABLEKS                       R20 R19 K78 ["BackgroundTransparency"]
      348 LOADN                            R20 0
      349 SETTABLEKS                       R20 R19 K79 ["BorderSizePixel"]
      351 CALL                             R17 2 1
      352 SETTABLEKS                       R17 R16 K65 ["PreviewText"]
      354 CALL                             R13 3 1
      355 SETTABLEKS                       R13 R12 K20 ["Content"]
      357 CALL                             R9 3 -1
      358 RETURN                           R9 -1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["summary"]
        2 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 DUPTABLE                         R1 K6 [{"icon", "subtitle", "noExpand"}]
        9 GETTABLEKS                       R2 R0 K3 ["icon"]
       11 SETTABLEKS                       R2 R1 K3 ["icon"]
       13 GETTABLEKS                       R2 R0 K4 ["subtitle"]
       15 SETTABLEKS                       R2 R1 K4 ["subtitle"]
       17 GETTABLEKS                       R2 R0 K5 ["noExpand"]
       19 SETTABLEKS                       R2 R1 K5 ["noExpand"]
       21 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 2 0
        8 LOADK                            R2 K3 [""]
        9 GETTABLEKS                       R3 R1 K4 ["textContent"]
       11 JUMPIFNOT                        R3 ; [+4]
       12 GETTABLEKS                       R3 R1 K4 ["textContent"]
       14 GETTABLEKS                       R2 R3 K5 ["text"]
       16 DUPTABLE                         R3 K11 [{"type", "icon", "summary", "subtitle", "noExpand"}]
       17 LOADK                            R4 K12 ["Summarized"]
       18 SETTABLEKS                       R4 R3 K6 ["type"]
       20 GETTABLEKS                       R4 R0 K7 ["icon"]
       22 SETTABLEKS                       R4 R3 K7 ["icon"]
       24 SETTABLEKS                       R2 R3 K8 ["summary"]
       26 GETTABLEKS                       R4 R0 K9 ["subtitle"]
       28 SETTABLEKS                       R4 R3 K9 ["subtitle"]
       30 GETTABLEKS                       R4 R0 K10 ["noExpand"]
       32 SETTABLEKS                       R4 R3 K10 ["noExpand"]
       34 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Util"]
       32 GETTABLEKS                       R5 R5 K11 ["Serializer"]
       34 GETTABLEKS                       R5 R5 K12 ["SerializerTypes"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K13 ["Components"]
       41 GETTABLEKS                       R6 R6 K14 ["ShimmerGradient"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K10 ["Util"]
       48 GETTABLEKS                       R7 R7 K15 ["TestIds"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K16 ["Resources"]
       55 GETTABLEKS                       R8 R8 K17 ["Localization"]
       57 GETTABLEKS                       R8 R8 K18 ["Translator"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K19 ["Types"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K20 ["Flags"]
       69 GETTABLEKS                       R10 R10 K21 ["FFlagAssistantMultipleChatPersistence"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K20 ["Flags"]
       76 GETTABLEKS                       R11 R11 K22 ["FFlagAssistantUseBuilderIcons"]
       78 CALL                             R10 1 1
       79 GETTABLEKS                       R11 R1 K23 ["Icon"]
       81 GETTABLEKS                       R12 R1 K24 ["ScrollView"]
       83 GETTABLEKS                       R13 R1 K25 ["Text"]
       85 GETTABLEKS                       R14 R1 K26 ["Enums"]
       87 GETTABLEKS                       R14 R14 K27 ["Visibility"]
       89 GETTABLEKS                       R15 R1 K28 ["View"]
       91 GETTABLEKS                       R16 R1 K29 ["Image"]
       93 GETTABLEKS                       R17 R1 K30 ["Hooks"]
       95 GETTABLEKS                       R17 R17 K31 ["useTokens"]
       97 GETTABLEKS                       R18 R3 K32 ["createNextOrder"]
       99 GETTABLEKS                       R19 R2 K33 ["createElement"]
      101 DUPTABLE                         R20 K40 [{"CanvasSize", "AutomaticSize", "AutomaticCanvasSize", "ScrollingDirection", "scrollBarVisibility", "HorizontalScrollBarInset"}]
      102 GETIMPORT                        R21 K43 [UDim2.fromOffset]
      104 LOADN                            R22 0
      105 LOADN                            R23 0
      106 CALL                             R21 2 1
      107 SETTABLEKS                       R21 R20 K34 ["CanvasSize"]
      109 GETIMPORT                        R21 K46 [Enum.AutomaticSize.Y]
      111 SETTABLEKS                       R21 R20 K35 ["AutomaticSize"]
      113 GETIMPORT                        R21 K48 [Enum.AutomaticSize.X]
      115 SETTABLEKS                       R21 R20 K36 ["AutomaticCanvasSize"]
      117 GETIMPORT                        R21 K49 [Enum.ScrollingDirection.X]
      119 SETTABLEKS                       R21 R20 K37 ["ScrollingDirection"]
      121 GETTABLEKS                       R21 R14 K50 ["Auto"]
      123 SETTABLEKS                       R21 R20 K38 ["scrollBarVisibility"]
      125 GETIMPORT                        R21 K53 [Enum.ScrollBarInset.Always]
      127 SETTABLEKS                       R21 R20 K39 ["HorizontalScrollBarInset"]
      129 DUPTABLE                         R21 K55 [{"Search"}]
      130 LOADK                            R22 K56 ["search"]
      131 SETTABLEKS                       R22 R21 K54 ["Search"]
      133 DUPTABLE                         R22 K57 [{"search"}]
      134 MOVE                             R24 R10
      135 CALL                             R24 0 1
      136 JUMPIFNOT                        R24 ; [+7]
      137 GETTABLEKS                       R23 R1 K26 ["Enums"]
      139 GETTABLEKS                       R23 R23 K58 ["IconName"]
      141 GETTABLEKS                       R23 R23 K59 ["MagnifyingGlass"]
      143 JUMP                             ; [+1]
      144 LOADK                            R23 K60 ["icons/common/search_small"]
      145 SETTABLEKS                       R23 R22 K56 ["search"]
      147 DUPCLOSURE                       R23 K61 [PROTO_3]
      148 CAPTURE                          VAL R18
      149 CAPTURE                          VAL R22
      150 CAPTURE                          VAL R17
      151 CAPTURE                          VAL R2
      152 CAPTURE                          VAL R9
      153 CAPTURE                          VAL R7
      154 CAPTURE                          VAL R19
      155 CAPTURE                          VAL R15
      156 CAPTURE                          VAL R6
      157 CAPTURE                          VAL R11
      158 CAPTURE                          VAL R1
      159 CAPTURE                          VAL R10
      160 CAPTURE                          VAL R16
      161 CAPTURE                          VAL R13
      162 CAPTURE                          VAL R5
      163 CAPTURE                          VAL R12
      164 CAPTURE                          VAL R20
      165 CAPTURE                          VAL R8
      166 DUPTABLE                         R24 K65 [{"getText", "toMeta", "fromMeta"}]
      167 DUPCLOSURE                       R25 K66 [PROTO_4]
      168 SETTABLEKS                       R25 R24 K62 ["getText"]
      170 DUPCLOSURE                       R25 K67 [PROTO_5]
      171 CAPTURE                          VAL R9
      172 SETTABLEKS                       R25 R24 K63 ["toMeta"]
      174 DUPCLOSURE                       R25 K68 [PROTO_6]
      175 CAPTURE                          VAL R9
      176 SETTABLEKS                       R25 R24 K64 ["fromMeta"]
      178 DUPTABLE                         R25 K73 [{"Type", "ContentWidget", "Serialization", "Icons"}]
      179 LOADK                            R26 K74 ["Summarized"]
      180 SETTABLEKS                       R26 R25 K69 ["Type"]
      182 GETTABLEKS                       R26 R2 K75 ["memo"]
      184 MOVE                             R27 R23
      185 CALL                             R26 1 1
      186 SETTABLEKS                       R26 R25 K70 ["ContentWidget"]
      188 SETTABLEKS                       R24 R25 K71 ["Serialization"]
      190 SETTABLEKS                       R21 R25 K72 ["Icons"]
      192 RETURN                           R25 1
