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
       64 DUPTABLE                         R10 K23 [{["tag"] = "auto-xy text-body-small text-align-x-left", ["Text"], ["LayoutOrder"] = 1, ["isDisabled"]}]
       65 GETTABLEKS                       R12 R0 K25 ["Label"]
       67 ORK                              R11 R12 K24 [""]
       68 SETTABLEKS                       R11 R10 K20 ["Text"]
       70 GETTABLEKS                       R12 R0 K27 ["IsDisabled"]
       72 ORK                              R11 R12 K26 [False]
       73 SETTABLEKS                       R11 R10 K22 ["isDisabled"]
       75 CALL                             R8 2 1
       76 SETTABLEKS                       R8 R7 K15 ["CompositorNodeInputLabel"]
       78 GETUPVAL                         R8 0
       79 GETTABLEKS                       R8 R8 K5 ["createElement"]
       81 GETUPVAL                         R9 2
       82 GETTABLEKS                       R9 R9 K28 ["NumberInput"]
       84 DUPTABLE                         R10 K45 [{["size"], ["width"], ["label"] = "", ["value"], ["isDisabled"], ["minimum"] = -180, ["maximum"] = 180, ["step"], ["formatAsString"], ["LayoutOrder"] = 2, ["precision"], ["controlsVariant"], ["onChanged"], ["isScrubbable"] = True}]
       85 GETUPVAL                         R11 2
       86 GETTABLEKS                       R11 R11 K46 ["Enums"]
       88 GETTABLEKS                       R11 R11 K47 ["InputSize"]
       90 GETTABLEKS                       R11 R11 K48 ["XSmall"]
       92 SETTABLEKS                       R11 R10 K29 ["size"]
       94 GETIMPORT                        R11 K51 [UDim.new]
       96 LOADN                            R12 0
       97 LOADN                            R13 90
       98 CALL                             R11 2 1
       99 SETTABLEKS                       R11 R10 K30 ["width"]
      101 FASTCALL1                        MATH_DEG R2 ; [+3]
      102 MOVE                             R15 R2
      103 GETIMPORT                        R14 K55 [math.deg]
      105 CALL                             R14 1 1
      106 MULK                             R13 R14 K52 [100]
      107 FASTCALL1                        MATH_ROUND R13 ; [+2]
      108 GETIMPORT                        R12 K57 [math.round]
      110 CALL                             R12 1 1
      111 DIVK                             R11 R12 K52 [100]
      112 SETTABLEKS                       R11 R10 K32 ["value"]
      114 GETTABLEKS                       R11 R0 K58 ["IsParameterized"]
      116 JUMPIF                           R11 ; [+4]
      117 GETTABLEKS                       R11 R0 K27 ["IsDisabled"]
      119 JUMPIF                           R11 ; [+1]
      120 LOADB                            R11 0
      121 SETTABLEKS                       R11 R10 K22 ["isDisabled"]
      123 GETUPVAL                         R12 4
      124 CALL                             R12 0 1
      125 JUMPIFNOT                        R12 ; [+6]
      126 GETUPVAL                         R11 5
      127 GETTABLEKS                       R11 R11 K59 ["NUMBER_STEP"]
      129 GETTABLEKS                       R11 R11 K60 ["Angle"]
      131 JUMP                             ; [+1]
      132 LOADK                            R11 K61 [0.005]
      133 SETTABLEKS                       R11 R10 K37 ["step"]
      135 SETTABLEKS                       R1 R10 K38 ["formatAsString"]
      137 GETUPVAL                         R12 4
      138 CALL                             R12 0 1
      139 JUMPIFNOT                        R12 ; [+6]
      140 GETUPVAL                         R11 5
      141 GETTABLEKS                       R11 R11 K62 ["NUMBER_PRECISION"]
      143 GETTABLEKS                       R11 R11 K60 ["Angle"]
      145 JUMP                             ; [+5]
      146 GETUPVAL                         R11 5
      147 GETTABLEKS                       R11 R11 K62 ["NUMBER_PRECISION"]
      149 GETTABLEKS                       R11 R11 K63 ["Float"]
      151 SETTABLEKS                       R11 R10 K40 ["precision"]
      153 GETUPVAL                         R11 2
      154 GETTABLEKS                       R11 R11 K46 ["Enums"]
      156 GETTABLEKS                       R11 R11 K64 ["NumberInputControlsVariant"]
      158 GETTABLEKS                       R11 R11 K65 ["None"]
      160 SETTABLEKS                       R11 R10 K41 ["controlsVariant"]
      162 SETTABLEKS                       R3 R10 K42 ["onChanged"]
      164 CALL                             R8 2 1
      165 SETTABLEKS                       R8 R7 K16 ["Input"]
      167 GETUPVAL                         R8 0
      168 GETTABLEKS                       R8 R8 K5 ["createElement"]
      170 LOADK                            R9 K66 ["Folder"]
      171 NEWTABLE                         R10 0 0
      173 GETTABLEKS                       R11 R0 K67 ["children"]
      175 CALL                             R8 3 1
      176 SETTABLEKS                       R8 R7 K17 ["PinChildren"]
      178 CALL                             R4 3 -1
      179 RETURN                           R4 -1

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
