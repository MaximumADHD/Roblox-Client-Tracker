PROTO_0:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["Filters"]
        2 NAMECALL                         R2 R2 K1 ["use"]
        4 CALL                             R2 2 1
        5 GETTABLEKS                       R3 R0 K2 ["selected"]
        7 GETTABLEKS                       R4 R0 K3 ["Disabled"]
        9 JUMPIFNOT                        R4 ; [+5]
       10 GETTABLEKS                       R5 R2 K0 ["Filters"]
       12 GETTABLEKS                       R4 R5 K4 ["InactiveBackgroundColor"]
       14 RETURN                           R4 1
       15 JUMPIFNOT                        R3 ; [+6]
       16 JUMPIFNOT                        R1 ; [+5]
       17 GETTABLEKS                       R5 R2 K0 ["Filters"]
       19 GETTABLEKS                       R4 R5 K5 ["ActiveHoverBackgroundColor"]
       21 RETURN                           R4 1
       22 JUMPIFNOT                        R3 ; [+5]
       23 GETTABLEKS                       R5 R2 K0 ["Filters"]
       25 GETTABLEKS                       R4 R5 K6 ["ActiveBackgroundColor"]
       27 RETURN                           R4 1
       28 JUMPIFNOT                        R1 ; [+5]
       29 GETTABLEKS                       R5 R2 K0 ["Filters"]
       31 GETTABLEKS                       R4 R5 K7 ["InactiveHoverBackgroundColor"]
       33 RETURN                           R4 1
       34 GETTABLEKS                       R5 R2 K0 ["Filters"]
       36 GETTABLEKS                       R4 R5 K4 ["InactiveBackgroundColor"]
       38 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Filters"]
        2 NAMECALL                         R1 R1 K1 ["use"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 1
        6 LOADB                            R3 0
        7 CALL                             R2 1 2
        8 GETUPVAL                         R5 0
        9 LOADK                            R7 K0 ["Filters"]
       10 NAMECALL                         R5 R5 K1 ["use"]
       12 CALL                             R5 2 1
       13 GETTABLEKS                       R6 R0 K2 ["selected"]
       15 GETTABLEKS                       R7 R0 K3 ["Disabled"]
       17 JUMPIFNOT                        R7 ; [+5]
       18 GETTABLEKS                       R7 R5 K0 ["Filters"]
       20 GETTABLEKS                       R4 R7 K4 ["InactiveBackgroundColor"]
       22 JUMP                             ; [+24]
       23 JUMPIFNOT                        R6 ; [+6]
       24 JUMPIFNOT                        R2 ; [+5]
       25 GETTABLEKS                       R7 R5 K0 ["Filters"]
       27 GETTABLEKS                       R4 R7 K5 ["ActiveHoverBackgroundColor"]
       29 JUMP                             ; [+17]
       30 JUMPIFNOT                        R6 ; [+5]
       31 GETTABLEKS                       R7 R5 K0 ["Filters"]
       33 GETTABLEKS                       R4 R7 K6 ["ActiveBackgroundColor"]
       35 JUMP                             ; [+11]
       36 JUMPIFNOT                        R2 ; [+5]
       37 GETTABLEKS                       R7 R5 K0 ["Filters"]
       39 GETTABLEKS                       R4 R7 K7 ["InactiveHoverBackgroundColor"]
       41 JUMP                             ; [+5]
       42 GETTABLEKS                       R7 R5 K0 ["Filters"]
       44 GETTABLEKS                       R4 R7 K4 ["InactiveBackgroundColor"]
       46 JUMP                             ; [0]
       47 GETUPVAL                         R5 2
       48 LOADK                            R6 K8 ["TextButton"]
       49 NEWTABLE                         R7 16 0
       51 LOADN                            R8 1
       52 SETTABLEKS                       R8 R7 K9 ["BackgroundTransparency"]
       54 GETTABLEKS                       R8 R0 K10 ["AnchorPoint"]
       56 SETTABLEKS                       R8 R7 K10 ["AnchorPoint"]
       58 GETIMPORT                        R8 K14 [Enum.AutomaticSize.XY]
       60 SETTABLEKS                       R8 R7 K12 ["AutomaticSize"]
       62 GETTABLEKS                       R8 R0 K15 ["LayoutOrder"]
       64 SETTABLEKS                       R8 R7 K15 ["LayoutOrder"]
       66 GETTABLEKS                       R8 R0 K16 ["Position"]
       68 SETTABLEKS                       R8 R7 K16 ["Position"]
       70 GETTABLEKS                       R8 R0 K17 ["Rotation"]
       72 SETTABLEKS                       R8 R7 K17 ["Rotation"]
       74 GETTABLEKS                       R8 R0 K18 ["ZIndex"]
       76 SETTABLEKS                       R8 R7 K18 ["ZIndex"]
       78 LOADK                            R8 K19 [""]
       79 SETTABLEKS                       R8 R7 K20 ["Text"]
       81 GETUPVAL                         R10 3
       82 GETTABLEKS                       R9 R10 K21 ["Event"]
       84 GETTABLEKS                       R8 R9 K22 ["Activated"]
       86 GETTABLEKS                       R10 R0 K3 ["Disabled"]
       88 JUMPIF                           R10 ; [+3]
       89 GETTABLEKS                       R9 R0 K23 ["OnClick"]
       91 JUMPIF                           R9 ; [+1]
       92 LOADNIL                          R9
       93 SETTABLE                         R9 R7 R8
       94 GETUPVAL                         R10 3
       95 GETTABLEKS                       R9 R10 K21 ["Event"]
       97 GETTABLEKS                       R8 R9 K24 ["MouseEnter"]
       99 NEWCLOSURE                       R9 P0
      100 CAPTURE                          VAL R3
      101 SETTABLE                         R9 R7 R8
      102 GETUPVAL                         R10 3
      103 GETTABLEKS                       R9 R10 K21 ["Event"]
      105 GETTABLEKS                       R8 R9 K25 ["MouseLeave"]
      107 NEWCLOSURE                       R9 P1
      108 CAPTURE                          VAL R3
      109 SETTABLE                         R9 R7 R8
      110 NEWTABLE                         R8 0 1
      112 GETUPVAL                         R9 2
      113 GETUPVAL                         R10 4
      114 DUPTABLE                         R11 K28 [{"AutomaticSize", "BackgroundColor", "Padding"}]
      115 GETIMPORT                        R12 K14 [Enum.AutomaticSize.XY]
      117 SETTABLEKS                       R12 R11 K12 ["AutomaticSize"]
      119 SETTABLEKS                       R4 R11 K26 ["BackgroundColor"]
      121 DUPTABLE                         R12 K31 [{"Left", "Right"}]
      122 LOADN                            R13 6
      123 SETTABLEKS                       R13 R12 K29 ["Left"]
      125 GETTABLEKS                       R14 R0 K33 ["PaddingRight"]
      127 ORK                              R13 R14 K32 [6]
      128 SETTABLEKS                       R13 R12 K30 ["Right"]
      130 SETTABLEKS                       R12 R11 K27 ["Padding"]
      132 NEWTABLE                         R12 0 3
      134 GETUPVAL                         R13 2
      135 LOADK                            R14 K34 ["UICorner"]
      136 DUPTABLE                         R15 K36 [{"CornerRadius"}]
      137 GETIMPORT                        R16 K39 [UDim.new]
      139 LOADN                            R17 0
      140 LOADN                            R18 4
      141 CALL                             R16 2 1
      142 SETTABLEKS                       R16 R15 K35 ["CornerRadius"]
      144 CALL                             R13 2 1
      145 GETUPVAL                         R14 2
      146 LOADK                            R15 K40 ["UIStroke"]
      147 DUPTABLE                         R16 K43 [{"Thickness", "Color"}]
      148 LOADN                            R17 1
      149 SETTABLEKS                       R17 R16 K41 ["Thickness"]
      151 GETTABLEKS                       R18 R1 K0 ["Filters"]
      153 GETTABLEKS                       R17 R18 K44 ["BorderColor"]
      155 SETTABLEKS                       R17 R16 K42 ["Color"]
      157 CALL                             R14 2 1
      158 GETUPVAL                         R15 2
      159 GETUPVAL                         R16 5
      160 DUPTABLE                         R17 K50 [{"AutomaticSize", "Size", "Padding", "Text", "TextColor", "TextXAlignment", "TextYAlignment", "TextSize"}]
      161 GETIMPORT                        R18 K52 [Enum.AutomaticSize.X]
      163 SETTABLEKS                       R18 R17 K12 ["AutomaticSize"]
      165 GETTABLEKS                       R19 R1 K0 ["Filters"]
      167 GETTABLEKS                       R18 R19 K53 ["ChipSize"]
      169 SETTABLEKS                       R18 R17 K45 ["Size"]
      171 DUPTABLE                         R18 K31 [{"Left", "Right"}]
      172 LOADN                            R19 4
      173 SETTABLEKS                       R19 R18 K29 ["Left"]
      175 LOADN                            R19 4
      176 SETTABLEKS                       R19 R18 K30 ["Right"]
      178 SETTABLEKS                       R18 R17 K27 ["Padding"]
      180 GETTABLEKS                       R18 R0 K20 ["Text"]
      182 SETTABLEKS                       R18 R17 K20 ["Text"]
      184 GETTABLEKS                       R19 R1 K0 ["Filters"]
      186 GETTABLEKS                       R18 R19 K46 ["TextColor"]
      188 SETTABLEKS                       R18 R17 K46 ["TextColor"]
      190 GETIMPORT                        R18 K55 [Enum.TextXAlignment.Center]
      192 SETTABLEKS                       R18 R17 K47 ["TextXAlignment"]
      194 GETIMPORT                        R18 K56 [Enum.TextYAlignment.Center]
      196 SETTABLEKS                       R18 R17 K48 ["TextYAlignment"]
      198 GETTABLEKS                       R19 R1 K0 ["Filters"]
      200 GETTABLEKS                       R18 R19 K49 ["TextSize"]
      202 SETTABLEKS                       R18 R17 K49 ["TextSize"]
      204 CALL                             R15 2 -1
      205 SETLIST                          R12 R13 -1 [1]
      207 CALL                             R9 3 -1
      208 SETLIST                          R8 R9 -1 [1]
      210 CALL                             R5 3 -1
      211 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["MaterialPicker"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["createElement"]
       16 GETTABLEKS                       R3 R1 K9 ["useState"]
       18 GETIMPORT                        R4 K5 [require]
       20 GETTABLEKS                       R6 R0 K6 ["Packages"]
       22 GETTABLEKS                       R5 R6 K10 ["Framework"]
       24 CALL                             R4 1 1
       25 GETTABLEKS                       R6 R4 K11 ["UI"]
       27 GETTABLEKS                       R5 R6 K12 ["Pane"]
       29 GETTABLEKS                       R7 R4 K11 ["UI"]
       31 GETTABLEKS                       R6 R7 K13 ["TextLabel"]
       33 GETTABLEKS                       R8 R4 K14 ["Style"]
       35 GETTABLEKS                       R7 R8 K15 ["Stylizer"]
       37 DUPCLOSURE                       R8 K16 [PROTO_0]
       38 CAPTURE                          VAL R7
       39 DUPCLOSURE                       R9 K17 [PROTO_3]
       40 CAPTURE                          VAL R7
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R6
       46 SETGLOBAL                        R9 K18 ["FilterChip"]
       48 GETGLOBAL                        R9 K18 ["FilterChip"]
       50 RETURN                           R9 1
