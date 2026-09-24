PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onKeyframeInputBegan"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R1 K0 ["Color"]
        4 GETTABLEKS                       R2 R2 K1 ["OverMedia"]
        6 GETTABLEKS                       R2 R2 K2 ["OverMedia_0"]
        8 GETTABLEKS                       R2 R2 K3 ["Color3"]
       10 GETTABLEKS                       R3 R1 K0 ["Color"]
       12 GETTABLEKS                       R3 R3 K1 ["OverMedia"]
       14 GETTABLEKS                       R3 R3 K2 ["OverMedia_0"]
       16 GETTABLEKS                       R3 R3 K4 ["Transparency"]
       18 GETTABLEKS                       R4 R1 K0 ["Color"]
       20 GETTABLEKS                       R4 R4 K5 ["Surface"]
       22 GETTABLEKS                       R4 R4 K6 ["Surface_100"]
       24 GETTABLEKS                       R4 R4 K3 ["Color3"]
       26 GETTABLEKS                       R5 R1 K0 ["Color"]
       28 GETTABLEKS                       R5 R5 K5 ["Surface"]
       30 GETTABLEKS                       R5 R5 K7 ["Surface_200"]
       32 GETTABLEKS                       R5 R5 K3 ["Color3"]
       34 GETTABLEKS                       R6 R0 K8 ["timelineHeight"]
       36 GETTABLEKS                       R9 R0 K10 ["trackHeight"]
       38 GETTABLEKS                       R10 R0 K8 ["timelineHeight"]
       40 SUB                              R8 R9 R10
       41 SUBK                             R7 R8 K9 [2]
       42 GETTABLEKS                       R8 R0 K10 ["trackHeight"]
       44 GETTABLEKS                       R9 R0 K11 ["duration"]
       46 LOADN                            R10 0
       47 JUMPIFNOTLE                      R9 R10 ; [+3]
       49 LOADNIL                          R10
       50 RETURN                           R10 1
       51 NEWTABLE                         R10 4 0
       53 GETUPVAL                         R11 1
       54 GETUPVAL                         R12 2
       55 DUPTABLE                         R13 K17 [{["Size"], ["Position"], ["backgroundStyle"], ["BorderSizePixel"] = 0}]
       56 GETIMPORT                        R14 K20 [UDim2.new]
       58 LOADN                            R15 1
       59 LOADN                            R16 -2
       60 LOADN                            R17 0
       61 MOVE                             R18 R6
       62 CALL                             R14 4 1
       63 SETTABLEKS                       R14 R13 K12 ["Size"]
       65 GETIMPORT                        R14 K22 [UDim2.fromOffset]
       67 LOADN                            R15 1
       68 LOADN                            R16 1
       69 CALL                             R14 2 1
       70 SETTABLEKS                       R14 R13 K13 ["Position"]
       72 DUPTABLE                         R14 K23 [{"Color3"}]
       73 SETTABLEKS                       R5 R14 K3 ["Color3"]
       75 SETTABLEKS                       R14 R13 K14 ["backgroundStyle"]
       77 CALL                             R11 2 1
       78 SETTABLEKS                       R11 R10 K24 ["TimelineRow"]
       80 GETUPVAL                         R11 1
       81 GETUPVAL                         R12 2
       82 DUPTABLE                         R13 K17 [{["Size"], ["Position"], ["backgroundStyle"], ["BorderSizePixel"] = 0}]
       83 GETIMPORT                        R14 K20 [UDim2.new]
       85 LOADN                            R15 1
       86 LOADN                            R16 -2
       87 LOADN                            R17 0
       88 MOVE                             R18 R7
       89 CALL                             R14 4 1
       90 SETTABLEKS                       R14 R13 K12 ["Size"]
       92 GETIMPORT                        R14 K22 [UDim2.fromOffset]
       94 LOADN                            R15 1
       95 ADDK                             R16 R6 K25 [1]
       96 CALL                             R14 2 1
       97 SETTABLEKS                       R14 R13 K13 ["Position"]
       99 DUPTABLE                         R14 K23 [{"Color3"}]
      100 SETTABLEKS                       R4 R14 K3 ["Color3"]
      102 SETTABLEKS                       R14 R13 K14 ["backgroundStyle"]
      104 CALL                             R11 2 1
      105 SETTABLEKS                       R11 R10 K26 ["KeyframeArea"]
      107 GETUPVAL                         R11 1
      108 GETUPVAL                         R12 2
      109 DUPTABLE                         R13 K28 [{["Size"], ["Position"], ["backgroundStyle"], ["BorderSizePixel"] = 0, ["ZIndex"] = 2}]
      110 GETIMPORT                        R14 K20 [UDim2.new]
      112 LOADN                            R15 1
      113 LOADN                            R16 0
      114 LOADN                            R17 0
      115 LOADN                            R18 1
      116 CALL                             R14 4 1
      117 SETTABLEKS                       R14 R13 K12 ["Size"]
      119 GETIMPORT                        R14 K22 [UDim2.fromOffset]
      121 LOADN                            R15 0
      122 MOVE                             R16 R6
      123 CALL                             R14 2 1
      124 SETTABLEKS                       R14 R13 K13 ["Position"]
      126 DUPTABLE                         R14 K29 [{"Color3", "Transparency"}]
      127 SETTABLEKS                       R2 R14 K3 ["Color3"]
      129 SETTABLEKS                       R3 R14 K4 ["Transparency"]
      131 SETTABLEKS                       R14 R13 K14 ["backgroundStyle"]
      133 CALL                             R11 2 1
      134 SETTABLEKS                       R11 R10 K30 ["HorizontalSeparator"]
      136 GETUPVAL                         R11 3
      137 GETTABLEKS                       R11 R11 K31 ["getTickInterval"]
      139 MOVE                             R12 R9
      140 CALL                             R11 1 1
      141 DIV                              R13 R9 R11
      142 FASTCALL1                        MATH_CEIL R13 ; [+2]
      143 GETIMPORT                        R12 K34 [math.ceil]
      145 CALL                             R12 1 1
      146 LOADN                            R15 0
      147 SUBK                             R13 R12 K25 [1]
      148 LOADN                            R14 1
      149 FORNPREP                         R13
      150 MUL                              R16 R15 R11
      151 DIV                              R17 R16 R9
      152 GETUPVAL                         R18 3
      153 GETTABLEKS                       R18 R18 K35 ["formatTickLabel"]
      155 MOVE                             R19 R16
      156 MOVE                             R20 R11
      157 CALL                             R18 2 1
      158 LOADK                            R20 K36 ["label_"]
      159 FASTCALL1                        TOSTRING R15 ; [+3]
      160 MOVE                             R22 R15
      161 GETIMPORT                        R21 K38 [tostring]
      163 CALL                             R21 1 1
      164 CONCAT                           R19 R20 R21
      165 GETUPVAL                         R20 1
      166 GETUPVAL                         R21 4
      167 DUPTABLE                         R22 K43 [{["tag"] = "content-muted text-align-x-left auto-y", ["Position"], ["Text"], ["fontStyle"], ["ZIndex"] = 2}]
      168 GETIMPORT                        R23 K20 [UDim2.new]
      170 MOVE                             R24 R17
      171 LOADN                            R25 5
      172 LOADN                            R26 0
      173 LOADN                            R27 0
      174 CALL                             R23 4 1
      175 SETTABLEKS                       R23 R22 K13 ["Position"]
      177 SETTABLEKS                       R18 R22 K41 ["Text"]
      179 DUPTABLE                         R23 K46 [{["FontSize"] = 16}]
      180 SETTABLEKS                       R23 R22 K42 ["fontStyle"]
      182 CALL                             R20 2 1
      183 SETTABLE                         R20 R10 R19
      184 LOADN                            R19 0
      185 JUMPIFNOTLT                      R19 R15 ; [+43]
      187 LOADK                            R20 K47 ["divider_"]
      188 FASTCALL1                        TOSTRING R15 ; [+3]
      189 MOVE                             R22 R15
      190 GETIMPORT                        R21 K38 [tostring]
      192 CALL                             R21 1 1
      193 CONCAT                           R19 R20 R21
      194 GETUPVAL                         R20 1
      195 GETUPVAL                         R21 2
      196 DUPTABLE                         R22 K49 [{["Size"], ["Position"], ["AnchorPoint"], ["backgroundStyle"], ["BorderSizePixel"] = 0, ["ZIndex"] = 2}]
      197 GETIMPORT                        R23 K20 [UDim2.new]
      199 LOADN                            R24 0
      200 LOADN                            R25 1
      201 LOADN                            R26 1
      202 LOADN                            R27 0
      203 CALL                             R23 4 1
      204 SETTABLEKS                       R23 R22 K12 ["Size"]
      206 GETIMPORT                        R23 K51 [UDim2.fromScale]
      208 MOVE                             R24 R17
      209 LOADN                            R25 0
      210 CALL                             R23 2 1
      211 SETTABLEKS                       R23 R22 K13 ["Position"]
      213 GETIMPORT                        R23 K53 [Vector2.new]
      215 LOADK                            R24 K54 [0.5]
      216 LOADN                            R25 0
      217 CALL                             R23 2 1
      218 SETTABLEKS                       R23 R22 K48 ["AnchorPoint"]
      220 DUPTABLE                         R23 K29 [{"Color3", "Transparency"}]
      221 SETTABLEKS                       R2 R23 K3 ["Color3"]
      223 SETTABLEKS                       R3 R23 K4 ["Transparency"]
      225 SETTABLEKS                       R23 R22 K14 ["backgroundStyle"]
      227 CALL                             R20 2 1
      228 SETTABLE                         R20 R10 R19
      229 FORNLOOP                         R13
      230 GETTABLEKS                       R13 R0 K55 ["keyframeFrameIndices"]
      232 JUMPIFNOT                        R13 ; [+60]
      233 MULK                             R14 R7 K54 [0.5]
      234 ADD                              R13 R6 R14
      235 GETTABLEKS                       R14 R0 K55 ["keyframeFrameIndices"]
      237 LOADNIL                          R15
      238 LOADNIL                          R16
      239 FORGPREP                         R14
      240 GETUPVAL                         R19 3
      241 GETTABLEKS                       R19 R19 K56 ["frameIndexToTime"]
      243 MOVE                             R20 R18
      244 CALL                             R19 1 1
      245 LOADN                            R21 0
      246 JUMPIFNOTLT                      R21 R9 ; [+3]
      248 DIV                              R20 R19 R9
      249 JUMP                             ; [+1]
      250 LOADN                            R20 0
      251 GETTABLEKS                       R22 R0 K57 ["selectedFrameIndex"]
      253 JUMPIFEQ                         R22 R18 ; [+2]
      255 LOADB                            R21 0 +1
      256 LOADB                            R21 1
      257 LOADK                            R22 K58 ["keyframe_%*"]
      258 MOVE                             R24 R18
      259 NAMECALL                         R22 R22 K59 ["format"]
      261 CALL                             R22 2 1
      262 GETUPVAL                         R23 1
      263 GETUPVAL                         R24 5
      264 DUPTABLE                         R25 K65 [{"xRatio", "yCenter", "isSelected", "isClickable", "onInputBegan"}]
      265 SETTABLEKS                       R20 R25 K60 ["xRatio"]
      267 SETTABLEKS                       R13 R25 K61 ["yCenter"]
      269 SETTABLEKS                       R21 R25 K62 ["isSelected"]
      271 GETTABLEKS                       R27 R0 K66 ["onKeyframeInputBegan"]
      273 JUMPIFNOTEQKNIL                  R27 ; [+2]
      275 LOADB                            R26 0 +1
      276 LOADB                            R26 1
      277 SETTABLEKS                       R26 R25 K63 ["isClickable"]
      279 GETTABLEKS                       R27 R0 K66 ["onKeyframeInputBegan"]
      281 JUMPIFNOT                        R27 ; [+4]
      282 NEWCLOSURE                       R26 P0
      283 CAPTURE                          VAL R0
      284 CAPTURE                          VAL R18
      285 JUMP                             ; [+1]
      286 LOADNIL                          R26
      287 SETTABLEKS                       R26 R25 K64 ["onInputBegan"]
      289 CALL                             R23 2 1
      290 SETTABLE                         R23 R10 R22
      291 FORGLOOP                         R14 2 ; [-52]
      293 GETUPVAL                         R13 1
      294 GETUPVAL                         R14 2
      295 DUPTABLE                         R15 K67 [{"Size"}]
      296 GETIMPORT                        R16 K20 [UDim2.new]
      298 LOADN                            R17 1
      299 LOADN                            R18 0
      300 LOADN                            R19 0
      301 MOVE                             R20 R8
      302 CALL                             R16 4 1
      303 SETTABLEKS                       R16 R15 K12 ["Size"]
      305 MOVE                             R16 R10
      306 CALL                             R13 3 -1
      307 RETURN                           R13 -1

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
       20 GETTABLEKS                       R4 R4 K8 ["KeyframeDiamond"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R1 K9 ["React"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K10 ["Util"]
       32 GETTABLEKS                       R6 R6 K11 ["AnimationGen"]
       34 GETTABLEKS                       R6 R6 K12 ["ScrubbarUtils"]
       36 CALL                             R5 1 1
       37 GETTABLEKS                       R6 R2 K13 ["Text"]
       39 GETTABLEKS                       R7 R2 K14 ["View"]
       41 GETTABLEKS                       R8 R2 K15 ["Hooks"]
       43 GETTABLEKS                       R8 R8 K16 ["useTokens"]
       45 GETTABLEKS                       R9 R4 K17 ["createElement"]
       47 DUPCLOSURE                       R10 K18 [PROTO_1]
       48 CAPTURE                          VAL R8
       49 CAPTURE                          VAL R9
       50 CAPTURE                          VAL R7
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R3
       54 RETURN                           R10 1
