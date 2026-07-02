PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 3
        7 CALL                             R4 0 1
        8 GETUPVAL                         R5 4
        9 MOVE                             R6 R3
       10 GETTABLEKS                       R7 R2 K0 ["size"]
       12 GETTABLEKS                       R8 R2 K1 ["userPresence"]
       14 GETTABLEKS                       R9 R2 K2 ["backplateStyle"]
       16 GETTABLEKS                       R10 R4 K3 ["isIconSize"]
       18 CALL                             R5 5 1
       19 GETUPVAL                         R6 5
       20 MOVE                             R7 R3
       21 GETTABLEKS                       R8 R2 K0 ["size"]
       23 GETTABLEKS                       R9 R4 K3 ["isIconSize"]
       25 CALL                             R6 3 1
       26 GETUPVAL                         R7 6
       27 GETTABLEKS                       R7 R7 K4 ["createElement"]
       29 GETUPVAL                         R8 7
       30 GETUPVAL                         R9 8
       31 MOVE                             R10 R2
       32 DUPTABLE                         R11 K10 [{"tag", "ref", "backgroundStyle", "stroke", "Size"}]
       33 GETTABLEKS                       R12 R5 K11 ["container"]
       35 GETTABLEKS                       R12 R12 K5 ["tag"]
       37 SETTABLEKS                       R12 R11 K5 ["tag"]
       39 SETTABLEKS                       R1 R11 K6 ["ref"]
       41 GETTABLEKS                       R12 R5 K11 ["container"]
       43 GETTABLEKS                       R12 R12 K7 ["backgroundStyle"]
       45 SETTABLEKS                       R12 R11 K7 ["backgroundStyle"]
       47 GETTABLEKS                       R12 R5 K11 ["container"]
       49 GETTABLEKS                       R12 R12 K8 ["stroke"]
       51 SETTABLEKS                       R12 R11 K8 ["stroke"]
       53 GETIMPORT                        R12 K14 [UDim2.fromOffset]
       55 MOVE                             R13 R6
       56 MOVE                             R14 R6
       57 CALL                             R12 2 1
       58 SETTABLEKS                       R12 R11 K9 ["Size"]
       60 CALL                             R9 2 1
       61 DUPTABLE                         R10 K17 [{"Image", "Indicator"}]
       62 GETUPVAL                         R11 6
       63 GETTABLEKS                       R11 R11 K4 ["createElement"]
       65 GETUPVAL                         R12 9
       66 DUPTABLE                         R13 K18 [{"Image", "tag", "backgroundStyle"}]
       67 GETUPVAL                         R14 10
       68 GETUPVAL                         R15 11
       69 GETTABLEKS                       R15 R15 K19 ["AvatarHeadShot"]
       71 GETTABLEKS                       R16 R2 K20 ["userId"]
       73 GETUPVAL                         R17 12
       74 GETTABLEKS                       R17 R17 K21 ["Medium"]
       76 CALL                             R14 3 1
       77 SETTABLEKS                       R14 R13 K15 ["Image"]
       79 GETTABLEKS                       R14 R5 K22 ["avatar"]
       81 GETTABLEKS                       R14 R14 K5 ["tag"]
       83 SETTABLEKS                       R14 R13 K5 ["tag"]
       85 GETTABLEKS                       R14 R2 K7 ["backgroundStyle"]
       87 SETTABLEKS                       R14 R13 K7 ["backgroundStyle"]
       89 CALL                             R11 2 1
       90 SETTABLEKS                       R11 R10 K15 ["Image"]
       92 GETTABLEKS                       R12 R5 K23 ["indicator"]
       94 GETTABLEKS                       R12 R12 K24 ["isVisible"]
       96 JUMPIFNOT                        R12 ; [+29]
       97 GETUPVAL                         R11 6
       98 GETTABLEKS                       R11 R11 K4 ["createElement"]
      100 GETUPVAL                         R12 7
      101 GETUPVAL                         R13 13
      102 GETTABLEKS                       R13 R13 K25 ["join"]
      104 GETTABLEKS                       R14 R5 K26 ["indicatorBackplate"]
      106 DUPTABLE                         R15 K28 [{"testId"}]
      107 LOADK                            R17 K29 ["%*--indicator"]
      108 GETTABLEKS                       R19 R2 K27 ["testId"]
      110 NAMECALL                         R17 R17 K30 ["format"]
      112 CALL                             R17 2 1
      113 MOVE                             R16 R17
      114 SETTABLEKS                       R16 R15 K27 ["testId"]
      116 CALL                             R13 2 1
      117 GETUPVAL                         R14 6
      118 GETTABLEKS                       R14 R14 K4 ["createElement"]
      120 GETUPVAL                         R15 14
      121 GETTABLEKS                       R16 R5 K23 ["indicator"]
      123 CALL                             R14 2 -1
      124 CALL                             R11 -1 1
      125 JUMP                             ; [+1]
      126 LOADNIL                          R11
      127 SETTABLEKS                       R11 R10 K16 ["Indicator"]
      129 CALL                             R7 3 -1
      130 RETURN                           R7 -1

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
       16 GETTABLEKS                       R4 R1 K8 ["Dash"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["Image"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETIMPORT                        R6 K1 [script]
       30 GETTABLEKS                       R6 R6 K4 ["Parent"]
       32 GETTABLEKS                       R6 R6 K11 ["Indicator"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K9 ["Components"]
       39 GETTABLEKS                       R7 R7 K12 ["Types"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K9 ["Components"]
       46 GETTABLEKS                       R8 R8 K13 ["View"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K14 ["Utility"]
       53 GETTABLEKS                       R9 R9 K15 ["withCommonProps"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K14 ["Utility"]
       60 GETTABLEKS                       R10 R10 K16 ["withDefaults"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R11 R0 K17 ["Enums"]
       67 GETTABLEKS                       R11 R11 K18 ["ThumbnailSize"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R12 R0 K17 ["Enums"]
       74 GETTABLEKS                       R12 R12 K19 ["ThumbnailType"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K6 [require]
       79 GETTABLEKS                       R13 R0 K14 ["Utility"]
       81 GETTABLEKS                       R13 R13 K20 ["getRbxThumb"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K6 [require]
       86 GETIMPORT                        R14 K1 [script]
       88 GETTABLEKS                       R14 R14 K4 ["Parent"]
       90 GETTABLEKS                       R14 R14 K21 ["useAvatarVariants"]
       92 CALL                             R13 1 1
       93 GETIMPORT                        R14 K6 [require]
       95 GETTABLEKS                       R15 R0 K22 ["Providers"]
       97 GETTABLEKS                       R15 R15 K23 ["Style"]
       99 GETTABLEKS                       R15 R15 K24 ["useTokens"]
      101 CALL                             R14 1 1
      102 GETIMPORT                        R15 K6 [require]
      104 GETTABLEKS                       R16 R0 K22 ["Providers"]
      106 GETTABLEKS                       R16 R16 K23 ["Style"]
      108 GETTABLEKS                       R16 R16 K25 ["PresentationContext"]
      110 CALL                             R15 1 1
      111 GETTABLEKS                       R15 R15 K26 ["usePresentationContext"]
      113 GETIMPORT                        R16 K6 [require]
      115 GETTABLEKS                       R17 R0 K17 ["Enums"]
      117 GETTABLEKS                       R17 R17 K27 ["InputSize"]
      119 CALL                             R16 1 1
      120 GETIMPORT                        R17 K6 [require]
      122 GETTABLEKS                       R18 R0 K17 ["Enums"]
      124 GETTABLEKS                       R18 R18 K28 ["UserPresence"]
      126 CALL                             R17 1 1
      127 GETIMPORT                        R18 K6 [require]
      129 GETIMPORT                        R19 K1 [script]
      131 GETTABLEKS                       R19 R19 K4 ["Parent"]
      133 GETTABLEKS                       R19 R19 K29 ["getAvatarSize"]
      135 CALL                             R18 1 1
      136 DUPTABLE                         R19 K34 [{["size"], ["userPresence"], ["testId"] = "--foundation-avatar"}]
      137 GETTABLEKS                       R20 R16 K35 ["Medium"]
      139 SETTABLEKS                       R20 R19 K30 ["size"]
      141 GETTABLEKS                       R20 R17 K36 ["None"]
      143 SETTABLEKS                       R20 R19 K31 ["userPresence"]
      145 DUPCLOSURE                       R20 K37 [PROTO_0]
      146 CAPTURE                          VAL R9
      147 CAPTURE                          VAL R19
      148 CAPTURE                          VAL R14
      149 CAPTURE                          VAL R15
      150 CAPTURE                          VAL R13
      151 CAPTURE                          VAL R18
      152 CAPTURE                          VAL R2
      153 CAPTURE                          VAL R7
      154 CAPTURE                          VAL R8
      155 CAPTURE                          VAL R4
      156 CAPTURE                          VAL R12
      157 CAPTURE                          VAL R11
      158 CAPTURE                          VAL R10
      159 CAPTURE                          VAL R3
      160 CAPTURE                          VAL R5
      161 GETTABLEKS                       R21 R2 K38 ["memo"]
      163 GETTABLEKS                       R22 R2 K39 ["forwardRef"]
      165 MOVE                             R23 R20
      166 CALL                             R22 1 -1
      167 CALL                             R21 -1 -1
      168 RETURN                           R21 -1
