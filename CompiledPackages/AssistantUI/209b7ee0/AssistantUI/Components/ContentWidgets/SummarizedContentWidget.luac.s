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
       52 GETUPVAL                         R7 3
       53 GETTABLEKS                       R6 R7 K9 ["useCallback"]
       55 NEWCLOSURE                       R7 P0
       56 CAPTURE                          VAL R0
       57 CAPTURE                          UPVAL U4
       58 NEWTABLE                         R8 0 2
       60 GETTABLEKS                       R9 R0 K10 ["contentId"]
       62 GETTABLEKS                       R10 R0 K11 ["editThisContent"]
       64 SETLIST                          R8 R9 2 [1]
       66 CALL                             R6 2 1
       67 GETUPVAL                         R8 3
       68 GETTABLEKS                       R7 R8 K12 ["useMemo"]
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
      114 GETUPVAL                         R18 8
      115 GETTABLEKS                       R17 R18 K26 ["Summarized"]
      117 GETTABLEKS                       R16 R17 K27 ["Expand"]
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
      130 GETUPVAL                         R23 10
      131 GETTABLEKS                       R22 R23 K36 ["Enums"]
      133 GETTABLEKS                       R21 R22 K37 ["IconName"]
      135 GETTABLEKS                       R20 R21 K38 ["ChevronSmallDown"]
      137 JUMP                             ; [+7]
      138 GETUPVAL                         R23 10
      139 GETTABLEKS                       R22 R23 K36 ["Enums"]
      141 GETTABLEKS                       R21 R22 K37 ["IconName"]
      143 GETTABLEKS                       R20 R21 K39 ["ChevronSmallRight"]
      145 SETTABLEKS                       R20 R19 K32 ["name"]
      147 LOADN                            R20 12
      148 SETTABLEKS                       R20 R19 K33 ["size"]
      150 GETTABLEKS                       R22 R3 K40 ["Color"]
      152 GETTABLEKS                       R21 R22 K20 ["Content"]
      154 GETTABLEKS                       R20 R21 K41 ["Emphasis"]
      156 SETTABLEKS                       R20 R19 K34 ["style"]
      158 LOADN                            R20 255
      159 SETTABLEKS                       R20 R19 K16 ["LayoutOrder"]
      161 CALL                             R17 2 1
      162 SETTABLEKS                       R17 R16 K28 ["ExpandIcon"]
      164 MOVE                             R17 R2
      165 JUMPIFNOT                        R17 ; [+20]
      166 GETUPVAL                         R17 6
      167 GETUPVAL                         R18 11
      168 DUPTABLE                         R19 K43 [{"Image", "tag", "LayoutOrder", "testId"}]
      169 SETTABLEKS                       R2 R19 K42 ["Image"]
      171 LOADK                            R20 K44 ["size-300-300 anchor-center-center position-center-center content-muted"]
      172 SETTABLEKS                       R20 R19 K15 ["tag"]
      174 MOVE                             R20 R1
      175 CALL                             R20 0 1
      176 SETTABLEKS                       R20 R19 K16 ["LayoutOrder"]
      178 GETUPVAL                         R22 8
      179 GETTABLEKS                       R21 R22 K26 ["Summarized"]
      181 GETTABLEKS                       R20 R21 K29 ["Icon"]
      183 SETTABLEKS                       R20 R19 K23 ["testId"]
      185 CALL                             R17 2 1
      186 SETTABLEKS                       R17 R16 K29 ["Icon"]
      188 GETUPVAL                         R17 6
      189 GETUPVAL                         R18 12
      190 DUPTABLE                         R19 K46 [{"tag", "Text", "LayoutOrder"}]
      191 LOADK                            R20 K47 ["size-0-full text-label-small text-truncate-end content-default text-align-x-left"]
      192 SETTABLEKS                       R20 R19 K15 ["tag"]
      194 SETTABLEKS                       R5 R19 K45 ["Text"]
      196 MOVE                             R20 R1
      197 CALL                             R20 0 1
      198 SETTABLEKS                       R20 R19 K16 ["LayoutOrder"]
      200 DUPTABLE                         R20 K50 [{"UIFlexItem", "Shimmer"}]
      201 GETUPVAL                         R21 6
      202 LOADK                            R22 K48 ["UIFlexItem"]
      203 DUPTABLE                         R23 K52 [{"FlexMode"}]
      204 GETIMPORT                        R24 K56 [Enum.UIFlexMode.Fill]
      206 SETTABLEKS                       R24 R23 K51 ["FlexMode"]
      208 CALL                             R21 2 1
      209 SETTABLEKS                       R21 R20 K48 ["UIFlexItem"]
      211 GETTABLEKS                       R21 R0 K57 ["generating"]
      213 JUMPIFNOT                        R21 ; [+3]
      214 GETUPVAL                         R21 6
      215 GETUPVAL                         R22 13
      216 CALL                             R21 1 1
      217 SETTABLEKS                       R21 R20 K49 ["Shimmer"]
      219 CALL                             R17 3 1
      220 SETTABLEKS                       R17 R16 K30 ["SummaryText"]
      222 CALL                             R13 3 1
      223 SETTABLEKS                       R13 R12 K19 ["Header"]
      225 MOVE                             R13 R4
      226 JUMPIFNOT                        R13 ; [+90]
      227 MOVE                             R13 R7
      228 JUMPIFNOT                        R13 ; [+88]
      229 GETUPVAL                         R13 6
      230 GETUPVAL                         R14 14
      231 DUPTABLE                         R15 K59 [{"tag", "scroll", "LayoutOrder"}]
      232 LOADK                            R16 K60 ["size-full-0 auto-y bg-shift-300 padding-small radius-small stroke-default"]
      233 SETTABLEKS                       R16 R15 K15 ["tag"]
      235 GETUPVAL                         R16 15
      236 SETTABLEKS                       R16 R15 K58 ["scroll"]
      238 MOVE                             R16 R1
      239 CALL                             R16 0 1
      240 SETTABLEKS                       R16 R15 K16 ["LayoutOrder"]
      242 DUPTABLE                         R16 K62 [{"PreviewText"}]
      243 GETUPVAL                         R17 6
      244 LOADK                            R18 K63 ["TextBox"]
      245 DUPTABLE                         R19 K76 [{"TextEditable", "ClearTextOnFocus", "AutomaticSize", "TextColor3", "TextTransparency", "TextXAlignment", "TextYAlignment", "TextSize", "LineHeight", "Text", "FontFace", "BackgroundTransparency", "BorderSizePixel"}]
      246 LOADB                            R20 0
      247 SETTABLEKS                       R20 R19 K64 ["TextEditable"]
      249 LOADB                            R20 0
      250 SETTABLEKS                       R20 R19 K65 ["ClearTextOnFocus"]
      252 GETIMPORT                        R20 K78 [Enum.AutomaticSize.XY]
      254 SETTABLEKS                       R20 R19 K66 ["AutomaticSize"]
      256 GETTABLEKS                       R23 R3 K40 ["Color"]
      258 GETTABLEKS                       R22 R23 K20 ["Content"]
      260 GETTABLEKS                       R21 R22 K79 ["Muted"]
      262 GETTABLEKS                       R20 R21 K80 ["Color3"]
      264 SETTABLEKS                       R20 R19 K67 ["TextColor3"]
      266 GETTABLEKS                       R23 R3 K40 ["Color"]
      268 GETTABLEKS                       R22 R23 K20 ["Content"]
      270 GETTABLEKS                       R21 R22 K79 ["Muted"]
      272 GETTABLEKS                       R20 R21 K81 ["Transparency"]
      274 SETTABLEKS                       R20 R19 K68 ["TextTransparency"]
      276 GETIMPORT                        R20 K83 [Enum.TextXAlignment.Left]
      278 SETTABLEKS                       R20 R19 K69 ["TextXAlignment"]
      280 GETIMPORT                        R20 K85 [Enum.TextYAlignment.Top]
      282 SETTABLEKS                       R20 R19 K70 ["TextYAlignment"]
      284 GETTABLEKS                       R22 R3 K86 ["Typography"]
      286 GETTABLEKS                       R21 R22 K87 ["CaptionMedium"]
      288 GETTABLEKS                       R20 R21 K88 ["FontSize"]
      290 SETTABLEKS                       R20 R19 K71 ["TextSize"]
      292 GETTABLEKS                       R22 R3 K86 ["Typography"]
      294 GETTABLEKS                       R21 R22 K87 ["CaptionMedium"]
      296 GETTABLEKS                       R20 R21 K72 ["LineHeight"]
      298 SETTABLEKS                       R20 R19 K72 ["LineHeight"]
      300 SETTABLEKS                       R7 R19 K45 ["Text"]
      302 GETUPVAL                         R21 16
      303 GETTABLEKS                       R20 R21 K89 ["CODE_FONT"]
      305 SETTABLEKS                       R20 R19 K73 ["FontFace"]
      307 LOADN                            R20 1
      308 SETTABLEKS                       R20 R19 K74 ["BackgroundTransparency"]
      310 LOADN                            R20 0
      311 SETTABLEKS                       R20 R19 K75 ["BorderSizePixel"]
      313 CALL                             R17 2 1
      314 SETTABLEKS                       R17 R16 K61 ["PreviewText"]
      316 CALL                             R13 3 1
      317 SETTABLEKS                       R13 R12 K20 ["Content"]
      319 CALL                             R9 3 -1
      320 RETURN                           R9 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
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
        4 LOADK                            R3 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
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
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R5 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K10 ["Components"]
       32 GETTABLEKS                       R5 R6 K11 ["ShimmerGradient"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K12 ["Util"]
       39 GETTABLEKS                       R6 R7 K13 ["TestIds"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R9 R0 K14 ["Resources"]
       46 GETTABLEKS                       R8 R9 K15 ["Localization"]
       48 GETTABLEKS                       R7 R8 K16 ["Translator"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K17 ["Types"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R10 R0 K18 ["Flags"]
       60 GETTABLEKS                       R9 R10 K19 ["FFlagAssistantMultipleChatPersistence"]
       62 CALL                             R8 1 1
       63 GETTABLEKS                       R9 R1 K20 ["Icon"]
       65 GETTABLEKS                       R10 R1 K21 ["ScrollView"]
       67 GETTABLEKS                       R11 R1 K22 ["Text"]
       69 GETTABLEKS                       R13 R1 K23 ["Enums"]
       71 GETTABLEKS                       R12 R13 K24 ["Visibility"]
       73 GETTABLEKS                       R13 R1 K25 ["View"]
       75 GETTABLEKS                       R14 R1 K26 ["Image"]
       77 GETTABLEKS                       R16 R1 K27 ["Hooks"]
       79 GETTABLEKS                       R15 R16 K28 ["useTokens"]
       81 GETTABLEKS                       R16 R3 K29 ["createNextOrder"]
       83 GETTABLEKS                       R17 R2 K30 ["createElement"]
       85 DUPTABLE                         R18 K37 [{"CanvasSize", "AutomaticSize", "AutomaticCanvasSize", "ScrollingDirection", "scrollBarVisibility", "HorizontalScrollBarInset"}]
       86 GETIMPORT                        R19 K40 [UDim2.fromOffset]
       88 LOADN                            R20 0
       89 LOADN                            R21 0
       90 CALL                             R19 2 1
       91 SETTABLEKS                       R19 R18 K31 ["CanvasSize"]
       93 GETIMPORT                        R19 K43 [Enum.AutomaticSize.Y]
       95 SETTABLEKS                       R19 R18 K32 ["AutomaticSize"]
       97 GETIMPORT                        R19 K45 [Enum.AutomaticSize.X]
       99 SETTABLEKS                       R19 R18 K33 ["AutomaticCanvasSize"]
      101 GETIMPORT                        R19 K46 [Enum.ScrollingDirection.X]
      103 SETTABLEKS                       R19 R18 K34 ["ScrollingDirection"]
      105 GETTABLEKS                       R19 R12 K47 ["Auto"]
      107 SETTABLEKS                       R19 R18 K35 ["scrollBarVisibility"]
      109 GETIMPORT                        R19 K50 [Enum.ScrollBarInset.Always]
      111 SETTABLEKS                       R19 R18 K36 ["HorizontalScrollBarInset"]
      113 DUPTABLE                         R19 K52 [{"Search"}]
      114 LOADK                            R20 K53 ["search"]
      115 SETTABLEKS                       R20 R19 K51 ["Search"]
      117 DUPTABLE                         R20 K54 [{"search"}]
      118 LOADK                            R21 K55 ["icons/common/search_small"]
      119 SETTABLEKS                       R21 R20 K53 ["search"]
      121 DUPCLOSURE                       R21 K56 [PROTO_3]
      122 CAPTURE                          VAL R16
      123 CAPTURE                          VAL R20
      124 CAPTURE                          VAL R15
      125 CAPTURE                          VAL R2
      126 CAPTURE                          VAL R8
      127 CAPTURE                          VAL R6
      128 CAPTURE                          VAL R17
      129 CAPTURE                          VAL R13
      130 CAPTURE                          VAL R5
      131 CAPTURE                          VAL R9
      132 CAPTURE                          VAL R1
      133 CAPTURE                          VAL R14
      134 CAPTURE                          VAL R11
      135 CAPTURE                          VAL R4
      136 CAPTURE                          VAL R10
      137 CAPTURE                          VAL R18
      138 CAPTURE                          VAL R7
      139 DUPCLOSURE                       R22 K57 [PROTO_4]
      140 CAPTURE                          VAL R8
      141 DUPCLOSURE                       R23 K58 [PROTO_5]
      142 CAPTURE                          VAL R8
      143 DUPTABLE                         R24 K63 [{"Type", "ContentWidget", "Serialization", "Icons"}]
      144 LOADK                            R25 K64 ["Summarized"]
      145 SETTABLEKS                       R25 R24 K59 ["Type"]
      147 GETTABLEKS                       R25 R2 K65 ["memo"]
      149 MOVE                             R26 R21
      150 CALL                             R25 1 1
      151 SETTABLEKS                       R25 R24 K60 ["ContentWidget"]
      153 DUPTABLE                         R25 K68 [{"serialize", "deserialize"}]
      154 SETTABLEKS                       R22 R25 K66 ["serialize"]
      156 SETTABLEKS                       R23 R25 K67 ["deserialize"]
      158 SETTABLEKS                       R25 R24 K61 ["Serialization"]
      160 SETTABLEKS                       R19 R24 K62 ["Icons"]
      162 RETURN                           R24 1
