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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["IsParameterOverridden"]
        3 JUMPIFNOT                        R1 ; [+4]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["PROPERTY_PARAMETER_OVERRIDDEN_WIDTH_UDIM"]
        7 RETURN                           R0 1
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K2 ["PROPERTY_WIDTH_UDIM"]
       11 RETURN                           R0 1

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
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U1
       18 NEWTABLE                         R4 0 1
       20 GETTABLEKS                       R5 R0 K2 ["IsParameterOverridden"]
       22 SETLIST                          R4 R5 1 [1]
       24 CALL                             R2 2 1
       25 GETUPVAL                         R3 2
       26 GETTABLEKS                       R3 R3 K3 ["useEventCallback"]
       28 NEWCLOSURE                       R4 P2
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          VAL R0
       31 CALL                             R3 1 1
       32 GETUPVAL                         R4 0
       33 GETTABLEKS                       R4 R4 K4 ["createElement"]
       35 GETUPVAL                         R5 3
       36 GETTABLEKS                       R5 R5 K5 ["View"]
       38 DUPTABLE                         R6 K9 [{"tag", "LayoutOrder", "testId"}]
       39 GETUPVAL                         R7 3
       40 GETTABLEKS                       R7 R7 K10 ["Hooks"]
       42 GETTABLEKS                       R7 R7 K11 ["useDefaultTags"]
       44 GETTABLEKS                       R8 R0 K12 ["tags"]
       46 LOADK                            R9 K13 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
       47 CALL                             R7 2 1
       48 SETTABLEKS                       R7 R6 K6 ["tag"]
       50 GETTABLEKS                       R7 R0 K7 ["LayoutOrder"]
       52 SETTABLEKS                       R7 R6 K7 ["LayoutOrder"]
       54 GETTABLEKS                       R7 R0 K8 ["testId"]
       56 SETTABLEKS                       R7 R6 K8 ["testId"]
       58 DUPTABLE                         R7 K17 [{"CompositorNodeInputLabel", "InputField", "PinChildren"}]
       59 GETUPVAL                         R9 4
       60 CALL                             R9 0 1
       61 JUMPIFNOT                        R9 ; [+8]
       62 GETTABLEKS                       R8 R0 K18 ["Label"]
       64 JUMPIFNOT                        R8 ; [+20]
       65 LOADB                            R8 0
       66 GETTABLEKS                       R9 R0 K18 ["Label"]
       68 JUMPIFEQKS                       R9 K19 [""] ; [+16]
       70 GETUPVAL                         R8 0
       71 GETTABLEKS                       R8 R8 K4 ["createElement"]
       73 GETUPVAL                         R9 5
       74 DUPTABLE                         R10 K24 [{["tag"] = "fill auto-xy text-body-small text-align-x-left text-truncate-split", ["Text"], ["LayoutOrder"] = 1, ["isDisabled"]}]
       75 GETTABLEKS                       R11 R0 K18 ["Label"]
       77 SETTABLEKS                       R11 R10 K21 ["Text"]
       79 GETTABLEKS                       R12 R0 K26 ["IsDisabled"]
       81 ORK                              R11 R12 K25 [False]
       82 SETTABLEKS                       R11 R10 K23 ["isDisabled"]
       84 CALL                             R8 2 1
       85 SETTABLEKS                       R8 R7 K14 ["CompositorNodeInputLabel"]
       87 GETUPVAL                         R8 0
       88 GETTABLEKS                       R8 R8 K4 ["createElement"]
       90 GETUPVAL                         R9 6
       91 DUPTABLE                         R10 K28 [{"IsParameterOverridden", "OnParameterOverrideRevert"}]
       92 GETTABLEKS                       R11 R0 K2 ["IsParameterOverridden"]
       94 SETTABLEKS                       R11 R10 K2 ["IsParameterOverridden"]
       96 GETTABLEKS                       R11 R0 K27 ["OnParameterOverrideRevert"]
       98 SETTABLEKS                       R11 R10 K27 ["OnParameterOverrideRevert"]
      100 GETUPVAL                         R11 0
      101 GETTABLEKS                       R11 R11 K4 ["createElement"]
      103 GETUPVAL                         R12 3
      104 GETTABLEKS                       R12 R12 K29 ["NumberInput"]
      106 DUPTABLE                         R13 K44 [{["size"], ["width"], ["label"] = "", ["value"], ["LayoutOrder"] = 2, ["precision"], ["step"], ["formatAsString"], ["scrubBehavior"], ["minimum"], ["maximum"], ["onChanged"], ["variant"], ["controlsVariant"], ["isDisabled"]}]
      107 GETUPVAL                         R14 3
      108 GETTABLEKS                       R14 R14 K45 ["Enums"]
      110 GETTABLEKS                       R14 R14 K46 ["InputSize"]
      112 GETTABLEKS                       R14 R14 K47 ["XSmall"]
      114 SETTABLEKS                       R14 R13 K30 ["size"]
      116 SETTABLEKS                       R2 R13 K31 ["width"]
      118 SETTABLEKS                       R1 R13 K33 ["value"]
      120 GETTABLEKS                       R14 R0 K48 ["Precision"]
      122 JUMPIF                           R14 ; [+5]
      123 GETUPVAL                         R14 7
      124 GETTABLEKS                       R14 R14 K49 ["NUMBER_PRECISION"]
      126 GETTABLEKS                       R14 R14 K50 ["Float"]
      128 SETTABLEKS                       R14 R13 K35 ["precision"]
      130 GETTABLEKS                       R14 R0 K51 ["Step"]
      132 JUMPIF                           R14 ; [+5]
      133 GETUPVAL                         R14 7
      134 GETTABLEKS                       R14 R14 K52 ["NUMBER_STEP"]
      136 GETTABLEKS                       R14 R14 K50 ["Float"]
      138 SETTABLEKS                       R14 R13 K36 ["step"]
      140 GETTABLEKS                       R14 R0 K53 ["FormatAsString"]
      142 SETTABLEKS                       R14 R13 K37 ["formatAsString"]
      144 GETUPVAL                         R14 8
      145 GETTABLEKS                       R14 R14 K54 ["On"]
      147 SETTABLEKS                       R14 R13 K38 ["scrubBehavior"]
      149 GETTABLEKS                       R14 R0 K55 ["Minimum"]
      151 SETTABLEKS                       R14 R13 K39 ["minimum"]
      153 GETTABLEKS                       R14 R0 K56 ["Maximum"]
      155 SETTABLEKS                       R14 R13 K40 ["maximum"]
      157 SETTABLEKS                       R3 R13 K41 ["onChanged"]
      159 GETUPVAL                         R15 9
      160 JUMPIFNOT                        R15 ; [+8]
      161 GETUPVAL                         R14 3
      162 GETTABLEKS                       R14 R14 K45 ["Enums"]
      164 GETTABLEKS                       R14 R14 K57 ["InputVariant"]
      166 GETTABLEKS                       R14 R14 K58 ["Contrast"]
      168 JUMP                             ; [+1]
      169 LOADNIL                          R14
      170 SETTABLEKS                       R14 R13 K42 ["variant"]
      172 GETUPVAL                         R14 3
      173 GETTABLEKS                       R14 R14 K45 ["Enums"]
      175 GETTABLEKS                       R14 R14 K59 ["NumberInputControlsVariant"]
      177 GETTABLEKS                       R14 R14 K60 ["None"]
      179 SETTABLEKS                       R14 R13 K43 ["controlsVariant"]
      181 GETTABLEKS                       R15 R0 K26 ["IsDisabled"]
      183 ORK                              R14 R15 K25 [False]
      184 SETTABLEKS                       R14 R13 K23 ["isDisabled"]
      186 CALL                             R11 2 -1
      187 CALL                             R8 -1 1
      188 SETTABLEKS                       R8 R7 K15 ["InputField"]
      190 GETUPVAL                         R8 0
      191 GETTABLEKS                       R8 R8 K4 ["createElement"]
      193 LOADK                            R9 K61 ["Folder"]
      194 NEWTABLE                         R10 0 0
      196 GETTABLEKS                       R11 R0 K62 ["children"]
      198 CALL                             R8 3 1
      199 SETTABLEKS                       R8 R7 K16 ["PinChildren"]
      201 CALL                             R4 3 -1
      202 RETURN                           R4 -1

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
       80 GETTABLEKS                       R11 R11 K20 ["getFFlagAnimGraphUIParameterPaneAlignment"]
       82 CALL                             R10 1 1
       83 GETTABLEKS                       R11 R3 K21 ["Enums"]
       85 GETTABLEKS                       R11 R11 K22 ["ScrubBehavior"]
       87 DUPCLOSURE                       R12 K23 [PROTO_3]
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R6
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R10
       93 CAPTURE                          VAL R7
       94 CAPTURE                          VAL R5
       95 CAPTURE                          VAL R1
       96 CAPTURE                          VAL R11
       97 CAPTURE                          VAL R2
       98 RETURN                           R12 1
