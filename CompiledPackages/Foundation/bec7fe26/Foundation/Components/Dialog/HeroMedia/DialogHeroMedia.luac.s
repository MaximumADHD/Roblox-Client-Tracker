PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setHasHeroMedia"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setHasHeroMedia"]
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
        8 GETUPVAL                         R4 4
        9 GETTABLEKS                       R4 R4 K0 ["useEffect"]
       11 NEWCLOSURE                       R5 P0
       12 CAPTURE                          VAL R2
       13 NEWTABLE                         R6 0 0
       15 CALL                             R4 2 0
       16 GETTABLEKS                       R4 R3 K1 ["heroMedia"]
       18 GETTABLEKS                       R4 R4 K2 ["offsetX"]
       20 GETUPVAL                         R5 4
       21 GETTABLEKS                       R5 R5 K3 ["createElement"]
       23 GETUPVAL                         R6 5
       24 DUPTABLE                         R7 K7 [{"tag", "LayoutOrder", "testId"}]
       25 GETTABLEKS                       R8 R3 K8 ["heroMediaWrapper"]
       27 GETTABLEKS                       R8 R8 K4 ["tag"]
       29 SETTABLEKS                       R8 R7 K4 ["tag"]
       31 GETUPVAL                         R8 6
       32 GETTABLEKS                       R8 R8 K9 ["MIN_LAYOUT_ORDER"]
       34 SETTABLEKS                       R8 R7 K5 ["LayoutOrder"]
       36 LOADK                            R9 K10 ["%*--hero-media"]
       37 GETTABLEKS                       R11 R2 K6 ["testId"]
       39 NAMECALL                         R9 R9 K11 ["format"]
       41 CALL                             R9 2 1
       42 MOVE                             R8 R9
       43 SETTABLEKS                       R8 R7 K6 ["testId"]
       45 DUPTABLE                         R8 K15 [{"TransparencyGradient", "RoundedCorners", "Image"}]
       46 GETUPVAL                         R10 7
       47 GETTABLEKS                       R10 R10 K16 ["FoundationDialogHeroMediaGradientFix"]
       49 JUMPIFNOT                        R10 ; [+2]
       50 LOADNIL                          R9
       51 JUMP                             ; [+10]
       52 GETUPVAL                         R9 4
       53 GETTABLEKS                       R9 R9 K3 ["createElement"]
       55 GETUPVAL                         R10 8
       56 DUPTABLE                         R11 K20 [{["fillDirection"], ["top"] = True}]
       57 GETIMPORT                        R12 K24 [Enum.FillDirection.Vertical]
       59 SETTABLEKS                       R12 R11 K17 ["fillDirection"]
       61 CALL                             R9 2 1
       62 SETTABLEKS                       R9 R8 K12 ["TransparencyGradient"]
       64 GETUPVAL                         R9 4
       65 GETTABLEKS                       R9 R9 K3 ["createElement"]
       67 GETUPVAL                         R10 9
       68 DUPTABLE                         R11 K32 [{["Image"], ["imageStyle"], ["backgroundStyle"], ["aspectRatio"], ["Position"], ["Size"], ["ZIndex"] = 0}]
       69 GETTABLEKS                       R12 R1 K33 ["media"]
       71 SETTABLEKS                       R12 R11 K14 ["Image"]
       73 GETTABLEKS                       R12 R1 K34 ["mediaStyle"]
       75 SETTABLEKS                       R12 R11 K25 ["imageStyle"]
       77 GETTABLEKS                       R12 R1 K26 ["backgroundStyle"]
       79 SETTABLEKS                       R12 R11 K26 ["backgroundStyle"]
       81 GETTABLEKS                       R12 R1 K27 ["aspectRatio"]
       83 SETTABLEKS                       R12 R11 K27 ["aspectRatio"]
       85 GETIMPORT                        R12 K37 [UDim2.new]
       87 LOADN                            R13 0
       88 MINUS                            R14 R4
       89 LOADN                            R15 0
       90 LOADN                            R16 0
       91 CALL                             R12 4 1
       92 SETTABLEKS                       R12 R11 K28 ["Position"]
       94 GETIMPORT                        R12 K37 [UDim2.new]
       96 LOADN                            R13 1
       97 MULK                             R14 R4 K38 [2]
       98 GETTABLEKS                       R15 R1 K39 ["height"]
      100 GETTABLEKS                       R15 R15 K40 ["Scale"]
      102 GETTABLEKS                       R16 R1 K39 ["height"]
      104 GETTABLEKS                       R16 R16 K41 ["Offset"]
      106 CALL                             R12 4 1
      107 SETTABLEKS                       R12 R11 K29 ["Size"]
      109 DUPTABLE                         R12 K42 [{"TransparencyGradient"}]
      110 GETUPVAL                         R13 4
      111 GETTABLEKS                       R13 R13 K3 ["createElement"]
      113 GETUPVAL                         R14 8
      114 DUPTABLE                         R15 K44 [{["fillDirection"], ["top"] = False}]
      115 GETIMPORT                        R16 K24 [Enum.FillDirection.Vertical]
      117 SETTABLEKS                       R16 R15 K17 ["fillDirection"]
      119 CALL                             R13 2 1
      120 SETTABLEKS                       R13 R12 K12 ["TransparencyGradient"]
      122 CALL                             R9 3 1
      123 SETTABLEKS                       R9 R8 K13 ["RoundedCorners"]
      125 GETUPVAL                         R9 4
      126 GETTABLEKS                       R9 R9 K3 ["createElement"]
      128 GETUPVAL                         R10 9
      129 DUPTABLE                         R11 K45 [{"Image", "imageStyle", "backgroundStyle", "tag", "aspectRatio", "Position", "Size"}]
      130 GETTABLEKS                       R12 R1 K33 ["media"]
      132 SETTABLEKS                       R12 R11 K14 ["Image"]
      134 GETTABLEKS                       R12 R1 K34 ["mediaStyle"]
      136 SETTABLEKS                       R12 R11 K25 ["imageStyle"]
      138 GETTABLEKS                       R12 R1 K26 ["backgroundStyle"]
      140 SETTABLEKS                       R12 R11 K26 ["backgroundStyle"]
      142 GETTABLEKS                       R12 R3 K1 ["heroMedia"]
      144 GETTABLEKS                       R12 R12 K4 ["tag"]
      146 SETTABLEKS                       R12 R11 K4 ["tag"]
      148 GETTABLEKS                       R12 R1 K27 ["aspectRatio"]
      150 SETTABLEKS                       R12 R11 K27 ["aspectRatio"]
      152 GETIMPORT                        R12 K37 [UDim2.new]
      154 LOADN                            R13 0
      155 MINUS                            R14 R4
      156 LOADN                            R15 0
      157 LOADN                            R16 0
      158 CALL                             R12 4 1
      159 SETTABLEKS                       R12 R11 K28 ["Position"]
      161 GETIMPORT                        R12 K37 [UDim2.new]
      163 LOADN                            R13 1
      164 MULK                             R14 R4 K38 [2]
      165 GETTABLEKS                       R15 R1 K39 ["height"]
      167 GETTABLEKS                       R15 R15 K40 ["Scale"]
      169 GETTABLEKS                       R16 R1 K39 ["height"]
      171 GETTABLEKS                       R16 R16 K41 ["Offset"]
      173 CALL                             R12 4 1
      174 SETTABLEKS                       R12 R11 K29 ["Size"]
      176 DUPTABLE                         R12 K42 [{"TransparencyGradient"}]
      177 GETUPVAL                         R14 7
      178 GETTABLEKS                       R14 R14 K16 ["FoundationDialogHeroMediaGradientFix"]
      180 JUMPIFNOT                        R14 ; [+11]
      181 GETUPVAL                         R13 4
      182 GETTABLEKS                       R13 R13 K3 ["createElement"]
      184 GETUPVAL                         R14 8
      185 DUPTABLE                         R15 K20 [{["fillDirection"], ["top"] = True}]
      186 GETIMPORT                        R16 K24 [Enum.FillDirection.Vertical]
      188 SETTABLEKS                       R16 R15 K17 ["fillDirection"]
      190 CALL                             R13 2 1
      191 JUMP                             ; [+1]
      192 LOADNIL                          R13
      193 SETTABLEKS                       R13 R12 K12 ["TransparencyGradient"]
      195 CALL                             R9 3 1
      196 SETTABLEKS                       R9 R8 K14 ["Image"]
      198 CALL                             R5 3 -1
      199 RETURN                           R5 -1

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
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["View"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R5 K10 ["Image"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Components"]
       32 GETTABLEKS                       R6 R6 K11 ["Types"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K12 ["Constants"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K13 ["Enums"]
       44 GETTABLEKS                       R8 R8 K14 ["DialogSize"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K15 ["Utility"]
       51 GETTABLEKS                       R9 R9 K16 ["Flags"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K15 ["Utility"]
       58 GETTABLEKS                       R10 R10 K17 ["withDefaults"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R11 R0 K8 ["Components"]
       65 GETTABLEKS                       R11 R11 K18 ["Gradient"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K6 [require]
       70 GETIMPORT                        R12 K1 [script]
       72 GETTABLEKS                       R12 R12 K4 ["Parent"]
       74 GETTABLEKS                       R12 R12 K4 ["Parent"]
       76 GETTABLEKS                       R12 R12 K19 ["useDialog"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K6 [require]
       81 GETIMPORT                        R13 K1 [script]
       83 GETTABLEKS                       R13 R13 K4 ["Parent"]
       85 GETTABLEKS                       R13 R13 K4 ["Parent"]
       87 GETTABLEKS                       R13 R13 K20 ["useDialogVariants"]
       89 CALL                             R12 1 1
       90 GETTABLEKS                       R12 R12 K20 ["useDialogVariants"]
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
