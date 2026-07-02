PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["sticky"]
        3 JUMPIFNOT                        R2 ; [+4]
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K1 ["getValue"]
        7 CALL                             R2 1 1
        8 NOT                              R1 R2
        9 FASTCALL2K                       ASSERT R1 K2 ; [+4]
       11 LOADK                            R2 K2 ["Sheet.FullBleed with sticky=true is unsupported when used with Sheet.Header"]
       12 GETIMPORT                        R0 K4 [assert]
       14 CALL                             R0 2 0
       15 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R2 K1 ["Y"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["height"]
        2 JUMPIFNOTEQKN                    R1 K1 [0] ; [+7]
        4 GETIMPORT                        R1 K4 [UDim2.fromScale]
        6 LOADN                            R2 1
        7 LOADN                            R3 1
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1
       10 LOADN                            R2 0
       11 GETTABLEKS                       R4 R0 K0 ["height"]
       13 GETTABLEKS                       R5 R0 K5 ["scrollY"]
       15 SUB                              R3 R4 R5
       16 FASTCALL2                        MATH_MAX R2 R3 ; [+3]
       18 GETIMPORT                        R1 K8 [math.max]
       20 CALL                             R1 2 1
       21 GETIMPORT                        R2 K10 [UDim2.new]
       23 LOADN                            R3 1
       24 LOADN                            R4 0
       25 LOADN                            R5 0
       26 MOVE                             R6 R1
       27 CALL                             R2 4 -1
       28 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K0 ["useContext"]
        7 GETUPVAL                         R4 3
        8 CALL                             R3 1 1
        9 GETTABLEKS                       R4 R3 K1 ["setFullBleedHeight"]
       11 GETTABLEKS                       R5 R3 K2 ["fullBleedHeight"]
       13 GETTABLEKS                       R6 R3 K3 ["innerScrollY"]
       15 GETTABLEKS                       R7 R3 K4 ["hasHeader"]
       17 GETTABLEKS                       R8 R3 K5 ["hasRadius"]
       19 GETTABLEKS                       R9 R3 K6 ["testId"]
       21 MOVE                             R11 R4
       22 JUMPIFNOT                        R11 ; [+3]
       23 MOVE                             R11 R7
       24 JUMPIFNOT                        R11 ; [+1]
       25 MOVE                             R11 R9
       26 FASTCALL2K                       ASSERT R11 K7 ; [+4]
       28 LOADK                            R12 K7 ["SheetFullBleed must be used within a Sheet"]
       29 GETIMPORT                        R10 K9 [assert]
       31 CALL                             R10 2 0
       32 GETUPVAL                         R10 2
       33 GETTABLEKS                       R10 R10 K10 ["useEffect"]
       35 NEWCLOSURE                       R11 P0
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R7
       38 NEWTABLE                         R12 0 2
       40 GETTABLEKS                       R13 R2 K11 ["sticky"]
       42 MOVE                             R14 R7
       43 SETLIST                          R12 R13 2 [1]
       45 CALL                             R10 2 0
       46 GETUPVAL                         R10 2
       47 GETTABLEKS                       R10 R10 K12 ["useCallback"]
       49 NEWCLOSURE                       R11 P1
       50 CAPTURE                          VAL R4
       51 NEWTABLE                         R12 0 0
       53 CALL                             R10 2 1
       54 GETUPVAL                         R11 2
       55 GETTABLEKS                       R11 R11 K10 ["useEffect"]
       57 NEWCLOSURE                       R12 P2
       58 CAPTURE                          VAL R4
       59 NEWTABLE                         R13 0 0
       61 CALL                             R11 2 0
       62 GETIMPORT                        R11 K15 [UDim2.new]
       64 LOADN                            R12 1
       65 LOADN                            R13 0
       66 GETTABLEKS                       R14 R2 K16 ["height"]
       68 GETTABLEKS                       R14 R14 K17 ["Scale"]
       70 GETTABLEKS                       R15 R2 K16 ["height"]
       72 GETTABLEKS                       R15 R15 K18 ["Offset"]
       74 CALL                             R11 4 1
       75 LOADNIL                          R12
       76 GETTABLEKS                       R13 R2 K11 ["sticky"]
       78 JUMPIFNOT                        R13 ; [+2]
       79 MOVE                             R12 R11
       80 JUMP                             ; [+16]
       81 JUMPIFNOT                        R6 ; [+15]
       82 JUMPIFNOT                        R5 ; [+14]
       83 GETUPVAL                         R13 2
       84 GETTABLEKS                       R13 R13 K19 ["joinBindings"]
       86 DUPTABLE                         R14 K21 [{"scrollY", "height"}]
       87 SETTABLEKS                       R6 R14 K20 ["scrollY"]
       89 SETTABLEKS                       R5 R14 K16 ["height"]
       91 CALL                             R13 1 1
       92 DUPCLOSURE                       R15 K22 [PROTO_4]
       93 NAMECALL                         R13 R13 K23 ["map"]
       95 CALL                             R13 2 1
       96 MOVE                             R12 R13
       97 DUPTABLE                         R13 K27 [{"RoundedCorners", "Image", "Content"}]
       98 JUMPIFNOT                        R8 ; [+33]
       99 GETUPVAL                         R14 2
      100 GETTABLEKS                       R14 R14 K28 ["createElement"]
      102 GETUPVAL                         R15 4
      103 DUPTABLE                         R16 K37 [{["Image"], ["imageStyle"], ["backgroundStyle"], ["aspectRatio"], ["tag"] = "radius-large", ["Size"], ["testId"], ["ZIndex"] = 1}]
      104 GETTABLEKS                       R17 R2 K38 ["media"]
      106 SETTABLEKS                       R17 R16 K25 ["Image"]
      108 GETTABLEKS                       R17 R2 K39 ["mediaStyle"]
      110 SETTABLEKS                       R17 R16 K29 ["imageStyle"]
      112 GETTABLEKS                       R17 R2 K30 ["backgroundStyle"]
      114 SETTABLEKS                       R17 R16 K30 ["backgroundStyle"]
      116 GETTABLEKS                       R17 R2 K31 ["aspectRatio"]
      118 SETTABLEKS                       R17 R16 K31 ["aspectRatio"]
      120 SETTABLEKS                       R11 R16 K34 ["Size"]
      122 LOADK                            R18 K40 ["%*--full-bleed--rounded-corners"]
      123 MOVE                             R20 R9
      124 NAMECALL                         R18 R18 K41 ["format"]
      126 CALL                             R18 2 1
      127 MOVE                             R17 R18
      128 SETTABLEKS                       R17 R16 K6 ["testId"]
      130 CALL                             R14 2 1
      131 JUMP                             ; [+1]
      132 LOADNIL                          R14
      133 SETTABLEKS                       R14 R13 K24 ["RoundedCorners"]
      135 GETUPVAL                         R14 2
      136 GETTABLEKS                       R14 R14 K28 ["createElement"]
      138 GETUPVAL                         R15 4
      139 DUPTABLE                         R16 K44 [{["Image"], ["imageStyle"], ["backgroundStyle"], ["aspectRatio"], ["onAbsoluteSizeChanged"], ["Size"], ["ZIndex"] = 0}]
      140 GETTABLEKS                       R17 R2 K38 ["media"]
      142 SETTABLEKS                       R17 R16 K25 ["Image"]
      144 GETTABLEKS                       R17 R2 K39 ["mediaStyle"]
      146 SETTABLEKS                       R17 R16 K29 ["imageStyle"]
      148 GETTABLEKS                       R17 R2 K30 ["backgroundStyle"]
      150 SETTABLEKS                       R17 R16 K30 ["backgroundStyle"]
      152 GETTABLEKS                       R17 R2 K31 ["aspectRatio"]
      154 SETTABLEKS                       R17 R16 K31 ["aspectRatio"]
      156 GETTABLEKS                       R18 R2 K11 ["sticky"]
      158 JUMPIF                           R18 ; [+2]
      159 MOVE                             R17 R10
      160 JUMP                             ; [+1]
      161 LOADNIL                          R17
      162 SETTABLEKS                       R17 R16 K42 ["onAbsoluteSizeChanged"]
      164 SETTABLEKS                       R11 R16 K34 ["Size"]
      166 JUMPIFNOT                        R8 ; [+14]
      167 DUPTABLE                         R17 K46 [{"TransparencyGradient"}]
      168 GETUPVAL                         R18 2
      169 GETTABLEKS                       R18 R18 K28 ["createElement"]
      171 GETUPVAL                         R19 5
      172 DUPTABLE                         R20 K50 [{["fillDirection"], ["top"] = False}]
      173 GETIMPORT                        R21 K54 [Enum.FillDirection.Vertical]
      175 SETTABLEKS                       R21 R20 K47 ["fillDirection"]
      177 CALL                             R18 2 1
      178 SETTABLEKS                       R18 R17 K45 ["TransparencyGradient"]
      180 JUMP                             ; [+1]
      181 LOADNIL                          R17
      182 CALL                             R14 3 1
      183 SETTABLEKS                       R14 R13 K25 ["Image"]
      185 GETTABLEKS                       R15 R2 K55 ["children"]
      187 JUMPIFNOT                        R15 ; [+15]
      188 GETUPVAL                         R14 2
      189 GETTABLEKS                       R14 R14 K28 ["createElement"]
      191 GETUPVAL                         R15 6
      192 DUPTABLE                         R16 K57 [{["aspectRatio"], ["Size"], ["ZIndex"] = 2}]
      193 GETTABLEKS                       R17 R2 K31 ["aspectRatio"]
      195 SETTABLEKS                       R17 R16 K31 ["aspectRatio"]
      197 SETTABLEKS                       R11 R16 K34 ["Size"]
      199 GETTABLEKS                       R17 R2 K55 ["children"]
      201 CALL                             R14 3 1
      202 JUMP                             ; [+1]
      203 LOADNIL                          R14
      204 SETTABLEKS                       R14 R13 K26 ["Content"]
      206 GETUPVAL                         R14 2
      207 GETTABLEKS                       R14 R14 K28 ["createElement"]
      209 GETUPVAL                         R15 6
      210 DUPTABLE                         R16 K62 [{["Size"], ["aspectRatio"], ["LayoutOrder"], ["ClipsDescendants"] = True, ["ZIndex"] = 2, ["testId"], ["ref"]}]
      211 SETTABLEKS                       R12 R16 K34 ["Size"]
      213 GETTABLEKS                       R18 R2 K11 ["sticky"]
      215 JUMPIFNOT                        R18 ; [+3]
      216 GETTABLEKS                       R17 R2 K31 ["aspectRatio"]
      218 JUMP                             ; [+1]
      219 LOADNIL                          R17
      220 SETTABLEKS                       R17 R16 K31 ["aspectRatio"]
      222 GETTABLEKS                       R18 R2 K11 ["sticky"]
      224 JUMPIFNOT                        R18 ; [+4]
      225 GETUPVAL                         R17 7
      226 GETTABLEKS                       R17 R17 K63 ["MIN_LAYOUT_ORDER"]
      228 JUMP                             ; [+1]
      229 LOADNIL                          R17
      230 SETTABLEKS                       R17 R16 K58 ["LayoutOrder"]
      232 LOADK                            R18 K64 ["%*--full-bleed"]
      233 MOVE                             R20 R9
      234 NAMECALL                         R18 R18 K41 ["format"]
      236 CALL                             R18 2 1
      237 MOVE                             R17 R18
      238 SETTABLEKS                       R17 R16 K6 ["testId"]
      240 SETTABLEKS                       R1 R16 K61 ["ref"]
      242 GETTABLEKS                       R18 R2 K11 ["sticky"]
      244 JUMPIF                           R18 ; [+24]
      245 GETTABLEKS                       R18 R2 K31 ["aspectRatio"]
      247 JUMPIFNOT                        R18 ; [+21]
      248 GETUPVAL                         R17 2
      249 GETTABLEKS                       R17 R17 K28 ["createElement"]
      251 GETUPVAL                         R18 6
      252 DUPTABLE                         R19 K65 [{"Size", "aspectRatio"}]
      253 GETIMPORT                        R20 K15 [UDim2.new]
      255 LOADN                            R21 1
      256 LOADN                            R22 0
      257 LOADN                            R23 0
      258 LOADN                            R24 9999
      259 CALL                             R20 4 1
      260 SETTABLEKS                       R20 R19 K34 ["Size"]
      262 GETTABLEKS                       R20 R2 K31 ["aspectRatio"]
      264 SETTABLEKS                       R20 R19 K31 ["aspectRatio"]
      266 MOVE                             R20 R13
      267 CALL                             R17 3 1
      268 JUMP                             ; [+1]
      269 MOVE                             R17 R13
      270 CALL                             R14 3 1
      271 GETTABLEKS                       R15 R2 K11 ["sticky"]
      273 JUMPIF                           R15 ; [+8]
      274 GETUPVAL                         R15 2
      275 GETTABLEKS                       R15 R15 K28 ["createElement"]
      277 LOADK                            R16 K66 ["Folder"]
      278 LOADNIL                          R17
      279 MOVE                             R18 R14
      280 CALL                             R15 3 -1
      281 RETURN                           R15 -1
      282 RETURN                           R14 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Constants"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["Gradient"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R6 K11 ["Image"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K9 ["Components"]
       37 GETTABLEKS                       R7 R7 K12 ["Types"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K9 ["Components"]
       44 GETTABLEKS                       R8 R8 K13 ["View"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K14 ["Utility"]
       51 GETTABLEKS                       R9 R9 K15 ["withDefaults"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K1 [script]
       56 LOADK                            R11 K16 ["Sheet"]
       57 NAMECALL                         R9 R9 K3 ["FindFirstAncestor"]
       59 CALL                             R9 2 1
       60 GETIMPORT                        R10 K6 [require]
       62 GETTABLEKS                       R11 R9 K17 ["SheetContext"]
       64 CALL                             R10 1 1
       65 DUPTABLE                         R11 K21 [{["height"], ["sticky"] = False}]
       66 GETIMPORT                        R12 K24 [UDim.new]
       68 LOADN                            R13 1
       69 LOADN                            R14 0
       70 CALL                             R12 2 1
       71 SETTABLEKS                       R12 R11 K18 ["height"]
       73 DUPCLOSURE                       R12 K25 [PROTO_5]
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R11
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R10
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R7
       81 CAPTURE                          VAL R3
       82 GETTABLEKS                       R13 R2 K26 ["memo"]
       84 GETTABLEKS                       R14 R2 K27 ["forwardRef"]
       86 MOVE                             R15 R12
       87 CALL                             R14 1 -1
       88 CALL                             R13 -1 -1
       89 RETURN                           R13 -1
