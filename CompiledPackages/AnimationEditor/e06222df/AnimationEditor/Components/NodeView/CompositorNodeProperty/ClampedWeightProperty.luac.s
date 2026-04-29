PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["OnChanged"]
        3 DUPTABLE                         R2 K3 [{"Weight", "Clamped"}]
        4 SETTABLEKS                       R0 R2 K1 ["Weight"]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K4 ["Value"]
        9 GETTABLEKS                       R3 R4 K2 ["Clamped"]
       11 SETTABLEKS                       R3 R2 K2 ["Clamped"]
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Value"]
        3 GETTABLEKS                       R1 R2 K1 ["Weight"]
        5 JUMPIFNOT                        R0 ; [+9]
        6 LOADN                            R4 0
        7 LOADN                            R5 1
        8 FASTCALL3                        MATH_CLAMP R1 R4 R5
       10 MOVE                             R3 R1
       11 GETIMPORT                        R2 K4 [math.clamp]
       13 CALL                             R2 3 1
       14 MOVE                             R1 R2
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R2 R3 K5 ["OnChanged"]
       18 DUPTABLE                         R3 K7 [{"Weight", "Clamped"}]
       19 SETTABLEKS                       R1 R3 K1 ["Weight"]
       21 SETTABLEKS                       R0 R3 K6 ["Clamped"]
       23 CALL                             R2 1 0
       24 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useCallback"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 2
        7 GETTABLEKS                       R4 R0 K1 ["OnChanged"]
        9 GETTABLEKS                       R6 R0 K2 ["Value"]
       11 GETTABLEKS                       R5 R6 K3 ["Clamped"]
       13 SETLIST                          R3 R4 2 [1]
       15 CALL                             R1 2 1
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R2 R3 K0 ["useCallback"]
       19 NEWCLOSURE                       R3 P1
       20 CAPTURE                          VAL R0
       21 NEWTABLE                         R4 0 2
       23 GETTABLEKS                       R5 R0 K1 ["OnChanged"]
       25 GETTABLEKS                       R7 R0 K2 ["Value"]
       27 GETTABLEKS                       R6 R7 K4 ["Weight"]
       29 SETLIST                          R4 R5 2 [1]
       31 CALL                             R2 2 1
       32 GETUPVAL                         R4 0
       33 GETTABLEKS                       R3 R4 K5 ["createElement"]
       35 GETUPVAL                         R5 1
       36 GETTABLEKS                       R4 R5 K6 ["View"]
       38 DUPTABLE                         R5 K10 [{"tag", "LayoutOrder", "testId"}]
       39 GETUPVAL                         R8 1
       40 GETTABLEKS                       R7 R8 K11 ["Hooks"]
       42 GETTABLEKS                       R6 R7 K12 ["useDefaultTags"]
       44 GETTABLEKS                       R7 R0 K13 ["tags"]
       46 LOADK                            R8 K14 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
       47 CALL                             R6 2 1
       48 SETTABLEKS                       R6 R5 K7 ["tag"]
       50 GETTABLEKS                       R6 R0 K8 ["LayoutOrder"]
       52 SETTABLEKS                       R6 R5 K8 ["LayoutOrder"]
       54 GETTABLEKS                       R6 R0 K9 ["testId"]
       56 SETTABLEKS                       R6 R5 K9 ["testId"]
       58 DUPTABLE                         R6 K18 [{"CompositorNodeInputLabel", "Input", "Clamped", "PinChildren"}]
       59 GETUPVAL                         R8 0
       60 GETTABLEKS                       R7 R8 K5 ["createElement"]
       62 GETUPVAL                         R8 2
       63 DUPTABLE                         R9 K21 [{"tag", "Text", "LayoutOrder", "isDisabled"}]
       64 LOADK                            R10 K22 ["text-body-small text-align-x-left auto-xy fill text-truncate-split"]
       65 SETTABLEKS                       R10 R9 K7 ["tag"]
       67 GETTABLEKS                       R10 R0 K23 ["Label"]
       69 SETTABLEKS                       R10 R9 K19 ["Text"]
       71 LOADN                            R10 1
       72 SETTABLEKS                       R10 R9 K8 ["LayoutOrder"]
       74 GETTABLEKS                       R11 R0 K25 ["IsDisabled"]
       76 ORK                              R10 R11 K24 [False]
       77 SETTABLEKS                       R10 R9 K20 ["isDisabled"]
       79 CALL                             R7 2 1
       80 SETTABLEKS                       R7 R6 K15 ["CompositorNodeInputLabel"]
       82 GETUPVAL                         R8 0
       83 GETTABLEKS                       R7 R8 K5 ["createElement"]
       85 GETUPVAL                         R9 1
       86 GETTABLEKS                       R8 R9 K26 ["NumberInput"]
       88 DUPTABLE                         R9 K38 [{"size", "width", "label", "value", "LayoutOrder", "precision", "onChanged", "isDisabled", "isScrubbable", "controlsVariant", "minimum", "maximum", "step"}]
       89 GETUPVAL                         R13 1
       90 GETTABLEKS                       R12 R13 K39 ["Enums"]
       92 GETTABLEKS                       R11 R12 K40 ["InputSize"]
       94 GETTABLEKS                       R10 R11 K41 ["XSmall"]
       96 SETTABLEKS                       R10 R9 K27 ["size"]
       98 GETIMPORT                        R10 K44 [UDim.new]
      100 LOADN                            R11 0
      101 LOADN                            R12 90
      102 CALL                             R10 2 1
      103 SETTABLEKS                       R10 R9 K28 ["width"]
      105 LOADK                            R10 K45 [""]
      106 SETTABLEKS                       R10 R9 K29 ["label"]
      108 GETTABLEKS                       R11 R0 K2 ["Value"]
      110 GETTABLEKS                       R10 R11 K4 ["Weight"]
      112 SETTABLEKS                       R10 R9 K30 ["value"]
      114 LOADN                            R10 2
      115 SETTABLEKS                       R10 R9 K8 ["LayoutOrder"]
      117 GETUPVAL                         R12 3
      118 GETTABLEKS                       R11 R12 K46 ["NUMBER_PRECISION"]
      120 GETTABLEKS                       R10 R11 K47 ["Float"]
      122 SETTABLEKS                       R10 R9 K31 ["precision"]
      124 SETTABLEKS                       R1 R9 K32 ["onChanged"]
      126 GETTABLEKS                       R11 R0 K25 ["IsDisabled"]
      128 ORK                              R10 R11 K24 [False]
      129 SETTABLEKS                       R10 R9 K20 ["isDisabled"]
      131 GETTABLEKS                       R11 R0 K2 ["Value"]
      133 GETTABLEKS                       R10 R11 K3 ["Clamped"]
      135 SETTABLEKS                       R10 R9 K33 ["isScrubbable"]
      137 GETUPVAL                         R13 1
      138 GETTABLEKS                       R12 R13 K39 ["Enums"]
      140 GETTABLEKS                       R11 R12 K48 ["NumberInputControlsVariant"]
      142 GETTABLEKS                       R10 R11 K49 ["None"]
      144 SETTABLEKS                       R10 R9 K34 ["controlsVariant"]
      146 GETTABLEKS                       R12 R0 K2 ["Value"]
      148 GETTABLEKS                       R11 R12 K3 ["Clamped"]
      150 JUMPIFNOT                        R11 ; [+2]
      151 LOADN                            R10 0
      152 JUMP                             ; [+1]
      153 LOADNIL                          R10
      154 SETTABLEKS                       R10 R9 K35 ["minimum"]
      156 GETTABLEKS                       R12 R0 K2 ["Value"]
      158 GETTABLEKS                       R11 R12 K3 ["Clamped"]
      160 JUMPIFNOT                        R11 ; [+2]
      161 LOADN                            R10 1
      162 JUMP                             ; [+1]
      163 LOADNIL                          R10
      164 SETTABLEKS                       R10 R9 K36 ["maximum"]
      166 LOADK                            R10 K50 [0.005]
      167 SETTABLEKS                       R10 R9 K37 ["step"]
      169 CALL                             R7 2 1
      170 SETTABLEKS                       R7 R6 K16 ["Input"]
      172 GETUPVAL                         R8 0
      173 GETTABLEKS                       R7 R8 K5 ["createElement"]
      175 GETUPVAL                         R8 4
      176 DUPTABLE                         R9 K53 [{"info", "updateValue", "LayoutOrder"}]
      177 DUPTABLE                         R10 K55 [{"type", "value"}]
      178 LOADK                            R11 K56 ["boolean"]
      179 SETTABLEKS                       R11 R10 K54 ["type"]
      181 GETTABLEKS                       R13 R0 K2 ["Value"]
      183 GETTABLEKS                       R12 R13 K3 ["Clamped"]
      185 ORK                              R11 R12 K24 [False]
      186 SETTABLEKS                       R11 R10 K30 ["value"]
      188 SETTABLEKS                       R10 R9 K51 ["info"]
      190 SETTABLEKS                       R2 R9 K52 ["updateValue"]
      192 LOADN                            R10 3
      193 SETTABLEKS                       R10 R9 K8 ["LayoutOrder"]
      195 CALL                             R7 2 1
      196 SETTABLEKS                       R7 R6 K3 ["Clamped"]
      198 GETUPVAL                         R8 0
      199 GETTABLEKS                       R7 R8 K5 ["createElement"]
      201 LOADK                            R8 K57 ["Folder"]
      202 NEWTABLE                         R9 0 0
      204 GETTABLEKS                       R10 R0 K58 ["children"]
      206 CALL                             R7 3 1
      207 SETTABLEKS                       R7 R6 K17 ["PinChildren"]
      209 CALL                             R3 3 -1
      210 RETURN                           R3 -1

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
       18 GETTABLEKS                       R3 R4 K8 ["Properties"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R5 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K10 ["Util"]
       32 GETTABLEKS                       R5 R6 K11 ["Constants"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R9 R0 K12 ["Components"]
       39 GETTABLEKS                       R8 R9 K13 ["NodeView"]
       41 GETTABLEKS                       R7 R8 K14 ["CompositorNodeProperty"]
       43 GETTABLEKS                       R6 R7 K15 ["PropertyLabel"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R7 R2 K12 ["Components"]
       48 GETTABLEKS                       R6 R7 K16 ["PropertyValue"]
       50 DUPCLOSURE                       R7 K17 [PROTO_2]
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R6
       56 RETURN                           R7 1
