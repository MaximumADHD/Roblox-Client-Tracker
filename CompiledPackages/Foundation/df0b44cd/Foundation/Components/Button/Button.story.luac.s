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

PROTO_4:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R2 K2 ["%* Button row %* activated"]
        3 GETUPVAL                         R4 0
        4 GETUPVAL                         R5 1
        5 NAMECALL                         R2 R2 K3 ["format"]
        7 CALL                             R2 3 1
        8 MOVE                             R1 R2
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R2 K2 ["%* Button row %* activated"]
        3 GETUPVAL                         R4 0
        4 GETUPVAL                         R5 1
        5 NAMECALL                         R2 R2 K3 ["format"]
        7 CALL                             R2 3 1
        8 MOVE                             R1 R2
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R2 K2 ["%* Button row %* activated"]
        3 GETUPVAL                         R4 0
        4 GETUPVAL                         R5 1
        5 NAMECALL                         R2 R2 K3 ["format"]
        7 CALL                             R2 3 1
        8 MOVE                             R1 R2
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETTABLEKS                       R2 R1 K1 ["colorMode"]
        4 GETUPVAL                         R3 0
        5 CALL                             R3 0 1
        6 GETTABLEKS                       R5 R1 K2 ["fillBehavior"]
        8 GETUPVAL                         R7 1
        9 GETTABLEKS                       R6 R7 K3 ["None"]
       11 JUMPIFNOTEQ                      R5 R6 ; [+3]
       13 LOADNIL                          R4
       14 JUMP                             ; [+2]
       15 GETTABLEKS                       R4 R1 K2 ["fillBehavior"]
       17 GETUPVAL                         R6 1
       18 GETTABLEKS                       R5 R6 K4 ["createElement"]
       20 GETUPVAL                         R6 2
       21 DUPTABLE                         R7 K7 [{"tag", "backgroundStyle"}]
       22 LOADK                            R8 K8 ["row gap-medium size-full-0 auto-y padding-medium radius-medium"]
       23 SETTABLEKS                       R8 R7 K5 ["tag"]
       25 JUMPIFNOT                        R2 ; [+6]
       26 GETTABLE                         R10 R3 R2
       27 GETTABLEKS                       R9 R10 K9 ["Surface"]
       29 GETTABLEKS                       R8 R9 K10 ["Surface_100"]
       31 JUMP                             ; [+1]
       32 LOADNIL                          R8
       33 SETTABLEKS                       R8 R7 K6 ["backgroundStyle"]
       35 DUPTABLE                         R8 K14 [{"One", "Two", "Three"}]
       36 GETUPVAL                         R10 1
       37 GETTABLEKS                       R9 R10 K4 ["createElement"]
       39 GETUPVAL                         R10 3
       40 DUPTABLE                         R11 K21 [{"text", "variant", "onActivated", "isDisabled", "size", "fillBehavior", "icon"}]
       41 GETTABLEKS                       R12 R1 K15 ["text"]
       43 SETTABLEKS                       R12 R11 K15 ["text"]
       45 GETUPVAL                         R13 4
       46 GETTABLEKS                       R12 R13 K22 ["Emphasis"]
       48 SETTABLEKS                       R12 R11 K16 ["variant"]
       50 NEWCLOSURE                       R12 P0
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R4
       53 SETTABLEKS                       R12 R11 K17 ["onActivated"]
       55 GETTABLEKS                       R12 R1 K18 ["isDisabled"]
       57 SETTABLEKS                       R12 R11 K18 ["isDisabled"]
       59 GETUPVAL                         R13 5
       60 GETTABLEKS                       R12 R13 K23 ["Medium"]
       62 SETTABLEKS                       R12 R11 K19 ["size"]
       64 SETTABLEKS                       R4 R11 K2 ["fillBehavior"]
       66 GETTABLEKS                       R13 R1 K20 ["icon"]
       68 JUMPIFNOTEQKS                    R13 K24 [""] ; [+3]
       70 LOADNIL                          R12
       71 JUMP                             ; [+2]
       72 GETTABLEKS                       R12 R1 K20 ["icon"]
       74 SETTABLEKS                       R12 R11 K20 ["icon"]
       76 CALL                             R9 2 1
       77 SETTABLEKS                       R9 R8 K11 ["One"]
       79 GETUPVAL                         R10 1
       80 GETTABLEKS                       R9 R10 K4 ["createElement"]
       82 GETUPVAL                         R10 3
       83 DUPTABLE                         R11 K21 [{"text", "variant", "onActivated", "isDisabled", "size", "fillBehavior", "icon"}]
       84 GETTABLEKS                       R12 R1 K15 ["text"]
       86 SETTABLEKS                       R12 R11 K15 ["text"]
       88 GETUPVAL                         R13 4
       89 GETTABLEKS                       R12 R13 K22 ["Emphasis"]
       91 SETTABLEKS                       R12 R11 K16 ["variant"]
       93 NEWCLOSURE                       R12 P1
       94 CAPTURE                          VAL R2
       95 CAPTURE                          VAL R4
       96 SETTABLEKS                       R12 R11 K17 ["onActivated"]
       98 GETTABLEKS                       R12 R1 K18 ["isDisabled"]
      100 SETTABLEKS                       R12 R11 K18 ["isDisabled"]
      102 GETUPVAL                         R13 5
      103 GETTABLEKS                       R12 R13 K23 ["Medium"]
      105 SETTABLEKS                       R12 R11 K19 ["size"]
      107 SETTABLEKS                       R4 R11 K2 ["fillBehavior"]
      109 GETTABLEKS                       R13 R1 K20 ["icon"]
      111 JUMPIFNOTEQKS                    R13 K24 [""] ; [+3]
      113 LOADNIL                          R12
      114 JUMP                             ; [+2]
      115 GETTABLEKS                       R12 R1 K20 ["icon"]
      117 SETTABLEKS                       R12 R11 K20 ["icon"]
      119 CALL                             R9 2 1
      120 SETTABLEKS                       R9 R8 K12 ["Two"]
      122 GETUPVAL                         R10 1
      123 GETTABLEKS                       R9 R10 K4 ["createElement"]
      125 GETUPVAL                         R10 3
      126 DUPTABLE                         R11 K21 [{"text", "variant", "onActivated", "isDisabled", "size", "fillBehavior", "icon"}]
      127 GETTABLEKS                       R12 R1 K15 ["text"]
      129 SETTABLEKS                       R12 R11 K15 ["text"]
      131 GETUPVAL                         R13 4
      132 GETTABLEKS                       R12 R13 K22 ["Emphasis"]
      134 SETTABLEKS                       R12 R11 K16 ["variant"]
      136 NEWCLOSURE                       R12 P2
      137 CAPTURE                          VAL R2
      138 CAPTURE                          VAL R4
      139 SETTABLEKS                       R12 R11 K17 ["onActivated"]
      141 GETTABLEKS                       R12 R1 K18 ["isDisabled"]
      143 SETTABLEKS                       R12 R11 K18 ["isDisabled"]
      145 GETUPVAL                         R13 5
      146 GETTABLEKS                       R12 R13 K23 ["Medium"]
      148 SETTABLEKS                       R12 R11 K19 ["size"]
      150 SETTABLEKS                       R4 R11 K2 ["fillBehavior"]
      152 GETTABLEKS                       R13 R1 K20 ["icon"]
      154 JUMPIFNOTEQKS                    R13 K24 [""] ; [+3]
      156 LOADNIL                          R12
      157 JUMP                             ; [+2]
      158 GETTABLEKS                       R12 R1 K20 ["icon"]
      160 SETTABLEKS                       R12 R11 K20 ["icon"]
      162 CALL                             R9 2 1
      163 SETTABLEKS                       R9 R8 K13 ["Three"]
      165 CALL                             R5 3 -1
      166 RETURN                           R5 -1

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
       23 GETTABLEKS                       R5 R6 K10 ["Button"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K11 ["Enums"]
       30 GETTABLEKS                       R6 R7 K12 ["ColorMode"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R8 R0 K13 ["Utility"]
       37 GETTABLEKS                       R7 R8 K14 ["Flags"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R9 R0 K11 ["Enums"]
       44 GETTABLEKS                       R8 R9 K15 ["InputSize"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R11 R0 K16 ["Providers"]
       51 GETTABLEKS                       R10 R11 K17 ["Style"]
       53 GETTABLEKS                       R9 R10 K18 ["PresentationContext"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R11 R0 K9 ["Components"]
       60 GETTABLEKS                       R10 R11 K19 ["View"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R13 R0 K16 ["Providers"]
       67 GETTABLEKS                       R12 R13 K17 ["Style"]
       69 GETTABLEKS                       R11 R12 K20 ["useTokens"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K6 [require]
       74 GETTABLEKS                       R13 R0 K11 ["Enums"]
       76 GETTABLEKS                       R12 R13 K21 ["ButtonVariant"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K6 [require]
       81 GETTABLEKS                       R14 R0 K11 ["Enums"]
       83 GETTABLEKS                       R13 R14 K22 ["FillBehavior"]
       85 CALL                             R12 1 1
       86 NEWTABLE                         R13 0 6
       88 GETTABLEKS                       R14 R11 K23 ["Standard"]
       90 GETTABLEKS                       R15 R11 K24 ["Emphasis"]
       92 GETTABLEKS                       R16 R11 K25 ["SoftEmphasis"]
       94 GETTABLEKS                       R17 R11 K13 ["Utility"]
       96 GETTABLEKS                       R18 R11 K26 ["Link"]
       98 GETTABLEKS                       R19 R11 K27 ["Alert"]
      100 SETLIST                          R13 R14 6 [1]
      102 GETTABLEKS                       R14 R2 K28 ["map"]
      104 MOVE                             R15 R13
      105 DUPCLOSURE                       R16 K29 [PROTO_3]
      106 CAPTURE                          VAL R10
      107 CAPTURE                          VAL R6
      108 CAPTURE                          VAL R3
      109 CAPTURE                          VAL R9
      110 CAPTURE                          VAL R11
      111 CAPTURE                          VAL R8
      112 CAPTURE                          VAL R2
      113 CAPTURE                          VAL R7
      114 CAPTURE                          VAL R4
      115 CALL                             R14 2 1
      116 DUPTABLE                         R17 K32 [{"name", "story"}]
      117 LOADK                            R18 K22 ["FillBehavior"]
      118 SETTABLEKS                       R18 R17 K30 ["name"]
      120 DUPCLOSURE                       R18 K33 [PROTO_7]
      121 CAPTURE                          VAL R10
      122 CAPTURE                          VAL R3
      123 CAPTURE                          VAL R9
      124 CAPTURE                          VAL R4
      125 CAPTURE                          VAL R11
      126 CAPTURE                          VAL R7
      127 SETTABLEKS                       R18 R17 K31 ["story"]
      129 FASTCALL2                        TABLE_INSERT R14 R17 ; [+4]
      131 MOVE                             R16 R14
      132 GETIMPORT                        R15 K36 [table.insert]
      134 CALL                             R15 2 0
      135 DUPTABLE                         R15 K40 [{"summary", "stories", "controls"}]
      136 LOADK                            R16 K10 ["Button"]
      137 SETTABLEKS                       R16 R15 K37 ["summary"]
      139 SETTABLEKS                       R14 R15 K38 ["stories"]
      141 DUPTABLE                         R16 K49 [{"icon", "text", "isDisabled", "isLoading", "colorMode", "fillBehavior", "inputDelay", "usePath2DSpinner"}]
      142 NEWTABLE                         R17 0 7
      144 LOADK                            R18 K50 ["play-small"]
      145 LOADK                            R19 K51 ["play-large"]
      146 LOADK                            R20 K52 ["play-xlarge"]
      147 LOADK                            R21 K53 ["robux"]
      148 LOADK                            R22 K54 ["heart"]
      149 LOADK                            R23 K55 ["glasses"]
      150 LOADK                            R24 K56 [""]
      151 SETLIST                          R17 R18 7 [1]
      153 SETTABLEKS                       R17 R16 K41 ["icon"]
      155 LOADK                            R17 K57 ["Lorem ipsum"]
      156 SETTABLEKS                       R17 R16 K42 ["text"]
      158 LOADB                            R17 0
      159 SETTABLEKS                       R17 R16 K43 ["isDisabled"]
      161 LOADB                            R17 0
      162 SETTABLEKS                       R17 R16 K44 ["isLoading"]
      164 GETTABLEKS                       R17 R2 K58 ["values"]
      166 MOVE                             R18 R5
      167 CALL                             R17 1 1
      168 SETTABLEKS                       R17 R16 K45 ["colorMode"]
      170 NEWTABLE                         R17 0 3
      172 GETTABLEKS                       R18 R3 K59 ["None"]
      174 GETTABLEKS                       R19 R12 K60 ["Fit"]
      176 GETTABLEKS                       R20 R12 K61 ["Fill"]
      178 SETLIST                          R17 R18 3 [1]
      180 SETTABLEKS                       R17 R16 K46 ["fillBehavior"]
      182 LOADN                            R17 0
      183 SETTABLEKS                       R17 R16 K47 ["inputDelay"]
      185 GETTABLEKS                       R17 R6 K62 ["FoundationUsePath2DSpinner"]
      187 SETTABLEKS                       R17 R16 K48 ["usePath2DSpinner"]
      189 SETTABLEKS                       R16 R15 K39 ["controls"]
      191 RETURN                           R15 1
