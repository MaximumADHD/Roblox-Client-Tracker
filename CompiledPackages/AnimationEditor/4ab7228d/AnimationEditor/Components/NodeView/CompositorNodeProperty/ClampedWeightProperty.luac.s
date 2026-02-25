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
       38 DUPTABLE                         R5 K9 [{"tag", "LayoutOrder"}]
       39 LOADK                            R6 K10 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
       40 SETTABLEKS                       R6 R5 K7 ["tag"]
       42 GETTABLEKS                       R6 R0 K8 ["LayoutOrder"]
       44 SETTABLEKS                       R6 R5 K8 ["LayoutOrder"]
       46 DUPTABLE                         R6 K14 [{"CompositorNodeInputLabel", "Input", "Clamped", "PinChildren"}]
       47 GETUPVAL                         R8 0
       48 GETTABLEKS                       R7 R8 K5 ["createElement"]
       50 GETUPVAL                         R8 2
       51 DUPTABLE                         R9 K17 [{"tag", "Text", "LayoutOrder", "isDisabled"}]
       52 LOADK                            R10 K18 ["text-body-small text-align-x-left auto-xy fill text-truncate-split"]
       53 SETTABLEKS                       R10 R9 K7 ["tag"]
       55 GETTABLEKS                       R10 R0 K19 ["Label"]
       57 SETTABLEKS                       R10 R9 K15 ["Text"]
       59 LOADN                            R10 1
       60 SETTABLEKS                       R10 R9 K8 ["LayoutOrder"]
       62 GETTABLEKS                       R10 R0 K20 ["IsReadOnly"]
       64 SETTABLEKS                       R10 R9 K16 ["isDisabled"]
       66 CALL                             R7 2 1
       67 SETTABLEKS                       R7 R6 K11 ["CompositorNodeInputLabel"]
       69 GETUPVAL                         R8 0
       70 GETTABLEKS                       R7 R8 K5 ["createElement"]
       72 GETUPVAL                         R9 1
       73 GETTABLEKS                       R8 R9 K21 ["NumberInput"]
       75 DUPTABLE                         R9 K33 [{"size", "width", "label", "value", "LayoutOrder", "precision", "onChanged", "isDisabled", "isScrubbable", "controlsVariant", "minimum", "maximum", "step"}]
       76 GETUPVAL                         R13 1
       77 GETTABLEKS                       R12 R13 K34 ["Enums"]
       79 GETTABLEKS                       R11 R12 K35 ["InputSize"]
       81 GETTABLEKS                       R10 R11 K36 ["XSmall"]
       83 SETTABLEKS                       R10 R9 K22 ["size"]
       85 GETIMPORT                        R10 K39 [UDim.new]
       87 LOADN                            R11 0
       88 LOADN                            R12 90
       89 CALL                             R10 2 1
       90 SETTABLEKS                       R10 R9 K23 ["width"]
       92 LOADK                            R10 K40 [""]
       93 SETTABLEKS                       R10 R9 K24 ["label"]
       95 GETTABLEKS                       R11 R0 K2 ["Value"]
       97 GETTABLEKS                       R10 R11 K4 ["Weight"]
       99 SETTABLEKS                       R10 R9 K25 ["value"]
      101 LOADN                            R10 2
      102 SETTABLEKS                       R10 R9 K8 ["LayoutOrder"]
      104 LOADN                            R10 2
      105 SETTABLEKS                       R10 R9 K26 ["precision"]
      107 SETTABLEKS                       R1 R9 K27 ["onChanged"]
      109 GETTABLEKS                       R10 R0 K20 ["IsReadOnly"]
      111 SETTABLEKS                       R10 R9 K16 ["isDisabled"]
      113 GETTABLEKS                       R11 R0 K2 ["Value"]
      115 GETTABLEKS                       R10 R11 K3 ["Clamped"]
      117 SETTABLEKS                       R10 R9 K28 ["isScrubbable"]
      119 GETUPVAL                         R13 1
      120 GETTABLEKS                       R12 R13 K34 ["Enums"]
      122 GETTABLEKS                       R11 R12 K41 ["NumberInputControlsVariant"]
      124 GETTABLEKS                       R10 R11 K42 ["None"]
      126 SETTABLEKS                       R10 R9 K29 ["controlsVariant"]
      128 GETTABLEKS                       R12 R0 K2 ["Value"]
      130 GETTABLEKS                       R11 R12 K3 ["Clamped"]
      132 JUMPIFNOT                        R11 ; [+2]
      133 LOADN                            R10 0
      134 JUMP                             ; [+1]
      135 LOADNIL                          R10
      136 SETTABLEKS                       R10 R9 K30 ["minimum"]
      138 GETTABLEKS                       R12 R0 K2 ["Value"]
      140 GETTABLEKS                       R11 R12 K3 ["Clamped"]
      142 JUMPIFNOT                        R11 ; [+2]
      143 LOADN                            R10 1
      144 JUMP                             ; [+1]
      145 LOADNIL                          R10
      146 SETTABLEKS                       R10 R9 K31 ["maximum"]
      148 GETTABLEKS                       R12 R0 K2 ["Value"]
      150 GETTABLEKS                       R11 R12 K3 ["Clamped"]
      152 JUMPIFNOT                        R11 ; [+2]
      153 LOADK                            R10 K43 [0.05]
      154 JUMP                             ; [+1]
      155 LOADNIL                          R10
      156 SETTABLEKS                       R10 R9 K32 ["step"]
      158 CALL                             R7 2 1
      159 SETTABLEKS                       R7 R6 K12 ["Input"]
      161 GETUPVAL                         R8 0
      162 GETTABLEKS                       R7 R8 K5 ["createElement"]
      164 GETUPVAL                         R8 3
      165 DUPTABLE                         R9 K46 [{"info", "updateValue", "LayoutOrder"}]
      166 DUPTABLE                         R10 K48 [{"type", "value"}]
      167 LOADK                            R11 K49 ["boolean"]
      168 SETTABLEKS                       R11 R10 K47 ["type"]
      170 GETTABLEKS                       R13 R0 K2 ["Value"]
      172 GETTABLEKS                       R12 R13 K3 ["Clamped"]
      174 ORK                              R11 R12 K50 [False]
      175 SETTABLEKS                       R11 R10 K25 ["value"]
      177 SETTABLEKS                       R10 R9 K44 ["info"]
      179 SETTABLEKS                       R2 R9 K45 ["updateValue"]
      181 LOADN                            R10 3
      182 SETTABLEKS                       R10 R9 K8 ["LayoutOrder"]
      184 CALL                             R7 2 1
      185 SETTABLEKS                       R7 R6 K3 ["Clamped"]
      187 GETUPVAL                         R8 0
      188 GETTABLEKS                       R7 R8 K5 ["createElement"]
      190 LOADK                            R8 K51 ["Folder"]
      191 NEWTABLE                         R9 0 0
      193 GETTABLEKS                       R10 R0 K52 ["children"]
      195 CALL                             R7 3 1
      196 SETTABLEKS                       R7 R6 K13 ["PinChildren"]
      198 CALL                             R3 3 -1
      199 RETURN                           R3 -1

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
       30 GETTABLEKS                       R8 R0 K10 ["Components"]
       32 GETTABLEKS                       R7 R8 K11 ["NodeView"]
       34 GETTABLEKS                       R6 R7 K12 ["CompositorNodeProperty"]
       36 GETTABLEKS                       R5 R6 K13 ["PropertyLabel"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R6 R2 K10 ["Components"]
       41 GETTABLEKS                       R5 R6 K14 ["PropertyValue"]
       43 DUPCLOSURE                       R6 K15 [PROTO_2]
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R5
       48 RETURN                           R6 1
