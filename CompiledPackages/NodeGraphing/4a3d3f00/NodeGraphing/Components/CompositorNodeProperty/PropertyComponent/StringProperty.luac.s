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
       45 GETUPVAL                         R11 2
       46 CALL                             R11 0 1
       47 JUMPIFNOT                        R11 ; [+2]
       48 LOADK                            R10 K14 ["row auto-y gap-small size-full-700 align-y-center"]
       49 JUMP                             ; [+1]
       50 LOADK                            R10 K15 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
       51 CALL                             R8 2 1
       52 SETTABLEKS                       R8 R7 K7 ["tag"]
       54 GETTABLEKS                       R8 R0 K8 ["LayoutOrder"]
       56 SETTABLEKS                       R8 R7 K8 ["LayoutOrder"]
       58 GETTABLEKS                       R8 R0 K9 ["testId"]
       60 SETTABLEKS                       R8 R7 K9 ["testId"]
       62 DUPTABLE                         R8 K19 [{"CompositorNodeInputLabel", "Input", "PinChildren"}]
       63 GETTABLEKS                       R9 R0 K20 ["Label"]
       65 JUMPIFNOT                        R9 ; [+36]
       66 LOADB                            R9 0
       67 GETTABLEKS                       R10 R0 K20 ["Label"]
       69 JUMPIFEQKS                       R10 K21 [""] ; [+32]
       71 GETUPVAL                         R9 0
       72 GETTABLEKS                       R9 R9 K5 ["createElement"]
       74 GETUPVAL                         R10 3
       75 DUPTABLE                         R11 K25 [{["tag"], ["Text"], ["LayoutOrder"] = 1, ["isDisabled"]}]
       76 NEWTABLE                         R12 4 0
       78 LOADB                            R13 1
       79 SETTABLEKS                       R13 R12 K26 ["fill text-body-small text-align-x-left text-truncate-split"]
       81 GETUPVAL                         R13 2
       82 CALL                             R13 0 1
       83 SETTABLEKS                       R13 R12 K27 ["auto-y"]
       85 GETUPVAL                         R14 2
       86 CALL                             R14 0 1
       87 NOT                              R13 R14
       88 SETTABLEKS                       R13 R12 K28 ["auto-xy"]
       90 SETTABLEKS                       R12 R11 K7 ["tag"]
       92 GETTABLEKS                       R12 R0 K20 ["Label"]
       94 SETTABLEKS                       R12 R11 K22 ["Text"]
       96 GETTABLEKS                       R13 R0 K30 ["IsDisabled"]
       98 ORK                              R12 R13 K29 [False]
       99 SETTABLEKS                       R12 R11 K24 ["isDisabled"]
      101 CALL                             R9 2 1
      102 SETTABLEKS                       R9 R8 K16 ["CompositorNodeInputLabel"]
      104 GETUPVAL                         R10 2
      105 CALL                             R10 0 1
      106 JUMPIFNOT                        R10 ; [+71]
      107 GETUPVAL                         R9 0
      108 GETTABLEKS                       R9 R9 K5 ["createElement"]
      110 GETUPVAL                         R10 1
      111 GETTABLEKS                       R10 R10 K6 ["View"]
      113 DUPTABLE                         R11 K34 [{["tag"] = "fill row items-stretch align-y-center auto-y", ["testId"] = "property-field-cell", ["LayoutOrder"] = 2}]
      114 DUPTABLE                         R12 K36 [{"Control"}]
      115 GETUPVAL                         R13 0
      116 GETTABLEKS                       R13 R13 K5 ["createElement"]
      118 GETUPVAL                         R14 1
      119 GETTABLEKS                       R14 R14 K37 ["TextInput"]
      121 DUPTABLE                         R15 K45 [{["size"], ["variant"], ["width"], ["label"] = "", ["text"], ["isDisabled"], ["onChanged"], ["onFocusLost"]}]
      122 GETUPVAL                         R16 1
      123 GETTABLEKS                       R16 R16 K46 ["Enums"]
      125 GETTABLEKS                       R16 R16 K47 ["InputSize"]
      127 GETTABLEKS                       R16 R16 K48 ["XSmall"]
      129 SETTABLEKS                       R16 R15 K38 ["size"]
      131 GETUPVAL                         R17 4
      132 JUMPIFNOT                        R17 ; [+8]
      133 GETUPVAL                         R16 1
      134 GETTABLEKS                       R16 R16 K46 ["Enums"]
      136 GETTABLEKS                       R16 R16 K49 ["InputVariant"]
      138 GETTABLEKS                       R16 R16 K50 ["Contrast"]
      140 JUMP                             ; [+1]
      141 LOADNIL                          R16
      142 SETTABLEKS                       R16 R15 K39 ["variant"]
      144 GETIMPORT                        R16 K53 [UDim.new]
      146 LOADN                            R17 1
      147 LOADN                            R18 0
      148 CALL                             R16 2 1
      149 SETTABLEKS                       R16 R15 K40 ["width"]
      151 GETTABLEKS                       R17 R0 K30 ["IsDisabled"]
      153 JUMPIFNOT                        R17 ; [+3]
      154 GETTABLEKS                       R16 R0 K1 ["Value"]
      156 JUMP                             ; [+3]
      157 NAMECALL                         R16 R2 K54 ["getValue"]
      159 CALL                             R16 1 1
      160 SETTABLEKS                       R16 R15 K42 ["text"]
      162 GETTABLEKS                       R16 R0 K55 ["IsParameterized"]
      164 JUMPIF                           R16 ; [+2]
      165 GETTABLEKS                       R16 R0 K30 ["IsDisabled"]
      167 SETTABLEKS                       R16 R15 K24 ["isDisabled"]
      169 SETTABLEKS                       R3 R15 K43 ["onChanged"]
      171 SETTABLEKS                       R4 R15 K44 ["onFocusLost"]
      173 CALL                             R13 2 1
      174 SETTABLEKS                       R13 R12 K35 ["Control"]
      176 CALL                             R9 3 1
      177 JUMP                             ; [+59]
      178 GETUPVAL                         R9 0
      179 GETTABLEKS                       R9 R9 K5 ["createElement"]
      181 GETUPVAL                         R10 1
      182 GETTABLEKS                       R10 R10 K37 ["TextInput"]
      184 DUPTABLE                         R11 K57 [{["tag"] = "shrink", ["size"], ["variant"], ["width"], ["label"] = "", ["text"], ["isDisabled"], ["LayoutOrder"] = 2, ["onChanged"], ["onFocusLost"]}]
      185 GETUPVAL                         R12 1
      186 GETTABLEKS                       R12 R12 K46 ["Enums"]
      188 GETTABLEKS                       R12 R12 K47 ["InputSize"]
      190 GETTABLEKS                       R12 R12 K48 ["XSmall"]
      192 SETTABLEKS                       R12 R11 K38 ["size"]
      194 GETUPVAL                         R13 4
      195 JUMPIFNOT                        R13 ; [+8]
      196 GETUPVAL                         R12 1
      197 GETTABLEKS                       R12 R12 K46 ["Enums"]
      199 GETTABLEKS                       R12 R12 K49 ["InputVariant"]
      201 GETTABLEKS                       R12 R12 K50 ["Contrast"]
      203 JUMP                             ; [+1]
      204 LOADNIL                          R12
      205 SETTABLEKS                       R12 R11 K39 ["variant"]
      207 GETIMPORT                        R12 K53 [UDim.new]
      209 LOADN                            R13 0
      210 LOADN                            R14 90
      211 CALL                             R12 2 1
      212 SETTABLEKS                       R12 R11 K40 ["width"]
      214 GETTABLEKS                       R13 R0 K30 ["IsDisabled"]
      216 JUMPIFNOT                        R13 ; [+3]
      217 GETTABLEKS                       R12 R0 K1 ["Value"]
      219 JUMP                             ; [+3]
      220 NAMECALL                         R12 R2 K54 ["getValue"]
      222 CALL                             R12 1 1
      223 SETTABLEKS                       R12 R11 K42 ["text"]
      225 GETTABLEKS                       R12 R0 K55 ["IsParameterized"]
      227 JUMPIF                           R12 ; [+2]
      228 GETTABLEKS                       R12 R0 K30 ["IsDisabled"]
      230 SETTABLEKS                       R12 R11 K24 ["isDisabled"]
      232 SETTABLEKS                       R3 R11 K43 ["onChanged"]
      234 SETTABLEKS                       R4 R11 K44 ["onFocusLost"]
      236 CALL                             R9 2 1
      237 SETTABLEKS                       R9 R8 K17 ["Input"]
      239 GETUPVAL                         R9 0
      240 GETTABLEKS                       R9 R9 K5 ["createElement"]
      242 LOADK                            R10 K58 ["Folder"]
      243 NEWTABLE                         R11 0 0
      245 GETTABLEKS                       R12 R0 K59 ["children"]
      247 CALL                             R9 3 1
      248 SETTABLEKS                       R9 R8 K18 ["PinChildren"]
      250 CALL                             R5 3 -1
      251 RETURN                           R5 -1

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
       41 GETTABLEKS                       R6 R6 K14 ["getFFlagAnimGraphUINodeFieldLayout"]
       43 CALL                             R5 1 1
       44 DUPCLOSURE                       R6 K15 [PROTO_2]
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R1
       50 RETURN                           R6 1
