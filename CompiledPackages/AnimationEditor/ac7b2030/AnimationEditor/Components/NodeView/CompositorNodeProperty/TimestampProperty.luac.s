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
       42 DUPTABLE                         R9 K18 [{"tag", "Text", "LayoutOrder", "isDisabled"}]
       43 LOADK                            R10 K19 ["text-body-small text-align-x-left auto-xy fill text-truncate-split"]
       44 SETTABLEKS                       R10 R9 K4 ["tag"]
       46 GETTABLEKS                       R10 R0 K20 ["Label"]
       48 SETTABLEKS                       R10 R9 K16 ["Text"]
       50 LOADN                            R10 1
       51 SETTABLEKS                       R10 R9 K5 ["LayoutOrder"]
       53 GETTABLEKS                       R11 R0 K22 ["IsDisabled"]
       55 ORK                              R10 R11 K21 [False]
       56 SETTABLEKS                       R10 R9 K17 ["isDisabled"]
       58 CALL                             R7 2 1
       59 SETTABLEKS                       R7 R6 K12 ["CompositorNodeInputLabel"]
       61 GETUPVAL                         R7 0
       62 GETTABLEKS                       R7 R7 K2 ["createElement"]
       64 GETUPVAL                         R8 2
       65 GETTABLEKS                       R8 R8 K23 ["NumberInput"]
       67 DUPTABLE                         R9 K34 [{"size", "width", "label", "value", "isDisabled", "LayoutOrder", "precision", "step", "isScrubbable", "formatAsString", "onChanged", "controlsVariant"}]
       68 GETUPVAL                         R10 2
       69 GETTABLEKS                       R10 R10 K35 ["Enums"]
       71 GETTABLEKS                       R10 R10 K36 ["InputSize"]
       73 GETTABLEKS                       R10 R10 K37 ["XSmall"]
       75 SETTABLEKS                       R10 R9 K24 ["size"]
       77 GETIMPORT                        R10 K40 [UDim.new]
       79 LOADN                            R11 0
       80 LOADN                            R12 90
       81 CALL                             R10 2 1
       82 SETTABLEKS                       R10 R9 K25 ["width"]
       84 LOADK                            R10 K41 [""]
       85 SETTABLEKS                       R10 R9 K26 ["label"]
       87 GETTABLEKS                       R12 R0 K43 ["Value"]
       89 FASTCALL1                        TONUMBER R12 ; [+2]
       90 GETIMPORT                        R11 K45 [tonumber]
       92 CALL                             R11 1 1
       93 ORK                              R10 R11 K42 [0]
       94 SETTABLEKS                       R10 R9 K27 ["value"]
       96 GETTABLEKS                       R10 R0 K46 ["IsParameterized"]
       98 JUMPIF                           R10 ; [+2]
       99 GETTABLEKS                       R10 R0 K22 ["IsDisabled"]
      101 SETTABLEKS                       R10 R9 K17 ["isDisabled"]
      103 LOADN                            R10 2
      104 SETTABLEKS                       R10 R9 K5 ["LayoutOrder"]
      106 GETUPVAL                         R11 4
      107 CALL                             R11 0 1
      108 JUMPIFNOT                        R11 ; [+6]
      109 GETUPVAL                         R10 5
      110 GETTABLEKS                       R10 R10 K47 ["NUMBER_PRECISION"]
      112 GETTABLEKS                       R10 R10 K48 ["Timestamp"]
      114 JUMP                             ; [+5]
      115 GETUPVAL                         R10 5
      116 GETTABLEKS                       R10 R10 K47 ["NUMBER_PRECISION"]
      118 GETTABLEKS                       R10 R10 K49 ["Float"]
      120 SETTABLEKS                       R10 R9 K28 ["precision"]
      122 GETUPVAL                         R11 4
      123 CALL                             R11 0 1
      124 JUMPIFNOT                        R11 ; [+6]
      125 GETUPVAL                         R10 5
      126 GETTABLEKS                       R10 R10 K50 ["NUMBER_STEP"]
      128 GETTABLEKS                       R10 R10 K48 ["Timestamp"]
      130 JUMP                             ; [+1]
      131 LOADK                            R10 K51 [0.005]
      132 SETTABLEKS                       R10 R9 K29 ["step"]
      134 LOADB                            R10 1
      135 SETTABLEKS                       R10 R9 K30 ["isScrubbable"]
      137 SETTABLEKS                       R1 R9 K31 ["formatAsString"]
      139 GETUPVAL                         R11 6
      140 CALL                             R11 0 1
      141 JUMPIFNOT                        R11 ; [+2]
      142 MOVE                             R10 R2
      143 JUMP                             ; [+2]
      144 GETTABLEKS                       R10 R0 K52 ["OnChanged"]
      146 SETTABLEKS                       R10 R9 K32 ["onChanged"]
      148 GETUPVAL                         R10 2
      149 GETTABLEKS                       R10 R10 K35 ["Enums"]
      151 GETTABLEKS                       R10 R10 K53 ["NumberInputControlsVariant"]
      153 GETTABLEKS                       R10 R10 K54 ["None"]
      155 SETTABLEKS                       R10 R9 K33 ["controlsVariant"]
      157 CALL                             R7 2 1
      158 SETTABLEKS                       R7 R6 K13 ["Input"]
      160 GETUPVAL                         R7 0
      161 GETTABLEKS                       R7 R7 K2 ["createElement"]
      163 LOADK                            R8 K55 ["Folder"]
      164 NEWTABLE                         R9 0 0
      166 GETTABLEKS                       R10 R0 K56 ["children"]
      168 CALL                             R7 3 1
      169 SETTABLEKS                       R7 R6 K14 ["PinChildren"]
      171 CALL                             R3 3 -1
      172 RETURN                           R3 -1

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
       23 GETTABLEKS                       R4 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["NodeGraphing"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Components"]
       32 GETTABLEKS                       R5 R5 K12 ["NodeView"]
       34 GETTABLEKS                       R5 R5 K13 ["CompositorNodeProperty"]
       36 GETTABLEKS                       R5 R5 K14 ["PropertyLabel"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K11 ["Components"]
       43 GETTABLEKS                       R6 R6 K12 ["NodeView"]
       45 GETTABLEKS                       R6 R6 K13 ["CompositorNodeProperty"]
       47 GETTABLEKS                       R6 R6 K15 ["PropertyUtils"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K8 ["Parent"]
       54 GETTABLEKS                       R7 R7 K16 ["React"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K17 ["Flags"]
       61 GETTABLEKS                       R8 R8 K18 ["getFFlagAnimGraphFloatStep003"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K17 ["Flags"]
       68 GETTABLEKS                       R9 R9 K19 ["getFFlagAnimGraphUIClampClipTrim"]
       70 CALL                             R8 1 1
       71 DUPCLOSURE                       R9 K20 [PROTO_1]
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R8
       79 RETURN                           R9 1
