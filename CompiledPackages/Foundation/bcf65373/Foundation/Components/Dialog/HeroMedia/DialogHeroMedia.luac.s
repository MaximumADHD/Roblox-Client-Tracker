PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setHasHeroMedia"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setHasHeroMedia"]
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 NEWCLOSURE                       R0 P0
        6 CAPTURE                          UPVAL U0
        7 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 1
        4 GETUPVAL                         R2 2
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 3
        7 CALL                             R3 0 1
        8 GETUPVAL                         R5 4
        9 GETTABLEKS                       R4 R5 K0 ["useEffect"]
       11 NEWCLOSURE                       R5 P0
       12 CAPTURE                          VAL R2
       13 NEWTABLE                         R6 0 0
       15 CALL                             R4 2 0
       16 GETTABLEKS                       R5 R3 K1 ["heroMedia"]
       18 GETTABLEKS                       R4 R5 K2 ["offsetX"]
       20 GETUPVAL                         R6 4
       21 GETTABLEKS                       R5 R6 K3 ["createElement"]
       23 GETUPVAL                         R6 5
       24 DUPTABLE                         R7 K7 [{"tag", "LayoutOrder", "testId"}]
       25 GETTABLEKS                       R9 R3 K8 ["heroMediaWrapper"]
       27 GETTABLEKS                       R8 R9 K4 ["tag"]
       29 SETTABLEKS                       R8 R7 K4 ["tag"]
       31 GETUPVAL                         R9 6
       32 GETTABLEKS                       R8 R9 K9 ["MIN_LAYOUT_ORDER"]
       34 SETTABLEKS                       R8 R7 K5 ["LayoutOrder"]
       36 LOADK                            R9 K10 ["%*--hero-media"]
       37 GETTABLEKS                       R11 R2 K6 ["testId"]
       39 NAMECALL                         R9 R9 K11 ["format"]
       41 CALL                             R9 2 1
       42 MOVE                             R8 R9
       43 SETTABLEKS                       R8 R7 K6 ["testId"]
       45 DUPTABLE                         R8 K15 [{"TransparencyGradient", "RoundedCorners", "Image"}]
       46 GETUPVAL                         R11 7
       47 GETTABLEKS                       R10 R11 K16 ["FoundationDialogHeroMediaGradientFix"]
       49 JUMPIFNOT                        R10 ; [+2]
       50 LOADNIL                          R9
       51 JUMP                             ; [+13]
       52 GETUPVAL                         R10 4
       53 GETTABLEKS                       R9 R10 K3 ["createElement"]
       55 GETUPVAL                         R10 8
       56 DUPTABLE                         R11 K19 [{"fillDirection", "top"}]
       57 GETIMPORT                        R12 K23 [Enum.FillDirection.Vertical]
       59 SETTABLEKS                       R12 R11 K17 ["fillDirection"]
       61 LOADB                            R12 1
       62 SETTABLEKS                       R12 R11 K18 ["top"]
       64 CALL                             R9 2 1
       65 SETTABLEKS                       R9 R8 K12 ["TransparencyGradient"]
       67 GETUPVAL                         R10 4
       68 GETTABLEKS                       R9 R10 K3 ["createElement"]
       70 GETUPVAL                         R10 9
       71 DUPTABLE                         R11 K30 [{"Image", "imageStyle", "backgroundStyle", "aspectRatio", "Position", "Size", "ZIndex"}]
       72 GETTABLEKS                       R12 R1 K31 ["media"]
       74 SETTABLEKS                       R12 R11 K14 ["Image"]
       76 GETTABLEKS                       R12 R1 K32 ["mediaStyle"]
       78 SETTABLEKS                       R12 R11 K24 ["imageStyle"]
       80 GETTABLEKS                       R12 R1 K25 ["backgroundStyle"]
       82 SETTABLEKS                       R12 R11 K25 ["backgroundStyle"]
       84 GETTABLEKS                       R12 R1 K26 ["aspectRatio"]
       86 SETTABLEKS                       R12 R11 K26 ["aspectRatio"]
       88 GETIMPORT                        R12 K35 [UDim2.new]
       90 LOADN                            R13 0
       91 MINUS                            R14 R4
       92 LOADN                            R15 0
       93 LOADN                            R16 0
       94 CALL                             R12 4 1
       95 SETTABLEKS                       R12 R11 K27 ["Position"]
       97 GETIMPORT                        R12 K35 [UDim2.new]
       99 LOADN                            R13 1
      100 MULK                             R14 R4 K36 [2]
      101 GETTABLEKS                       R16 R1 K37 ["height"]
      103 GETTABLEKS                       R15 R16 K38 ["Scale"]
      105 GETTABLEKS                       R17 R1 K37 ["height"]
      107 GETTABLEKS                       R16 R17 K39 ["Offset"]
      109 CALL                             R12 4 1
      110 SETTABLEKS                       R12 R11 K28 ["Size"]
      112 LOADN                            R12 0
      113 SETTABLEKS                       R12 R11 K29 ["ZIndex"]
      115 DUPTABLE                         R12 K40 [{"TransparencyGradient"}]
      116 GETUPVAL                         R14 4
      117 GETTABLEKS                       R13 R14 K3 ["createElement"]
      119 GETUPVAL                         R14 8
      120 DUPTABLE                         R15 K19 [{"fillDirection", "top"}]
      121 GETIMPORT                        R16 K23 [Enum.FillDirection.Vertical]
      123 SETTABLEKS                       R16 R15 K17 ["fillDirection"]
      125 LOADB                            R16 0
      126 SETTABLEKS                       R16 R15 K18 ["top"]
      128 CALL                             R13 2 1
      129 SETTABLEKS                       R13 R12 K12 ["TransparencyGradient"]
      131 CALL                             R9 3 1
      132 SETTABLEKS                       R9 R8 K13 ["RoundedCorners"]
      134 GETUPVAL                         R10 4
      135 GETTABLEKS                       R9 R10 K3 ["createElement"]
      137 GETUPVAL                         R10 9
      138 DUPTABLE                         R11 K41 [{"Image", "imageStyle", "backgroundStyle", "tag", "aspectRatio", "Position", "Size"}]
      139 GETTABLEKS                       R12 R1 K31 ["media"]
      141 SETTABLEKS                       R12 R11 K14 ["Image"]
      143 GETTABLEKS                       R12 R1 K32 ["mediaStyle"]
      145 SETTABLEKS                       R12 R11 K24 ["imageStyle"]
      147 GETTABLEKS                       R12 R1 K25 ["backgroundStyle"]
      149 SETTABLEKS                       R12 R11 K25 ["backgroundStyle"]
      151 GETTABLEKS                       R13 R3 K1 ["heroMedia"]
      153 GETTABLEKS                       R12 R13 K4 ["tag"]
      155 SETTABLEKS                       R12 R11 K4 ["tag"]
      157 GETTABLEKS                       R12 R1 K26 ["aspectRatio"]
      159 SETTABLEKS                       R12 R11 K26 ["aspectRatio"]
      161 GETIMPORT                        R12 K35 [UDim2.new]
      163 LOADN                            R13 0
      164 MINUS                            R14 R4
      165 LOADN                            R15 0
      166 LOADN                            R16 0
      167 CALL                             R12 4 1
      168 SETTABLEKS                       R12 R11 K27 ["Position"]
      170 GETIMPORT                        R12 K35 [UDim2.new]
      172 LOADN                            R13 1
      173 MULK                             R14 R4 K36 [2]
      174 GETTABLEKS                       R16 R1 K37 ["height"]
      176 GETTABLEKS                       R15 R16 K38 ["Scale"]
      178 GETTABLEKS                       R17 R1 K37 ["height"]
      180 GETTABLEKS                       R16 R17 K39 ["Offset"]
      182 CALL                             R12 4 1
      183 SETTABLEKS                       R12 R11 K28 ["Size"]
      185 DUPTABLE                         R12 K40 [{"TransparencyGradient"}]
      186 GETUPVAL                         R15 7
      187 GETTABLEKS                       R14 R15 K16 ["FoundationDialogHeroMediaGradientFix"]
      189 JUMPIFNOT                        R14 ; [+14]
      190 GETUPVAL                         R14 4
      191 GETTABLEKS                       R13 R14 K3 ["createElement"]
      193 GETUPVAL                         R14 8
      194 DUPTABLE                         R15 K19 [{"fillDirection", "top"}]
      195 GETIMPORT                        R16 K23 [Enum.FillDirection.Vertical]
      197 SETTABLEKS                       R16 R15 K17 ["fillDirection"]
      199 LOADB                            R16 1
      200 SETTABLEKS                       R16 R15 K18 ["top"]
      202 CALL                             R13 2 1
      203 JUMP                             ; [+1]
      204 LOADNIL                          R13
      205 SETTABLEKS                       R13 R12 K12 ["TransparencyGradient"]
      207 CALL                             R9 3 1
      208 SETTABLEKS                       R9 R8 K14 ["Image"]
      210 CALL                             R5 3 -1
      211 RETURN                           R5 -1

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
       16 GETTABLEKS                       R5 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R5 K9 ["View"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R6 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R6 K10 ["Image"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R7 R0 K8 ["Components"]
       32 GETTABLEKS                       R6 R7 K11 ["Types"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K12 ["Constants"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R9 R0 K13 ["Enums"]
       44 GETTABLEKS                       R8 R9 K14 ["DialogSize"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R10 R0 K15 ["Utility"]
       51 GETTABLEKS                       R9 R10 K16 ["Flags"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R11 R0 K15 ["Utility"]
       58 GETTABLEKS                       R10 R11 K17 ["withDefaults"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R12 R0 K8 ["Components"]
       65 GETTABLEKS                       R11 R12 K18 ["Gradient"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K6 [require]
       70 GETIMPORT                        R15 K1 [script]
       72 GETTABLEKS                       R14 R15 K4 ["Parent"]
       74 GETTABLEKS                       R13 R14 K4 ["Parent"]
       76 GETTABLEKS                       R12 R13 K19 ["useDialog"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R13 K6 [require]
       81 GETIMPORT                        R17 K1 [script]
       83 GETTABLEKS                       R16 R17 K4 ["Parent"]
       85 GETTABLEKS                       R15 R16 K4 ["Parent"]
       87 GETTABLEKS                       R14 R15 K20 ["useDialogVariants"]
       89 CALL                             R13 1 1
       90 GETTABLEKS                       R12 R13 K20 ["useDialogVariants"]
       92 DUPTABLE                         R13 K22 [{"height"}]
       93 GETIMPORT                        R14 K25 [UDim.new]
       95 LOADN                            R15 1
       96 LOADN                            R16 0
       97 CALL                             R14 2 1
       98 SETTABLEKS                       R14 R13 K21 ["height"]
      100 DUPCLOSURE                       R14 K26 [PROTO_2]
      101 CAPTURE                          VAL R9
      102 CAPTURE                          VAL R13
      103 CAPTURE                          VAL R11
      104 CAPTURE                          VAL R12
      105 CAPTURE                          VAL R2
      106 CAPTURE                          VAL R3
      107 CAPTURE                          VAL R6
      108 CAPTURE                          VAL R8
      109 CAPTURE                          VAL R10
      110 CAPTURE                          VAL R4
      111 RETURN                           R14 1
