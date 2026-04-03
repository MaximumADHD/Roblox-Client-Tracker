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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["editThisContent"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["contentId"]
        6 DUPCLOSURE                       R2 K2 [PROTO_0]
        7 CAPTURE                          UPVAL U1
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["noExpand"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 LOADNIL                          R0
        5 RETURN                           R0 1
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R0 R1 K1 ["toolResult"]
        9 JUMPIF                           R0 ; [+2]
       10 LOADNIL                          R0
       11 RETURN                           R0 1
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R1 R2 K1 ["toolResult"]
       15 GETTABLEKS                       R0 R1 K2 ["content"]
       17 JUMPIFNOT                        R0 ; [+6]
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R2 R3 K1 ["toolResult"]
       21 GETTABLEKS                       R1 R2 K2 ["content"]
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
       11 JUMPIF                           R3 ; [+80]
       12 GETUPVAL                         R3 3
       13 CALL                             R3 0 1
       14 JUMPIF                           R3 ; [+77]
       15 GETUPVAL                         R3 4
       16 GETUPVAL                         R4 5
       17 DUPTABLE                         R5 K3 [{"tag", "LayoutOrder"}]
       18 LOADK                            R6 K4 ["col size-full-0 auto-xy gap-small"]
       19 SETTABLEKS                       R6 R5 K1 ["tag"]
       21 GETTABLEKS                       R6 R0 K2 ["LayoutOrder"]
       23 SETTABLEKS                       R6 R5 K2 ["LayoutOrder"]
       25 DUPTABLE                         R6 K6 [{"Title"}]
       26 GETUPVAL                         R7 4
       27 GETUPVAL                         R8 5
       28 DUPTABLE                         R9 K3 [{"tag", "LayoutOrder"}]
       29 LOADK                            R10 K7 ["row gap-xsmall size-full-600 radius-medium align-y-center"]
       30 SETTABLEKS                       R10 R9 K1 ["tag"]
       32 MOVE                             R10 R1
       33 CALL                             R10 0 1
       34 SETTABLEKS                       R10 R9 K2 ["LayoutOrder"]
       36 DUPTABLE                         R10 K10 [{"Icon", "Text"}]
       37 MOVE                             R11 R2
       38 JUMPIFNOT                        R11 ; [+20]
       39 GETUPVAL                         R11 4
       40 GETUPVAL                         R12 6
       41 DUPTABLE                         R13 K13 [{"Image", "tag", "LayoutOrder", "testId"}]
       42 SETTABLEKS                       R2 R13 K11 ["Image"]
       44 LOADK                            R14 K14 ["size-300-300 anchor-center-center position-center-center content-emphasis"]
       45 SETTABLEKS                       R14 R13 K1 ["tag"]
       47 MOVE                             R14 R1
       48 CALL                             R14 0 1
       49 SETTABLEKS                       R14 R13 K2 ["LayoutOrder"]
       51 GETUPVAL                         R16 7
       52 GETTABLEKS                       R15 R16 K15 ["Summarized"]
       54 GETTABLEKS                       R14 R15 K8 ["Icon"]
       56 SETTABLEKS                       R14 R13 K12 ["testId"]
       58 CALL                             R11 2 1
       59 SETTABLEKS                       R11 R10 K8 ["Icon"]
       61 GETUPVAL                         R11 4
       62 GETUPVAL                         R12 8
       63 DUPTABLE                         R13 K16 [{"tag", "Text", "LayoutOrder"}]
       64 LOADK                            R14 K17 ["size-0-full auto-x text-label-small text-truncate-end content-emphasis"]
       65 SETTABLEKS                       R14 R13 K1 ["tag"]
       67 GETTABLEKS                       R14 R0 K18 ["summary"]
       69 SETTABLEKS                       R14 R13 K9 ["Text"]
       71 MOVE                             R14 R1
       72 CALL                             R14 0 1
       73 SETTABLEKS                       R14 R13 K2 ["LayoutOrder"]
       75 DUPTABLE                         R14 K20 [{"Shimmer"}]
       76 GETTABLEKS                       R15 R0 K21 ["generating"]
       78 JUMPIFNOT                        R15 ; [+3]
       79 GETUPVAL                         R15 4
       80 GETUPVAL                         R16 9
       81 CALL                             R15 1 1
       82 SETTABLEKS                       R15 R14 K19 ["Shimmer"]
       84 CALL                             R11 3 1
       85 SETTABLEKS                       R11 R10 K9 ["Text"]
       87 CALL                             R7 3 1
       88 SETTABLEKS                       R7 R6 K5 ["Title"]
       90 CALL                             R3 3 -1
       91 RETURN                           R3 -1
       92 GETUPVAL                         R3 10
       93 CALL                             R3 0 1
       94 GETTABLEKS                       R5 R0 K22 ["expanded"]
       96 JUMPIFEQKB                       R5 TRUE ; [+2]
       98 LOADB                            R4 0 +1
       99 LOADB                            R4 1
      100 GETTABLEKS                       R5 R0 K18 ["summary"]
      102 GETTABLEKS                       R6 R0 K23 ["subtitle"]
      104 JUMPIFNOT                        R6 ; [+30]
      105 GETTABLEKS                       R6 R0 K23 ["subtitle"]
      107 JUMPIFEQKS                       R6 K24 [""] ; [+27]
      109 GETTABLEKS                       R9 R0 K18 ["summary"]
      111 LOADN                            R11 1
      112 LOADN                            R12 1
      113 NAMECALL                         R9 R9 K25 ["sub"]
      115 CALL                             R9 3 1
      116 NAMECALL                         R9 R9 K26 ["lower"]
      118 CALL                             R9 1 1
      119 MOVE                             R7 R9
      120 GETTABLEKS                       R8 R0 K18 ["summary"]
      122 LOADN                            R10 2
      123 NAMECALL                         R8 R8 K25 ["sub"]
      125 CALL                             R8 2 1
      126 CONCAT                           R6 R7 R8
      127 LOADK                            R7 K27 ["%* | %*"]
      128 GETTABLEKS                       R9 R0 K23 ["subtitle"]
      130 MOVE                             R10 R6
      131 NAMECALL                         R7 R7 K28 ["format"]
      133 CALL                             R7 3 1
      134 MOVE                             R5 R7
      135 GETUPVAL                         R7 11
      136 GETTABLEKS                       R6 R7 K29 ["useCallback"]
      138 NEWCLOSURE                       R7 P0
      139 CAPTURE                          VAL R0
      140 CAPTURE                          UPVAL U12
      141 NEWTABLE                         R8 0 2
      143 GETTABLEKS                       R9 R0 K30 ["contentId"]
      145 GETTABLEKS                       R10 R0 K31 ["editThisContent"]
      147 SETLIST                          R8 R9 2 [1]
      149 CALL                             R6 2 1
      150 GETUPVAL                         R8 11
      151 GETTABLEKS                       R7 R8 K32 ["useMemo"]
      153 NEWCLOSURE                       R8 P1
      154 CAPTURE                          VAL R0
      155 CAPTURE                          UPVAL U13
      156 NEWTABLE                         R9 0 2
      158 GETTABLEKS                       R10 R0 K33 ["toolResult"]
      160 GETTABLEKS                       R11 R0 K34 ["noExpand"]
      162 SETLIST                          R9 R10 2 [1]
      164 CALL                             R7 2 1
      165 JUMPIFNOTEQKNIL                  R7 ; [+2]
      167 LOADB                            R8 0 +1
      168 LOADB                            R8 1
      169 GETUPVAL                         R9 4
      170 GETUPVAL                         R10 5
      171 DUPTABLE                         R11 K3 [{"tag", "LayoutOrder"}]
      172 LOADK                            R12 K35 ["col size-full-0 auto-xy gap-xsmall"]
      173 SETTABLEKS                       R12 R11 K1 ["tag"]
      175 GETTABLEKS                       R12 R0 K2 ["LayoutOrder"]
      177 SETTABLEKS                       R12 R11 K2 ["LayoutOrder"]
      179 DUPTABLE                         R12 K38 [{"Header", "Content"}]
      180 GETUPVAL                         R13 4
      181 GETUPVAL                         R14 5
      182 DUPTABLE                         R15 K40 [{"tag", "onActivated", "LayoutOrder", "testId"}]
      183 LOADK                            R16 K41 ["row gap-xsmall size-full-600 radius-medium align-y-center padding-x-small"]
      184 SETTABLEKS                       R16 R15 K1 ["tag"]
      186 JUMPIFNOT                        R8 ; [+2]
      187 MOVE                             R16 R6
      188 JUMP                             ; [+1]
      189 LOADNIL                          R16
      190 SETTABLEKS                       R16 R15 K39 ["onActivated"]
      192 MOVE                             R16 R1
      193 CALL                             R16 0 1
      194 SETTABLEKS                       R16 R15 K2 ["LayoutOrder"]
      196 JUMPIFNOT                        R8 ; [+6]
      197 GETUPVAL                         R18 7
      198 GETTABLEKS                       R17 R18 K15 ["Summarized"]
      200 GETTABLEKS                       R16 R17 K42 ["Expand"]
      202 JUMP                             ; [+1]
      203 LOADNIL                          R16
      204 SETTABLEKS                       R16 R15 K12 ["testId"]
      206 DUPTABLE                         R16 K45 [{"ExpandIcon", "Icon", "SummaryText"}]
      207 MOVE                             R17 R8
      208 JUMPIFNOT                        R17 ; [+19]
      209 GETUPVAL                         R17 4
      210 GETUPVAL                         R18 14
      211 DUPTABLE                         R19 K47 [{"icon", "tag", "iconTag", "LayoutOrder"}]
      212 JUMPIFNOT                        R4 ; [+2]
      213 LOADK                            R20 K48 ["icons/actions/truncationExpand_small"]
      214 JUMP                             ; [+1]
      215 LOADK                            R20 K49 ["icons/actions/cycleRight_small"]
      216 SETTABLEKS                       R20 R19 K0 ["icon"]
      218 LOADK                            R20 K50 ["size-300-300 align-x-center align-y-center"]
      219 SETTABLEKS                       R20 R19 K1 ["tag"]
      221 LOADK                            R20 K51 ["size-150-150 content-emphasis"]
      222 SETTABLEKS                       R20 R19 K46 ["iconTag"]
      224 LOADN                            R20 255
      225 SETTABLEKS                       R20 R19 K2 ["LayoutOrder"]
      227 CALL                             R17 2 1
      228 SETTABLEKS                       R17 R16 K43 ["ExpandIcon"]
      230 MOVE                             R17 R2
      231 JUMPIFNOT                        R17 ; [+20]
      232 GETUPVAL                         R17 4
      233 GETUPVAL                         R18 6
      234 DUPTABLE                         R19 K13 [{"Image", "tag", "LayoutOrder", "testId"}]
      235 SETTABLEKS                       R2 R19 K11 ["Image"]
      237 LOADK                            R20 K52 ["size-300-300 anchor-center-center position-center-center content-muted"]
      238 SETTABLEKS                       R20 R19 K1 ["tag"]
      240 MOVE                             R20 R1
      241 CALL                             R20 0 1
      242 SETTABLEKS                       R20 R19 K2 ["LayoutOrder"]
      244 GETUPVAL                         R22 7
      245 GETTABLEKS                       R21 R22 K15 ["Summarized"]
      247 GETTABLEKS                       R20 R21 K8 ["Icon"]
      249 SETTABLEKS                       R20 R19 K12 ["testId"]
      251 CALL                             R17 2 1
      252 SETTABLEKS                       R17 R16 K8 ["Icon"]
      254 GETUPVAL                         R17 4
      255 GETUPVAL                         R18 8
      256 DUPTABLE                         R19 K16 [{"tag", "Text", "LayoutOrder"}]
      257 LOADK                            R20 K53 ["size-0-full text-label-small text-truncate-end content-default text-align-x-left"]
      258 SETTABLEKS                       R20 R19 K1 ["tag"]
      260 SETTABLEKS                       R5 R19 K9 ["Text"]
      262 MOVE                             R20 R1
      263 CALL                             R20 0 1
      264 SETTABLEKS                       R20 R19 K2 ["LayoutOrder"]
      266 DUPTABLE                         R20 K55 [{"UIFlexItem", "Shimmer"}]
      267 GETUPVAL                         R21 4
      268 LOADK                            R22 K54 ["UIFlexItem"]
      269 DUPTABLE                         R23 K57 [{"FlexMode"}]
      270 GETIMPORT                        R24 K61 [Enum.UIFlexMode.Fill]
      272 SETTABLEKS                       R24 R23 K56 ["FlexMode"]
      274 CALL                             R21 2 1
      275 SETTABLEKS                       R21 R20 K54 ["UIFlexItem"]
      277 GETTABLEKS                       R21 R0 K21 ["generating"]
      279 JUMPIFNOT                        R21 ; [+3]
      280 GETUPVAL                         R21 4
      281 GETUPVAL                         R22 9
      282 CALL                             R21 1 1
      283 SETTABLEKS                       R21 R20 K19 ["Shimmer"]
      285 CALL                             R17 3 1
      286 SETTABLEKS                       R17 R16 K44 ["SummaryText"]
      288 CALL                             R13 3 1
      289 SETTABLEKS                       R13 R12 K36 ["Header"]
      291 MOVE                             R13 R4
      292 JUMPIFNOT                        R13 ; [+90]
      293 MOVE                             R13 R7
      294 JUMPIFNOT                        R13 ; [+88]
      295 GETUPVAL                         R13 4
      296 GETUPVAL                         R14 15
      297 DUPTABLE                         R15 K63 [{"tag", "scroll", "LayoutOrder"}]
      298 LOADK                            R16 K64 ["size-full-0 auto-y bg-shift-300 padding-small radius-small stroke-default"]
      299 SETTABLEKS                       R16 R15 K1 ["tag"]
      301 GETUPVAL                         R16 16
      302 SETTABLEKS                       R16 R15 K62 ["scroll"]
      304 MOVE                             R16 R1
      305 CALL                             R16 0 1
      306 SETTABLEKS                       R16 R15 K2 ["LayoutOrder"]
      308 DUPTABLE                         R16 K66 [{"PreviewText"}]
      309 GETUPVAL                         R17 4
      310 LOADK                            R18 K67 ["TextBox"]
      311 DUPTABLE                         R19 K80 [{"TextEditable", "ClearTextOnFocus", "AutomaticSize", "TextColor3", "TextTransparency", "TextXAlignment", "TextYAlignment", "TextSize", "LineHeight", "Text", "FontFace", "BackgroundTransparency", "BorderSizePixel"}]
      312 LOADB                            R20 0
      313 SETTABLEKS                       R20 R19 K68 ["TextEditable"]
      315 LOADB                            R20 0
      316 SETTABLEKS                       R20 R19 K69 ["ClearTextOnFocus"]
      318 GETIMPORT                        R20 K82 [Enum.AutomaticSize.XY]
      320 SETTABLEKS                       R20 R19 K70 ["AutomaticSize"]
      322 GETTABLEKS                       R23 R3 K83 ["Color"]
      324 GETTABLEKS                       R22 R23 K37 ["Content"]
      326 GETTABLEKS                       R21 R22 K84 ["Muted"]
      328 GETTABLEKS                       R20 R21 K85 ["Color3"]
      330 SETTABLEKS                       R20 R19 K71 ["TextColor3"]
      332 GETTABLEKS                       R23 R3 K83 ["Color"]
      334 GETTABLEKS                       R22 R23 K37 ["Content"]
      336 GETTABLEKS                       R21 R22 K84 ["Muted"]
      338 GETTABLEKS                       R20 R21 K86 ["Transparency"]
      340 SETTABLEKS                       R20 R19 K72 ["TextTransparency"]
      342 GETIMPORT                        R20 K88 [Enum.TextXAlignment.Left]
      344 SETTABLEKS                       R20 R19 K73 ["TextXAlignment"]
      346 GETIMPORT                        R20 K90 [Enum.TextYAlignment.Top]
      348 SETTABLEKS                       R20 R19 K74 ["TextYAlignment"]
      350 GETTABLEKS                       R22 R3 K91 ["Typography"]
      352 GETTABLEKS                       R21 R22 K92 ["CaptionMedium"]
      354 GETTABLEKS                       R20 R21 K93 ["FontSize"]
      356 SETTABLEKS                       R20 R19 K75 ["TextSize"]
      358 GETTABLEKS                       R22 R3 K91 ["Typography"]
      360 GETTABLEKS                       R21 R22 K92 ["CaptionMedium"]
      362 GETTABLEKS                       R20 R21 K76 ["LineHeight"]
      364 SETTABLEKS                       R20 R19 K76 ["LineHeight"]
      366 SETTABLEKS                       R7 R19 K9 ["Text"]
      368 GETUPVAL                         R21 17
      369 GETTABLEKS                       R20 R21 K94 ["CODE_FONT"]
      371 SETTABLEKS                       R20 R19 K77 ["FontFace"]
      373 LOADN                            R20 1
      374 SETTABLEKS                       R20 R19 K78 ["BackgroundTransparency"]
      376 LOADN                            R20 0
      377 SETTABLEKS                       R20 R19 K79 ["BorderSizePixel"]
      379 CALL                             R17 2 1
      380 SETTABLEKS                       R17 R16 K65 ["PreviewText"]
      382 CALL                             R13 3 1
      383 SETTABLEKS                       R13 R12 K37 ["Content"]
      385 CALL                             R9 3 -1
      386 RETURN                           R9 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantPersistConversations is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 DUPTABLE                         R1 K8 [{"type", "icon", "summary", "subtitle", "noExpand"}]
        9 GETTABLEKS                       R2 R0 K3 ["type"]
       11 SETTABLEKS                       R2 R1 K3 ["type"]
       13 GETTABLEKS                       R2 R0 K4 ["icon"]
       15 SETTABLEKS                       R2 R1 K4 ["icon"]
       17 GETTABLEKS                       R2 R0 K5 ["summary"]
       19 SETTABLEKS                       R2 R1 K5 ["summary"]
       21 GETTABLEKS                       R2 R0 K6 ["subtitle"]
       23 SETTABLEKS                       R2 R1 K6 ["subtitle"]
       25 GETTABLEKS                       R2 R0 K7 ["noExpand"]
       27 SETTABLEKS                       R2 R1 K7 ["noExpand"]
       29 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantPersistConversations is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 DUPTABLE                         R1 K8 [{"type", "icon", "summary", "subtitle", "noExpand"}]
        9 GETTABLEKS                       R2 R0 K3 ["type"]
       11 SETTABLEKS                       R2 R1 K3 ["type"]
       13 GETTABLEKS                       R2 R0 K4 ["icon"]
       15 SETTABLEKS                       R2 R1 K4 ["icon"]
       17 GETTABLEKS                       R2 R0 K5 ["summary"]
       19 SETTABLEKS                       R2 R1 K5 ["summary"]
       21 GETTABLEKS                       R2 R0 K6 ["subtitle"]
       23 SETTABLEKS                       R2 R1 K6 ["subtitle"]
       25 GETTABLEKS                       R2 R0 K7 ["noExpand"]
       27 SETTABLEKS                       R2 R1 K7 ["noExpand"]
       29 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R3 K7 ["CustomIconButton"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R5 K10 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R6 K11 ["ReactUtils"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K6 ["Components"]
       39 GETTABLEKS                       R6 R7 K12 ["ShimmerGradient"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R8 R0 K13 ["Util"]
       46 GETTABLEKS                       R7 R8 K14 ["TestIds"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R10 R0 K15 ["Resources"]
       53 GETTABLEKS                       R9 R10 K16 ["Localization"]
       55 GETTABLEKS                       R8 R9 K17 ["Translator"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K18 ["Types"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K19 ["Flags"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R12 R0 K19 ["Flags"]
       72 GETTABLEKS                       R11 R12 K20 ["FFlagAssistantPersistConversations"]
       74 CALL                             R10 1 1
       75 GETTABLEKS                       R12 R9 K21 ["Shared"]
       77 GETTABLEKS                       R11 R12 K22 ["FFlagEnableSkills"]
       79 GETTABLEKS                       R13 R9 K21 ["Shared"]
       81 GETTABLEKS                       R12 R13 K23 ["FFlagEnableSubagents"]
       83 GETTABLEKS                       R13 R2 K24 ["ScrollView"]
       85 GETTABLEKS                       R14 R2 K25 ["Text"]
       87 GETTABLEKS                       R16 R2 K26 ["Enums"]
       89 GETTABLEKS                       R15 R16 K27 ["Visibility"]
       91 GETTABLEKS                       R16 R2 K28 ["View"]
       93 GETTABLEKS                       R17 R2 K29 ["Image"]
       95 GETTABLEKS                       R19 R2 K30 ["Hooks"]
       97 GETTABLEKS                       R18 R19 K31 ["useTokens"]
       99 GETTABLEKS                       R19 R4 K32 ["createNextOrder"]
      101 GETTABLEKS                       R20 R3 K33 ["createElement"]
      103 DUPTABLE                         R21 K40 [{"CanvasSize", "AutomaticSize", "AutomaticCanvasSize", "ScrollingDirection", "scrollBarVisibility", "HorizontalScrollBarInset"}]
      104 GETIMPORT                        R22 K43 [UDim2.fromOffset]
      106 LOADN                            R23 0
      107 LOADN                            R24 0
      108 CALL                             R22 2 1
      109 SETTABLEKS                       R22 R21 K34 ["CanvasSize"]
      111 GETIMPORT                        R22 K46 [Enum.AutomaticSize.Y]
      113 SETTABLEKS                       R22 R21 K35 ["AutomaticSize"]
      115 GETIMPORT                        R22 K48 [Enum.AutomaticSize.X]
      117 SETTABLEKS                       R22 R21 K36 ["AutomaticCanvasSize"]
      119 GETIMPORT                        R22 K49 [Enum.ScrollingDirection.X]
      121 SETTABLEKS                       R22 R21 K37 ["ScrollingDirection"]
      123 GETTABLEKS                       R22 R15 K50 ["Auto"]
      125 SETTABLEKS                       R22 R21 K38 ["scrollBarVisibility"]
      127 GETIMPORT                        R22 K53 [Enum.ScrollBarInset.Always]
      129 SETTABLEKS                       R22 R21 K39 ["HorizontalScrollBarInset"]
      131 DUPTABLE                         R22 K55 [{"Search"}]
      132 LOADK                            R23 K56 ["search"]
      133 SETTABLEKS                       R23 R22 K54 ["Search"]
      135 DUPTABLE                         R23 K57 [{"search"}]
      136 LOADK                            R24 K58 ["icons/common/search_small"]
      137 SETTABLEKS                       R24 R23 K56 ["search"]
      139 DUPCLOSURE                       R24 K59 [PROTO_3]
      140 CAPTURE                          VAL R19
      141 CAPTURE                          VAL R23
      142 CAPTURE                          VAL R12
      143 CAPTURE                          VAL R11
      144 CAPTURE                          VAL R20
      145 CAPTURE                          VAL R16
      146 CAPTURE                          VAL R17
      147 CAPTURE                          VAL R6
      148 CAPTURE                          VAL R14
      149 CAPTURE                          VAL R5
      150 CAPTURE                          VAL R18
      151 CAPTURE                          VAL R3
      152 CAPTURE                          VAL R10
      153 CAPTURE                          VAL R7
      154 CAPTURE                          VAL R1
      155 CAPTURE                          VAL R13
      156 CAPTURE                          VAL R21
      157 CAPTURE                          VAL R8
      158 DUPCLOSURE                       R25 K60 [PROTO_4]
      159 CAPTURE                          VAL R10
      160 DUPCLOSURE                       R26 K61 [PROTO_5]
      161 CAPTURE                          VAL R10
      162 DUPTABLE                         R27 K66 [{"Type", "ContentWidget", "Serialization", "Icons"}]
      163 LOADK                            R28 K67 ["Summarized"]
      164 SETTABLEKS                       R28 R27 K62 ["Type"]
      166 GETTABLEKS                       R28 R3 K68 ["memo"]
      168 MOVE                             R29 R24
      169 CALL                             R28 1 1
      170 SETTABLEKS                       R28 R27 K63 ["ContentWidget"]
      172 DUPTABLE                         R28 K71 [{"serialize", "deserialize"}]
      173 SETTABLEKS                       R25 R28 K69 ["serialize"]
      175 SETTABLEKS                       R26 R28 K70 ["deserialize"]
      177 SETTABLEKS                       R28 R27 K64 ["Serialization"]
      179 SETTABLEKS                       R22 R27 K65 ["Icons"]
      181 RETURN                           R27 1
