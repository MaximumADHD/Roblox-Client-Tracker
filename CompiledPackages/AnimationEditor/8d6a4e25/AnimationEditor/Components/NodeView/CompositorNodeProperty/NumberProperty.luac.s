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
       31 DUPTABLE                         R5 K7 [{"tag", "LayoutOrder"}]
       32 GETUPVAL                         R8 2
       33 GETTABLEKS                       R7 R8 K8 ["Hooks"]
       35 GETTABLEKS                       R6 R7 K9 ["useDefaultTags"]
       37 GETTABLEKS                       R7 R0 K10 ["tags"]
       39 LOADK                            R8 K11 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
       40 CALL                             R6 2 1
       41 SETTABLEKS                       R6 R5 K5 ["tag"]
       43 GETTABLEKS                       R6 R0 K6 ["LayoutOrder"]
       45 SETTABLEKS                       R6 R5 K6 ["LayoutOrder"]
       47 DUPTABLE                         R6 K15 [{"CompositorNodeInputLabel", "InputField", "PinChildren"}]
       48 GETUPVAL                         R8 0
       49 GETTABLEKS                       R7 R8 K3 ["createElement"]
       51 GETUPVAL                         R8 3
       52 DUPTABLE                         R9 K18 [{"tag", "Text", "LayoutOrder", "isDisabled"}]
       53 LOADK                            R10 K19 ["text-body-small text-align-x-left auto-xy fill text-truncate-split"]
       54 SETTABLEKS                       R10 R9 K5 ["tag"]
       56 GETTABLEKS                       R10 R0 K20 ["Label"]
       58 SETTABLEKS                       R10 R9 K16 ["Text"]
       60 LOADN                            R10 1
       61 SETTABLEKS                       R10 R9 K6 ["LayoutOrder"]
       63 GETTABLEKS                       R10 R0 K21 ["IsReadOnly"]
       65 JUMPIF                           R10 ; [+4]
       66 GETTABLEKS                       R10 R0 K22 ["IsDisabled"]
       68 JUMPIF                           R10 ; [+1]
       69 LOADB                            R10 0
       70 SETTABLEKS                       R10 R9 K17 ["isDisabled"]
       72 CALL                             R7 2 1
       73 SETTABLEKS                       R7 R6 K12 ["CompositorNodeInputLabel"]
       75 GETUPVAL                         R8 0
       76 GETTABLEKS                       R7 R8 K3 ["createElement"]
       78 GETUPVAL                         R8 4
       79 DUPTABLE                         R9 K24 [{"IsParameterOverridden", "OnParameterOverrideRevert"}]
       80 GETTABLEKS                       R10 R0 K2 ["IsParameterOverridden"]
       82 SETTABLEKS                       R10 R9 K2 ["IsParameterOverridden"]
       84 GETTABLEKS                       R10 R0 K23 ["OnParameterOverrideRevert"]
       86 SETTABLEKS                       R10 R9 K23 ["OnParameterOverrideRevert"]
       88 GETUPVAL                         R11 0
       89 GETTABLEKS                       R10 R11 K3 ["createElement"]
       91 GETUPVAL                         R12 2
       92 GETTABLEKS                       R11 R12 K25 ["NumberInput"]
       94 DUPTABLE                         R12 K34 [{"size", "width", "label", "value", "LayoutOrder", "precision", "step", "isScrubbable", "onChanged", "isDisabled"}]
       95 GETUPVAL                         R16 2
       96 GETTABLEKS                       R15 R16 K35 ["Enums"]
       98 GETTABLEKS                       R14 R15 K36 ["InputSize"]
      100 GETTABLEKS                       R13 R14 K37 ["XSmall"]
      102 SETTABLEKS                       R13 R12 K26 ["size"]
      104 SETTABLEKS                       R2 R12 K27 ["width"]
      106 LOADK                            R13 K38 [""]
      107 SETTABLEKS                       R13 R12 K28 ["label"]
      109 SETTABLEKS                       R1 R12 K29 ["value"]
      111 LOADN                            R13 2
      112 SETTABLEKS                       R13 R12 K6 ["LayoutOrder"]
      114 GETTABLEKS                       R14 R0 K40 ["Precision"]
      116 ORK                              R13 R14 K39 [2]
      117 SETTABLEKS                       R13 R12 K30 ["precision"]
      119 GETTABLEKS                       R14 R0 K42 ["Step"]
      121 ORK                              R13 R14 K41 [0.1]
      122 SETTABLEKS                       R13 R12 K31 ["step"]
      124 LOADB                            R13 1
      125 SETTABLEKS                       R13 R12 K32 ["isScrubbable"]
      127 GETTABLEKS                       R13 R0 K43 ["OnChanged"]
      129 SETTABLEKS                       R13 R12 K33 ["onChanged"]
      131 GETTABLEKS                       R13 R0 K21 ["IsReadOnly"]
      133 JUMPIF                           R13 ; [+4]
      134 GETTABLEKS                       R13 R0 K22 ["IsDisabled"]
      136 JUMPIF                           R13 ; [+1]
      137 LOADB                            R13 0
      138 SETTABLEKS                       R13 R12 K17 ["isDisabled"]
      140 CALL                             R10 2 -1
      141 CALL                             R7 -1 1
      142 SETTABLEKS                       R7 R6 K13 ["InputField"]
      144 GETUPVAL                         R8 0
      145 GETTABLEKS                       R7 R8 K3 ["createElement"]
      147 LOADK                            R8 K44 ["Folder"]
      148 NEWTABLE                         R9 0 0
      150 GETTABLEKS                       R10 R0 K45 ["children"]
      152 CALL                             R7 3 1
      153 SETTABLEKS                       R7 R6 K14 ["PinChildren"]
      155 CALL                             R3 3 -1
      156 RETURN                           R3 -1

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
       22 GETTABLEKS                       R3 R4 K11 ["InputPropertyField"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R7 R0 K8 ["Components"]
       29 GETTABLEKS                       R6 R7 K9 ["NodeView"]
       31 GETTABLEKS                       R5 R6 K10 ["CompositorNodeProperty"]
       33 GETTABLEKS                       R4 R5 K12 ["PropertyConstants"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R8 R0 K8 ["Components"]
       40 GETTABLEKS                       R7 R8 K9 ["NodeView"]
       42 GETTABLEKS                       R6 R7 K10 ["CompositorNodeProperty"]
       44 GETTABLEKS                       R5 R6 K13 ["PropertyLabel"]
       46 CALL                             R4 1 1
       47 GETIMPORT                        R5 K5 [require]
       49 GETTABLEKS                       R7 R0 K6 ["Parent"]
       51 GETTABLEKS                       R6 R7 K14 ["React"]
       53 CALL                             R5 1 1
       54 DUPCLOSURE                       R6 K15 [PROTO_2]
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R2
       60 RETURN                           R6 1
