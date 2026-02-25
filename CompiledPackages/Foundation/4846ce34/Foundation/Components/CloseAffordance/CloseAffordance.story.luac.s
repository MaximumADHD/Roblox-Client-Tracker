PROTO_0:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R2 K2 ["%* %* Button (%*) activated"]
        3 GETUPVAL                         R4 0
        4 GETUPVAL                         R5 1
        5 GETUPVAL                         R6 2
        6 NAMECALL                         R2 R2 K3 ["format"]
        8 CALL                             R2 4 1
        9 MOVE                             R1 R2
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K5 [{"onActivated", "isDisabled", "size", "variant"}]
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R4 R3 K1 ["onActivated"]
       11 GETUPVAL                         R5 4
       12 GETTABLEKS                       R4 R5 K2 ["isDisabled"]
       14 SETTABLEKS                       R4 R3 K2 ["isDisabled"]
       16 SETTABLEKS                       R0 R3 K3 ["size"]
       18 GETUPVAL                         R4 3
       19 SETTABLEKS                       R4 R3 K4 ["variant"]
       21 CALL                             R1 2 -1
       22 RETURN                           R1 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETTABLEKS                       R2 R1 K1 ["colorMode"]
        4 DUPTABLE                         R3 K2 [{"colorMode"}]
        5 SETTABLEKS                       R2 R3 K1 ["colorMode"]
        7 GETUPVAL                         R4 0
        8 CALL                             R4 0 1
        9 GETUPVAL                         R6 1
       10 GETTABLEKS                       R5 R6 K3 ["createElement"]
       12 GETUPVAL                         R6 2
       13 DUPTABLE                         R7 K6 [{"tag", "backgroundStyle"}]
       14 LOADK                            R8 K7 ["row gap-medium auto-xy size-0-0 align-y-center padding-medium radius-medium"]
       15 SETTABLEKS                       R8 R7 K4 ["tag"]
       17 GETUPVAL                         R9 3
       18 GETUPVAL                         R11 4
       19 GETTABLEKS                       R10 R11 K8 ["OverMedia"]
       21 JUMPIFNOTEQ                      R9 R10 ; [+10]
       23 GETTABLEKS                       R11 R4 K9 ["Color"]
       25 GETTABLEKS                       R10 R11 K10 ["Extended"]
       27 GETTABLEKS                       R9 R10 K11 ["White"]
       29 GETTABLEKS                       R8 R9 K12 ["White_100"]
       31 JUMP                             ; [+8]
       32 JUMPIFNOT                        R2 ; [+6]
       33 GETTABLE                         R10 R4 R2
       34 GETTABLEKS                       R9 R10 K13 ["Surface"]
       36 GETTABLEKS                       R8 R9 K14 ["Surface_100"]
       38 JUMP                             ; [+1]
       39 LOADNIL                          R8
       40 SETTABLEKS                       R8 R7 K5 ["backgroundStyle"]
       42 DUPTABLE                         R8 K17 [{"Gradient", "Inputs"}]
       43 GETUPVAL                         R10 3
       44 GETUPVAL                         R12 4
       45 GETTABLEKS                       R11 R12 K8 ["OverMedia"]
       47 JUMPIFNOTEQ                      R10 R11 ; [+45]
       49 GETUPVAL                         R10 1
       50 GETTABLEKS                       R9 R10 K3 ["createElement"]
       52 LOADK                            R10 K18 ["UIGradient"]
       53 DUPTABLE                         R11 K19 [{"Color"}]
       54 GETIMPORT                        R12 K22 [ColorSequence.new]
       56 NEWTABLE                         R13 0 2
       58 GETIMPORT                        R14 K24 [ColorSequenceKeypoint.new]
       60 LOADN                            R15 0
       61 GETTABLEKS                       R20 R4 K9 ["Color"]
       63 GETTABLEKS                       R19 R20 K10 ["Extended"]
       65 GETTABLEKS                       R18 R19 K25 ["Green"]
       67 GETTABLEKS                       R17 R18 K26 ["Green_500"]
       69 GETTABLEKS                       R16 R17 K27 ["Color3"]
       71 CALL                             R14 2 1
       72 GETIMPORT                        R15 K24 [ColorSequenceKeypoint.new]
       74 LOADN                            R16 1
       75 GETTABLEKS                       R21 R4 K9 ["Color"]
       77 GETTABLEKS                       R20 R21 K10 ["Extended"]
       79 GETTABLEKS                       R19 R20 K28 ["Blue"]
       81 GETTABLEKS                       R18 R19 K29 ["Blue_500"]
       83 GETTABLEKS                       R17 R18 K27 ["Color3"]
       85 CALL                             R15 2 -1
       86 SETLIST                          R13 R14 -1 [1]
       88 CALL                             R12 1 1
       89 SETTABLEKS                       R12 R11 K9 ["Color"]
       91 CALL                             R9 2 1
       92 JUMP                             ; [+1]
       93 LOADNIL                          R9
       94 SETTABLEKS                       R9 R8 K15 ["Gradient"]
       96 GETUPVAL                         R10 1
       97 GETTABLEKS                       R9 R10 K3 ["createElement"]
       99 GETUPVAL                         R11 5
      100 GETTABLEKS                       R10 R11 K30 ["Provider"]
      102 DUPTABLE                         R11 K32 [{"value"}]
      103 SETTABLEKS                       R3 R11 K31 ["value"]
      105 GETUPVAL                         R13 6
      106 GETTABLEKS                       R12 R13 K33 ["map"]
      108 NEWTABLE                         R13 0 3
      110 GETUPVAL                         R15 7
      111 GETTABLEKS                       R14 R15 K34 ["Medium"]
      113 GETUPVAL                         R16 7
      114 GETTABLEKS                       R15 R16 K35 ["Small"]
      116 GETUPVAL                         R17 7
      117 GETTABLEKS                       R16 R17 K36 ["XSmall"]
      119 SETLIST                          R13 R14 3 [1]
      121 NEWCLOSURE                       R14 P0
      122 CAPTURE                          UPVAL U1
      123 CAPTURE                          UPVAL U8
      124 CAPTURE                          VAL R2
      125 CAPTURE                          UPVAL U3
      126 CAPTURE                          VAL R1
      127 CALL                             R12 2 -1
      128 CALL                             R9 -1 1
      129 SETTABLEKS                       R9 R8 K16 ["Inputs"]
      131 CALL                             R5 3 -1
      132 RETURN                           R5 -1

