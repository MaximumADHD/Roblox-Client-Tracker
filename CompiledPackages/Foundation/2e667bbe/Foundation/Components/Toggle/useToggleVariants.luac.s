PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["knobSize"]
        2 GETTABLEKS                       R2 R3 K1 ["X"]
        4 GETTABLEKS                       R1 R2 K2 ["Offset"]
        6 GETTABLEKS                       R5 R0 K4 ["size"]
        8 GETTABLEKS                       R4 R5 K5 ["height"]
       10 SUB                              R3 R4 R1
       11 DIVK                             R2 R3 K3 [2]
       12 DUPTABLE                         R3 K8 [{"input", "knob"}]
       13 DUPTABLE                         R4 K10 [{"tag", "size"}]
       14 GETTABLEKS                       R5 R0 K9 ["tag"]
       16 SETTABLEKS                       R5 R4 K9 ["tag"]
       18 GETIMPORT                        R5 K13 [UDim2.fromOffset]
       20 GETTABLEKS                       R7 R0 K4 ["size"]
       22 GETTABLEKS                       R6 R7 K14 ["width"]
       24 GETTABLEKS                       R8 R0 K4 ["size"]
       26 GETTABLEKS                       R7 R8 K5 ["height"]
       28 CALL                             R5 2 1
       29 SETTABLEKS                       R5 R4 K4 ["size"]
       31 SETTABLEKS                       R4 R3 K6 ["input"]
       33 DUPTABLE                         R4 K17 [{"offPosition", "onPosition"}]
       34 GETIMPORT                        R5 K19 [UDim2.new]
       36 LOADN                            R6 0
       37 MOVE                             R7 R2
       38 LOADK                            R8 K20 [0.5]
       39 LOADN                            R9 0
       40 CALL                             R5 4 1
       41 SETTABLEKS                       R5 R4 K15 ["offPosition"]
       43 GETIMPORT                        R5 K19 [UDim2.new]
       45 LOADN                            R6 0
       46 GETTABLEKS                       R10 R0 K4 ["size"]
       48 GETTABLEKS                       R9 R10 K14 ["width"]
       50 SUB                              R8 R9 R1
       51 SUB                              R7 R8 R2
       52 LOADK                            R8 K20 [0.5]
       53 LOADN                            R9 0
       54 CALL                             R5 4 1
       55 SETTABLEKS                       R5 R4 K16 ["onPosition"]
       57 SETTABLEKS                       R4 R3 K7 ["knob"]
       59 RETURN                           R3 1

