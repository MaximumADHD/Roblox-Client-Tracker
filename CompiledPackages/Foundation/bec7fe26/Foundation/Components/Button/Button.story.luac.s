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
        4 DUPTABLE                         R3 K10 [{"icon", "text", "variant", "isLoading", "onActivated", "isDisabled", "size", "fillBehavior", "inputDelay"}]
        5 GETUPVAL                         R5 2
        6 GETTABLEKS                       R5 R5 K1 ["icon"]
        8 JUMPIFNOTEQKS                    R5 K11 [""] ; [+3]
       10 LOADNIL                          R4
       11 JUMP                             ; [+5]
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R4 R4 K12 ["controls"]
       15 GETTABLEKS                       R4 R4 K1 ["icon"]
       17 SETTABLEKS                       R4 R3 K1 ["icon"]
       19 GETUPVAL                         R4 2
       20 GETTABLEKS                       R4 R4 K2 ["text"]
       22 SETTABLEKS                       R4 R3 K2 ["text"]
       24 GETUPVAL                         R4 4
       25 SETTABLEKS                       R4 R3 K3 ["variant"]
       27 GETUPVAL                         R4 2
       28 GETTABLEKS                       R4 R4 K4 ["isLoading"]
       30 SETTABLEKS                       R4 R3 K4 ["isLoading"]
       32 NEWCLOSURE                       R4 P0
       33 CAPTURE                          UPVAL U5
       34 CAPTURE                          UPVAL U4
       35 CAPTURE                          VAL R0
       36 SETTABLEKS                       R4 R3 K5 ["onActivated"]
       38 GETUPVAL                         R4 2
       39 GETTABLEKS                       R4 R4 K6 ["isDisabled"]
       41 SETTABLEKS                       R4 R3 K6 ["isDisabled"]
       43 SETTABLEKS                       R0 R3 K7 ["size"]
       45 GETUPVAL                         R5 2
       46 GETTABLEKS                       R5 R5 K8 ["fillBehavior"]
       48 GETUPVAL                         R6 0
       49 GETTABLEKS                       R6 R6 K13 ["None"]
       51 JUMPIFNOTEQ                      R5 R6 ; [+3]
       53 LOADNIL                          R4
       54 JUMP                             ; [+3]
       55 GETUPVAL                         R4 2
       56 GETTABLEKS                       R4 R4 K8 ["fillBehavior"]
       58 SETTABLEKS                       R4 R3 K8 ["fillBehavior"]
       60 GETUPVAL                         R4 2
       61 GETTABLEKS                       R4 R4 K9 ["inputDelay"]
       63 SETTABLEKS                       R4 R3 K9 ["inputDelay"]
       65 CALL                             R1 2 -1
       66 RETURN                           R1 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETTABLEKS                       R2 R1 K1 ["colorMode"]
        4 DUPTABLE                         R3 K2 [{"colorMode"}]
        5 SETTABLEKS                       R2 R3 K1 ["colorMode"]
        7 GETUPVAL                         R4 0
        8 CALL                             R4 0 1
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R6 R1 K3 ["usePath2DSpinner"]
       12 SETTABLEKS                       R6 R5 K4 ["FoundationUsePath2DSpinner"]
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R5 R5 K5 ["createElement"]
       17 GETUPVAL                         R6 3
       18 DUPTABLE                         R7 K9 [{["tag"] = "row gap-medium auto-xy size-0 align-y-center padding-medium radius-medium", ["backgroundStyle"]}]
       19 GETUPVAL                         R9 4
       20 GETUPVAL                         R10 5
       21 GETTABLEKS                       R10 R10 K10 ["OverMedia"]
       23 JUMPIFNOTEQ                      R9 R10 ; [+10]
       25 GETTABLEKS                       R8 R4 K11 ["Color"]
       27 GETTABLEKS                       R8 R8 K12 ["Extended"]
       29 GETTABLEKS                       R8 R8 K13 ["White"]
       31 GETTABLEKS                       R8 R8 K14 ["White_100"]
       33 JUMP                             ; [+8]
       34 JUMPIFNOT                        R2 ; [+6]
       35 GETTABLE                         R8 R4 R2
       36 GETTABLEKS                       R8 R8 K15 ["Surface"]
       38 GETTABLEKS                       R8 R8 K16 ["Surface_100"]
       40 JUMP                             ; [+1]
       41 LOADNIL                          R8
       42 SETTABLEKS                       R8 R7 K8 ["backgroundStyle"]
       44 DUPTABLE                         R8 K19 [{"Gradient", "Buttons"}]
       45 GETUPVAL                         R10 4
       46 GETUPVAL                         R11 5
       47 GETTABLEKS                       R11 R11 K10 ["OverMedia"]
       49 JUMPIFNOTEQ                      R10 R11 ; [+45]
       51 GETUPVAL                         R9 2
       52 GETTABLEKS                       R9 R9 K5 ["createElement"]
       54 LOADK                            R10 K20 ["UIGradient"]
       55 DUPTABLE                         R11 K21 [{"Color"}]
       56 GETIMPORT                        R12 K24 [ColorSequence.new]
       58 NEWTABLE                         R13 0 2
       60 GETIMPORT                        R14 K26 [ColorSequenceKeypoint.new]
       62 LOADN                            R15 0
       63 GETTABLEKS                       R16 R4 K11 ["Color"]
       65 GETTABLEKS                       R16 R16 K12 ["Extended"]
       67 GETTABLEKS                       R16 R16 K27 ["Green"]
       69 GETTABLEKS                       R16 R16 K28 ["Green_500"]
       71 GETTABLEKS                       R16 R16 K29 ["Color3"]
       73 CALL                             R14 2 1
       74 GETIMPORT                        R15 K26 [ColorSequenceKeypoint.new]
       76 LOADN                            R16 1
       77 GETTABLEKS                       R17 R4 K11 ["Color"]
       79 GETTABLEKS                       R17 R17 K12 ["Extended"]
       81 GETTABLEKS                       R17 R17 K30 ["Blue"]
       83 GETTABLEKS                       R17 R17 K31 ["Blue_500"]
       85 GETTABLEKS                       R17 R17 K29 ["Color3"]
       87 CALL                             R15 2 -1
       88 SETLIST                          R13 R14 -1 [1]
       90 CALL                             R12 1 1
       91 SETTABLEKS                       R12 R11 K11 ["Color"]
       93 CALL                             R9 2 1
       94 JUMP                             ; [+1]
       95 LOADNIL                          R9
       96 SETTABLEKS                       R9 R8 K17 ["Gradient"]
       98 GETUPVAL                         R9 2
       99 GETTABLEKS                       R9 R9 K5 ["createElement"]
      101 GETUPVAL                         R10 6
      102 GETTABLEKS                       R10 R10 K32 ["Provider"]
      104 DUPTABLE                         R11 K34 [{"value"}]
      105 SETTABLEKS                       R3 R11 K33 ["value"]
      107 GETUPVAL                         R12 7
      108 GETTABLEKS                       R12 R12 K35 ["map"]
      110 NEWTABLE                         R13 0 4
      112 GETUPVAL                         R14 8
      113 GETTABLEKS                       R14 R14 K36 ["Large"]
      115 GETUPVAL                         R15 8
      116 GETTABLEKS                       R15 R15 K37 ["Medium"]
      118 GETUPVAL                         R16 8
      119 GETTABLEKS                       R16 R16 K38 ["Small"]
      121 GETUPVAL                         R17 8
      122 GETTABLEKS                       R17 R17 K39 ["XSmall"]
      124 SETLIST                          R13 R14 4 [1]
      126 NEWCLOSURE                       R14 P0
      127 CAPTURE                          UPVAL U2
      128 CAPTURE                          UPVAL U9
      129 CAPTURE                          VAL R1
      130 CAPTURE                          VAL R0
      131 CAPTURE                          UPVAL U4
      132 CAPTURE                          VAL R2
      133 CALL                             R12 2 -1
      134 CALL                             R9 -1 1
      135 SETTABLEKS                       R9 R8 K18 ["Buttons"]
      137 CALL                             R5 3 -1
      138 RETURN                           R5 -1

