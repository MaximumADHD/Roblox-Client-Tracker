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
       11 JUMPIF                           R3 ; [+77]
       12 GETUPVAL                         R3 3
       13 GETUPVAL                         R4 4
       14 DUPTABLE                         R5 K3 [{"tag", "LayoutOrder"}]
       15 LOADK                            R6 K4 ["col size-full-0 auto-xy gap-small"]
       16 SETTABLEKS                       R6 R5 K1 ["tag"]
       18 GETTABLEKS                       R6 R0 K2 ["LayoutOrder"]
       20 SETTABLEKS                       R6 R5 K2 ["LayoutOrder"]
       22 DUPTABLE                         R6 K6 [{"Title"}]
       23 GETUPVAL                         R7 3
       24 GETUPVAL                         R8 4
       25 DUPTABLE                         R9 K3 [{"tag", "LayoutOrder"}]
       26 LOADK                            R10 K7 ["row gap-xsmall size-full-600 radius-medium align-y-center"]
       27 SETTABLEKS                       R10 R9 K1 ["tag"]
       29 MOVE                             R10 R1
       30 CALL                             R10 0 1
       31 SETTABLEKS                       R10 R9 K2 ["LayoutOrder"]
       33 DUPTABLE                         R10 K10 [{"Icon", "Text"}]
       34 MOVE                             R11 R2
       35 JUMPIFNOT                        R11 ; [+20]
       36 GETUPVAL                         R11 3
       37 GETUPVAL                         R12 5
       38 DUPTABLE                         R13 K13 [{"Image", "tag", "LayoutOrder", "testId"}]
       39 SETTABLEKS                       R2 R13 K11 ["Image"]
       41 LOADK                            R14 K14 ["size-300-300 anchor-center-center position-center-center content-emphasis"]
       42 SETTABLEKS                       R14 R13 K1 ["tag"]
       44 MOVE                             R14 R1
       45 CALL                             R14 0 1
       46 SETTABLEKS                       R14 R13 K2 ["LayoutOrder"]
       48 GETUPVAL                         R16 6
       49 GETTABLEKS                       R15 R16 K15 ["Summarized"]
       51 GETTABLEKS                       R14 R15 K8 ["Icon"]
       53 SETTABLEKS                       R14 R13 K12 ["testId"]
       55 CALL                             R11 2 1
       56 SETTABLEKS                       R11 R10 K8 ["Icon"]
       58 GETUPVAL                         R11 3
       59 GETUPVAL                         R12 7
       60 DUPTABLE                         R13 K16 [{"tag", "Text", "LayoutOrder"}]
       61 LOADK                            R14 K17 ["size-0-full auto-x text-label-small text-truncate-end content-emphasis"]
       62 SETTABLEKS                       R14 R13 K1 ["tag"]
       64 GETTABLEKS                       R14 R0 K18 ["summary"]
       66 SETTABLEKS                       R14 R13 K9 ["Text"]
       68 MOVE                             R14 R1
       69 CALL                             R14 0 1
       70 SETTABLEKS                       R14 R13 K2 ["LayoutOrder"]
       72 DUPTABLE                         R14 K20 [{"Shimmer"}]
       73 GETTABLEKS                       R15 R0 K21 ["generating"]
       75 JUMPIFNOT                        R15 ; [+3]
       76 GETUPVAL                         R15 3
       77 GETUPVAL                         R16 8
       78 CALL                             R15 1 1
       79 SETTABLEKS                       R15 R14 K19 ["Shimmer"]
       81 CALL                             R11 3 1
       82 SETTABLEKS                       R11 R10 K9 ["Text"]
       84 CALL                             R7 3 1
       85 SETTABLEKS                       R7 R6 K5 ["Title"]
       87 CALL                             R3 3 -1
       88 RETURN                           R3 -1
       89 GETUPVAL                         R3 9
       90 CALL                             R3 0 1
       91 GETTABLEKS                       R5 R0 K22 ["expanded"]
       93 JUMPIFEQKB                       R5 TRUE ; [+2]
       95 LOADB                            R4 0 +1
       96 LOADB                            R4 1
       97 GETTABLEKS                       R5 R0 K18 ["summary"]
       99 GETTABLEKS                       R6 R0 K23 ["subtitle"]
      101 JUMPIFNOT                        R6 ; [+30]
      102 GETTABLEKS                       R6 R0 K23 ["subtitle"]
      104 JUMPIFEQKS                       R6 K24 [""] ; [+27]
      106 GETTABLEKS                       R9 R0 K18 ["summary"]
      108 LOADN                            R11 1
      109 LOADN                            R12 1
      110 NAMECALL                         R9 R9 K25 ["sub"]
      112 CALL                             R9 3 1
      113 NAMECALL                         R9 R9 K26 ["lower"]
      115 CALL                             R9 1 1
      116 MOVE                             R7 R9
      117 GETTABLEKS                       R8 R0 K18 ["summary"]
      119 LOADN                            R10 2
      120 NAMECALL                         R8 R8 K25 ["sub"]
      122 CALL                             R8 2 1
      123 CONCAT                           R6 R7 R8
      124 LOADK                            R7 K27 ["%* | %*"]
      125 GETTABLEKS                       R9 R0 K23 ["subtitle"]
      127 MOVE                             R10 R6
      128 NAMECALL                         R7 R7 K28 ["format"]
      130 CALL                             R7 3 1
      131 MOVE                             R5 R7
      132 GETUPVAL                         R7 10
      133 GETTABLEKS                       R6 R7 K29 ["useCallback"]
      135 NEWCLOSURE                       R7 P0
      136 CAPTURE                          VAL R0
      137 CAPTURE                          UPVAL U11
      138 NEWTABLE                         R8 0 2
      140 GETTABLEKS                       R9 R0 K30 ["contentId"]
      142 GETTABLEKS                       R10 R0 K31 ["editThisContent"]
      144 SETLIST                          R8 R9 2 [1]
      146 CALL                             R6 2 1
      147 GETUPVAL                         R8 10
      148 GETTABLEKS                       R7 R8 K32 ["useMemo"]
      150 NEWCLOSURE                       R8 P1
      151 CAPTURE                          VAL R0
      152 CAPTURE                          UPVAL U12
      153 NEWTABLE                         R9 0 2
      155 GETTABLEKS                       R10 R0 K33 ["toolResult"]
      157 GETTABLEKS                       R11 R0 K34 ["noExpand"]
      159 SETLIST                          R9 R10 2 [1]
      161 CALL                             R7 2 1
      162 JUMPIFNOTEQKNIL                  R7 ; [+2]
      164 LOADB                            R8 0 +1
      165 LOADB                            R8 1
      166 GETUPVAL                         R9 3
      167 GETUPVAL                         R10 4
      168 DUPTABLE                         R11 K3 [{"tag", "LayoutOrder"}]
      169 LOADK                            R12 K35 ["col size-full-0 auto-xy gap-xsmall"]
      170 SETTABLEKS                       R12 R11 K1 ["tag"]
      172 GETTABLEKS                       R12 R0 K2 ["LayoutOrder"]
      174 SETTABLEKS                       R12 R11 K2 ["LayoutOrder"]
      176 DUPTABLE                         R12 K38 [{"Header", "Content"}]
      177 GETUPVAL                         R13 3
      178 GETUPVAL                         R14 4
      179 DUPTABLE                         R15 K40 [{"tag", "onActivated", "LayoutOrder", "testId"}]
      180 LOADK                            R16 K41 ["row gap-xsmall size-full-600 radius-medium align-y-center padding-x-small"]
      181 SETTABLEKS                       R16 R15 K1 ["tag"]
      183 JUMPIFNOT                        R8 ; [+2]
      184 MOVE                             R16 R6
      185 JUMP                             ; [+1]
      186 LOADNIL                          R16
      187 SETTABLEKS                       R16 R15 K39 ["onActivated"]
      189 MOVE                             R16 R1
      190 CALL                             R16 0 1
      191 SETTABLEKS                       R16 R15 K2 ["LayoutOrder"]
      193 JUMPIFNOT                        R8 ; [+6]
      194 GETUPVAL                         R18 6
      195 GETTABLEKS                       R17 R18 K15 ["Summarized"]
      197 GETTABLEKS                       R16 R17 K42 ["Expand"]
      199 JUMP                             ; [+1]
      200 LOADNIL                          R16
      201 SETTABLEKS                       R16 R15 K12 ["testId"]
      203 DUPTABLE                         R16 K45 [{"ExpandIcon", "Icon", "SummaryText"}]
      204 MOVE                             R17 R8
      205 JUMPIFNOT                        R17 ; [+19]
      206 GETUPVAL                         R17 3
      207 GETUPVAL                         R18 13
      208 DUPTABLE                         R19 K47 [{"icon", "tag", "iconTag", "LayoutOrder"}]
      209 JUMPIFNOT                        R4 ; [+2]
      210 LOADK                            R20 K48 ["icons/actions/truncationExpand_small"]
      211 JUMP                             ; [+1]
      212 LOADK                            R20 K49 ["icons/actions/cycleRight_small"]
      213 SETTABLEKS                       R20 R19 K0 ["icon"]
      215 LOADK                            R20 K50 ["size-300-300 align-x-center align-y-center"]
      216 SETTABLEKS                       R20 R19 K1 ["tag"]
      218 LOADK                            R20 K51 ["size-150-150 content-emphasis"]
      219 SETTABLEKS                       R20 R19 K46 ["iconTag"]
      221 LOADN                            R20 255
      222 SETTABLEKS                       R20 R19 K2 ["LayoutOrder"]
      224 CALL                             R17 2 1
      225 SETTABLEKS                       R17 R16 K43 ["ExpandIcon"]
      227 MOVE                             R17 R2
      228 JUMPIFNOT                        R17 ; [+20]
      229 GETUPVAL                         R17 3
      230 GETUPVAL                         R18 5
      231 DUPTABLE                         R19 K13 [{"Image", "tag", "LayoutOrder", "testId"}]
      232 SETTABLEKS                       R2 R19 K11 ["Image"]
      234 LOADK                            R20 K52 ["size-300-300 anchor-center-center position-center-center content-muted"]
      235 SETTABLEKS                       R20 R19 K1 ["tag"]
      237 MOVE                             R20 R1
      238 CALL                             R20 0 1
      239 SETTABLEKS                       R20 R19 K2 ["LayoutOrder"]
      241 GETUPVAL                         R22 6
      242 GETTABLEKS                       R21 R22 K15 ["Summarized"]
      244 GETTABLEKS                       R20 R21 K8 ["Icon"]
      246 SETTABLEKS                       R20 R19 K12 ["testId"]
      248 CALL                             R17 2 1
      249 SETTABLEKS                       R17 R16 K8 ["Icon"]
      251 GETUPVAL                         R17 3
      252 GETUPVAL                         R18 7
      253 DUPTABLE                         R19 K16 [{"tag", "Text", "LayoutOrder"}]
      254 LOADK                            R20 K53 ["size-0-full text-label-small text-truncate-end content-default text-align-x-left"]
      255 SETTABLEKS                       R20 R19 K1 ["tag"]
      257 SETTABLEKS                       R5 R19 K9 ["Text"]
      259 MOVE                             R20 R1
      260 CALL                             R20 0 1
      261 SETTABLEKS                       R20 R19 K2 ["LayoutOrder"]
      263 DUPTABLE                         R20 K55 [{"UIFlexItem", "Shimmer"}]
      264 GETUPVAL                         R21 3
      265 LOADK                            R22 K54 ["UIFlexItem"]
      266 DUPTABLE                         R23 K57 [{"FlexMode"}]
      267 GETIMPORT                        R24 K61 [Enum.UIFlexMode.Fill]
      269 SETTABLEKS                       R24 R23 K56 ["FlexMode"]
      271 CALL                             R21 2 1
      272 SETTABLEKS                       R21 R20 K54 ["UIFlexItem"]
      274 GETTABLEKS                       R21 R0 K21 ["generating"]
      276 JUMPIFNOT                        R21 ; [+3]
      277 GETUPVAL                         R21 3
      278 GETUPVAL                         R22 8
      279 CALL                             R21 1 1
      280 SETTABLEKS                       R21 R20 K19 ["Shimmer"]
      282 CALL                             R17 3 1
      283 SETTABLEKS                       R17 R16 K44 ["SummaryText"]
      285 CALL                             R13 3 1
      286 SETTABLEKS                       R13 R12 K36 ["Header"]
      288 MOVE                             R13 R4
      289 JUMPIFNOT                        R13 ; [+90]
      290 MOVE                             R13 R7
      291 JUMPIFNOT                        R13 ; [+88]
      292 GETUPVAL                         R13 3
      293 GETUPVAL                         R14 14
      294 DUPTABLE                         R15 K63 [{"tag", "scroll", "LayoutOrder"}]
      295 LOADK                            R16 K64 ["size-full-0 auto-y bg-shift-300 padding-small radius-small stroke-default"]
      296 SETTABLEKS                       R16 R15 K1 ["tag"]
      298 GETUPVAL                         R16 15
      299 SETTABLEKS                       R16 R15 K62 ["scroll"]
      301 MOVE                             R16 R1
      302 CALL                             R16 0 1
      303 SETTABLEKS                       R16 R15 K2 ["LayoutOrder"]
      305 DUPTABLE                         R16 K66 [{"PreviewText"}]
      306 GETUPVAL                         R17 3
      307 LOADK                            R18 K67 ["TextBox"]
      308 DUPTABLE                         R19 K80 [{"TextEditable", "ClearTextOnFocus", "AutomaticSize", "TextColor3", "TextTransparency", "TextXAlignment", "TextYAlignment", "TextSize", "LineHeight", "Text", "FontFace", "BackgroundTransparency", "BorderSizePixel"}]
      309 LOADB                            R20 0
      310 SETTABLEKS                       R20 R19 K68 ["TextEditable"]
      312 LOADB                            R20 0
      313 SETTABLEKS                       R20 R19 K69 ["ClearTextOnFocus"]
      315 GETIMPORT                        R20 K82 [Enum.AutomaticSize.XY]
      317 SETTABLEKS                       R20 R19 K70 ["AutomaticSize"]
      319 GETTABLEKS                       R23 R3 K83 ["Color"]
      321 GETTABLEKS                       R22 R23 K37 ["Content"]
      323 GETTABLEKS                       R21 R22 K84 ["Muted"]
      325 GETTABLEKS                       R20 R21 K85 ["Color3"]
      327 SETTABLEKS                       R20 R19 K71 ["TextColor3"]
      329 GETTABLEKS                       R23 R3 K83 ["Color"]
      331 GETTABLEKS                       R22 R23 K37 ["Content"]
      333 GETTABLEKS                       R21 R22 K84 ["Muted"]
      335 GETTABLEKS                       R20 R21 K86 ["Transparency"]
      337 SETTABLEKS                       R20 R19 K72 ["TextTransparency"]
      339 GETIMPORT                        R20 K88 [Enum.TextXAlignment.Left]
      341 SETTABLEKS                       R20 R19 K73 ["TextXAlignment"]
      343 GETIMPORT                        R20 K90 [Enum.TextYAlignment.Top]
      345 SETTABLEKS                       R20 R19 K74 ["TextYAlignment"]
      347 GETTABLEKS                       R22 R3 K91 ["Typography"]
      349 GETTABLEKS                       R21 R22 K92 ["CaptionMedium"]
      351 GETTABLEKS                       R20 R21 K93 ["FontSize"]
      353 SETTABLEKS                       R20 R19 K75 ["TextSize"]
      355 GETTABLEKS                       R22 R3 K91 ["Typography"]
      357 GETTABLEKS                       R21 R22 K92 ["CaptionMedium"]
      359 GETTABLEKS                       R20 R21 K76 ["LineHeight"]
      361 SETTABLEKS                       R20 R19 K76 ["LineHeight"]
      363 SETTABLEKS                       R7 R19 K9 ["Text"]
      365 GETUPVAL                         R21 16
      366 GETTABLEKS                       R20 R21 K94 ["CODE_FONT"]
      368 SETTABLEKS                       R20 R19 K77 ["FontFace"]
      370 LOADN                            R20 1
      371 SETTABLEKS                       R20 R19 K78 ["BackgroundTransparency"]
      373 LOADN                            R20 0
      374 SETTABLEKS                       R20 R19 K79 ["BorderSizePixel"]
      376 CALL                             R17 2 1
      377 SETTABLEKS                       R17 R16 K65 ["PreviewText"]
      379 CALL                             R13 3 1
      380 SETTABLEKS                       R13 R12 K37 ["Content"]
      382 CALL                             R9 3 -1
      383 RETURN                           R9 -1

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
       77 GETTABLEKS                       R11 R12 K22 ["FFlagEnableSubagents"]
       79 GETTABLEKS                       R12 R2 K23 ["ScrollView"]
       81 GETTABLEKS                       R13 R2 K24 ["Text"]
       83 GETTABLEKS                       R15 R2 K25 ["Enums"]
       85 GETTABLEKS                       R14 R15 K26 ["Visibility"]
       87 GETTABLEKS                       R15 R2 K27 ["View"]
       89 GETTABLEKS                       R16 R2 K28 ["Image"]
       91 GETTABLEKS                       R18 R2 K29 ["Hooks"]
       93 GETTABLEKS                       R17 R18 K30 ["useTokens"]
       95 GETTABLEKS                       R18 R4 K31 ["createNextOrder"]
       97 GETTABLEKS                       R19 R3 K32 ["createElement"]
       99 DUPTABLE                         R20 K39 [{"CanvasSize", "AutomaticSize", "AutomaticCanvasSize", "ScrollingDirection", "scrollBarVisibility", "HorizontalScrollBarInset"}]
      100 GETIMPORT                        R21 K42 [UDim2.fromOffset]
      102 LOADN                            R22 0
      103 LOADN                            R23 0
      104 CALL                             R21 2 1
      105 SETTABLEKS                       R21 R20 K33 ["CanvasSize"]
      107 GETIMPORT                        R21 K45 [Enum.AutomaticSize.Y]
      109 SETTABLEKS                       R21 R20 K34 ["AutomaticSize"]
      111 GETIMPORT                        R21 K47 [Enum.AutomaticSize.X]
      113 SETTABLEKS                       R21 R20 K35 ["AutomaticCanvasSize"]
      115 GETIMPORT                        R21 K48 [Enum.ScrollingDirection.X]
      117 SETTABLEKS                       R21 R20 K36 ["ScrollingDirection"]
      119 GETTABLEKS                       R21 R14 K49 ["Auto"]
      121 SETTABLEKS                       R21 R20 K37 ["scrollBarVisibility"]
      123 GETIMPORT                        R21 K52 [Enum.ScrollBarInset.Always]
      125 SETTABLEKS                       R21 R20 K38 ["HorizontalScrollBarInset"]
      127 DUPTABLE                         R21 K54 [{"Search"}]
      128 LOADK                            R22 K55 ["search"]
      129 SETTABLEKS                       R22 R21 K53 ["Search"]
      131 DUPTABLE                         R22 K56 [{"search"}]
      132 LOADK                            R23 K57 ["icons/common/search_small"]
      133 SETTABLEKS                       R23 R22 K55 ["search"]
      135 DUPCLOSURE                       R23 K58 [PROTO_3]
      136 CAPTURE                          VAL R18
      137 CAPTURE                          VAL R22
      138 CAPTURE                          VAL R11
      139 CAPTURE                          VAL R19
      140 CAPTURE                          VAL R15
      141 CAPTURE                          VAL R16
      142 CAPTURE                          VAL R6
      143 CAPTURE                          VAL R13
      144 CAPTURE                          VAL R5
      145 CAPTURE                          VAL R17
      146 CAPTURE                          VAL R3
      147 CAPTURE                          VAL R10
      148 CAPTURE                          VAL R7
      149 CAPTURE                          VAL R1
      150 CAPTURE                          VAL R12
      151 CAPTURE                          VAL R20
      152 CAPTURE                          VAL R8
      153 DUPCLOSURE                       R24 K59 [PROTO_4]
      154 CAPTURE                          VAL R10
      155 DUPCLOSURE                       R25 K60 [PROTO_5]
      156 CAPTURE                          VAL R10
      157 DUPTABLE                         R26 K65 [{"Type", "ContentWidget", "Serialization", "Icons"}]
      158 LOADK                            R27 K66 ["Summarized"]
      159 SETTABLEKS                       R27 R26 K61 ["Type"]
      161 GETTABLEKS                       R27 R3 K67 ["memo"]
      163 MOVE                             R28 R23
      164 CALL                             R27 1 1
      165 SETTABLEKS                       R27 R26 K62 ["ContentWidget"]
      167 DUPTABLE                         R27 K70 [{"serialize", "deserialize"}]
      168 SETTABLEKS                       R24 R27 K68 ["serialize"]
      170 SETTABLEKS                       R25 R27 K69 ["deserialize"]
      172 SETTABLEKS                       R27 R26 K63 ["Serialization"]
      174 SETTABLEKS                       R21 R26 K64 ["Icons"]
      176 RETURN                           R26 1
