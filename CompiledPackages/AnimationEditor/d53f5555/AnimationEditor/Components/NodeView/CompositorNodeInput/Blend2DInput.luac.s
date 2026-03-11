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
       58 LOADK                            R8 K15 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
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
      108 LOADN                            R14 45
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
      147 JUMPIFNOT                        R2 ; [+2]
      148 LOADN                            R12 5
      149 JUMP                             ; [+1]
      150 LOADN                            R12 1
      151 SETTABLEKS                       R12 R11 K30 ["step"]
      153 JUMPIFNOT                        R2 ; [+2]
      154 LOADN                            R12 76
      155 JUMP                             ; [+1]
      156 LOADK                            R12 K52 [-∞]
      157 SETTABLEKS                       R12 R11 K31 ["minimum"]
      159 JUMPIFNOT                        R2 ; [+2]
      160 LOADN                            R12 180
      161 JUMP                             ; [+1]
      162 LOADK                            R12 K53 [∞]
      163 SETTABLEKS                       R12 R11 K32 ["maximum"]
      165 LOADN                            R12 2
      166 SETTABLEKS                       R12 R11 K13 ["LayoutOrder"]
      168 LOADN                            R12 2
      169 SETTABLEKS                       R12 R11 K33 ["precision"]
      171 SETTABLEKS                       R3 R11 K34 ["onChanged"]
      173 GETUPVAL                         R15 3
      174 GETTABLEKS                       R14 R15 K38 ["Enums"]
      176 GETTABLEKS                       R13 R14 K54 ["NumberInputControlsVariant"]
      178 GETTABLEKS                       R12 R13 K55 ["None"]
      180 SETTABLEKS                       R12 R11 K35 ["controlsVariant"]
      182 LOADB                            R12 1
      183 SETTABLEKS                       R12 R11 K36 ["isScrubbable"]
      185 CALL                             R9 2 1
      186 SETTABLEKS                       R9 R8 K17 ["X"]
      188 GETUPVAL                         R10 0
      189 GETTABLEKS                       R9 R10 K10 ["createElement"]
      191 GETUPVAL                         R11 3
      192 GETTABLEKS                       R10 R11 K24 ["NumberInput"]
      194 DUPTABLE                         R11 K56 [{"size", "width", "label", "value", "minimum", "LayoutOrder", "precision", "onChanged", "controlsVariant", "isScrubbable"}]
      195 GETUPVAL                         R15 3
      196 GETTABLEKS                       R14 R15 K38 ["Enums"]
      198 GETTABLEKS                       R13 R14 K39 ["InputSize"]
      200 GETTABLEKS                       R12 R13 K40 ["XSmall"]
      202 SETTABLEKS                       R12 R11 K25 ["size"]
      204 GETIMPORT                        R12 K43 [UDim.new]
      206 LOADN                            R13 0
      207 LOADN                            R14 45
      208 CALL                             R12 2 1
      209 SETTABLEKS                       R12 R11 K26 ["width"]
      211 LOADK                            R12 K44 [""]
      212 SETTABLEKS                       R12 R11 K27 ["label"]
      214 GETTABLEKS                       R17 R0 K9 ["Input"]
      216 GETTABLEKS                       R16 R17 K46 ["Value"]
      218 GETTABLEKS                       R15 R16 K18 ["Y"]
      220 MULK                             R14 R15 K45 [100]
      221 FASTCALL1                        MATH_ROUND R14 ; [+2]
      222 GETIMPORT                        R13 K51 [math.round]
      224 CALL                             R13 1 1
      225 DIVK                             R12 R13 K45 [100]
      226 SETTABLEKS                       R12 R11 K28 ["value"]
      228 JUMPIFNOT                        R2 ; [+2]
      229 LOADN                            R12 0
      230 JUMP                             ; [+1]
      231 LOADK                            R12 K52 [-∞]
      232 SETTABLEKS                       R12 R11 K31 ["minimum"]
      234 LOADN                            R12 3
      235 SETTABLEKS                       R12 R11 K13 ["LayoutOrder"]
      237 LOADN                            R12 2
      238 SETTABLEKS                       R12 R11 K33 ["precision"]
      240 SETTABLEKS                       R4 R11 K34 ["onChanged"]
      242 GETUPVAL                         R15 3
      243 GETTABLEKS                       R14 R15 K38 ["Enums"]
      245 GETTABLEKS                       R13 R14 K54 ["NumberInputControlsVariant"]
      247 GETTABLEKS                       R12 R13 K55 ["None"]
      249 SETTABLEKS                       R12 R11 K35 ["controlsVariant"]
      251 LOADB                            R12 1
      252 SETTABLEKS                       R12 R11 K36 ["isScrubbable"]
      254 CALL                             R9 2 1
      255 SETTABLEKS                       R9 R8 K18 ["Y"]
      257 GETUPVAL                         R10 0
      258 GETTABLEKS                       R9 R10 K10 ["createElement"]
      260 LOADK                            R10 K57 ["Folder"]
      261 NEWTABLE                         R11 0 0
      263 DUPTABLE                         R12 K59 [{"RenderedPinInput"}]
      264 GETUPVAL                         R14 0
      265 GETTABLEKS                       R13 R14 K10 ["createElement"]
      267 GETUPVAL                         R14 5
      268 DUPTABLE                         R15 K65 [{"Position", "pinSide", "pinDataType", "pinNodeId", "pinName"}]
      269 GETIMPORT                        R16 K67 [UDim2.new]
      271 LOADN                            R17 0
      272 LOADN                            R18 247
      273 LOADK                            R19 K68 [0.5]
      274 LOADN                            R20 0
      275 CALL                             R16 4 1
      276 SETTABLEKS                       R16 R15 K60 ["Position"]
      278 LOADK                            R16 K9 ["Input"]
      279 SETTABLEKS                       R16 R15 K61 ["pinSide"]
      281 LOADK                            R16 K69 ["Animation"]
      282 SETTABLEKS                       R16 R15 K62 ["pinDataType"]
      284 GETTABLEKS                       R16 R0 K70 ["NodeId"]
      286 SETTABLEKS                       R16 R15 K63 ["pinNodeId"]
      288 GETTABLEKS                       R17 R0 K9 ["Input"]
      290 GETTABLEKS                       R16 R17 K21 ["Name"]
      292 SETTABLEKS                       R16 R15 K64 ["pinName"]
      294 CALL                             R13 2 1
      295 SETTABLEKS                       R13 R12 K58 ["RenderedPinInput"]
      297 CALL                             R9 3 1
      298 SETTABLEKS                       R9 R8 K19 ["PinChildren"]
      300 CALL                             R5 3 -1
      301 RETURN                           R5 -1

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
       23 GETTABLEKS                       R7 R0 K9 ["Components"]
       25 GETTABLEKS                       R6 R7 K10 ["NodeView"]
       27 GETTABLEKS                       R5 R6 K11 ["CompositorNodeInput"]
       29 GETTABLEKS                       R4 R5 K12 ["InputLabelWeight"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R8 R0 K9 ["Components"]
       36 GETTABLEKS                       R7 R8 K10 ["NodeView"]
       38 GETTABLEKS                       R6 R7 K11 ["CompositorNodeInput"]
       40 GETTABLEKS                       R5 R6 K13 ["InputPanelTypes"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R9 R0 K9 ["Components"]
       47 GETTABLEKS                       R8 R9 K10 ["NodeView"]
       49 GETTABLEKS                       R7 R8 K14 ["CompositorNodeProperty"]
       51 GETTABLEKS                       R6 R7 K15 ["PropertyUtils"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETTABLEKS                       R8 R0 K6 ["Parent"]
       58 GETTABLEKS                       R7 R8 K16 ["React"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R11 R0 K9 ["Components"]
       65 GETTABLEKS                       R10 R11 K10 ["NodeView"]
       67 GETTABLEKS                       R9 R10 K17 ["CompositorNodes"]
       69 GETTABLEKS                       R8 R9 K18 ["RenderedCompositorPin"]
       71 CALL                             R7 1 1
       72 DUPCLOSURE                       R8 K19 [PROTO_2]
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R1
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R7
       79 RETURN                           R8 1
