PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["expanded"]
        2 NOT                              R1 R2
        3 SETTABLEKS                       R1 R0 K0 ["expanded"]
        5 DUPTABLE                         R1 K3 [{["rawTransformValues"] = True}]
        6 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["editThisContent"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["contentId"]
        6 DUPCLOSURE                       R2 K2 [PROTO_0]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

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
       57 NEWTABLE                         R8 0 2
       59 GETTABLEKS                       R9 R0 K10 ["contentId"]
       61 GETTABLEKS                       R10 R0 K11 ["editThisContent"]
       63 SETLIST                          R8 R9 2 [1]
       65 CALL                             R6 2 1
       66 GETUPVAL                         R7 3
       67 GETTABLEKS                       R7 R7 K12 ["useMemo"]
       69 NEWCLOSURE                       R8 P1
       70 CAPTURE                          VAL R0
       71 CAPTURE                          UPVAL U4
       72 NEWTABLE                         R9 0 2
       74 GETTABLEKS                       R10 R0 K13 ["toolResult"]
       76 GETTABLEKS                       R11 R0 K14 ["noExpand"]
       78 SETLIST                          R9 R10 2 [1]
       80 CALL                             R7 2 1
       81 JUMPIFNOTEQKNIL                  R7 ; [+2]
       83 LOADB                            R8 0 +1
       84 LOADB                            R8 1
       85 GETUPVAL                         R9 5
       86 GETUPVAL                         R10 6
       87 DUPTABLE                         R11 K18 [{["tag"] = "col gap-xsmall size-full-0 auto-xy", ["LayoutOrder"]}]
       88 GETTABLEKS                       R12 R0 K17 ["LayoutOrder"]
       90 SETTABLEKS                       R12 R11 K17 ["LayoutOrder"]
       92 DUPTABLE                         R12 K21 [{"Header", "Content"}]
       93 GETUPVAL                         R13 5
       94 GETUPVAL                         R14 6
       95 DUPTABLE                         R15 K25 [{["tag"] = "row align-y-center gap-xsmall size-full-600 radius-medium", ["onActivated"], ["LayoutOrder"], ["testId"]}]
       96 JUMPIFNOT                        R8 ; [+2]
       97 MOVE                             R16 R6
       98 JUMP                             ; [+1]
       99 LOADNIL                          R16
      100 SETTABLEKS                       R16 R15 K23 ["onActivated"]
      102 MOVE                             R16 R1
      103 CALL                             R16 0 1
      104 SETTABLEKS                       R16 R15 K17 ["LayoutOrder"]
      106 JUMPIFNOT                        R8 ; [+6]
      107 GETUPVAL                         R16 7
      108 GETTABLEKS                       R16 R16 K26 ["Summarized"]
      110 GETTABLEKS                       R16 R16 K27 ["Expand"]
      112 JUMP                             ; [+1]
      113 LOADNIL                          R16
      114 SETTABLEKS                       R16 R15 K24 ["testId"]
      116 DUPTABLE                         R16 K31 [{"ExpandIcon", "Icon", "SummaryText"}]
      117 MOVE                             R17 R8
      118 JUMPIFNOT                        R17 ; [+30]
      119 GETUPVAL                         R17 5
      120 GETUPVAL                         R18 8
      121 DUPTABLE                         R19 K37 [{["name"], ["size"] = 12, ["style"], ["LayoutOrder"] = -1}]
      122 JUMPIFNOT                        R4 ; [+8]
      123 GETUPVAL                         R20 9
      124 GETTABLEKS                       R20 R20 K38 ["Enums"]
      126 GETTABLEKS                       R20 R20 K39 ["IconName"]
      128 GETTABLEKS                       R20 R20 K40 ["ChevronSmallDown"]
      130 JUMP                             ; [+7]
      131 GETUPVAL                         R20 9
      132 GETTABLEKS                       R20 R20 K38 ["Enums"]
      134 GETTABLEKS                       R20 R20 K39 ["IconName"]
      136 GETTABLEKS                       R20 R20 K41 ["ChevronSmallRight"]
      138 SETTABLEKS                       R20 R19 K32 ["name"]
      140 GETTABLEKS                       R20 R3 K42 ["Color"]
      142 GETTABLEKS                       R20 R20 K20 ["Content"]
      144 GETTABLEKS                       R20 R20 K43 ["Emphasis"]
      146 SETTABLEKS                       R20 R19 K35 ["style"]
      148 CALL                             R17 2 1
      149 SETTABLEKS                       R17 R16 K28 ["ExpandIcon"]
      151 MOVE                             R17 R2
      152 JUMPIFNOT                        R17 ; [+55]
      153 GETUPVAL                         R18 10
      154 CALL                             R18 0 1
      155 JUMPIFNOT                        R18 ; [+35]
      156 GETUPVAL                         R17 5
      157 GETUPVAL                         R18 8
      158 DUPTABLE                         R19 K44 [{"name", "style", "size", "LayoutOrder", "testId"}]
      159 SETTABLEKS                       R2 R19 K32 ["name"]
      161 GETTABLEKS                       R20 R3 K42 ["Color"]
      163 GETTABLEKS                       R20 R20 K20 ["Content"]
      165 GETTABLEKS                       R20 R20 K45 ["Muted"]
      167 SETTABLEKS                       R20 R19 K35 ["style"]
      169 GETUPVAL                         R20 9
      170 GETTABLEKS                       R20 R20 K38 ["Enums"]
      172 GETTABLEKS                       R20 R20 K46 ["IconSize"]
      174 GETTABLEKS                       R20 R20 K47 ["XSmall"]
      176 SETTABLEKS                       R20 R19 K33 ["size"]
      178 MOVE                             R20 R1
      179 CALL                             R20 0 1
      180 SETTABLEKS                       R20 R19 K17 ["LayoutOrder"]
      182 GETUPVAL                         R20 7
      183 GETTABLEKS                       R20 R20 K26 ["Summarized"]
      185 GETTABLEKS                       R20 R20 K29 ["Icon"]
      187 SETTABLEKS                       R20 R19 K24 ["testId"]
      189 CALL                             R17 2 1
      190 JUMP                             ; [+17]
      191 GETUPVAL                         R17 5
      192 GETUPVAL                         R18 11
      193 DUPTABLE                         R19 K50 [{["Image"], ["tag"] = "position-center-center anchor-center-center size-300-300 content-muted", ["LayoutOrder"], ["testId"]}]
      194 SETTABLEKS                       R2 R19 K48 ["Image"]
      196 MOVE                             R20 R1
      197 CALL                             R20 0 1
      198 SETTABLEKS                       R20 R19 K17 ["LayoutOrder"]
      200 GETUPVAL                         R20 7
      201 GETTABLEKS                       R20 R20 K26 ["Summarized"]
      203 GETTABLEKS                       R20 R20 K29 ["Icon"]
      205 SETTABLEKS                       R20 R19 K24 ["testId"]
      207 CALL                             R17 2 1
      208 SETTABLEKS                       R17 R16 K29 ["Icon"]
      210 GETUPVAL                         R17 5
      211 GETUPVAL                         R18 12
      212 DUPTABLE                         R19 K53 [{["tag"] = "size-0-full text-label-small text-align-x-left text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      213 SETTABLEKS                       R5 R19 K52 ["Text"]
      215 MOVE                             R20 R1
      216 CALL                             R20 0 1
      217 SETTABLEKS                       R20 R19 K17 ["LayoutOrder"]
      219 DUPTABLE                         R20 K56 [{"UIFlexItem", "Shimmer"}]
      220 GETUPVAL                         R21 5
      221 LOADK                            R22 K54 ["UIFlexItem"]
      222 DUPTABLE                         R23 K58 [{"FlexMode"}]
      223 GETIMPORT                        R24 K62 [Enum.UIFlexMode.Fill]
      225 SETTABLEKS                       R24 R23 K57 ["FlexMode"]
      227 CALL                             R21 2 1
      228 SETTABLEKS                       R21 R20 K54 ["UIFlexItem"]
      230 GETTABLEKS                       R21 R0 K63 ["generating"]
      232 JUMPIFNOT                        R21 ; [+3]
      233 GETUPVAL                         R21 5
      234 GETUPVAL                         R22 13
      235 CALL                             R21 1 1
      236 SETTABLEKS                       R21 R20 K55 ["Shimmer"]
      238 CALL                             R17 3 1
      239 SETTABLEKS                       R17 R16 K30 ["SummaryText"]
      241 CALL                             R13 3 1
      242 SETTABLEKS                       R13 R12 K19 ["Header"]
      244 MOVE                             R13 R4
      245 JUMPIFNOT                        R13 ; [+75]
      246 MOVE                             R13 R7
      247 JUMPIFNOT                        R13 ; [+73]
      248 GETUPVAL                         R13 5
      249 GETUPVAL                         R14 14
      250 DUPTABLE                         R15 K66 [{["tag"] = "size-full-0 auto-y padding-small stroke-default radius-small bg-shift-300", ["scroll"], ["LayoutOrder"]}]
      251 GETUPVAL                         R16 15
      252 SETTABLEKS                       R16 R15 K65 ["scroll"]
      254 MOVE                             R16 R1
      255 CALL                             R16 0 1
      256 SETTABLEKS                       R16 R15 K17 ["LayoutOrder"]
      258 DUPTABLE                         R16 K68 [{"PreviewText"}]
      259 GETUPVAL                         R17 5
      260 LOADK                            R18 K69 ["TextBox"]
      261 DUPTABLE                         R19 K85 [{["TextEditable"] = False, ["ClearTextOnFocus"] = False, ["AutomaticSize"], ["TextColor3"], ["TextTransparency"], ["TextXAlignment"], ["TextYAlignment"], ["TextSize"], ["LineHeight"], ["Text"], ["FontFace"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
      262 GETIMPORT                        R20 K87 [Enum.AutomaticSize.XY]
      264 SETTABLEKS                       R20 R19 K73 ["AutomaticSize"]
      266 GETTABLEKS                       R20 R3 K42 ["Color"]
      268 GETTABLEKS                       R20 R20 K20 ["Content"]
      270 GETTABLEKS                       R20 R20 K45 ["Muted"]
      272 GETTABLEKS                       R20 R20 K88 ["Color3"]
      274 SETTABLEKS                       R20 R19 K74 ["TextColor3"]
      276 GETTABLEKS                       R20 R3 K42 ["Color"]
      278 GETTABLEKS                       R20 R20 K20 ["Content"]
      280 GETTABLEKS                       R20 R20 K45 ["Muted"]
      282 GETTABLEKS                       R20 R20 K89 ["Transparency"]
      284 SETTABLEKS                       R20 R19 K75 ["TextTransparency"]
      286 GETIMPORT                        R20 K91 [Enum.TextXAlignment.Left]
      288 SETTABLEKS                       R20 R19 K76 ["TextXAlignment"]
      290 GETIMPORT                        R20 K93 [Enum.TextYAlignment.Top]
      292 SETTABLEKS                       R20 R19 K77 ["TextYAlignment"]
      294 GETTABLEKS                       R20 R3 K94 ["Typography"]
      296 GETTABLEKS                       R20 R20 K95 ["CaptionMedium"]
      298 GETTABLEKS                       R20 R20 K96 ["FontSize"]
      300 SETTABLEKS                       R20 R19 K78 ["TextSize"]
      302 GETTABLEKS                       R20 R3 K94 ["Typography"]
      304 GETTABLEKS                       R20 R20 K95 ["CaptionMedium"]
      306 GETTABLEKS                       R20 R20 K79 ["LineHeight"]
      308 SETTABLEKS                       R20 R19 K79 ["LineHeight"]
      310 SETTABLEKS                       R7 R19 K52 ["Text"]
      312 GETUPVAL                         R20 16
      313 GETTABLEKS                       R20 R20 K97 ["CODE_FONT"]
      315 SETTABLEKS                       R20 R19 K80 ["FontFace"]
      317 CALL                             R17 2 1
      318 SETTABLEKS                       R17 R16 K67 ["PreviewText"]
      320 CALL                             R13 3 1
      321 SETTABLEKS                       R13 R12 K20 ["Content"]
      323 CALL                             R9 3 -1
      324 RETURN                           R9 -1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["summary"]
        2 RETURN                           R1 1

PROTO_5:
        0 DUPTABLE                         R1 K3 [{"icon", "subtitle", "noExpand"}]
        1 GETTABLEKS                       R2 R0 K0 ["icon"]
        3 SETTABLEKS                       R2 R1 K0 ["icon"]
        5 GETTABLEKS                       R2 R0 K1 ["subtitle"]
        7 SETTABLEKS                       R2 R1 K1 ["subtitle"]
        9 GETTABLEKS                       R2 R0 K2 ["noExpand"]
       11 SETTABLEKS                       R2 R1 K2 ["noExpand"]
       13 RETURN                           R1 1

PROTO_6:
        0 LOADK                            R2 K0 [""]
        1 GETTABLEKS                       R3 R1 K1 ["textContent"]
        3 JUMPIFNOT                        R3 ; [+4]
        4 GETTABLEKS                       R3 R1 K1 ["textContent"]
        6 GETTABLEKS                       R2 R3 K2 ["text"]
        8 DUPTABLE                         R3 K9 [{["type"] = "Summarized", ["icon"], ["summary"], ["subtitle"], ["noExpand"]}]
        9 GETTABLEKS                       R4 R0 K5 ["icon"]
       11 SETTABLEKS                       R4 R3 K5 ["icon"]
       13 SETTABLEKS                       R2 R3 K6 ["summary"]
       15 GETTABLEKS                       R4 R0 K7 ["subtitle"]
       17 SETTABLEKS                       R4 R3 K7 ["subtitle"]
       19 GETTABLEKS                       R4 R0 K8 ["noExpand"]
       21 SETTABLEKS                       R4 R3 K8 ["noExpand"]
       23 RETURN                           R3 1

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
       69 GETTABLEKS                       R10 R10 K21 ["FFlagAssistantUseBuilderIcons"]
       71 CALL                             R9 1 1
       72 GETTABLEKS                       R10 R1 K22 ["Icon"]
       74 GETTABLEKS                       R11 R1 K23 ["ScrollView"]
       76 GETTABLEKS                       R12 R1 K24 ["Text"]
       78 GETTABLEKS                       R13 R1 K25 ["Enums"]
       80 GETTABLEKS                       R13 R13 K26 ["Visibility"]
       82 GETTABLEKS                       R14 R1 K27 ["View"]
       84 GETTABLEKS                       R15 R1 K28 ["Image"]
       86 GETTABLEKS                       R16 R1 K29 ["Hooks"]
       88 GETTABLEKS                       R16 R16 K30 ["useTokens"]
       90 GETTABLEKS                       R17 R3 K31 ["createNextOrder"]
       92 GETTABLEKS                       R18 R2 K32 ["createElement"]
       94 DUPTABLE                         R19 K39 [{"CanvasSize", "AutomaticSize", "AutomaticCanvasSize", "ScrollingDirection", "scrollBarVisibility", "HorizontalScrollBarInset"}]
       95 GETIMPORT                        R20 K42 [UDim2.fromOffset]
       97 LOADN                            R21 0
       98 LOADN                            R22 0
       99 CALL                             R20 2 1
      100 SETTABLEKS                       R20 R19 K33 ["CanvasSize"]
      102 GETIMPORT                        R20 K45 [Enum.AutomaticSize.Y]
      104 SETTABLEKS                       R20 R19 K34 ["AutomaticSize"]
      106 GETIMPORT                        R20 K47 [Enum.AutomaticSize.X]
      108 SETTABLEKS                       R20 R19 K35 ["AutomaticCanvasSize"]
      110 GETIMPORT                        R20 K48 [Enum.ScrollingDirection.X]
      112 SETTABLEKS                       R20 R19 K36 ["ScrollingDirection"]
      114 GETTABLEKS                       R20 R13 K49 ["Auto"]
      116 SETTABLEKS                       R20 R19 K37 ["scrollBarVisibility"]
      118 GETIMPORT                        R20 K52 [Enum.ScrollBarInset.Always]
      120 SETTABLEKS                       R20 R19 K38 ["HorizontalScrollBarInset"]
      122 DUPTABLE                         R20 K55 [{["Search"] = "search"}]
      123 DUPTABLE                         R21 K56 [{"search"}]
      124 MOVE                             R23 R9
      125 CALL                             R23 0 1
      126 JUMPIFNOT                        R23 ; [+7]
      127 GETTABLEKS                       R22 R1 K25 ["Enums"]
      129 GETTABLEKS                       R22 R22 K57 ["IconName"]
      131 GETTABLEKS                       R22 R22 K58 ["MagnifyingGlass"]
      133 JUMP                             ; [+1]
      134 LOADK                            R22 K59 ["icons/common/search_small"]
      135 SETTABLEKS                       R22 R21 K54 ["search"]
      137 DUPCLOSURE                       R22 K60 [PROTO_3]
      138 CAPTURE                          VAL R17
      139 CAPTURE                          VAL R21
      140 CAPTURE                          VAL R16
      141 CAPTURE                          VAL R2
      142 CAPTURE                          VAL R7
      143 CAPTURE                          VAL R18
      144 CAPTURE                          VAL R14
      145 CAPTURE                          VAL R6
      146 CAPTURE                          VAL R10
      147 CAPTURE                          VAL R1
      148 CAPTURE                          VAL R9
      149 CAPTURE                          VAL R15
      150 CAPTURE                          VAL R12
      151 CAPTURE                          VAL R5
      152 CAPTURE                          VAL R11
      153 CAPTURE                          VAL R19
      154 CAPTURE                          VAL R8
      155 DUPTABLE                         R23 K64 [{"getText", "toMeta", "fromMeta"}]
      156 DUPCLOSURE                       R24 K65 [PROTO_4]
      157 SETTABLEKS                       R24 R23 K61 ["getText"]
      159 DUPCLOSURE                       R24 K66 [PROTO_5]
      160 SETTABLEKS                       R24 R23 K62 ["toMeta"]
      162 DUPCLOSURE                       R24 K67 [PROTO_6]
      163 SETTABLEKS                       R24 R23 K63 ["fromMeta"]
      165 DUPTABLE                         R24 K73 [{["Type"] = "Summarized", ["ContentWidget"], ["Serialization"], ["Icons"]}]
      166 GETTABLEKS                       R25 R2 K74 ["memo"]
      168 MOVE                             R26 R22
      169 CALL                             R25 1 1
      170 SETTABLEKS                       R25 R24 K70 ["ContentWidget"]
      172 SETTABLEKS                       R23 R24 K71 ["Serialization"]
      174 SETTABLEKS                       R20 R24 K72 ["Icons"]
      176 RETURN                           R24 1
