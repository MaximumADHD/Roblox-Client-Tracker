PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onMarkerInputBegan"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["frameIndex"]
        6 MOVE                             R3 R0
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["onResizeInputBegan"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["frameIndex"]
        6 MOVE                             R4 R0
        7 MOVE                             R5 R1
        8 CALL                             R2 3 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R0 K0 ["borderColor"]
        4 GETTABLEKS                       R3 R0 K1 ["borderTransparency"]
        6 GETTABLEKS                       R4 R1 K2 ["Color"]
        8 GETTABLEKS                       R4 R4 K3 ["Surface"]
       10 GETTABLEKS                       R4 R4 K4 ["Surface_100"]
       12 GETTABLEKS                       R4 R4 K5 ["Color3"]
       14 GETTABLEKS                       R5 R1 K2 ["Color"]
       16 GETTABLEKS                       R5 R5 K3 ["Surface"]
       18 GETTABLEKS                       R5 R5 K6 ["Surface_200"]
       20 GETTABLEKS                       R5 R5 K5 ["Color3"]
       22 GETTABLEKS                       R6 R0 K7 ["timelineHeight"]
       24 GETTABLEKS                       R7 R0 K8 ["keyframeAreaHeight"]
       26 JUMPIF                           R7 ; [+6]
       27 GETTABLEKS                       R9 R0 K10 ["trackHeight"]
       29 GETTABLEKS                       R10 R0 K7 ["timelineHeight"]
       31 SUB                              R8 R9 R10
       32 SUBK                             R7 R8 K9 [2]
       33 GETTABLEKS                       R8 R0 K10 ["trackHeight"]
       35 GETTABLEKS                       R9 R0 K11 ["duration"]
       37 LOADN                            R10 0
       38 JUMPIFNOTLE                      R9 R10 ; [+3]
       40 LOADNIL                          R10
       41 RETURN                           R10 1
       42 NEWTABLE                         R10 4 0
       44 GETUPVAL                         R11 1
       45 GETUPVAL                         R12 2
       46 DUPTABLE                         R13 K17 [{["Size"], ["Position"], ["backgroundStyle"], ["BorderSizePixel"] = 0}]
       47 GETIMPORT                        R14 K20 [UDim2.new]
       49 LOADN                            R15 1
       50 LOADN                            R16 -2
       51 LOADN                            R17 0
       52 MOVE                             R18 R6
       53 CALL                             R14 4 1
       54 SETTABLEKS                       R14 R13 K12 ["Size"]
       56 GETIMPORT                        R14 K22 [UDim2.fromOffset]
       58 LOADN                            R15 1
       59 LOADN                            R16 1
       60 CALL                             R14 2 1
       61 SETTABLEKS                       R14 R13 K13 ["Position"]
       63 DUPTABLE                         R14 K23 [{"Color3"}]
       64 SETTABLEKS                       R5 R14 K5 ["Color3"]
       66 SETTABLEKS                       R14 R13 K14 ["backgroundStyle"]
       68 CALL                             R11 2 1
       69 SETTABLEKS                       R11 R10 K24 ["TimelineRow"]
       71 GETUPVAL                         R11 1
       72 GETUPVAL                         R12 2
       73 DUPTABLE                         R13 K17 [{["Size"], ["Position"], ["backgroundStyle"], ["BorderSizePixel"] = 0}]
       74 GETIMPORT                        R14 K20 [UDim2.new]
       76 LOADN                            R15 1
       77 LOADN                            R16 -2
       78 LOADN                            R17 0
       79 MOVE                             R18 R7
       80 CALL                             R14 4 1
       81 SETTABLEKS                       R14 R13 K12 ["Size"]
       83 GETIMPORT                        R14 K22 [UDim2.fromOffset]
       85 LOADN                            R15 1
       86 ADDK                             R16 R6 K25 [1]
       87 CALL                             R14 2 1
       88 SETTABLEKS                       R14 R13 K13 ["Position"]
       90 DUPTABLE                         R14 K23 [{"Color3"}]
       91 SETTABLEKS                       R4 R14 K5 ["Color3"]
       93 SETTABLEKS                       R14 R13 K14 ["backgroundStyle"]
       95 CALL                             R11 2 1
       96 SETTABLEKS                       R11 R10 K26 ["KeyframeArea"]
       98 GETUPVAL                         R11 1
       99 GETUPVAL                         R12 2
      100 DUPTABLE                         R13 K28 [{["Size"], ["Position"], ["backgroundStyle"], ["BorderSizePixel"] = 0, ["ZIndex"] = 2}]
      101 GETIMPORT                        R14 K20 [UDim2.new]
      103 LOADN                            R15 1
      104 LOADN                            R16 0
      105 LOADN                            R17 0
      106 LOADN                            R18 1
      107 CALL                             R14 4 1
      108 SETTABLEKS                       R14 R13 K12 ["Size"]
      110 GETIMPORT                        R14 K22 [UDim2.fromOffset]
      112 LOADN                            R15 0
      113 MOVE                             R16 R6
      114 CALL                             R14 2 1
      115 SETTABLEKS                       R14 R13 K13 ["Position"]
      117 DUPTABLE                         R14 K30 [{"Color3", "Transparency"}]
      118 SETTABLEKS                       R2 R14 K5 ["Color3"]
      120 SETTABLEKS                       R3 R14 K29 ["Transparency"]
      122 SETTABLEKS                       R14 R13 K14 ["backgroundStyle"]
      124 CALL                             R11 2 1
      125 SETTABLEKS                       R11 R10 K31 ["HorizontalSeparator"]
      127 GETTABLEKS                       R11 R0 K32 ["getTickInterval"]
      129 MOVE                             R12 R9
      130 CALL                             R11 1 1
      131 DIV                              R13 R9 R11
      132 FASTCALL1                        MATH_CEIL R13 ; [+2]
      133 GETIMPORT                        R12 K35 [math.ceil]
      135 CALL                             R12 1 1
      136 LOADN                            R15 0
      137 SUBK                             R13 R12 K25 [1]
      138 LOADN                            R14 1
      139 FORNPREP                         R13
      140 MUL                              R16 R15 R11
      141 DIV                              R17 R16 R9
      142 GETTABLEKS                       R18 R0 K36 ["formatTickLabel"]
      144 MOVE                             R19 R16
      145 MOVE                             R20 R11
      146 CALL                             R18 2 1
      147 LOADK                            R20 K37 ["label_"]
      148 FASTCALL1                        TOSTRING R15 ; [+3]
      149 MOVE                             R22 R15
      150 GETIMPORT                        R21 K39 [tostring]
      152 CALL                             R21 1 1
      153 CONCAT                           R19 R20 R21
      154 GETUPVAL                         R20 1
      155 GETUPVAL                         R21 3
      156 DUPTABLE                         R22 K44 [{["tag"] = "content-muted text-align-x-left auto-y", ["Position"], ["Text"], ["fontStyle"], ["ZIndex"] = 2}]
      157 GETIMPORT                        R23 K20 [UDim2.new]
      159 MOVE                             R24 R17
      160 LOADN                            R25 5
      161 LOADN                            R26 0
      162 LOADN                            R27 0
      163 CALL                             R23 4 1
      164 SETTABLEKS                       R23 R22 K13 ["Position"]
      166 SETTABLEKS                       R18 R22 K42 ["Text"]
      168 DUPTABLE                         R23 K47 [{["FontSize"] = 16}]
      169 SETTABLEKS                       R23 R22 K43 ["fontStyle"]
      171 CALL                             R20 2 1
      172 SETTABLE                         R20 R10 R19
      173 LOADN                            R19 0
      174 JUMPIFNOTLT                      R19 R15 ; [+43]
      176 LOADK                            R20 K48 ["divider_"]
      177 FASTCALL1                        TOSTRING R15 ; [+3]
      178 MOVE                             R22 R15
      179 GETIMPORT                        R21 K39 [tostring]
      181 CALL                             R21 1 1
      182 CONCAT                           R19 R20 R21
      183 GETUPVAL                         R20 1
      184 GETUPVAL                         R21 2
      185 DUPTABLE                         R22 K50 [{["Size"], ["Position"], ["AnchorPoint"], ["backgroundStyle"], ["BorderSizePixel"] = 0, ["ZIndex"] = 2}]
      186 GETIMPORT                        R23 K20 [UDim2.new]
      188 LOADN                            R24 0
      189 LOADN                            R25 1
      190 LOADN                            R26 1
      191 LOADN                            R27 0
      192 CALL                             R23 4 1
      193 SETTABLEKS                       R23 R22 K12 ["Size"]
      195 GETIMPORT                        R23 K52 [UDim2.fromScale]
      197 MOVE                             R24 R17
      198 LOADN                            R25 0
      199 CALL                             R23 2 1
      200 SETTABLEKS                       R23 R22 K13 ["Position"]
      202 GETIMPORT                        R23 K54 [Vector2.new]
      204 LOADK                            R24 K55 [0.5]
      205 LOADN                            R25 0
      206 CALL                             R23 2 1
      207 SETTABLEKS                       R23 R22 K49 ["AnchorPoint"]
      209 DUPTABLE                         R23 K30 [{"Color3", "Transparency"}]
      210 SETTABLEKS                       R2 R23 K5 ["Color3"]
      212 SETTABLEKS                       R3 R23 K29 ["Transparency"]
      214 SETTABLEKS                       R23 R22 K14 ["backgroundStyle"]
      216 CALL                             R20 2 1
      217 SETTABLE                         R20 R10 R19
      218 FORNLOOP                         R13
      219 GETTABLEKS                       R13 R0 K56 ["markers"]
      221 JUMPIFNOT                        R13 ; [+115]
      222 LOADK                            R15 K55 [0.5]
      223 MUL                              R14 R15 R7
      224 ADD                              R13 R6 R14
      225 GETTABLEKS                       R14 R0 K57 ["dragPreview"]
      227 JUMPIFNOT                        R14 ; [+3]
      228 GETTABLEKS                       R15 R14 K58 ["frameIndex"]
      230 JUMP                             ; [+2]
      231 GETTABLEKS                       R15 R0 K59 ["selectedFrameIndex"]
      233 GETTABLEKS                       R16 R0 K56 ["markers"]
      235 LOADNIL                          R17
      236 LOADNIL                          R18
      237 FORGPREP                         R16
      238 JUMPIFEQKNIL                     R14 ; [+9]
      240 GETTABLEKS                       R22 R14 K58 ["frameIndex"]
      242 GETTABLEKS                       R23 R20 K58 ["frameIndex"]
      244 JUMPIFNOTEQ                      R22 R23 ; [+3]
      246 MOVE                             R21 R14
      247 JUMP                             ; [+1]
      248 LOADNIL                          R21
      249 JUMPIFEQKNIL                     R21 ; [+4]
      251 GETTABLEKS                       R22 R21 K60 ["bounds"]
      253 JUMP                             ; [+2]
      254 GETTABLEKS                       R22 R20 K60 ["bounds"]
      256 GETTABLEKS                       R24 R20 K58 ["frameIndex"]
      258 JUMPIFEQ                         R15 R24 ; [+2]
      260 LOADB                            R23 0 +1
      261 LOADB                            R23 1
      262 LOADK                            R24 K61 ["marker_%*"]
      263 GETTABLEKS                       R26 R20 K58 ["frameIndex"]
      265 NAMECALL                         R24 R24 K62 ["format"]
      267 CALL                             R24 2 1
      268 GETUPVAL                         R25 1
      269 GETUPVAL                         R26 4
      270 DUPTABLE                         R27 K69 [{"bounds", "duration", "yCenter", "color", "isSelected", "draggedEdge", "onMoveInputBegan", "onResizeInputBegan"}]
      271 SETTABLEKS                       R22 R27 K60 ["bounds"]
      273 SETTABLEKS                       R9 R27 K11 ["duration"]
      275 SETTABLEKS                       R13 R27 K63 ["yCenter"]
      277 GETTABLEKS                       R29 R20 K70 ["isEdited"]
      279 JUMPIFNOT                        R29 ; [+9]
      280 GETTABLEKS                       R28 R1 K2 ["Color"]
      282 GETTABLEKS                       R28 R28 K71 ["System"]
      284 GETTABLEKS                       R28 R28 K72 ["Alert"]
      286 GETTABLEKS                       R28 R28 K5 ["Color3"]
      288 JUMP                             ; [+8]
      289 GETTABLEKS                       R28 R1 K2 ["Color"]
      291 GETTABLEKS                       R28 R28 K73 ["Content"]
      293 GETTABLEKS                       R28 R28 K74 ["Muted"]
      295 GETTABLEKS                       R28 R28 K5 ["Color3"]
      297 SETTABLEKS                       R28 R27 K64 ["color"]
      299 SETTABLEKS                       R23 R27 K65 ["isSelected"]
      301 JUMPIFEQKNIL                     R21 ; [+8]
      303 GETTABLEKS                       R29 R21 K75 ["kind"]
      305 JUMPIFEQKS                       R29 K76 ["move"] ; [+4]
      307 GETTABLEKS                       R28 R21 K75 ["kind"]
      309 JUMP                             ; [+1]
      310 LOADNIL                          R28
      311 SETTABLEKS                       R28 R27 K66 ["draggedEdge"]
      313 GETTABLEKS                       R29 R0 K77 ["onMarkerInputBegan"]
      315 JUMPIFNOT                        R29 ; [+4]
      316 NEWCLOSURE                       R28 P0
      317 CAPTURE                          VAL R0
      318 CAPTURE                          VAL R20
      319 JUMP                             ; [+1]
      320 LOADNIL                          R28
      321 SETTABLEKS                       R28 R27 K67 ["onMoveInputBegan"]
      323 GETTABLEKS                       R29 R0 K68 ["onResizeInputBegan"]
      325 JUMPIFNOT                        R29 ; [+4]
      326 NEWCLOSURE                       R28 P1
      327 CAPTURE                          VAL R0
      328 CAPTURE                          VAL R20
      329 JUMP                             ; [+1]
      330 LOADNIL                          R28
      331 SETTABLEKS                       R28 R27 K68 ["onResizeInputBegan"]
      333 CALL                             R25 2 1
      334 SETTABLE                         R25 R10 R24
      335 FORGLOOP                         R16 2 ; [-98]
      337 GETUPVAL                         R13 1
      338 GETUPVAL                         R14 2
      339 DUPTABLE                         R15 K78 [{"Size"}]
      340 GETIMPORT                        R16 K20 [UDim2.new]
      342 LOADN                            R17 1
      343 LOADN                            R18 0
      344 LOADN                            R19 0
      345 MOVE                             R20 R8
      346 CALL                             R16 4 1
      347 SETTABLEKS                       R16 R15 K12 ["Size"]
      349 MOVE                             R16 R10
      350 CALL                             R13 3 -1
      351 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETIMPORT                        R4 K1 [script]
       18 GETTABLEKS                       R4 R4 K4 ["Parent"]
       20 GETTABLEKS                       R4 R4 K8 ["KeyframeInterval"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K9 ["Util"]
       27 GETTABLEKS                       R5 R5 K10 ["AnimationGen"]
       29 GETTABLEKS                       R5 R5 K11 ["Posing"]
       31 GETTABLEKS                       R5 R5 K12 ["PoseInterval"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K6 [require]
       36 GETTABLEKS                       R6 R1 K13 ["React"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETIMPORT                        R7 K1 [script]
       43 GETTABLEKS                       R7 R7 K4 ["Parent"]
       45 GETTABLEKS                       R7 R7 K14 ["usePoseIntervalDrag"]
       47 CALL                             R6 1 1
       48 GETTABLEKS                       R7 R2 K15 ["Text"]
       50 GETTABLEKS                       R8 R2 K16 ["View"]
       52 GETTABLEKS                       R9 R2 K17 ["Hooks"]
       54 GETTABLEKS                       R9 R9 K18 ["useTokens"]
       56 GETTABLEKS                       R10 R5 K19 ["createElement"]
       58 DUPCLOSURE                       R11 K20 [PROTO_2]
       59 CAPTURE                          VAL R9
       60 CAPTURE                          VAL R10
       61 CAPTURE                          VAL R8
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R3
       64 RETURN                           R11 1
