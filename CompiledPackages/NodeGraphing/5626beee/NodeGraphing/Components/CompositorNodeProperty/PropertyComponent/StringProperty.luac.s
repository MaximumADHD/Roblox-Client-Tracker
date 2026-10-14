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
       63 GETUPVAL                         R10 3
       64 CALL                             R10 0 1
       65 JUMPIFNOT                        R10 ; [+8]
       66 GETTABLEKS                       R9 R0 K20 ["Label"]
       68 JUMPIFNOT                        R9 ; [+36]
       69 LOADB                            R9 0
       70 GETTABLEKS                       R10 R0 K20 ["Label"]
       72 JUMPIFEQKS                       R10 K21 [""] ; [+32]
       74 GETUPVAL                         R9 0
       75 GETTABLEKS                       R9 R9 K5 ["createElement"]
       77 GETUPVAL                         R10 4
       78 DUPTABLE                         R11 K25 [{["tag"], ["Text"], ["LayoutOrder"] = 1, ["isDisabled"]}]
       79 NEWTABLE                         R12 4 0
       81 LOADB                            R13 1
       82 SETTABLEKS                       R13 R12 K26 ["fill text-body-small text-align-x-left text-truncate-split"]
       84 GETUPVAL                         R13 2
       85 CALL                             R13 0 1
       86 SETTABLEKS                       R13 R12 K27 ["auto-y"]
       88 GETUPVAL                         R14 2
       89 CALL                             R14 0 1
       90 NOT                              R13 R14
       91 SETTABLEKS                       R13 R12 K28 ["auto-xy"]
       93 SETTABLEKS                       R12 R11 K7 ["tag"]
       95 GETTABLEKS                       R12 R0 K20 ["Label"]
       97 SETTABLEKS                       R12 R11 K22 ["Text"]
       99 GETTABLEKS                       R13 R0 K30 ["IsDisabled"]
      101 ORK                              R12 R13 K29 [False]
      102 SETTABLEKS                       R12 R11 K24 ["isDisabled"]
      104 CALL                             R9 2 1
      105 SETTABLEKS                       R9 R8 K16 ["CompositorNodeInputLabel"]
      107 GETUPVAL                         R10 2
      108 CALL                             R10 0 1
      109 JUMPIFNOT                        R10 ; [+71]
      110 GETUPVAL                         R9 0
      111 GETTABLEKS                       R9 R9 K5 ["createElement"]
      113 GETUPVAL                         R10 1
      114 GETTABLEKS                       R10 R10 K6 ["View"]
      116 DUPTABLE                         R11 K34 [{["tag"] = "fill row items-stretch align-y-center auto-y", ["testId"] = "property-field-cell", ["LayoutOrder"] = 2}]
      117 DUPTABLE                         R12 K36 [{"Control"}]
      118 GETUPVAL                         R13 0
      119 GETTABLEKS                       R13 R13 K5 ["createElement"]
      121 GETUPVAL                         R14 1
      122 GETTABLEKS                       R14 R14 K37 ["TextInput"]
      124 DUPTABLE                         R15 K45 [{["size"], ["variant"], ["width"], ["label"] = "", ["text"], ["isDisabled"], ["onChanged"], ["onFocusLost"]}]
      125 GETUPVAL                         R16 1
      126 GETTABLEKS                       R16 R16 K46 ["Enums"]
      128 GETTABLEKS                       R16 R16 K47 ["InputSize"]
      130 GETTABLEKS                       R16 R16 K48 ["XSmall"]
      132 SETTABLEKS                       R16 R15 K38 ["size"]
      134 GETUPVAL                         R17 5
      135 JUMPIFNOT                        R17 ; [+8]
      136 GETUPVAL                         R16 1
      137 GETTABLEKS                       R16 R16 K46 ["Enums"]
      139 GETTABLEKS                       R16 R16 K49 ["InputVariant"]
      141 GETTABLEKS                       R16 R16 K50 ["Contrast"]
      143 JUMP                             ; [+1]
      144 LOADNIL                          R16
      145 SETTABLEKS                       R16 R15 K39 ["variant"]
      147 GETIMPORT                        R16 K53 [UDim.new]
      149 LOADN                            R17 1
      150 LOADN                            R18 0
      151 CALL                             R16 2 1
      152 SETTABLEKS                       R16 R15 K40 ["width"]
      154 GETTABLEKS                       R17 R0 K30 ["IsDisabled"]
      156 JUMPIFNOT                        R17 ; [+3]
      157 GETTABLEKS                       R16 R0 K1 ["Value"]
      159 JUMP                             ; [+3]
      160 NAMECALL                         R16 R2 K54 ["getValue"]
      162 CALL                             R16 1 1
      163 SETTABLEKS                       R16 R15 K42 ["text"]
      165 GETTABLEKS                       R16 R0 K55 ["IsParameterized"]
      167 JUMPIF                           R16 ; [+2]
      168 GETTABLEKS                       R16 R0 K30 ["IsDisabled"]
      170 SETTABLEKS                       R16 R15 K24 ["isDisabled"]
      172 SETTABLEKS                       R3 R15 K43 ["onChanged"]
      174 SETTABLEKS                       R4 R15 K44 ["onFocusLost"]
      176 CALL                             R13 2 1
      177 SETTABLEKS                       R13 R12 K35 ["Control"]
      179 CALL                             R9 3 1
      180 JUMP                             ; [+59]
      181 GETUPVAL                         R9 0
      182 GETTABLEKS                       R9 R9 K5 ["createElement"]
      184 GETUPVAL                         R10 1
      185 GETTABLEKS                       R10 R10 K37 ["TextInput"]
      187 DUPTABLE                         R11 K57 [{["tag"] = "shrink", ["size"], ["variant"], ["width"], ["label"] = "", ["text"], ["isDisabled"], ["LayoutOrder"] = 2, ["onChanged"], ["onFocusLost"]}]
      188 GETUPVAL                         R12 1
      189 GETTABLEKS                       R12 R12 K46 ["Enums"]
      191 GETTABLEKS                       R12 R12 K47 ["InputSize"]
      193 GETTABLEKS                       R12 R12 K48 ["XSmall"]
      195 SETTABLEKS                       R12 R11 K38 ["size"]
      197 GETUPVAL                         R13 5
      198 JUMPIFNOT                        R13 ; [+8]
      199 GETUPVAL                         R12 1
      200 GETTABLEKS                       R12 R12 K46 ["Enums"]
      202 GETTABLEKS                       R12 R12 K49 ["InputVariant"]
      204 GETTABLEKS                       R12 R12 K50 ["Contrast"]
      206 JUMP                             ; [+1]
      207 LOADNIL                          R12
      208 SETTABLEKS                       R12 R11 K39 ["variant"]
      210 GETIMPORT                        R12 K53 [UDim.new]
      212 LOADN                            R13 0
      213 LOADN                            R14 90
      214 CALL                             R12 2 1
      215 SETTABLEKS                       R12 R11 K40 ["width"]
      217 GETTABLEKS                       R13 R0 K30 ["IsDisabled"]
      219 JUMPIFNOT                        R13 ; [+3]
      220 GETTABLEKS                       R12 R0 K1 ["Value"]
      222 JUMP                             ; [+3]
      223 NAMECALL                         R12 R2 K54 ["getValue"]
      225 CALL                             R12 1 1
      226 SETTABLEKS                       R12 R11 K42 ["text"]
      228 GETTABLEKS                       R12 R0 K55 ["IsParameterized"]
      230 JUMPIF                           R12 ; [+2]
      231 GETTABLEKS                       R12 R0 K30 ["IsDisabled"]
      233 SETTABLEKS                       R12 R11 K24 ["isDisabled"]
      235 SETTABLEKS                       R3 R11 K43 ["onChanged"]
      237 SETTABLEKS                       R4 R11 K44 ["onFocusLost"]
      239 CALL                             R9 2 1
      240 SETTABLEKS                       R9 R8 K17 ["Input"]
      242 GETUPVAL                         R9 0
      243 GETTABLEKS                       R9 R9 K5 ["createElement"]
      245 LOADK                            R10 K58 ["Folder"]
      246 NEWTABLE                         R11 0 0
      248 GETTABLEKS                       R12 R0 K59 ["children"]
      250 CALL                             R9 3 1
      251 SETTABLEKS                       R9 R8 K18 ["PinChildren"]
      253 CALL                             R5 3 -1
      254 RETURN                           R5 -1

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
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K6 ["Flags"]
       48 GETTABLEKS                       R7 R7 K15 ["getFFlagAnimGraphUIParameterPaneAlignment"]
       50 CALL                             R6 1 1
       51 DUPCLOSURE                       R7 K16 [PROTO_2]
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R1
       58 RETURN                           R7 1
