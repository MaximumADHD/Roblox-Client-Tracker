PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 RETURN                           R0 1
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+16]
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K0 ["parseJSONForKey"]
        9 GETUPVAL                         R1 1
       10 LOADK                            R2 K1 ["new_skill_body"]
       11 CALL                             R0 2 1
       12 JUMPIF                           R0 ; [+8]
       13 GETUPVAL                         R0 2
       14 GETTABLEKS                       R0 R0 K0 ["parseJSONForKey"]
       16 GETUPVAL                         R1 1
       17 LOADK                            R2 K2 ["skill_body"]
       18 CALL                             R0 2 1
       19 JUMPIF                           R0 ; [+1]
       20 LOADK                            R0 K3 [""]
       21 RETURN                           R0 1
       22 LOADK                            R0 K3 [""]
       23 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["AbsoluteCanvasSize"]
        3 GETTABLEKS                       R3 R3 K1 ["Y"]
        5 FASTCALL2K                       MATH_MIN R3 K2 ; [+4]
        7 LOADK                            R4 K2 [200]
        8 GETIMPORT                        R2 K5 [math.min]
       10 CALL                             R2 2 1
       11 CALL                             R1 1 0
       12 GETUPVAL                         R1 1
       13 JUMPIFNOT                        R1 ; [+21]
       14 GETIMPORT                        R1 K8 [Vector2.new]
       16 LOADN                            R2 0
       17 LOADN                            R4 0
       18 GETTABLEKS                       R6 R0 K0 ["AbsoluteCanvasSize"]
       20 GETTABLEKS                       R6 R6 K1 ["Y"]
       22 GETTABLEKS                       R7 R0 K9 ["AbsoluteSize"]
       24 GETTABLEKS                       R7 R7 K1 ["Y"]
       26 SUB                              R5 R6 R7
       27 FASTCALL2                        MATH_MAX R4 R5 ; [+3]
       29 GETIMPORT                        R3 K11 [math.max]
       31 CALL                             R3 2 1
       32 CALL                             R1 2 1
       33 SETTABLEKS                       R1 R0 K12 ["CanvasPosition"]
       35 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 LOADN                            R2 1
        3 LOADN                            R3 0
        4 LOADN                            R4 0
        5 MOVE                             R5 R0
        6 CALL                             R1 4 -1
        7 RETURN                           R1 -1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["toolUse"]
        2 GETTABLEKS                       R2 R0 K1 ["toolResult"]
        4 GETTABLEKS                       R4 R0 K2 ["streaming"]
        6 JUMPIFNOT                        R4 ; [+5]
        7 GETTABLEKS                       R3 R0 K2 ["streaming"]
        9 GETTABLEKS                       R3 R3 K0 ["toolUse"]
       11 JUMP                             ; [+1]
       12 LOADNIL                          R3
       13 LOADNIL                          R4
       14 JUMPIFNOT                        R1 ; [+15]
       15 GETIMPORT                        R5 K5 [string.find]
       17 GETTABLEKS                       R6 R1 K6 ["name"]
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R7 R7 K7 ["EditSkill"]
       22 LOADN                            R8 1
       23 LOADB                            R9 1
       24 CALL                             R5 4 1
       25 JUMPIFNOTEQKNIL                  R5 ; [+2]
       27 LOADB                            R4 0 +1
       28 LOADB                            R4 1
       29 JUMP                             ; [+35]
       30 JUMPIFNOT                        R3 ; [+33]
       31 LOADB                            R5 1
       32 GETIMPORT                        R6 K5 [string.find]
       34 MOVE                             R7 R3
       35 LOADK                            R8 K8 ["new_skill_body"]
       36 LOADN                            R9 1
       37 LOADB                            R10 1
       38 CALL                             R6 4 1
       39 JUMPIFNOTEQKNIL                  R6 ; [+22]
       41 LOADB                            R5 1
       42 GETIMPORT                        R6 K5 [string.find]
       44 MOVE                             R7 R3
       45 LOADK                            R8 K9 ["new_name"]
       46 LOADN                            R9 1
       47 LOADB                            R10 1
       48 CALL                             R6 4 1
       49 JUMPIFNOTEQKNIL                  R6 ; [+12]
       51 GETIMPORT                        R6 K5 [string.find]
       53 MOVE                             R7 R3
       54 LOADK                            R8 K10 ["new_description"]
       55 LOADN                            R9 1
       56 LOADB                            R10 1
       57 CALL                             R6 4 1
       58 JUMPIFNOTEQKNIL                  R6 ; [+2]
       60 LOADB                            R5 0 +1
       61 LOADB                            R5 1
       62 MOVE                             R4 R5
       63 JUMP                             ; [+1]
       64 LOADB                            R4 0
       65 JUMPIFNOT                        R1 ; [+3]
       66 GETTABLEKS                       R5 R1 K11 ["input"]
       68 JUMP                             ; [+1]
       69 GETUPVAL                         R5 1
       70 JUMPIFNOT                        R4 ; [+8]
       71 GETTABLEKS                       R6 R5 K9 ["new_name"]
       73 JUMPIF                           R6 ; [+8]
       74 GETTABLEKS                       R6 R5 K12 ["skill_name"]
       76 JUMPIF                           R6 ; [+5]
       77 LOADK                            R6 K13 [""]
       78 JUMP                             ; [+3]
       79 GETTABLEKS                       R7 R5 K12 ["skill_name"]
       81 ORK                              R6 R7 K13 [""]
       82 JUMPIFNOT                        R4 ; [+3]
       83 GETTABLEKS                       R7 R5 K8 ["new_skill_body"]
       85 JUMP                             ; [+2]
       86 GETTABLEKS                       R7 R5 K14 ["skill_body"]
       88 JUMPIFEQKNIL                     R2 ; [+2]
       90 LOADB                            R8 0 +1
       91 LOADB                            R8 1
       92 GETUPVAL                         R9 2
       93 GETTABLEKS                       R9 R9 K15 ["useMemo"]
       95 NEWCLOSURE                       R10 P0
       96 CAPTURE                          VAL R7
       97 CAPTURE                          VAL R3
       98 CAPTURE                          UPVAL U3
       99 NEWTABLE                         R11 0 3
      101 GETTABLEKS                       R12 R0 K16 ["body"]
      103 MOVE                             R13 R7
      104 MOVE                             R14 R3
      105 SETLIST                          R11 R12 3 [1]
      107 CALL                             R9 2 1
      108 LOADNIL                          R10
      109 JUMPIFNOT                        R2 ; [+8]
      110 GETTABLEKS                       R11 R2 K17 ["isError"]
      112 JUMPIFNOT                        R11 ; [+5]
      113 JUMPIFNOT                        R4 ; [+2]
      114 LOADK                            R10 K18 ["Failed to edit skill"]
      115 JUMP                             ; [+42]
      116 LOADK                            R10 K19 ["Failed to create skill"]
      117 JUMP                             ; [+40]
      118 JUMPIFNOT                        R2 ; [+23]
      119 JUMPIFNOT                        R4 ; [+11]
      120 GETUPVAL                         R11 4
      121 LOADK                            R13 K7 ["EditSkill"]
      122 LOADK                            R14 K20 ["Edited"]
      123 DUPTABLE                         R15 K21 [{"name"}]
      124 SETTABLEKS                       R6 R15 K6 ["name"]
      126 NAMECALL                         R11 R11 K22 ["getText"]
      128 CALL                             R11 4 1
      129 MOVE                             R10 R11
      130 JUMP                             ; [+27]
      131 GETUPVAL                         R11 4
      132 LOADK                            R13 K23 ["CreateSkill"]
      133 LOADK                            R14 K24 ["Created"]
      134 DUPTABLE                         R15 K21 [{"name"}]
      135 SETTABLEKS                       R6 R15 K6 ["name"]
      137 NAMECALL                         R11 R11 K22 ["getText"]
      139 CALL                             R11 4 1
      140 MOVE                             R10 R11
      141 JUMP                             ; [+16]
      142 JUMPIFNOT                        R4 ; [+8]
      143 GETUPVAL                         R11 4
      144 LOADK                            R13 K7 ["EditSkill"]
      145 LOADK                            R14 K25 ["Editing"]
      146 NAMECALL                         R11 R11 K22 ["getText"]
      148 CALL                             R11 3 1
      149 MOVE                             R10 R11
      150 JUMP                             ; [+7]
      151 GETUPVAL                         R11 4
      152 LOADK                            R13 K23 ["CreateSkill"]
      153 LOADK                            R14 K26 ["Creating"]
      154 NAMECALL                         R11 R11 K22 ["getText"]
      156 CALL                             R11 3 1
      157 MOVE                             R10 R11
      158 GETUPVAL                         R11 5
      159 CALL                             R11 0 1
      160 GETUPVAL                         R12 2
      161 GETTABLEKS                       R12 R12 K27 ["useBinding"]
      163 LOADN                            R13 200
      164 CALL                             R12 1 2
      165 GETUPVAL                         R14 2
      166 GETTABLEKS                       R14 R14 K28 ["useCallback"]
      168 NEWCLOSURE                       R15 P1
      169 CAPTURE                          VAL R13
      170 CAPTURE                          VAL R8
      171 NEWTABLE                         R16 0 2
      173 MOVE                             R17 R8
      174 MOVE                             R18 R13
      175 SETLIST                          R16 R17 2 [1]
      177 CALL                             R14 2 1
      178 LOADNIL                          R15
      179 LENGTH                           R16 R9
      180 LOADN                            R17 0
      181 JUMPIFNOTLT                      R17 R16 ; [+73]
      183 JUMPIFNOT                        R8 ; [+59]
      184 GETUPVAL                         R16 6
      185 GETUPVAL                         R17 7
      186 DUPTABLE                         R18 K33 [{"Size", "layout", "scroll", "onAbsoluteCanvasSizeChanged"}]
      187 DUPCLOSURE                       R21 K34 [PROTO_2]
      188 NAMECALL                         R19 R12 K35 ["map"]
      190 CALL                             R19 2 1
      191 SETTABLEKS                       R19 R18 K29 ["Size"]
      193 DUPTABLE                         R19 K38 [{"FillDirection", "SortOrder"}]
      194 GETIMPORT                        R20 K41 [Enum.FillDirection.Vertical]
      196 SETTABLEKS                       R20 R19 K36 ["FillDirection"]
      198 GETIMPORT                        R20 K43 [Enum.SortOrder.LayoutOrder]
      200 SETTABLEKS                       R20 R19 K37 ["SortOrder"]
      202 SETTABLEKS                       R19 R18 K30 ["layout"]
      204 DUPTABLE                         R19 K47 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      205 GETIMPORT                        R20 K50 [Enum.AutomaticSize.Y]
      207 SETTABLEKS                       R20 R19 K44 ["AutomaticCanvasSize"]
      209 GETIMPORT                        R20 K53 [UDim2.new]
      211 LOADN                            R21 0
      212 LOADN                            R22 0
      213 LOADN                            R23 0
      214 LOADN                            R24 0
      215 CALL                             R20 4 1
      216 SETTABLEKS                       R20 R19 K45 ["CanvasSize"]
      218 GETIMPORT                        R20 K54 [Enum.ScrollingDirection.Y]
      220 SETTABLEKS                       R20 R19 K46 ["ScrollingDirection"]
      222 SETTABLEKS                       R19 R18 K31 ["scroll"]
      224 SETTABLEKS                       R14 R18 K32 ["onAbsoluteCanvasSizeChanged"]
      226 DUPTABLE                         R19 K56 [{"Content"}]
      227 GETUPVAL                         R20 6
      228 GETUPVAL                         R21 8
      229 DUPTABLE                         R22 K60 [{["markdown"], ["messageId"], ["LayoutOrder"] = 1}]
      230 SETTABLEKS                       R9 R22 K57 ["markdown"]
      232 GETTABLEKS                       R24 R0 K61 ["contentId"]
      234 ORK                              R23 R24 K13 [""]
      235 SETTABLEKS                       R23 R22 K58 ["messageId"]
      237 CALL                             R20 2 1
      238 SETTABLEKS                       R20 R19 K55 ["Content"]
      240 CALL                             R16 3 1
      241 MOVE                             R15 R16
      242 JUMP                             ; [+12]
      243 GETUPVAL                         R16 6
      244 GETUPVAL                         R17 8
      245 DUPTABLE                         R18 K62 [{"markdown", "messageId"}]
      246 SETTABLEKS                       R9 R18 K57 ["markdown"]
      248 GETTABLEKS                       R20 R0 K61 ["contentId"]
      250 ORK                              R19 R20 K13 [""]
      251 SETTABLEKS                       R19 R18 K58 ["messageId"]
      253 CALL                             R16 2 1
      254 MOVE                             R15 R16
      255 GETUPVAL                         R16 6
      256 GETUPVAL                         R17 9
      257 GETTABLEKS                       R17 R17 K63 ["Root"]
      259 DUPTABLE                         R18 K66 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
      260 GETTABLEKS                       R19 R0 K42 ["LayoutOrder"]
      262 SETTABLEKS                       R19 R18 K42 ["LayoutOrder"]
      264 GETTABLEKS                       R19 R0 K64 ["expanded"]
      266 SETTABLEKS                       R19 R18 K64 ["expanded"]
      268 GETTABLEKS                       R19 R0 K61 ["contentId"]
      270 SETTABLEKS                       R19 R18 K61 ["contentId"]
      272 GETTABLEKS                       R19 R0 K65 ["editThisContent"]
      274 SETTABLEKS                       R19 R18 K65 ["editThisContent"]
      276 DUPTABLE                         R19 K68 [{"Header", "Content"}]
      277 GETUPVAL                         R20 6
      278 GETUPVAL                         R21 9
      279 GETTABLEKS                       R21 R21 K67 ["Header"]
      281 DUPTABLE                         R22 K69 [{"LayoutOrder"}]
      282 MOVE                             R23 R11
      283 CALL                             R23 0 1
      284 SETTABLEKS                       R23 R22 K42 ["LayoutOrder"]
      286 DUPTABLE                         R23 K71 [{"HeaderText"}]
      287 GETUPVAL                         R24 6
      288 GETUPVAL                         R25 10
      289 DUPTABLE                         R26 K75 [{["tag"] = "size-0-full auto-x text-label-small text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      290 SETTABLEKS                       R10 R26 K74 ["Text"]
      292 MOVE                             R27 R11
      293 CALL                             R27 0 1
      294 SETTABLEKS                       R27 R26 K42 ["LayoutOrder"]
      296 DUPTABLE                         R27 K77 [{"Shimmer"}]
      297 JUMPIFNOT                        R8 ; [+4]
      298 GETUPVAL                         R28 6
      299 GETUPVAL                         R29 11
      300 CALL                             R28 1 1
      301 JUMP                             ; [+1]
      302 LOADNIL                          R28
      303 SETTABLEKS                       R28 R27 K76 ["Shimmer"]
      305 CALL                             R24 3 1
      306 SETTABLEKS                       R24 R23 K70 ["HeaderText"]
      308 CALL                             R20 3 1
      309 SETTABLEKS                       R20 R19 K67 ["Header"]
      311 JUMPIFNOT                        R15 ; [+14]
      312 GETUPVAL                         R20 6
      313 GETUPVAL                         R21 9
      314 GETTABLEKS                       R21 R21 K55 ["Content"]
      316 DUPTABLE                         R22 K81 [{["tag"] = "col fill size-0-0 auto-y", ["LayoutOrder"], ["UseVisible"] = True}]
      317 MOVE                             R23 R11
      318 CALL                             R23 0 1
      319 SETTABLEKS                       R23 R22 K42 ["LayoutOrder"]
      321 DUPTABLE                         R23 K83 [{"Body"}]
      322 SETTABLEKS                       R15 R23 K82 ["Body"]
      324 CALL                             R20 3 1
      325 JUMP                             ; [+1]
      326 LOADNIL                          R20
      327 SETTABLEKS                       R20 R19 K55 ["Content"]
      329 CALL                             R16 3 -1
      330 RETURN                           R16 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Accordion"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["AssistantHarness"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Components"]
       32 GETTABLEKS                       R5 R5 K11 ["MarkdownText"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Util"]
       39 GETTABLEKS                       R6 R6 K13 ["OutputParser"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K8 ["Parent"]
       46 GETTABLEKS                       R7 R7 K14 ["React"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K8 ["Parent"]
       53 GETTABLEKS                       R8 R8 K15 ["ReactUtils"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K6 ["Components"]
       60 GETTABLEKS                       R9 R9 K16 ["ShimmerGradient"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K17 ["Resources"]
       67 GETTABLEKS                       R10 R10 K18 ["Localization"]
       69 GETTABLEKS                       R10 R10 K19 ["Translator"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K20 ["Types"]
       76 CALL                             R10 1 1
       77 GETTABLEKS                       R11 R2 K21 ["Engine"]
       79 GETTABLEKS                       R11 R11 K22 ["Providers"]
       81 GETTABLEKS                       R11 R11 K23 ["ToolNames"]
       83 GETTABLEKS                       R12 R3 K24 ["ScrollView"]
       85 GETTABLEKS                       R13 R3 K25 ["Text"]
       87 GETTABLEKS                       R14 R7 K26 ["createNextOrder"]
       89 GETTABLEKS                       R15 R6 K27 ["createElement"]
       91 NEWTABLE                         R16 0 0
       93 DUPCLOSURE                       R17 K28 [PROTO_3]
       94 CAPTURE                          VAL R11
       95 CAPTURE                          VAL R16
       96 CAPTURE                          VAL R6
       97 CAPTURE                          VAL R5
       98 CAPTURE                          VAL R9
       99 CAPTURE                          VAL R14
      100 CAPTURE                          VAL R15
      101 CAPTURE                          VAL R12
      102 CAPTURE                          VAL R4
      103 CAPTURE                          VAL R1
      104 CAPTURE                          VAL R13
      105 CAPTURE                          VAL R8
      106 DUPTABLE                         R18 K35 [{["Type"] = "CreateSkill", ["ContentWidget"], ["StreamToolUse"] = True, ["AutoExpand"]}]
      107 GETTABLEKS                       R19 R6 K36 ["memo"]
      109 MOVE                             R20 R17
      110 CALL                             R19 1 1
      111 SETTABLEKS                       R19 R18 K31 ["ContentWidget"]
      113 DUPTABLE                         R19 K39 [{["expandWhileGenerating"] = True, ["collapseOnComplete"] = True}]
      114 SETTABLEKS                       R19 R18 K34 ["AutoExpand"]
      116 RETURN                           R18 1
