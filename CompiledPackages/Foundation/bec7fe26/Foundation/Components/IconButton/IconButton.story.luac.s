PROTO_0:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R2 K2 ["%* %* IconButton (%*) activated"]
        3 GETUPVAL                         R4 0
        4 GETUPVAL                         R5 1
        5 GETUPVAL                         R6 2
        6 NAMECALL                         R2 R2 K3 ["format"]
        8 CALL                             R2 4 1
        9 MOVE                             R1 R2
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K7 [{"icon", "variant", "onActivated", "isDisabled", "size", "isCircular"}]
        5 DUPTABLE                         R4 K9 [{"name", "variant"}]
        6 GETUPVAL                         R5 2
        7 GETTABLEKS                       R5 R5 K10 ["controls"]
        9 GETTABLEKS                       R5 R5 K8 ["name"]
       11 SETTABLEKS                       R5 R4 K8 ["name"]
       13 GETUPVAL                         R5 2
       14 GETTABLEKS                       R5 R5 K10 ["controls"]
       16 GETTABLEKS                       R5 R5 K2 ["variant"]
       18 SETTABLEKS                       R5 R4 K2 ["variant"]
       20 SETTABLEKS                       R4 R3 K1 ["icon"]
       22 GETUPVAL                         R4 3
       23 SETTABLEKS                       R4 R3 K2 ["variant"]
       25 NEWCLOSURE                       R4 P0
       26 CAPTURE                          UPVAL U4
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          VAL R0
       29 SETTABLEKS                       R4 R3 K3 ["onActivated"]
       31 GETUPVAL                         R4 5
       32 GETTABLEKS                       R4 R4 K4 ["isDisabled"]
       34 SETTABLEKS                       R4 R3 K4 ["isDisabled"]
       36 SETTABLEKS                       R0 R3 K5 ["size"]
       38 GETUPVAL                         R4 5
       39 GETTABLEKS                       R4 R4 K6 ["isCircular"]
       41 SETTABLEKS                       R4 R3 K6 ["isCircular"]
       43 CALL                             R1 2 -1
       44 RETURN                           R1 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETTABLEKS                       R2 R1 K1 ["colorMode"]
        4 DUPTABLE                         R3 K2 [{"colorMode"}]
        5 SETTABLEKS                       R2 R3 K1 ["colorMode"]
        7 GETUPVAL                         R4 0
        8 CALL                             R4 0 1
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K3 ["createElement"]
       12 GETUPVAL                         R6 2
       13 DUPTABLE                         R7 K7 [{["tag"] = "row gap-medium auto-xy size-0 align-y-center padding-medium radius-medium", ["backgroundStyle"]}]
       14 GETUPVAL                         R9 3
       15 GETUPVAL                         R10 4
       16 GETTABLEKS                       R10 R10 K8 ["OverMedia"]
       18 JUMPIFNOTEQ                      R9 R10 ; [+10]
       20 GETTABLEKS                       R8 R4 K9 ["Color"]
       22 GETTABLEKS                       R8 R8 K10 ["Extended"]
       24 GETTABLEKS                       R8 R8 K11 ["White"]
       26 GETTABLEKS                       R8 R8 K12 ["White_100"]
       28 JUMP                             ; [+8]
       29 JUMPIFNOT                        R2 ; [+6]
       30 GETTABLE                         R8 R4 R2
       31 GETTABLEKS                       R8 R8 K13 ["Surface"]
       33 GETTABLEKS                       R8 R8 K14 ["Surface_100"]
       35 JUMP                             ; [+1]
       36 LOADNIL                          R8
       37 SETTABLEKS                       R8 R7 K6 ["backgroundStyle"]
       39 DUPTABLE                         R8 K17 [{"Gradient", "IconButtons"}]
       40 GETUPVAL                         R10 3
       41 GETUPVAL                         R11 4
       42 GETTABLEKS                       R11 R11 K8 ["OverMedia"]
       44 JUMPIFNOTEQ                      R10 R11 ; [+45]
       46 GETUPVAL                         R9 1
       47 GETTABLEKS                       R9 R9 K3 ["createElement"]
       49 LOADK                            R10 K18 ["UIGradient"]
       50 DUPTABLE                         R11 K19 [{"Color"}]
       51 GETIMPORT                        R12 K22 [ColorSequence.new]
       53 NEWTABLE                         R13 0 2
       55 GETIMPORT                        R14 K24 [ColorSequenceKeypoint.new]
       57 LOADN                            R15 0
       58 GETTABLEKS                       R16 R4 K9 ["Color"]
       60 GETTABLEKS                       R16 R16 K10 ["Extended"]
       62 GETTABLEKS                       R16 R16 K25 ["Green"]
       64 GETTABLEKS                       R16 R16 K26 ["Green_500"]
       66 GETTABLEKS                       R16 R16 K27 ["Color3"]
       68 CALL                             R14 2 1
       69 GETIMPORT                        R15 K24 [ColorSequenceKeypoint.new]
       71 LOADN                            R16 1
       72 GETTABLEKS                       R17 R4 K9 ["Color"]
       74 GETTABLEKS                       R17 R17 K10 ["Extended"]
       76 GETTABLEKS                       R17 R17 K28 ["Blue"]
       78 GETTABLEKS                       R17 R17 K29 ["Blue_500"]
       80 GETTABLEKS                       R17 R17 K27 ["Color3"]
       82 CALL                             R15 2 -1
       83 SETLIST                          R13 R14 -1 [1]
       85 CALL                             R12 1 1
       86 SETTABLEKS                       R12 R11 K9 ["Color"]
       88 CALL                             R9 2 1
       89 JUMP                             ; [+1]
       90 LOADNIL                          R9
       91 SETTABLEKS                       R9 R8 K15 ["Gradient"]
       93 GETUPVAL                         R9 1
       94 GETTABLEKS                       R9 R9 K3 ["createElement"]
       96 GETUPVAL                         R10 5
       97 GETTABLEKS                       R10 R10 K30 ["Provider"]
       99 DUPTABLE                         R11 K32 [{"value"}]
      100 SETTABLEKS                       R3 R11 K31 ["value"]
      102 GETUPVAL                         R12 6
      103 GETTABLEKS                       R12 R12 K33 ["map"]
      105 NEWTABLE                         R13 0 4
      107 GETUPVAL                         R14 7
      108 GETTABLEKS                       R14 R14 K34 ["Large"]
      110 GETUPVAL                         R15 7
      111 GETTABLEKS                       R15 R15 K35 ["Medium"]
      113 GETUPVAL                         R16 7
      114 GETTABLEKS                       R16 R16 K36 ["Small"]
      116 GETUPVAL                         R17 7
      117 GETTABLEKS                       R17 R17 K37 ["XSmall"]
      119 SETLIST                          R13 R14 4 [1]
      121 NEWCLOSURE                       R14 P0
      122 CAPTURE                          UPVAL U1
      123 CAPTURE                          UPVAL U8
      124 CAPTURE                          VAL R0
      125 CAPTURE                          UPVAL U3
      126 CAPTURE                          VAL R2
      127 CAPTURE                          VAL R1
      128 CALL                             R12 2 -1
      129 CALL                             R9 -1 1
      130 SETTABLEKS                       R9 R8 K16 ["IconButtons"]
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
       21 GETTABLEKS                       R5 R1 K9 ["BuilderIcons"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Components"]
       28 GETTABLEKS                       R6 R6 K11 ["View"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R0 K10 ["Components"]
       35 GETTABLEKS                       R7 R7 K12 ["IconButton"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R8 R0 K13 ["Providers"]
       42 GETTABLEKS                       R8 R8 K14 ["Style"]
       44 GETTABLEKS                       R8 R8 K15 ["PresentationContext"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K16 ["Enums"]
       51 GETTABLEKS                       R9 R9 K17 ["ColorMode"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K13 ["Providers"]
       58 GETTABLEKS                       R10 R10 K14 ["Style"]
       60 GETTABLEKS                       R10 R10 K18 ["useTokens"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R11 R0 K16 ["Enums"]
       67 GETTABLEKS                       R11 R11 K19 ["InputSize"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R12 R0 K16 ["Enums"]
       74 GETTABLEKS                       R12 R12 K20 ["ButtonVariant"]
       76 CALL                             R11 1 1
       77 NEWTABLE                         R12 0 5
       79 GETTABLEKS                       R13 R11 K21 ["Utility"]
       81 GETTABLEKS                       R14 R11 K22 ["Standard"]
       83 GETTABLEKS                       R15 R11 K23 ["Emphasis"]
       85 GETTABLEKS                       R16 R11 K24 ["OverMedia"]
       87 GETTABLEKS                       R17 R11 K25 ["Alert"]
       89 SETLIST                          R12 R13 5 [1]
       91 DUPTABLE                         R13 K29 [{["summary"] = "IconButton", ["stories"], ["controls"]}]
       92 GETTABLEKS                       R14 R3 K30 ["map"]
       94 MOVE                             R15 R12
       95 DUPCLOSURE                       R16 K31 [PROTO_3]
       96 CAPTURE                          VAL R9
       97 CAPTURE                          VAL R2
       98 CAPTURE                          VAL R5
       99 CAPTURE                          VAL R11
      100 CAPTURE                          VAL R7
      101 CAPTURE                          VAL R3
      102 CAPTURE                          VAL R10
      103 CAPTURE                          VAL R6
      104 CALL                             R14 2 1
      105 SETTABLEKS                       R14 R13 K27 ["stories"]
      107 DUPTABLE                         R14 K38 [{["name"], ["variant"], ["isDisabled"] = False, ["isCircular"] = False, ["colorMode"]}]
      108 GETTABLEKS                       R15 R3 K39 ["values"]
      110 GETTABLEKS                       R16 R4 K40 ["Icon"]
      112 CALL                             R15 1 1
      113 SETTABLEKS                       R15 R14 K32 ["name"]
      115 GETTABLEKS                       R15 R3 K39 ["values"]
      117 GETTABLEKS                       R16 R4 K41 ["IconVariant"]
      119 CALL                             R15 1 1
      120 SETTABLEKS                       R15 R14 K33 ["variant"]
      122 GETTABLEKS                       R15 R3 K39 ["values"]
      124 MOVE                             R16 R8
      125 CALL                             R15 1 1
      126 SETTABLEKS                       R15 R14 K37 ["colorMode"]
      128 SETTABLEKS                       R14 R13 K28 ["controls"]
      130 RETURN                           R13 1
