PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["OnChanged"]
        3 JUMPIFEQKNIL                     R1 ; [+15]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["OnChanged"]
        8 DUPTABLE                         R2 K3 [{"Weight", "Clamped"}]
        9 SETTABLEKS                       R0 R2 K1 ["Weight"]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K4 ["Value"]
       14 GETTABLEKS                       R3 R3 K2 ["Clamped"]
       16 SETTABLEKS                       R3 R2 K2 ["Clamped"]
       18 CALL                             R1 1 0
       19 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Value"]
        3 JUMPIFNOTEQKNIL                  R1 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["Value"]
        9 GETTABLEKS                       R1 R1 K1 ["Weight"]
       11 JUMPIFNOT                        R0 ; [+9]
       12 LOADN                            R4 0
       13 LOADN                            R5 1
       14 FASTCALL3                        MATH_CLAMP R1 R4 R5
       16 MOVE                             R3 R1
       17 GETIMPORT                        R2 K4 [math.clamp]
       19 CALL                             R2 3 1
       20 MOVE                             R1 R2
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K5 ["OnChanged"]
       24 JUMPIFEQKNIL                     R2 ; [+10]
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R2 R2 K5 ["OnChanged"]
       29 DUPTABLE                         R3 K7 [{"Weight", "Clamped"}]
       30 SETTABLEKS                       R1 R3 K1 ["Weight"]
       32 SETTABLEKS                       R0 R3 K6 ["Clamped"]
       34 CALL                             R2 1 0
       35 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["Value"]
        2 JUMPIFNOTEQKNIL                  R3 ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        8 LOADK                            R3 K1 ["ClampedWeightProperty needs non-nil value"]
        9 GETIMPORT                        R1 K3 [assert]
       11 CALL                             R1 2 0
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K4 ["useCallback"]
       15 NEWCLOSURE                       R2 P0
       16 CAPTURE                          VAL R0
       17 NEWTABLE                         R3 0 2
       19 GETTABLEKS                       R4 R0 K5 ["OnChanged"]
       21 GETTABLEKS                       R5 R0 K0 ["Value"]
       23 GETTABLEKS                       R5 R5 K6 ["Clamped"]
       25 SETLIST                          R3 R4 2 [1]
       27 CALL                             R1 2 1
       28 GETUPVAL                         R2 0
       29 GETTABLEKS                       R2 R2 K4 ["useCallback"]
       31 NEWCLOSURE                       R3 P1
       32 CAPTURE                          VAL R0
       33 NEWTABLE                         R4 0 2
       35 GETTABLEKS                       R5 R0 K5 ["OnChanged"]
       37 GETTABLEKS                       R6 R0 K0 ["Value"]
       39 GETTABLEKS                       R6 R6 K7 ["Weight"]
       41 SETLIST                          R4 R5 2 [1]
       43 CALL                             R2 2 1
       44 GETUPVAL                         R3 0
       45 GETTABLEKS                       R3 R3 K8 ["createElement"]
       47 GETUPVAL                         R4 1
       48 GETTABLEKS                       R4 R4 K9 ["View"]
       50 DUPTABLE                         R5 K13 [{"tag", "LayoutOrder", "testId"}]
       51 GETUPVAL                         R6 1
       52 GETTABLEKS                       R6 R6 K14 ["Hooks"]
       54 GETTABLEKS                       R6 R6 K15 ["useDefaultTags"]
       56 GETTABLEKS                       R7 R0 K16 ["tags"]
       58 LOADK                            R8 K17 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
       59 CALL                             R6 2 1
       60 SETTABLEKS                       R6 R5 K10 ["tag"]
       62 GETTABLEKS                       R6 R0 K11 ["LayoutOrder"]
       64 SETTABLEKS                       R6 R5 K11 ["LayoutOrder"]
       66 GETTABLEKS                       R6 R0 K12 ["testId"]
       68 SETTABLEKS                       R6 R5 K12 ["testId"]
       70 DUPTABLE                         R6 K21 [{"CompositorNodeInputLabel", "Input", "Clamped", "PinChildren"}]
       71 GETUPVAL                         R7 0
       72 GETTABLEKS                       R7 R7 K8 ["createElement"]
       74 GETUPVAL                         R8 2
       75 DUPTABLE                         R9 K26 [{["tag"] = "fill auto-xy text-body-small text-align-x-left text-truncate-split", ["Text"], ["LayoutOrder"] = 1, ["isDisabled"]}]
       76 GETTABLEKS                       R10 R0 K27 ["Label"]
       78 SETTABLEKS                       R10 R9 K23 ["Text"]
       80 GETTABLEKS                       R11 R0 K29 ["IsDisabled"]
       82 ORK                              R10 R11 K28 [False]
       83 SETTABLEKS                       R10 R9 K25 ["isDisabled"]
       85 CALL                             R7 2 1
       86 SETTABLEKS                       R7 R6 K18 ["CompositorNodeInputLabel"]
       88 GETUPVAL                         R7 0
       89 GETTABLEKS                       R7 R7 K8 ["createElement"]
       91 GETUPVAL                         R8 1
       92 GETTABLEKS                       R8 R8 K30 ["NumberInput"]
       94 DUPTABLE                         R9 K45 [{["size"], ["width"], ["label"] = "", ["value"], ["LayoutOrder"] = 2, ["precision"], ["onChanged"], ["isDisabled"], ["scrubBehavior"], ["controlsVariant"], ["minimum"], ["maximum"], ["step"] = 0.005}]
       95 GETUPVAL                         R10 1
       96 GETTABLEKS                       R10 R10 K46 ["Enums"]
       98 GETTABLEKS                       R10 R10 K47 ["InputSize"]
      100 GETTABLEKS                       R10 R10 K48 ["XSmall"]
      102 SETTABLEKS                       R10 R9 K31 ["size"]
      104 GETIMPORT                        R10 K51 [UDim.new]
      106 LOADN                            R11 0
      107 LOADN                            R12 90
      108 CALL                             R10 2 1
      109 SETTABLEKS                       R10 R9 K32 ["width"]
      111 GETTABLEKS                       R10 R0 K0 ["Value"]
      113 GETTABLEKS                       R10 R10 K7 ["Weight"]
      115 SETTABLEKS                       R10 R9 K35 ["value"]
      117 GETUPVAL                         R10 3
      118 GETTABLEKS                       R10 R10 K52 ["NUMBER_PRECISION"]
      120 GETTABLEKS                       R10 R10 K53 ["Float"]
      122 SETTABLEKS                       R10 R9 K37 ["precision"]
      124 SETTABLEKS                       R1 R9 K38 ["onChanged"]
      126 GETTABLEKS                       R11 R0 K29 ["IsDisabled"]
      128 ORK                              R10 R11 K28 [False]
      129 SETTABLEKS                       R10 R9 K25 ["isDisabled"]
      131 GETTABLEKS                       R11 R0 K0 ["Value"]
      133 GETTABLEKS                       R11 R11 K6 ["Clamped"]
      135 JUMPIFNOT                        R11 ; [+4]
      136 GETUPVAL                         R10 4
      137 GETTABLEKS                       R10 R10 K54 ["On"]
      139 JUMP                             ; [+3]
      140 GETUPVAL                         R10 4
      141 GETTABLEKS                       R10 R10 K55 ["Off"]
      143 SETTABLEKS                       R10 R9 K39 ["scrubBehavior"]
      145 GETUPVAL                         R10 1
      146 GETTABLEKS                       R10 R10 K46 ["Enums"]
      148 GETTABLEKS                       R10 R10 K56 ["NumberInputControlsVariant"]
      150 GETTABLEKS                       R10 R10 K57 ["None"]
      152 SETTABLEKS                       R10 R9 K40 ["controlsVariant"]
      154 GETTABLEKS                       R11 R0 K0 ["Value"]
      156 GETTABLEKS                       R11 R11 K6 ["Clamped"]
      158 JUMPIFNOT                        R11 ; [+2]
      159 LOADN                            R10 0
      160 JUMP                             ; [+1]
      161 LOADNIL                          R10
      162 SETTABLEKS                       R10 R9 K41 ["minimum"]
      164 GETTABLEKS                       R11 R0 K0 ["Value"]
      166 GETTABLEKS                       R11 R11 K6 ["Clamped"]
      168 JUMPIFNOT                        R11 ; [+2]
      169 LOADN                            R10 1
      170 JUMP                             ; [+1]
      171 LOADNIL                          R10
      172 SETTABLEKS                       R10 R9 K42 ["maximum"]
      174 CALL                             R7 2 1
      175 SETTABLEKS                       R7 R6 K19 ["Input"]
      177 GETUPVAL                         R7 0
      178 GETTABLEKS                       R7 R7 K8 ["createElement"]
      180 GETUPVAL                         R8 5
      181 DUPTABLE                         R9 K61 [{["info"], ["updateValue"], ["LayoutOrder"] = 3}]
      182 DUPTABLE                         R10 K64 [{["type"] = "boolean", ["value"]}]
      183 GETTABLEKS                       R12 R0 K0 ["Value"]
      185 GETTABLEKS                       R12 R12 K6 ["Clamped"]
      187 ORK                              R11 R12 K28 [False]
      188 SETTABLEKS                       R11 R10 K35 ["value"]
      190 SETTABLEKS                       R10 R9 K58 ["info"]
      192 SETTABLEKS                       R2 R9 K59 ["updateValue"]
      194 CALL                             R7 2 1
      195 SETTABLEKS                       R7 R6 K6 ["Clamped"]
      197 GETUPVAL                         R7 0
      198 GETTABLEKS                       R7 R7 K8 ["createElement"]
      200 LOADK                            R8 K65 ["Folder"]
      201 NEWTABLE                         R9 0 0
      203 GETTABLEKS                       R10 R0 K66 ["children"]
      205 CALL                             R7 3 1
      206 SETTABLEKS                       R7 R6 K20 ["PinChildren"]
      208 CALL                             R3 3 -1
      209 RETURN                           R3 -1

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
       30 GETTABLEKS                       R5 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["Properties"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Components"]
       39 GETTABLEKS                       R6 R6 K13 ["NodeView"]
       41 GETTABLEKS                       R6 R6 K14 ["CompositorNodeProperty"]
       43 GETTABLEKS                       R6 R6 K15 ["PropertyLabel"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K8 ["Parent"]
       50 GETTABLEKS                       R7 R7 K16 ["React"]
       52 CALL                             R6 1 1
       53 GETTABLEKS                       R7 R2 K17 ["Enums"]
       55 GETTABLEKS                       R7 R7 K18 ["ScrubBehavior"]
       57 GETTABLEKS                       R8 R4 K12 ["Components"]
       59 GETTABLEKS                       R8 R8 K19 ["PropertyValue"]
       61 DUPCLOSURE                       R9 K20 [PROTO_2]
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R8
       68 RETURN                           R9 1
