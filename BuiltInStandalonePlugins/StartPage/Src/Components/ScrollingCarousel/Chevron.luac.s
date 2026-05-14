PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnClick"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["PointingHand"]
        2 CALL                             R1 1 2
        3 GETUPVAL                         R3 1
        4 CALL                             R3 0 1
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R4 R4 K1 ["createElement"]
        8 LOADK                            R5 K2 ["Frame"]
        9 NEWTABLE                         R6 8 0
       11 GETTABLEKS                       R8 R0 K3 ["IsArrowRight"]
       13 JUMPIFNOT                        R8 ; [+2]
       14 LOADN                            R7 0
       15 JUMP                             ; [+1]
       16 LOADN                            R7 180
       17 SETTABLEKS                       R7 R6 K4 ["Rotation"]
       19 GETTABLEKS                       R7 R0 K5 ["Size"]
       21 SETTABLEKS                       R7 R6 K5 ["Size"]
       23 GETTABLEKS                       R7 R0 K6 ["Position"]
       25 SETTABLEKS                       R7 R6 K6 ["Position"]
       27 LOADK                            R7 K7 [999999]
       28 SETTABLEKS                       R7 R6 K8 ["ZIndex"]
       30 GETUPVAL                         R7 2
       31 GETTABLEKS                       R7 R7 K9 ["Tag"]
       33 LOADK                            R8 K10 ["X-Transparent data-testid=--start-page-Chevron"]
       34 SETTABLE                         R8 R6 R7
       35 DUPTABLE                         R7 K13 [{"UIGradientFrame", "Chevron"}]
       36 GETUPVAL                         R8 2
       37 GETTABLEKS                       R8 R8 K1 ["createElement"]
       39 LOADK                            R9 K2 ["Frame"]
       40 NEWTABLE                         R10 4 0
       42 GETIMPORT                        R11 K16 [UDim2.new]
       44 LOADN                            R12 1
       45 LOADN                            R13 0
       46 LOADN                            R14 1
       47 LOADN                            R15 0
       48 CALL                             R11 4 1
       49 SETTABLEKS                       R11 R10 K5 ["Size"]
       51 LOADK                            R11 K17 [0.4]
       52 SETTABLEKS                       R11 R10 K18 ["BackgroundTransparency"]
       54 LOADN                            R11 100
       55 SETTABLEKS                       R11 R10 K8 ["ZIndex"]
       57 GETUPVAL                         R11 2
       58 GETTABLEKS                       R11 R11 K9 ["Tag"]
       60 LOADK                            R12 K19 ["StartPage-PageBackground StartPage-NoBorder"]
       61 SETTABLE                         R12 R10 R11
       62 DUPTABLE                         R11 K21 [{"UIGradient"}]
       63 GETUPVAL                         R12 2
       64 GETTABLEKS                       R12 R12 K1 ["createElement"]
       66 LOADK                            R13 K20 ["UIGradient"]
       67 DUPTABLE                         R14 K23 [{"Transparency"}]
       68 GETIMPORT                        R15 K25 [NumberSequence.new]
       70 NEWTABLE                         R16 0 2
       72 GETIMPORT                        R17 K27 [NumberSequenceKeypoint.new]
       74 LOADN                            R18 0
       75 LOADN                            R19 1
       76 CALL                             R17 2 1
       77 GETIMPORT                        R18 K27 [NumberSequenceKeypoint.new]
       79 LOADN                            R19 1
       80 LOADN                            R20 0
       81 CALL                             R18 2 -1
       82 SETLIST                          R16 R17 -1 [1]
       84 CALL                             R15 1 1
       85 SETTABLEKS                       R15 R14 K22 ["Transparency"]
       87 CALL                             R12 2 1
       88 SETTABLEKS                       R12 R11 K20 ["UIGradient"]
       90 CALL                             R8 3 1
       91 SETTABLEKS                       R8 R7 K11 ["UIGradientFrame"]
       93 GETUPVAL                         R8 2
       94 GETTABLEKS                       R8 R8 K1 ["createElement"]
       96 LOADK                            R9 K28 ["ImageButton"]
       97 NEWTABLE                         R10 8 0
       99 GETIMPORT                        R11 K16 [UDim2.new]
      101 LOADN                            R12 0
      102 LOADN                            R13 36
      103 LOADN                            R14 0
      104 LOADN                            R15 36
      105 CALL                             R11 4 1
      106 SETTABLEKS                       R11 R10 K5 ["Size"]
      108 GETIMPORT                        R11 K16 [UDim2.new]
      110 LOADK                            R12 K29 [0.5]
      111 LOADN                            R13 238
      112 LOADK                            R14 K29 [0.5]
      113 LOADN                            R15 238
      114 CALL                             R11 4 1
      115 SETTABLEKS                       R11 R10 K6 ["Position"]
      117 GETUPVAL                         R11 2
      118 GETTABLEKS                       R11 R11 K30 ["Event"]
      120 GETTABLEKS                       R11 R11 K31 ["Activated"]
      122 NEWCLOSURE                       R12 P0
      123 CAPTURE                          VAL R0
      124 SETTABLE                         R12 R10 R11
      125 GETUPVAL                         R11 2
      126 GETTABLEKS                       R11 R11 K30 ["Event"]
      128 GETTABLEKS                       R11 R11 K32 ["MouseEnter"]
      130 SETTABLE                         R1 R10 R11
      131 GETUPVAL                         R11 2
      132 GETTABLEKS                       R11 R11 K30 ["Event"]
      134 GETTABLEKS                       R11 R11 K33 ["MouseLeave"]
      136 SETTABLE                         R2 R10 R11
      137 LOADN                            R11 101
      138 SETTABLEKS                       R11 R10 K8 ["ZIndex"]
      140 GETUPVAL                         R11 2
      141 GETTABLEKS                       R11 R11 K9 ["Tag"]
      143 LOADK                            R12 K34 ["X-Middle X-Center StartPage-Circular StartPage-Contrast"]
      144 SETTABLE                         R12 R10 R11
      145 GETUPVAL                         R12 3
      146 JUMPIFNOT                        R12 ; [+30]
      147 GETUPVAL                         R11 2
      148 GETTABLEKS                       R11 R11 K1 ["createElement"]
      150 GETUPVAL                         R12 4
      151 DUPTABLE                         R13 K39 [{"name", "variant", "size", "style"}]
      152 GETUPVAL                         R14 5
      153 GETTABLEKS                       R14 R14 K40 ["ChevronSmallRight"]
      155 SETTABLEKS                       R14 R13 K35 ["name"]
      157 GETUPVAL                         R14 6
      158 GETTABLEKS                       R14 R14 K41 ["Filled"]
      160 SETTABLEKS                       R14 R13 K36 ["variant"]
      162 GETUPVAL                         R14 7
      163 GETTABLEKS                       R14 R14 K42 ["Medium"]
      165 SETTABLEKS                       R14 R13 K37 ["size"]
      167 GETTABLEKS                       R14 R3 K43 ["Color"]
      169 GETTABLEKS                       R14 R14 K44 ["Content"]
      171 GETTABLEKS                       R14 R14 K45 ["Emphasis"]
      173 SETTABLEKS                       R14 R13 K38 ["style"]
      175 CALL                             R11 2 1
      176 JUMP                             ; [+12]
      177 GETUPVAL                         R11 2
      178 GETTABLEKS                       R11 R11 K1 ["createElement"]
      180 GETUPVAL                         R12 8
      181 NEWTABLE                         R13 1 0
      183 GETUPVAL                         R14 2
      184 GETTABLEKS                       R14 R14 K9 ["Tag"]
      186 LOADK                            R15 K46 ["StartPage-IconSizeM StartPage-RightIcon"]
      187 SETTABLE                         R15 R13 R14
      188 CALL                             R11 2 1
      189 CALL                             R8 3 1
      190 SETTABLEKS                       R8 R7 K12 ["Chevron"]
      192 CALL                             R4 3 -1
      193 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["UI"]
       23 GETTABLEKS                       R4 R3 K10 ["Image"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R6 R0 K6 ["Packages"]
       29 GETTABLEKS                       R6 R6 K11 ["Foundation"]
       31 CALL                             R5 1 1
       32 GETTABLEKS                       R6 R5 K12 ["Icon"]
       34 GETTABLEKS                       R7 R5 K13 ["Enums"]
       36 GETTABLEKS                       R7 R7 K14 ["IconName"]
       38 GETTABLEKS                       R8 R5 K13 ["Enums"]
       40 GETTABLEKS                       R8 R8 K15 ["IconSize"]
       42 GETTABLEKS                       R9 R5 K13 ["Enums"]
       44 GETTABLEKS                       R9 R9 K16 ["IconVariant"]
       46 GETTABLEKS                       R10 R5 K17 ["Hooks"]
       48 GETTABLEKS                       R10 R10 K18 ["useTokens"]
       50 GETIMPORT                        R11 K5 [require]
       52 GETTABLEKS                       R12 R0 K19 ["Src"]
       54 GETTABLEKS                       R12 R12 K20 ["SharedFlags"]
       56 GETTABLEKS                       R12 R12 K21 ["getFFlagLuaStartPageBuilderIcons"]
       58 CALL                             R11 1 1
       59 CALL                             R11 0 1
       60 GETIMPORT                        R12 K5 [require]
       62 GETTABLEKS                       R13 R0 K19 ["Src"]
       64 GETTABLEKS                       R13 R13 K17 ["Hooks"]
       66 GETTABLEKS                       R13 R13 K22 ["useCursor"]
       68 CALL                             R12 1 1
       69 DUPCLOSURE                       R13 K23 [PROTO_1]
       70 CAPTURE                          VAL R12
       71 CAPTURE                          VAL R10
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R11
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R4
       79 RETURN                           R13 1
