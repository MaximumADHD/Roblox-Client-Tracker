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
        1 GETTABLEKS                       R1 R1 K0 ["IsParameterOverridden"]
        3 JUMPIFNOT                        R1 ; [+4]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["PROPERTY_PARAMETER_OVERRIDDEN_WIDTH_UDIM"]
        7 RETURN                           R0 1
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K2 ["PROPERTY_WIDTH_UDIM"]
       11 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["Enums"]
        3 GETTABLEKS                       R3 R3 K1 ["OnChangeCallbackReason"]
        5 GETTABLEKS                       R3 R3 K2 ["Drag"]
        7 JUMPIFNOTEQ                      R1 R3 ; [+3]
        9 LOADK                            R2 K2 ["Drag"]
       10 JUMP                             ; [+1]
       11 LOADNIL                          R2
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K3 ["OnChanged"]
       15 MOVE                             R4 R0
       16 MOVE                             R5 R2
       17 CALL                             R3 2 0
       18 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 1
        7 GETTABLEKS                       R4 R0 K1 ["Value"]
        9 SETLIST                          R3 R4 1 [1]
       11 CALL                             R1 2 1
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K0 ["useMemo"]
       15 NEWCLOSURE                       R3 P1
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U1
       18 NEWTABLE                         R4 0 1
       20 GETTABLEKS                       R5 R0 K2 ["IsParameterOverridden"]
       22 SETLIST                          R4 R5 1 [1]
       24 CALL                             R2 2 1
       25 GETUPVAL                         R3 2
       26 GETTABLEKS                       R3 R3 K3 ["useEventCallback"]
       28 NEWCLOSURE                       R4 P2
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          VAL R0
       31 CALL                             R3 1 1
       32 GETUPVAL                         R4 0
       33 GETTABLEKS                       R4 R4 K4 ["createElement"]
       35 GETUPVAL                         R5 3
       36 GETTABLEKS                       R5 R5 K5 ["View"]
       38 DUPTABLE                         R6 K9 [{"tag", "LayoutOrder", "testId"}]
       39 GETUPVAL                         R7 3
       40 GETTABLEKS                       R7 R7 K10 ["Hooks"]
       42 GETTABLEKS                       R7 R7 K11 ["useDefaultTags"]
       44 GETTABLEKS                       R8 R0 K12 ["tags"]
       46 LOADK                            R9 K13 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
       47 CALL                             R7 2 1
       48 SETTABLEKS                       R7 R6 K6 ["tag"]
       50 GETTABLEKS                       R7 R0 K7 ["LayoutOrder"]
       52 SETTABLEKS                       R7 R6 K7 ["LayoutOrder"]
       54 GETTABLEKS                       R7 R0 K8 ["testId"]
       56 SETTABLEKS                       R7 R6 K8 ["testId"]
       58 DUPTABLE                         R7 K17 [{"CompositorNodeInputLabel", "InputField", "PinChildren"}]
       59 GETUPVAL                         R8 0
       60 GETTABLEKS                       R8 R8 K4 ["createElement"]
       62 GETUPVAL                         R9 4
       63 DUPTABLE                         R10 K22 [{["tag"] = "fill auto-xy text-body-small text-align-x-left text-truncate-split", ["Text"], ["LayoutOrder"] = 1, ["isDisabled"]}]
       64 GETTABLEKS                       R11 R0 K23 ["Label"]
       66 SETTABLEKS                       R11 R10 K19 ["Text"]
       68 GETTABLEKS                       R12 R0 K25 ["IsDisabled"]
       70 ORK                              R11 R12 K24 [False]
       71 SETTABLEKS                       R11 R10 K21 ["isDisabled"]
       73 CALL                             R8 2 1
       74 SETTABLEKS                       R8 R7 K14 ["CompositorNodeInputLabel"]
       76 GETUPVAL                         R8 0
       77 GETTABLEKS                       R8 R8 K4 ["createElement"]
       79 GETUPVAL                         R9 5
       80 DUPTABLE                         R10 K27 [{"IsParameterOverridden", "OnParameterOverrideRevert"}]
       81 GETTABLEKS                       R11 R0 K2 ["IsParameterOverridden"]
       83 SETTABLEKS                       R11 R10 K2 ["IsParameterOverridden"]
       85 GETTABLEKS                       R11 R0 K26 ["OnParameterOverrideRevert"]
       87 SETTABLEKS                       R11 R10 K26 ["OnParameterOverrideRevert"]
       89 GETUPVAL                         R11 0
       90 GETTABLEKS                       R11 R11 K4 ["createElement"]
       92 GETUPVAL                         R12 3
       93 GETTABLEKS                       R12 R12 K28 ["NumberInput"]
       95 DUPTABLE                         R13 K44 [{["size"], ["width"], ["label"] = "", ["value"], ["LayoutOrder"] = 2, ["precision"], ["step"], ["formatAsString"], ["isScrubbable"] = True, ["minimum"], ["maximum"], ["onChanged"], ["controlsVariant"], ["isDisabled"]}]
       96 GETUPVAL                         R14 3
       97 GETTABLEKS                       R14 R14 K45 ["Enums"]
       99 GETTABLEKS                       R14 R14 K46 ["InputSize"]
      101 GETTABLEKS                       R14 R14 K47 ["XSmall"]
      103 SETTABLEKS                       R14 R13 K29 ["size"]
      105 SETTABLEKS                       R2 R13 K30 ["width"]
      107 SETTABLEKS                       R1 R13 K33 ["value"]
      109 GETTABLEKS                       R14 R0 K48 ["Precision"]
      111 JUMPIF                           R14 ; [+5]
      112 GETUPVAL                         R14 6
      113 GETTABLEKS                       R14 R14 K49 ["NUMBER_PRECISION"]
      115 GETTABLEKS                       R14 R14 K50 ["Float"]
      117 SETTABLEKS                       R14 R13 K35 ["precision"]
      119 GETTABLEKS                       R14 R0 K51 ["Step"]
      121 JUMPIF                           R14 ; [+5]
      122 GETUPVAL                         R14 6
      123 GETTABLEKS                       R14 R14 K52 ["NUMBER_STEP"]
      125 GETTABLEKS                       R14 R14 K50 ["Float"]
      127 SETTABLEKS                       R14 R13 K36 ["step"]
      129 GETTABLEKS                       R14 R0 K53 ["FormatAsString"]
      131 SETTABLEKS                       R14 R13 K37 ["formatAsString"]
      133 GETTABLEKS                       R14 R0 K54 ["Minimum"]
      135 SETTABLEKS                       R14 R13 K40 ["minimum"]
      137 GETTABLEKS                       R14 R0 K55 ["Maximum"]
      139 SETTABLEKS                       R14 R13 K41 ["maximum"]
      141 GETUPVAL                         R15 7
      142 JUMPIFNOT                        R15 ; [+2]
      143 MOVE                             R14 R3
      144 JUMP                             ; [+2]
      145 GETTABLEKS                       R14 R0 K56 ["OnChanged"]
      147 SETTABLEKS                       R14 R13 K42 ["onChanged"]
      149 GETUPVAL                         R14 3
      150 GETTABLEKS                       R14 R14 K45 ["Enums"]
      152 GETTABLEKS                       R14 R14 K57 ["NumberInputControlsVariant"]
      154 GETTABLEKS                       R14 R14 K58 ["None"]
      156 SETTABLEKS                       R14 R13 K43 ["controlsVariant"]
      158 GETTABLEKS                       R15 R0 K25 ["IsDisabled"]
      160 ORK                              R14 R15 K24 [False]
      161 SETTABLEKS                       R14 R13 K21 ["isDisabled"]
      163 CALL                             R11 2 -1
      164 CALL                             R8 -1 1
      165 SETTABLEKS                       R8 R7 K15 ["InputField"]
      167 GETUPVAL                         R8 0
      168 GETTABLEKS                       R8 R8 K4 ["createElement"]
      170 LOADK                            R9 K59 ["Folder"]
      171 NEWTABLE                         R10 0 0
      173 GETTABLEKS                       R11 R0 K60 ["children"]
      175 CALL                             R8 3 1
      176 SETTABLEKS                       R8 R7 K16 ["PinChildren"]
      178 CALL                             R4 3 -1
      179 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Constants"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Flags"]
       16 GETTABLEKS                       R3 R3 K8 ["FFlagAnimGraphUI_DragChangeHistoryFix"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Parent"]
       23 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K11 ["Components"]
       30 GETTABLEKS                       R5 R5 K12 ["GraphContext"]
       32 GETTABLEKS                       R5 R5 K13 ["GraphContextTypes"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Components"]
       39 GETTABLEKS                       R6 R6 K14 ["CompositorNodeProperty"]
       41 GETTABLEKS                       R6 R6 K15 ["InputPropertyField"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K11 ["Components"]
       48 GETTABLEKS                       R7 R7 K14 ["CompositorNodeProperty"]
       50 GETTABLEKS                       R7 R7 K16 ["PropertyConstants"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K11 ["Components"]
       57 GETTABLEKS                       R8 R8 K14 ["CompositorNodeProperty"]
       59 GETTABLEKS                       R8 R8 K17 ["PropertyLabel"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K9 ["Parent"]
       66 GETTABLEKS                       R9 R9 K18 ["React"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K9 ["Parent"]
       73 GETTABLEKS                       R10 R10 K19 ["ReactUtils"]
       75 CALL                             R9 1 1
       76 DUPCLOSURE                       R10 K20 [PROTO_3]
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R9
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R7
       82 CAPTURE                          VAL R5
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R2
       85 RETURN                           R10 1
