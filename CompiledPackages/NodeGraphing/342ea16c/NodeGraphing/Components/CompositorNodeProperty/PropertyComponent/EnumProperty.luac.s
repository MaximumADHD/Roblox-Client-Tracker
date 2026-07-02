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
       59 DUPTABLE                         R9 K22 [{["tag"] = "fill auto-xy text-body-small text-align-x-left text-truncate-split", ["Text"], ["LayoutOrder"] = 1, ["isDisabled"]}]
       60 GETTABLEKS                       R10 R0 K23 ["Label"]
       62 SETTABLEKS                       R10 R9 K19 ["Text"]
       64 GETTABLEKS                       R11 R0 K25 ["IsDisabled"]
       66 ORK                              R10 R11 K24 [False]
       67 SETTABLEKS                       R10 R9 K21 ["isDisabled"]
       69 CALL                             R7 2 1
       70 SETTABLEKS                       R7 R6 K14 ["CompositorNodeInputLabel"]
       72 GETUPVAL                         R7 0
       73 GETTABLEKS                       R7 R7 K4 ["createElement"]
       75 GETUPVAL                         R8 5
       76 DUPTABLE                         R9 K27 [{"IsParameterOverridden", "OnParameterOverrideRevert"}]
       77 GETTABLEKS                       R10 R0 K3 ["IsParameterOverridden"]
       79 SETTABLEKS                       R10 R9 K3 ["IsParameterOverridden"]
       81 GETTABLEKS                       R10 R0 K26 ["OnParameterOverrideRevert"]
       83 SETTABLEKS                       R10 R9 K26 ["OnParameterOverrideRevert"]
       85 GETUPVAL                         R10 0
       86 GETTABLEKS                       R10 R10 K4 ["createElement"]
       88 GETUPVAL                         R11 3
       89 GETTABLEKS                       R11 R11 K28 ["Dropdown"]
       91 GETTABLEKS                       R11 R11 K29 ["Root"]
       93 DUPTABLE                         R12 K38 [{["size"], ["width"], ["label"] = "", ["items"], ["value"], ["onItemChanged"], ["LayoutOrder"] = 2}]
       94 GETUPVAL                         R13 3
       95 GETTABLEKS                       R13 R13 K39 ["Enums"]
       97 GETTABLEKS                       R13 R13 K40 ["InputSize"]
       99 GETTABLEKS                       R13 R13 K41 ["XSmall"]
      101 SETTABLEKS                       R13 R12 K30 ["size"]
      103 SETTABLEKS                       R2 R12 K31 ["width"]
      105 SETTABLEKS                       R1 R12 K34 ["items"]
      107 GETTABLEKS                       R13 R0 K42 ["Value"]
      109 JUMPIF                           R13 ; [+2]
      110 GETTABLEKS                       R13 R0 K43 ["DefaultValue"]
      112 SETTABLEKS                       R13 R12 K35 ["value"]
      114 GETTABLEKS                       R13 R0 K44 ["OnChanged"]
      116 SETTABLEKS                       R13 R12 K36 ["onItemChanged"]
      118 CALL                             R10 2 -1
      119 CALL                             R7 -1 1
      120 SETTABLEKS                       R7 R6 K15 ["InputField"]
      122 GETUPVAL                         R7 0
      123 GETTABLEKS                       R7 R7 K4 ["createElement"]
      125 LOADK                            R8 K45 ["Folder"]
      126 NEWTABLE                         R9 0 0
      128 GETTABLEKS                       R10 R0 K46 ["children"]
      130 CALL                             R7 3 1
      131 SETTABLEKS                       R7 R6 K16 ["PinChildren"]
      133 CALL                             R3 3 -1
      134 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
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
       25 GETTABLEKS                       R4 R4 K10 ["CompositorNodeProperty"]
       27 GETTABLEKS                       R4 R4 K11 ["InputPropertyField"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Components"]
       34 GETTABLEKS                       R5 R5 K10 ["CompositorNodeProperty"]
       36 GETTABLEKS                       R5 R5 K12 ["PropertyConstants"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K9 ["Components"]
       43 GETTABLEKS                       R6 R6 K10 ["CompositorNodeProperty"]
       45 GETTABLEKS                       R6 R6 K13 ["PropertyLabel"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K6 ["Parent"]
       52 GETTABLEKS                       R7 R7 K14 ["React"]
       54 CALL                             R6 1 1
       55 DUPCLOSURE                       R7 K15 [PROTO_5]
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R3
       62 RETURN                           R7 1
