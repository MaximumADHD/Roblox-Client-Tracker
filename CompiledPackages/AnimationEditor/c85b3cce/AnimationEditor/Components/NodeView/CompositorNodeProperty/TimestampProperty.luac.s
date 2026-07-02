PROTO_0:
        0 FASTCALL1                        TONUMBER R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K2 [tonumber]
        4 CALL                             R2 1 1
        5 ORK                              R1 R2 K0 [0]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K3 ["Minimum"]
        9 OR                               R4 R5 R1
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K4 ["Maximum"]
       13 OR                               R5 R6 R1
       14 FASTCALL3                        MATH_CLAMP R1 R4 R5
       16 MOVE                             R3 R1
       17 GETIMPORT                        R2 K7 [math.clamp]
       19 CALL                             R2 3 1
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R3 R3 K8 ["OnChanged"]
       23 JUMPIFEQKNIL                     R3 ; [+6]
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K8 ["OnChanged"]
       28 MOVE                             R4 R2
       29 CALL                             R3 1 0
       30 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useCallback"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["formatTimestamp"]
        6 NEWTABLE                         R3 0 0
        8 CALL                             R1 2 1
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          VAL R0
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K2 ["createElement"]
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R4 R4 K3 ["View"]
       17 DUPTABLE                         R5 K7 [{"tag", "LayoutOrder", "testId"}]
       18 GETUPVAL                         R6 2
       19 GETTABLEKS                       R6 R6 K8 ["Hooks"]
       21 GETTABLEKS                       R6 R6 K9 ["useDefaultTags"]
       23 GETTABLEKS                       R7 R0 K10 ["tags"]
       25 LOADK                            R8 K11 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
       26 CALL                             R6 2 1
       27 SETTABLEKS                       R6 R5 K4 ["tag"]
       29 GETTABLEKS                       R6 R0 K5 ["LayoutOrder"]
       31 SETTABLEKS                       R6 R5 K5 ["LayoutOrder"]
       33 GETTABLEKS                       R6 R0 K6 ["testId"]
       35 SETTABLEKS                       R6 R5 K6 ["testId"]
       37 DUPTABLE                         R6 K15 [{"CompositorNodeInputLabel", "Input", "PinChildren"}]
       38 GETUPVAL                         R7 0
       39 GETTABLEKS                       R7 R7 K2 ["createElement"]
       41 GETUPVAL                         R8 3
       42 DUPTABLE                         R9 K20 [{["tag"] = "fill auto-xy text-body-small text-align-x-left text-truncate-split", ["Text"], ["LayoutOrder"] = 1, ["isDisabled"]}]
       43 GETTABLEKS                       R10 R0 K21 ["Label"]
       45 SETTABLEKS                       R10 R9 K17 ["Text"]
       47 GETTABLEKS                       R11 R0 K23 ["IsDisabled"]
       49 ORK                              R10 R11 K22 [False]
       50 SETTABLEKS                       R10 R9 K19 ["isDisabled"]
       52 CALL                             R7 2 1
       53 SETTABLEKS                       R7 R6 K12 ["CompositorNodeInputLabel"]
       55 GETUPVAL                         R8 4
       56 CALL                             R8 0 1
       57 JUMPIFNOT                        R8 ; [+100]
       58 GETUPVAL                         R7 0
       59 GETTABLEKS                       R7 R7 K2 ["createElement"]
       61 GETUPVAL                         R8 5
       62 DUPTABLE                         R9 K26 [{"IsParameterOverridden", "OnParameterOverrideRevert"}]
       63 GETTABLEKS                       R10 R0 K24 ["IsParameterOverridden"]
       65 SETTABLEKS                       R10 R9 K24 ["IsParameterOverridden"]
       67 GETTABLEKS                       R10 R0 K25 ["OnParameterOverrideRevert"]
       69 SETTABLEKS                       R10 R9 K25 ["OnParameterOverrideRevert"]
       71 GETUPVAL                         R10 0
       72 GETTABLEKS                       R10 R10 K2 ["createElement"]
       74 GETUPVAL                         R11 2
       75 GETTABLEKS                       R11 R11 K27 ["NumberInput"]
       77 DUPTABLE                         R12 K41 [{["size"], ["width"], ["label"] = "", ["value"], ["isDisabled"], ["LayoutOrder"] = 2, ["precision"], ["step"], ["isScrubbable"] = True, ["formatAsString"], ["onChanged"], ["controlsVariant"]}]
       78 GETUPVAL                         R13 2
       79 GETTABLEKS                       R13 R13 K42 ["Enums"]
       81 GETTABLEKS                       R13 R13 K43 ["InputSize"]
       83 GETTABLEKS                       R13 R13 K44 ["XSmall"]
       85 SETTABLEKS                       R13 R12 K28 ["size"]
       87 GETTABLEKS                       R14 R0 K24 ["IsParameterOverridden"]
       89 JUMPIFNOT                        R14 ; [+4]
       90 GETUPVAL                         R13 6
       91 GETTABLEKS                       R13 R13 K45 ["PROPERTY_PARAMETER_OVERRIDDEN_WIDTH_UDIM"]
       93 JUMP                             ; [+5]
       94 GETIMPORT                        R13 K48 [UDim.new]
       96 LOADN                            R14 0
       97 LOADN                            R15 90
       98 CALL                             R13 2 1
       99 SETTABLEKS                       R13 R12 K29 ["width"]
      101 GETTABLEKS                       R15 R0 K50 ["Value"]
      103 FASTCALL1                        TONUMBER R15 ; [+2]
      104 GETIMPORT                        R14 K52 [tonumber]
      106 CALL                             R14 1 1
      107 ORK                              R13 R14 K49 [0]
      108 SETTABLEKS                       R13 R12 K32 ["value"]
      110 GETTABLEKS                       R13 R0 K23 ["IsDisabled"]
      112 SETTABLEKS                       R13 R12 K19 ["isDisabled"]
      114 GETUPVAL                         R14 7
      115 CALL                             R14 0 1
      116 JUMPIFNOT                        R14 ; [+6]
      117 GETUPVAL                         R13 8
      118 GETTABLEKS                       R13 R13 K53 ["NUMBER_PRECISION"]
      120 GETTABLEKS                       R13 R13 K54 ["Timestamp"]
      122 JUMP                             ; [+5]
      123 GETUPVAL                         R13 8
      124 GETTABLEKS                       R13 R13 K53 ["NUMBER_PRECISION"]
      126 GETTABLEKS                       R13 R13 K55 ["Float"]
      128 SETTABLEKS                       R13 R12 K34 ["precision"]
      130 GETUPVAL                         R14 7
      131 CALL                             R14 0 1
      132 JUMPIFNOT                        R14 ; [+6]
      133 GETUPVAL                         R13 8
      134 GETTABLEKS                       R13 R13 K56 ["NUMBER_STEP"]
      136 GETTABLEKS                       R13 R13 K54 ["Timestamp"]
      138 JUMP                             ; [+1]
      139 LOADK                            R13 K57 [0.005]
      140 SETTABLEKS                       R13 R12 K35 ["step"]
      142 SETTABLEKS                       R1 R12 K38 ["formatAsString"]
      144 SETTABLEKS                       R2 R12 K39 ["onChanged"]
      146 GETUPVAL                         R13 2
      147 GETTABLEKS                       R13 R13 K42 ["Enums"]
      149 GETTABLEKS                       R13 R13 K58 ["NumberInputControlsVariant"]
      151 GETTABLEKS                       R13 R13 K59 ["None"]
      153 SETTABLEKS                       R13 R12 K40 ["controlsVariant"]
      155 CALL                             R10 2 -1
      156 CALL                             R7 -1 1
      157 JUMP                             ; [+81]
      158 GETUPVAL                         R7 0
      159 GETTABLEKS                       R7 R7 K2 ["createElement"]
      161 GETUPVAL                         R8 2
      162 GETTABLEKS                       R8 R8 K27 ["NumberInput"]
      164 DUPTABLE                         R9 K41 [{["size"], ["width"], ["label"] = "", ["value"], ["isDisabled"], ["LayoutOrder"] = 2, ["precision"], ["step"], ["isScrubbable"] = True, ["formatAsString"], ["onChanged"], ["controlsVariant"]}]
      165 GETUPVAL                         R10 2
      166 GETTABLEKS                       R10 R10 K42 ["Enums"]
      168 GETTABLEKS                       R10 R10 K43 ["InputSize"]
      170 GETTABLEKS                       R10 R10 K44 ["XSmall"]
      172 SETTABLEKS                       R10 R9 K28 ["size"]
      174 GETIMPORT                        R10 K48 [UDim.new]
      176 LOADN                            R11 0
      177 LOADN                            R12 90
      178 CALL                             R10 2 1
      179 SETTABLEKS                       R10 R9 K29 ["width"]
      181 GETTABLEKS                       R12 R0 K50 ["Value"]
      183 FASTCALL1                        TONUMBER R12 ; [+2]
      184 GETIMPORT                        R11 K52 [tonumber]
      186 CALL                             R11 1 1
      187 ORK                              R10 R11 K49 [0]
      188 SETTABLEKS                       R10 R9 K32 ["value"]
      190 GETTABLEKS                       R10 R0 K60 ["IsParameterized"]
      192 JUMPIF                           R10 ; [+2]
      193 GETTABLEKS                       R10 R0 K23 ["IsDisabled"]
      195 SETTABLEKS                       R10 R9 K19 ["isDisabled"]
      197 GETUPVAL                         R11 7
      198 CALL                             R11 0 1
      199 JUMPIFNOT                        R11 ; [+6]
      200 GETUPVAL                         R10 8
      201 GETTABLEKS                       R10 R10 K53 ["NUMBER_PRECISION"]
      203 GETTABLEKS                       R10 R10 K54 ["Timestamp"]
      205 JUMP                             ; [+5]
      206 GETUPVAL                         R10 8
      207 GETTABLEKS                       R10 R10 K53 ["NUMBER_PRECISION"]
      209 GETTABLEKS                       R10 R10 K55 ["Float"]
      211 SETTABLEKS                       R10 R9 K34 ["precision"]
      213 GETUPVAL                         R11 7
      214 CALL                             R11 0 1
      215 JUMPIFNOT                        R11 ; [+6]
      216 GETUPVAL                         R10 8
      217 GETTABLEKS                       R10 R10 K56 ["NUMBER_STEP"]
      219 GETTABLEKS                       R10 R10 K54 ["Timestamp"]
      221 JUMP                             ; [+1]
      222 LOADK                            R10 K57 [0.005]
      223 SETTABLEKS                       R10 R9 K35 ["step"]
      225 SETTABLEKS                       R1 R9 K38 ["formatAsString"]
      227 SETTABLEKS                       R2 R9 K39 ["onChanged"]
      229 GETUPVAL                         R10 2
      230 GETTABLEKS                       R10 R10 K42 ["Enums"]
      232 GETTABLEKS                       R10 R10 K58 ["NumberInputControlsVariant"]
      234 GETTABLEKS                       R10 R10 K59 ["None"]
      236 SETTABLEKS                       R10 R9 K40 ["controlsVariant"]
      238 CALL                             R7 2 1
      239 SETTABLEKS                       R7 R6 K13 ["Input"]
      241 GETUPVAL                         R7 0
      242 GETTABLEKS                       R7 R7 K2 ["createElement"]
      244 LOADK                            R8 K61 ["Folder"]
      245 NEWTABLE                         R9 0 0
      247 GETTABLEKS                       R10 R0 K62 ["children"]
      249 CALL                             R7 3 1
      250 SETTABLEKS                       R7 R6 K14 ["PinChildren"]
      252 CALL                             R3 3 -1
      253 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Components"]
       25 GETTABLEKS                       R4 R4 K11 ["NodeView"]
       27 GETTABLEKS                       R4 R4 K12 ["CompositorNodeProperty"]
       29 GETTABLEKS                       R4 R4 K13 ["InputPropertyField"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Parent"]
       36 GETTABLEKS                       R5 R5 K14 ["NodeGraphing"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K10 ["Components"]
       43 GETTABLEKS                       R6 R6 K11 ["NodeView"]
       45 GETTABLEKS                       R6 R6 K12 ["CompositorNodeProperty"]
       47 GETTABLEKS                       R6 R6 K15 ["PropertyConstants"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K10 ["Components"]
       54 GETTABLEKS                       R7 R7 K11 ["NodeView"]
       56 GETTABLEKS                       R7 R7 K12 ["CompositorNodeProperty"]
       58 GETTABLEKS                       R7 R7 K16 ["PropertyLabel"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R8 R0 K10 ["Components"]
       65 GETTABLEKS                       R8 R8 K11 ["NodeView"]
       67 GETTABLEKS                       R8 R8 K12 ["CompositorNodeProperty"]
       69 GETTABLEKS                       R8 R8 K17 ["PropertyUtils"]
       71 CALL                             R7 1 1
       72 GETIMPORT                        R8 K5 [require]
       74 GETTABLEKS                       R9 R0 K8 ["Parent"]
       76 GETTABLEKS                       R9 R9 K18 ["React"]
       78 CALL                             R8 1 1
       79 GETIMPORT                        R9 K5 [require]
       81 GETTABLEKS                       R10 R0 K19 ["Flags"]
       83 GETTABLEKS                       R10 R10 K20 ["getFFlagAnimGraphFloatStep003"]
       85 CALL                             R9 1 1
       86 GETIMPORT                        R10 K5 [require]
       88 GETTABLEKS                       R11 R0 K19 ["Flags"]
       90 GETTABLEKS                       R11 R11 K21 ["getFFlagAnimGraphUILetAllParametersOverridable"]
       92 CALL                             R10 1 1
       93 DUPCLOSURE                       R11 K22 [PROTO_1]
       94 CAPTURE                          VAL R8
       95 CAPTURE                          VAL R7
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R6
       98 CAPTURE                          VAL R10
       99 CAPTURE                          VAL R3
      100 CAPTURE                          VAL R5
      101 CAPTURE                          VAL R9
      102 CAPTURE                          VAL R1
      103 RETURN                           R11 1
