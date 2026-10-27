PROTO_0:
        0 FASTCALL1                        TONUMBER R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K2 [tonumber]
        4 CALL                             R2 1 1
        5 ORK                              R1 R2 K0 [0]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K4 ["Minimum"]
        9 ORK                              R4 R5 K3 [-Infinity]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K6 ["Maximum"]
       13 ORK                              R5 R6 K5 [Infinity]
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
       15 GETTABLEKS                       R4 R4 K3 ["NumberInput"]
       17 DUPTABLE                         R5 K18 [{["size"], ["width"], ["label"] = "", ["value"], ["isDisabled"], ["LayoutOrder"] = 2, ["precision"], ["step"], ["scrubBehavior"], ["formatAsString"], ["onChanged"], ["controlsVariant"]}]
       18 GETUPVAL                         R6 2
       19 GETTABLEKS                       R6 R6 K19 ["Enums"]
       21 GETTABLEKS                       R6 R6 K20 ["InputSize"]
       23 GETTABLEKS                       R6 R6 K21 ["XSmall"]
       25 SETTABLEKS                       R6 R5 K4 ["size"]
       27 GETUPVAL                         R7 3
       28 CALL                             R7 0 1
       29 JUMPIFNOT                        R7 ; [+6]
       30 GETIMPORT                        R6 K24 [UDim.new]
       32 LOADN                            R7 1
       33 LOADN                            R8 0
       34 CALL                             R6 2 1
       35 JUMP                             ; [+12]
       36 GETTABLEKS                       R7 R0 K25 ["IsParameterOverridden"]
       38 JUMPIFNOT                        R7 ; [+4]
       39 GETUPVAL                         R6 4
       40 GETTABLEKS                       R6 R6 K26 ["PROPERTY_PARAMETER_OVERRIDDEN_WIDTH_UDIM"]
       42 JUMP                             ; [+5]
       43 GETIMPORT                        R6 K24 [UDim.new]
       45 LOADN                            R7 0
       46 LOADN                            R8 90
       47 CALL                             R6 2 1
       48 SETTABLEKS                       R6 R5 K5 ["width"]
       50 GETTABLEKS                       R8 R0 K28 ["Value"]
       52 FASTCALL1                        TONUMBER R8 ; [+2]
       53 GETIMPORT                        R7 K30 [tonumber]
       55 CALL                             R7 1 1
       56 ORK                              R6 R7 K27 [0]
       57 SETTABLEKS                       R6 R5 K8 ["value"]
       59 GETTABLEKS                       R6 R0 K31 ["IsDisabled"]
       61 SETTABLEKS                       R6 R5 K9 ["isDisabled"]
       63 GETUPVAL                         R6 5
       64 GETTABLEKS                       R6 R6 K32 ["NUMBER_PRECISION"]
       66 GETTABLEKS                       R6 R6 K33 ["Timestamp"]
       68 SETTABLEKS                       R6 R5 K12 ["precision"]
       70 GETUPVAL                         R6 5
       71 GETTABLEKS                       R6 R6 K34 ["NUMBER_STEP"]
       73 GETTABLEKS                       R6 R6 K33 ["Timestamp"]
       75 SETTABLEKS                       R6 R5 K13 ["step"]
       77 GETUPVAL                         R6 6
       78 GETTABLEKS                       R6 R6 K35 ["On"]
       80 SETTABLEKS                       R6 R5 K14 ["scrubBehavior"]
       82 SETTABLEKS                       R1 R5 K15 ["formatAsString"]
       84 SETTABLEKS                       R2 R5 K16 ["onChanged"]
       86 GETUPVAL                         R6 2
       87 GETTABLEKS                       R6 R6 K19 ["Enums"]
       89 GETTABLEKS                       R6 R6 K36 ["NumberInputControlsVariant"]
       91 GETTABLEKS                       R6 R6 K37 ["None"]
       93 SETTABLEKS                       R6 R5 K17 ["controlsVariant"]
       95 CALL                             R3 2 1
       96 GETUPVAL                         R4 3
       97 CALL                             R4 0 1
       98 JUMPIFNOT                        R4 ; [+12]
       99 GETUPVAL                         R4 0
      100 GETTABLEKS                       R4 R4 K2 ["createElement"]
      102 GETUPVAL                         R5 2
      103 GETTABLEKS                       R5 R5 K38 ["View"]
      105 DUPTABLE                         R6 K41 [{["tag"] = "fill row items-stretch align-y-center auto-y", ["LayoutOrder"] = 2}]
      106 DUPTABLE                         R7 K43 [{"Control"}]
      107 SETTABLEKS                       R3 R7 K42 ["Control"]
      109 CALL                             R4 3 1
      110 MOVE                             R3 R4
      111 GETUPVAL                         R4 0
      112 GETTABLEKS                       R4 R4 K2 ["createElement"]
      114 GETUPVAL                         R5 2
      115 GETTABLEKS                       R5 R5 K38 ["View"]
      117 DUPTABLE                         R6 K45 [{"tag", "LayoutOrder", "testId"}]
      118 GETUPVAL                         R7 2
      119 GETTABLEKS                       R7 R7 K46 ["Hooks"]
      121 GETTABLEKS                       R7 R7 K47 ["useDefaultTags"]
      123 GETTABLEKS                       R8 R0 K48 ["tags"]
      125 GETUPVAL                         R10 3
      126 CALL                             R10 0 1
      127 JUMPIFNOT                        R10 ; [+2]
      128 LOADK                            R9 K49 ["row auto-y gap-small size-full-700 align-y-center"]
      129 JUMP                             ; [+1]
      130 LOADK                            R9 K50 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
      131 CALL                             R7 2 1
      132 SETTABLEKS                       R7 R6 K39 ["tag"]
      134 GETTABLEKS                       R7 R0 K10 ["LayoutOrder"]
      136 SETTABLEKS                       R7 R6 K10 ["LayoutOrder"]
      138 GETTABLEKS                       R7 R0 K44 ["testId"]
      140 SETTABLEKS                       R7 R6 K44 ["testId"]
      142 DUPTABLE                         R7 K54 [{"CompositorNodeInputLabel", "Input", "PinChildren"}]
      143 GETUPVAL                         R8 0
      144 GETTABLEKS                       R8 R8 K2 ["createElement"]
      146 GETUPVAL                         R9 7
      147 DUPTABLE                         R10 K57 [{["tag"], ["Text"], ["LayoutOrder"] = 1, ["isDisabled"]}]
      148 NEWTABLE                         R11 4 0
      150 LOADB                            R12 1
      151 SETTABLEKS                       R12 R11 K58 ["fill text-body-small text-align-x-left text-truncate-split"]
      153 GETUPVAL                         R12 3
      154 CALL                             R12 0 1
      155 SETTABLEKS                       R12 R11 K59 ["auto-y"]
      157 GETUPVAL                         R13 3
      158 CALL                             R13 0 1
      159 NOT                              R12 R13
      160 SETTABLEKS                       R12 R11 K60 ["auto-xy"]
      162 SETTABLEKS                       R11 R10 K39 ["tag"]
      164 GETTABLEKS                       R11 R0 K61 ["Label"]
      166 SETTABLEKS                       R11 R10 K55 ["Text"]
      168 GETTABLEKS                       R12 R0 K31 ["IsDisabled"]
      170 ORK                              R11 R12 K62 [False]
      171 SETTABLEKS                       R11 R10 K9 ["isDisabled"]
      173 CALL                             R8 2 1
      174 SETTABLEKS                       R8 R7 K51 ["CompositorNodeInputLabel"]
      176 GETUPVAL                         R8 0
      177 GETTABLEKS                       R8 R8 K2 ["createElement"]
      179 GETUPVAL                         R9 8
      180 DUPTABLE                         R10 K64 [{"IsParameterOverridden", "OnParameterOverrideRevert"}]
      181 GETTABLEKS                       R11 R0 K25 ["IsParameterOverridden"]
      183 SETTABLEKS                       R11 R10 K25 ["IsParameterOverridden"]
      185 GETTABLEKS                       R11 R0 K63 ["OnParameterOverrideRevert"]
      187 SETTABLEKS                       R11 R10 K63 ["OnParameterOverrideRevert"]
      189 MOVE                             R11 R3
      190 CALL                             R8 3 1
      191 SETTABLEKS                       R8 R7 K52 ["Input"]
      193 GETUPVAL                         R8 0
      194 GETTABLEKS                       R8 R8 K2 ["createElement"]
      196 LOADK                            R9 K65 ["Folder"]
      197 NEWTABLE                         R10 0 0
      199 GETTABLEKS                       R11 R0 K66 ["children"]
      201 CALL                             R8 3 1
      202 SETTABLEKS                       R8 R7 K53 ["PinChildren"]
      204 CALL                             R4 3 -1
      205 RETURN                           R4 -1

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
       79 GETTABLEKS                       R9 R4 K19 ["getFFlagAnimGraphUINodeFieldLayout"]
       81 GETTABLEKS                       R10 R2 K20 ["Enums"]
       83 GETTABLEKS                       R10 R10 K21 ["ScrubBehavior"]
       85 DUPCLOSURE                       R11 K22 [PROTO_1]
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R2
       89 CAPTURE                          VAL R9
       90 CAPTURE                          VAL R5
       91 CAPTURE                          VAL R1
       92 CAPTURE                          VAL R10
       93 CAPTURE                          VAL R6
       94 CAPTURE                          VAL R3
       95 RETURN                           R11 1
