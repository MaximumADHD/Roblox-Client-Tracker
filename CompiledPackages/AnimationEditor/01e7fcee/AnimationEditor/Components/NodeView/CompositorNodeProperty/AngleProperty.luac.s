PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Value"]
        3 FASTCALL1                        TYPE R1 ; [+2]
        4 GETIMPORT                        R0 K2 [type]
        6 CALL                             R0 1 1
        7 JUMPIFNOTEQKS                    R0 K3 ["number"] ; [+5]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R0 R1 K0 ["Value"]
       12 RETURN                           R0 1
       13 LOADN                            R0 0
       14 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["OnChanged"]
        3 FASTCALL1                        MATH_RAD R0 ; [+3]
        4 MOVE                             R3 R0
        5 GETIMPORT                        R2 K3 [math.rad]
        7 CALL                             R2 1 1
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useCallback"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["formatDegrees"]
        6 NEWTABLE                         R3 0 0
        8 CALL                             R1 2 1
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K2 ["useMemo"]
       12 NEWCLOSURE                       R3 P0
       13 CAPTURE                          VAL R0
       14 NEWTABLE                         R4 0 1
       16 GETTABLEKS                       R5 R0 K3 ["Value"]
       18 SETLIST                          R4 R5 1 [1]
       20 CALL                             R2 2 1
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R3 R4 K0 ["useCallback"]
       24 NEWCLOSURE                       R4 P1
       25 CAPTURE                          VAL R0
       26 NEWTABLE                         R5 0 1
       28 GETTABLEKS                       R6 R0 K4 ["OnChanged"]
       30 SETLIST                          R5 R6 1 [1]
       32 CALL                             R3 2 1
       33 GETUPVAL                         R5 0
       34 GETTABLEKS                       R4 R5 K5 ["createElement"]
       36 GETUPVAL                         R6 2
       37 GETTABLEKS                       R5 R6 K6 ["View"]
       39 DUPTABLE                         R6 K10 [{"tag", "LayoutOrder", "testId"}]
       40 GETUPVAL                         R9 2
       41 GETTABLEKS                       R8 R9 K11 ["Hooks"]
       43 GETTABLEKS                       R7 R8 K12 ["useDefaultTags"]
       45 GETTABLEKS                       R8 R0 K13 ["tags"]
       47 LOADK                            R9 K14 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
       48 CALL                             R7 2 1
       49 SETTABLEKS                       R7 R6 K7 ["tag"]
       51 GETTABLEKS                       R7 R0 K8 ["LayoutOrder"]
       53 SETTABLEKS                       R7 R6 K8 ["LayoutOrder"]
       55 GETTABLEKS                       R7 R0 K9 ["testId"]
       57 SETTABLEKS                       R7 R6 K9 ["testId"]
       59 DUPTABLE                         R7 K18 [{"CompositorNodeInputLabel", "Input", "PinChildren"}]
       60 GETUPVAL                         R9 0
       61 GETTABLEKS                       R8 R9 K5 ["createElement"]
       63 GETUPVAL                         R9 3
       64 DUPTABLE                         R10 K21 [{"tag", "Text", "LayoutOrder", "isDisabled"}]
       65 LOADK                            R11 K22 ["text-body-small text-align-x-left auto-xy"]
       66 SETTABLEKS                       R11 R10 K7 ["tag"]
       68 GETTABLEKS                       R11 R0 K23 ["Label"]
       70 SETTABLEKS                       R11 R10 K19 ["Text"]
       72 LOADN                            R11 1
       73 SETTABLEKS                       R11 R10 K8 ["LayoutOrder"]
       75 GETTABLEKS                       R12 R0 K25 ["IsDisabled"]
       77 ORK                              R11 R12 K24 [False]
       78 SETTABLEKS                       R11 R10 K20 ["isDisabled"]
       80 CALL                             R8 2 1
       81 SETTABLEKS                       R8 R7 K15 ["CompositorNodeInputLabel"]
       83 GETUPVAL                         R9 0
       84 GETTABLEKS                       R8 R9 K5 ["createElement"]
       86 GETUPVAL                         R10 2
       87 GETTABLEKS                       R9 R10 K26 ["NumberInput"]
       89 DUPTABLE                         R10 K39 [{"size", "width", "label", "value", "isDisabled", "minimum", "maximum", "step", "formatAsString", "LayoutOrder", "precision", "controlsVariant", "onChanged", "isScrubbable"}]
       90 GETUPVAL                         R14 2
       91 GETTABLEKS                       R13 R14 K40 ["Enums"]
       93 GETTABLEKS                       R12 R13 K41 ["InputSize"]
       95 GETTABLEKS                       R11 R12 K42 ["XSmall"]
       97 SETTABLEKS                       R11 R10 K27 ["size"]
       99 GETIMPORT                        R11 K45 [UDim.new]
      101 LOADN                            R12 0
      102 LOADN                            R13 90
      103 CALL                             R11 2 1
      104 SETTABLEKS                       R11 R10 K28 ["width"]
      106 LOADK                            R11 K46 [""]
      107 SETTABLEKS                       R11 R10 K29 ["label"]
      109 FASTCALL1                        MATH_DEG R2 ; [+3]
      110 MOVE                             R15 R2
      111 GETIMPORT                        R14 K50 [math.deg]
      113 CALL                             R14 1 1
      114 MULK                             R13 R14 K47 [100]
      115 FASTCALL1                        MATH_ROUND R13 ; [+2]
      116 GETIMPORT                        R12 K52 [math.round]
      118 CALL                             R12 1 1
      119 DIVK                             R11 R12 K47 [100]
      120 SETTABLEKS                       R11 R10 K30 ["value"]
      122 GETTABLEKS                       R11 R0 K53 ["IsParameterized"]
      124 JUMPIF                           R11 ; [+4]
      125 GETTABLEKS                       R11 R0 K25 ["IsDisabled"]
      127 JUMPIF                           R11 ; [+1]
      128 LOADB                            R11 0
      129 SETTABLEKS                       R11 R10 K20 ["isDisabled"]
      131 LOADN                            R11 76
      132 SETTABLEKS                       R11 R10 K31 ["minimum"]
      134 LOADN                            R11 180
      135 SETTABLEKS                       R11 R10 K32 ["maximum"]
      137 LOADK                            R11 K54 [0.005]
      138 SETTABLEKS                       R11 R10 K33 ["step"]
      140 SETTABLEKS                       R1 R10 K34 ["formatAsString"]
      142 LOADN                            R11 2
      143 SETTABLEKS                       R11 R10 K8 ["LayoutOrder"]
      145 GETUPVAL                         R13 4
      146 GETTABLEKS                       R12 R13 K55 ["NUMBER_PRECISION"]
      148 GETTABLEKS                       R11 R12 K56 ["Float"]
      150 SETTABLEKS                       R11 R10 K35 ["precision"]
      152 GETUPVAL                         R14 2
      153 GETTABLEKS                       R13 R14 K40 ["Enums"]
      155 GETTABLEKS                       R12 R13 K57 ["NumberInputControlsVariant"]
      157 GETTABLEKS                       R11 R12 K58 ["None"]
      159 SETTABLEKS                       R11 R10 K36 ["controlsVariant"]
      161 SETTABLEKS                       R3 R10 K37 ["onChanged"]
      163 LOADB                            R11 1
      164 SETTABLEKS                       R11 R10 K38 ["isScrubbable"]
      166 CALL                             R8 2 1
      167 SETTABLEKS                       R8 R7 K16 ["Input"]
      169 GETUPVAL                         R9 0
      170 GETTABLEKS                       R8 R9 K5 ["createElement"]
      172 LOADK                            R9 K59 ["Folder"]
      173 NEWTABLE                         R10 0 0
      175 GETTABLEKS                       R11 R0 K60 ["children"]
      177 CALL                             R8 3 1
      178 SETTABLEKS                       R8 R7 K17 ["PinChildren"]
      180 CALL                             R4 3 -1
      181 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Util"]
       25 GETTABLEKS                       R4 R5 K10 ["Constants"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R8 R0 K11 ["Components"]
       32 GETTABLEKS                       R7 R8 K12 ["NodeView"]
       34 GETTABLEKS                       R6 R7 K13 ["CompositorNodeProperty"]
       36 GETTABLEKS                       R5 R6 K14 ["PropertyLabel"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R9 R0 K11 ["Components"]
       43 GETTABLEKS                       R8 R9 K12 ["NodeView"]
       45 GETTABLEKS                       R7 R8 K13 ["CompositorNodeProperty"]
       47 GETTABLEKS                       R6 R7 K15 ["PropertyUtils"]
       49 CALL                             R5 1 1
       50 DUPCLOSURE                       R6 K16 [PROTO_2]
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R3
       56 RETURN                           R6 1
