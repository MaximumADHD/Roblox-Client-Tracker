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
      152 JUMPIFNOT                        R17 ; [+56]
      153 GETUPVAL                         R18 10
      154 GETTABLEKS                       R18 R18 K44 ["FFlagAssistantUseBuilderIcons"]
      156 JUMPIFNOT                        R18 ; [+35]
      157 GETUPVAL                         R17 5
      158 GETUPVAL                         R18 8
      159 DUPTABLE                         R19 K45 [{"name", "style", "size", "LayoutOrder", "testId"}]
      160 SETTABLEKS                       R2 R19 K32 ["name"]
      162 GETTABLEKS                       R20 R3 K42 ["Color"]
      164 GETTABLEKS                       R20 R20 K20 ["Content"]
      166 GETTABLEKS                       R20 R20 K46 ["Muted"]
      168 SETTABLEKS                       R20 R19 K35 ["style"]
      170 GETUPVAL                         R20 9
      171 GETTABLEKS                       R20 R20 K38 ["Enums"]
      173 GETTABLEKS                       R20 R20 K47 ["IconSize"]
      175 GETTABLEKS                       R20 R20 K48 ["XSmall"]
      177 SETTABLEKS                       R20 R19 K33 ["size"]
      179 MOVE                             R20 R1
      180 CALL                             R20 0 1
      181 SETTABLEKS                       R20 R19 K17 ["LayoutOrder"]
      183 GETUPVAL                         R20 7
      184 GETTABLEKS                       R20 R20 K26 ["Summarized"]
      186 GETTABLEKS                       R20 R20 K29 ["Icon"]
      188 SETTABLEKS                       R20 R19 K24 ["testId"]
      190 CALL                             R17 2 1
      191 JUMP                             ; [+17]
      192 GETUPVAL                         R17 5
      193 GETUPVAL                         R18 11
      194 DUPTABLE                         R19 K51 [{["Image"], ["tag"] = "position-center-center anchor-center-center size-300-300 content-muted", ["LayoutOrder"], ["testId"]}]
      195 SETTABLEKS                       R2 R19 K49 ["Image"]
      197 MOVE                             R20 R1
      198 CALL                             R20 0 1
      199 SETTABLEKS                       R20 R19 K17 ["LayoutOrder"]
      201 GETUPVAL                         R20 7
      202 GETTABLEKS                       R20 R20 K26 ["Summarized"]
      204 GETTABLEKS                       R20 R20 K29 ["Icon"]
      206 SETTABLEKS                       R20 R19 K24 ["testId"]
      208 CALL                             R17 2 1
      209 SETTABLEKS                       R17 R16 K29 ["Icon"]
      211 GETUPVAL                         R17 5
      212 GETUPVAL                         R18 12
      213 DUPTABLE                         R19 K54 [{["tag"] = "size-0-full text-label-small text-align-x-left text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      214 SETTABLEKS                       R5 R19 K53 ["Text"]
      216 MOVE                             R20 R1
      217 CALL                             R20 0 1
      218 SETTABLEKS                       R20 R19 K17 ["LayoutOrder"]
      220 DUPTABLE                         R20 K57 [{"UIFlexItem", "Shimmer"}]
      221 GETUPVAL                         R21 5
      222 LOADK                            R22 K55 ["UIFlexItem"]
      223 DUPTABLE                         R23 K59 [{"FlexMode"}]
      224 GETIMPORT                        R24 K63 [Enum.UIFlexMode.Fill]
      226 SETTABLEKS                       R24 R23 K58 ["FlexMode"]
      228 CALL                             R21 2 1
      229 SETTABLEKS                       R21 R20 K55 ["UIFlexItem"]
      231 GETUPVAL                         R21 13
      232 MOVE                             R22 R0
      233 CALL                             R21 1 1
      234 JUMPIFNOT                        R21 ; [+3]
      235 GETUPVAL                         R21 5
      236 GETUPVAL                         R22 14
      237 CALL                             R21 1 1
      238 SETTABLEKS                       R21 R20 K56 ["Shimmer"]
      240 CALL                             R17 3 1
      241 SETTABLEKS                       R17 R16 K30 ["SummaryText"]
      243 CALL                             R13 3 1
      244 SETTABLEKS                       R13 R12 K19 ["Header"]
      246 MOVE                             R13 R4
      247 JUMPIFNOT                        R13 ; [+75]
      248 MOVE                             R13 R7
      249 JUMPIFNOT                        R13 ; [+73]
      250 GETUPVAL                         R13 5
      251 GETUPVAL                         R14 15
      252 DUPTABLE                         R15 K66 [{["tag"] = "size-full-0 auto-y padding-small stroke-default radius-small bg-shift-300", ["scroll"], ["LayoutOrder"]}]
      253 GETUPVAL                         R16 16
      254 SETTABLEKS                       R16 R15 K65 ["scroll"]
      256 MOVE                             R16 R1
      257 CALL                             R16 0 1
      258 SETTABLEKS                       R16 R15 K17 ["LayoutOrder"]
      260 DUPTABLE                         R16 K68 [{"PreviewText"}]
      261 GETUPVAL                         R17 5
      262 LOADK                            R18 K69 ["TextBox"]
      263 DUPTABLE                         R19 K85 [{["TextEditable"] = False, ["ClearTextOnFocus"] = False, ["AutomaticSize"], ["TextColor3"], ["TextTransparency"], ["TextXAlignment"], ["TextYAlignment"], ["TextSize"], ["LineHeight"], ["Text"], ["FontFace"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
      264 GETIMPORT                        R20 K87 [Enum.AutomaticSize.XY]
      266 SETTABLEKS                       R20 R19 K73 ["AutomaticSize"]
      268 GETTABLEKS                       R20 R3 K42 ["Color"]
      270 GETTABLEKS                       R20 R20 K20 ["Content"]
      272 GETTABLEKS                       R20 R20 K46 ["Muted"]
      274 GETTABLEKS                       R20 R20 K88 ["Color3"]
      276 SETTABLEKS                       R20 R19 K74 ["TextColor3"]
      278 GETTABLEKS                       R20 R3 K42 ["Color"]
      280 GETTABLEKS                       R20 R20 K20 ["Content"]
      282 GETTABLEKS                       R20 R20 K46 ["Muted"]
      284 GETTABLEKS                       R20 R20 K89 ["Transparency"]
      286 SETTABLEKS                       R20 R19 K75 ["TextTransparency"]
      288 GETIMPORT                        R20 K91 [Enum.TextXAlignment.Left]
      290 SETTABLEKS                       R20 R19 K76 ["TextXAlignment"]
      292 GETIMPORT                        R20 K93 [Enum.TextYAlignment.Top]
      294 SETTABLEKS                       R20 R19 K77 ["TextYAlignment"]
      296 GETTABLEKS                       R20 R3 K94 ["Typography"]
      298 GETTABLEKS                       R20 R20 K95 ["CaptionMedium"]
      300 GETTABLEKS                       R20 R20 K96 ["FontSize"]
      302 SETTABLEKS                       R20 R19 K78 ["TextSize"]
      304 GETTABLEKS                       R20 R3 K94 ["Typography"]
      306 GETTABLEKS                       R20 R20 K95 ["CaptionMedium"]
      308 GETTABLEKS                       R20 R20 K79 ["LineHeight"]
      310 SETTABLEKS                       R20 R19 K79 ["LineHeight"]
      312 SETTABLEKS                       R7 R19 K53 ["Text"]
      314 GETUPVAL                         R20 17
      315 GETTABLEKS                       R20 R20 K97 ["CODE_FONT"]
      317 SETTABLEKS                       R20 R19 K80 ["FontFace"]
      319 CALL                             R17 2 1
      320 SETTABLEKS                       R17 R16 K67 ["PreviewText"]
      322 CALL                             R13 3 1
      323 SETTABLEKS                       R13 R12 K20 ["Content"]
      325 CALL                             R9 3 -1
      326 RETURN                           R9 -1

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
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Parent"]
       16 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K7 ["Parent"]
       23 GETTABLEKS                       R4 R4 K9 ["React"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K7 ["Parent"]
       30 GETTABLEKS                       R5 R5 K10 ["ReactUtils"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K11 ["Util"]
       37 GETTABLEKS                       R6 R6 K12 ["Serializer"]
       39 GETTABLEKS                       R6 R6 K13 ["SerializerTypes"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K14 ["Components"]
       46 GETTABLEKS                       R7 R7 K15 ["ShimmerGradient"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K11 ["Util"]
       53 GETTABLEKS                       R8 R8 K16 ["TestIds"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K17 ["Resources"]
       60 GETTABLEKS                       R9 R9 K18 ["Localization"]
       62 GETTABLEKS                       R9 R9 K19 ["Translator"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K20 ["Types"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R11 R0 K11 ["Util"]
       74 GETTABLEKS                       R11 R11 K21 ["isContentStreaming"]
       76 CALL                             R10 1 1
       77 GETTABLEKS                       R11 R2 K22 ["Icon"]
       79 GETTABLEKS                       R12 R2 K23 ["ScrollView"]
       81 GETTABLEKS                       R13 R2 K24 ["Text"]
       83 GETTABLEKS                       R14 R2 K25 ["Enums"]
       85 GETTABLEKS                       R14 R14 K26 ["Visibility"]
       87 GETTABLEKS                       R15 R2 K27 ["View"]
       89 GETTABLEKS                       R16 R2 K28 ["Image"]
       91 GETTABLEKS                       R17 R2 K29 ["Hooks"]
       93 GETTABLEKS                       R17 R17 K30 ["useTokens"]
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
      127 DUPTABLE                         R21 K55 [{["Search"] = "search"}]
      128 DUPTABLE                         R22 K56 [{"search"}]
      129 GETTABLEKS                       R24 R1 K57 ["FFlagAssistantUseBuilderIcons"]
      131 JUMPIFNOT                        R24 ; [+7]
      132 GETTABLEKS                       R23 R2 K25 ["Enums"]
      134 GETTABLEKS                       R23 R23 K58 ["IconName"]
      136 GETTABLEKS                       R23 R23 K59 ["MagnifyingGlass"]
      138 JUMP                             ; [+1]
      139 LOADK                            R23 K60 ["icons/common/search_small"]
      140 SETTABLEKS                       R23 R22 K54 ["search"]
      142 DUPCLOSURE                       R23 K61 [PROTO_3]
      143 CAPTURE                          VAL R18
      144 CAPTURE                          VAL R22
      145 CAPTURE                          VAL R17
      146 CAPTURE                          VAL R3
      147 CAPTURE                          VAL R8
      148 CAPTURE                          VAL R19
      149 CAPTURE                          VAL R15
      150 CAPTURE                          VAL R7
      151 CAPTURE                          VAL R11
      152 CAPTURE                          VAL R2
      153 CAPTURE                          VAL R1
      154 CAPTURE                          VAL R16
      155 CAPTURE                          VAL R13
      156 CAPTURE                          VAL R10
      157 CAPTURE                          VAL R6
      158 CAPTURE                          VAL R12
      159 CAPTURE                          VAL R20
      160 CAPTURE                          VAL R9
      161 DUPTABLE                         R24 K65 [{"getText", "toMeta", "fromMeta"}]
      162 DUPCLOSURE                       R25 K66 [PROTO_4]
      163 SETTABLEKS                       R25 R24 K62 ["getText"]
      165 DUPCLOSURE                       R25 K67 [PROTO_5]
      166 SETTABLEKS                       R25 R24 K63 ["toMeta"]
      168 DUPCLOSURE                       R25 K68 [PROTO_6]
      169 SETTABLEKS                       R25 R24 K64 ["fromMeta"]
      171 DUPTABLE                         R25 K74 [{["Type"] = "Summarized", ["ContentWidget"], ["Serialization"], ["Icons"]}]
      172 GETTABLEKS                       R26 R3 K75 ["memo"]
      174 MOVE                             R27 R23
      175 CALL                             R26 1 1
      176 SETTABLEKS                       R26 R25 K71 ["ContentWidget"]
      178 SETTABLEKS                       R24 R25 K72 ["Serialization"]
      180 SETTABLEKS                       R21 R25 K73 ["Icons"]
      182 RETURN                           R25 1
