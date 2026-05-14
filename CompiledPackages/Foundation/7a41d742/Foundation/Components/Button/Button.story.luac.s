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
       18 DUPTABLE                         R7 K8 [{"tag", "backgroundStyle"}]
       19 LOADK                            R8 K9 ["row gap-medium auto-xy size-0 align-y-center padding-medium radius-medium"]
       20 SETTABLEKS                       R8 R7 K6 ["tag"]
       22 GETUPVAL                         R9 4
       23 GETUPVAL                         R10 5
       24 GETTABLEKS                       R10 R10 K10 ["OverMedia"]
       26 JUMPIFNOTEQ                      R9 R10 ; [+10]
       28 GETTABLEKS                       R8 R4 K11 ["Color"]
       30 GETTABLEKS                       R8 R8 K12 ["Extended"]
       32 GETTABLEKS                       R8 R8 K13 ["White"]
       34 GETTABLEKS                       R8 R8 K14 ["White_100"]
       36 JUMP                             ; [+8]
       37 JUMPIFNOT                        R2 ; [+6]
       38 GETTABLE                         R8 R4 R2
       39 GETTABLEKS                       R8 R8 K15 ["Surface"]
       41 GETTABLEKS                       R8 R8 K16 ["Surface_100"]
       43 JUMP                             ; [+1]
       44 LOADNIL                          R8
       45 SETTABLEKS                       R8 R7 K7 ["backgroundStyle"]
       47 DUPTABLE                         R8 K19 [{"Gradient", "Buttons"}]
       48 GETUPVAL                         R10 4
       49 GETUPVAL                         R11 5
       50 GETTABLEKS                       R11 R11 K10 ["OverMedia"]
       52 JUMPIFNOTEQ                      R10 R11 ; [+45]
       54 GETUPVAL                         R9 2
       55 GETTABLEKS                       R9 R9 K5 ["createElement"]
       57 LOADK                            R10 K20 ["UIGradient"]
       58 DUPTABLE                         R11 K21 [{"Color"}]
       59 GETIMPORT                        R12 K24 [ColorSequence.new]
       61 NEWTABLE                         R13 0 2
       63 GETIMPORT                        R14 K26 [ColorSequenceKeypoint.new]
       65 LOADN                            R15 0
       66 GETTABLEKS                       R16 R4 K11 ["Color"]
       68 GETTABLEKS                       R16 R16 K12 ["Extended"]
       70 GETTABLEKS                       R16 R16 K27 ["Green"]
       72 GETTABLEKS                       R16 R16 K28 ["Green_500"]
       74 GETTABLEKS                       R16 R16 K29 ["Color3"]
       76 CALL                             R14 2 1
       77 GETIMPORT                        R15 K26 [ColorSequenceKeypoint.new]
       79 LOADN                            R16 1
       80 GETTABLEKS                       R17 R4 K11 ["Color"]
       82 GETTABLEKS                       R17 R17 K12 ["Extended"]
       84 GETTABLEKS                       R17 R17 K30 ["Blue"]
       86 GETTABLEKS                       R17 R17 K31 ["Blue_500"]
       88 GETTABLEKS                       R17 R17 K29 ["Color3"]
       90 CALL                             R15 2 -1
       91 SETLIST                          R13 R14 -1 [1]
       93 CALL                             R12 1 1
       94 SETTABLEKS                       R12 R11 K11 ["Color"]
       96 CALL                             R9 2 1
       97 JUMP                             ; [+1]
       98 LOADNIL                          R9
       99 SETTABLEKS                       R9 R8 K17 ["Gradient"]
      101 GETUPVAL                         R9 2
      102 GETTABLEKS                       R9 R9 K5 ["createElement"]
      104 GETUPVAL                         R10 6
      105 GETTABLEKS                       R10 R10 K32 ["Provider"]
      107 DUPTABLE                         R11 K34 [{"value"}]
      108 SETTABLEKS                       R3 R11 K33 ["value"]
      110 GETUPVAL                         R12 7
      111 GETTABLEKS                       R12 R12 K35 ["map"]
      113 NEWTABLE                         R13 0 4
      115 GETUPVAL                         R14 8
      116 GETTABLEKS                       R14 R14 K36 ["Large"]
      118 GETUPVAL                         R15 8
      119 GETTABLEKS                       R15 R15 K37 ["Medium"]
      121 GETUPVAL                         R16 8
      122 GETTABLEKS                       R16 R16 K38 ["Small"]
      124 GETUPVAL                         R17 8
      125 GETTABLEKS                       R17 R17 K39 ["XSmall"]
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
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["Button"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Enums"]
       30 GETTABLEKS                       R6 R6 K12 ["ColorMode"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K13 ["Utility"]
       37 GETTABLEKS                       R7 R7 K14 ["Flags"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K11 ["Enums"]
       44 GETTABLEKS                       R8 R8 K15 ["InputSize"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K16 ["Providers"]
       51 GETTABLEKS                       R9 R9 K17 ["Style"]
       53 GETTABLEKS                       R9 R9 K18 ["PresentationContext"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K9 ["Components"]
       60 GETTABLEKS                       R10 R10 K19 ["View"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R11 R0 K16 ["Providers"]
       67 GETTABLEKS                       R11 R11 K17 ["Style"]
       69 GETTABLEKS                       R11 R11 K20 ["useTokens"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K6 [require]
       74 GETTABLEKS                       R12 R0 K11 ["Enums"]
       76 GETTABLEKS                       R12 R12 K21 ["ButtonVariant"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K6 [require]
       81 GETTABLEKS                       R13 R0 K11 ["Enums"]
       83 GETTABLEKS                       R13 R13 K22 ["FillBehavior"]
       85 CALL                             R12 1 1
       86 DUPTABLE                         R13 K26 [{"summary", "stories", "controls"}]
       87 LOADK                            R14 K10 ["Button"]
       88 SETTABLEKS                       R14 R13 K23 ["summary"]
       90 GETTABLEKS                       R14 R2 K27 ["map"]
       92 MOVE                             R15 R11
       93 DUPCLOSURE                       R16 K28 [PROTO_3]
       94 CAPTURE                          VAL R10
       95 CAPTURE                          VAL R6
       96 CAPTURE                          VAL R3
       97 CAPTURE                          VAL R9
       98 CAPTURE                          VAL R11
       99 CAPTURE                          VAL R8
      100 CAPTURE                          VAL R2
      101 CAPTURE                          VAL R7
      102 CAPTURE                          VAL R4
      103 CALL                             R14 2 1
      104 SETTABLEKS                       R14 R13 K24 ["stories"]
      106 DUPTABLE                         R14 K37 [{"icon", "text", "isDisabled", "isLoading", "colorMode", "fillBehavior", "inputDelay", "usePath2DSpinner"}]
      107 NEWTABLE                         R15 0 18
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
      127 LOADK                            R16 K54 ["component_assets/hexagon_24"]
      128 LOADK                            R17 K55 [""]
      129 SETLIST                          R15 R16 2 [17]
      131 SETTABLEKS                       R15 R14 K29 ["icon"]
      133 LOADK                            R15 K56 ["Lorem ipsum"]
      134 SETTABLEKS                       R15 R14 K30 ["text"]
      136 LOADB                            R15 0
      137 SETTABLEKS                       R15 R14 K31 ["isDisabled"]
      139 LOADB                            R15 0
      140 SETTABLEKS                       R15 R14 K32 ["isLoading"]
      142 GETTABLEKS                       R15 R2 K57 ["values"]
      144 MOVE                             R16 R5
      145 CALL                             R15 1 1
      146 SETTABLEKS                       R15 R14 K33 ["colorMode"]
      148 NEWTABLE                         R15 0 3
      150 GETTABLEKS                       R16 R3 K58 ["None"]
      152 GETTABLEKS                       R17 R12 K59 ["Fit"]
      154 GETTABLEKS                       R18 R12 K60 ["Fill"]
      156 SETLIST                          R15 R16 3 [1]
      158 SETTABLEKS                       R15 R14 K34 ["fillBehavior"]
      160 LOADN                            R15 0
      161 SETTABLEKS                       R15 R14 K35 ["inputDelay"]
      163 GETTABLEKS                       R15 R6 K61 ["FoundationUsePath2DSpinner"]
      165 SETTABLEKS                       R15 R14 K36 ["usePath2DSpinner"]
      167 SETTABLEKS                       R14 R13 K25 ["controls"]
      169 RETURN                           R13 1
