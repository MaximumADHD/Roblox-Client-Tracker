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
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K3 ["createElement"]
       28 GETUPVAL                         R4 2
       29 GETTABLEKS                       R4 R4 K4 ["View"]
       31 DUPTABLE                         R5 K8 [{"tag", "LayoutOrder", "testId"}]
       32 GETUPVAL                         R6 2
       33 GETTABLEKS                       R6 R6 K9 ["Hooks"]
       35 GETTABLEKS                       R6 R6 K10 ["useDefaultTags"]
       37 GETTABLEKS                       R7 R0 K11 ["tags"]
       39 LOADK                            R8 K12 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
       40 CALL                             R6 2 1
       41 SETTABLEKS                       R6 R5 K5 ["tag"]
       43 GETTABLEKS                       R6 R0 K6 ["LayoutOrder"]
       45 SETTABLEKS                       R6 R5 K6 ["LayoutOrder"]
       47 GETTABLEKS                       R6 R0 K7 ["testId"]
       49 SETTABLEKS                       R6 R5 K7 ["testId"]
       51 DUPTABLE                         R6 K16 [{"CompositorNodeInputLabel", "InputField", "PinChildren"}]
       52 GETUPVAL                         R7 0
       53 GETTABLEKS                       R7 R7 K3 ["createElement"]
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
       75 GETUPVAL                         R7 0
       76 GETTABLEKS                       R7 R7 K3 ["createElement"]
       78 GETUPVAL                         R8 4
       79 DUPTABLE                         R9 K25 [{"IsParameterOverridden", "OnParameterOverrideRevert"}]
       80 GETTABLEKS                       R10 R0 K2 ["IsParameterOverridden"]
       82 SETTABLEKS                       R10 R9 K2 ["IsParameterOverridden"]
       84 GETTABLEKS                       R10 R0 K24 ["OnParameterOverrideRevert"]
       86 SETTABLEKS                       R10 R9 K24 ["OnParameterOverrideRevert"]
       88 GETUPVAL                         R10 0
       89 GETTABLEKS                       R10 R10 K3 ["createElement"]
       91 GETUPVAL                         R11 2
       92 GETTABLEKS                       R11 R11 K26 ["NumberInput"]
       94 DUPTABLE                         R12 K36 [{"size", "width", "label", "value", "LayoutOrder", "precision", "step", "isScrubbable", "onChanged", "controlsVariant", "isDisabled"}]
       95 GETUPVAL                         R13 2
       96 GETTABLEKS                       R13 R13 K37 ["Enums"]
       98 GETTABLEKS                       R13 R13 K38 ["InputSize"]
      100 GETTABLEKS                       R13 R13 K39 ["XSmall"]
      102 SETTABLEKS                       R13 R12 K27 ["size"]
      104 SETTABLEKS                       R2 R12 K28 ["width"]
      106 LOADK                            R13 K40 [""]
      107 SETTABLEKS                       R13 R12 K29 ["label"]
      109 SETTABLEKS                       R1 R12 K30 ["value"]
      111 LOADN                            R13 2
      112 SETTABLEKS                       R13 R12 K6 ["LayoutOrder"]
      114 GETTABLEKS                       R13 R0 K41 ["Precision"]
      116 JUMPIF                           R13 ; [+5]
      117 GETUPVAL                         R13 5
      118 GETTABLEKS                       R13 R13 K42 ["NUMBER_PRECISION"]
      120 GETTABLEKS                       R13 R13 K43 ["Float"]
      122 SETTABLEKS                       R13 R12 K31 ["precision"]
      124 GETTABLEKS                       R13 R0 K44 ["Step"]
      126 JUMPIF                           R13 ; [+5]
      127 GETUPVAL                         R13 5
      128 GETTABLEKS                       R13 R13 K45 ["NUMBER_STEP"]
      130 GETTABLEKS                       R13 R13 K43 ["Float"]
      132 SETTABLEKS                       R13 R12 K32 ["step"]
      134 LOADB                            R13 1
      135 SETTABLEKS                       R13 R12 K33 ["isScrubbable"]
      137 GETTABLEKS                       R13 R0 K46 ["OnChanged"]
      139 SETTABLEKS                       R13 R12 K34 ["onChanged"]
      141 GETUPVAL                         R13 2
      142 GETTABLEKS                       R13 R13 K37 ["Enums"]
      144 GETTABLEKS                       R13 R13 K47 ["NumberInputControlsVariant"]
      146 GETTABLEKS                       R13 R13 K48 ["None"]
      148 SETTABLEKS                       R13 R12 K35 ["controlsVariant"]
      150 GETTABLEKS                       R14 R0 K23 ["IsDisabled"]
      152 ORK                              R13 R14 K22 [False]
      153 SETTABLEKS                       R13 R12 K18 ["isDisabled"]
      155 CALL                             R10 2 -1
      156 CALL                             R7 -1 1
      157 SETTABLEKS                       R7 R6 K14 ["InputField"]
      159 GETUPVAL                         R7 0
      160 GETTABLEKS                       R7 R7 K3 ["createElement"]
      162 LOADK                            R8 K49 ["Folder"]
      163 NEWTABLE                         R9 0 0
      165 GETTABLEKS                       R10 R0 K50 ["children"]
      167 CALL                             R7 3 1
      168 SETTABLEKS                       R7 R6 K15 ["PinChildren"]
      170 CALL                             R3 3 -1
      171 RETURN                           R3 -1

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
       14 GETTABLEKS                       R3 R0 K7 ["Parent"]
       16 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Components"]
       23 GETTABLEKS                       R4 R4 K10 ["CompositorNodeProperty"]
       25 GETTABLEKS                       R4 R4 K11 ["InputPropertyField"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K9 ["Components"]
       32 GETTABLEKS                       R5 R5 K10 ["CompositorNodeProperty"]
       34 GETTABLEKS                       R5 R5 K12 ["PropertyConstants"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K9 ["Components"]
       41 GETTABLEKS                       R6 R6 K10 ["CompositorNodeProperty"]
       43 GETTABLEKS                       R6 R6 K13 ["PropertyLabel"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K7 ["Parent"]
       50 GETTABLEKS                       R7 R7 K14 ["React"]
       52 CALL                             R6 1 1
       53 DUPCLOSURE                       R7 K15 [PROTO_2]
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R1
       60 RETURN                           R7 1