PROTO_1:
        0 DUPTABLE                         R1 K1 [{"input"}]
        1 DUPTABLE                         R2 K4 [{"checkedStyle", "cursorRadius"}]
        2 GETTABLEKS                       R5 R0 K5 ["Color"]
        4 GETTABLEKS                       R4 R5 K6 ["ActionEmphasis"]
        6 GETTABLEKS                       R3 R4 K7 ["Background"]
        8 SETTABLEKS                       R3 R2 K2 ["checkedStyle"]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K8 ["FoundationInternalInputSelectedStylesAndSpacing"]
       13 JUMPIFNOT                        R4 ; [+9]
       14 GETIMPORT                        R3 K11 [UDim.new]
       16 LOADN                            R4 0
       17 GETTABLEKS                       R6 R0 K12 ["Radius"]
       19 GETTABLEKS                       R5 R6 K13 ["Circle"]
       21 CALL                             R3 2 1
       22 JUMP                             ; [+8]
       23 GETIMPORT                        R3 K11 [UDim.new]
       25 LOADN                            R4 0
       26 GETTABLEKS                       R6 R0 K12 ["Radius"]
       28 GETTABLEKS                       R5 R6 K14 ["Medium"]
       30 CALL                             R3 2 1
       31 SETTABLEKS                       R3 R2 K3 ["cursorRadius"]
       33 SETTABLEKS                       R2 R1 K0 ["input"]
       35 GETUPVAL                         R4 0
       36 GETTABLEKS                       R3 R4 K15 ["FoundationUpdateKnobComponent"]
       38 JUMPIFNOT                        R3 ; [+135]
       39 NEWTABLE                         R2 4 0
       41 GETUPVAL                         R4 1
       42 GETTABLEKS                       R3 R4 K16 ["XSmall"]
       44 GETUPVAL                         R4 2
       45 DUPTABLE                         R5 K20 [{"tag", "size", "knobSize"}]
       46 LOADK                            R6 K21 ["radius-circle"]
       47 SETTABLEKS                       R6 R5 K17 ["tag"]
       49 DUPTABLE                         R6 K24 [{"width", "height"}]
       50 GETTABLEKS                       R8 R0 K25 ["Size"]
       52 GETTABLEKS                       R7 R8 K26 ["Size_700"]
       54 SETTABLEKS                       R7 R6 K22 ["width"]
       56 GETTABLEKS                       R8 R0 K25 ["Size"]
       58 GETTABLEKS                       R7 R8 K27 ["Size_400"]
       60 SETTABLEKS                       R7 R6 K23 ["height"]
       62 SETTABLEKS                       R6 R5 K18 ["size"]
       64 GETUPVAL                         R6 3
       65 MOVE                             R7 R0
       66 GETUPVAL                         R9 1
       67 GETTABLEKS                       R8 R9 K16 ["XSmall"]
       69 CALL                             R6 2 1
       70 SETTABLEKS                       R6 R5 K19 ["knobSize"]
       72 CALL                             R4 1 1
       73 SETTABLE                         R4 R2 R3
       74 GETUPVAL                         R4 1
       75 GETTABLEKS                       R3 R4 K28 ["Small"]
       77 GETUPVAL                         R4 2
       78 DUPTABLE                         R5 K20 [{"tag", "size", "knobSize"}]
       79 LOADK                            R6 K21 ["radius-circle"]
       80 SETTABLEKS                       R6 R5 K17 ["tag"]
       82 DUPTABLE                         R6 K24 [{"width", "height"}]
       83 GETTABLEKS                       R8 R0 K25 ["Size"]
       85 GETTABLEKS                       R7 R8 K29 ["Size_800"]
       87 SETTABLEKS                       R7 R6 K22 ["width"]
       89 GETTABLEKS                       R8 R0 K25 ["Size"]
       91 GETTABLEKS                       R7 R8 K30 ["Size_500"]
       93 SETTABLEKS                       R7 R6 K23 ["height"]
       95 SETTABLEKS                       R6 R5 K18 ["size"]
       97 GETUPVAL                         R6 3
       98 MOVE                             R7 R0
       99 GETUPVAL                         R9 1
      100 GETTABLEKS                       R8 R9 K28 ["Small"]
      102 CALL                             R6 2 1
      103 SETTABLEKS                       R6 R5 K19 ["knobSize"]
      105 CALL                             R4 1 1
      106 SETTABLE                         R4 R2 R3
      107 GETUPVAL                         R4 1
      108 GETTABLEKS                       R3 R4 K14 ["Medium"]
      110 GETUPVAL                         R4 2
      111 DUPTABLE                         R5 K20 [{"tag", "size", "knobSize"}]
      112 LOADK                            R6 K21 ["radius-circle"]
      113 SETTABLEKS                       R6 R5 K17 ["tag"]
      115 DUPTABLE                         R6 K24 [{"width", "height"}]
      116 GETTABLEKS                       R8 R0 K25 ["Size"]
      118 GETTABLEKS                       R7 R8 K31 ["Size_1000"]
      120 SETTABLEKS                       R7 R6 K22 ["width"]
      122 GETTABLEKS                       R8 R0 K25 ["Size"]
      124 GETTABLEKS                       R7 R8 K32 ["Size_600"]
      126 SETTABLEKS                       R7 R6 K23 ["height"]
      128 SETTABLEKS                       R6 R5 K18 ["size"]
      130 GETUPVAL                         R6 3
      131 MOVE                             R7 R0
      132 GETUPVAL                         R9 1
      133 GETTABLEKS                       R8 R9 K14 ["Medium"]
      135 CALL                             R6 2 1
      136 SETTABLEKS                       R6 R5 K19 ["knobSize"]
      138 CALL                             R4 1 1
      139 SETTABLE                         R4 R2 R3
      140 GETUPVAL                         R4 1
      141 GETTABLEKS                       R3 R4 K33 ["Large"]
      143 GETUPVAL                         R4 2
      144 DUPTABLE                         R5 K20 [{"tag", "size", "knobSize"}]
      145 LOADK                            R6 K21 ["radius-circle"]
      146 SETTABLEKS                       R6 R5 K17 ["tag"]
      148 DUPTABLE                         R6 K24 [{"width", "height"}]
      149 GETTABLEKS                       R8 R0 K25 ["Size"]
      151 GETTABLEKS                       R7 R8 K34 ["Size_1100"]
      153 SETTABLEKS                       R7 R6 K22 ["width"]
      155 GETTABLEKS                       R8 R0 K25 ["Size"]
      157 GETTABLEKS                       R7 R8 K32 ["Size_600"]
      159 SETTABLEKS                       R7 R6 K23 ["height"]
      161 SETTABLEKS                       R6 R5 K18 ["size"]
      163 GETUPVAL                         R6 3
      164 MOVE                             R7 R0
      165 GETUPVAL                         R9 1
      166 GETTABLEKS                       R8 R9 K14 ["Medium"]
      168 CALL                             R6 2 1
      169 SETTABLEKS                       R6 R5 K19 ["knobSize"]
      171 CALL                             R4 1 1
      172 SETTABLE                         R4 R2 R3
      173 JUMP                             ; [+134]
      174 NEWTABLE                         R2 4 0
      176 GETUPVAL                         R4 1
      177 GETTABLEKS                       R3 R4 K16 ["XSmall"]
      179 GETUPVAL                         R4 2
      180 DUPTABLE                         R5 K20 [{"tag", "size", "knobSize"}]
      181 LOADK                            R6 K35 ["radius-large"]
      182 SETTABLEKS                       R6 R5 K17 ["tag"]
      184 DUPTABLE                         R6 K24 [{"width", "height"}]
      185 GETTABLEKS                       R8 R0 K25 ["Size"]
      187 GETTABLEKS                       R7 R8 K26 ["Size_700"]
      189 SETTABLEKS                       R7 R6 K22 ["width"]
      191 GETTABLEKS                       R8 R0 K25 ["Size"]
      193 GETTABLEKS                       R7 R8 K36 ["Size_300"]
      195 SETTABLEKS                       R7 R6 K23 ["height"]
      197 SETTABLEKS                       R6 R5 K18 ["size"]
      199 GETUPVAL                         R6 3
      200 MOVE                             R7 R0
      201 GETUPVAL                         R9 1
      202 GETTABLEKS                       R8 R9 K16 ["XSmall"]
      204 CALL                             R6 2 1
      205 SETTABLEKS                       R6 R5 K19 ["knobSize"]
      207 CALL                             R4 1 1
      208 SETTABLE                         R4 R2 R3
      209 GETUPVAL                         R4 1
      210 GETTABLEKS                       R3 R4 K28 ["Small"]
      212 GETUPVAL                         R4 2
      213 DUPTABLE                         R5 K20 [{"tag", "size", "knobSize"}]
      214 LOADK                            R6 K35 ["radius-large"]
      215 SETTABLEKS                       R6 R5 K17 ["tag"]
      217 DUPTABLE                         R6 K24 [{"width", "height"}]
      218 GETTABLEKS                       R8 R0 K25 ["Size"]
      220 GETTABLEKS                       R7 R8 K29 ["Size_800"]
      222 SETTABLEKS                       R7 R6 K22 ["width"]
      224 GETTABLEKS                       R8 R0 K25 ["Size"]
      226 GETTABLEKS                       R7 R8 K27 ["Size_400"]
      228 SETTABLEKS                       R7 R6 K23 ["height"]
      230 SETTABLEKS                       R6 R5 K18 ["size"]
      232 GETUPVAL                         R6 3
      233 MOVE                             R7 R0
      234 GETUPVAL                         R9 1
      235 GETTABLEKS                       R8 R9 K28 ["Small"]
      237 CALL                             R6 2 1
      238 SETTABLEKS                       R6 R5 K19 ["knobSize"]
      240 CALL                             R4 1 1
      241 SETTABLE                         R4 R2 R3
      242 GETUPVAL                         R4 1
      243 GETTABLEKS                       R3 R4 K14 ["Medium"]
      245 GETUPVAL                         R4 2
      246 DUPTABLE                         R5 K20 [{"tag", "size", "knobSize"}]
      247 LOADK                            R6 K35 ["radius-large"]
      248 SETTABLEKS                       R6 R5 K17 ["tag"]
      250 DUPTABLE                         R6 K24 [{"width", "height"}]
      251 GETTABLEKS                       R8 R0 K25 ["Size"]
      253 GETTABLEKS                       R7 R8 K31 ["Size_1000"]
      255 SETTABLEKS                       R7 R6 K22 ["width"]
      257 GETTABLEKS                       R8 R0 K25 ["Size"]
      259 GETTABLEKS                       R7 R8 K30 ["Size_500"]
      261 SETTABLEKS                       R7 R6 K23 ["height"]
      263 SETTABLEKS                       R6 R5 K18 ["size"]
      265 GETUPVAL                         R6 3
      266 MOVE                             R7 R0
      267 GETUPVAL                         R9 1
      268 GETTABLEKS                       R8 R9 K14 ["Medium"]
      270 CALL                             R6 2 1
      271 SETTABLEKS                       R6 R5 K19 ["knobSize"]
      273 CALL                             R4 1 1
      274 SETTABLE                         R4 R2 R3
      275 GETUPVAL                         R4 1
      276 GETTABLEKS                       R3 R4 K33 ["Large"]
      278 GETUPVAL                         R4 2
      279 DUPTABLE                         R5 K20 [{"tag", "size", "knobSize"}]
      280 LOADK                            R6 K21 ["radius-circle"]
      281 SETTABLEKS                       R6 R5 K17 ["tag"]
      283 DUPTABLE                         R6 K24 [{"width", "height"}]
      284 GETTABLEKS                       R8 R0 K25 ["Size"]
      286 GETTABLEKS                       R7 R8 K37 ["Size_1600"]
      288 SETTABLEKS                       R7 R6 K22 ["width"]
      290 GETTABLEKS                       R8 R0 K25 ["Size"]
      292 GETTABLEKS                       R7 R8 K38 ["Size_900"]
      294 SETTABLEKS                       R7 R6 K23 ["height"]
      296 SETTABLEKS                       R6 R5 K18 ["size"]
      298 GETUPVAL                         R6 3
      299 MOVE                             R7 R0
      300 GETUPVAL                         R9 1
      301 GETTABLEKS                       R8 R9 K33 ["Large"]
      303 CALL                             R6 2 1
      304 SETTABLEKS                       R6 R5 K19 ["knobSize"]
      306 CALL                             R4 1 1
      307 SETTABLE                         R4 R2 R3
      308 DUPTABLE                         R3 K41 [{"common", "sizes"}]
      309 SETTABLEKS                       R1 R3 K39 ["common"]
      311 SETTABLEKS                       R2 R3 K40 ["sizes"]
      313 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["useVariants"]
        3 LOADK                            R3 K1 ["Toggle"]
        4 GETUPVAL                         R4 1
        5 MOVE                             R5 R0
        6 CALL                             R2 3 1
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R4 R2 K2 ["common"]
       10 GETTABLEKS                       R6 R2 K3 ["sizes"]
       12 GETTABLE                         R5 R6 R1
       13 CALL                             R3 2 -1
       14 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R3 K7 ["InternalInput"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Enums"]
       18 GETTABLEKS                       R3 R4 K9 ["InputSize"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Enums"]
       25 GETTABLEKS                       R4 R5 K10 ["ControlState"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K11 ["Utility"]
       32 GETTABLEKS                       R5 R6 K12 ["composeStyleVariant"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R8 R0 K13 ["Providers"]
       39 GETTABLEKS                       R7 R8 K14 ["Style"]
       41 GETTABLEKS                       R6 R7 K15 ["Tokens"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R8 R0 K11 ["Utility"]
       48 GETTABLEKS                       R7 R8 K16 ["Flags"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R10 R0 K6 ["Components"]
       55 GETTABLEKS                       R9 R10 K17 ["Knob"]
       57 GETTABLEKS                       R8 R9 K18 ["getKnobSize"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R11 R0 K13 ["Providers"]
       64 GETTABLEKS                       R10 R11 K14 ["Style"]
       66 GETTABLEKS                       R9 R10 K19 ["VariantsContext"]
       68 CALL                             R8 1 1
       69 DUPCLOSURE                       R9 K20 [PROTO_0]
       70 DUPCLOSURE                       R10 K21 [PROTO_1]
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R9
       74 CAPTURE                          VAL R7
       75 DUPCLOSURE                       R11 K22 [PROTO_2]
       76 CAPTURE                          VAL R8
       77 CAPTURE                          VAL R10
       78 CAPTURE                          VAL R4
       79 RETURN                           R11 1
