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
       55 GETUPVAL                         R8 4
       56 CALL                             R8 0 1
       57 JUMPIFNOT                        R8 ; [+8]
       58 GETTABLEKS                       R7 R0 K18 ["Label"]
       60 JUMPIFNOT                        R7 ; [+20]
       61 LOADB                            R7 0
       62 GETTABLEKS                       R8 R0 K18 ["Label"]
       64 JUMPIFEQKS                       R8 K19 [""] ; [+16]
       66 GETUPVAL                         R7 0
       67 GETTABLEKS                       R7 R7 K4 ["createElement"]
       69 GETUPVAL                         R8 5
       70 DUPTABLE                         R9 K24 [{["tag"] = "fill auto-xy text-body-small text-align-x-left text-truncate-split", ["Text"], ["LayoutOrder"] = 1, ["isDisabled"]}]
       71 GETTABLEKS                       R10 R0 K18 ["Label"]
       73 SETTABLEKS                       R10 R9 K21 ["Text"]
       75 GETTABLEKS                       R11 R0 K26 ["IsDisabled"]
       77 ORK                              R10 R11 K25 [False]
       78 SETTABLEKS                       R10 R9 K23 ["isDisabled"]
       80 CALL                             R7 2 1
       81 SETTABLEKS                       R7 R6 K14 ["CompositorNodeInputLabel"]
       83 GETUPVAL                         R7 0
       84 GETTABLEKS                       R7 R7 K4 ["createElement"]
       86 GETUPVAL                         R8 6
       87 DUPTABLE                         R9 K28 [{"IsParameterOverridden", "OnParameterOverrideRevert"}]
       88 GETTABLEKS                       R10 R0 K3 ["IsParameterOverridden"]
       90 SETTABLEKS                       R10 R9 K3 ["IsParameterOverridden"]
       92 GETTABLEKS                       R10 R0 K27 ["OnParameterOverrideRevert"]
       94 SETTABLEKS                       R10 R9 K27 ["OnParameterOverrideRevert"]
       96 GETUPVAL                         R10 0
       97 GETTABLEKS                       R10 R10 K4 ["createElement"]
       99 GETUPVAL                         R11 3
      100 GETTABLEKS                       R11 R11 K29 ["Dropdown"]
      102 GETTABLEKS                       R11 R11 K30 ["Root"]
      104 DUPTABLE                         R12 K39 [{["size"], ["variant"], ["width"], ["label"] = "", ["items"], ["value"], ["onItemChanged"], ["LayoutOrder"] = 2}]
      105 GETUPVAL                         R13 3
      106 GETTABLEKS                       R13 R13 K40 ["Enums"]
      108 GETTABLEKS                       R13 R13 K41 ["InputSize"]
      110 GETTABLEKS                       R13 R13 K42 ["XSmall"]
      112 SETTABLEKS                       R13 R12 K31 ["size"]
      114 GETUPVAL                         R14 7
      115 JUMPIFNOT                        R14 ; [+8]
      116 GETUPVAL                         R13 3
      117 GETTABLEKS                       R13 R13 K40 ["Enums"]
      119 GETTABLEKS                       R13 R13 K43 ["InputVariant"]
      121 GETTABLEKS                       R13 R13 K44 ["Contrast"]
      123 JUMP                             ; [+1]
      124 LOADNIL                          R13
      125 SETTABLEKS                       R13 R12 K32 ["variant"]
      127 SETTABLEKS                       R2 R12 K33 ["width"]
      129 SETTABLEKS                       R1 R12 K35 ["items"]
      131 GETTABLEKS                       R13 R0 K45 ["Value"]
      133 JUMPIF                           R13 ; [+2]
      134 GETTABLEKS                       R13 R0 K46 ["DefaultValue"]
      136 SETTABLEKS                       R13 R12 K36 ["value"]
      138 GETTABLEKS                       R13 R0 K47 ["OnChanged"]
      140 SETTABLEKS                       R13 R12 K37 ["onItemChanged"]
      142 CALL                             R10 2 -1
      143 CALL                             R7 -1 1
      144 SETTABLEKS                       R7 R6 K15 ["InputField"]
      146 GETUPVAL                         R7 0
      147 GETTABLEKS                       R7 R7 K4 ["createElement"]
      149 LOADK                            R8 K48 ["Folder"]
      150 NEWTABLE                         R9 0 0
      152 GETTABLEKS                       R10 R0 K49 ["children"]
      154 CALL                             R7 3 1
      155 SETTABLEKS                       R7 R6 K16 ["PinChildren"]
      157 CALL                             R3 3 -1
      158 RETURN                           R3 -1

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
       16 GETTABLEKS                       R3 R0 K8 ["Flags"]
       18 GETTABLEKS                       R3 R3 K9 ["FFlagAnimGraphUI_StyleTouches"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Components"]
       32 GETTABLEKS                       R5 R5 K12 ["CompositorNodeProperty"]
       34 GETTABLEKS                       R5 R5 K13 ["InputPropertyField"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K11 ["Components"]
       41 GETTABLEKS                       R6 R6 K12 ["CompositorNodeProperty"]
       43 GETTABLEKS                       R6 R6 K14 ["PropertyConstants"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K11 ["Components"]
       50 GETTABLEKS                       R7 R7 K12 ["CompositorNodeProperty"]
       52 GETTABLEKS                       R7 R7 K15 ["PropertyLabel"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K6 ["Parent"]
       59 GETTABLEKS                       R8 R8 K16 ["React"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K8 ["Flags"]
       66 GETTABLEKS                       R9 R9 K17 ["getFFlagAnimGraphUIParameterPaneAlignment"]
       68 CALL                             R8 1 1
       69 DUPCLOSURE                       R9 K18 [PROTO_5]
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R2
       78 RETURN                           R9 1
