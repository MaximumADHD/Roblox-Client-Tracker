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
       26 GETUPVAL                         R8 6
       27 GETTABLEKS                       R7 R8 K4 ["createElement"]
       29 GETUPVAL                         R8 7
       30 GETUPVAL                         R9 8
       31 MOVE                             R10 R2
       32 DUPTABLE                         R11 K10 [{"tag", "ref", "backgroundStyle", "stroke", "Size"}]
       33 GETTABLEKS                       R13 R5 K11 ["container"]
       35 GETTABLEKS                       R12 R13 K5 ["tag"]
       37 SETTABLEKS                       R12 R11 K5 ["tag"]
       39 SETTABLEKS                       R1 R11 K6 ["ref"]
       41 GETTABLEKS                       R13 R5 K11 ["container"]
       43 GETTABLEKS                       R12 R13 K7 ["backgroundStyle"]
       45 SETTABLEKS                       R12 R11 K7 ["backgroundStyle"]
       47 GETTABLEKS                       R13 R5 K11 ["container"]
       49 GETTABLEKS                       R12 R13 K8 ["stroke"]
       51 SETTABLEKS                       R12 R11 K8 ["stroke"]
       53 GETIMPORT                        R12 K14 [UDim2.fromOffset]
       55 MOVE                             R13 R6
       56 MOVE                             R14 R6
       57 CALL                             R12 2 1
       58 SETTABLEKS                       R12 R11 K9 ["Size"]
       60 CALL                             R9 2 1
       61 DUPTABLE                         R10 K17 [{"Image", "Indicator"}]
       62 GETUPVAL                         R12 6
       63 GETTABLEKS                       R11 R12 K4 ["createElement"]
       65 GETUPVAL                         R12 9
       66 DUPTABLE                         R13 K18 [{"Image", "tag", "backgroundStyle"}]
       67 GETUPVAL                         R14 10
       68 GETUPVAL                         R16 11
       69 GETTABLEKS                       R15 R16 K19 ["AvatarHeadShot"]
       71 GETTABLEKS                       R16 R2 K20 ["userId"]
       73 GETUPVAL                         R18 12
       74 GETTABLEKS                       R17 R18 K21 ["Medium"]
       76 CALL                             R14 3 1
       77 SETTABLEKS                       R14 R13 K15 ["Image"]
       79 GETTABLEKS                       R15 R5 K22 ["avatar"]
       81 GETTABLEKS                       R14 R15 K5 ["tag"]
       83 SETTABLEKS                       R14 R13 K5 ["tag"]
       85 GETTABLEKS                       R14 R2 K7 ["backgroundStyle"]
       87 SETTABLEKS                       R14 R13 K7 ["backgroundStyle"]
       89 CALL                             R11 2 1
       90 SETTABLEKS                       R11 R10 K15 ["Image"]
       92 GETTABLEKS                       R13 R5 K23 ["indicator"]
       94 GETTABLEKS                       R12 R13 K24 ["isVisible"]
       96 JUMPIFNOT                        R12 ; [+15]
       97 GETUPVAL                         R12 6
       98 GETTABLEKS                       R11 R12 K4 ["createElement"]
      100 GETUPVAL                         R12 7
      101 GETTABLEKS                       R13 R5 K25 ["indicatorBackplate"]
      103 GETUPVAL                         R15 6
      104 GETTABLEKS                       R14 R15 K4 ["createElement"]
      106 GETUPVAL                         R15 13
      107 GETTABLEKS                       R16 R5 K23 ["indicator"]
      109 CALL                             R14 2 -1
      110 CALL                             R11 -1 1
      111 JUMP                             ; [+1]
      112 LOADNIL                          R11
      113 SETTABLEKS                       R11 R10 K16 ["Indicator"]
      115 CALL                             R7 3 -1
      116 RETURN                           R7 -1

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
       18 GETTABLEKS                       R4 R5 K9 ["Types"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R6 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R6 K10 ["View"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R7 R0 K8 ["Components"]
       32 GETTABLEKS                       R6 R7 K11 ["Image"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETIMPORT                        R9 K1 [script]
       39 GETTABLEKS                       R8 R9 K4 ["Parent"]
       41 GETTABLEKS                       R7 R8 K12 ["Indicator"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R9 R0 K13 ["Utility"]
       48 GETTABLEKS                       R8 R9 K14 ["withDefaults"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K6 [require]
       53 GETTABLEKS                       R10 R0 K13 ["Utility"]
       55 GETTABLEKS                       R9 R10 K15 ["withCommonProps"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K6 [require]
       60 GETTABLEKS                       R11 R0 K13 ["Utility"]
       62 GETTABLEKS                       R10 R11 K16 ["getRbxThumb"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K6 [require]
       67 GETTABLEKS                       R12 R0 K17 ["Enums"]
       69 GETTABLEKS                       R11 R12 K18 ["ThumbnailType"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K6 [require]
       74 GETTABLEKS                       R13 R0 K17 ["Enums"]
       76 GETTABLEKS                       R12 R13 K19 ["ThumbnailSize"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K6 [require]
       81 GETIMPORT                        R15 K1 [script]
       83 GETTABLEKS                       R14 R15 K4 ["Parent"]
       85 GETTABLEKS                       R13 R14 K20 ["useAvatarVariants"]
       87 CALL                             R12 1 1
       88 GETIMPORT                        R13 K6 [require]
       90 GETTABLEKS                       R16 R0 K21 ["Providers"]
       92 GETTABLEKS                       R15 R16 K22 ["Style"]
       94 GETTABLEKS                       R14 R15 K23 ["useTokens"]
       96 CALL                             R13 1 1
       97 GETIMPORT                        R15 K6 [require]
       99 GETTABLEKS                       R18 R0 K21 ["Providers"]
      101 GETTABLEKS                       R17 R18 K22 ["Style"]
      103 GETTABLEKS                       R16 R17 K24 ["PresentationContext"]
      105 CALL                             R15 1 1
      106 GETTABLEKS                       R14 R15 K25 ["usePresentationContext"]
      108 GETIMPORT                        R15 K6 [require]
      110 GETTABLEKS                       R17 R0 K17 ["Enums"]
      112 GETTABLEKS                       R16 R17 K26 ["InputSize"]
      114 CALL                             R15 1 1
      115 GETIMPORT                        R16 K6 [require]
      117 GETTABLEKS                       R18 R0 K17 ["Enums"]
      119 GETTABLEKS                       R17 R18 K27 ["UserPresence"]
      121 CALL                             R16 1 1
      122 GETIMPORT                        R17 K6 [require]
      124 GETIMPORT                        R20 K1 [script]
      126 GETTABLEKS                       R19 R20 K4 ["Parent"]
      128 GETTABLEKS                       R18 R19 K28 ["getAvatarSize"]
      130 CALL                             R17 1 1
      131 DUPTABLE                         R18 K32 [{"size", "userPresence", "testId"}]
      132 GETTABLEKS                       R19 R15 K33 ["Medium"]
      134 SETTABLEKS                       R19 R18 K29 ["size"]
      136 GETTABLEKS                       R19 R16 K34 ["None"]
      138 SETTABLEKS                       R19 R18 K30 ["userPresence"]
      140 LOADK                            R19 K35 ["--foundation-avatar"]
      141 SETTABLEKS                       R19 R18 K31 ["testId"]
      143 DUPCLOSURE                       R19 K36 [PROTO_0]
      144 CAPTURE                          VAL R7
      145 CAPTURE                          VAL R18
      146 CAPTURE                          VAL R13
      147 CAPTURE                          VAL R14
      148 CAPTURE                          VAL R12
      149 CAPTURE                          VAL R17
      150 CAPTURE                          VAL R2
      151 CAPTURE                          VAL R4
      152 CAPTURE                          VAL R8
      153 CAPTURE                          VAL R5
      154 CAPTURE                          VAL R9
      155 CAPTURE                          VAL R10
      156 CAPTURE                          VAL R11
      157 CAPTURE                          VAL R6
      158 GETTABLEKS                       R20 R2 K37 ["memo"]
      160 GETTABLEKS                       R21 R2 K38 ["forwardRef"]
      162 MOVE                             R22 R19
      163 CALL                             R21 1 -1
      164 CALL                             R20 -1 -1
      165 RETURN                           R20 -1
