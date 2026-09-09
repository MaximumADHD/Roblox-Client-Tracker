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
       88 DUPTABLE                         R11 K18 [{["tag"] = "col gap-xsmall size-full-0 auto-xy", ["LayoutOrder"]}]
       89 GETTABLEKS                       R12 R0 K17 ["LayoutOrder"]
       91 SETTABLEKS                       R12 R11 K17 ["LayoutOrder"]
       93 DUPTABLE                         R12 K21 [{"Header", "Content"}]
       94 GETUPVAL                         R13 6
       95 GETUPVAL                         R14 7
       96 DUPTABLE                         R15 K25 [{["tag"] = "row align-y-center gap-xsmall size-full-600 radius-medium", ["onActivated"], ["LayoutOrder"], ["testId"]}]
       97 JUMPIFNOT                        R8 ; [+2]
       98 MOVE                             R16 R6
       99 JUMP                             ; [+1]
      100 LOADNIL                          R16
      101 SETTABLEKS                       R16 R15 K23 ["onActivated"]
      103 MOVE                             R16 R1
      104 CALL                             R16 0 1
      105 SETTABLEKS                       R16 R15 K17 ["LayoutOrder"]
      107 JUMPIFNOT                        R8 ; [+6]
      108 GETUPVAL                         R16 8
      109 GETTABLEKS                       R16 R16 K26 ["Summarized"]
      111 GETTABLEKS                       R16 R16 K27 ["Expand"]
      113 JUMP                             ; [+1]
      114 LOADNIL                          R16
      115 SETTABLEKS                       R16 R15 K24 ["testId"]
      117 DUPTABLE                         R16 K31 [{"ExpandIcon", "Icon", "SummaryText"}]
      118 MOVE                             R17 R8
      119 JUMPIFNOT                        R17 ; [+30]
      120 GETUPVAL                         R17 6
      121 GETUPVAL                         R18 9
      122 DUPTABLE                         R19 K37 [{["name"], ["size"] = 12, ["style"], ["LayoutOrder"] = -1}]
      123 JUMPIFNOT                        R4 ; [+8]
      124 GETUPVAL                         R20 10
      125 GETTABLEKS                       R20 R20 K38 ["Enums"]
      127 GETTABLEKS                       R20 R20 K39 ["IconName"]
      129 GETTABLEKS                       R20 R20 K40 ["ChevronSmallDown"]
      131 JUMP                             ; [+7]
      132 GETUPVAL                         R20 10
      133 GETTABLEKS                       R20 R20 K38 ["Enums"]
      135 GETTABLEKS                       R20 R20 K39 ["IconName"]
      137 GETTABLEKS                       R20 R20 K41 ["ChevronSmallRight"]
      139 SETTABLEKS                       R20 R19 K32 ["name"]
      141 GETTABLEKS                       R20 R3 K42 ["Color"]
      143 GETTABLEKS                       R20 R20 K20 ["Content"]
      145 GETTABLEKS                       R20 R20 K43 ["Emphasis"]
      147 SETTABLEKS                       R20 R19 K35 ["style"]
      149 CALL                             R17 2 1
      150 SETTABLEKS                       R17 R16 K28 ["ExpandIcon"]
      152 MOVE                             R17 R2
      153 JUMPIFNOT                        R17 ; [+56]
      154 GETUPVAL                         R18 11
      155 GETTABLEKS                       R18 R18 K44 ["FFlagAssistantUseBuilderIcons"]
      157 JUMPIFNOT                        R18 ; [+35]
      158 GETUPVAL                         R17 6
      159 GETUPVAL                         R18 9
      160 DUPTABLE                         R19 K45 [{"name", "style", "size", "LayoutOrder", "testId"}]
      161 SETTABLEKS                       R2 R19 K32 ["name"]
      163 GETTABLEKS                       R20 R3 K42 ["Color"]
      165 GETTABLEKS                       R20 R20 K20 ["Content"]
      167 GETTABLEKS                       R20 R20 K46 ["Muted"]
      169 SETTABLEKS                       R20 R19 K35 ["style"]
      171 GETUPVAL                         R20 10
      172 GETTABLEKS                       R20 R20 K38 ["Enums"]
      174 GETTABLEKS                       R20 R20 K47 ["IconSize"]
      176 GETTABLEKS                       R20 R20 K48 ["XSmall"]
      178 SETTABLEKS                       R20 R19 K33 ["size"]
      180 MOVE                             R20 R1
      181 CALL                             R20 0 1
      182 SETTABLEKS                       R20 R19 K17 ["LayoutOrder"]
      184 GETUPVAL                         R20 8
      185 GETTABLEKS                       R20 R20 K26 ["Summarized"]
      187 GETTABLEKS                       R20 R20 K29 ["Icon"]
      189 SETTABLEKS                       R20 R19 K24 ["testId"]
      191 CALL                             R17 2 1
      192 JUMP                             ; [+17]
      193 GETUPVAL                         R17 6
      194 GETUPVAL                         R18 12
      195 DUPTABLE                         R19 K51 [{["Image"], ["tag"] = "position-center-center anchor-center-center size-300-300 content-muted", ["LayoutOrder"], ["testId"]}]
      196 SETTABLEKS                       R2 R19 K49 ["Image"]
      198 MOVE                             R20 R1
      199 CALL                             R20 0 1
      200 SETTABLEKS                       R20 R19 K17 ["LayoutOrder"]
      202 GETUPVAL                         R20 8
      203 GETTABLEKS                       R20 R20 K26 ["Summarized"]
      205 GETTABLEKS                       R20 R20 K29 ["Icon"]
      207 SETTABLEKS                       R20 R19 K24 ["testId"]
      209 CALL                             R17 2 1
      210 SETTABLEKS                       R17 R16 K29 ["Icon"]
      212 GETUPVAL                         R17 6
      213 GETUPVAL                         R18 13
      214 DUPTABLE                         R19 K54 [{["tag"] = "size-0-full text-label-small text-align-x-left text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      215 SETTABLEKS                       R5 R19 K53 ["Text"]
      217 MOVE                             R20 R1
      218 CALL                             R20 0 1
      219 SETTABLEKS                       R20 R19 K17 ["LayoutOrder"]
      221 DUPTABLE                         R20 K57 [{"UIFlexItem", "Shimmer"}]
      222 GETUPVAL                         R21 6
      223 LOADK                            R22 K55 ["UIFlexItem"]
      224 DUPTABLE                         R23 K59 [{"FlexMode"}]
      225 GETIMPORT                        R24 K63 [Enum.UIFlexMode.Fill]
      227 SETTABLEKS                       R24 R23 K58 ["FlexMode"]
      229 CALL                             R21 2 1
      230 SETTABLEKS                       R21 R20 K55 ["UIFlexItem"]
      232 GETUPVAL                         R21 14
      233 MOVE                             R22 R0
      234 CALL                             R21 1 1
      235 JUMPIFNOT                        R21 ; [+3]
      236 GETUPVAL                         R21 6
      237 GETUPVAL                         R22 15
      238 CALL                             R21 1 1
      239 SETTABLEKS                       R21 R20 K56 ["Shimmer"]
      241 CALL                             R17 3 1
      242 SETTABLEKS                       R17 R16 K30 ["SummaryText"]
      244 CALL                             R13 3 1
      245 SETTABLEKS                       R13 R12 K19 ["Header"]
      247 MOVE                             R13 R4
      248 JUMPIFNOT                        R13 ; [+75]
      249 MOVE                             R13 R7
      250 JUMPIFNOT                        R13 ; [+73]
      251 GETUPVAL                         R13 6
      252 GETUPVAL                         R14 16
      253 DUPTABLE                         R15 K66 [{["tag"] = "size-full-0 auto-y padding-small stroke-default radius-small bg-shift-300", ["scroll"], ["LayoutOrder"]}]
      254 GETUPVAL                         R16 17
      255 SETTABLEKS                       R16 R15 K65 ["scroll"]
      257 MOVE                             R16 R1
      258 CALL                             R16 0 1
      259 SETTABLEKS                       R16 R15 K17 ["LayoutOrder"]
      261 DUPTABLE                         R16 K68 [{"PreviewText"}]
      262 GETUPVAL                         R17 6
      263 LOADK                            R18 K69 ["TextBox"]
      264 DUPTABLE                         R19 K85 [{["TextEditable"] = False, ["ClearTextOnFocus"] = False, ["AutomaticSize"], ["TextColor3"], ["TextTransparency"], ["TextXAlignment"], ["TextYAlignment"], ["TextSize"], ["LineHeight"], ["Text"], ["FontFace"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
      265 GETIMPORT                        R20 K87 [Enum.AutomaticSize.XY]
      267 SETTABLEKS                       R20 R19 K73 ["AutomaticSize"]
      269 GETTABLEKS                       R20 R3 K42 ["Color"]
      271 GETTABLEKS                       R20 R20 K20 ["Content"]
      273 GETTABLEKS                       R20 R20 K46 ["Muted"]
      275 GETTABLEKS                       R20 R20 K88 ["Color3"]
      277 SETTABLEKS                       R20 R19 K74 ["TextColor3"]
      279 GETTABLEKS                       R20 R3 K42 ["Color"]
      281 GETTABLEKS                       R20 R20 K20 ["Content"]
      283 GETTABLEKS                       R20 R20 K46 ["Muted"]
      285 GETTABLEKS                       R20 R20 K89 ["Transparency"]
      287 SETTABLEKS                       R20 R19 K75 ["TextTransparency"]
      289 GETIMPORT                        R20 K91 [Enum.TextXAlignment.Left]
      291 SETTABLEKS                       R20 R19 K76 ["TextXAlignment"]
      293 GETIMPORT                        R20 K93 [Enum.TextYAlignment.Top]
      295 SETTABLEKS                       R20 R19 K77 ["TextYAlignment"]
      297 GETTABLEKS                       R20 R3 K94 ["Typography"]
      299 GETTABLEKS                       R20 R20 K95 ["CaptionMedium"]
      301 GETTABLEKS                       R20 R20 K96 ["FontSize"]
      303 SETTABLEKS                       R20 R19 K78 ["TextSize"]
      305 GETTABLEKS                       R20 R3 K94 ["Typography"]
      307 GETTABLEKS                       R20 R20 K95 ["CaptionMedium"]
      309 GETTABLEKS                       R20 R20 K79 ["LineHeight"]
      311 SETTABLEKS                       R20 R19 K79 ["LineHeight"]
      313 SETTABLEKS                       R7 R19 K53 ["Text"]
      315 GETUPVAL                         R20 18
      316 GETTABLEKS                       R20 R20 K97 ["CODE_FONT"]
      318 SETTABLEKS                       R20 R19 K80 ["FontFace"]
      320 CALL                             R17 2 1
      321 SETTABLEKS                       R17 R16 K67 ["PreviewText"]
      323 CALL                             R13 3 1
      324 SETTABLEKS                       R13 R12 K20 ["Content"]
      326 CALL                             R9 3 -1
      327 RETURN                           R9 -1

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
       74 GETTABLEKS                       R11 R11 K21 ["capDisplayText"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K11 ["Util"]
       81 GETTABLEKS                       R12 R12 K22 ["isContentStreaming"]
       83 CALL                             R11 1 1
       84 GETTABLEKS                       R12 R2 K23 ["Icon"]
       86 GETTABLEKS                       R13 R2 K24 ["ScrollView"]
       88 GETTABLEKS                       R14 R2 K25 ["Text"]
       90 GETTABLEKS                       R15 R2 K26 ["Enums"]
       92 GETTABLEKS                       R15 R15 K27 ["Visibility"]
       94 GETTABLEKS                       R16 R2 K28 ["View"]
       96 GETTABLEKS                       R17 R2 K29 ["Image"]
       98 GETTABLEKS                       R18 R2 K30 ["Hooks"]
      100 GETTABLEKS                       R18 R18 K31 ["useTokens"]
      102 GETTABLEKS                       R19 R4 K32 ["createNextOrder"]
      104 GETTABLEKS                       R20 R3 K33 ["createElement"]
      106 DUPTABLE                         R21 K40 [{"CanvasSize", "AutomaticSize", "AutomaticCanvasSize", "ScrollingDirection", "scrollBarVisibility", "HorizontalScrollBarInset"}]
      107 GETIMPORT                        R22 K43 [UDim2.fromOffset]
      109 LOADN                            R23 0
      110 LOADN                            R24 0
      111 CALL                             R22 2 1
      112 SETTABLEKS                       R22 R21 K34 ["CanvasSize"]
      114 GETIMPORT                        R22 K46 [Enum.AutomaticSize.Y]
      116 SETTABLEKS                       R22 R21 K35 ["AutomaticSize"]
      118 GETIMPORT                        R22 K48 [Enum.AutomaticSize.X]
      120 SETTABLEKS                       R22 R21 K36 ["AutomaticCanvasSize"]
      122 GETIMPORT                        R22 K49 [Enum.ScrollingDirection.X]
      124 SETTABLEKS                       R22 R21 K37 ["ScrollingDirection"]
      126 GETTABLEKS                       R22 R15 K50 ["Auto"]
      128 SETTABLEKS                       R22 R21 K38 ["scrollBarVisibility"]
      130 GETIMPORT                        R22 K53 [Enum.ScrollBarInset.Always]
      132 SETTABLEKS                       R22 R21 K39 ["HorizontalScrollBarInset"]
      134 DUPTABLE                         R22 K56 [{["Search"] = "search"}]
      135 DUPTABLE                         R23 K57 [{"search"}]
      136 GETTABLEKS                       R25 R1 K58 ["FFlagAssistantUseBuilderIcons"]
      138 JUMPIFNOT                        R25 ; [+7]
      139 GETTABLEKS                       R24 R2 K26 ["Enums"]
      141 GETTABLEKS                       R24 R24 K59 ["IconName"]
      143 GETTABLEKS                       R24 R24 K60 ["MagnifyingGlass"]
      145 JUMP                             ; [+1]
      146 LOADK                            R24 K61 ["icons/common/search_small"]
      147 SETTABLEKS                       R24 R23 K55 ["search"]
      149 DUPCLOSURE                       R24 K62 [PROTO_3]
      150 CAPTURE                          VAL R19
      151 CAPTURE                          VAL R23
      152 CAPTURE                          VAL R18
      153 CAPTURE                          VAL R3
      154 CAPTURE                          VAL R8
      155 CAPTURE                          VAL R10
      156 CAPTURE                          VAL R20
      157 CAPTURE                          VAL R16
      158 CAPTURE                          VAL R7
      159 CAPTURE                          VAL R12
      160 CAPTURE                          VAL R2
      161 CAPTURE                          VAL R1
      162 CAPTURE                          VAL R17
      163 CAPTURE                          VAL R14
      164 CAPTURE                          VAL R11
      165 CAPTURE                          VAL R6
      166 CAPTURE                          VAL R13
      167 CAPTURE                          VAL R21
      168 CAPTURE                          VAL R9
      169 DUPTABLE                         R25 K66 [{"getText", "toMeta", "fromMeta"}]
      170 DUPCLOSURE                       R26 K67 [PROTO_4]
      171 SETTABLEKS                       R26 R25 K63 ["getText"]
      173 DUPCLOSURE                       R26 K68 [PROTO_5]
      174 SETTABLEKS                       R26 R25 K64 ["toMeta"]
      176 DUPCLOSURE                       R26 K69 [PROTO_6]
      177 SETTABLEKS                       R26 R25 K65 ["fromMeta"]
      179 DUPTABLE                         R26 K75 [{["Type"] = "Summarized", ["ContentWidget"], ["Serialization"], ["Icons"]}]
      180 GETTABLEKS                       R27 R3 K76 ["memo"]
      182 MOVE                             R28 R24
      183 CALL                             R27 1 1
      184 SETTABLEKS                       R27 R26 K72 ["ContentWidget"]
      186 SETTABLEKS                       R25 R26 K73 ["Serialization"]
      188 SETTABLEKS                       R22 R26 K74 ["Icons"]
      190 RETURN                           R26 1