PROTO_3:
        0 DUPTABLE                         R1 K2 [{"name", "story"}]
        1 SETTABLEKS                       R0 R1 K0 ["name"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          UPVAL U5
       11 CAPTURE                          UPVAL U6
       12 CAPTURE                          UPVAL U7
       13 SETTABLEKS                       R2 R1 K1 ["story"]
       15 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R6 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R6 K10 ["CloseAffordance"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K11 ["Enums"]
       30 GETTABLEKS                       R6 R7 K12 ["ColorMode"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R9 R0 K13 ["Providers"]
       37 GETTABLEKS                       R8 R9 K14 ["Style"]
       39 GETTABLEKS                       R7 R8 K15 ["PresentationContext"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R9 R0 K9 ["Components"]
       46 GETTABLEKS                       R8 R9 K16 ["View"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R11 R0 K13 ["Providers"]
       53 GETTABLEKS                       R10 R11 K14 ["Style"]
       55 GETTABLEKS                       R9 R10 K17 ["useTokens"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K6 [require]
       60 GETTABLEKS                       R11 R0 K11 ["Enums"]
       62 GETTABLEKS                       R10 R11 K18 ["InputSize"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K6 [require]
       67 GETTABLEKS                       R12 R0 K11 ["Enums"]
       69 GETTABLEKS                       R11 R12 K19 ["CloseAffordanceVariant"]
       71 CALL                             R10 1 1
       72 DUPTABLE                         R11 K23 [{"summary", "stories", "controls"}]
       73 LOADK                            R12 K10 ["CloseAffordance"]
       74 SETTABLEKS                       R12 R11 K20 ["summary"]
       76 GETTABLEKS                       R12 R2 K24 ["map"]
       78 MOVE                             R13 R10
       79 DUPCLOSURE                       R14 K25 [PROTO_3]
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R10
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R9
       87 CAPTURE                          VAL R4
       88 CALL                             R12 2 1
       89 SETTABLEKS                       R12 R11 K21 ["stories"]
       91 DUPTABLE                         R12 K28 [{"isDisabled", "colorMode"}]
       92 LOADB                            R13 0
       93 SETTABLEKS                       R13 R12 K26 ["isDisabled"]
       95 GETTABLEKS                       R13 R2 K29 ["values"]
       97 MOVE                             R14 R5
       98 CALL                             R13 1 1
       99 SETTABLEKS                       R13 R12 K27 ["colorMode"]
      101 SETTABLEKS                       R12 R11 K22 ["controls"]
      103 RETURN                           R11 1
