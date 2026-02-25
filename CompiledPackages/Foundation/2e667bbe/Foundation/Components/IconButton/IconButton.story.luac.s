PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+2]
        2 LOADK                            R0 K0 ["Inverse"]
        3 JUMP                             ; [+1]
        4 LOADK                            R0 K1 ["Normal"]
        5 GETIMPORT                        R1 K3 [print]
        7 LOADK                            R3 K4 ["%* %* IconButton (%*) activated"]
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
        4 DUPTABLE                         R3 K7 [{"icon", "variant", "onActivated", "isDisabled", "size", "isCircular"}]
        5 DUPTABLE                         R4 K9 [{"name", "variant"}]
        6 GETUPVAL                         R7 2
        7 GETTABLEKS                       R6 R7 K10 ["controls"]
        9 GETTABLEKS                       R5 R6 K8 ["name"]
       11 SETTABLEKS                       R5 R4 K8 ["name"]
       13 GETUPVAL                         R7 2
       14 GETTABLEKS                       R6 R7 K10 ["controls"]
       16 GETTABLEKS                       R5 R6 K2 ["variant"]
       18 SETTABLEKS                       R5 R4 K2 ["variant"]
       20 SETTABLEKS                       R4 R3 K1 ["icon"]
       22 GETUPVAL                         R4 3
       23 SETTABLEKS                       R4 R3 K2 ["variant"]
       25 NEWCLOSURE                       R4 P0
       26 CAPTURE                          UPVAL U4
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          VAL R0
       29 SETTABLEKS                       R4 R3 K3 ["onActivated"]
       31 GETUPVAL                         R5 5
       32 GETTABLEKS                       R4 R5 K4 ["isDisabled"]
       34 SETTABLEKS                       R4 R3 K4 ["isDisabled"]
       36 SETTABLEKS                       R0 R3 K5 ["size"]
       38 GETUPVAL                         R5 5
       39 GETTABLEKS                       R4 R5 K6 ["isCircular"]
       41 SETTABLEKS                       R4 R3 K6 ["isCircular"]
       43 CALL                             R1 2 -1
       44 RETURN                           R1 -1

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
       14 LOADK                            R8 K7 ["row gap-medium auto-xy size-0 align-y-center padding-medium radius-medium"]
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
       43 DUPTABLE                         R8 K18 [{"Gradient", "IconButtons"}]
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
      109 NEWTABLE                         R13 0 4
      111 GETUPVAL                         R15 7
      112 GETTABLEKS                       R14 R15 K35 ["Large"]
      114 GETUPVAL                         R16 7
      115 GETTABLEKS                       R15 R16 K36 ["Medium"]
      117 GETUPVAL                         R17 7
      118 GETTABLEKS                       R16 R17 K37 ["Small"]
      120 GETUPVAL                         R18 7
      121 GETTABLEKS                       R17 R18 K38 ["XSmall"]
      123 SETLIST                          R13 R14 4 [1]
      125 NEWCLOSURE                       R14 P0
      126 CAPTURE                          UPVAL U1
      127 CAPTURE                          UPVAL U8
      128 CAPTURE                          VAL R0
      129 CAPTURE                          UPVAL U3
      130 CAPTURE                          VAL R2
      131 CAPTURE                          VAL R1
      132 CALL                             R12 2 -1
      133 CALL                             R9 -1 1
      134 SETTABLEKS                       R9 R8 K17 ["IconButtons"]
      136 CALL                             R5 3 -1
      137 RETURN                           R5 -1

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
       21 GETTABLEKS                       R5 R1 K9 ["BuilderIcons"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R7 R0 K10 ["Components"]
       28 GETTABLEKS                       R6 R7 K11 ["View"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R8 R0 K10 ["Components"]
       35 GETTABLEKS                       R7 R8 K12 ["IconButton"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R10 R0 K13 ["Providers"]
       42 GETTABLEKS                       R9 R10 K14 ["Style"]
       44 GETTABLEKS                       R8 R9 K15 ["PresentationContext"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R11 R0 K13 ["Providers"]
       51 GETTABLEKS                       R10 R11 K14 ["Style"]
       53 GETTABLEKS                       R9 R10 K16 ["useTokens"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R11 R0 K17 ["Enums"]
       60 GETTABLEKS                       R10 R11 K18 ["InputSize"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R12 R0 K17 ["Enums"]
       67 GETTABLEKS                       R11 R12 K19 ["ButtonVariant"]
       69 CALL                             R10 1 1
       70 NEWTABLE                         R11 0 5
       72 GETTABLEKS                       R12 R10 K20 ["Utility"]
       74 GETTABLEKS                       R13 R10 K21 ["Standard"]
       76 GETTABLEKS                       R14 R10 K22 ["Emphasis"]
       78 GETTABLEKS                       R15 R10 K23 ["OverMedia"]
       80 GETTABLEKS                       R16 R10 K24 ["Alert"]
       82 SETLIST                          R11 R12 5 [1]
       84 DUPTABLE                         R12 K28 [{"summary", "stories", "controls"}]
       85 LOADK                            R13 K12 ["IconButton"]
       86 SETTABLEKS                       R13 R12 K25 ["summary"]
       88 GETTABLEKS                       R13 R3 K29 ["map"]
       90 MOVE                             R14 R11
       91 DUPCLOSURE                       R15 K30 [PROTO_3]
       92 CAPTURE                          VAL R8
       93 CAPTURE                          VAL R2
       94 CAPTURE                          VAL R5
       95 CAPTURE                          VAL R10
       96 CAPTURE                          VAL R7
       97 CAPTURE                          VAL R3
       98 CAPTURE                          VAL R9
       99 CAPTURE                          VAL R6
      100 CALL                             R13 2 1
      101 SETTABLEKS                       R13 R12 K26 ["stories"]
      103 DUPTABLE                         R13 K36 [{"name", "variant", "isDisabled", "isCircular", "isInverse"}]
      104 GETTABLEKS                       R14 R3 K37 ["values"]
      106 GETTABLEKS                       R15 R4 K38 ["Icon"]
      108 CALL                             R14 1 1
      109 SETTABLEKS                       R14 R13 K31 ["name"]
      111 GETTABLEKS                       R14 R3 K37 ["values"]
      113 GETTABLEKS                       R15 R4 K39 ["IconVariant"]
      115 CALL                             R14 1 1
      116 SETTABLEKS                       R14 R13 K32 ["variant"]
      118 LOADB                            R14 0
      119 SETTABLEKS                       R14 R13 K33 ["isDisabled"]
      121 LOADB                            R14 0
      122 SETTABLEKS                       R14 R13 K34 ["isCircular"]
      124 LOADB                            R14 0
      125 SETTABLEKS                       R14 R13 K35 ["isInverse"]
      127 SETTABLEKS                       R13 R12 K27 ["controls"]
      129 RETURN                           R12 1
