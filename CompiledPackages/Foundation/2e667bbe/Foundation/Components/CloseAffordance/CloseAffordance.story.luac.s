PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+2]
        2 LOADK                            R0 K0 ["Inverse"]
        3 JUMP                             ; [+1]
        4 LOADK                            R0 K1 ["Normal"]
        5 GETIMPORT                        R1 K3 [print]
        7 LOADK                            R3 K4 ["%* %* CloseAffordance (%*) activated"]
        8 MOVE                             R5 R0
        9 GETUPVAL                         R6 1
       10 GETUPVAL                         R7 2
       11 NAMECALL                         R3 R3 K5 ["format"]
       13 CALL                             R3 4 1
       14 MOVE                             R2 R3
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

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
        2 GETTABLEKS                       R2 R1 K1 ["isInverse"]
        4 DUPTABLE                         R3 K2 [{"isInverse"}]
        5 SETTABLEKS                       R2 R3 K1 ["isInverse"]
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
       31 JUMP                             ; [+9]
       32 JUMPIFNOT                        R2 ; [+7]
       33 GETTABLEKS                       R10 R4 K13 ["Inverse"]
       35 GETTABLEKS                       R9 R10 K14 ["Surface"]
       37 GETTABLEKS                       R8 R9 K15 ["Surface_0"]
       39 JUMP                             ; [+1]
       40 LOADNIL                          R8
       41 SETTABLEKS                       R8 R7 K5 ["backgroundStyle"]
       43 DUPTABLE                         R8 K18 [{"Gradient", "Inputs"}]
       44 GETUPVAL                         R10 3
       45 GETUPVAL                         R12 4
       46 GETTABLEKS                       R11 R12 K8 ["OverMedia"]
       48 JUMPIFNOTEQ                      R10 R11 ; [+45]
       50 GETUPVAL                         R10 1
       51 GETTABLEKS                       R9 R10 K3 ["createElement"]
       53 LOADK                            R10 K19 ["UIGradient"]
       54 DUPTABLE                         R11 K20 [{"Color"}]
       55 GETIMPORT                        R12 K23 [ColorSequence.new]
       57 NEWTABLE                         R13 0 2
       59 GETIMPORT                        R14 K25 [ColorSequenceKeypoint.new]
       61 LOADN                            R15 0
       62 GETTABLEKS                       R20 R4 K9 ["Color"]
       64 GETTABLEKS                       R19 R20 K10 ["Extended"]
       66 GETTABLEKS                       R18 R19 K26 ["Green"]
       68 GETTABLEKS                       R17 R18 K27 ["Green_500"]
       70 GETTABLEKS                       R16 R17 K28 ["Color3"]
       72 CALL                             R14 2 1
       73 GETIMPORT                        R15 K25 [ColorSequenceKeypoint.new]
       75 LOADN                            R16 1
       76 GETTABLEKS                       R21 R4 K9 ["Color"]
       78 GETTABLEKS                       R20 R21 K10 ["Extended"]
       80 GETTABLEKS                       R19 R20 K29 ["Blue"]
       82 GETTABLEKS                       R18 R19 K30 ["Blue_500"]
       84 GETTABLEKS                       R17 R18 K28 ["Color3"]
       86 CALL                             R15 2 -1
       87 SETLIST                          R13 R14 -1 [1]
       89 CALL                             R12 1 1
       90 SETTABLEKS                       R12 R11 K9 ["Color"]
       92 CALL                             R9 2 1
       93 JUMP                             ; [+1]
       94 LOADNIL                          R9
       95 SETTABLEKS                       R9 R8 K16 ["Gradient"]
       97 GETUPVAL                         R10 1
       98 GETTABLEKS                       R9 R10 K3 ["createElement"]
      100 GETUPVAL                         R11 5
      101 GETTABLEKS                       R10 R11 K31 ["Provider"]
      103 DUPTABLE                         R11 K33 [{"value"}]
      104 SETTABLEKS                       R3 R11 K32 ["value"]
      106 GETUPVAL                         R13 6
      107 GETTABLEKS                       R12 R13 K34 ["map"]
      109 NEWTABLE                         R13 0 3
      111 GETUPVAL                         R15 7
      112 GETTABLEKS                       R14 R15 K35 ["Medium"]
      114 GETUPVAL                         R16 7
      115 GETTABLEKS                       R15 R16 K36 ["Small"]
      117 GETUPVAL                         R17 7
      118 GETTABLEKS                       R16 R17 K37 ["XSmall"]
      120 SETLIST                          R13 R14 3 [1]
      122 NEWCLOSURE                       R14 P0
      123 CAPTURE                          UPVAL U1
      124 CAPTURE                          UPVAL U8
      125 CAPTURE                          VAL R2
      126 CAPTURE                          UPVAL U3
      127 CAPTURE                          VAL R1
      128 CALL                             R12 2 -1
      129 CALL                             R9 -1 1
      130 SETTABLEKS                       R9 R8 K17 ["Inputs"]
      132 CALL                             R5 3 -1
      133 RETURN                           R5 -1

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
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Dash"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R6 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R6 K10 ["View"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R7 K11 ["CloseAffordance"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R9 R0 K12 ["Providers"]
       37 GETTABLEKS                       R8 R9 K13 ["Style"]
       39 GETTABLEKS                       R7 R8 K14 ["PresentationContext"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R10 R0 K12 ["Providers"]
       46 GETTABLEKS                       R9 R10 K13 ["Style"]
       48 GETTABLEKS                       R8 R9 K15 ["useTokens"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K6 [require]
       53 GETTABLEKS                       R10 R0 K16 ["Enums"]
       55 GETTABLEKS                       R9 R10 K17 ["InputSize"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K6 [require]
       60 GETTABLEKS                       R11 R0 K16 ["Enums"]
       62 GETTABLEKS                       R10 R11 K18 ["CloseAffordanceVariant"]
       64 CALL                             R9 1 1
       65 DUPTABLE                         R10 K22 [{"summary", "stories", "controls"}]
       66 LOADK                            R11 K11 ["CloseAffordance"]
       67 SETTABLEKS                       R11 R10 K19 ["summary"]
       69 GETTABLEKS                       R11 R3 K23 ["map"]
       71 MOVE                             R12 R9
       72 DUPCLOSURE                       R13 K24 [PROTO_3]
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R5
       81 CALL                             R11 2 1
       82 SETTABLEKS                       R11 R10 K20 ["stories"]
       84 DUPTABLE                         R11 K27 [{"isDisabled", "isInverse"}]
       85 LOADB                            R12 0
       86 SETTABLEKS                       R12 R11 K25 ["isDisabled"]
       88 LOADB                            R12 0
       89 SETTABLEKS                       R12 R11 K26 ["isInverse"]
       91 SETTABLEKS                       R11 R10 K21 ["controls"]
       93 RETURN                           R10 1
