PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Value"]
        3 FASTCALL1                        TYPE R1 ; [+2]
        4 GETIMPORT                        R0 K2 [type]
        6 CALL                             R0 1 1
        7 JUMPIFNOTEQKS                    R0 K3 ["number"] ; [+5]
        9 GETUPVAL                         R0 0
       10 GETTABLEKS                       R0 R0 K0 ["Value"]
       12 RETURN                           R0 1
       13 LOADN                            R0 0
       14 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+6]
        3 GETIMPORT                        R0 K2 [UDim.new]
        5 LOADN                            R1 1
        6 LOADN                            R2 0
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K3 ["IsParameterOverridden"]
       12 JUMPIFNOT                        R1 ; [+4]
       13 GETUPVAL                         R0 2
       14 GETTABLEKS                       R0 R0 K4 ["PROPERTY_PARAMETER_OVERRIDDEN_WIDTH_UDIM"]
       16 RETURN                           R0 1
       17 GETUPVAL                         R0 2
       18 GETTABLEKS                       R0 R0 K5 ["PROPERTY_WIDTH_UDIM"]
       20 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["Enums"]
        3 GETTABLEKS                       R3 R3 K1 ["OnChangeCallbackReason"]
        5 GETTABLEKS                       R3 R3 K2 ["Drag"]
        7 JUMPIFNOTEQ                      R1 R3 ; [+3]
        9 LOADK                            R2 K2 ["Drag"]
       10 JUMP                             ; [+1]
       11 LOADNIL                          R2
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K3 ["OnChanged"]
       15 MOVE                             R4 R0
       16 MOVE                             R5 R2
       17 CALL                             R3 2 0
       18 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 1
        7 GETTABLEKS                       R4 R0 K1 ["Value"]
        9 SETLIST                          R3 R4 1 [1]
       11 CALL                             R1 2 1
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K0 ["useMemo"]
       15 NEWCLOSURE                       R3 P1
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U2
       19 NEWTABLE                         R4 0 1
       21 GETTABLEKS                       R5 R0 K2 ["IsParameterOverridden"]
       23 SETLIST                          R4 R5 1 [1]
       25 CALL                             R2 2 1
       26 GETUPVAL                         R3 3
       27 GETTABLEKS                       R3 R3 K3 ["useEventCallback"]
       29 NEWCLOSURE                       R4 P2
       30 CAPTURE                          UPVAL U4
       31 CAPTURE                          VAL R0
       32 CALL                             R3 1 1
       33 GETUPVAL                         R4 0
       34 GETTABLEKS                       R4 R4 K4 ["createElement"]
       36 GETUPVAL                         R5 4
       37 GETTABLEKS                       R5 R5 K5 ["NumberInput"]
       39 DUPTABLE                         R6 K23 [{["size"], ["width"], ["label"] = "", ["value"], ["LayoutOrder"] = 2, ["precision"], ["step"], ["formatAsString"], ["scrubBehavior"], ["minimum"], ["maximum"], ["onChanged"], ["variant"], ["controlsVariant"], ["isDisabled"]}]
       40 GETUPVAL                         R7 4
       41 GETTABLEKS                       R7 R7 K24 ["Enums"]
       43 GETTABLEKS                       R7 R7 K25 ["InputSize"]
       45 GETTABLEKS                       R7 R7 K26 ["XSmall"]
       47 SETTABLEKS                       R7 R6 K6 ["size"]
       49 SETTABLEKS                       R2 R6 K7 ["width"]
       51 SETTABLEKS                       R1 R6 K10 ["value"]
       53 GETTABLEKS                       R7 R0 K27 ["Precision"]
       55 JUMPIF                           R7 ; [+5]
       56 GETUPVAL                         R7 5
       57 GETTABLEKS                       R7 R7 K28 ["NUMBER_PRECISION"]
       59 GETTABLEKS                       R7 R7 K29 ["Float"]
       61 SETTABLEKS                       R7 R6 K13 ["precision"]
       63 GETTABLEKS                       R7 R0 K30 ["Step"]
       65 JUMPIF                           R7 ; [+5]
       66 GETUPVAL                         R7 5
       67 GETTABLEKS                       R7 R7 K31 ["NUMBER_STEP"]
       69 GETTABLEKS                       R7 R7 K29 ["Float"]
       71 SETTABLEKS                       R7 R6 K14 ["step"]
       73 GETTABLEKS                       R7 R0 K32 ["FormatAsString"]
       75 SETTABLEKS                       R7 R6 K15 ["formatAsString"]
       77 GETUPVAL                         R7 6
       78 GETTABLEKS                       R7 R7 K33 ["On"]
       80 SETTABLEKS                       R7 R6 K16 ["scrubBehavior"]
       82 GETTABLEKS                       R7 R0 K34 ["Minimum"]
       84 SETTABLEKS                       R7 R6 K17 ["minimum"]
       86 GETTABLEKS                       R7 R0 K35 ["Maximum"]
       88 SETTABLEKS                       R7 R6 K18 ["maximum"]
       90 SETTABLEKS                       R3 R6 K19 ["onChanged"]
       92 GETUPVAL                         R8 7
       93 JUMPIFNOT                        R8 ; [+8]
       94 GETUPVAL                         R7 4
       95 GETTABLEKS                       R7 R7 K24 ["Enums"]
       97 GETTABLEKS                       R7 R7 K36 ["InputVariant"]
       99 GETTABLEKS                       R7 R7 K37 ["Contrast"]
      101 JUMP                             ; [+1]
      102 LOADNIL                          R7
      103 SETTABLEKS                       R7 R6 K20 ["variant"]
      105 GETUPVAL                         R7 4
      106 GETTABLEKS                       R7 R7 K24 ["Enums"]
      108 GETTABLEKS                       R7 R7 K38 ["NumberInputControlsVariant"]
      110 GETTABLEKS                       R7 R7 K39 ["None"]
      112 SETTABLEKS                       R7 R6 K21 ["controlsVariant"]
      114 GETTABLEKS                       R8 R0 K41 ["IsDisabled"]
      116 ORK                              R7 R8 K40 [False]
      117 SETTABLEKS                       R7 R6 K22 ["isDisabled"]
      119 CALL                             R4 2 1
      120 GETUPVAL                         R5 1
      121 CALL                             R5 0 1
      122 JUMPIFNOT                        R5 ; [+12]
      123 GETUPVAL                         R5 0
      124 GETTABLEKS                       R5 R5 K4 ["createElement"]
      126 GETUPVAL                         R6 4
      127 GETTABLEKS                       R6 R6 K42 ["View"]
      129 DUPTABLE                         R7 K45 [{["tag"] = "fill row items-stretch align-y-center auto-y", ["LayoutOrder"] = 2}]
      130 DUPTABLE                         R8 K47 [{"Input"}]
      131 SETTABLEKS                       R4 R8 K46 ["Input"]
      133 CALL                             R5 3 1
      134 MOVE                             R4 R5
      135 GETUPVAL                         R5 0
      136 GETTABLEKS                       R5 R5 K4 ["createElement"]
      138 GETUPVAL                         R6 4
      139 GETTABLEKS                       R6 R6 K42 ["View"]
      141 DUPTABLE                         R7 K49 [{"tag", "LayoutOrder", "testId"}]
      142 GETUPVAL                         R8 4
      143 GETTABLEKS                       R8 R8 K50 ["Hooks"]
      145 GETTABLEKS                       R8 R8 K51 ["useDefaultTags"]
      147 GETTABLEKS                       R9 R0 K52 ["tags"]
      149 GETUPVAL                         R11 1
      150 CALL                             R11 0 1
      151 JUMPIFNOT                        R11 ; [+2]
      152 LOADK                            R10 K53 ["row auto-y gap-small size-full-700 align-y-center"]
      153 JUMP                             ; [+1]
      154 LOADK                            R10 K54 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
      155 CALL                             R8 2 1
      156 SETTABLEKS                       R8 R7 K43 ["tag"]
      158 GETTABLEKS                       R8 R0 K11 ["LayoutOrder"]
      160 SETTABLEKS                       R8 R7 K11 ["LayoutOrder"]
      162 GETTABLEKS                       R8 R0 K48 ["testId"]
      164 SETTABLEKS                       R8 R7 K48 ["testId"]
      166 DUPTABLE                         R8 K58 [{"CompositorNodeInputLabel", "InputField", "PinChildren"}]
      167 GETUPVAL                         R10 8
      168 CALL                             R10 0 1
      169 JUMPIFNOT                        R10 ; [+8]
      170 GETTABLEKS                       R9 R0 K59 ["Label"]
      172 JUMPIFNOT                        R9 ; [+36]
      173 LOADB                            R9 0
      174 GETTABLEKS                       R10 R0 K59 ["Label"]
      176 JUMPIFEQKS                       R10 K9 [""] ; [+32]
      178 GETUPVAL                         R9 0
      179 GETTABLEKS                       R9 R9 K4 ["createElement"]
      181 GETUPVAL                         R10 9
      182 DUPTABLE                         R11 K62 [{["tag"], ["Text"], ["LayoutOrder"] = 1, ["isDisabled"]}]
      183 NEWTABLE                         R12 4 0
      185 LOADB                            R13 1
      186 SETTABLEKS                       R13 R12 K63 ["fill text-body-small text-align-x-left text-truncate-split"]
      188 GETUPVAL                         R13 1
      189 CALL                             R13 0 1
      190 SETTABLEKS                       R13 R12 K64 ["auto-y"]
      192 GETUPVAL                         R14 1
      193 CALL                             R14 0 1
      194 NOT                              R13 R14
      195 SETTABLEKS                       R13 R12 K65 ["auto-xy"]
      197 SETTABLEKS                       R12 R11 K43 ["tag"]
      199 GETTABLEKS                       R12 R0 K59 ["Label"]
      201 SETTABLEKS                       R12 R11 K60 ["Text"]
      203 GETTABLEKS                       R13 R0 K41 ["IsDisabled"]
      205 ORK                              R12 R13 K40 [False]
      206 SETTABLEKS                       R12 R11 K22 ["isDisabled"]
      208 CALL                             R9 2 1
      209 SETTABLEKS                       R9 R8 K55 ["CompositorNodeInputLabel"]
      211 GETUPVAL                         R9 0
      212 GETTABLEKS                       R9 R9 K4 ["createElement"]
      214 GETUPVAL                         R10 10
      215 DUPTABLE                         R11 K67 [{"IsParameterOverridden", "OnParameterOverrideRevert"}]
      216 GETTABLEKS                       R12 R0 K2 ["IsParameterOverridden"]
      218 SETTABLEKS                       R12 R11 K2 ["IsParameterOverridden"]
      220 GETTABLEKS                       R12 R0 K66 ["OnParameterOverrideRevert"]
      222 SETTABLEKS                       R12 R11 K66 ["OnParameterOverrideRevert"]
      224 MOVE                             R12 R4
      225 CALL                             R9 3 1
      226 SETTABLEKS                       R9 R8 K56 ["InputField"]
      228 GETUPVAL                         R9 0
      229 GETTABLEKS                       R9 R9 K4 ["createElement"]
      231 LOADK                            R10 K68 ["Folder"]
      232 NEWTABLE                         R11 0 0
      234 GETTABLEKS                       R12 R0 K69 ["children"]
      236 CALL                             R9 3 1
      237 SETTABLEKS                       R9 R8 K57 ["PinChildren"]
      239 CALL                             R5 3 -1
      240 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Constants"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Flags"]
       16 GETTABLEKS                       R3 R3 K8 ["FFlagAnimGraphUI_StyleTouches"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Parent"]
       23 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K11 ["Components"]
       30 GETTABLEKS                       R5 R5 K12 ["GraphContext"]
       32 GETTABLEKS                       R5 R5 K13 ["GraphContextTypes"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Components"]
       39 GETTABLEKS                       R6 R6 K14 ["CompositorNodeProperty"]
       41 GETTABLEKS                       R6 R6 K15 ["InputPropertyField"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K11 ["Components"]
       48 GETTABLEKS                       R7 R7 K14 ["CompositorNodeProperty"]
       50 GETTABLEKS                       R7 R7 K16 ["PropertyConstants"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K11 ["Components"]
       57 GETTABLEKS                       R8 R8 K14 ["CompositorNodeProperty"]
       59 GETTABLEKS                       R8 R8 K17 ["PropertyLabel"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K9 ["Parent"]
       66 GETTABLEKS                       R9 R9 K18 ["React"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K9 ["Parent"]
       73 GETTABLEKS                       R10 R10 K19 ["ReactUtils"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R11 R0 K7 ["Flags"]
       80 GETTABLEKS                       R11 R11 K20 ["getFFlagAnimGraphUINodeFieldLayout"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R12 R0 K7 ["Flags"]
       87 GETTABLEKS                       R12 R12 K21 ["getFFlagAnimGraphUIParameterPaneAlignment"]
       89 CALL                             R11 1 1
       90 GETTABLEKS                       R12 R3 K22 ["Enums"]
       92 GETTABLEKS                       R12 R12 K23 ["ScrubBehavior"]
       94 DUPCLOSURE                       R13 K24 [PROTO_3]
       95 CAPTURE                          VAL R8
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R6
       98 CAPTURE                          VAL R9
       99 CAPTURE                          VAL R3
      100 CAPTURE                          VAL R1
      101 CAPTURE                          VAL R12
      102 CAPTURE                          VAL R2
      103 CAPTURE                          VAL R11
      104 CAPTURE                          VAL R7
      105 CAPTURE                          VAL R5
      106 RETURN                           R13 1
