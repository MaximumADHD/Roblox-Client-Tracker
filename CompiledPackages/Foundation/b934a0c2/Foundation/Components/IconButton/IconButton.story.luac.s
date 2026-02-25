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
        2 GETTABLEKS                       R2 R1 K1 ["colorMode"]
        4 DUPTABLE                         R3 K2 [{"colorMode"}]
        5 SETTABLEKS                       R2 R3 K1 ["colorMode"]
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
       31 JUMP                             ; [+8]
       32 JUMPIFNOT                        R2 ; [+6]
       33 GETTABLE                         R10 R4 R2
       34 GETTABLEKS                       R9 R10 K13 ["Surface"]
       36 GETTABLEKS                       R8 R9 K14 ["Surface_100"]
       38 JUMP                             ; [+1]
       39 LOADNIL                          R8
       40 SETTABLEKS                       R8 R7 K5 ["backgroundStyle"]
       42 DUPTABLE                         R8 K17 [{"Gradient", "IconButtons"}]
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
      108 NEWTABLE                         R13 0 4
      110 GETUPVAL                         R15 7
      111 GETTABLEKS                       R14 R15 K34 ["Large"]
      113 GETUPVAL                         R16 7
      114 GETTABLEKS                       R15 R16 K35 ["Medium"]
      116 GETUPVAL                         R17 7
      117 GETTABLEKS                       R16 R17 K36 ["Small"]
      119 GETUPVAL                         R18 7
      120 GETTABLEKS                       R17 R18 K37 ["XSmall"]
      122 SETLIST                          R13 R14 4 [1]
      124 NEWCLOSURE                       R14 P0
      125 CAPTURE                          UPVAL U1
      126 CAPTURE                          UPVAL U8
      127 CAPTURE                          VAL R0
      128 CAPTURE                          UPVAL U3
      129 CAPTURE                          VAL R2
      130 CAPTURE                          VAL R1
      131 CALL                             R12 2 -1
      132 CALL                             R9 -1 1
      133 SETTABLEKS                       R9 R8 K16 ["IconButtons"]
      135 CALL                             R5 3 -1
      136 RETURN                           R5 -1

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