PROTO_3:
        0 DUPTABLE                         R1 K2 [{"name", "story"}]
        1 SETTABLEKS                       R0 R1 K0 ["name"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          UPVAL U5
       11 CAPTURE                          UPVAL U6
       12 CAPTURE                          UPVAL U7
       13 CAPTURE                          UPVAL U8
       14 SETTABLEKS                       R2 R1 K1 ["story"]
       16 RETURN                           R1 1

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
       21 GETTABLEKS                       R5 R0 K9 ["Utility"]
       23 GETTABLEKS                       R5 R5 K10 ["Flags"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Components"]
       30 GETTABLEKS                       R6 R6 K12 ["View"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K11 ["Components"]
       37 GETTABLEKS                       R7 R7 K13 ["Button"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K14 ["Providers"]
       44 GETTABLEKS                       R8 R8 K15 ["Style"]
       46 GETTABLEKS                       R8 R8 K16 ["PresentationContext"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K17 ["Enums"]
       53 GETTABLEKS                       R9 R9 K18 ["ColorMode"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K14 ["Providers"]
       60 GETTABLEKS                       R10 R10 K15 ["Style"]
       62 GETTABLEKS                       R10 R10 K19 ["useTokens"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K6 [require]
       67 GETTABLEKS                       R11 R0 K17 ["Enums"]
       69 GETTABLEKS                       R11 R11 K20 ["InputSize"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K6 [require]
       74 GETTABLEKS                       R12 R0 K17 ["Enums"]
       76 GETTABLEKS                       R12 R12 K21 ["ButtonVariant"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K6 [require]
       81 GETTABLEKS                       R13 R0 K17 ["Enums"]
       83 GETTABLEKS                       R13 R13 K22 ["FillBehavior"]
       85 CALL                             R12 1 1
       86 DUPTABLE                         R13 K26 [{["summary"] = "Button", ["stories"], ["controls"]}]
       87 GETTABLEKS                       R14 R3 K27 ["map"]
       89 MOVE                             R15 R11
       90 DUPCLOSURE                       R16 K28 [PROTO_3]
       91 CAPTURE                          VAL R9
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R2
       94 CAPTURE                          VAL R5
       95 CAPTURE                          VAL R11
       96 CAPTURE                          VAL R7
       97 CAPTURE                          VAL R3
       98 CAPTURE                          VAL R10
       99 CAPTURE                          VAL R6
      100 CALL                             R14 2 1
      101 SETTABLEKS                       R14 R13 K24 ["stories"]
      103 DUPTABLE                         R14 K40 [{["icon"], ["text"] = "Lorem ipsum", ["isDisabled"] = False, ["isLoading"] = False, ["colorMode"], ["fillBehavior"], ["inputDelay"] = 0, ["usePath2DSpinner"]}]
      104 NEWTABLE                         R15 0 17
      106 LOADK                            R16 K41 ["arrow-up-right-from-square"]
      107 LOADK                            R17 K42 ["chain-link"]
      108 LOADK                            R18 K43 ["tilt"]
      109 LOADK                            R19 K44 ["icons/placeholder/placeholderOn"]
      110 LOADK                            R20 K45 ["icons/common/robux"]
      111 LOADK                            R21 K46 ["icons/common/play"]
      112 LOADK                            R22 K47 ["icons/controls/media-play-large"]
      113 LOADK                            R23 K48 ["icons/controls/media-play-medium"]
      114 LOADK                            R24 K49 ["icons/controls/media-play-small"]
      115 LOADK                            R25 K50 ["icons/actions/pumpkin_medium"]
      116 LOADK                            R26 K51 ["icons/actions/accept_small"]
      117 LOADK                            R27 K52 ["icons/actions/friends/friendAdd"]
      118 LOADK                            R28 K53 ["icons/actions/friends/friendAdd_small"]
      119 LOADK                            R29 K54 ["icons/navigation/externallink_medium"]
      120 LOADK                            R30 K55 ["icons/actions/info"]
      121 LOADK                            R31 K56 ["icons/actions/info_small"]
      122 SETLIST                          R15 R16 16 [1]
      124 LOADK                            R16 K57 [""]
      125 SETLIST                          R15 R16 1 [17]
      127 SETTABLEKS                       R15 R14 K29 ["icon"]
      129 GETTABLEKS                       R15 R3 K58 ["values"]
      131 MOVE                             R16 R8
      132 CALL                             R15 1 1
      133 SETTABLEKS                       R15 R14 K35 ["colorMode"]
      135 NEWTABLE                         R15 0 3
      137 GETTABLEKS                       R16 R2 K59 ["None"]
      139 GETTABLEKS                       R17 R12 K60 ["Fit"]
      141 GETTABLEKS                       R18 R12 K61 ["Fill"]
      143 SETLIST                          R15 R16 3 [1]
      145 SETTABLEKS                       R15 R14 K36 ["fillBehavior"]
      147 GETTABLEKS                       R15 R4 K62 ["FoundationUsePath2DSpinner"]
      149 SETTABLEKS                       R15 R14 K39 ["usePath2DSpinner"]
      151 SETTABLEKS                       R14 R13 K25 ["controls"]
      153 RETURN                           R13 1
