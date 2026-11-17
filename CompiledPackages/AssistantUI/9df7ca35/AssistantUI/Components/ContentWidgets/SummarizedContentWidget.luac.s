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
      103 GETUPVAL                         R5 2
      104 GETIMPORT                        R6 K22 [table.concat]
      106 MOVE                             R7 R4
      107 LOADK                            R8 K5 ["\n"]
      108 CALL                             R6 2 -1
      109 CALL                             R5 -1 -1
      110 RETURN                           R5 -1

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
       21 JUMPIFNOT                        R6 ; [+29]
       22 GETTABLEKS                       R6 R0 K3 ["subtitle"]
       24 JUMPIFEQKS                       R6 K4 [""] ; [+26]
       26 GETTABLEKS                       R7 R0 K2 ["summary"]
       28 LOADN                            R9 1
       29 LOADN                            R10 1
       30 NAMECALL                         R7 R7 K5 ["sub"]
       32 CALL                             R7 3 1
       33 NAMECALL                         R7 R7 K6 ["lower"]
       35 CALL                             R7 1 1
       36 GETTABLEKS                       R8 R0 K2 ["summary"]
       38 LOADN                            R10 2
       39 NAMECALL                         R8 R8 K5 ["sub"]
       41 CALL                             R8 2 1
       42 CONCAT                           R6 R7 R8
       43 LOADK                            R7 K7 ["%* | %*"]
       44 GETTABLEKS                       R9 R0 K3 ["subtitle"]
       46 MOVE                             R10 R6
       47 NAMECALL                         R7 R7 K8 ["format"]
       49 CALL                             R7 3 1
       50 MOVE                             R5 R7
       51 GETUPVAL                         R6 3
       52 GETTABLEKS                       R6 R6 K9 ["useCallback"]
       54 NEWCLOSURE                       R7 P0
       55 CAPTURE                          VAL R0
       56 NEWTABLE                         R8 0 2
       58 GETTABLEKS                       R9 R0 K10 ["contentId"]
       60 GETTABLEKS                       R10 R0 K11 ["editThisContent"]
       62 SETLIST                          R8 R9 2 [1]
       64 CALL                             R6 2 1
       65 GETUPVAL                         R7 3
       66 GETTABLEKS                       R7 R7 K12 ["useMemo"]
       68 NEWCLOSURE                       R8 P1
       69 CAPTURE                          VAL R0
       70 CAPTURE                          UPVAL U4
       71 CAPTURE                          UPVAL U5
       72 NEWTABLE                         R9 0 2
       74 GETTABLEKS                       R10 R0 K13 ["toolResult"]
       76 GETTABLEKS                       R11 R0 K14 ["noExpand"]
       78 SETLIST                          R9 R10 2 [1]
       80 CALL                             R7 2 1
       81 JUMPIFNOTEQKNIL                  R7 ; [+2]
       83 LOADB                            R8 0 +1
       84 LOADB                            R8 1
       85 GETUPVAL                         R9 6
       86 GETUPVAL                         R10 7
       87 DUPTABLE                         R11 K18 [{["tag"] = "col gap-xsmall size-full-0 auto-xy", ["LayoutOrder"]}]
       88 GETTABLEKS                       R12 R0 K17 ["LayoutOrder"]
       90 SETTABLEKS                       R12 R11 K17 ["LayoutOrder"]
       92 DUPTABLE                         R12 K21 [{"Header", "Content"}]
       93 GETUPVAL                         R13 6
       94 GETUPVAL                         R14 7
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
      107 GETUPVAL                         R16 8
      108 GETTABLEKS                       R16 R16 K26 ["Summarized"]
      110 GETTABLEKS                       R16 R16 K27 ["Expand"]
      112 JUMP                             ; [+1]
      113 LOADNIL                          R16
      114 SETTABLEKS                       R16 R15 K24 ["testId"]
      116 DUPTABLE                         R16 K31 [{"ExpandIcon", "Icon", "SummaryText"}]
      117 MOVE                             R17 R8
      118 JUMPIFNOT                        R17 ; [+30]
      119 GETUPVAL                         R17 6
      120 GETUPVAL                         R18 9
      121 DUPTABLE                         R19 K37 [{["name"], ["size"] = 12, ["style"], ["LayoutOrder"] = -1}]
      122 JUMPIFNOT                        R4 ; [+8]
      123 GETUPVAL                         R20 10
      124 GETTABLEKS                       R20 R20 K38 ["Enums"]
      126 GETTABLEKS                       R20 R20 K39 ["IconName"]
      128 GETTABLEKS                       R20 R20 K40 ["ChevronSmallDown"]
      130 JUMP                             ; [+7]
      131 GETUPVAL                         R20 10
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
      152 JUMPIFNOT                        R17 ; [+34]
      153 GETUPVAL                         R17 6
      154 GETUPVAL                         R18 9
      155 DUPTABLE                         R19 K44 [{"name", "style", "size", "LayoutOrder", "testId"}]
      156 SETTABLEKS                       R2 R19 K32 ["name"]
      158 GETTABLEKS                       R20 R3 K42 ["Color"]
      160 GETTABLEKS                       R20 R20 K20 ["Content"]
      162 GETTABLEKS                       R20 R20 K45 ["Muted"]
      164 SETTABLEKS                       R20 R19 K35 ["style"]
      166 GETUPVAL                         R20 10
      167 GETTABLEKS                       R20 R20 K38 ["Enums"]
      169 GETTABLEKS                       R20 R20 K46 ["IconSize"]
      171 GETTABLEKS                       R20 R20 K47 ["XSmall"]
      173 SETTABLEKS                       R20 R19 K33 ["size"]
      175 MOVE                             R20 R1
      176 CALL                             R20 0 1
      177 SETTABLEKS                       R20 R19 K17 ["LayoutOrder"]
      179 GETUPVAL                         R20 8
      180 GETTABLEKS                       R20 R20 K26 ["Summarized"]
      182 GETTABLEKS                       R20 R20 K29 ["Icon"]
      184 SETTABLEKS                       R20 R19 K24 ["testId"]
      186 CALL                             R17 2 1
      187 SETTABLEKS                       R17 R16 K29 ["Icon"]
      189 GETUPVAL                         R17 6
      190 GETUPVAL                         R18 11
      191 DUPTABLE                         R19 K50 [{["tag"] = "size-0-full text-label-small text-align-x-left text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      192 SETTABLEKS                       R5 R19 K49 ["Text"]
      194 MOVE                             R20 R1
      195 CALL                             R20 0 1
      196 SETTABLEKS                       R20 R19 K17 ["LayoutOrder"]
      198 DUPTABLE                         R20 K53 [{"UIFlexItem", "Shimmer"}]
      199 GETUPVAL                         R21 6
      200 LOADK                            R22 K51 ["UIFlexItem"]
      201 DUPTABLE                         R23 K55 [{"FlexMode"}]
      202 GETIMPORT                        R24 K59 [Enum.UIFlexMode.Fill]
      204 SETTABLEKS                       R24 R23 K54 ["FlexMode"]
      206 CALL                             R21 2 1
      207 SETTABLEKS                       R21 R20 K51 ["UIFlexItem"]
      209 GETUPVAL                         R21 12
      210 MOVE                             R22 R0
      211 CALL                             R21 1 1
      212 JUMPIFNOT                        R21 ; [+3]
      213 GETUPVAL                         R21 6
      214 GETUPVAL                         R22 13
      215 CALL                             R21 1 1
      216 SETTABLEKS                       R21 R20 K52 ["Shimmer"]
      218 CALL                             R17 3 1
      219 SETTABLEKS                       R17 R16 K30 ["SummaryText"]
      221 CALL                             R13 3 1
      222 SETTABLEKS                       R13 R12 K19 ["Header"]
      224 MOVE                             R13 R4
      225 JUMPIFNOT                        R13 ; [+75]
      226 MOVE                             R13 R7
      227 JUMPIFNOT                        R13 ; [+73]
      228 GETUPVAL                         R13 6
      229 GETUPVAL                         R14 14
      230 DUPTABLE                         R15 K62 [{["tag"] = "size-full-0 auto-y padding-small stroke-default radius-small bg-shift-300", ["scroll"], ["LayoutOrder"]}]
      231 GETUPVAL                         R16 15
      232 SETTABLEKS                       R16 R15 K61 ["scroll"]
      234 MOVE                             R16 R1
      235 CALL                             R16 0 1
      236 SETTABLEKS                       R16 R15 K17 ["LayoutOrder"]
      238 DUPTABLE                         R16 K64 [{"PreviewText"}]
      239 GETUPVAL                         R17 6
      240 LOADK                            R18 K65 ["TextBox"]
      241 DUPTABLE                         R19 K81 [{["TextEditable"] = False, ["ClearTextOnFocus"] = False, ["AutomaticSize"], ["TextColor3"], ["TextTransparency"], ["TextXAlignment"], ["TextYAlignment"], ["TextSize"], ["LineHeight"], ["Text"], ["FontFace"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
      242 GETIMPORT                        R20 K83 [Enum.AutomaticSize.XY]
      244 SETTABLEKS                       R20 R19 K69 ["AutomaticSize"]
      246 GETTABLEKS                       R20 R3 K42 ["Color"]
      248 GETTABLEKS                       R20 R20 K20 ["Content"]
      250 GETTABLEKS                       R20 R20 K45 ["Muted"]
      252 GETTABLEKS                       R20 R20 K84 ["Color3"]
      254 SETTABLEKS                       R20 R19 K70 ["TextColor3"]
      256 GETTABLEKS                       R20 R3 K42 ["Color"]
      258 GETTABLEKS                       R20 R20 K20 ["Content"]
      260 GETTABLEKS                       R20 R20 K45 ["Muted"]
      262 GETTABLEKS                       R20 R20 K85 ["Transparency"]
      264 SETTABLEKS                       R20 R19 K71 ["TextTransparency"]
      266 GETIMPORT                        R20 K87 [Enum.TextXAlignment.Left]
      268 SETTABLEKS                       R20 R19 K72 ["TextXAlignment"]
      270 GETIMPORT                        R20 K89 [Enum.TextYAlignment.Top]
      272 SETTABLEKS                       R20 R19 K73 ["TextYAlignment"]
      274 GETTABLEKS                       R20 R3 K90 ["Typography"]
      276 GETTABLEKS                       R20 R20 K91 ["CaptionMedium"]
      278 GETTABLEKS                       R20 R20 K92 ["FontSize"]
      280 SETTABLEKS                       R20 R19 K74 ["TextSize"]
      282 GETTABLEKS                       R20 R3 K90 ["Typography"]
      284 GETTABLEKS                       R20 R20 K91 ["CaptionMedium"]
      286 GETTABLEKS                       R20 R20 K75 ["LineHeight"]
      288 SETTABLEKS                       R20 R19 K75 ["LineHeight"]
      290 SETTABLEKS                       R7 R19 K49 ["Text"]
      292 GETUPVAL                         R20 16
      293 GETTABLEKS                       R20 R20 K93 ["CODE_FONT"]
      295 SETTABLEKS                       R20 R19 K76 ["FontFace"]
      297 CALL                             R17 2 1
      298 SETTABLEKS                       R17 R16 K63 ["PreviewText"]
      300 CALL                             R13 3 1
      301 SETTABLEKS                       R13 R12 K20 ["Content"]
      303 CALL                             R9 3 -1
      304 RETURN                           R9 -1

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
       67 GETTABLEKS                       R10 R0 K10 ["Util"]
       69 GETTABLEKS                       R10 R10 K20 ["capDisplayText"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K10 ["Util"]
       76 GETTABLEKS                       R11 R11 K21 ["isContentStreaming"]
       78 CALL                             R10 1 1
       79 GETTABLEKS                       R11 R1 K22 ["Icon"]
       81 GETTABLEKS                       R12 R1 K23 ["ScrollView"]
       83 GETTABLEKS                       R13 R1 K24 ["Text"]
       85 GETTABLEKS                       R14 R1 K25 ["Enums"]
       87 GETTABLEKS                       R14 R14 K26 ["Visibility"]
       89 GETTABLEKS                       R15 R1 K27 ["View"]
       91 GETTABLEKS                       R16 R1 K28 ["Hooks"]
       93 GETTABLEKS                       R16 R16 K29 ["useTokens"]
       95 GETTABLEKS                       R17 R3 K30 ["createNextOrder"]
       97 GETTABLEKS                       R18 R2 K31 ["createElement"]
       99 DUPTABLE                         R19 K38 [{"CanvasSize", "AutomaticSize", "AutomaticCanvasSize", "ScrollingDirection", "scrollBarVisibility", "HorizontalScrollBarInset"}]
      100 GETIMPORT                        R20 K41 [UDim2.fromOffset]
      102 LOADN                            R21 0
      103 LOADN                            R22 0
      104 CALL                             R20 2 1
      105 SETTABLEKS                       R20 R19 K32 ["CanvasSize"]
      107 GETIMPORT                        R20 K44 [Enum.AutomaticSize.Y]
      109 SETTABLEKS                       R20 R19 K33 ["AutomaticSize"]
      111 GETIMPORT                        R20 K46 [Enum.AutomaticSize.X]
      113 SETTABLEKS                       R20 R19 K34 ["AutomaticCanvasSize"]
      115 GETIMPORT                        R20 K47 [Enum.ScrollingDirection.X]
      117 SETTABLEKS                       R20 R19 K35 ["ScrollingDirection"]
      119 GETTABLEKS                       R20 R14 K48 ["Auto"]
      121 SETTABLEKS                       R20 R19 K36 ["scrollBarVisibility"]
      123 GETIMPORT                        R20 K51 [Enum.ScrollBarInset.Always]
      125 SETTABLEKS                       R20 R19 K37 ["HorizontalScrollBarInset"]
      127 DUPTABLE                         R20 K54 [{["Search"] = "search"}]
      128 DUPTABLE                         R21 K55 [{"search"}]
      129 GETTABLEKS                       R22 R1 K25 ["Enums"]
      131 GETTABLEKS                       R22 R22 K56 ["IconName"]
      133 GETTABLEKS                       R22 R22 K57 ["MagnifyingGlass"]
      135 SETTABLEKS                       R22 R21 K53 ["search"]
      137 DUPCLOSURE                       R22 K58 [PROTO_3]
      138 CAPTURE                          VAL R17
      139 CAPTURE                          VAL R21
      140 CAPTURE                          VAL R16
      141 CAPTURE                          VAL R2
      142 CAPTURE                          VAL R7
      143 CAPTURE                          VAL R9
      144 CAPTURE                          VAL R18
      145 CAPTURE                          VAL R15
      146 CAPTURE                          VAL R6
      147 CAPTURE                          VAL R11
      148 CAPTURE                          VAL R1
      149 CAPTURE                          VAL R13
      150 CAPTURE                          VAL R10
      151 CAPTURE                          VAL R5
      152 CAPTURE                          VAL R12
      153 CAPTURE                          VAL R19
      154 CAPTURE                          VAL R8
      155 DUPTABLE                         R23 K62 [{"getText", "toMeta", "fromMeta"}]
      156 DUPCLOSURE                       R24 K63 [PROTO_4]
      157 SETTABLEKS                       R24 R23 K59 ["getText"]
      159 DUPCLOSURE                       R24 K64 [PROTO_5]
      160 SETTABLEKS                       R24 R23 K60 ["toMeta"]
      162 DUPCLOSURE                       R24 K65 [PROTO_6]
      163 SETTABLEKS                       R24 R23 K61 ["fromMeta"]
      165 DUPTABLE                         R24 K71 [{["Type"] = "Summarized", ["ContentWidget"], ["Serialization"], ["Icons"]}]
      166 GETTABLEKS                       R25 R2 K72 ["memo"]
      168 MOVE                             R26 R22
      169 CALL                             R25 1 1
      170 SETTABLEKS                       R25 R24 K68 ["ContentWidget"]
      172 SETTABLEKS                       R23 R24 K69 ["Serialization"]
      174 SETTABLEKS                       R20 R24 K70 ["Icons"]
      176 RETURN                           R24 1