PROTO_4:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R2 K2 ["%* IconButton row %* activated"]
        3 GETUPVAL                         R4 0
        4 GETUPVAL                         R5 1
        5 NAMECALL                         R2 R2 K3 ["format"]
        7 CALL                             R2 3 1
        8 MOVE                             R1 R2
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R2 K2 ["%* IconButton row %* activated"]
        3 GETUPVAL                         R4 0
        4 GETUPVAL                         R5 1
        5 NAMECALL                         R2 R2 K3 ["format"]
        7 CALL                             R2 3 1
        8 MOVE                             R1 R2
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R2 K2 ["%* IconButton row %* activated"]
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
       40 DUPTABLE                         R11 K21 [{"icon", "variant", "onActivated", "isDisabled", "size", "isCircular", "fillBehavior"}]
       41 DUPTABLE                         R12 K23 [{"name", "variant"}]
       42 GETTABLEKS                       R13 R1 K22 ["name"]
       44 SETTABLEKS                       R13 R12 K22 ["name"]
       46 GETTABLEKS                       R13 R1 K16 ["variant"]
       48 SETTABLEKS                       R13 R12 K16 ["variant"]
       50 SETTABLEKS                       R12 R11 K15 ["icon"]
       52 GETUPVAL                         R13 4
       53 GETTABLEKS                       R12 R13 K24 ["Emphasis"]
       55 SETTABLEKS                       R12 R11 K16 ["variant"]
       57 NEWCLOSURE                       R12 P0
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R4
       60 SETTABLEKS                       R12 R11 K17 ["onActivated"]
       62 GETTABLEKS                       R12 R1 K18 ["isDisabled"]
       64 SETTABLEKS                       R12 R11 K18 ["isDisabled"]
       66 GETUPVAL                         R13 5
       67 GETTABLEKS                       R12 R13 K25 ["Medium"]
       69 SETTABLEKS                       R12 R11 K19 ["size"]
       71 GETTABLEKS                       R12 R1 K20 ["isCircular"]
       73 SETTABLEKS                       R12 R11 K20 ["isCircular"]
       75 SETTABLEKS                       R4 R11 K2 ["fillBehavior"]
       77 CALL                             R9 2 1
       78 SETTABLEKS                       R9 R8 K11 ["One"]
       80 GETUPVAL                         R10 1
       81 GETTABLEKS                       R9 R10 K4 ["createElement"]
       83 GETUPVAL                         R10 3
       84 DUPTABLE                         R11 K21 [{"icon", "variant", "onActivated", "isDisabled", "size", "isCircular", "fillBehavior"}]
       85 DUPTABLE                         R12 K23 [{"name", "variant"}]
       86 GETTABLEKS                       R13 R1 K22 ["name"]
       88 SETTABLEKS                       R13 R12 K22 ["name"]
       90 GETTABLEKS                       R13 R1 K16 ["variant"]
       92 SETTABLEKS                       R13 R12 K16 ["variant"]
       94 SETTABLEKS                       R12 R11 K15 ["icon"]
       96 GETUPVAL                         R13 4
       97 GETTABLEKS                       R12 R13 K26 ["Utility"]
       99 SETTABLEKS                       R12 R11 K16 ["variant"]
      101 NEWCLOSURE                       R12 P1
      102 CAPTURE                          VAL R2
      103 CAPTURE                          VAL R4
      104 SETTABLEKS                       R12 R11 K17 ["onActivated"]
      106 GETTABLEKS                       R12 R1 K18 ["isDisabled"]
      108 SETTABLEKS                       R12 R11 K18 ["isDisabled"]
      110 GETUPVAL                         R13 5
      111 GETTABLEKS                       R12 R13 K25 ["Medium"]
      113 SETTABLEKS                       R12 R11 K19 ["size"]
      115 GETTABLEKS                       R12 R1 K20 ["isCircular"]
      117 SETTABLEKS                       R12 R11 K20 ["isCircular"]
      119 SETTABLEKS                       R4 R11 K2 ["fillBehavior"]
      121 CALL                             R9 2 1
      122 SETTABLEKS                       R9 R8 K12 ["Two"]
      124 GETUPVAL                         R10 1
      125 GETTABLEKS                       R9 R10 K4 ["createElement"]
      127 GETUPVAL                         R10 3
      128 DUPTABLE                         R11 K21 [{"icon", "variant", "onActivated", "isDisabled", "size", "isCircular", "fillBehavior"}]
      129 DUPTABLE                         R12 K23 [{"name", "variant"}]
      130 GETTABLEKS                       R13 R1 K22 ["name"]
      132 SETTABLEKS                       R13 R12 K22 ["name"]
      134 GETTABLEKS                       R13 R1 K16 ["variant"]
      136 SETTABLEKS                       R13 R12 K16 ["variant"]
      138 SETTABLEKS                       R12 R11 K15 ["icon"]
      140 GETUPVAL                         R13 4
      141 GETTABLEKS                       R12 R13 K26 ["Utility"]
      143 SETTABLEKS                       R12 R11 K16 ["variant"]
      145 NEWCLOSURE                       R12 P2
      146 CAPTURE                          VAL R2
      147 CAPTURE                          VAL R4
      148 SETTABLEKS                       R12 R11 K17 ["onActivated"]
      150 GETTABLEKS                       R12 R1 K18 ["isDisabled"]
      152 SETTABLEKS                       R12 R11 K18 ["isDisabled"]
      154 GETUPVAL                         R13 5
      155 GETTABLEKS                       R12 R13 K25 ["Medium"]
      157 SETTABLEKS                       R12 R11 K19 ["size"]
      159 GETTABLEKS                       R12 R1 K20 ["isCircular"]
      161 SETTABLEKS                       R12 R11 K20 ["isCircular"]
      163 SETTABLEKS                       R4 R11 K2 ["fillBehavior"]
      165 CALL                             R9 2 1
      166 SETTABLEKS                       R9 R8 K13 ["Three"]
      168 CALL                             R5 3 -1
      169 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["BuilderIcons"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Dash"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["React"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R7 R0 K10 ["Enums"]
       28 GETTABLEKS                       R6 R7 K11 ["ColorMode"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R8 R0 K10 ["Enums"]
       35 GETTABLEKS                       R7 R8 K12 ["FillBehavior"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R9 R0 K13 ["Components"]
       42 GETTABLEKS                       R8 R9 K14 ["IconButton"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K6 [require]
       47 GETTABLEKS                       R11 R0 K15 ["Providers"]
       49 GETTABLEKS                       R10 R11 K16 ["Style"]
       51 GETTABLEKS                       R9 R10 K17 ["PresentationContext"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R11 R0 K13 ["Components"]
       58 GETTABLEKS                       R10 R11 K18 ["View"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R13 R0 K15 ["Providers"]
       65 GETTABLEKS                       R12 R13 K16 ["Style"]
       67 GETTABLEKS                       R11 R12 K19 ["useTokens"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R13 R0 K10 ["Enums"]
       74 GETTABLEKS                       R12 R13 K20 ["InputSize"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K6 [require]
       79 GETTABLEKS                       R14 R0 K10 ["Enums"]
       81 GETTABLEKS                       R13 R14 K21 ["ButtonVariant"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K6 [require]
       86 GETTABLEKS                       R15 R0 K22 ["Utility"]
       88 GETTABLEKS                       R14 R15 K23 ["Flags"]
       90 CALL                             R13 1 1
       91 NEWTABLE                         R14 0 5
       93 GETTABLEKS                       R15 R12 K22 ["Utility"]
       95 GETTABLEKS                       R16 R12 K24 ["Standard"]
       97 GETTABLEKS                       R17 R12 K25 ["Emphasis"]
       99 GETTABLEKS                       R18 R12 K26 ["OverMedia"]
      101 GETTABLEKS                       R19 R12 K27 ["Alert"]
      103 SETLIST                          R14 R15 5 [1]
      105 GETTABLEKS                       R15 R3 K28 ["map"]
      107 MOVE                             R16 R14
      108 DUPCLOSURE                       R17 K29 [PROTO_3]
      109 CAPTURE                          VAL R10
      110 CAPTURE                          VAL R4
      111 CAPTURE                          VAL R9
      112 CAPTURE                          VAL R12
      113 CAPTURE                          VAL R8
      114 CAPTURE                          VAL R3
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R7
      117 CALL                             R15 2 1
      118 GETTABLEKS                       R16 R13 K30 ["FoundationIconButtonFillBehavior"]
      120 JUMPIFNOT                        R16 ; [+19]
      121 DUPTABLE                         R18 K33 [{"name", "story"}]
      122 LOADK                            R19 K12 ["FillBehavior"]
      123 SETTABLEKS                       R19 R18 K31 ["name"]
      125 DUPCLOSURE                       R19 K34 [PROTO_7]
      126 CAPTURE                          VAL R10
      127 CAPTURE                          VAL R4
      128 CAPTURE                          VAL R9
      129 CAPTURE                          VAL R7
      130 CAPTURE                          VAL R12
      131 CAPTURE                          VAL R11
      132 SETTABLEKS                       R19 R18 K32 ["story"]
      134 FASTCALL2                        TABLE_INSERT R15 R18 ; [+4]
      136 MOVE                             R17 R15
      137 GETIMPORT                        R16 K37 [table.insert]
      139 CALL                             R16 2 0
      140 DUPTABLE                         R16 K41 [{"summary", "stories", "controls"}]
      141 LOADK                            R17 K14 ["IconButton"]
      142 SETTABLEKS                       R17 R16 K38 ["summary"]
      144 SETTABLEKS                       R15 R16 K39 ["stories"]
      146 DUPTABLE                         R17 K47 [{"name", "variant", "isDisabled", "isCircular", "colorMode", "fillBehavior"}]
      147 NEWTABLE                         R18 0 6
      149 LOADK                            R19 K48 ["play-small"]
      150 LOADK                            R20 K49 ["play-large"]
      151 LOADK                            R21 K50 ["play-xlarge"]
      152 LOADK                            R22 K51 ["robux"]
      153 LOADK                            R23 K52 ["heart"]
      154 LOADK                            R24 K53 ["glasses"]
      155 SETLIST                          R18 R19 6 [1]
      157 SETTABLEKS                       R18 R17 K31 ["name"]
      159 GETTABLEKS                       R18 R3 K54 ["values"]
      161 GETTABLEKS                       R19 R2 K55 ["IconVariant"]
      163 CALL                             R18 1 1
      164 SETTABLEKS                       R18 R17 K42 ["variant"]
      166 LOADB                            R18 0
      167 SETTABLEKS                       R18 R17 K43 ["isDisabled"]
      169 LOADB                            R18 0
      170 SETTABLEKS                       R18 R17 K44 ["isCircular"]
      172 GETTABLEKS                       R18 R3 K54 ["values"]
      174 MOVE                             R19 R5
      175 CALL                             R18 1 1
      176 SETTABLEKS                       R18 R17 K45 ["colorMode"]
      178 GETTABLEKS                       R19 R13 K30 ["FoundationIconButtonFillBehavior"]
      180 JUMPIFNOT                        R19 ; [+11]
      181 NEWTABLE                         R18 0 3
      183 GETTABLEKS                       R19 R4 K56 ["None"]
      185 GETTABLEKS                       R20 R6 K57 ["Fit"]
      187 GETTABLEKS                       R21 R6 K58 ["Fill"]
      189 SETLIST                          R18 R19 3 [1]
      191 JUMP                             ; [+1]
      192 LOADNIL                          R18
      193 SETTABLEKS                       R18 R17 K46 ["fillBehavior"]
      195 SETTABLEKS                       R17 R16 K40 ["controls"]
      197 RETURN                           R16 1
