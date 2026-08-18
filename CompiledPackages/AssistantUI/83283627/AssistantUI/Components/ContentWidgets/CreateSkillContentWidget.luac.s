PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+5]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K1 ["body"]
        5 ORK                              R0 R1 K0 [""]
        6 RETURN                           R0 1
        7 GETUPVAL                         R0 2
        8 JUMPIFNOT                        R0 ; [+2]
        9 GETUPVAL                         R0 2
       10 RETURN                           R0 1
       11 GETUPVAL                         R0 3
       12 JUMPIFNOT                        R0 ; [+16]
       13 GETUPVAL                         R0 4
       14 GETTABLEKS                       R0 R0 K2 ["parseJSONForKey"]
       16 GETUPVAL                         R1 3
       17 LOADK                            R2 K3 ["new_skill_body"]
       18 CALL                             R0 2 1
       19 JUMPIF                           R0 ; [+8]
       20 GETUPVAL                         R0 4
       21 GETTABLEKS                       R0 R0 K2 ["parseJSONForKey"]
       23 GETUPVAL                         R1 3
       24 LOADK                            R2 K4 ["skill_body"]
       25 CALL                             R0 2 1
       26 JUMPIF                           R0 ; [+1]
       27 LOADK                            R0 K0 [""]
       28 RETURN                           R0 1
       29 LOADK                            R0 K0 [""]
       30 RETURN                           R0 1

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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantSplitToolsAndWidgets"]
        3 GETTABLEKS                       R2 R0 K1 ["toolUse"]
        5 GETTABLEKS                       R3 R0 K2 ["toolResult"]
        7 GETTABLEKS                       R5 R0 K3 ["streaming"]
        9 JUMPIFNOT                        R5 ; [+5]
       10 GETTABLEKS                       R4 R0 K3 ["streaming"]
       12 GETTABLEKS                       R4 R4 K1 ["toolUse"]
       14 JUMP                             ; [+1]
       15 LOADNIL                          R4
       16 LOADNIL                          R5
       17 JUMPIFNOT                        R2 ; [+15]
       18 GETIMPORT                        R6 K6 [string.find]
       20 GETTABLEKS                       R7 R2 K7 ["name"]
       22 GETUPVAL                         R8 1
       23 GETTABLEKS                       R8 R8 K8 ["EditSkill"]
       25 LOADN                            R9 1
       26 LOADB                            R10 1
       27 CALL                             R6 4 1
       28 JUMPIFNOTEQKNIL                  R6 ; [+2]
       30 LOADB                            R5 0 +1
       31 LOADB                            R5 1
       32 JUMP                             ; [+35]
       33 JUMPIFNOT                        R4 ; [+33]
       34 LOADB                            R6 1
       35 GETIMPORT                        R7 K6 [string.find]
       37 MOVE                             R8 R4
       38 LOADK                            R9 K9 ["new_skill_body"]
       39 LOADN                            R10 1
       40 LOADB                            R11 1
       41 CALL                             R7 4 1
       42 JUMPIFNOTEQKNIL                  R7 ; [+22]
       44 LOADB                            R6 1
       45 GETIMPORT                        R7 K6 [string.find]
       47 MOVE                             R8 R4
       48 LOADK                            R9 K10 ["new_name"]
       49 LOADN                            R10 1
       50 LOADB                            R11 1
       51 CALL                             R7 4 1
       52 JUMPIFNOTEQKNIL                  R7 ; [+12]
       54 GETIMPORT                        R7 K6 [string.find]
       56 MOVE                             R8 R4
       57 LOADK                            R9 K11 ["new_description"]
       58 LOADN                            R10 1
       59 LOADB                            R11 1
       60 CALL                             R7 4 1
       61 JUMPIFNOTEQKNIL                  R7 ; [+2]
       63 LOADB                            R6 0 +1
       64 LOADB                            R6 1
       65 MOVE                             R5 R6
       66 JUMP                             ; [+1]
       67 LOADB                            R5 0
       68 JUMPIFNOT                        R2 ; [+3]
       69 GETTABLEKS                       R6 R2 K12 ["input"]
       71 JUMP                             ; [+1]
       72 GETUPVAL                         R6 2
       73 JUMPIFNOT                        R5 ; [+8]
       74 GETTABLEKS                       R7 R6 K10 ["new_name"]
       76 JUMPIF                           R7 ; [+8]
       77 GETTABLEKS                       R7 R6 K13 ["skill_name"]
       79 JUMPIF                           R7 ; [+5]
       80 LOADK                            R7 K14 [""]
       81 JUMP                             ; [+3]
       82 GETTABLEKS                       R8 R6 K13 ["skill_name"]
       84 ORK                              R7 R8 K14 [""]
       85 JUMPIFNOT                        R5 ; [+3]
       86 GETTABLEKS                       R8 R6 K9 ["new_skill_body"]
       88 JUMP                             ; [+2]
       89 GETTABLEKS                       R8 R6 K15 ["skill_body"]
       91 JUMPIFNOT                        R1 ; [+5]
       92 JUMPIFEQKNIL                     R3 ; [+2]
       94 LOADB                            R9 0 +1
       95 LOADB                            R9 1
       96 JUMP                             ; [+6]
       97 GETTABLEKS                       R10 R0 K16 ["inProgress"]
       99 JUMPIFEQKB                       R10 TRUE ; [+2]
      101 LOADB                            R9 0 +1
      102 LOADB                            R9 1
      103 GETUPVAL                         R10 3
      104 GETTABLEKS                       R10 R10 K17 ["useMemo"]
      106 NEWCLOSURE                       R11 P0
      107 CAPTURE                          VAL R1
      108 CAPTURE                          VAL R0
      109 CAPTURE                          VAL R8
      110 CAPTURE                          VAL R4
      111 CAPTURE                          UPVAL U4
      112 NEWTABLE                         R12 0 4
      114 MOVE                             R13 R1
      115 GETTABLEKS                       R14 R0 K18 ["body"]
      117 MOVE                             R15 R8
      118 MOVE                             R16 R4
      119 SETLIST                          R12 R13 4 [1]
      121 CALL                             R10 2 1
      122 LOADNIL                          R11
      123 JUMPIF                           R1 ; [+3]
      124 GETTABLEKS                       R11 R0 K19 ["stage"]
      126 JUMP                             ; [+49]
      127 JUMPIFNOT                        R3 ; [+8]
      128 GETTABLEKS                       R12 R3 K20 ["isError"]
      130 JUMPIFNOT                        R12 ; [+5]
      131 JUMPIFNOT                        R5 ; [+2]
      132 LOADK                            R11 K21 ["Failed to edit skill"]
      133 JUMP                             ; [+42]
      134 LOADK                            R11 K22 ["Failed to create skill"]
      135 JUMP                             ; [+40]
      136 JUMPIFNOT                        R3 ; [+23]
      137 JUMPIFNOT                        R5 ; [+11]
      138 GETUPVAL                         R12 5
      139 LOADK                            R14 K8 ["EditSkill"]
      140 LOADK                            R15 K23 ["Edited"]
      141 DUPTABLE                         R16 K24 [{"name"}]
      142 SETTABLEKS                       R7 R16 K7 ["name"]
      144 NAMECALL                         R12 R12 K25 ["getText"]
      146 CALL                             R12 4 1
      147 MOVE                             R11 R12
      148 JUMP                             ; [+27]
      149 GETUPVAL                         R12 5
      150 LOADK                            R14 K26 ["CreateSkill"]
      151 LOADK                            R15 K27 ["Created"]
      152 DUPTABLE                         R16 K24 [{"name"}]
      153 SETTABLEKS                       R7 R16 K7 ["name"]
      155 NAMECALL                         R12 R12 K25 ["getText"]
      157 CALL                             R12 4 1
      158 MOVE                             R11 R12
      159 JUMP                             ; [+16]
      160 JUMPIFNOT                        R5 ; [+8]
      161 GETUPVAL                         R12 5
      162 LOADK                            R14 K8 ["EditSkill"]
      163 LOADK                            R15 K28 ["Editing"]
      164 NAMECALL                         R12 R12 K25 ["getText"]
      166 CALL                             R12 3 1
      167 MOVE                             R11 R12
      168 JUMP                             ; [+7]
      169 GETUPVAL                         R12 5
      170 LOADK                            R14 K26 ["CreateSkill"]
      171 LOADK                            R15 K29 ["Creating"]
      172 NAMECALL                         R12 R12 K25 ["getText"]
      174 CALL                             R12 3 1
      175 MOVE                             R11 R12
      176 GETUPVAL                         R12 6
      177 CALL                             R12 0 1
      178 GETUPVAL                         R13 3
      179 GETTABLEKS                       R13 R13 K30 ["useBinding"]
      181 LOADN                            R14 200
      182 CALL                             R13 1 2
      183 GETUPVAL                         R15 3
      184 GETTABLEKS                       R15 R15 K31 ["useCallback"]
      186 NEWCLOSURE                       R16 P1
      187 CAPTURE                          VAL R14
      188 CAPTURE                          VAL R9
      189 NEWTABLE                         R17 0 2
      191 MOVE                             R18 R9
      192 MOVE                             R19 R14
      193 SETLIST                          R17 R18 2 [1]
      195 CALL                             R15 2 1
      196 LOADNIL                          R16
      197 LENGTH                           R17 R10
      198 LOADN                            R18 0
      199 JUMPIFNOTLT                      R18 R17 ; [+73]
      201 JUMPIFNOT                        R9 ; [+59]
      202 GETUPVAL                         R17 7
      203 GETUPVAL                         R18 8
      204 DUPTABLE                         R19 K36 [{"Size", "layout", "scroll", "onAbsoluteCanvasSizeChanged"}]
      205 DUPCLOSURE                       R22 K37 [PROTO_2]
      206 NAMECALL                         R20 R13 K38 ["map"]
      208 CALL                             R20 2 1
      209 SETTABLEKS                       R20 R19 K32 ["Size"]
      211 DUPTABLE                         R20 K41 [{"FillDirection", "SortOrder"}]
      212 GETIMPORT                        R21 K44 [Enum.FillDirection.Vertical]
      214 SETTABLEKS                       R21 R20 K39 ["FillDirection"]
      216 GETIMPORT                        R21 K46 [Enum.SortOrder.LayoutOrder]
      218 SETTABLEKS                       R21 R20 K40 ["SortOrder"]
      220 SETTABLEKS                       R20 R19 K33 ["layout"]
      222 DUPTABLE                         R20 K50 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      223 GETIMPORT                        R21 K53 [Enum.AutomaticSize.Y]
      225 SETTABLEKS                       R21 R20 K47 ["AutomaticCanvasSize"]
      227 GETIMPORT                        R21 K56 [UDim2.new]
      229 LOADN                            R22 0
      230 LOADN                            R23 0
      231 LOADN                            R24 0
      232 LOADN                            R25 0
      233 CALL                             R21 4 1
      234 SETTABLEKS                       R21 R20 K48 ["CanvasSize"]
      236 GETIMPORT                        R21 K57 [Enum.ScrollingDirection.Y]
      238 SETTABLEKS                       R21 R20 K49 ["ScrollingDirection"]
      240 SETTABLEKS                       R20 R19 K34 ["scroll"]
      242 SETTABLEKS                       R15 R19 K35 ["onAbsoluteCanvasSizeChanged"]
      244 DUPTABLE                         R20 K59 [{"Content"}]
      245 GETUPVAL                         R21 7
      246 GETUPVAL                         R22 9
      247 DUPTABLE                         R23 K63 [{["markdown"], ["messageId"], ["LayoutOrder"] = 1}]
      248 SETTABLEKS                       R10 R23 K60 ["markdown"]
      250 GETTABLEKS                       R25 R0 K64 ["contentId"]
      252 ORK                              R24 R25 K14 [""]
      253 SETTABLEKS                       R24 R23 K61 ["messageId"]
      255 CALL                             R21 2 1
      256 SETTABLEKS                       R21 R20 K58 ["Content"]
      258 CALL                             R17 3 1
      259 MOVE                             R16 R17
      260 JUMP                             ; [+12]
      261 GETUPVAL                         R17 7
      262 GETUPVAL                         R18 9
      263 DUPTABLE                         R19 K65 [{"markdown", "messageId"}]
      264 SETTABLEKS                       R10 R19 K60 ["markdown"]
      266 GETTABLEKS                       R21 R0 K64 ["contentId"]
      268 ORK                              R20 R21 K14 [""]
      269 SETTABLEKS                       R20 R19 K61 ["messageId"]
      271 CALL                             R17 2 1
      272 MOVE                             R16 R17
      273 GETUPVAL                         R17 7
      274 GETUPVAL                         R18 10
      275 GETTABLEKS                       R18 R18 K66 ["Root"]
      277 DUPTABLE                         R19 K69 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
      278 GETTABLEKS                       R20 R0 K45 ["LayoutOrder"]
      280 SETTABLEKS                       R20 R19 K45 ["LayoutOrder"]
      282 GETTABLEKS                       R20 R0 K67 ["expanded"]
      284 SETTABLEKS                       R20 R19 K67 ["expanded"]
      286 GETTABLEKS                       R20 R0 K64 ["contentId"]
      288 SETTABLEKS                       R20 R19 K64 ["contentId"]
      290 GETTABLEKS                       R20 R0 K68 ["editThisContent"]
      292 SETTABLEKS                       R20 R19 K68 ["editThisContent"]
      294 DUPTABLE                         R20 K71 [{"Header", "Content"}]
      295 GETUPVAL                         R21 7
      296 GETUPVAL                         R22 10
      297 GETTABLEKS                       R22 R22 K70 ["Header"]
      299 DUPTABLE                         R23 K72 [{"LayoutOrder"}]
      300 MOVE                             R24 R12
      301 CALL                             R24 0 1
      302 SETTABLEKS                       R24 R23 K45 ["LayoutOrder"]
      304 DUPTABLE                         R24 K74 [{"HeaderText"}]
      305 GETUPVAL                         R25 7
      306 GETUPVAL                         R26 11
      307 DUPTABLE                         R27 K78 [{["tag"] = "size-0-full auto-x text-label-small text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      308 SETTABLEKS                       R11 R27 K77 ["Text"]
      310 MOVE                             R28 R12
      311 CALL                             R28 0 1
      312 SETTABLEKS                       R28 R27 K45 ["LayoutOrder"]
      314 DUPTABLE                         R28 K80 [{"Shimmer"}]
      315 JUMPIFNOT                        R9 ; [+4]
      316 GETUPVAL                         R29 7
      317 GETUPVAL                         R30 12
      318 CALL                             R29 1 1
      319 JUMP                             ; [+1]
      320 LOADNIL                          R29
      321 SETTABLEKS                       R29 R28 K79 ["Shimmer"]
      323 CALL                             R25 3 1
      324 SETTABLEKS                       R25 R24 K73 ["HeaderText"]
      326 CALL                             R21 3 1
      327 SETTABLEKS                       R21 R20 K70 ["Header"]
      329 JUMPIFNOT                        R16 ; [+14]
      330 GETUPVAL                         R21 7
      331 GETUPVAL                         R22 10
      332 GETTABLEKS                       R22 R22 K58 ["Content"]
      334 DUPTABLE                         R23 K84 [{["tag"] = "col fill size-0-0 auto-y", ["LayoutOrder"], ["UseVisible"] = True}]
      335 MOVE                             R24 R12
      336 CALL                             R24 0 1
      337 SETTABLEKS                       R24 R23 K45 ["LayoutOrder"]
      339 DUPTABLE                         R24 K86 [{"Body"}]
      340 SETTABLEKS                       R16 R24 K85 ["Body"]
      342 CALL                             R21 3 1
      343 JUMP                             ; [+1]
      344 LOADNIL                          R21
      345 SETTABLEKS                       R21 R20 K58 ["Content"]
      347 CALL                             R17 3 -1
      348 RETURN                           R17 -1

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
       23 GETTABLEKS                       R4 R0 K10 ["Flags"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K8 ["Parent"]
       30 GETTABLEKS                       R5 R5 K11 ["Foundation"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K6 ["Components"]
       37 GETTABLEKS                       R6 R6 K12 ["MarkdownText"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K13 ["Util"]
       44 GETTABLEKS                       R7 R7 K14 ["OutputParser"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K8 ["Parent"]
       51 GETTABLEKS                       R8 R8 K15 ["React"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K8 ["Parent"]
       58 GETTABLEKS                       R9 R9 K16 ["ReactUtils"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R10 R0 K6 ["Components"]
       65 GETTABLEKS                       R10 R10 K17 ["ShimmerGradient"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R11 R0 K18 ["Resources"]
       72 GETTABLEKS                       R11 R11 K19 ["Localization"]
       74 GETTABLEKS                       R11 R11 K20 ["Translator"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K21 ["Types"]
       81 CALL                             R11 1 1
       82 GETTABLEKS                       R12 R2 K22 ["Engine"]
       84 GETTABLEKS                       R12 R12 K23 ["Providers"]
       86 GETTABLEKS                       R12 R12 K24 ["ToolNames"]
       88 GETTABLEKS                       R13 R4 K25 ["ScrollView"]
       90 GETTABLEKS                       R14 R4 K26 ["Text"]
       92 GETTABLEKS                       R15 R8 K27 ["createNextOrder"]
       94 GETTABLEKS                       R16 R7 K28 ["createElement"]
       96 NEWTABLE                         R17 0 0
       98 DUPCLOSURE                       R18 K29 [PROTO_3]
       99 CAPTURE                          VAL R3
      100 CAPTURE                          VAL R12
      101 CAPTURE                          VAL R17
      102 CAPTURE                          VAL R7
      103 CAPTURE                          VAL R6
      104 CAPTURE                          VAL R10
      105 CAPTURE                          VAL R15
      106 CAPTURE                          VAL R16
      107 CAPTURE                          VAL R13
      108 CAPTURE                          VAL R5
      109 CAPTURE                          VAL R1
      110 CAPTURE                          VAL R14
      111 CAPTURE                          VAL R9
      112 DUPTABLE                         R19 K38 [{["Type"] = "CreateSkill", ["ContentWidget"], ["Serialization"] = , ["StreamToolUse"] = True, ["AutoExpand"]}]
      113 GETTABLEKS                       R20 R7 K39 ["memo"]
      115 MOVE                             R21 R18
      116 CALL                             R20 1 1
      117 SETTABLEKS                       R20 R19 K32 ["ContentWidget"]
      119 DUPTABLE                         R20 K42 [{["expandWhileGenerating"] = True, ["collapseOnComplete"] = True}]
      120 SETTABLEKS                       R20 R19 K37 ["AutoExpand"]
      122 RETURN                           R19 1
