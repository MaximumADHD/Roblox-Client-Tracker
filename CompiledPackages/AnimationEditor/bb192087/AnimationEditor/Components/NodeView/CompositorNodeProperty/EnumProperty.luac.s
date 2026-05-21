PROTO_0:
        0 GETIMPORT                        R1 K1 [Enum]
        2 GETUPVAL                         R2 1
        3 GETTABLE                         R0 R1 R2
        4 SETUPVAL                         R0 0
        5 RETURN                           R0 0

PROTO_1:
        0 LOADB                            R1 1
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["Choices"]
        4 JUMPIFEQKNIL                     R2 ; [+9]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K0 ["Choices"]
        9 GETTABLE                         R2 R3 R0
       10 JUMPIFNOTEQKNIL                  R2 ; [+2]
       12 LOADB                            R1 0 +1
       13 LOADB                            R1 1
       14 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Choices"]
        3 JUMPIFNOT                        R1 ; [+10]
        4 DUPTABLE                         R1 K3 [{"id", "text"}]
        5 SETTABLEKS                       R0 R1 K1 ["id"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K0 ["Choices"]
       10 GETTABLE                         R2 R3 R0
       11 SETTABLEKS                       R2 R1 K2 ["text"]
       13 RETURN                           R1 1
       14 DUPTABLE                         R1 K3 [{"id", "text"}]
       15 SETTABLEKS                       R0 R1 K1 ["id"]
       17 GETTABLEKS                       R2 R0 K4 ["Name"]
       19 SETTABLEKS                       R2 R1 K2 ["text"]
       21 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Type"]
        3 FASTCALL2K                       STRING_SUB R1 K1 ; [+4]
        5 LOADK                            R2 K1 [6]
        6 GETIMPORT                        R0 K4 [string.sub]
        8 CALL                             R0 2 1
        9 LOADNIL                          R1
       10 GETIMPORT                        R2 K6 [pcall]
       12 NEWCLOSURE                       R3 P0
       13 CAPTURE                          REF R1
       14 CAPTURE                          VAL R0
       15 CALL                             R2 1 2
       16 JUMPIF                           R2 ; [+8]
       17 GETIMPORT                        R4 K8 [warn]
       19 MOVE                             R5 R3
       20 CALL                             R4 1 0
       21 NEWTABLE                         R4 0 0
       23 CLOSEUPVALS                      R1
       24 RETURN                           R4 1
       25 GETUPVAL                         R4 1
       26 GETTABLEKS                       R4 R4 K9 ["map"]
       28 GETUPVAL                         R5 1
       29 GETTABLEKS                       R5 R5 K10 ["filter"]
       31 NAMECALL                         R6 R1 K11 ["GetEnumItems"]
       33 CALL                             R6 1 1
       34 NEWCLOSURE                       R7 P1
       35 CAPTURE                          UPVAL U0
       36 CALL                             R5 2 1
       37 NEWCLOSURE                       R6 P2
       38 CAPTURE                          UPVAL U0
       39 CALL                             R4 2 -1
       40 CLOSEUPVALS                      R1
       41 RETURN                           R4 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["IsParameterOverridden"]
        3 JUMPIFNOT                        R1 ; [+4]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["PROPERTY_PARAMETER_OVERRIDDEN_WIDTH_UDIM"]
        7 RETURN                           R0 1
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K2 ["PROPERTY_WIDTH_UDIM"]
       11 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 NEWTABLE                         R3 0 2
        8 GETTABLEKS                       R4 R0 K1 ["Type"]
       10 GETTABLEKS                       R5 R0 K2 ["Choices"]
       12 SETLIST                          R3 R4 2 [1]
       14 CALL                             R1 2 1
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K0 ["useMemo"]
       18 NEWCLOSURE                       R3 P1
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U2
       21 NEWTABLE                         R4 0 1
       23 GETTABLEKS                       R5 R0 K3 ["IsParameterOverridden"]
       25 SETLIST                          R4 R5 1 [1]
       27 CALL                             R2 2 1
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R3 R3 K4 ["createElement"]
       31 GETUPVAL                         R4 3
       32 GETTABLEKS                       R4 R4 K5 ["View"]
       34 DUPTABLE                         R5 K9 [{"tag", "LayoutOrder", "testId"}]
       35 GETUPVAL                         R6 3
       36 GETTABLEKS                       R6 R6 K10 ["Hooks"]
       38 GETTABLEKS                       R6 R6 K11 ["useDefaultTags"]
       40 GETTABLEKS                       R7 R0 K12 ["tags"]
       42 LOADK                            R8 K13 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
       43 CALL                             R6 2 1
       44 SETTABLEKS                       R6 R5 K6 ["tag"]
       46 GETTABLEKS                       R6 R0 K7 ["LayoutOrder"]
       48 SETTABLEKS                       R6 R5 K7 ["LayoutOrder"]
       50 GETTABLEKS                       R6 R0 K8 ["testId"]
       52 SETTABLEKS                       R6 R5 K8 ["testId"]
       54 DUPTABLE                         R6 K17 [{"CompositorNodeInputLabel", "InputField", "PinChildren"}]
       55 GETUPVAL                         R7 0
       56 GETTABLEKS                       R7 R7 K4 ["createElement"]
       58 GETUPVAL                         R8 4
       59 DUPTABLE                         R9 K20 [{"tag", "Text", "LayoutOrder", "isDisabled"}]
       60 LOADK                            R10 K21 ["text-body-small text-align-x-left auto-xy fill text-truncate-split"]
       61 SETTABLEKS                       R10 R9 K6 ["tag"]
       63 GETTABLEKS                       R10 R0 K22 ["Label"]
       65 SETTABLEKS                       R10 R9 K18 ["Text"]
       67 LOADN                            R10 1
       68 SETTABLEKS                       R10 R9 K7 ["LayoutOrder"]
       70 GETTABLEKS                       R11 R0 K24 ["IsDisabled"]
       72 ORK                              R10 R11 K23 [False]
       73 SETTABLEKS                       R10 R9 K19 ["isDisabled"]
       75 CALL                             R7 2 1
       76 SETTABLEKS                       R7 R6 K14 ["CompositorNodeInputLabel"]
       78 GETUPVAL                         R7 0
       79 GETTABLEKS                       R7 R7 K4 ["createElement"]
       81 GETUPVAL                         R8 5
       82 DUPTABLE                         R9 K26 [{"IsParameterOverridden", "OnParameterOverrideRevert"}]
       83 GETTABLEKS                       R10 R0 K3 ["IsParameterOverridden"]
       85 SETTABLEKS                       R10 R9 K3 ["IsParameterOverridden"]
       87 GETTABLEKS                       R10 R0 K25 ["OnParameterOverrideRevert"]
       89 SETTABLEKS                       R10 R9 K25 ["OnParameterOverrideRevert"]
       91 GETUPVAL                         R10 0
       92 GETTABLEKS                       R10 R10 K4 ["createElement"]
       94 GETUPVAL                         R11 3
       95 GETTABLEKS                       R11 R11 K27 ["Dropdown"]
       97 GETTABLEKS                       R11 R11 K28 ["Root"]
       99 DUPTABLE                         R12 K35 [{"size", "width", "label", "items", "value", "onItemChanged", "LayoutOrder"}]
      100 GETUPVAL                         R13 3
      101 GETTABLEKS                       R13 R13 K36 ["Enums"]
      103 GETTABLEKS                       R13 R13 K37 ["InputSize"]
      105 GETTABLEKS                       R13 R13 K38 ["XSmall"]
      107 SETTABLEKS                       R13 R12 K29 ["size"]
      109 SETTABLEKS                       R2 R12 K30 ["width"]
      111 LOADK                            R13 K39 [""]
      112 SETTABLEKS                       R13 R12 K31 ["label"]
      114 SETTABLEKS                       R1 R12 K32 ["items"]
      116 GETTABLEKS                       R13 R0 K40 ["Value"]
      118 JUMPIF                           R13 ; [+2]
      119 GETTABLEKS                       R13 R0 K41 ["DefaultValue"]
      121 SETTABLEKS                       R13 R12 K33 ["value"]
      123 GETTABLEKS                       R13 R0 K42 ["OnChanged"]
      125 SETTABLEKS                       R13 R12 K34 ["onItemChanged"]
      127 LOADN                            R13 2
      128 SETTABLEKS                       R13 R12 K7 ["LayoutOrder"]
      130 CALL                             R10 2 -1
      131 CALL                             R7 -1 1
      132 SETTABLEKS                       R7 R6 K15 ["InputField"]
      134 GETUPVAL                         R7 0
      135 GETTABLEKS                       R7 R7 K4 ["createElement"]
      137 LOADK                            R8 K43 ["Folder"]
      138 NEWTABLE                         R9 0 0
      140 GETTABLEKS                       R10 R0 K44 ["children"]
      142 CALL                             R7 3 1
      143 SETTABLEKS                       R7 R6 K16 ["PinChildren"]
      145 CALL                             R3 3 -1
      146 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Components"]
       25 GETTABLEKS                       R4 R4 K10 ["NodeView"]
       27 GETTABLEKS                       R4 R4 K11 ["CompositorNodeProperty"]
       29 GETTABLEKS                       R4 R4 K12 ["InputPropertyField"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K9 ["Components"]
       36 GETTABLEKS                       R5 R5 K10 ["NodeView"]
       38 GETTABLEKS                       R5 R5 K11 ["CompositorNodeProperty"]
       40 GETTABLEKS                       R5 R5 K13 ["PropertyConstants"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K9 ["Components"]
       47 GETTABLEKS                       R6 R6 K10 ["NodeView"]
       49 GETTABLEKS                       R6 R6 K11 ["CompositorNodeProperty"]
       51 GETTABLEKS                       R6 R6 K14 ["PropertyLabel"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETTABLEKS                       R7 R0 K6 ["Parent"]
       58 GETTABLEKS                       R7 R7 K15 ["React"]
       60 CALL                             R6 1 1
       61 DUPCLOSURE                       R7 K16 [PROTO_5]
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R3
       68 RETURN                           R7 1
