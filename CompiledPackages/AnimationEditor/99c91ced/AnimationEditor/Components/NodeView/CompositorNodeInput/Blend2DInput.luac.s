PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["OnChanged"]
        3 JUMPIFEQKNIL                     R1 ; [+25]
        5 GETUPVAL                         R1 1
        6 JUMPIFNOT                        R1 ; [+6]
        7 FASTCALL1                        MATH_RAD R0 ; [+3]
        8 MOVE                             R2 R0
        9 GETIMPORT                        R1 K3 [math.rad]
       11 CALL                             R1 1 1
       12 MOVE                             R0 R1
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R1 R2 K0 ["OnChanged"]
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R2 R3 K4 ["join"]
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R4 R5 K5 ["Input"]
       22 GETTABLEKS                       R3 R4 K6 ["Value"]
       24 DUPTABLE                         R4 K8 [{"X"}]
       25 SETTABLEKS                       R0 R4 K7 ["X"]
       27 CALL                             R2 2 -1
       28 CALL                             R1 -1 0
       29 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["OnChanged"]
        3 JUMPIFEQKNIL                     R1 ; [+17]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K0 ["OnChanged"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K1 ["join"]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R4 R5 K2 ["Input"]
       14 GETTABLEKS                       R3 R4 K3 ["Value"]
       16 DUPTABLE                         R4 K5 [{"Y"}]
       17 SETTABLEKS                       R0 R4 K4 ["Y"]
       19 CALL                             R2 2 -1
       20 CALL                             R1 -1 0
       21 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useCallback"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["formatDegrees"]
        6 NEWTABLE                         R3 0 0
        8 CALL                             R1 2 1
        9 GETTABLEKS                       R4 R0 K2 ["InputBuilderProps"]
       11 GETTABLEKS                       R3 R4 K3 ["InputMode"]
       13 GETIMPORT                        R4 K7 [Enum.AnimationNodeBlend2DInputMode.Polar]
       15 JUMPIFEQ                         R3 R4 ; [+2]
       17 LOADB                            R2 0 +1
       18 LOADB                            R2 1
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R3 R4 K0 ["useCallback"]
       22 NEWCLOSURE                       R4 P0
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R2
       25 CAPTURE                          UPVAL U2
       26 NEWTABLE                         R5 0 3
       28 GETTABLEKS                       R6 R0 K8 ["OnChanged"]
       30 GETTABLEKS                       R7 R0 K9 ["Input"]
       32 MOVE                             R8 R2
       33 SETLIST                          R5 R6 3 [1]
       35 CALL                             R3 2 1
       36 GETUPVAL                         R5 0
       37 GETTABLEKS                       R4 R5 K0 ["useCallback"]
       39 NEWCLOSURE                       R5 P1
       40 CAPTURE                          VAL R0
       41 CAPTURE                          UPVAL U2
       42 NEWTABLE                         R6 0 2
       44 GETTABLEKS                       R7 R0 K8 ["OnChanged"]
       46 GETTABLEKS                       R8 R0 K9 ["Input"]
       48 SETLIST                          R6 R7 2 [1]
       50 CALL                             R4 2 1
       51 GETUPVAL                         R6 0
       52 GETTABLEKS                       R5 R6 K10 ["createElement"]
       54 GETUPVAL                         R7 3
       55 GETTABLEKS                       R6 R7 K11 ["View"]
       57 DUPTABLE                         R7 K14 [{"tag", "LayoutOrder"}]
       58 LOADK                            R8 K15 ["row auto-y gap-small size-full-700 align-y-center flex-x-fill padding-x-small"]
       59 SETTABLEKS                       R8 R7 K12 ["tag"]
       61 GETTABLEKS                       R8 R0 K13 ["LayoutOrder"]
       63 SETTABLEKS                       R8 R7 K13 ["LayoutOrder"]
       65 DUPTABLE                         R8 K20 [{"InputLabelWeight", "X", "Y", "PinChildren"}]
       66 GETUPVAL                         R10 0
       67 GETTABLEKS                       R9 R10 K10 ["createElement"]
       69 GETUPVAL                         R10 4
       70 DUPTABLE                         R11 K23 [{"Name", "Weight", "LayoutOrder"}]
       71 GETTABLEKS                       R13 R0 K9 ["Input"]
       73 GETTABLEKS                       R12 R13 K21 ["Name"]
       75 SETTABLEKS                       R12 R11 K21 ["Name"]
       77 GETTABLEKS                       R13 R0 K9 ["Input"]
       79 GETTABLEKS                       R12 R13 K22 ["Weight"]
       81 SETTABLEKS                       R12 R11 K22 ["Weight"]
       83 LOADN                            R12 1
       84 SETTABLEKS                       R12 R11 K13 ["LayoutOrder"]
       86 CALL                             R9 2 1
       87 SETTABLEKS                       R9 R8 K16 ["InputLabelWeight"]
       89 GETUPVAL                         R10 0
       90 GETTABLEKS                       R9 R10 K10 ["createElement"]
       92 GETUPVAL                         R11 3
       93 GETTABLEKS                       R10 R11 K24 ["NumberInput"]
       95 DUPTABLE                         R11 K37 [{"size", "width", "label", "value", "formatAsString", "step", "minimum", "maximum", "LayoutOrder", "precision", "onChanged", "controlsVariant", "isScrubbable"}]
       96 GETUPVAL                         R15 3
       97 GETTABLEKS                       R14 R15 K38 ["Enums"]
       99 GETTABLEKS                       R13 R14 K39 ["InputSize"]
      101 GETTABLEKS                       R12 R13 K40 ["XSmall"]
      103 SETTABLEKS                       R12 R11 K25 ["size"]
      105 GETIMPORT                        R12 K43 [UDim.new]
      107 LOADN                            R13 0
      108 LOADN                            R14 60
      109 CALL                             R12 2 1
      110 SETTABLEKS                       R12 R11 K26 ["width"]
      112 LOADK                            R12 K44 [""]
      113 SETTABLEKS                       R12 R11 K27 ["label"]
      115 JUMPIFNOT                        R2 ; [+17]
      116 GETTABLEKS                       R18 R0 K9 ["Input"]
      118 GETTABLEKS                       R17 R18 K46 ["Value"]
      120 GETTABLEKS                       R16 R17 K17 ["X"]
      122 FASTCALL1                        MATH_DEG R16 ; [+2]
      123 GETIMPORT                        R15 K49 [math.deg]
      125 CALL                             R15 1 1
      126 MULK                             R14 R15 K45 [100]
      127 FASTCALL1                        MATH_ROUND R14 ; [+2]
      128 GETIMPORT                        R13 K51 [math.round]
      130 CALL                             R13 1 1
      131 DIVK                             R12 R13 K45 [100]
      132 JUMP                             ; [+6]
      133 GETTABLEKS                       R14 R0 K9 ["Input"]
      135 GETTABLEKS                       R13 R14 K46 ["Value"]
      137 GETTABLEKS                       R12 R13 K17 ["X"]
      139 SETTABLEKS                       R12 R11 K28 ["value"]
      141 JUMPIFNOT                        R2 ; [+2]
      142 MOVE                             R12 R1
      143 JUMP                             ; [+1]
      144 LOADNIL                          R12
      145 SETTABLEKS                       R12 R11 K29 ["formatAsString"]
      147 LOADK                            R12 K52 [0.005]
      148 SETTABLEKS                       R12 R11 K30 ["step"]
      150 JUMPIFNOT                        R2 ; [+2]
      151 LOADN                            R12 76
      152 JUMP                             ; [+1]
      153 LOADK                            R12 K53 [-∞]
      154 SETTABLEKS                       R12 R11 K31 ["minimum"]
      156 JUMPIFNOT                        R2 ; [+2]
      157 LOADN                            R12 180
      158 JUMP                             ; [+1]
      159 LOADK                            R12 K54 [∞]
      160 SETTABLEKS                       R12 R11 K32 ["maximum"]
      162 LOADN                            R12 2
      163 SETTABLEKS                       R12 R11 K13 ["LayoutOrder"]
      165 GETUPVAL                         R14 5
      166 GETTABLEKS                       R13 R14 K55 ["NUMBER_PRECISION"]
      168 GETTABLEKS                       R12 R13 K56 ["Float"]
      170 SETTABLEKS                       R12 R11 K33 ["precision"]
      172 SETTABLEKS                       R3 R11 K34 ["onChanged"]
      174 GETUPVAL                         R15 3
      175 GETTABLEKS                       R14 R15 K38 ["Enums"]
      177 GETTABLEKS                       R13 R14 K57 ["NumberInputControlsVariant"]
      179 GETTABLEKS                       R12 R13 K58 ["None"]
      181 SETTABLEKS                       R12 R11 K35 ["controlsVariant"]
      183 LOADB                            R12 1
      184 SETTABLEKS                       R12 R11 K36 ["isScrubbable"]
      186 CALL                             R9 2 1
      187 SETTABLEKS                       R9 R8 K17 ["X"]
      189 GETUPVAL                         R10 0
      190 GETTABLEKS                       R9 R10 K10 ["createElement"]
      192 GETUPVAL                         R11 3
      193 GETTABLEKS                       R10 R11 K24 ["NumberInput"]
      195 DUPTABLE                         R11 K59 [{"size", "width", "label", "value", "minimum", "LayoutOrder", "precision", "step", "onChanged", "controlsVariant", "isScrubbable"}]
      196 GETUPVAL                         R15 3
      197 GETTABLEKS                       R14 R15 K38 ["Enums"]
      199 GETTABLEKS                       R13 R14 K39 ["InputSize"]
      201 GETTABLEKS                       R12 R13 K40 ["XSmall"]
      203 SETTABLEKS                       R12 R11 K25 ["size"]
      205 GETIMPORT                        R12 K43 [UDim.new]
      207 LOADN                            R13 0
      208 LOADN                            R14 60
      209 CALL                             R12 2 1
      210 SETTABLEKS                       R12 R11 K26 ["width"]
      212 LOADK                            R12 K44 [""]
      213 SETTABLEKS                       R12 R11 K27 ["label"]
      215 GETTABLEKS                       R17 R0 K9 ["Input"]
      217 GETTABLEKS                       R16 R17 K46 ["Value"]
      219 GETTABLEKS                       R15 R16 K18 ["Y"]
      221 MULK                             R14 R15 K45 [100]
      222 FASTCALL1                        MATH_ROUND R14 ; [+2]
      223 GETIMPORT                        R13 K51 [math.round]
      225 CALL                             R13 1 1
      226 DIVK                             R12 R13 K45 [100]
      227 SETTABLEKS                       R12 R11 K28 ["value"]
      229 JUMPIFNOT                        R2 ; [+2]
      230 LOADN                            R12 0
      231 JUMP                             ; [+1]
      232 LOADK                            R12 K53 [-∞]
      233 SETTABLEKS                       R12 R11 K31 ["minimum"]
      235 LOADN                            R12 3
      236 SETTABLEKS                       R12 R11 K13 ["LayoutOrder"]
      238 GETUPVAL                         R14 5
      239 GETTABLEKS                       R13 R14 K55 ["NUMBER_PRECISION"]
      241 GETTABLEKS                       R12 R13 K56 ["Float"]
      243 SETTABLEKS                       R12 R11 K33 ["precision"]
      245 LOADK                            R12 K52 [0.005]
      246 SETTABLEKS                       R12 R11 K30 ["step"]
      248 SETTABLEKS                       R4 R11 K34 ["onChanged"]
      250 GETUPVAL                         R15 3
      251 GETTABLEKS                       R14 R15 K38 ["Enums"]
      253 GETTABLEKS                       R13 R14 K57 ["NumberInputControlsVariant"]
      255 GETTABLEKS                       R12 R13 K58 ["None"]
      257 SETTABLEKS                       R12 R11 K35 ["controlsVariant"]
      259 LOADB                            R12 1
      260 SETTABLEKS                       R12 R11 K36 ["isScrubbable"]
      262 CALL                             R9 2 1
      263 SETTABLEKS                       R9 R8 K18 ["Y"]
      265 GETUPVAL                         R10 0
      266 GETTABLEKS                       R9 R10 K10 ["createElement"]
      268 LOADK                            R10 K60 ["Folder"]
      269 NEWTABLE                         R11 0 0
      271 DUPTABLE                         R12 K62 [{"RenderedPinInput"}]
      272 GETUPVAL                         R14 0
      273 GETTABLEKS                       R13 R14 K10 ["createElement"]
      275 GETUPVAL                         R14 6
      276 DUPTABLE                         R15 K69 [{"Position", "pinSide", "pinDataType", "pinNodeId", "pinName", "pinValue"}]
      277 GETIMPORT                        R16 K72 [UDim2.fromOffset]
      279 LOADN                            R17 247
      280 LOADN                            R18 14
      281 CALL                             R16 2 1
      282 SETTABLEKS                       R16 R15 K63 ["Position"]
      284 LOADK                            R16 K9 ["Input"]
      285 SETTABLEKS                       R16 R15 K64 ["pinSide"]
      287 LOADK                            R16 K73 ["Animation"]
      288 SETTABLEKS                       R16 R15 K65 ["pinDataType"]
      290 GETTABLEKS                       R16 R0 K74 ["NodeId"]
      292 SETTABLEKS                       R16 R15 K66 ["pinNodeId"]
      294 GETTABLEKS                       R17 R0 K9 ["Input"]
      296 GETTABLEKS                       R16 R17 K21 ["Name"]
      298 SETTABLEKS                       R16 R15 K67 ["pinName"]
      300 GETTABLEKS                       R17 R0 K9 ["Input"]
      302 GETTABLEKS                       R16 R17 K46 ["Value"]
      304 SETTABLEKS                       R16 R15 K68 ["pinValue"]
      306 CALL                             R13 2 1
      307 SETTABLEKS                       R13 R12 K61 ["RenderedPinInput"]
      309 CALL                             R9 3 1
      310 SETTABLEKS                       R9 R8 K19 ["PinChildren"]
      312 CALL                             R5 3 -1
      313 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R5 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K10 ["Util"]
       32 GETTABLEKS                       R5 R6 K11 ["Constants"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R9 R0 K12 ["Components"]
       39 GETTABLEKS                       R8 R9 K13 ["NodeView"]
       41 GETTABLEKS                       R7 R8 K14 ["CompositorNodeInput"]
       43 GETTABLEKS                       R6 R7 K15 ["InputLabelWeight"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R10 R0 K12 ["Components"]
       50 GETTABLEKS                       R9 R10 K13 ["NodeView"]
       52 GETTABLEKS                       R8 R9 K14 ["CompositorNodeInput"]
       54 GETTABLEKS                       R7 R8 K16 ["InputPanelTypes"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R11 R0 K12 ["Components"]
       61 GETTABLEKS                       R10 R11 K13 ["NodeView"]
       63 GETTABLEKS                       R9 R10 K17 ["CompositorNodeProperty"]
       65 GETTABLEKS                       R8 R9 K18 ["PropertyUtils"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R12 R0 K12 ["Components"]
       72 GETTABLEKS                       R11 R12 K13 ["NodeView"]
       74 GETTABLEKS                       R10 R11 K19 ["CompositorNodes"]
       76 GETTABLEKS                       R9 R10 K20 ["RenderedCompositorPin"]
       78 CALL                             R8 1 1
       79 DUPCLOSURE                       R9 K21 [PROTO_2]
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R7
       82 CAPTURE                          VAL R1
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R8
       87 RETURN                           R9 1
