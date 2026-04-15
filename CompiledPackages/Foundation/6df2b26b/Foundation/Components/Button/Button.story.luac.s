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
        4 DUPTABLE                         R3 K10 [{"icon", "text", "variant", "isLoading", "onActivated", "isDisabled", "size", "fillBehavior", "inputDelay"}]
        5 GETUPVAL                         R6 2
        6 GETTABLEKS                       R5 R6 K1 ["icon"]
        8 JUMPIFNOTEQKS                    R5 K11 [""] ; [+3]
       10 LOADNIL                          R4
       11 JUMP                             ; [+5]
       12 GETUPVAL                         R6 3
       13 GETTABLEKS                       R5 R6 K12 ["controls"]
       15 GETTABLEKS                       R4 R5 K1 ["icon"]
       17 SETTABLEKS                       R4 R3 K1 ["icon"]
       19 GETUPVAL                         R5 2
       20 GETTABLEKS                       R4 R5 K2 ["text"]
       22 SETTABLEKS                       R4 R3 K2 ["text"]
       24 GETUPVAL                         R4 4
       25 SETTABLEKS                       R4 R3 K3 ["variant"]
       27 GETUPVAL                         R5 2
       28 GETTABLEKS                       R4 R5 K4 ["isLoading"]
       30 SETTABLEKS                       R4 R3 K4 ["isLoading"]
       32 NEWCLOSURE                       R4 P0
       33 CAPTURE                          UPVAL U5
       34 CAPTURE                          UPVAL U4
       35 CAPTURE                          VAL R0
       36 SETTABLEKS                       R4 R3 K5 ["onActivated"]
       38 GETUPVAL                         R5 2
       39 GETTABLEKS                       R4 R5 K6 ["isDisabled"]
       41 SETTABLEKS                       R4 R3 K6 ["isDisabled"]
       43 SETTABLEKS                       R0 R3 K7 ["size"]
       45 GETUPVAL                         R6 2
       46 GETTABLEKS                       R5 R6 K8 ["fillBehavior"]
       48 GETUPVAL                         R7 0
       49 GETTABLEKS                       R6 R7 K13 ["None"]
       51 JUMPIFNOTEQ                      R5 R6 ; [+3]
       53 LOADNIL                          R4
       54 JUMP                             ; [+3]
       55 GETUPVAL                         R5 2
       56 GETTABLEKS                       R4 R5 K8 ["fillBehavior"]
       58 SETTABLEKS                       R4 R3 K8 ["fillBehavior"]
       60 GETUPVAL                         R5 2
       61 GETTABLEKS                       R4 R5 K9 ["inputDelay"]
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
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R5 R6 K5 ["createElement"]
       17 GETUPVAL                         R6 3
       18 DUPTABLE                         R7 K8 [{"tag", "backgroundStyle"}]
       19 LOADK                            R8 K9 ["row gap-medium auto-xy size-0 align-y-center padding-medium radius-medium"]
       20 SETTABLEKS                       R8 R7 K6 ["tag"]
       22 GETUPVAL                         R9 4
       23 GETUPVAL                         R11 5
       24 GETTABLEKS                       R10 R11 K10 ["OverMedia"]
       26 JUMPIFNOTEQ                      R9 R10 ; [+10]
       28 GETTABLEKS                       R11 R4 K11 ["Color"]
       30 GETTABLEKS                       R10 R11 K12 ["Extended"]
       32 GETTABLEKS                       R9 R10 K13 ["White"]
       34 GETTABLEKS                       R8 R9 K14 ["White_100"]
       36 JUMP                             ; [+8]
       37 JUMPIFNOT                        R2 ; [+6]
       38 GETTABLE                         R10 R4 R2
       39 GETTABLEKS                       R9 R10 K15 ["Surface"]
       41 GETTABLEKS                       R8 R9 K16 ["Surface_100"]
       43 JUMP                             ; [+1]
       44 LOADNIL                          R8
       45 SETTABLEKS                       R8 R7 K7 ["backgroundStyle"]
       47 DUPTABLE                         R8 K19 [{"Gradient", "Buttons"}]
       48 GETUPVAL                         R10 4
       49 GETUPVAL                         R12 5
       50 GETTABLEKS                       R11 R12 K10 ["OverMedia"]
       52 JUMPIFNOTEQ                      R10 R11 ; [+45]
       54 GETUPVAL                         R10 2
       55 GETTABLEKS                       R9 R10 K5 ["createElement"]
       57 LOADK                            R10 K20 ["UIGradient"]
       58 DUPTABLE                         R11 K21 [{"Color"}]
       59 GETIMPORT                        R12 K24 [ColorSequence.new]
       61 NEWTABLE                         R13 0 2
       63 GETIMPORT                        R14 K26 [ColorSequenceKeypoint.new]
       65 LOADN                            R15 0
       66 GETTABLEKS                       R20 R4 K11 ["Color"]
       68 GETTABLEKS                       R19 R20 K12 ["Extended"]
       70 GETTABLEKS                       R18 R19 K27 ["Green"]
       72 GETTABLEKS                       R17 R18 K28 ["Green_500"]
       74 GETTABLEKS                       R16 R17 K29 ["Color3"]
       76 CALL                             R14 2 1
       77 GETIMPORT                        R15 K26 [ColorSequenceKeypoint.new]
       79 LOADN                            R16 1
       80 GETTABLEKS                       R21 R4 K11 ["Color"]
       82 GETTABLEKS                       R20 R21 K12 ["Extended"]
       84 GETTABLEKS                       R19 R20 K30 ["Blue"]
       86 GETTABLEKS                       R18 R19 K31 ["Blue_500"]
       88 GETTABLEKS                       R17 R18 K29 ["Color3"]
       90 CALL                             R15 2 -1
       91 SETLIST                          R13 R14 -1 [1]
       93 CALL                             R12 1 1
       94 SETTABLEKS                       R12 R11 K11 ["Color"]
       96 CALL                             R9 2 1
       97 JUMP                             ; [+1]
       98 LOADNIL                          R9
       99 SETTABLEKS                       R9 R8 K17 ["Gradient"]
      101 GETUPVAL                         R10 2
      102 GETTABLEKS                       R9 R10 K5 ["createElement"]
      104 GETUPVAL                         R11 6
      105 GETTABLEKS                       R10 R11 K32 ["Provider"]
      107 DUPTABLE                         R11 K34 [{"value"}]
      108 SETTABLEKS                       R3 R11 K33 ["value"]
      110 GETUPVAL                         R13 7
      111 GETTABLEKS                       R12 R13 K35 ["map"]
      113 NEWTABLE                         R13 0 4
      115 GETUPVAL                         R15 8
      116 GETTABLEKS                       R14 R15 K36 ["Large"]
      118 GETUPVAL                         R16 8
      119 GETTABLEKS                       R15 R16 K37 ["Medium"]
      121 GETUPVAL                         R17 8
      122 GETTABLEKS                       R16 R17 K38 ["Small"]
      124 GETUPVAL                         R18 8
      125 GETTABLEKS                       R17 R18 K39 ["XSmall"]
      127 SETLIST                          R13 R14 4 [1]
      129 NEWCLOSURE                       R14 P0
      130 CAPTURE                          UPVAL U2
      131 CAPTURE                          UPVAL U9
      132 CAPTURE                          VAL R1
      133 CAPTURE                          VAL R0
      134 CAPTURE                          UPVAL U4
      135 CAPTURE                          VAL R2
      136 CALL                             R12 2 -1
      137 CALL                             R9 -1 1
      138 SETTABLEKS                       R9 R8 K18 ["Buttons"]
      140 CALL                             R5 3 -1
      141 RETURN                           R5 -1

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
       21 GETTABLEKS                       R6 R0 K9 ["Utility"]
       23 GETTABLEKS                       R5 R6 K10 ["Flags"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K11 ["Components"]
       30 GETTABLEKS                       R6 R7 K12 ["View"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R8 R0 K11 ["Components"]
       37 GETTABLEKS                       R7 R8 K13 ["Button"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R10 R0 K14 ["Providers"]
       44 GETTABLEKS                       R9 R10 K15 ["Style"]
       46 GETTABLEKS                       R8 R9 K16 ["PresentationContext"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R10 R0 K17 ["Enums"]
       53 GETTABLEKS                       R9 R10 K18 ["ColorMode"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R12 R0 K14 ["Providers"]
       60 GETTABLEKS                       R11 R12 K15 ["Style"]
       62 GETTABLEKS                       R10 R11 K19 ["useTokens"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K6 [require]
       67 GETTABLEKS                       R12 R0 K17 ["Enums"]
       69 GETTABLEKS                       R11 R12 K20 ["InputSize"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K6 [require]
       74 GETTABLEKS                       R13 R0 K17 ["Enums"]
       76 GETTABLEKS                       R12 R13 K21 ["ButtonVariant"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K6 [require]
       81 GETTABLEKS                       R14 R0 K17 ["Enums"]
       83 GETTABLEKS                       R13 R14 K22 ["FillBehavior"]
       85 CALL                             R12 1 1
       86 DUPTABLE                         R13 K26 [{"summary", "stories", "controls"}]
       87 LOADK                            R14 K13 ["Button"]
       88 SETTABLEKS                       R14 R13 K23 ["summary"]
       90 GETTABLEKS                       R14 R3 K27 ["map"]
       92 MOVE                             R15 R11
       93 DUPCLOSURE                       R16 K28 [PROTO_3]
       94 CAPTURE                          VAL R9
       95 CAPTURE                          VAL R4
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R5
       98 CAPTURE                          VAL R11
       99 CAPTURE                          VAL R7
      100 CAPTURE                          VAL R3
      101 CAPTURE                          VAL R10
      102 CAPTURE                          VAL R6
      103 CALL                             R14 2 1
      104 SETTABLEKS                       R14 R13 K24 ["stories"]
      106 DUPTABLE                         R14 K37 [{"icon", "text", "isDisabled", "isLoading", "colorMode", "fillBehavior", "inputDelay", "usePath2DSpinner"}]
      107 NEWTABLE                         R15 0 17
      109 LOADK                            R16 K38 ["arrow-up-right-from-square"]
      110 LOADK                            R17 K39 ["chain-link"]
      111 LOADK                            R18 K40 ["tilt"]
      112 LOADK                            R19 K41 ["icons/placeholder/placeholderOn"]
      113 LOADK                            R20 K42 ["icons/common/robux"]
      114 LOADK                            R21 K43 ["icons/common/play"]
      115 LOADK                            R22 K44 ["icons/controls/media-play-large"]
      116 LOADK                            R23 K45 ["icons/controls/media-play-medium"]
      117 LOADK                            R24 K46 ["icons/controls/media-play-small"]
      118 LOADK                            R25 K47 ["icons/actions/pumpkin_medium"]
      119 LOADK                            R26 K48 ["icons/actions/accept_small"]
      120 LOADK                            R27 K49 ["icons/actions/friends/friendAdd"]
      121 LOADK                            R28 K50 ["icons/actions/friends/friendAdd_small"]
      122 LOADK                            R29 K51 ["icons/navigation/externallink_medium"]
      123 LOADK                            R30 K52 ["icons/actions/info"]
      124 LOADK                            R31 K53 ["icons/actions/info_small"]
      125 SETLIST                          R15 R16 16 [1]
      127 LOADK                            R16 K54 [""]
      128 SETLIST                          R15 R16 1 [17]
      130 SETTABLEKS                       R15 R14 K29 ["icon"]
      132 LOADK                            R15 K55 ["Lorem ipsum"]
      133 SETTABLEKS                       R15 R14 K30 ["text"]
      135 LOADB                            R15 0
      136 SETTABLEKS                       R15 R14 K31 ["isDisabled"]
      138 LOADB                            R15 0
      139 SETTABLEKS                       R15 R14 K32 ["isLoading"]
      141 GETTABLEKS                       R15 R3 K56 ["values"]
      143 MOVE                             R16 R8
      144 CALL                             R15 1 1
      145 SETTABLEKS                       R15 R14 K33 ["colorMode"]
      147 NEWTABLE                         R15 0 3
      149 GETTABLEKS                       R16 R2 K57 ["None"]
      151 GETTABLEKS                       R17 R12 K58 ["Fit"]
      153 GETTABLEKS                       R18 R12 K59 ["Fill"]
      155 SETLIST                          R15 R16 3 [1]
      157 SETTABLEKS                       R15 R14 K34 ["fillBehavior"]
      159 LOADN                            R15 0
      160 SETTABLEKS                       R15 R14 K35 ["inputDelay"]
      162 GETTABLEKS                       R15 R4 K60 ["FoundationUsePath2DSpinner"]
      164 SETTABLEKS                       R15 R14 K36 ["usePath2DSpinner"]
      166 SETTABLEKS                       R14 R13 K25 ["controls"]
      168 RETURN                           R13 1
