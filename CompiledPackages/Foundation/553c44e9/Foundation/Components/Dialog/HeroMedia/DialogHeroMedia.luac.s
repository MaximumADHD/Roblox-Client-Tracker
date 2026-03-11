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
       45 DUPTABLE                         R8 K14 [{"RoundedCorners", "Image"}]
       46 GETUPVAL                         R10 4
       47 GETTABLEKS                       R9 R10 K3 ["createElement"]
       49 GETUPVAL                         R10 7
       50 DUPTABLE                         R11 K21 [{"Image", "imageStyle", "backgroundStyle", "aspectRatio", "Position", "Size", "ZIndex"}]
       51 GETTABLEKS                       R12 R1 K22 ["media"]
       53 SETTABLEKS                       R12 R11 K13 ["Image"]
       55 GETTABLEKS                       R12 R1 K23 ["mediaStyle"]
       57 SETTABLEKS                       R12 R11 K15 ["imageStyle"]
       59 GETTABLEKS                       R12 R1 K16 ["backgroundStyle"]
       61 SETTABLEKS                       R12 R11 K16 ["backgroundStyle"]
       63 GETTABLEKS                       R12 R1 K17 ["aspectRatio"]
       65 SETTABLEKS                       R12 R11 K17 ["aspectRatio"]
       67 GETIMPORT                        R12 K26 [UDim2.fromOffset]
       69 MINUS                            R13 R4
       70 LOADN                            R14 0
       71 CALL                             R12 2 1
       72 SETTABLEKS                       R12 R11 K18 ["Position"]
       74 GETIMPORT                        R12 K28 [UDim2.new]
       76 LOADN                            R13 1
       77 MULK                             R14 R4 K29 [2]
       78 GETTABLEKS                       R16 R1 K30 ["height"]
       80 GETTABLEKS                       R15 R16 K31 ["Scale"]
       82 GETTABLEKS                       R17 R1 K30 ["height"]
       84 GETTABLEKS                       R16 R17 K32 ["Offset"]
       86 CALL                             R12 4 1
       87 SETTABLEKS                       R12 R11 K19 ["Size"]
       89 LOADN                            R12 0
       90 SETTABLEKS                       R12 R11 K20 ["ZIndex"]
       92 DUPTABLE                         R12 K34 [{"TransparencyGradient"}]
       93 GETUPVAL                         R14 4
       94 GETTABLEKS                       R13 R14 K3 ["createElement"]
       96 GETUPVAL                         R14 8
       97 DUPTABLE                         R15 K37 [{"fillDirection", "top"}]
       98 GETIMPORT                        R16 K41 [Enum.FillDirection.Vertical]
      100 SETTABLEKS                       R16 R15 K35 ["fillDirection"]
      102 LOADB                            R16 0
      103 SETTABLEKS                       R16 R15 K36 ["top"]
      105 CALL                             R13 2 1
      106 SETTABLEKS                       R13 R12 K33 ["TransparencyGradient"]
      108 CALL                             R9 3 1
      109 SETTABLEKS                       R9 R8 K12 ["RoundedCorners"]
      111 GETUPVAL                         R10 4
      112 GETTABLEKS                       R9 R10 K3 ["createElement"]
      114 GETUPVAL                         R10 7
      115 DUPTABLE                         R11 K42 [{"Image", "imageStyle", "backgroundStyle", "tag", "aspectRatio", "Position", "Size"}]
      116 GETTABLEKS                       R12 R1 K22 ["media"]
      118 SETTABLEKS                       R12 R11 K13 ["Image"]
      120 GETTABLEKS                       R12 R1 K23 ["mediaStyle"]
      122 SETTABLEKS                       R12 R11 K15 ["imageStyle"]
      124 GETTABLEKS                       R12 R1 K16 ["backgroundStyle"]
      126 SETTABLEKS                       R12 R11 K16 ["backgroundStyle"]
      128 GETTABLEKS                       R13 R3 K1 ["heroMedia"]
      130 GETTABLEKS                       R12 R13 K4 ["tag"]
      132 SETTABLEKS                       R12 R11 K4 ["tag"]
      134 GETTABLEKS                       R12 R1 K17 ["aspectRatio"]
      136 SETTABLEKS                       R12 R11 K17 ["aspectRatio"]
      138 GETIMPORT                        R12 K26 [UDim2.fromOffset]
      140 MINUS                            R13 R4
      141 LOADN                            R14 0
      142 CALL                             R12 2 1
      143 SETTABLEKS                       R12 R11 K18 ["Position"]
      145 GETIMPORT                        R12 K28 [UDim2.new]
      147 LOADN                            R13 1
      148 MULK                             R14 R4 K29 [2]
      149 GETTABLEKS                       R16 R1 K30 ["height"]
      151 GETTABLEKS                       R15 R16 K31 ["Scale"]
      153 GETTABLEKS                       R17 R1 K30 ["height"]
      155 GETTABLEKS                       R16 R17 K32 ["Offset"]
      157 CALL                             R12 4 1
      158 SETTABLEKS                       R12 R11 K19 ["Size"]
      160 DUPTABLE                         R12 K34 [{"TransparencyGradient"}]
      161 GETUPVAL                         R14 4
      162 GETTABLEKS                       R13 R14 K3 ["createElement"]
      164 GETUPVAL                         R14 8
      165 DUPTABLE                         R15 K37 [{"fillDirection", "top"}]
      166 GETIMPORT                        R16 K41 [Enum.FillDirection.Vertical]
      168 SETTABLEKS                       R16 R15 K35 ["fillDirection"]
      170 LOADB                            R16 1
      171 SETTABLEKS                       R16 R15 K36 ["top"]
      173 CALL                             R13 2 1
      174 SETTABLEKS                       R13 R12 K33 ["TransparencyGradient"]
      176 CALL                             R9 3 1
      177 SETTABLEKS                       R9 R8 K13 ["Image"]
      179 CALL                             R5 3 -1
      180 RETURN                           R5 -1

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
       21 GETTABLEKS                       R6 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R6 K10 ["Image"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R7 K11 ["Types"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R8 R0 K9 ["Components"]
       37 GETTABLEKS                       R7 R8 K12 ["View"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R9 R0 K13 ["Enums"]
       44 GETTABLEKS                       R8 R9 K14 ["DialogSize"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R10 R0 K9 ["Components"]
       51 GETTABLEKS                       R9 R10 K15 ["Gradient"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETIMPORT                        R13 K1 [script]
       58 GETTABLEKS                       R12 R13 K4 ["Parent"]
       60 GETTABLEKS                       R11 R12 K4 ["Parent"]
       62 GETTABLEKS                       R10 R11 K16 ["useDialog"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K6 [require]
       67 GETTABLEKS                       R12 R0 K17 ["Utility"]
       69 GETTABLEKS                       R11 R12 K18 ["withDefaults"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R12 K6 [require]
       74 GETIMPORT                        R16 K1 [script]
       76 GETTABLEKS                       R15 R16 K4 ["Parent"]
       78 GETTABLEKS                       R14 R15 K4 ["Parent"]
       80 GETTABLEKS                       R13 R14 K19 ["useDialogVariants"]
       82 CALL                             R12 1 1
       83 GETTABLEKS                       R11 R12 K19 ["useDialogVariants"]
       85 DUPTABLE                         R12 K21 [{"height"}]
       86 GETIMPORT                        R13 K24 [UDim.new]
       88 LOADN                            R14 1
       89 LOADN                            R15 0
       90 CALL                             R13 2 1
       91 SETTABLEKS                       R13 R12 K20 ["height"]
       93 DUPCLOSURE                       R13 K25 [PROTO_2]
       94 CAPTURE                          VAL R10
       95 CAPTURE                          VAL R12
       96 CAPTURE                          VAL R9
       97 CAPTURE                          VAL R11
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R6
      100 CAPTURE                          VAL R3
      101 CAPTURE                          VAL R4
      102 CAPTURE                          VAL R8
      103 RETURN                           R13 1
