PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Value"]
        3 JUMPIF                           R0 ; [+2]
        4 LOADK                            R0 K1 [""]
        5 RETURN                           R0 1
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["Value"]
        9 FASTCALL1                        TOSTRING R1 ; [+2]
       10 GETIMPORT                        R0 K3 [tostring]
       12 CALL                             R0 1 1
       13 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnChanged"]
        3 GETUPVAL                         R1 1
        4 NAMECALL                         R1 R1 K1 ["getValue"]
        6 CALL                             R1 1 -1
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

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
       13 GETTABLEKS                       R2 R2 K2 ["useBinding"]
       15 MOVE                             R3 R1
       16 CALL                             R2 1 2
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K3 ["useCallback"]
       20 NEWCLOSURE                       R5 P1
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R2
       23 NEWTABLE                         R6 0 2
       25 GETTABLEKS                       R7 R0 K4 ["OnChanged"]
       27 MOVE                             R8 R2
       28 SETLIST                          R6 R7 2 [1]
       30 CALL                             R4 2 1
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R5 R5 K5 ["createElement"]
       34 GETUPVAL                         R6 1
       35 GETTABLEKS                       R6 R6 K6 ["View"]
       37 DUPTABLE                         R7 K10 [{"tag", "LayoutOrder", "testId"}]
       38 GETUPVAL                         R8 1
       39 GETTABLEKS                       R8 R8 K11 ["Hooks"]
       41 GETTABLEKS                       R8 R8 K12 ["useDefaultTags"]
       43 GETTABLEKS                       R9 R0 K13 ["tags"]
       45 LOADK                            R10 K14 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
       46 CALL                             R8 2 1
       47 SETTABLEKS                       R8 R7 K7 ["tag"]
       49 GETTABLEKS                       R8 R0 K8 ["LayoutOrder"]
       51 SETTABLEKS                       R8 R7 K8 ["LayoutOrder"]
       53 GETTABLEKS                       R8 R0 K9 ["testId"]
       55 SETTABLEKS                       R8 R7 K9 ["testId"]
       57 DUPTABLE                         R8 K18 [{"CompositorNodeInputLabel", "Input", "PinChildren"}]
       58 GETUPVAL                         R10 2
       59 CALL                             R10 0 1
       60 JUMPIFNOT                        R10 ; [+8]
       61 GETTABLEKS                       R9 R0 K19 ["Label"]
       63 JUMPIFNOT                        R9 ; [+27]
       64 LOADB                            R9 0
       65 GETTABLEKS                       R10 R0 K19 ["Label"]
       67 JUMPIFEQKS                       R10 K20 [""] ; [+23]
       69 GETUPVAL                         R9 0
       70 GETTABLEKS                       R9 R9 K5 ["createElement"]
       72 GETUPVAL                         R10 3
       73 DUPTABLE                         R11 K24 [{["tag"], ["Text"], ["LayoutOrder"] = 1, ["isDisabled"]}]
       74 NEWTABLE                         R12 1 0
       76 LOADB                            R13 1
       77 SETTABLEKS                       R13 R12 K25 ["fill auto-xy text-body-small text-align-x-left text-truncate-split"]
       79 SETTABLEKS                       R12 R11 K7 ["tag"]
       81 GETTABLEKS                       R12 R0 K19 ["Label"]
       83 SETTABLEKS                       R12 R11 K21 ["Text"]
       85 GETTABLEKS                       R13 R0 K27 ["IsDisabled"]
       87 ORK                              R12 R13 K26 [False]
       88 SETTABLEKS                       R12 R11 K23 ["isDisabled"]
       90 CALL                             R9 2 1
       91 SETTABLEKS                       R9 R8 K15 ["CompositorNodeInputLabel"]
       93 GETUPVAL                         R9 0
       94 GETTABLEKS                       R9 R9 K5 ["createElement"]
       96 GETUPVAL                         R10 1
       97 GETTABLEKS                       R10 R10 K28 ["TextInput"]
       99 DUPTABLE                         R11 K38 [{["tag"] = "shrink", ["size"], ["variant"], ["width"], ["label"] = "", ["text"], ["isDisabled"], ["LayoutOrder"] = 2, ["onChanged"], ["onFocusLost"]}]
      100 GETUPVAL                         R12 1
      101 GETTABLEKS                       R12 R12 K39 ["Enums"]
      103 GETTABLEKS                       R12 R12 K40 ["InputSize"]
      105 GETTABLEKS                       R12 R12 K41 ["XSmall"]
      107 SETTABLEKS                       R12 R11 K30 ["size"]
      109 GETUPVAL                         R13 4
      110 JUMPIFNOT                        R13 ; [+8]
      111 GETUPVAL                         R12 1
      112 GETTABLEKS                       R12 R12 K39 ["Enums"]
      114 GETTABLEKS                       R12 R12 K42 ["InputVariant"]
      116 GETTABLEKS                       R12 R12 K43 ["Contrast"]
      118 JUMP                             ; [+1]
      119 LOADNIL                          R12
      120 SETTABLEKS                       R12 R11 K31 ["variant"]
      122 GETIMPORT                        R12 K46 [UDim.new]
      124 LOADN                            R13 0
      125 LOADN                            R14 90
      126 CALL                             R12 2 1
      127 SETTABLEKS                       R12 R11 K32 ["width"]
      129 GETTABLEKS                       R13 R0 K27 ["IsDisabled"]
      131 JUMPIFNOT                        R13 ; [+3]
      132 GETTABLEKS                       R12 R0 K1 ["Value"]
      134 JUMP                             ; [+3]
      135 NAMECALL                         R12 R2 K47 ["getValue"]
      137 CALL                             R12 1 1
      138 SETTABLEKS                       R12 R11 K34 ["text"]
      140 GETTABLEKS                       R12 R0 K48 ["IsParameterized"]
      142 JUMPIF                           R12 ; [+2]
      143 GETTABLEKS                       R12 R0 K27 ["IsDisabled"]
      145 SETTABLEKS                       R12 R11 K23 ["isDisabled"]
      147 SETTABLEKS                       R3 R11 K36 ["onChanged"]
      149 SETTABLEKS                       R4 R11 K37 ["onFocusLost"]
      151 CALL                             R9 2 1
      152 SETTABLEKS                       R9 R8 K16 ["Input"]
      154 GETUPVAL                         R9 0
      155 GETTABLEKS                       R9 R9 K5 ["createElement"]
      157 LOADK                            R10 K49 ["Folder"]
      158 NEWTABLE                         R11 0 0
      160 GETTABLEKS                       R12 R0 K50 ["children"]
      162 CALL                             R9 3 1
      163 SETTABLEKS                       R9 R8 K17 ["PinChildren"]
      165 CALL                             R5 3 -1
      166 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 GETTABLEKS                       R2 R2 K7 ["FFlagAnimGraphUI_StyleTouches"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Components"]
       25 GETTABLEKS                       R4 R4 K11 ["CompositorNodeProperty"]
       27 GETTABLEKS                       R4 R4 K12 ["PropertyLabel"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K8 ["Parent"]
       34 GETTABLEKS                       R5 R5 K13 ["React"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K6 ["Flags"]
       41 GETTABLEKS                       R6 R6 K14 ["getFFlagAnimGraphUIParameterPaneAlignment"]
       43 CALL                             R5 1 1
       44 DUPCLOSURE                       R6 K15 [PROTO_2]
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R1
       50 RETURN                           R6 1
