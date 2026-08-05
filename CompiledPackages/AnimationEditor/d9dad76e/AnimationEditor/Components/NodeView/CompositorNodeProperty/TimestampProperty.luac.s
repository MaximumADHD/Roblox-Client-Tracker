PROTO_0:
        0 FASTCALL1                        TONUMBER R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K2 [tonumber]
        4 CALL                             R2 1 1
        5 ORK                              R1 R2 K0 [0]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K4 ["Minimum"]
        9 ORK                              R4 R5 K3 [-∞]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K6 ["Maximum"]
       13 ORK                              R5 R6 K5 [∞]
       14 FASTCALL3                        MATH_CLAMP R1 R4 R5
       16 MOVE                             R3 R1
       17 GETIMPORT                        R2 K9 [math.clamp]
       19 CALL                             R2 3 1
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R3 R3 K10 ["OnChanged"]
       23 JUMPIFEQKNIL                     R3 ; [+6]
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K10 ["OnChanged"]
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
       57 JUMPIFNOT                        R8 ; [+91]
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
       77 DUPTABLE                         R12 K40 [{["size"], ["width"], ["label"] = "", ["value"], ["isDisabled"], ["LayoutOrder"] = 2, ["precision"], ["step"], ["scrubBehavior"], ["formatAsString"], ["onChanged"], ["controlsVariant"]}]
       78 GETUPVAL                         R13 2
       79 GETTABLEKS                       R13 R13 K41 ["Enums"]
       81 GETTABLEKS                       R13 R13 K42 ["InputSize"]
       83 GETTABLEKS                       R13 R13 K43 ["XSmall"]
       85 SETTABLEKS                       R13 R12 K28 ["size"]
       87 GETTABLEKS                       R14 R0 K24 ["IsParameterOverridden"]
       89 JUMPIFNOT                        R14 ; [+4]
       90 GETUPVAL                         R13 6
       91 GETTABLEKS                       R13 R13 K44 ["PROPERTY_PARAMETER_OVERRIDDEN_WIDTH_UDIM"]
       93 JUMP                             ; [+5]
       94 GETIMPORT                        R13 K47 [UDim.new]
       96 LOADN                            R14 0
       97 LOADN                            R15 90
       98 CALL                             R13 2 1
       99 SETTABLEKS                       R13 R12 K29 ["width"]
      101 GETTABLEKS                       R15 R0 K49 ["Value"]
      103 FASTCALL1                        TONUMBER R15 ; [+2]
      104 GETIMPORT                        R14 K51 [tonumber]
      106 CALL                             R14 1 1
      107 ORK                              R13 R14 K48 [0]
      108 SETTABLEKS                       R13 R12 K32 ["value"]
      110 GETTABLEKS                       R13 R0 K23 ["IsDisabled"]
      112 SETTABLEKS                       R13 R12 K19 ["isDisabled"]
      114 GETUPVAL                         R13 7
      115 GETTABLEKS                       R13 R13 K52 ["NUMBER_PRECISION"]
      117 GETTABLEKS                       R13 R13 K53 ["Timestamp"]
      119 SETTABLEKS                       R13 R12 K34 ["precision"]
      121 GETUPVAL                         R13 7
      122 GETTABLEKS                       R13 R13 K54 ["NUMBER_STEP"]
      124 GETTABLEKS                       R13 R13 K53 ["Timestamp"]
      126 SETTABLEKS                       R13 R12 K35 ["step"]
      128 GETUPVAL                         R13 8
      129 GETTABLEKS                       R13 R13 K55 ["On"]
      131 SETTABLEKS                       R13 R12 K36 ["scrubBehavior"]
      133 SETTABLEKS                       R1 R12 K37 ["formatAsString"]
      135 SETTABLEKS                       R2 R12 K38 ["onChanged"]
      137 GETUPVAL                         R13 2
      138 GETTABLEKS                       R13 R13 K41 ["Enums"]
      140 GETTABLEKS                       R13 R13 K56 ["NumberInputControlsVariant"]
      142 GETTABLEKS                       R13 R13 K57 ["None"]
      144 SETTABLEKS                       R13 R12 K39 ["controlsVariant"]
      146 CALL                             R10 2 -1
      147 CALL                             R7 -1 1
      148 JUMP                             ; [+72]
      149 GETUPVAL                         R7 0
      150 GETTABLEKS                       R7 R7 K2 ["createElement"]
      152 GETUPVAL                         R8 2
      153 GETTABLEKS                       R8 R8 K27 ["NumberInput"]
      155 DUPTABLE                         R9 K40 [{["size"], ["width"], ["label"] = "", ["value"], ["isDisabled"], ["LayoutOrder"] = 2, ["precision"], ["step"], ["scrubBehavior"], ["formatAsString"], ["onChanged"], ["controlsVariant"]}]
      156 GETUPVAL                         R10 2
      157 GETTABLEKS                       R10 R10 K41 ["Enums"]
      159 GETTABLEKS                       R10 R10 K42 ["InputSize"]
      161 GETTABLEKS                       R10 R10 K43 ["XSmall"]
      163 SETTABLEKS                       R10 R9 K28 ["size"]
      165 GETIMPORT                        R10 K47 [UDim.new]
      167 LOADN                            R11 0
      168 LOADN                            R12 90
      169 CALL                             R10 2 1
      170 SETTABLEKS                       R10 R9 K29 ["width"]
      172 GETTABLEKS                       R12 R0 K49 ["Value"]
      174 FASTCALL1                        TONUMBER R12 ; [+2]
      175 GETIMPORT                        R11 K51 [tonumber]
      177 CALL                             R11 1 1
      178 ORK                              R10 R11 K48 [0]
      179 SETTABLEKS                       R10 R9 K32 ["value"]
      181 GETTABLEKS                       R10 R0 K58 ["IsParameterized"]
      183 JUMPIF                           R10 ; [+2]
      184 GETTABLEKS                       R10 R0 K23 ["IsDisabled"]
      186 SETTABLEKS                       R10 R9 K19 ["isDisabled"]
      188 GETUPVAL                         R10 7
      189 GETTABLEKS                       R10 R10 K52 ["NUMBER_PRECISION"]
      191 GETTABLEKS                       R10 R10 K53 ["Timestamp"]
      193 SETTABLEKS                       R10 R9 K34 ["precision"]
      195 GETUPVAL                         R10 7
      196 GETTABLEKS                       R10 R10 K54 ["NUMBER_STEP"]
      198 GETTABLEKS                       R10 R10 K53 ["Timestamp"]
      200 SETTABLEKS                       R10 R9 K35 ["step"]
      202 GETUPVAL                         R10 8
      203 GETTABLEKS                       R10 R10 K55 ["On"]
      205 SETTABLEKS                       R10 R9 K36 ["scrubBehavior"]
      207 SETTABLEKS                       R1 R9 K37 ["formatAsString"]
      209 SETTABLEKS                       R2 R9 K38 ["onChanged"]
      211 GETUPVAL                         R10 2
      212 GETTABLEKS                       R10 R10 K41 ["Enums"]
      214 GETTABLEKS                       R10 R10 K56 ["NumberInputControlsVariant"]
      216 GETTABLEKS                       R10 R10 K57 ["None"]
      218 SETTABLEKS                       R10 R9 K39 ["controlsVariant"]
      220 CALL                             R7 2 1
      221 SETTABLEKS                       R7 R6 K13 ["Input"]
      223 GETUPVAL                         R7 0
      224 GETTABLEKS                       R7 R7 K2 ["createElement"]
      226 LOADK                            R8 K59 ["Folder"]
      227 NEWTABLE                         R9 0 0
      229 GETTABLEKS                       R10 R0 K60 ["children"]
      231 CALL                             R7 3 1
      232 SETTABLEKS                       R7 R6 K14 ["PinChildren"]
      234 CALL                             R3 3 -1
      235 RETURN                           R3 -1

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
       83 GETTABLEKS                       R10 R10 K20 ["getFFlagAnimGraphUILetAllParametersOverridable"]
       85 CALL                             R9 1 1
       86 GETTABLEKS                       R10 R2 K21 ["Enums"]
       88 GETTABLEKS                       R10 R10 K22 ["ScrubBehavior"]
       90 DUPCLOSURE                       R11 K23 [PROTO_1]
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R2
       94 CAPTURE                          VAL R6
       95 CAPTURE                          VAL R9
       96 CAPTURE                          VAL R3
       97 CAPTURE                          VAL R5
       98 CAPTURE                          VAL R1
       99 CAPTURE                          VAL R10
      100 RETURN                           R11 1
