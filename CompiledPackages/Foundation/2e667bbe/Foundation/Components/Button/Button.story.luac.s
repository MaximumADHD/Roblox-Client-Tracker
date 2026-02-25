PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+2]
        2 LOADK                            R0 K0 ["Inverse"]
        3 JUMP                             ; [+1]
        4 LOADK                            R0 K1 ["Normal"]
        5 GETIMPORT                        R1 K3 [print]
        7 LOADK                            R3 K4 ["%* %* Button (%*) activated"]
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
        2 GETTABLEKS                       R2 R1 K1 ["isInverse"]
        4 DUPTABLE                         R3 K2 [{"isInverse"}]
        5 SETTABLEKS                       R2 R3 K1 ["isInverse"]
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
       36 JUMP                             ; [+9]
       37 JUMPIFNOT                        R2 ; [+7]
       38 GETTABLEKS                       R10 R4 K15 ["Inverse"]
       40 GETTABLEKS                       R9 R10 K16 ["Surface"]
       42 GETTABLEKS                       R8 R9 K17 ["Surface_0"]
       44 JUMP                             ; [+1]
       45 LOADNIL                          R8
       46 SETTABLEKS                       R8 R7 K7 ["backgroundStyle"]
       48 DUPTABLE                         R8 K20 [{"Gradient", "Buttons"}]
       49 GETUPVAL                         R10 4
       50 GETUPVAL                         R12 5
       51 GETTABLEKS                       R11 R12 K10 ["OverMedia"]
       53 JUMPIFNOTEQ                      R10 R11 ; [+45]
       55 GETUPVAL                         R10 2
       56 GETTABLEKS                       R9 R10 K5 ["createElement"]
       58 LOADK                            R10 K21 ["UIGradient"]
       59 DUPTABLE                         R11 K22 [{"Color"}]
       60 GETIMPORT                        R12 K25 [ColorSequence.new]
       62 NEWTABLE                         R13 0 2
       64 GETIMPORT                        R14 K27 [ColorSequenceKeypoint.new]
       66 LOADN                            R15 0
       67 GETTABLEKS                       R20 R4 K11 ["Color"]
       69 GETTABLEKS                       R19 R20 K12 ["Extended"]
       71 GETTABLEKS                       R18 R19 K28 ["Green"]
       73 GETTABLEKS                       R17 R18 K29 ["Green_500"]
       75 GETTABLEKS                       R16 R17 K30 ["Color3"]
       77 CALL                             R14 2 1
       78 GETIMPORT                        R15 K27 [ColorSequenceKeypoint.new]
       80 LOADN                            R16 1
       81 GETTABLEKS                       R21 R4 K11 ["Color"]
       83 GETTABLEKS                       R20 R21 K12 ["Extended"]
       85 GETTABLEKS                       R19 R20 K31 ["Blue"]
       87 GETTABLEKS                       R18 R19 K32 ["Blue_500"]
       89 GETTABLEKS                       R17 R18 K30 ["Color3"]
       91 CALL                             R15 2 -1
       92 SETLIST                          R13 R14 -1 [1]
       94 CALL                             R12 1 1
       95 SETTABLEKS                       R12 R11 K11 ["Color"]
       97 CALL                             R9 2 1
       98 JUMP                             ; [+1]
       99 LOADNIL                          R9
      100 SETTABLEKS                       R9 R8 K18 ["Gradient"]
      102 GETUPVAL                         R10 2
      103 GETTABLEKS                       R9 R10 K5 ["createElement"]
      105 GETUPVAL                         R11 6
      106 GETTABLEKS                       R10 R11 K33 ["Provider"]
      108 DUPTABLE                         R11 K35 [{"value"}]
      109 SETTABLEKS                       R3 R11 K34 ["value"]
      111 GETUPVAL                         R13 7
      112 GETTABLEKS                       R12 R13 K36 ["map"]
      114 NEWTABLE                         R13 0 4
      116 GETUPVAL                         R15 8
      117 GETTABLEKS                       R14 R15 K37 ["Large"]
      119 GETUPVAL                         R16 8
      120 GETTABLEKS                       R15 R16 K38 ["Medium"]
      122 GETUPVAL                         R17 8
      123 GETTABLEKS                       R16 R17 K39 ["Small"]
      125 GETUPVAL                         R18 8
      126 GETTABLEKS                       R17 R18 K40 ["XSmall"]
      128 SETLIST                          R13 R14 4 [1]
      130 NEWCLOSURE                       R14 P0
      131 CAPTURE                          UPVAL U2
      132 CAPTURE                          UPVAL U9
      133 CAPTURE                          VAL R1
      134 CAPTURE                          VAL R0
      135 CAPTURE                          UPVAL U4
      136 CAPTURE                          VAL R2
      137 CALL                             R12 2 -1
      138 CALL                             R9 -1 1
      139 SETTABLEKS                       R9 R8 K19 ["Buttons"]
      141 CALL                             R5 3 -1
      142 RETURN                           R5 -1

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
       51 GETTABLEKS                       R11 R0 K14 ["Providers"]
       53 GETTABLEKS                       R10 R11 K15 ["Style"]
       55 GETTABLEKS                       R9 R10 K17 ["useTokens"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K6 [require]
       60 GETTABLEKS                       R11 R0 K18 ["Enums"]
       62 GETTABLEKS                       R10 R11 K19 ["InputSize"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K6 [require]
       67 GETTABLEKS                       R12 R0 K18 ["Enums"]
       69 GETTABLEKS                       R11 R12 K20 ["ButtonVariant"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K6 [require]
       74 GETTABLEKS                       R13 R0 K18 ["Enums"]
       76 GETTABLEKS                       R12 R13 K21 ["FillBehavior"]
       78 CALL                             R11 1 1
       79 DUPTABLE                         R12 K25 [{"summary", "stories", "controls"}]
       80 LOADK                            R13 K13 ["Button"]
       81 SETTABLEKS                       R13 R12 K22 ["summary"]
       83 GETTABLEKS                       R13 R3 K26 ["map"]
       85 MOVE                             R14 R10
       86 DUPCLOSURE                       R15 K27 [PROTO_3]
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R5
       91 CAPTURE                          VAL R10
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R3
       94 CAPTURE                          VAL R9
       95 CAPTURE                          VAL R6
       96 CALL                             R13 2 1
       97 SETTABLEKS                       R13 R12 K23 ["stories"]
       99 DUPTABLE                         R13 K36 [{"icon", "text", "isDisabled", "isLoading", "isInverse", "fillBehavior", "inputDelay", "usePath2DSpinner"}]
      100 NEWTABLE                         R14 0 16
      102 LOADK                            R15 K37 ["chain-link"]
      103 LOADK                            R16 K38 ["tilt"]
      104 LOADK                            R17 K39 ["icons/placeholder/placeholderOn"]
      105 LOADK                            R18 K40 ["icons/common/robux"]
      106 LOADK                            R19 K41 ["icons/common/play"]
      107 LOADK                            R20 K42 ["icons/controls/media-play-large"]
      108 LOADK                            R21 K43 ["icons/controls/media-play-medium"]
      109 LOADK                            R22 K44 ["icons/controls/media-play-small"]
      110 LOADK                            R23 K45 ["icons/actions/pumpkin_medium"]
      111 LOADK                            R24 K46 ["icons/actions/accept_small"]
      112 LOADK                            R25 K47 ["icons/actions/friends/friendAdd"]
      113 LOADK                            R26 K48 ["icons/actions/friends/friendAdd_small"]
      114 LOADK                            R27 K49 ["icons/navigation/externallink_medium"]
      115 LOADK                            R28 K50 ["icons/actions/info"]
      116 LOADK                            R29 K51 ["icons/actions/info_small"]
      117 LOADK                            R30 K52 [""]
      118 SETLIST                          R14 R15 16 [1]
      120 SETTABLEKS                       R14 R13 K28 ["icon"]
      122 LOADK                            R14 K53 ["Lorem ipsum"]
      123 SETTABLEKS                       R14 R13 K29 ["text"]
      125 LOADB                            R14 0
      126 SETTABLEKS                       R14 R13 K30 ["isDisabled"]
      128 LOADB                            R14 0
      129 SETTABLEKS                       R14 R13 K31 ["isLoading"]
      131 LOADB                            R14 0
      132 SETTABLEKS                       R14 R13 K32 ["isInverse"]
      134 NEWTABLE                         R14 0 3
      136 GETTABLEKS                       R15 R2 K54 ["None"]
      138 GETTABLEKS                       R16 R11 K55 ["Fit"]
      140 GETTABLEKS                       R17 R11 K56 ["Fill"]
      142 SETLIST                          R14 R15 3 [1]
      144 SETTABLEKS                       R14 R13 K33 ["fillBehavior"]
      146 LOADN                            R14 0
      147 SETTABLEKS                       R14 R13 K34 ["inputDelay"]
      149 GETTABLEKS                       R14 R4 K57 ["FoundationUsePath2DSpinner"]
      151 SETTABLEKS                       R14 R13 K35 ["usePath2DSpinner"]
      153 SETTABLEKS                       R13 R12 K24 ["controls"]
      155 RETURN                           R12 1
