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
        1 GETTABLEKS                       R1 R1 K0 ["OnChanged"]
        3 JUMPIFEQKNIL                     R1 ; [+10]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["OnChanged"]
        8 FASTCALL1                        MATH_RAD R0 ; [+3]
        9 MOVE                             R3 R0
       10 GETIMPORT                        R2 K3 [math.rad]
       12 CALL                             R2 1 1
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useCallback"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["formatDegrees"]
        6 NEWTABLE                         R3 0 0
        8 CALL                             R1 2 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K2 ["useMemo"]
       12 NEWCLOSURE                       R3 P0
       13 CAPTURE                          VAL R0
       14 NEWTABLE                         R4 0 1
       16 GETTABLEKS                       R5 R0 K3 ["Value"]
       18 SETLIST                          R4 R5 1 [1]
       20 CALL                             R2 2 1
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K0 ["useCallback"]
       24 NEWCLOSURE                       R4 P1
       25 CAPTURE                          VAL R0
       26 NEWTABLE                         R5 0 1
       28 GETTABLEKS                       R6 R0 K4 ["OnChanged"]
       30 SETLIST                          R5 R6 1 [1]
       32 CALL                             R3 2 1
       33 GETUPVAL                         R4 0
       34 GETTABLEKS                       R4 R4 K5 ["createElement"]
       36 GETUPVAL                         R5 2
       37 GETTABLEKS                       R5 R5 K6 ["View"]
       39 DUPTABLE                         R6 K10 [{"tag", "LayoutOrder", "testId"}]
       40 GETUPVAL                         R7 2
       41 GETTABLEKS                       R7 R7 K11 ["Hooks"]
       43 GETTABLEKS                       R7 R7 K12 ["useDefaultTags"]
       45 GETTABLEKS                       R8 R0 K13 ["tags"]
       47 LOADK                            R9 K14 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
       48 CALL                             R7 2 1
       49 SETTABLEKS                       R7 R6 K7 ["tag"]
       51 GETTABLEKS                       R7 R0 K8 ["LayoutOrder"]
       53 SETTABLEKS                       R7 R6 K8 ["LayoutOrder"]
       55 GETTABLEKS                       R7 R0 K9 ["testId"]
       57 SETTABLEKS                       R7 R6 K9 ["testId"]
       59 DUPTABLE                         R7 K18 [{"CompositorNodeInputLabel", "Input", "PinChildren"}]
       60 GETUPVAL                         R8 0
       61 GETTABLEKS                       R8 R8 K5 ["createElement"]
       63 GETUPVAL                         R9 3
       64 DUPTABLE                         R10 K21 [{"tag", "Text", "LayoutOrder", "isDisabled"}]
       65 LOADK                            R11 K22 ["text-body-small text-align-x-left auto-xy"]
       66 SETTABLEKS                       R11 R10 K7 ["tag"]
       68 GETTABLEKS                       R12 R0 K24 ["Label"]
       70 ORK                              R11 R12 K23 [""]
       71 SETTABLEKS                       R11 R10 K19 ["Text"]
       73 LOADN                            R11 1
       74 SETTABLEKS                       R11 R10 K8 ["LayoutOrder"]
       76 GETTABLEKS                       R12 R0 K26 ["IsDisabled"]
       78 ORK                              R11 R12 K25 [False]
       79 SETTABLEKS                       R11 R10 K20 ["isDisabled"]
       81 CALL                             R8 2 1
       82 SETTABLEKS                       R8 R7 K15 ["CompositorNodeInputLabel"]
       84 GETUPVAL                         R8 0
       85 GETTABLEKS                       R8 R8 K5 ["createElement"]
       87 GETUPVAL                         R9 2
       88 GETTABLEKS                       R9 R9 K27 ["NumberInput"]
       90 DUPTABLE                         R10 K40 [{"size", "width", "label", "value", "isDisabled", "minimum", "maximum", "step", "formatAsString", "LayoutOrder", "precision", "controlsVariant", "onChanged", "isScrubbable"}]
       91 GETUPVAL                         R11 2
       92 GETTABLEKS                       R11 R11 K41 ["Enums"]
       94 GETTABLEKS                       R11 R11 K42 ["InputSize"]
       96 GETTABLEKS                       R11 R11 K43 ["XSmall"]
       98 SETTABLEKS                       R11 R10 K28 ["size"]
      100 GETIMPORT                        R11 K46 [UDim.new]
      102 LOADN                            R12 0
      103 LOADN                            R13 90
      104 CALL                             R11 2 1
      105 SETTABLEKS                       R11 R10 K29 ["width"]
      107 LOADK                            R11 K23 [""]
      108 SETTABLEKS                       R11 R10 K30 ["label"]
      110 FASTCALL1                        MATH_DEG R2 ; [+3]
      111 MOVE                             R15 R2
      112 GETIMPORT                        R14 K50 [math.deg]
      114 CALL                             R14 1 1
      115 MULK                             R13 R14 K47 [100]
      116 FASTCALL1                        MATH_ROUND R13 ; [+2]
      117 GETIMPORT                        R12 K52 [math.round]
      119 CALL                             R12 1 1
      120 DIVK                             R11 R12 K47 [100]
      121 SETTABLEKS                       R11 R10 K31 ["value"]
      123 GETTABLEKS                       R11 R0 K53 ["IsParameterized"]
      125 JUMPIF                           R11 ; [+4]
      126 GETTABLEKS                       R11 R0 K26 ["IsDisabled"]
      128 JUMPIF                           R11 ; [+1]
      129 LOADB                            R11 0
      130 SETTABLEKS                       R11 R10 K20 ["isDisabled"]
      132 LOADN                            R11 76
      133 SETTABLEKS                       R11 R10 K32 ["minimum"]
      135 LOADN                            R11 180
      136 SETTABLEKS                       R11 R10 K33 ["maximum"]
      138 GETUPVAL                         R12 4
      139 CALL                             R12 0 1
      140 JUMPIFNOT                        R12 ; [+6]
      141 GETUPVAL                         R11 5
      142 GETTABLEKS                       R11 R11 K54 ["NUMBER_STEP"]
      144 GETTABLEKS                       R11 R11 K55 ["Angle"]
      146 JUMP                             ; [+1]
      147 LOADK                            R11 K56 [0.005]
      148 SETTABLEKS                       R11 R10 K34 ["step"]
      150 SETTABLEKS                       R1 R10 K35 ["formatAsString"]
      152 LOADN                            R11 2
      153 SETTABLEKS                       R11 R10 K8 ["LayoutOrder"]
      155 GETUPVAL                         R12 4
      156 CALL                             R12 0 1
      157 JUMPIFNOT                        R12 ; [+6]
      158 GETUPVAL                         R11 5
      159 GETTABLEKS                       R11 R11 K57 ["NUMBER_PRECISION"]
      161 GETTABLEKS                       R11 R11 K55 ["Angle"]
      163 JUMP                             ; [+5]
      164 GETUPVAL                         R11 5
      165 GETTABLEKS                       R11 R11 K57 ["NUMBER_PRECISION"]
      167 GETTABLEKS                       R11 R11 K58 ["Float"]
      169 SETTABLEKS                       R11 R10 K36 ["precision"]
      171 GETUPVAL                         R11 2
      172 GETTABLEKS                       R11 R11 K41 ["Enums"]
      174 GETTABLEKS                       R11 R11 K59 ["NumberInputControlsVariant"]
      176 GETTABLEKS                       R11 R11 K60 ["None"]
      178 SETTABLEKS                       R11 R10 K37 ["controlsVariant"]
      180 SETTABLEKS                       R3 R10 K38 ["onChanged"]
      182 LOADB                            R11 1
      183 SETTABLEKS                       R11 R10 K39 ["isScrubbable"]
      185 CALL                             R8 2 1
      186 SETTABLEKS                       R8 R7 K16 ["Input"]
      188 GETUPVAL                         R8 0
      189 GETTABLEKS                       R8 R8 K5 ["createElement"]
      191 LOADK                            R9 K61 ["Folder"]
      192 NEWTABLE                         R10 0 0
      194 GETTABLEKS                       R11 R0 K62 ["children"]
      196 CALL                             R8 3 1
      197 SETTABLEKS                       R8 R7 K17 ["PinChildren"]
      199 CALL                             R4 3 -1
      200 RETURN                           R4 -1

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
       64 DUPCLOSURE                       R8 K19 [PROTO_2]
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R1
       71 RETURN                           R8 1
