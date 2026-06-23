PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETUPVAL                         R3 1
        3 MOVE                             R4 R2
        4 GETTABLEKS                       R5 R0 K0 ["size"]
        6 LOADB                            R6 0
        7 CALL                             R3 3 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R4 R4 K1 ["FoundationBaseMenuBeta"]
       11 JUMPIFNOT                        R4 ; [+85]
       12 GETTABLEKS                       R5 R0 K2 ["menuHasCheck"]
       14 JUMPIFEQKB                       R5 TRUE ; [+2]
       16 LOADB                            R4 0 +1
       17 LOADB                            R4 1
       18 JUMPIFNOT                        R4 ; [+12]
       19 GETTABLEKS                       R7 R3 K4 ["container"]
       21 GETTABLEKS                       R7 R7 K5 ["paddingLeftWithCheck"]
       23 ORK                              R6 R7 K3 [0]
       24 GETTABLEKS                       R8 R3 K6 ["title"]
       26 GETTABLEKS                       R8 R8 K7 ["checkColumnWidth"]
       28 ORK                              R7 R8 K3 [0]
       29 ADD                              R5 R6 R7
       30 JUMP                             ; [+5]
       31 GETTABLEKS                       R6 R3 K4 ["container"]
       33 GETTABLEKS                       R6 R6 K8 ["paddingLeftWithoutCheck"]
       35 ORK                              R5 R6 K3 [0]
       36 GETTABLEKS                       R7 R3 K4 ["container"]
       38 GETTABLEKS                       R7 R7 K9 ["paddingRight"]
       40 ORK                              R6 R7 K3 [0]
       41 GETUPVAL                         R7 3
       42 GETTABLEKS                       R7 R7 K10 ["createElement"]
       44 GETUPVAL                         R8 4
       45 GETUPVAL                         R9 5
       46 MOVE                             R10 R0
       47 DUPTABLE                         R11 K14 [{"tag", "padding", "ref"}]
       48 LOADK                            R13 K15 ["row align-y-center %*"]
       49 GETTABLEKS                       R15 R3 K4 ["container"]
       51 GETTABLEKS                       R15 R15 K11 ["tag"]
       53 NAMECALL                         R13 R13 K16 ["format"]
       55 CALL                             R13 2 1
       56 MOVE                             R12 R13
       57 SETTABLEKS                       R12 R11 K11 ["tag"]
       59 DUPTABLE                         R12 K19 [{"left", "right"}]
       60 GETIMPORT                        R13 K22 [UDim.new]
       62 LOADN                            R14 0
       63 MOVE                             R15 R5
       64 CALL                             R13 2 1
       65 SETTABLEKS                       R13 R12 K17 ["left"]
       67 GETIMPORT                        R13 K22 [UDim.new]
       69 LOADN                            R14 0
       70 MOVE                             R15 R6
       71 CALL                             R13 2 1
       72 SETTABLEKS                       R13 R12 K18 ["right"]
       74 SETTABLEKS                       R12 R11 K12 ["padding"]
       76 SETTABLEKS                       R1 R11 K13 ["ref"]
       78 CALL                             R9 2 1
       79 GETUPVAL                         R10 3
       80 GETTABLEKS                       R10 R10 K10 ["createElement"]
       82 GETUPVAL                         R11 6
       83 DUPTABLE                         R12 K24 [{"Text", "tag"}]
       84 GETTABLEKS                       R13 R0 K25 ["text"]
       86 SETTABLEKS                       R13 R12 K23 ["Text"]
       88 GETTABLEKS                       R13 R3 K6 ["title"]
       90 GETTABLEKS                       R13 R13 K11 ["tag"]
       92 SETTABLEKS                       R13 R12 K11 ["tag"]
       94 CALL                             R10 2 -1
       95 CALL                             R7 -1 -1
       96 RETURN                           R7 -1
       97 GETUPVAL                         R4 3
       98 GETTABLEKS                       R4 R4 K10 ["createElement"]
      100 GETUPVAL                         R5 4
      101 GETUPVAL                         R6 5
      102 MOVE                             R7 R0
      103 DUPTABLE                         R8 K26 [{"tag", "ref"}]
      104 GETTABLEKS                       R9 R3 K4 ["container"]
      106 GETTABLEKS                       R9 R9 K11 ["tag"]
      108 SETTABLEKS                       R9 R8 K11 ["tag"]
      110 SETTABLEKS                       R1 R8 K13 ["ref"]
      112 CALL                             R6 2 1
      113 GETUPVAL                         R7 3
      114 GETTABLEKS                       R7 R7 K10 ["createElement"]
      116 GETUPVAL                         R8 6
      117 DUPTABLE                         R9 K24 [{"Text", "tag"}]
      118 GETTABLEKS                       R10 R0 K25 ["text"]
      120 SETTABLEKS                       R10 R9 K23 ["Text"]
      122 GETTABLEKS                       R10 R3 K6 ["title"]
      124 GETTABLEKS                       R10 R10 K11 ["tag"]
      126 SETTABLEKS                       R10 R9 K11 ["tag"]
      128 CALL                             R7 2 -1
      129 CALL                             R4 -1 -1
      130 RETURN                           R4 -1

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
       18 GETTABLEKS                       R4 R4 K9 ["Text"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R5 K10 ["Types"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Components"]
       32 GETTABLEKS                       R6 R6 K11 ["View"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K12 ["Providers"]
       39 GETTABLEKS                       R7 R7 K13 ["Style"]
       41 GETTABLEKS                       R7 R7 K14 ["useTokens"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R8 R0 K15 ["Utility"]
       48 GETTABLEKS                       R8 R8 K16 ["withCommonProps"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K6 [require]
       53 GETTABLEKS                       R9 R0 K17 ["Enums"]
       55 GETTABLEKS                       R9 R9 K18 ["ControlState"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K6 [require]
       60 GETTABLEKS                       R10 R0 K17 ["Enums"]
       62 GETTABLEKS                       R10 R10 K19 ["InputSize"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K6 [require]
       67 GETTABLEKS                       R11 R0 K15 ["Utility"]
       69 GETTABLEKS                       R11 R11 K20 ["Flags"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K6 [require]
       74 GETIMPORT                        R12 K1 [script]
       76 GETTABLEKS                       R12 R12 K4 ["Parent"]
       78 GETTABLEKS                       R12 R12 K21 ["useBaseMenuItemVariants"]
       80 CALL                             R11 1 1
       81 DUPCLOSURE                       R12 K22 [PROTO_0]
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R11
       84 CAPTURE                          VAL R10
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R3
       89 GETTABLEKS                       R13 R2 K23 ["memo"]
       91 GETTABLEKS                       R14 R2 K24 ["forwardRef"]
       93 MOVE                             R15 R12
       94 CALL                             R14 1 -1
       95 CALL                             R13 -1 -1
       96 RETURN                           R13 -1
