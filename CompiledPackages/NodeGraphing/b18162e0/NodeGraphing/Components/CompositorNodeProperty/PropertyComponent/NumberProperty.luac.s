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
       63 DUPTABLE                         R10 K20 [{"tag", "Text", "LayoutOrder", "isDisabled"}]
       64 LOADK                            R11 K21 ["text-body-small text-align-x-left auto-xy fill text-truncate-split"]
       65 SETTABLEKS                       R11 R10 K6 ["tag"]
       67 GETTABLEKS                       R11 R0 K22 ["Label"]
       69 SETTABLEKS                       R11 R10 K18 ["Text"]
       71 LOADN                            R11 1
       72 SETTABLEKS                       R11 R10 K7 ["LayoutOrder"]
       74 GETTABLEKS                       R12 R0 K24 ["IsDisabled"]
       76 ORK                              R11 R12 K23 [False]
       77 SETTABLEKS                       R11 R10 K19 ["isDisabled"]
       79 CALL                             R8 2 1
       80 SETTABLEKS                       R8 R7 K14 ["CompositorNodeInputLabel"]
       82 GETUPVAL                         R8 0
       83 GETTABLEKS                       R8 R8 K4 ["createElement"]
       85 GETUPVAL                         R9 5
       86 DUPTABLE                         R10 K26 [{"IsParameterOverridden", "OnParameterOverrideRevert"}]
       87 GETTABLEKS                       R11 R0 K2 ["IsParameterOverridden"]
       89 SETTABLEKS                       R11 R10 K2 ["IsParameterOverridden"]
       91 GETTABLEKS                       R11 R0 K25 ["OnParameterOverrideRevert"]
       93 SETTABLEKS                       R11 R10 K25 ["OnParameterOverrideRevert"]
       95 GETUPVAL                         R11 0
       96 GETTABLEKS                       R11 R11 K4 ["createElement"]
       98 GETUPVAL                         R12 3
       99 GETTABLEKS                       R12 R12 K27 ["NumberInput"]
      101 DUPTABLE                         R13 K40 [{"size", "width", "label", "value", "LayoutOrder", "precision", "step", "formatAsString", "isScrubbable", "minimum", "maximum", "onChanged", "controlsVariant", "isDisabled"}]
      102 GETUPVAL                         R14 3
      103 GETTABLEKS                       R14 R14 K41 ["Enums"]
      105 GETTABLEKS                       R14 R14 K42 ["InputSize"]
      107 GETTABLEKS                       R14 R14 K43 ["XSmall"]
      109 SETTABLEKS                       R14 R13 K28 ["size"]
      111 SETTABLEKS                       R2 R13 K29 ["width"]
      113 LOADK                            R14 K44 [""]
      114 SETTABLEKS                       R14 R13 K30 ["label"]
      116 SETTABLEKS                       R1 R13 K31 ["value"]
      118 LOADN                            R14 2
      119 SETTABLEKS                       R14 R13 K7 ["LayoutOrder"]
      121 GETTABLEKS                       R14 R0 K45 ["Precision"]
      123 JUMPIF                           R14 ; [+5]
      124 GETUPVAL                         R14 6
      125 GETTABLEKS                       R14 R14 K46 ["NUMBER_PRECISION"]
      127 GETTABLEKS                       R14 R14 K47 ["Float"]
      129 SETTABLEKS                       R14 R13 K32 ["precision"]
      131 GETTABLEKS                       R14 R0 K48 ["Step"]
      133 JUMPIF                           R14 ; [+5]
      134 GETUPVAL                         R14 6
      135 GETTABLEKS                       R14 R14 K49 ["NUMBER_STEP"]
      137 GETTABLEKS                       R14 R14 K47 ["Float"]
      139 SETTABLEKS                       R14 R13 K33 ["step"]
      141 GETTABLEKS                       R14 R0 K50 ["FormatAsString"]
      143 SETTABLEKS                       R14 R13 K34 ["formatAsString"]
      145 LOADB                            R14 1
      146 SETTABLEKS                       R14 R13 K35 ["isScrubbable"]
      148 GETTABLEKS                       R14 R0 K51 ["Minimum"]
      150 SETTABLEKS                       R14 R13 K36 ["minimum"]
      152 GETTABLEKS                       R14 R0 K52 ["Maximum"]
      154 SETTABLEKS                       R14 R13 K37 ["maximum"]
      156 GETUPVAL                         R15 7
      157 JUMPIFNOT                        R15 ; [+2]
      158 MOVE                             R14 R3
      159 JUMP                             ; [+2]
      160 GETTABLEKS                       R14 R0 K53 ["OnChanged"]
      162 SETTABLEKS                       R14 R13 K38 ["onChanged"]
      164 GETUPVAL                         R14 3
      165 GETTABLEKS                       R14 R14 K41 ["Enums"]
      167 GETTABLEKS                       R14 R14 K54 ["NumberInputControlsVariant"]
      169 GETTABLEKS                       R14 R14 K55 ["None"]
      171 SETTABLEKS                       R14 R13 K39 ["controlsVariant"]
      173 GETTABLEKS                       R15 R0 K24 ["IsDisabled"]
      175 ORK                              R14 R15 K23 [False]
      176 SETTABLEKS                       R14 R13 K19 ["isDisabled"]
      178 CALL                             R11 2 -1
      179 CALL                             R8 -1 1
      180 SETTABLEKS                       R8 R7 K15 ["InputField"]
      182 GETUPVAL                         R8 0
      183 GETTABLEKS                       R8 R8 K4 ["createElement"]
      185 LOADK                            R9 K56 ["Folder"]
      186 NEWTABLE                         R10 0 0
      188 GETTABLEKS                       R11 R0 K57 ["children"]
      190 CALL                             R8 3 1
      191 SETTABLEKS                       R8 R7 K16 ["PinChildren"]
      193 CALL                             R4 3 -1
      194 RETURN                           R4 -1

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
