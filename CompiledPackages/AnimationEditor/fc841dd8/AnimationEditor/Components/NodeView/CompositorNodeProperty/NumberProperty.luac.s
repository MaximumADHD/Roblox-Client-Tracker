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
       32 LOADK                            R6 K8 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
       33 SETTABLEKS                       R6 R5 K5 ["tag"]
       35 GETTABLEKS                       R6 R0 K6 ["LayoutOrder"]
       37 SETTABLEKS                       R6 R5 K6 ["LayoutOrder"]
       39 DUPTABLE                         R6 K12 [{"CompositorNodeInputLabel", "InputField", "PinChildren"}]
       40 GETUPVAL                         R8 0
       41 GETTABLEKS                       R7 R8 K3 ["createElement"]
       43 GETUPVAL                         R8 3
       44 DUPTABLE                         R9 K15 [{"tag", "Text", "LayoutOrder", "isDisabled"}]
       45 LOADK                            R10 K16 ["text-body-small text-align-x-left auto-xy fill text-truncate-split"]
       46 SETTABLEKS                       R10 R9 K5 ["tag"]
       48 GETTABLEKS                       R10 R0 K17 ["Label"]
       50 SETTABLEKS                       R10 R9 K13 ["Text"]
       52 LOADN                            R10 1
       53 SETTABLEKS                       R10 R9 K6 ["LayoutOrder"]
       55 GETTABLEKS                       R10 R0 K18 ["IsReadOnly"]
       57 SETTABLEKS                       R10 R9 K14 ["isDisabled"]
       59 CALL                             R7 2 1
       60 SETTABLEKS                       R7 R6 K9 ["CompositorNodeInputLabel"]
       62 GETUPVAL                         R8 0
       63 GETTABLEKS                       R7 R8 K3 ["createElement"]
       65 GETUPVAL                         R8 4
       66 DUPTABLE                         R9 K20 [{"IsParameterOverridden", "OnParameterOverrideRevert"}]
       67 GETTABLEKS                       R10 R0 K2 ["IsParameterOverridden"]
       69 SETTABLEKS                       R10 R9 K2 ["IsParameterOverridden"]
       71 GETTABLEKS                       R10 R0 K19 ["OnParameterOverrideRevert"]
       73 SETTABLEKS                       R10 R9 K19 ["OnParameterOverrideRevert"]
       75 GETUPVAL                         R11 0
       76 GETTABLEKS                       R10 R11 K3 ["createElement"]
       78 GETUPVAL                         R12 2
       79 GETTABLEKS                       R11 R12 K21 ["NumberInput"]
       81 DUPTABLE                         R12 K29 [{"size", "width", "label", "value", "LayoutOrder", "precision", "isScrubbable", "onChanged", "isDisabled"}]
       82 GETUPVAL                         R16 2
       83 GETTABLEKS                       R15 R16 K30 ["Enums"]
       85 GETTABLEKS                       R14 R15 K31 ["InputSize"]
       87 GETTABLEKS                       R13 R14 K32 ["XSmall"]
       89 SETTABLEKS                       R13 R12 K22 ["size"]
       91 SETTABLEKS                       R2 R12 K23 ["width"]
       93 LOADK                            R13 K33 [""]
       94 SETTABLEKS                       R13 R12 K24 ["label"]
       96 SETTABLEKS                       R1 R12 K25 ["value"]
       98 LOADN                            R13 2
       99 SETTABLEKS                       R13 R12 K6 ["LayoutOrder"]
      101 LOADN                            R13 2
      102 SETTABLEKS                       R13 R12 K26 ["precision"]
      104 LOADB                            R13 1
      105 SETTABLEKS                       R13 R12 K27 ["isScrubbable"]
      107 GETTABLEKS                       R13 R0 K34 ["OnChanged"]
      109 SETTABLEKS                       R13 R12 K28 ["onChanged"]
      111 GETTABLEKS                       R13 R0 K18 ["IsReadOnly"]
      113 SETTABLEKS                       R13 R12 K14 ["isDisabled"]
      115 CALL                             R10 2 -1
      116 CALL                             R7 -1 1
      117 SETTABLEKS                       R7 R6 K10 ["InputField"]
      119 GETUPVAL                         R8 0
      120 GETTABLEKS                       R7 R8 K3 ["createElement"]
      122 LOADK                            R8 K35 ["Folder"]
      123 NEWTABLE                         R9 0 0
      125 GETTABLEKS                       R10 R0 K36 ["children"]
      127 CALL                             R7 3 1
      128 SETTABLEKS                       R7 R6 K11 ["PinChildren"]
      130 CALL                             R3 3 -1
      131 RETURN                           R3 -1

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
