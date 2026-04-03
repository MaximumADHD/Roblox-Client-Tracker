PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["id"]
        3 JUMPIFEQKNIL                     R0 ; [+6]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R0 R1 K1 ["type"]
        8 JUMPIFNOTEQKNIL                  R0 ; [+3]
       10 LOADNIL                          R0
       11 RETURN                           R0 1
       12 GETUPVAL                         R0 1
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R1 R2 K1 ["type"]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R2 R3 K0 ["id"]
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
       11 GETTABLEKS                       R5 R1 K0 ["background"]
       13 GETTABLEKS                       R4 R5 K1 ["style"]
       15 JUMP                             ; [+1]
       16 LOADNIL                          R4
       17 GETTABLEKS                       R6 R1 K0 ["background"]
       19 JUMPIFNOT                        R6 ; [+5]
       20 GETTABLEKS                       R6 R1 K0 ["background"]
       22 GETTABLEKS                       R5 R6 K2 ["image"]
       24 JUMP                             ; [+1]
       25 LOADNIL                          R5
       26 GETUPVAL                         R7 4
       27 GETTABLEKS                       R6 R7 K3 ["useMemo"]
       29 NEWCLOSURE                       R7 P0
       30 CAPTURE                          VAL R1
       31 CAPTURE                          UPVAL U5
       32 NEWTABLE                         R8 0 2
       34 GETTABLEKS                       R9 R1 K4 ["type"]
       36 GETTABLEKS                       R10 R1 K5 ["id"]
       38 SETLIST                          R8 R9 2 [1]
       40 CALL                             R6 2 1
       41 GETTABLEKS                       R8 R1 K6 ["shape"]
       43 GETUPVAL                         R10 6
       44 GETTABLEKS                       R9 R10 K7 ["Circle"]
       46 JUMPIFNOTEQ                      R8 R9 ; [+10]
       48 GETIMPORT                        R7 K10 [UDim.new]
       50 LOADN                            R8 0
       51 GETTABLEKS                       R10 R3 K11 ["Radius"]
       53 GETTABLEKS                       R9 R10 K7 ["Circle"]
       55 CALL                             R7 2 1
       56 JUMP                             ; [+8]
       57 GETIMPORT                        R7 K10 [UDim.new]
       59 LOADN                            R8 0
       60 GETTABLEKS                       R10 R3 K11 ["Radius"]
       62 GETTABLEKS                       R9 R10 K12 ["Medium"]
       64 CALL                             R7 2 1
       65 GETTABLEKS                       R9 R2 K13 ["isContained"]
       67 AND                              R8 R9 R7
       68 GETUPVAL                         R10 4
       69 GETTABLEKS                       R9 R10 K14 ["createElement"]
       71 JUMPIFNOT                        R5 ; [+2]
       72 GETUPVAL                         R10 7
       73 JUMP                             ; [+1]
       74 GETUPVAL                         R10 8
       75 DUPTABLE                         R11 K25 [{"Image", "imageStyle", "backgroundStyle", "Size", "ZIndex", "LayoutOrder", "aspectRatio", "cornerRadius", "onStateChanged", "testId"}]
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
       90 GETTABLEKS                       R13 R2 K26 ["fillDirection"]
       92 GETIMPORT                        R14 K30 [Enum.FillDirection.Vertical]
       94 JUMPIFNOTEQ                      R13 R14 ; [+7]
       96 GETIMPORT                        R12 K33 [UDim2.fromScale]
       98 LOADN                            R13 1
       99 LOADN                            R14 0
      100 CALL                             R12 2 1
      101 JUMP                             ; [+5]
      102 GETIMPORT                        R12 K33 [UDim2.fromScale]
      104 LOADN                            R13 0
      105 LOADN                            R14 1
      106 CALL                             R12 2 1
      107 SETTABLEKS                       R12 R11 K18 ["Size"]
      109 LOADN                            R12 0
      110 SETTABLEKS                       R12 R11 K19 ["ZIndex"]
      112 GETTABLEKS                       R12 R1 K20 ["LayoutOrder"]
      114 SETTABLEKS                       R12 R11 K20 ["LayoutOrder"]
      116 DUPTABLE                         R12 K37 [{"AspectRatio", "AspectType", "DominantAxis"}]
      117 GETUPVAL                         R14 9
      118 GETTABLEKS                       R15 R1 K6 ["shape"]
      120 GETTABLE                         R13 R14 R15
      121 SETTABLEKS                       R13 R12 K34 ["AspectRatio"]
      123 GETIMPORT                        R13 K39 [Enum.AspectType.ScaleWithParentSize]
      125 SETTABLEKS                       R13 R12 K35 ["AspectType"]
      127 GETTABLEKS                       R14 R2 K26 ["fillDirection"]
      129 GETIMPORT                        R15 K30 [Enum.FillDirection.Vertical]
      131 JUMPIFNOTEQ                      R14 R15 ; [+4]
      133 GETIMPORT                        R13 K41 [Enum.DominantAxis.Width]
      135 JUMP                             ; [+2]
      136 GETIMPORT                        R13 K43 [Enum.DominantAxis.Height]
      138 SETTABLEKS                       R13 R12 K36 ["DominantAxis"]
      140 SETTABLEKS                       R12 R11 K21 ["aspectRatio"]
      142 SETTABLEKS                       R7 R11 K22 ["cornerRadius"]
      144 GETTABLEKS                       R12 R1 K23 ["onStateChanged"]
      146 SETTABLEKS                       R12 R11 K23 ["onStateChanged"]
      148 LOADK                            R13 K44 ["%*--media"]
      149 GETTABLEKS                       R15 R2 K24 ["testId"]
      151 NAMECALL                         R13 R13 K45 ["format"]
      153 CALL                             R13 2 1
      154 MOVE                             R12 R13
      155 SETTABLEKS                       R12 R11 K24 ["testId"]
      157 DUPTABLE                         R12 K48 [{"TransparencyGradient", "MiddleCorners", "Image"}]
      158 JUMPIFNOT                        R8 ; [+14]
      159 GETUPVAL                         R14 4
      160 GETTABLEKS                       R13 R14 K14 ["createElement"]
      162 GETUPVAL                         R14 10
      163 DUPTABLE                         R15 K50 [{"fillDirection", "top"}]
      164 GETTABLEKS                       R16 R2 K26 ["fillDirection"]
      166 SETTABLEKS                       R16 R15 K26 ["fillDirection"]
      168 LOADB                            R16 1
      169 SETTABLEKS                       R16 R15 K49 ["top"]
      171 CALL                             R13 2 1
      172 JUMP                             ; [+1]
      173 LOADNIL                          R13
      174 SETTABLEKS                       R13 R12 K46 ["TransparencyGradient"]
      176 JUMPIFNOT                        R8 ; [+43]
      177 GETUPVAL                         R14 4
      178 GETTABLEKS                       R13 R14 K14 ["createElement"]
      180 GETUPVAL                         R14 7
      181 DUPTABLE                         R15 K52 [{"Image", "imageStyle", "backgroundStyle", "ZIndex", "tag"}]
      182 SETTABLEKS                       R5 R15 K15 ["Image"]
      184 JUMPIFNOT                        R5 ; [+2]
      185 MOVE                             R16 R4
      186 JUMP                             ; [+1]
      187 LOADNIL                          R16
      188 SETTABLEKS                       R16 R15 K16 ["imageStyle"]
      190 JUMPIFNOT                        R5 ; [+2]
      191 LOADNIL                          R16
      192 JUMP                             ; [+1]
      193 MOVE                             R16 R4
      194 SETTABLEKS                       R16 R15 K17 ["backgroundStyle"]
      196 LOADN                            R16 0
      197 SETTABLEKS                       R16 R15 K19 ["ZIndex"]
      199 LOADK                            R16 K53 ["size-full"]
      200 SETTABLEKS                       R16 R15 K51 ["tag"]
      202 DUPTABLE                         R16 K54 [{"TransparencyGradient"}]
      203 GETUPVAL                         R18 4
      204 GETTABLEKS                       R17 R18 K14 ["createElement"]
      206 GETUPVAL                         R18 10
      207 DUPTABLE                         R19 K50 [{"fillDirection", "top"}]
      208 GETTABLEKS                       R20 R2 K26 ["fillDirection"]
      210 SETTABLEKS                       R20 R19 K26 ["fillDirection"]
      212 LOADB                            R20 0
      213 SETTABLEKS                       R20 R19 K49 ["top"]
      215 CALL                             R17 2 1
      216 SETTABLEKS                       R17 R16 K46 ["TransparencyGradient"]
      218 CALL                             R13 3 1
      219 JUMP                             ; [+1]
      220 LOADNIL                          R13
      221 SETTABLEKS                       R13 R12 K47 ["MiddleCorners"]
      223 GETUPVAL                         R14 4
      224 GETTABLEKS                       R13 R14 K14 ["createElement"]
      226 GETUPVAL                         R14 7
      227 DUPTABLE                         R15 K55 [{"Image", "cornerRadius", "imageStyle", "tag", "testId"}]
      228 SETTABLEKS                       R6 R15 K15 ["Image"]
      230 SETTABLEKS                       R7 R15 K22 ["cornerRadius"]
      232 GETTABLEKS                       R16 R1 K1 ["style"]
      234 SETTABLEKS                       R16 R15 K16 ["imageStyle"]
      236 NEWTABLE                         R16 2 0
      238 LOADB                            R17 1
      239 SETTABLEKS                       R17 R16 K53 ["size-full"]
      241 GETTABLEKS                       R18 R1 K56 ["children"]
      243 JUMPIFNOTEQKNIL                  R18 ; [+2]
      245 LOADB                            R17 0 +1
      246 LOADB                            R17 1
      247 SETTABLEKS                       R17 R16 K57 ["padding-medium"]
      249 SETTABLEKS                       R16 R15 K51 ["tag"]
      251 LOADK                            R17 K58 ["%*--media-image"]
      252 GETTABLEKS                       R19 R2 K24 ["testId"]
      254 NAMECALL                         R17 R17 K45 ["format"]
      256 CALL                             R17 2 1
      257 MOVE                             R16 R17
      258 SETTABLEKS                       R16 R15 K24 ["testId"]
      260 GETTABLEKS                       R16 R1 K56 ["children"]
      262 CALL                             R13 3 1
      263 SETTABLEKS                       R13 R12 K15 ["Image"]
      265 CALL                             R9 3 -1
      266 RETURN                           R9 -1

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
       16 GETTABLEKS                       R5 R0 K8 ["Enums"]
       18 GETTABLEKS                       R4 R5 K9 ["MediaType"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R6 R0 K8 ["Enums"]
       25 GETTABLEKS                       R5 R6 K10 ["ThumbnailType"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R7 R0 K8 ["Enums"]
       32 GETTABLEKS                       R6 R7 K11 ["ThumbnailSize"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R8 R0 K8 ["Enums"]
       39 GETTABLEKS                       R7 R8 K12 ["MediaShape"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R10 R0 K13 ["Components"]
       46 GETTABLEKS                       R9 R10 K14 ["Tile"]
       48 GETTABLEKS                       R8 R9 K15 ["useTile"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K6 [require]
       53 GETTABLEKS                       R10 R0 K16 ["Utility"]
       55 GETTABLEKS                       R9 R10 K17 ["withDefaults"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K6 [require]
       60 GETTABLEKS                       R11 R0 K16 ["Utility"]
       62 GETTABLEKS                       R10 R11 K18 ["getRbxThumb"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K6 [require]
       67 GETTABLEKS                       R12 R0 K13 ["Components"]
       69 GETTABLEKS                       R11 R12 K19 ["Gradient"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K6 [require]
       74 GETTABLEKS                       R13 R0 K13 ["Components"]
       76 GETTABLEKS                       R12 R13 K20 ["Image"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K6 [require]
       81 GETTABLEKS                       R14 R0 K13 ["Components"]
       83 GETTABLEKS                       R13 R14 K21 ["View"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K6 [require]
       88 GETTABLEKS                       R16 R0 K22 ["Providers"]
       90 GETTABLEKS                       R15 R16 K23 ["Style"]
       92 GETTABLEKS                       R14 R15 K24 ["useTokens"]
       94 CALL                             R13 1 1
       95 GETIMPORT                        R14 K6 [require]
       97 GETTABLEKS                       R16 R0 K13 ["Components"]
       99 GETTABLEKS                       R15 R16 K25 ["Types"]
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
      120 DUPTABLE                         R16 K34 [{"shape", "LayoutOrder"}]
      121 GETTABLEKS                       R17 R6 K27 ["Square"]
      123 SETTABLEKS                       R17 R16 K32 ["shape"]
      125 LOADN                            R17 1
      126 SETTABLEKS                       R17 R16 K33 ["LayoutOrder"]
      128 DUPCLOSURE                       R17 K35 [PROTO_1]
      129 CAPTURE                          VAL R8
      130 CAPTURE                          VAL R16
      131 CAPTURE                          VAL R7
      132 CAPTURE                          VAL R13
      133 CAPTURE                          VAL R2
      134 CAPTURE                          VAL R9
      135 CAPTURE                          VAL R6
      136 CAPTURE                          VAL R11
      137 CAPTURE                          VAL R12
      138 CAPTURE                          VAL R15
      139 CAPTURE                          VAL R10
      140 RETURN                           R17 1
