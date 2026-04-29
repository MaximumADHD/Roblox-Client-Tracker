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
        1 GETTABLEKS                       R1 R2 K0 ["IsParameterOverridden"]
        3 JUMPIFNOT                        R1 ; [+4]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["PROPERTY_PARAMETER_OVERRIDDEN_WIDTH_UDIM"]
        7 RETURN                           R0 1
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R0 R1 K2 ["PROPERTY_WIDTH_UDIM"]
       11 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 1
        7 GETTABLEKS                       R4 R0 K1 ["Value"]
        9 SETLIST                          R3 R4 1 [1]
       11 CALL                             R1 2 1
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K0 ["useMemo"]
       15 NEWCLOSURE                       R3 P1
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U1
       18 NEWTABLE                         R4 0 1
       20 GETTABLEKS                       R5 R0 K2 ["IsParameterOverridden"]
       22 SETLIST                          R4 R5 1 [1]
       24 CALL                             R2 2 1
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R3 R4 K3 ["createElement"]
       28 GETUPVAL                         R5 2
       29 GETTABLEKS                       R4 R5 K4 ["View"]
       31 DUPTABLE                         R5 K8 [{"tag", "LayoutOrder", "testId"}]
       32 GETUPVAL                         R8 2
       33 GETTABLEKS                       R7 R8 K9 ["Hooks"]
       35 GETTABLEKS                       R6 R7 K10 ["useDefaultTags"]
       37 GETTABLEKS                       R7 R0 K11 ["tags"]
       39 LOADK                            R8 K12 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
       40 CALL                             R6 2 1
       41 SETTABLEKS                       R6 R5 K5 ["tag"]
       43 GETTABLEKS                       R6 R0 K6 ["LayoutOrder"]
       45 SETTABLEKS                       R6 R5 K6 ["LayoutOrder"]
       47 GETTABLEKS                       R6 R0 K7 ["testId"]
       49 SETTABLEKS                       R6 R5 K7 ["testId"]
       51 DUPTABLE                         R6 K16 [{"CompositorNodeInputLabel", "InputField", "PinChildren"}]
       52 GETUPVAL                         R8 0
       53 GETTABLEKS                       R7 R8 K3 ["createElement"]
       55 GETUPVAL                         R8 3
       56 DUPTABLE                         R9 K19 [{"tag", "Text", "LayoutOrder", "isDisabled"}]
       57 LOADK                            R10 K20 ["text-body-small text-align-x-left auto-xy fill text-truncate-split"]
       58 SETTABLEKS                       R10 R9 K5 ["tag"]
       60 GETTABLEKS                       R10 R0 K21 ["Label"]
       62 SETTABLEKS                       R10 R9 K17 ["Text"]
       64 LOADN                            R10 1
       65 SETTABLEKS                       R10 R9 K6 ["LayoutOrder"]
       67 GETTABLEKS                       R11 R0 K23 ["IsDisabled"]
       69 ORK                              R10 R11 K22 [False]
       70 SETTABLEKS                       R10 R9 K18 ["isDisabled"]
       72 CALL                             R7 2 1
       73 SETTABLEKS                       R7 R6 K13 ["CompositorNodeInputLabel"]
       75 GETUPVAL                         R8 0
       76 GETTABLEKS                       R7 R8 K3 ["createElement"]
       78 GETUPVAL                         R8 4
       79 DUPTABLE                         R9 K25 [{"IsParameterOverridden", "OnParameterOverrideRevert"}]
       80 GETTABLEKS                       R10 R0 K2 ["IsParameterOverridden"]
       82 SETTABLEKS                       R10 R9 K2 ["IsParameterOverridden"]
       84 GETTABLEKS                       R10 R0 K24 ["OnParameterOverrideRevert"]
       86 SETTABLEKS                       R10 R9 K24 ["OnParameterOverrideRevert"]
       88 GETUPVAL                         R11 0
       89 GETTABLEKS                       R10 R11 K3 ["createElement"]
       91 GETUPVAL                         R12 2
       92 GETTABLEKS                       R11 R12 K26 ["NumberInput"]
       94 DUPTABLE                         R12 K36 [{"size", "width", "label", "value", "LayoutOrder", "precision", "step", "isScrubbable", "onChanged", "controlsVariant", "isDisabled"}]
       95 GETUPVAL                         R16 2
       96 GETTABLEKS                       R15 R16 K37 ["Enums"]
       98 GETTABLEKS                       R14 R15 K38 ["InputSize"]
      100 GETTABLEKS                       R13 R14 K39 ["XSmall"]
      102 SETTABLEKS                       R13 R12 K27 ["size"]
      104 SETTABLEKS                       R2 R12 K28 ["width"]
      106 LOADK                            R13 K40 [""]
      107 SETTABLEKS                       R13 R12 K29 ["label"]
      109 SETTABLEKS                       R1 R12 K30 ["value"]
      111 LOADN                            R13 2
      112 SETTABLEKS                       R13 R12 K6 ["LayoutOrder"]
      114 GETTABLEKS                       R13 R0 K41 ["Precision"]
      116 JUMPIF                           R13 ; [+10]
      117 GETUPVAL                         R14 5
      118 CALL                             R14 0 1
      119 JUMPIFNOT                        R14 ; [+6]
      120 GETUPVAL                         R15 6
      121 GETTABLEKS                       R14 R15 K42 ["NUMBER_PRECISION"]
      123 GETTABLEKS                       R13 R14 K43 ["Float"]
      125 JUMPIF                           R13 ; [+1]
      126 LOADN                            R13 1
      127 SETTABLEKS                       R13 R12 K31 ["precision"]
      129 GETTABLEKS                       R13 R0 K44 ["Step"]
      131 JUMPIF                           R13 ; [+10]
      132 GETUPVAL                         R14 5
      133 CALL                             R14 0 1
      134 JUMPIFNOT                        R14 ; [+6]
      135 GETUPVAL                         R15 6
      136 GETTABLEKS                       R14 R15 K45 ["NUMBER_STEP"]
      138 GETTABLEKS                       R13 R14 K43 ["Float"]
      140 JUMPIF                           R13 ; [+1]
      141 LOADK                            R13 K46 [0.005]
      142 SETTABLEKS                       R13 R12 K32 ["step"]
      144 LOADB                            R13 1
      145 SETTABLEKS                       R13 R12 K33 ["isScrubbable"]
      147 GETTABLEKS                       R13 R0 K47 ["OnChanged"]
      149 SETTABLEKS                       R13 R12 K34 ["onChanged"]
      151 GETUPVAL                         R16 2
      152 GETTABLEKS                       R15 R16 K37 ["Enums"]
      154 GETTABLEKS                       R14 R15 K48 ["NumberInputControlsVariant"]
      156 GETTABLEKS                       R13 R14 K49 ["None"]
      158 SETTABLEKS                       R13 R12 K35 ["controlsVariant"]
      160 GETTABLEKS                       R14 R0 K23 ["IsDisabled"]
      162 ORK                              R13 R14 K22 [False]
      163 SETTABLEKS                       R13 R12 K18 ["isDisabled"]
      165 CALL                             R10 2 -1
      166 CALL                             R7 -1 1
      167 SETTABLEKS                       R7 R6 K14 ["InputField"]
      169 GETUPVAL                         R8 0
      170 GETTABLEKS                       R7 R8 K3 ["createElement"]
      172 LOADK                            R8 K50 ["Folder"]
      173 NEWTABLE                         R9 0 0
      175 GETTABLEKS                       R10 R0 K51 ["children"]
      177 CALL                             R7 3 1
      178 SETTABLEKS                       R7 R6 K15 ["PinChildren"]
      180 CALL                             R3 3 -1
      181 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R3 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R7 R0 K10 ["Components"]
       25 GETTABLEKS                       R6 R7 K11 ["NodeView"]
       27 GETTABLEKS                       R5 R6 K12 ["CompositorNodeProperty"]
       29 GETTABLEKS                       R4 R5 K13 ["InputPropertyField"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R8 R0 K10 ["Components"]
       36 GETTABLEKS                       R7 R8 K11 ["NodeView"]
       38 GETTABLEKS                       R6 R7 K12 ["CompositorNodeProperty"]
       40 GETTABLEKS                       R5 R6 K14 ["PropertyConstants"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R9 R0 K10 ["Components"]
       47 GETTABLEKS                       R8 R9 K11 ["NodeView"]
       49 GETTABLEKS                       R7 R8 K12 ["CompositorNodeProperty"]
       51 GETTABLEKS                       R6 R7 K15 ["PropertyLabel"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETTABLEKS                       R8 R0 K8 ["Parent"]
       58 GETTABLEKS                       R7 R8 K16 ["React"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R9 R0 K17 ["Flags"]
       65 GETTABLEKS                       R8 R9 K18 ["getFFlagAnimGraphFloatStep003"]
       67 CALL                             R7 1 1
       68 DUPCLOSURE                       R8 K19 [PROTO_2]
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R7
       75 CAPTURE                          VAL R1
       76 RETURN                           R8 1
