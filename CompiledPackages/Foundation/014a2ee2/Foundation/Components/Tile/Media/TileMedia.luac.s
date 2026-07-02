PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["id"]
        3 JUMPIFEQKNIL                     R0 ; [+6]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K1 ["type"]
        8 JUMPIFNOTEQKNIL                  R0 ; [+3]
       10 LOADNIL                          R0
       11 RETURN                           R0 1
       12 GETUPVAL                         R0 1
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K1 ["type"]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K0 ["id"]
       19 CALL                             R0 2 -1
       20 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 1
        4 GETUPVAL                         R2 2
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 3
        7 CALL                             R3 0 1
        8 GETTABLEKS                       R5 R1 K0 ["background"]
       10 JUMPIFNOT                        R5 ; [+5]
       11 GETTABLEKS                       R4 R1 K0 ["background"]
       13 GETTABLEKS                       R4 R4 K1 ["style"]
       15 JUMP                             ; [+1]
       16 LOADNIL                          R4
       17 GETTABLEKS                       R6 R1 K0 ["background"]
       19 JUMPIFNOT                        R6 ; [+5]
       20 GETTABLEKS                       R5 R1 K0 ["background"]
       22 GETTABLEKS                       R5 R5 K2 ["image"]
       24 JUMP                             ; [+1]
       25 LOADNIL                          R5
       26 GETUPVAL                         R6 4
       27 GETTABLEKS                       R6 R6 K3 ["useMemo"]
       29 NEWCLOSURE                       R7 P0
       30 CAPTURE                          VAL R1
       31 CAPTURE                          UPVAL U5
       32 NEWTABLE                         R8 0 2
       34 GETTABLEKS                       R9 R1 K4 ["type"]
       36 GETTABLEKS                       R10 R1 K5 ["id"]
       38 SETLIST                          R8 R9 2 [1]
       40 CALL                             R6 2 1
       41 GETTABLEKS                       R8 R1 K6 ["shape"]
       43 GETUPVAL                         R9 6
       44 GETTABLEKS                       R9 R9 K7 ["Circle"]
       46 JUMPIFNOTEQ                      R8 R9 ; [+10]
       48 GETIMPORT                        R7 K10 [UDim.new]
       50 LOADN                            R8 0
       51 GETTABLEKS                       R9 R3 K11 ["Radius"]
       53 GETTABLEKS                       R9 R9 K7 ["Circle"]
       55 CALL                             R7 2 1
       56 JUMP                             ; [+8]
       57 GETIMPORT                        R7 K10 [UDim.new]
       59 LOADN                            R8 0
       60 GETTABLEKS                       R9 R3 K11 ["Radius"]
       62 GETTABLEKS                       R9 R9 K12 ["Medium"]
       64 CALL                             R7 2 1
       65 GETTABLEKS                       R9 R2 K13 ["isContained"]
       67 AND                              R8 R9 R7
       68 GETUPVAL                         R9 4
       69 GETTABLEKS                       R9 R9 K14 ["createElement"]
       71 JUMPIFNOT                        R5 ; [+2]
       72 GETUPVAL                         R10 7
       73 JUMP                             ; [+1]
       74 GETUPVAL                         R10 8
       75 DUPTABLE                         R11 K26 [{["Image"], ["imageStyle"], ["backgroundStyle"], ["Size"], ["ZIndex"] = 0, ["LayoutOrder"], ["aspectRatio"], ["cornerRadius"], ["onStateChanged"], ["testId"]}]
       76 SETTABLEKS                       R5 R11 K15 ["Image"]
       78 JUMPIFNOT                        R5 ; [+2]
       79 MOVE                             R12 R4
       80 JUMP                             ; [+1]
       81 LOADNIL                          R12
       82 SETTABLEKS                       R12 R11 K16 ["imageStyle"]
       84 JUMPIFNOT                        R5 ; [+2]
       85 LOADNIL                          R12
       86 JUMP                             ; [+1]
       87 MOVE                             R12 R4
       88 SETTABLEKS                       R12 R11 K17 ["backgroundStyle"]
       90 GETTABLEKS                       R13 R2 K27 ["fillDirection"]
       92 GETIMPORT                        R14 K31 [Enum.FillDirection.Vertical]
       94 JUMPIFNOTEQ                      R13 R14 ; [+7]
       96 GETIMPORT                        R12 K34 [UDim2.fromScale]
       98 LOADN                            R13 1
       99 LOADN                            R14 0
      100 CALL                             R12 2 1
      101 JUMP                             ; [+5]
      102 GETIMPORT                        R12 K34 [UDim2.fromScale]
      104 LOADN                            R13 0
      105 LOADN                            R14 1
      106 CALL                             R12 2 1
      107 SETTABLEKS                       R12 R11 K18 ["Size"]
      109 GETTABLEKS                       R12 R1 K21 ["LayoutOrder"]
      111 SETTABLEKS                       R12 R11 K21 ["LayoutOrder"]
      113 DUPTABLE                         R12 K38 [{"AspectRatio", "AspectType", "DominantAxis"}]
      114 GETUPVAL                         R14 9
      115 GETTABLEKS                       R15 R1 K6 ["shape"]
      117 GETTABLE                         R13 R14 R15
      118 SETTABLEKS                       R13 R12 K35 ["AspectRatio"]
      120 GETIMPORT                        R13 K40 [Enum.AspectType.ScaleWithParentSize]
      122 SETTABLEKS                       R13 R12 K36 ["AspectType"]
      124 GETTABLEKS                       R14 R2 K27 ["fillDirection"]
      126 GETIMPORT                        R15 K31 [Enum.FillDirection.Vertical]
      128 JUMPIFNOTEQ                      R14 R15 ; [+4]
      130 GETIMPORT                        R13 K42 [Enum.DominantAxis.Width]
      132 JUMP                             ; [+2]
      133 GETIMPORT                        R13 K44 [Enum.DominantAxis.Height]
      135 SETTABLEKS                       R13 R12 K37 ["DominantAxis"]
      137 SETTABLEKS                       R12 R11 K22 ["aspectRatio"]
      139 SETTABLEKS                       R7 R11 K23 ["cornerRadius"]
      141 GETTABLEKS                       R12 R1 K24 ["onStateChanged"]
      143 SETTABLEKS                       R12 R11 K24 ["onStateChanged"]
      145 LOADK                            R13 K45 ["%*--media"]
      146 GETTABLEKS                       R15 R2 K25 ["testId"]
      148 NAMECALL                         R13 R13 K46 ["format"]
      150 CALL                             R13 2 1
      151 MOVE                             R12 R13
      152 SETTABLEKS                       R12 R11 K25 ["testId"]
      154 DUPTABLE                         R12 K49 [{"TransparencyGradient", "MiddleCorners", "Image"}]
      155 JUMPIFNOT                        R8 ; [+11]
      156 GETUPVAL                         R13 4
      157 GETTABLEKS                       R13 R13 K14 ["createElement"]
      159 GETUPVAL                         R14 10
      160 DUPTABLE                         R15 K52 [{["fillDirection"], ["top"] = True}]
      161 GETTABLEKS                       R16 R2 K27 ["fillDirection"]
      163 SETTABLEKS                       R16 R15 K27 ["fillDirection"]
      165 CALL                             R13 2 1
      166 JUMP                             ; [+1]
      167 LOADNIL                          R13
      168 SETTABLEKS                       R13 R12 K47 ["TransparencyGradient"]
      170 JUMPIFNOT                        R8 ; [+34]
      171 GETUPVAL                         R13 4
      172 GETTABLEKS                       R13 R13 K14 ["createElement"]
      174 GETUPVAL                         R14 7
      175 DUPTABLE                         R15 K55 [{["Image"], ["imageStyle"], ["backgroundStyle"], ["ZIndex"] = 0, ["tag"] = "size-full"}]
      176 SETTABLEKS                       R5 R15 K15 ["Image"]
      178 JUMPIFNOT                        R5 ; [+2]
      179 MOVE                             R16 R4
      180 JUMP                             ; [+1]
      181 LOADNIL                          R16
      182 SETTABLEKS                       R16 R15 K16 ["imageStyle"]
      184 JUMPIFNOT                        R5 ; [+2]
      185 LOADNIL                          R16
      186 JUMP                             ; [+1]
      187 MOVE                             R16 R4
      188 SETTABLEKS                       R16 R15 K17 ["backgroundStyle"]
      190 DUPTABLE                         R16 K56 [{"TransparencyGradient"}]
      191 GETUPVAL                         R17 4
      192 GETTABLEKS                       R17 R17 K14 ["createElement"]
      194 GETUPVAL                         R18 10
      195 DUPTABLE                         R19 K58 [{["fillDirection"], ["top"] = False}]
      196 GETTABLEKS                       R20 R2 K27 ["fillDirection"]
      198 SETTABLEKS                       R20 R19 K27 ["fillDirection"]
      200 CALL                             R17 2 1
      201 SETTABLEKS                       R17 R16 K47 ["TransparencyGradient"]
      203 CALL                             R13 3 1
      204 JUMP                             ; [+1]
      205 LOADNIL                          R13
      206 SETTABLEKS                       R13 R12 K48 ["MiddleCorners"]
      208 GETUPVAL                         R13 4
      209 GETTABLEKS                       R13 R13 K14 ["createElement"]
      211 GETUPVAL                         R14 7
      212 DUPTABLE                         R15 K59 [{"Image", "cornerRadius", "imageStyle", "tag", "testId"}]
      213 SETTABLEKS                       R6 R15 K15 ["Image"]
      215 SETTABLEKS                       R7 R15 K23 ["cornerRadius"]
      217 GETTABLEKS                       R16 R1 K1 ["style"]
      219 SETTABLEKS                       R16 R15 K16 ["imageStyle"]
      221 NEWTABLE                         R16 2 0
      223 LOADB                            R17 1
      224 SETTABLEKS                       R17 R16 K54 ["size-full"]
      226 GETTABLEKS                       R18 R1 K60 ["children"]
      228 JUMPIFNOTEQKNIL                  R18 ; [+2]
      230 LOADB                            R17 0 +1
      231 LOADB                            R17 1
      232 SETTABLEKS                       R17 R16 K61 ["padding-medium"]
      234 SETTABLEKS                       R16 R15 K53 ["tag"]
      236 LOADK                            R17 K62 ["%*--media-image"]
      237 GETTABLEKS                       R19 R2 K25 ["testId"]
      239 NAMECALL                         R17 R17 K46 ["format"]
      241 CALL                             R17 2 1
      242 MOVE                             R16 R17
      243 SETTABLEKS                       R16 R15 K25 ["testId"]
      245 GETTABLEKS                       R16 R1 K60 ["children"]
      247 CALL                             R13 3 1
      248 SETTABLEKS                       R13 R12 K15 ["Image"]
      250 CALL                             R9 3 -1
      251 RETURN                           R9 -1

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
       16 GETTABLEKS                       R4 R0 K8 ["Enums"]
       18 GETTABLEKS                       R4 R4 K9 ["MediaType"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Enums"]
       25 GETTABLEKS                       R5 R5 K10 ["ThumbnailType"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Enums"]
       32 GETTABLEKS                       R6 R6 K11 ["ThumbnailSize"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K8 ["Enums"]
       39 GETTABLEKS                       R7 R7 K12 ["MediaShape"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K13 ["Components"]
       46 GETTABLEKS                       R8 R8 K14 ["Gradient"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K15 ["Utility"]
       53 GETTABLEKS                       R9 R9 K16 ["getRbxThumb"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K13 ["Components"]
       60 GETTABLEKS                       R10 R10 K17 ["Tile"]
       62 GETTABLEKS                       R10 R10 K18 ["useTile"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K6 [require]
       67 GETTABLEKS                       R11 R0 K15 ["Utility"]
       69 GETTABLEKS                       R11 R11 K19 ["withDefaults"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K6 [require]
       74 GETTABLEKS                       R12 R0 K13 ["Components"]
       76 GETTABLEKS                       R12 R12 K20 ["Image"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K6 [require]
       81 GETTABLEKS                       R13 R0 K13 ["Components"]
       83 GETTABLEKS                       R13 R13 K21 ["View"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K6 [require]
       88 GETTABLEKS                       R14 R0 K22 ["Providers"]
       90 GETTABLEKS                       R14 R14 K23 ["Style"]
       92 GETTABLEKS                       R14 R14 K24 ["useTokens"]
       94 CALL                             R13 1 1
       95 GETIMPORT                        R14 K6 [require]
       97 GETTABLEKS                       R15 R0 K13 ["Components"]
       99 GETTABLEKS                       R15 R15 K25 ["Types"]
      101 CALL                             R14 1 1
      102 NEWTABLE                         R15 4 0
      104 GETTABLEKS                       R16 R6 K26 ["Circle"]
      106 LOADN                            R17 1
      107 SETTABLE                         R17 R15 R16
      108 GETTABLEKS                       R16 R6 K27 ["Square"]
      110 LOADN                            R17 1
      111 SETTABLE                         R17 R15 R16
      112 GETTABLEKS                       R16 R6 K28 ["Landscape"]
      114 LOADK                            R17 K29 [1.77777777777778]
      115 SETTABLE                         R17 R15 R16
      116 GETTABLEKS                       R16 R6 K30 ["Portrait"]
      118 LOADK                            R17 K31 [0.5625]
      119 SETTABLE                         R17 R15 R16
      120 DUPTABLE                         R16 K35 [{["shape"], ["LayoutOrder"] = 1}]
      121 GETTABLEKS                       R17 R6 K27 ["Square"]
      123 SETTABLEKS                       R17 R16 K32 ["shape"]
      125 DUPCLOSURE                       R17 K36 [PROTO_1]
      126 CAPTURE                          VAL R10
      127 CAPTURE                          VAL R16
      128 CAPTURE                          VAL R9
      129 CAPTURE                          VAL R13
      130 CAPTURE                          VAL R2
      131 CAPTURE                          VAL R8
      132 CAPTURE                          VAL R6
      133 CAPTURE                          VAL R11
      134 CAPTURE                          VAL R12
      135 CAPTURE                          VAL R15
      136 CAPTURE                          VAL R7
      137 RETURN                           R17 1
