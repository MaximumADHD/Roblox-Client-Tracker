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
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+6]
        3 GETIMPORT                        R0 K2 [UDim.new]
        5 LOADN                            R1 1
        6 LOADN                            R2 0
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K3 ["IsParameterOverridden"]
       12 JUMPIFNOT                        R1 ; [+4]
       13 GETUPVAL                         R0 2
       14 GETTABLEKS                       R0 R0 K4 ["PROPERTY_PARAMETER_OVERRIDDEN_WIDTH_UDIM"]
       16 RETURN                           R0 1
       17 GETUPVAL                         R0 2
       18 GETTABLEKS                       R0 R0 K5 ["PROPERTY_WIDTH_UDIM"]
       20 RETURN                           R0 1

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
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U3
       22 NEWTABLE                         R4 0 1
       24 GETTABLEKS                       R5 R0 K3 ["IsParameterOverridden"]
       26 SETLIST                          R4 R5 1 [1]
       28 CALL                             R2 2 1
       29 GETUPVAL                         R3 0
       30 GETTABLEKS                       R3 R3 K4 ["createElement"]
       32 GETUPVAL                         R4 4
       33 GETTABLEKS                       R4 R4 K5 ["Dropdown"]
       35 GETTABLEKS                       R4 R4 K6 ["Root"]
       37 DUPTABLE                         R5 K17 [{["size"], ["variant"], ["width"], ["label"] = "", ["items"], ["value"], ["onItemChanged"], ["LayoutOrder"] = 2}]
       38 GETUPVAL                         R6 4
       39 GETTABLEKS                       R6 R6 K18 ["Enums"]
       41 GETTABLEKS                       R6 R6 K19 ["InputSize"]
       43 GETTABLEKS                       R6 R6 K20 ["XSmall"]
       45 SETTABLEKS                       R6 R5 K7 ["size"]
       47 GETUPVAL                         R7 5
       48 JUMPIFNOT                        R7 ; [+8]
       49 GETUPVAL                         R6 4
       50 GETTABLEKS                       R6 R6 K18 ["Enums"]
       52 GETTABLEKS                       R6 R6 K21 ["InputVariant"]
       54 GETTABLEKS                       R6 R6 K22 ["Contrast"]
       56 JUMP                             ; [+1]
       57 LOADNIL                          R6
       58 SETTABLEKS                       R6 R5 K8 ["variant"]
       60 SETTABLEKS                       R2 R5 K9 ["width"]
       62 SETTABLEKS                       R1 R5 K12 ["items"]
       64 GETTABLEKS                       R6 R0 K23 ["Value"]
       66 JUMPIF                           R6 ; [+2]
       67 GETTABLEKS                       R6 R0 K24 ["DefaultValue"]
       69 SETTABLEKS                       R6 R5 K13 ["value"]
       71 GETTABLEKS                       R6 R0 K25 ["OnChanged"]
       73 SETTABLEKS                       R6 R5 K14 ["onItemChanged"]
       75 CALL                             R3 2 1
       76 GETUPVAL                         R4 2
       77 CALL                             R4 0 1
       78 JUMPIFNOT                        R4 ; [+12]
       79 GETUPVAL                         R4 0
       80 GETTABLEKS                       R4 R4 K4 ["createElement"]
       82 GETUPVAL                         R5 4
       83 GETTABLEKS                       R5 R5 K26 ["View"]
       85 DUPTABLE                         R6 K29 [{["tag"] = "fill row items-stretch align-y-center auto-y", ["LayoutOrder"] = 2}]
       86 DUPTABLE                         R7 K31 [{"Input"}]
       87 SETTABLEKS                       R3 R7 K30 ["Input"]
       89 CALL                             R4 3 1
       90 MOVE                             R3 R4
       91 GETUPVAL                         R4 0
       92 GETTABLEKS                       R4 R4 K4 ["createElement"]
       94 GETUPVAL                         R5 4
       95 GETTABLEKS                       R5 R5 K26 ["View"]
       97 DUPTABLE                         R6 K33 [{"tag", "LayoutOrder", "testId"}]
       98 GETUPVAL                         R7 4
       99 GETTABLEKS                       R7 R7 K34 ["Hooks"]
      101 GETTABLEKS                       R7 R7 K35 ["useDefaultTags"]
      103 GETTABLEKS                       R8 R0 K36 ["tags"]
      105 GETUPVAL                         R10 2
      106 CALL                             R10 0 1
      107 JUMPIFNOT                        R10 ; [+2]
      108 LOADK                            R9 K37 ["row auto-y gap-small size-full-700 align-y-center"]
      109 JUMP                             ; [+1]
      110 LOADK                            R9 K38 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
      111 CALL                             R7 2 1
      112 SETTABLEKS                       R7 R6 K27 ["tag"]
      114 GETTABLEKS                       R7 R0 K15 ["LayoutOrder"]
      116 SETTABLEKS                       R7 R6 K15 ["LayoutOrder"]
      118 GETTABLEKS                       R7 R0 K32 ["testId"]
      120 SETTABLEKS                       R7 R6 K32 ["testId"]
      122 DUPTABLE                         R7 K42 [{"CompositorNodeInputLabel", "InputField", "PinChildren"}]
      123 GETUPVAL                         R9 6
      124 CALL                             R9 0 1
      125 JUMPIFNOT                        R9 ; [+8]
      126 GETTABLEKS                       R8 R0 K43 ["Label"]
      128 JUMPIFNOT                        R8 ; [+36]
      129 LOADB                            R8 0
      130 GETTABLEKS                       R9 R0 K43 ["Label"]
      132 JUMPIFEQKS                       R9 K11 [""] ; [+32]
      134 GETUPVAL                         R8 0
      135 GETTABLEKS                       R8 R8 K4 ["createElement"]
      137 GETUPVAL                         R9 7
      138 DUPTABLE                         R10 K47 [{["tag"], ["Text"], ["LayoutOrder"] = 1, ["isDisabled"]}]
      139 NEWTABLE                         R11 4 0
      141 LOADB                            R12 1
      142 SETTABLEKS                       R12 R11 K48 ["fill text-body-small text-align-x-left text-truncate-split"]
      144 GETUPVAL                         R12 2
      145 CALL                             R12 0 1
      146 SETTABLEKS                       R12 R11 K49 ["auto-y"]
      148 GETUPVAL                         R13 2
      149 CALL                             R13 0 1
      150 NOT                              R12 R13
      151 SETTABLEKS                       R12 R11 K50 ["auto-xy"]
      153 SETTABLEKS                       R11 R10 K27 ["tag"]
      155 GETTABLEKS                       R11 R0 K43 ["Label"]
      157 SETTABLEKS                       R11 R10 K44 ["Text"]
      159 GETTABLEKS                       R12 R0 K52 ["IsDisabled"]
      161 ORK                              R11 R12 K51 [False]
      162 SETTABLEKS                       R11 R10 K46 ["isDisabled"]
      164 CALL                             R8 2 1
      165 SETTABLEKS                       R8 R7 K39 ["CompositorNodeInputLabel"]
      167 GETUPVAL                         R8 0
      168 GETTABLEKS                       R8 R8 K4 ["createElement"]
      170 GETUPVAL                         R9 8
      171 DUPTABLE                         R10 K54 [{"IsParameterOverridden", "OnParameterOverrideRevert"}]
      172 GETTABLEKS                       R11 R0 K3 ["IsParameterOverridden"]
      174 SETTABLEKS                       R11 R10 K3 ["IsParameterOverridden"]
      176 GETTABLEKS                       R11 R0 K53 ["OnParameterOverrideRevert"]
      178 SETTABLEKS                       R11 R10 K53 ["OnParameterOverrideRevert"]
      180 MOVE                             R11 R3
      181 CALL                             R8 3 1
      182 SETTABLEKS                       R8 R7 K40 ["InputField"]
      184 GETUPVAL                         R8 0
      185 GETTABLEKS                       R8 R8 K4 ["createElement"]
      187 LOADK                            R9 K55 ["Folder"]
      188 NEWTABLE                         R10 0 0
      190 GETTABLEKS                       R11 R0 K56 ["children"]
      192 CALL                             R8 3 1
      193 SETTABLEKS                       R8 R7 K41 ["PinChildren"]
      195 CALL                             R4 3 -1
      196 RETURN                           R4 -1

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
       66 GETTABLEKS                       R9 R9 K17 ["getFFlagAnimGraphUINodeFieldLayout"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K8 ["Flags"]
       73 GETTABLEKS                       R10 R10 K18 ["getFFlagAnimGraphUIParameterPaneAlignment"]
       75 CALL                             R9 1 1
       76 DUPCLOSURE                       R10 K19 [PROTO_5]
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R9
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R4
       86 RETURN                           R10 1
