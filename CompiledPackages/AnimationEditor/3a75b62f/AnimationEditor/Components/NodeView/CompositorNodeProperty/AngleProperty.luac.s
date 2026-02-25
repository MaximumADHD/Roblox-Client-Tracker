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
       40 GETUPVAL                         R9 2
       41 GETTABLEKS                       R8 R9 K10 ["Hooks"]
       43 GETTABLEKS                       R7 R8 K11 ["useDefaultTags"]
       45 GETTABLEKS                       R8 R0 K12 ["tags"]
       47 LOADK                            R9 K13 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
       48 CALL                             R7 2 1
       49 SETTABLEKS                       R7 R6 K7 ["tag"]
       51 GETTABLEKS                       R7 R0 K8 ["LayoutOrder"]
       53 SETTABLEKS                       R7 R6 K8 ["LayoutOrder"]
       55 DUPTABLE                         R7 K17 [{"CompositorNodeInputLabel", "Input", "PinChildren"}]
       56 GETUPVAL                         R9 0
       57 GETTABLEKS                       R8 R9 K5 ["createElement"]
       59 GETUPVAL                         R9 3
       60 DUPTABLE                         R10 K20 [{"tag", "Text", "LayoutOrder", "isDisabled"}]
       61 LOADK                            R11 K21 ["text-body-small text-align-x-left auto-xy"]
       62 SETTABLEKS                       R11 R10 K7 ["tag"]
       64 GETTABLEKS                       R11 R0 K22 ["Label"]
       66 SETTABLEKS                       R11 R10 K18 ["Text"]
       68 LOADN                            R11 1
       69 SETTABLEKS                       R11 R10 K8 ["LayoutOrder"]
       71 GETTABLEKS                       R11 R0 K23 ["IsReadOnly"]
       73 JUMPIF                           R11 ; [+4]
       74 GETTABLEKS                       R11 R0 K24 ["IsDisabled"]
       76 JUMPIF                           R11 ; [+1]
       77 LOADB                            R11 0
       78 SETTABLEKS                       R11 R10 K19 ["isDisabled"]
       80 CALL                             R8 2 1
       81 SETTABLEKS                       R8 R7 K14 ["CompositorNodeInputLabel"]
       83 GETUPVAL                         R9 0
       84 GETTABLEKS                       R8 R9 K5 ["createElement"]
       86 GETUPVAL                         R10 2
       87 GETTABLEKS                       R9 R10 K25 ["NumberInput"]
       89 DUPTABLE                         R10 K38 [{"size", "width", "label", "value", "isDisabled", "minimum", "maximum", "step", "formatAsString", "LayoutOrder", "precision", "controlsVariant", "onChanged", "isScrubbable"}]
       90 GETUPVAL                         R14 2
       91 GETTABLEKS                       R13 R14 K39 ["Enums"]
       93 GETTABLEKS                       R12 R13 K40 ["InputSize"]
       95 GETTABLEKS                       R11 R12 K41 ["XSmall"]
       97 SETTABLEKS                       R11 R10 K26 ["size"]
       99 GETIMPORT                        R11 K44 [UDim.new]
      101 LOADN                            R12 0
      102 LOADN                            R13 90
      103 CALL                             R11 2 1
      104 SETTABLEKS                       R11 R10 K27 ["width"]
      106 LOADK                            R11 K45 [""]
      107 SETTABLEKS                       R11 R10 K28 ["label"]
      109 FASTCALL1                        MATH_DEG R2 ; [+3]
      110 MOVE                             R15 R2
      111 GETIMPORT                        R14 K49 [math.deg]
      113 CALL                             R14 1 1
      114 MULK                             R13 R14 K46 [100]
      115 FASTCALL1                        MATH_ROUND R13 ; [+2]
      116 GETIMPORT                        R12 K51 [math.round]
      118 CALL                             R12 1 1
      119 DIVK                             R11 R12 K46 [100]
      120 SETTABLEKS                       R11 R10 K29 ["value"]
      122 GETTABLEKS                       R11 R0 K52 ["IsParameterized"]
      124 JUMPIF                           R11 ; [+2]
      125 GETTABLEKS                       R11 R0 K23 ["IsReadOnly"]
      127 SETTABLEKS                       R11 R10 K19 ["isDisabled"]
      129 LOADN                            R11 76
      130 SETTABLEKS                       R11 R10 K30 ["minimum"]
      132 LOADN                            R11 180
      133 SETTABLEKS                       R11 R10 K31 ["maximum"]
      135 LOADN                            R11 5
      136 SETTABLEKS                       R11 R10 K32 ["step"]
      138 SETTABLEKS                       R1 R10 K33 ["formatAsString"]
      140 LOADN                            R11 2
      141 SETTABLEKS                       R11 R10 K8 ["LayoutOrder"]
      143 LOADN                            R11 2
      144 SETTABLEKS                       R11 R10 K34 ["precision"]
      146 GETUPVAL                         R14 2
      147 GETTABLEKS                       R13 R14 K39 ["Enums"]
      149 GETTABLEKS                       R12 R13 K53 ["NumberInputControlsVariant"]
      151 GETTABLEKS                       R11 R12 K54 ["None"]
      153 SETTABLEKS                       R11 R10 K35 ["controlsVariant"]
      155 SETTABLEKS                       R3 R10 K36 ["onChanged"]
      157 LOADB                            R11 1
      158 SETTABLEKS                       R11 R10 K37 ["isScrubbable"]
      160 CALL                             R8 2 1
      161 SETTABLEKS                       R8 R7 K15 ["Input"]
      163 GETUPVAL                         R9 0
      164 GETTABLEKS                       R8 R9 K5 ["createElement"]
      166 LOADK                            R9 K55 ["Folder"]
      167 NEWTABLE                         R10 0 0
      169 GETTABLEKS                       R11 R0 K56 ["children"]
      171 CALL                             R8 3 1
      172 SETTABLEKS                       R8 R7 K16 ["PinChildren"]
      174 CALL                             R4 3 -1
      175 RETURN                           R4 -1

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
