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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K5 [{"onActivated", "isDisabled", "size", "variant"}]
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R4 R3 K1 ["onActivated"]
       11 GETUPVAL                         R4 4
       12 GETTABLEKS                       R4 R4 K2 ["isDisabled"]
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
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K3 ["createElement"]
       12 GETUPVAL                         R6 2
       13 DUPTABLE                         R7 K7 [{["tag"] = "row gap-medium auto-xy size-0-0 align-y-center padding-medium radius-medium", ["backgroundStyle"]}]
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
       39 DUPTABLE                         R8 K17 [{"Gradient", "Inputs"}]
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
      105 NEWTABLE                         R13 0 3
      107 GETUPVAL                         R14 7
      108 GETTABLEKS                       R14 R14 K34 ["Medium"]
      110 GETUPVAL                         R15 7
      111 GETTABLEKS                       R15 R15 K35 ["Small"]
      113 GETUPVAL                         R16 7
      114 GETTABLEKS                       R16 R16 K36 ["XSmall"]
      116 SETLIST                          R13 R14 3 [1]
      118 NEWCLOSURE                       R14 P0
      119 CAPTURE                          UPVAL U1
      120 CAPTURE                          UPVAL U8
      121 CAPTURE                          VAL R2
      122 CAPTURE                          UPVAL U3
      123 CAPTURE                          VAL R1
      124 CALL                             R12 2 -1
      125 CALL                             R9 -1 1
      126 SETTABLEKS                       R9 R8 K16 ["Inputs"]
      128 CALL                             R5 3 -1
      129 RETURN                           R5 -1

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
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["View"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R6 K11 ["CloseAffordance"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K12 ["Providers"]
       37 GETTABLEKS                       R7 R7 K13 ["Style"]
       39 GETTABLEKS                       R7 R7 K14 ["PresentationContext"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K15 ["Enums"]
       46 GETTABLEKS                       R8 R8 K16 ["ColorMode"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K12 ["Providers"]
       53 GETTABLEKS                       R9 R9 K13 ["Style"]
       55 GETTABLEKS                       R9 R9 K17 ["useTokens"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K6 [require]
       60 GETTABLEKS                       R10 R0 K15 ["Enums"]
       62 GETTABLEKS                       R10 R10 K18 ["InputSize"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K6 [require]
       67 GETTABLEKS                       R11 R0 K15 ["Enums"]
       69 GETTABLEKS                       R11 R11 K19 ["CloseAffordanceVariant"]
       71 CALL                             R10 1 1
       72 DUPTABLE                         R11 K23 [{["summary"] = "CloseAffordance", ["stories"], ["controls"]}]
       73 GETTABLEKS                       R12 R3 K24 ["map"]
       75 MOVE                             R13 R10
       76 DUPCLOSURE                       R14 K25 [PROTO_3]
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R9
       84 CAPTURE                          VAL R5
       85 CALL                             R12 2 1
       86 SETTABLEKS                       R12 R11 K21 ["stories"]
       88 DUPTABLE                         R12 K29 [{["isDisabled"] = False, ["colorMode"]}]
       89 GETTABLEKS                       R13 R3 K30 ["values"]
       91 MOVE                             R14 R7
       92 CALL                             R13 1 1
       93 SETTABLEKS                       R13 R12 K28 ["colorMode"]
       95 SETTABLEKS                       R12 R11 K22 ["controls"]
       97 RETURN                           R11 1
