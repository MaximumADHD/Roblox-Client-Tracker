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
       39 GETUPVAL                         R8 1
       40 GETTABLEKS                       R7 R8 K10 ["Hooks"]
       42 GETTABLEKS                       R6 R7 K11 ["useDefaultTags"]
       44 GETTABLEKS                       R7 R0 K12 ["tags"]
       46 LOADK                            R8 K13 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
       47 CALL                             R6 2 1
       48 SETTABLEKS                       R6 R5 K7 ["tag"]
       50 GETTABLEKS                       R6 R0 K8 ["LayoutOrder"]
       52 SETTABLEKS                       R6 R5 K8 ["LayoutOrder"]
       54 DUPTABLE                         R6 K17 [{"CompositorNodeInputLabel", "Input", "Clamped", "PinChildren"}]
       55 GETUPVAL                         R8 0
       56 GETTABLEKS                       R7 R8 K5 ["createElement"]
       58 GETUPVAL                         R8 2
       59 DUPTABLE                         R9 K20 [{"tag", "Text", "LayoutOrder", "isDisabled"}]
       60 LOADK                            R10 K21 ["text-body-small text-align-x-left auto-xy fill text-truncate-split"]
       61 SETTABLEKS                       R10 R9 K7 ["tag"]
       63 GETTABLEKS                       R10 R0 K22 ["Label"]
       65 SETTABLEKS                       R10 R9 K18 ["Text"]
       67 LOADN                            R10 1
       68 SETTABLEKS                       R10 R9 K8 ["LayoutOrder"]
       70 GETTABLEKS                       R10 R0 K23 ["IsReadOnly"]
       72 JUMPIF                           R10 ; [+4]
       73 GETTABLEKS                       R10 R0 K24 ["IsDisabled"]
       75 JUMPIF                           R10 ; [+1]
       76 LOADB                            R10 0
       77 SETTABLEKS                       R10 R9 K19 ["isDisabled"]
       79 CALL                             R7 2 1
       80 SETTABLEKS                       R7 R6 K14 ["CompositorNodeInputLabel"]
       82 GETUPVAL                         R8 0
       83 GETTABLEKS                       R7 R8 K5 ["createElement"]
       85 GETUPVAL                         R9 1
       86 GETTABLEKS                       R8 R9 K25 ["NumberInput"]
       88 DUPTABLE                         R9 K37 [{"size", "width", "label", "value", "LayoutOrder", "precision", "onChanged", "isDisabled", "isScrubbable", "controlsVariant", "minimum", "maximum", "step"}]
       89 GETUPVAL                         R13 1
       90 GETTABLEKS                       R12 R13 K38 ["Enums"]
       92 GETTABLEKS                       R11 R12 K39 ["InputSize"]
       94 GETTABLEKS                       R10 R11 K40 ["XSmall"]
       96 SETTABLEKS                       R10 R9 K26 ["size"]
       98 GETIMPORT                        R10 K43 [UDim.new]
      100 LOADN                            R11 0
      101 LOADN                            R12 90
      102 CALL                             R10 2 1
      103 SETTABLEKS                       R10 R9 K27 ["width"]
      105 LOADK                            R10 K44 [""]
      106 SETTABLEKS                       R10 R9 K28 ["label"]
      108 GETTABLEKS                       R11 R0 K2 ["Value"]
      110 GETTABLEKS                       R10 R11 K4 ["Weight"]
      112 SETTABLEKS                       R10 R9 K29 ["value"]
      114 LOADN                            R10 2
      115 SETTABLEKS                       R10 R9 K8 ["LayoutOrder"]
      117 LOADN                            R10 2
      118 SETTABLEKS                       R10 R9 K30 ["precision"]
      120 SETTABLEKS                       R1 R9 K31 ["onChanged"]
      122 GETTABLEKS                       R10 R0 K23 ["IsReadOnly"]
      124 JUMPIF                           R10 ; [+4]
      125 GETTABLEKS                       R10 R0 K24 ["IsDisabled"]
      127 JUMPIF                           R10 ; [+1]
      128 LOADB                            R10 0
      129 SETTABLEKS                       R10 R9 K19 ["isDisabled"]
      131 GETTABLEKS                       R11 R0 K2 ["Value"]
      133 GETTABLEKS                       R10 R11 K3 ["Clamped"]
      135 SETTABLEKS                       R10 R9 K32 ["isScrubbable"]
      137 GETUPVAL                         R13 1
      138 GETTABLEKS                       R12 R13 K38 ["Enums"]
      140 GETTABLEKS                       R11 R12 K45 ["NumberInputControlsVariant"]
      142 GETTABLEKS                       R10 R11 K46 ["None"]
      144 SETTABLEKS                       R10 R9 K33 ["controlsVariant"]
      146 GETTABLEKS                       R12 R0 K2 ["Value"]
      148 GETTABLEKS                       R11 R12 K3 ["Clamped"]
      150 JUMPIFNOT                        R11 ; [+2]
      151 LOADN                            R10 0
      152 JUMP                             ; [+1]
      153 LOADNIL                          R10
      154 SETTABLEKS                       R10 R9 K34 ["minimum"]
      156 GETTABLEKS                       R12 R0 K2 ["Value"]
      158 GETTABLEKS                       R11 R12 K3 ["Clamped"]
      160 JUMPIFNOT                        R11 ; [+2]
      161 LOADN                            R10 1
      162 JUMP                             ; [+1]
      163 LOADNIL                          R10
      164 SETTABLEKS                       R10 R9 K35 ["maximum"]
      166 GETTABLEKS                       R12 R0 K2 ["Value"]
      168 GETTABLEKS                       R11 R12 K3 ["Clamped"]
      170 JUMPIFNOT                        R11 ; [+2]
      171 LOADK                            R10 K47 [0.05]
      172 JUMP                             ; [+1]
      173 LOADNIL                          R10
      174 SETTABLEKS                       R10 R9 K36 ["step"]
      176 CALL                             R7 2 1
      177 SETTABLEKS                       R7 R6 K15 ["Input"]
      179 GETUPVAL                         R8 0
      180 GETTABLEKS                       R7 R8 K5 ["createElement"]
      182 GETUPVAL                         R8 3
      183 DUPTABLE                         R9 K50 [{"info", "updateValue", "LayoutOrder"}]
      184 DUPTABLE                         R10 K52 [{"type", "value"}]
      185 LOADK                            R11 K53 ["boolean"]
      186 SETTABLEKS                       R11 R10 K51 ["type"]
      188 GETTABLEKS                       R13 R0 K2 ["Value"]
      190 GETTABLEKS                       R12 R13 K3 ["Clamped"]
      192 ORK                              R11 R12 K54 [False]
      193 SETTABLEKS                       R11 R10 K29 ["value"]
      195 SETTABLEKS                       R10 R9 K48 ["info"]
      197 SETTABLEKS                       R2 R9 K49 ["updateValue"]
      199 LOADN                            R10 3
      200 SETTABLEKS                       R10 R9 K8 ["LayoutOrder"]
      202 CALL                             R7 2 1
      203 SETTABLEKS                       R7 R6 K3 ["Clamped"]
      205 GETUPVAL                         R8 0
      206 GETTABLEKS                       R7 R8 K5 ["createElement"]
      208 LOADK                            R8 K55 ["Folder"]
      209 NEWTABLE                         R9 0 0
      211 GETTABLEKS                       R10 R0 K56 ["children"]
      213 CALL                             R7 3 1
      214 SETTABLEKS                       R7 R6 K16 ["PinChildren"]
      216 CALL                             R3 3 -1
      217 RETURN                           R3 -1

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
