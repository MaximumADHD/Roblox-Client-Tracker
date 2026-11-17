PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+7]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["formatDisplayValue"]
        6 MOVE                             R2 R0
        7 GETUPVAL                         R3 2
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1
       10 GETUPVAL                         R1 3
       11 GETTABLEKS                       R1 R1 K1 ["formatTimestamp"]
       13 MOVE                             R2 R0
       14 CALL                             R1 1 -1
       15 RETURN                           R1 -1

PROTO_1:
        0 FASTCALL1                        TONUMBER R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K2 [tonumber]
        4 CALL                             R3 1 1
        5 ORK                              R2 R3 K0 [0]
        6 GETUPVAL                         R3 0
        7 CALL                             R3 0 1
        8 JUMPIFNOT                        R3 ; [+23]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K3 ["Enums"]
       12 GETTABLEKS                       R3 R3 K4 ["OnChangeCallbackReason"]
       14 GETTABLEKS                       R3 R3 K5 ["Drag"]
       16 JUMPIFNOTEQ                      R1 R3 ; [+8]
       18 GETUPVAL                         R3 2
       19 GETTABLEKS                       R3 R3 K6 ["snapDisplayValue"]
       21 MOVE                             R4 R2
       22 GETUPVAL                         R5 3
       23 CALL                             R3 2 1
       24 MOVE                             R2 R3
       25 GETUPVAL                         R3 2
       26 GETTABLEKS                       R3 R3 K7 ["displayToSeconds"]
       28 MOVE                             R4 R2
       29 GETUPVAL                         R5 3
       30 CALL                             R3 2 1
       31 MOVE                             R2 R3
       32 GETUPVAL                         R6 4
       33 GETTABLEKS                       R6 R6 K9 ["Minimum"]
       35 ORK                              R5 R6 K8 [-Infinity]
       36 GETUPVAL                         R7 4
       37 GETTABLEKS                       R7 R7 K11 ["Maximum"]
       39 ORK                              R6 R7 K10 [Infinity]
       40 FASTCALL3                        MATH_CLAMP R2 R5 R6
       42 MOVE                             R4 R2
       43 GETIMPORT                        R3 K14 [math.clamp]
       45 CALL                             R3 3 1
       46 GETUPVAL                         R4 4
       47 GETTABLEKS                       R4 R4 K15 ["OnChanged"]
       49 JUMPIFEQKNIL                     R4 ; [+6]
       51 GETUPVAL                         R4 4
       52 GETTABLEKS                       R4 R4 K15 ["OnChanged"]
       54 MOVE                             R5 R3
       55 CALL                             R4 1 0
       56 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useCallback"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          VAL R1
       14 CAPTURE                          UPVAL U3
       15 NEWTABLE                         R4 0 1
       17 MOVE                             R5 R1
       18 SETLIST                          R4 R5 1 [1]
       20 CALL                             R2 2 1
       21 NEWCLOSURE                       R3 P1
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          UPVAL U4
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          VAL R1
       26 CAPTURE                          VAL R0
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R4 R4 K3 ["createElement"]
       30 GETUPVAL                         R5 4
       31 GETTABLEKS                       R5 R5 K4 ["NumberInput"]
       33 DUPTABLE                         R6 K19 [{["size"], ["width"], ["label"] = "", ["value"], ["isDisabled"], ["LayoutOrder"] = 2, ["precision"], ["step"], ["scrubBehavior"], ["formatAsString"], ["onChanged"], ["controlsVariant"]}]
       34 GETUPVAL                         R7 4
       35 GETTABLEKS                       R7 R7 K20 ["Enums"]
       37 GETTABLEKS                       R7 R7 K21 ["InputSize"]
       39 GETTABLEKS                       R7 R7 K22 ["XSmall"]
       41 SETTABLEKS                       R7 R6 K5 ["size"]
       43 GETUPVAL                         R8 5
       44 CALL                             R8 0 1
       45 JUMPIFNOT                        R8 ; [+6]
       46 GETIMPORT                        R7 K25 [UDim.new]
       48 LOADN                            R8 1
       49 LOADN                            R9 0
       50 CALL                             R7 2 1
       51 JUMP                             ; [+12]
       52 GETTABLEKS                       R8 R0 K26 ["IsParameterOverridden"]
       54 JUMPIFNOT                        R8 ; [+4]
       55 GETUPVAL                         R7 6
       56 GETTABLEKS                       R7 R7 K27 ["PROPERTY_PARAMETER_OVERRIDDEN_WIDTH_UDIM"]
       58 JUMP                             ; [+5]
       59 GETIMPORT                        R7 K25 [UDim.new]
       61 LOADN                            R8 0
       62 LOADN                            R9 90
       63 CALL                             R7 2 1
       64 SETTABLEKS                       R7 R6 K6 ["width"]
       66 GETUPVAL                         R8 2
       67 CALL                             R8 0 1
       68 JUMPIFNOT                        R8 ; [+13]
       69 GETUPVAL                         R7 1
       70 GETTABLEKS                       R7 R7 K28 ["secondsToDisplay"]
       72 GETTABLEKS                       R10 R0 K30 ["Value"]
       74 FASTCALL1                        TONUMBER R10 ; [+2]
       75 GETIMPORT                        R9 K32 [tonumber]
       77 CALL                             R9 1 1
       78 ORK                              R8 R9 K29 [0]
       79 MOVE                             R9 R1
       80 CALL                             R7 2 1
       81 JUMP                             ; [+7]
       82 GETTABLEKS                       R9 R0 K30 ["Value"]
       84 FASTCALL1                        TONUMBER R9 ; [+2]
       85 GETIMPORT                        R8 K32 [tonumber]
       87 CALL                             R8 1 1
       88 ORK                              R7 R8 K29 [0]
       89 SETTABLEKS                       R7 R6 K9 ["value"]
       91 GETTABLEKS                       R7 R0 K33 ["IsDisabled"]
       93 SETTABLEKS                       R7 R6 K10 ["isDisabled"]
       95 GETUPVAL                         R8 2
       96 CALL                             R8 0 1
       97 JUMPIFNOT                        R8 ; [+6]
       98 GETUPVAL                         R7 1
       99 GETTABLEKS                       R7 R7 K34 ["getDisplayPrecision"]
      101 MOVE                             R8 R1
      102 CALL                             R7 1 1
      103 JUMP                             ; [+5]
      104 GETUPVAL                         R7 7
      105 GETTABLEKS                       R7 R7 K35 ["NUMBER_PRECISION"]
      107 GETTABLEKS                       R7 R7 K36 ["Timestamp"]
      109 SETTABLEKS                       R7 R6 K13 ["precision"]
      111 GETUPVAL                         R8 2
      112 CALL                             R8 0 1
      113 JUMPIFNOT                        R8 ; [+6]
      114 GETUPVAL                         R7 1
      115 GETTABLEKS                       R7 R7 K37 ["getDisplayStep"]
      117 MOVE                             R8 R1
      118 CALL                             R7 1 1
      119 JUMP                             ; [+5]
      120 GETUPVAL                         R7 7
      121 GETTABLEKS                       R7 R7 K38 ["NUMBER_STEP"]
      123 GETTABLEKS                       R7 R7 K36 ["Timestamp"]
      125 SETTABLEKS                       R7 R6 K14 ["step"]
      127 GETUPVAL                         R7 8
      128 GETTABLEKS                       R7 R7 K39 ["On"]
      130 SETTABLEKS                       R7 R6 K15 ["scrubBehavior"]
      132 SETTABLEKS                       R2 R6 K16 ["formatAsString"]
      134 SETTABLEKS                       R3 R6 K17 ["onChanged"]
      136 GETUPVAL                         R7 4
      137 GETTABLEKS                       R7 R7 K20 ["Enums"]
      139 GETTABLEKS                       R7 R7 K40 ["NumberInputControlsVariant"]
      141 GETTABLEKS                       R7 R7 K41 ["None"]
      143 SETTABLEKS                       R7 R6 K18 ["controlsVariant"]
      145 CALL                             R4 2 1
      146 GETUPVAL                         R5 5
      147 CALL                             R5 0 1
      148 JUMPIFNOT                        R5 ; [+12]
      149 GETUPVAL                         R5 0
      150 GETTABLEKS                       R5 R5 K3 ["createElement"]
      152 GETUPVAL                         R6 4
      153 GETTABLEKS                       R6 R6 K42 ["View"]
      155 DUPTABLE                         R7 K45 [{["tag"] = "fill row items-stretch align-y-center auto-y", ["LayoutOrder"] = 2}]
      156 DUPTABLE                         R8 K47 [{"Control"}]
      157 SETTABLEKS                       R4 R8 K46 ["Control"]
      159 CALL                             R5 3 1
      160 MOVE                             R4 R5
      161 GETUPVAL                         R5 0
      162 GETTABLEKS                       R5 R5 K3 ["createElement"]
      164 GETUPVAL                         R6 4
      165 GETTABLEKS                       R6 R6 K42 ["View"]
      167 DUPTABLE                         R7 K49 [{"tag", "LayoutOrder", "testId"}]
      168 GETUPVAL                         R8 4
      169 GETTABLEKS                       R8 R8 K50 ["Hooks"]
      171 GETTABLEKS                       R8 R8 K51 ["useDefaultTags"]
      173 GETTABLEKS                       R9 R0 K52 ["tags"]
      175 GETUPVAL                         R11 5
      176 CALL                             R11 0 1
      177 JUMPIFNOT                        R11 ; [+2]
      178 LOADK                            R10 K53 ["row auto-y gap-small size-full-700 align-y-center"]
      179 JUMP                             ; [+1]
      180 LOADK                            R10 K54 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
      181 CALL                             R8 2 1
      182 SETTABLEKS                       R8 R7 K43 ["tag"]
      184 GETTABLEKS                       R8 R0 K11 ["LayoutOrder"]
      186 SETTABLEKS                       R8 R7 K11 ["LayoutOrder"]
      188 GETTABLEKS                       R8 R0 K48 ["testId"]
      190 SETTABLEKS                       R8 R7 K48 ["testId"]
      192 DUPTABLE                         R8 K58 [{"CompositorNodeInputLabel", "Input", "PinChildren"}]
      193 GETUPVAL                         R9 0
      194 GETTABLEKS                       R9 R9 K3 ["createElement"]
      196 GETUPVAL                         R10 9
      197 DUPTABLE                         R11 K61 [{["tag"], ["Text"], ["LayoutOrder"] = 1, ["isDisabled"]}]
      198 NEWTABLE                         R12 4 0
      200 LOADB                            R13 1
      201 SETTABLEKS                       R13 R12 K62 ["fill text-body-small text-align-x-left text-truncate-split"]
      203 GETUPVAL                         R13 5
      204 CALL                             R13 0 1
      205 SETTABLEKS                       R13 R12 K63 ["auto-y"]
      207 GETUPVAL                         R14 5
      208 CALL                             R14 0 1
      209 NOT                              R13 R14
      210 SETTABLEKS                       R13 R12 K64 ["auto-xy"]
      212 SETTABLEKS                       R12 R11 K43 ["tag"]
      214 GETTABLEKS                       R12 R0 K65 ["Label"]
      216 SETTABLEKS                       R12 R11 K59 ["Text"]
      218 GETTABLEKS                       R13 R0 K33 ["IsDisabled"]
      220 ORK                              R12 R13 K66 [False]
      221 SETTABLEKS                       R12 R11 K10 ["isDisabled"]
      223 CALL                             R9 2 1
      224 SETTABLEKS                       R9 R8 K55 ["CompositorNodeInputLabel"]
      226 GETUPVAL                         R9 0
      227 GETTABLEKS                       R9 R9 K3 ["createElement"]
      229 GETUPVAL                         R10 10
      230 DUPTABLE                         R11 K68 [{"IsParameterOverridden", "OnParameterOverrideRevert"}]
      231 GETTABLEKS                       R12 R0 K26 ["IsParameterOverridden"]
      233 SETTABLEKS                       R12 R11 K26 ["IsParameterOverridden"]
      235 GETTABLEKS                       R12 R0 K67 ["OnParameterOverrideRevert"]
      237 SETTABLEKS                       R12 R11 K67 ["OnParameterOverrideRevert"]
      239 MOVE                             R12 R4
      240 CALL                             R9 3 1
      241 SETTABLEKS                       R9 R8 K56 ["Input"]
      243 GETUPVAL                         R9 0
      244 GETTABLEKS                       R9 R9 K3 ["createElement"]
      246 LOADK                            R10 K69 ["Folder"]
      247 NEWTABLE                         R11 0 0
      249 GETTABLEKS                       R12 R0 K70 ["children"]
      251 CALL                             R9 3 1
      252 SETTABLEKS                       R9 R8 K57 ["PinChildren"]
      254 CALL                             R5 3 -1
      255 RETURN                           R5 -1

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
       81 GETIMPORT                        R10 K5 [require]
       83 GETTABLEKS                       R11 R0 K20 ["Flags"]
       85 GETTABLEKS                       R11 R11 K21 ["getFFlagAnimGraphUITimestampFrames"]
       87 CALL                             R10 1 1
       88 GETTABLEKS                       R11 R4 K22 ["SettingsContext"]
       90 GETTABLEKS                       R12 R2 K23 ["Enums"]
       92 GETTABLEKS                       R12 R12 K24 ["ScrubBehavior"]
       94 DUPCLOSURE                       R13 K25 [PROTO_2]
       95 CAPTURE                          VAL R8
       96 CAPTURE                          VAL R11
       97 CAPTURE                          VAL R10
       98 CAPTURE                          VAL R7
       99 CAPTURE                          VAL R2
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R5
      102 CAPTURE                          VAL R1
      103 CAPTURE                          VAL R12
      104 CAPTURE                          VAL R6
      105 CAPTURE                          VAL R3
      106 RETURN                           R13 1
