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
       39 DUPTABLE                         R6 K9 [{"tag", "LayoutOrder"}]
       40 LOADK                            R7 K10 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
       41 SETTABLEKS                       R7 R6 K7 ["tag"]
       43 GETTABLEKS                       R7 R0 K8 ["LayoutOrder"]
       45 SETTABLEKS                       R7 R6 K8 ["LayoutOrder"]
       47 DUPTABLE                         R7 K14 [{"CompositorNodeInputLabel", "Input", "PinChildren"}]
       48 GETUPVAL                         R9 0
       49 GETTABLEKS                       R8 R9 K5 ["createElement"]
       51 GETUPVAL                         R9 3
       52 DUPTABLE                         R10 K17 [{"tag", "Text", "LayoutOrder", "isDisabled"}]
       53 LOADK                            R11 K18 ["text-body-small text-align-x-left auto-xy"]
       54 SETTABLEKS                       R11 R10 K7 ["tag"]
       56 GETTABLEKS                       R11 R0 K19 ["Label"]
       58 SETTABLEKS                       R11 R10 K15 ["Text"]
       60 LOADN                            R11 1
       61 SETTABLEKS                       R11 R10 K8 ["LayoutOrder"]
       63 GETTABLEKS                       R11 R0 K20 ["IsReadOnly"]
       65 SETTABLEKS                       R11 R10 K16 ["isDisabled"]
       67 CALL                             R8 2 1
       68 SETTABLEKS                       R8 R7 K11 ["CompositorNodeInputLabel"]
       70 GETUPVAL                         R9 0
       71 GETTABLEKS                       R8 R9 K5 ["createElement"]
       73 GETUPVAL                         R10 2
       74 GETTABLEKS                       R9 R10 K21 ["NumberInput"]
       76 DUPTABLE                         R10 K34 [{"size", "width", "label", "value", "isDisabled", "minimum", "maximum", "step", "formatAsString", "LayoutOrder", "precision", "controlsVariant", "onChanged", "isScrubbable"}]
       77 GETUPVAL                         R14 2
       78 GETTABLEKS                       R13 R14 K35 ["Enums"]
       80 GETTABLEKS                       R12 R13 K36 ["InputSize"]
       82 GETTABLEKS                       R11 R12 K37 ["XSmall"]
       84 SETTABLEKS                       R11 R10 K22 ["size"]
       86 GETIMPORT                        R11 K40 [UDim.new]
       88 LOADN                            R12 0
       89 LOADN                            R13 90
       90 CALL                             R11 2 1
       91 SETTABLEKS                       R11 R10 K23 ["width"]
       93 LOADK                            R11 K41 [""]
       94 SETTABLEKS                       R11 R10 K24 ["label"]
       96 FASTCALL1                        MATH_DEG R2 ; [+3]
       97 MOVE                             R15 R2
       98 GETIMPORT                        R14 K45 [math.deg]
      100 CALL                             R14 1 1
      101 MULK                             R13 R14 K42 [100]
      102 FASTCALL1                        MATH_ROUND R13 ; [+2]
      103 GETIMPORT                        R12 K47 [math.round]
      105 CALL                             R12 1 1
      106 DIVK                             R11 R12 K42 [100]
      107 SETTABLEKS                       R11 R10 K25 ["value"]
      109 GETTABLEKS                       R11 R0 K48 ["IsParameterized"]
      111 JUMPIF                           R11 ; [+2]
      112 GETTABLEKS                       R11 R0 K20 ["IsReadOnly"]
      114 SETTABLEKS                       R11 R10 K16 ["isDisabled"]
      116 LOADN                            R11 76
      117 SETTABLEKS                       R11 R10 K26 ["minimum"]
      119 LOADN                            R11 180
      120 SETTABLEKS                       R11 R10 K27 ["maximum"]
      122 LOADN                            R11 5
      123 SETTABLEKS                       R11 R10 K28 ["step"]
      125 SETTABLEKS                       R1 R10 K29 ["formatAsString"]
      127 LOADN                            R11 2
      128 SETTABLEKS                       R11 R10 K8 ["LayoutOrder"]
      130 LOADN                            R11 2
      131 SETTABLEKS                       R11 R10 K30 ["precision"]
      133 GETUPVAL                         R14 2
      134 GETTABLEKS                       R13 R14 K35 ["Enums"]
      136 GETTABLEKS                       R12 R13 K49 ["NumberInputControlsVariant"]
      138 GETTABLEKS                       R11 R12 K50 ["None"]
      140 SETTABLEKS                       R11 R10 K31 ["controlsVariant"]
      142 SETTABLEKS                       R3 R10 K32 ["onChanged"]
      144 LOADB                            R11 1
      145 SETTABLEKS                       R11 R10 K33 ["isScrubbable"]
      147 CALL                             R8 2 1
      148 SETTABLEKS                       R8 R7 K12 ["Input"]
      150 GETUPVAL                         R9 0
      151 GETTABLEKS                       R8 R9 K5 ["createElement"]
      153 LOADK                            R9 K51 ["Folder"]
      154 NEWTABLE                         R10 0 0
      156 GETTABLEKS                       R11 R0 K52 ["children"]
      158 CALL                             R8 3 1
      159 SETTABLEKS                       R8 R7 K13 ["PinChildren"]
      161 CALL                             R4 3 -1
      162 RETURN                           R4 -1

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
       16 GETTABLEKS                       R6 R0 K8 ["Components"]
       18 GETTABLEKS                       R5 R6 K9 ["NodeView"]
       20 GETTABLEKS                       R4 R5 K10 ["CompositorNodeProperty"]
       22 GETTABLEKS                       R3 R4 K11 ["PropertyLabel"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R7 R0 K8 ["Components"]
       29 GETTABLEKS                       R6 R7 K9 ["NodeView"]
       31 GETTABLEKS                       R5 R6 K10 ["CompositorNodeProperty"]
       33 GETTABLEKS                       R4 R5 K12 ["PropertyUtils"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R6 R0 K6 ["Parent"]
       40 GETTABLEKS                       R5 R6 K13 ["React"]
       42 CALL                             R4 1 1
       43 DUPCLOSURE                       R5 K14 [PROTO_2]
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R2
       48 RETURN                           R5 1
