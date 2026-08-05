PROTO_0:
        0 GETUPVAL                         R6 0
        1 GETUPVAL                         R7 1
        2 GETTABLEKS                       R7 R7 K0 ["View"]
        4 DUPTABLE                         R8 K6 [{"testId", "ref", "AnchorPoint", "Position", "tag"}]
        5 SETTABLEKS                       R0 R8 K1 ["testId"]
        7 SETTABLEKS                       R5 R8 K2 ["ref"]
        9 GETIMPORT                        R9 K9 [Vector2.new]
       11 MOVE                             R10 R1
       12 LOADK                            R11 K10 [0.5]
       13 CALL                             R9 2 1
       14 SETTABLEKS                       R9 R8 K3 ["AnchorPoint"]
       16 GETIMPORT                        R9 K13 [UDim2.fromScale]
       18 MOVE                             R10 R2
       19 LOADK                            R11 K10 [0.5]
       20 CALL                             R9 2 1
       21 SETTABLEKS                       R9 R8 K4 ["Position"]
       23 LOADK                            R10 K14 ["row align-y-center %* auto-xy"]
       24 MOVE                             R12 R3
       25 NAMECALL                         R10 R10 K15 ["format"]
       27 CALL                             R10 2 1
       28 MOVE                             R9 R10
       29 SETTABLEKS                       R9 R8 K5 ["tag"]
       31 JUMPIFEQKNIL                     R4 ; [+5]
       33 DUPTABLE                         R9 K17 [{"Content"}]
       34 SETTABLEKS                       R4 R9 K16 ["Content"]
       36 JUMP                             ; [+1]
       37 LOADNIL                          R9
       38 CALL                             R6 3 -1
       39 RETURN                           R6 -1

PROTO_1:
        0 GETUPVAL                         R8 0
        1 GETTABLEKS                       R8 R8 K0 ["useRef"]
        3 LOADNIL                          R9
        4 CALL                             R8 1 1
        5 GETUPVAL                         R9 0
        6 GETTABLEKS                       R9 R9 K0 ["useRef"]
        8 LOADNIL                          R10
        9 CALL                             R9 1 1
       10 GETUPVAL                         R10 1
       11 GETTABLEKS                       R10 R10 K1 ["useMeasuredWidth"]
       13 MOVE                             R11 R8
       14 CALL                             R10 1 1
       15 GETUPVAL                         R11 1
       16 GETTABLEKS                       R11 R11 K1 ["useMeasuredWidth"]
       18 MOVE                             R12 R9
       19 CALL                             R11 1 1
       20 MOVE                             R12 R1
       21 JUMPIF                           R12 ; [+4]
       22 JUMPIFNOT                        R2 ; [+2]
       23 GETUPVAL                         R12 2
       24 JUMP                             ; [+1]
       25 GETUPVAL                         R12 3
       26 JUMPIFNOT                        R2 ; [+2]
       27 LOADK                            R13 K2 ["gap-none"]
       28 JUMP                             ; [+1]
       29 LOADK                            R13 K3 ["gap-small"]
       30 JUMPIFNOT                        R2 ; [+2]
       31 LOADK                            R14 K2 ["gap-none"]
       32 JUMP                             ; [+1]
       33 LOADK                            R14 K4 ["gap-medium"]
       34 JUMPIFNOT                        R2 ; [+2]
       35 LOADN                            R15 0
       36 JUMP                             ; [+5]
       37 GETUPVAL                         R15 4
       38 GETTABLEKS                       R15 R15 K5 ["Gap"]
       40 GETTABLEKS                       R15 R15 K6 ["Small"]
       42 LOADK                            R16 K7 ["padding-x-medium"]
       43 JUMPIFNOT                        R4 ; [+3]
       44 MOVE                             R17 R16
       45 LOADK                            R18 K8 [" bg-surface-0"]
       46 CONCAT                           R16 R17 R18
       47 LOADNIL                          R17
       48 JUMPIFEQKNIL                     R6 ; [+79]
       50 JUMPIFEQKNIL                     R10 ; [+77]
       52 LOADN                            R20 2
       53 GETUPVAL                         R21 4
       54 GETTABLEKS                       R21 R21 K9 ["Padding"]
       56 GETTABLEKS                       R21 R21 K10 ["Medium"]
       58 MUL                              R19 R20 R21
       59 SUB                              R18 R10 R19
       60 LOADN                            R20 0
       61 ORK                              R24 R11 K12 [0]
       62 SUB                              R23 R18 R24
       63 DIVK                             R22 R23 K11 [2]
       64 SUB                              R21 R22 R15
       65 FASTCALL2                        MATH_MAX R20 R21 ; [+3]
       67 GETIMPORT                        R19 K15 [math.max]
       69 CALL                             R19 2 1
       70 GETUPVAL                         R20 5
       71 GETUPVAL                         R21 6
       72 GETTABLEKS                       R21 R21 K16 ["View"]
       74 DUPTABLE                         R22 K25 [{["testId"], ["AnchorPoint"], ["Position"], ["Size"], ["AutomaticSize"], ["ClipsDescendants"] = True, ["tag"]}]
       75 LOADK                            R24 K26 ["%*-leading"]
       76 MOVE                             R26 R0
       77 NAMECALL                         R24 R24 K27 ["format"]
       79 CALL                             R24 2 1
       80 MOVE                             R23 R24
       81 SETTABLEKS                       R23 R22 K17 ["testId"]
       83 GETIMPORT                        R23 K30 [Vector2.new]
       85 LOADN                            R24 0
       86 LOADK                            R25 K31 [0.5]
       87 CALL                             R23 2 1
       88 SETTABLEKS                       R23 R22 K18 ["AnchorPoint"]
       90 GETIMPORT                        R23 K34 [UDim2.fromScale]
       92 LOADN                            R24 0
       93 LOADK                            R25 K31 [0.5]
       94 CALL                             R23 2 1
       95 SETTABLEKS                       R23 R22 K19 ["Position"]
       97 GETIMPORT                        R23 K35 [UDim2.new]
       99 LOADN                            R24 0
      100 MOVE                             R25 R19
      101 LOADN                            R26 0
      102 LOADN                            R27 0
      103 CALL                             R23 4 1
      104 SETTABLEKS                       R23 R22 K20 ["Size"]
      106 GETIMPORT                        R23 K38 [Enum.AutomaticSize.Y]
      108 SETTABLEKS                       R23 R22 K21 ["AutomaticSize"]
      110 LOADK                            R24 K39 ["row align-y-center %*"]
      111 MOVE                             R26 R13
      112 NAMECALL                         R24 R24 K27 ["format"]
      114 CALL                             R24 2 1
      115 MOVE                             R23 R24
      116 SETTABLEKS                       R23 R22 K24 ["tag"]
      118 JUMPIFEQKNIL                     R5 ; [+5]
      120 DUPTABLE                         R23 K41 [{"Content"}]
      121 SETTABLEKS                       R5 R23 K40 ["Content"]
      123 JUMP                             ; [+1]
      124 LOADNIL                          R23
      125 CALL                             R20 3 1
      126 MOVE                             R17 R20
      127 JUMP                             ; [+13]
      128 GETUPVAL                         R18 7
      129 LOADK                            R20 K26 ["%*-leading"]
      130 MOVE                             R22 R0
      131 NAMECALL                         R20 R20 K27 ["format"]
      133 CALL                             R20 2 1
      134 MOVE                             R19 R20
      135 LOADN                            R20 0
      136 LOADN                            R21 0
      137 MOVE                             R22 R13
      138 MOVE                             R23 R5
      139 CALL                             R18 5 1
      140 MOVE                             R17 R18
      141 DUPTABLE                         R18 K45 [{"Leading", "Center", "Trailing"}]
      142 SETTABLEKS                       R17 R18 K42 ["Leading"]
      144 JUMPIFEQKNIL                     R6 ; [+15]
      146 GETUPVAL                         R19 7
      147 LOADK                            R21 K46 ["%*-center"]
      148 MOVE                             R23 R0
      149 NAMECALL                         R21 R21 K27 ["format"]
      151 CALL                             R21 2 1
      152 MOVE                             R20 R21
      153 LOADK                            R21 K31 [0.5]
      154 LOADK                            R22 K31 [0.5]
      155 LOADK                            R23 K3 ["gap-small"]
      156 MOVE                             R24 R6
      157 MOVE                             R25 R9
      158 CALL                             R19 6 1
      159 JUMP                             ; [+1]
      160 LOADNIL                          R19
      161 SETTABLEKS                       R19 R18 K43 ["Center"]
      163 GETUPVAL                         R19 7
      164 LOADK                            R21 K47 ["%*-trailing"]
      165 MOVE                             R23 R0
      166 NAMECALL                         R21 R21 K27 ["format"]
      168 CALL                             R21 2 1
      169 MOVE                             R20 R21
      170 LOADN                            R21 1
      171 LOADN                            R22 1
      172 MOVE                             R23 R14
      173 MOVE                             R24 R7
      174 CALL                             R19 5 1
      175 SETTABLEKS                       R19 R18 K44 ["Trailing"]
      177 JUMPIFNOT                        R3 ; [+43]
      178 GETUPVAL                         R19 5
      179 GETUPVAL                         R20 6
      180 GETTABLEKS                       R20 R20 K16 ["View"]
      182 DUPTABLE                         R21 K49 [{["testId"], ["AnchorPoint"], ["Position"], ["Size"], ["tag"] = "bg-shift-200"}]
      183 LOADK                            R23 K50 ["%*-divider"]
      184 MOVE                             R25 R0
      185 NAMECALL                         R23 R23 K27 ["format"]
      187 CALL                             R23 2 1
      188 MOVE                             R22 R23
      189 SETTABLEKS                       R22 R21 K17 ["testId"]
      191 GETIMPORT                        R22 K30 [Vector2.new]
      193 LOADN                            R23 0
      194 LOADN                            R24 1
      195 CALL                             R22 2 1
      196 SETTABLEKS                       R22 R21 K18 ["AnchorPoint"]
      198 GETIMPORT                        R22 K34 [UDim2.fromScale]
      200 LOADN                            R23 0
      201 LOADN                            R24 1
      202 CALL                             R22 2 1
      203 SETTABLEKS                       R22 R21 K19 ["Position"]
      205 GETIMPORT                        R22 K35 [UDim2.new]
      207 LOADN                            R23 1
      208 LOADN                            R24 0
      209 LOADN                            R25 0
      210 GETUPVAL                         R26 4
      211 GETTABLEKS                       R26 R26 K51 ["Stroke"]
      213 GETTABLEKS                       R26 R26 K52 ["Standard"]
      215 CALL                             R22 4 1
      216 SETTABLEKS                       R22 R21 K20 ["Size"]
      218 CALL                             R19 2 1
      219 SETTABLEKS                       R19 R18 K53 ["Divider"]
      221 GETUPVAL                         R19 5
      222 GETUPVAL                         R20 6
      223 GETTABLEKS                       R20 R20 K16 ["View"]
      225 DUPTABLE                         R21 K55 [{"testId", "ref", "Size", "tag"}]
      226 SETTABLEKS                       R0 R21 K17 ["testId"]
      228 SETTABLEKS                       R8 R21 K54 ["ref"]
      230 GETIMPORT                        R22 K35 [UDim2.new]
      232 LOADN                            R23 1
      233 LOADN                            R24 0
      234 LOADN                            R25 0
      235 MOVE                             R26 R12
      236 CALL                             R22 4 1
      237 SETTABLEKS                       R22 R21 K20 ["Size"]
      239 SETTABLEKS                       R16 R21 K24 ["tag"]
      241 MOVE                             R22 R18
      242 CALL                             R19 3 -1
      243 RETURN                           R19 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Text"]
        4 DUPTABLE                         R3 K5 [{["testId"] = "--appkit-header-bar-title", [2], ["tag"] = "text-heading-medium content-emphasis auto-xy"}]
        5 GETTABLEKS                       R4 R0 K6 ["text"]
        7 SETTABLEKS                       R4 R3 K0 ["Text"]
        9 CALL                             R1 2 -1
       10 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R3 R0 K2 ["isCompact"]
        8 JUMPIFNOT                        R3 ; [+2]
        9 LOADN                            R2 15
       10 JUMP                             ; [+1]
       11 LOADN                            R2 18
       12 GETUPVAL                         R3 1
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K3 ["Image"]
       16 DUPTABLE                         R5 K10 [{["testId"] = "--appkit-header-bar-logo", ["Image"] = "rbxassetid://107191763505655", ["imageStyle"], ["ScaleType"], ["Size"]}]
       17 GETTABLEKS                       R6 R1 K11 ["Color"]
       19 GETTABLEKS                       R6 R6 K12 ["Content"]
       21 GETTABLEKS                       R6 R6 K13 ["Emphasis"]
       23 SETTABLEKS                       R6 R5 K7 ["imageStyle"]
       25 GETIMPORT                        R6 K16 [Enum.ScaleType.Fit]
       27 SETTABLEKS                       R6 R5 K8 ["ScaleType"]
       29 GETIMPORT                        R6 K19 [UDim2.fromOffset]
       31 MULK                             R8 R2 K20 [5.44444444444444]
       32 FASTCALL1                        MATH_ROUND R8 ; [+2]
       33 GETIMPORT                        R7 K23 [math.round]
       35 CALL                             R7 1 1
       36 MOVE                             R8 R2
       37 CALL                             R6 2 1
       38 SETTABLEKS                       R6 R5 K9 ["Size"]
       40 CALL                             R3 2 -1
       41 RETURN                           R3 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R2 R1 K2 ["Color"]
        8 GETTABLEKS                       R2 R2 K3 ["Content"]
       10 GETTABLEKS                       R2 R2 K4 ["Emphasis"]
       12 GETUPVAL                         R3 1
       13 LOADK                            R4 K5 ["TextLabel"]
       14 DUPTABLE                         R5 K20 [{["Name"] = "--appkit-header-bar-product-logo", ["Text"], ["FontFace"], ["TextSize"], ["LineHeight"] = 1.2, ["TextColor3"], ["TextTransparency"], ["TextXAlignment"], ["TextYAlignment"], ["BackgroundTransparency"] = 1, ["AutomaticSize"]}]
       15 GETIMPORT                        R6 K23 [string.upper]
       17 GETTABLEKS                       R8 R0 K25 ["text"]
       19 ORK                              R7 R8 K24 ["Product"]
       20 CALL                             R6 1 1
       21 SETTABLEKS                       R6 R5 K8 ["Text"]
       23 GETUPVAL                         R6 2
       24 SETTABLEKS                       R6 R5 K9 ["FontFace"]
       26 GETTABLEKS                       R7 R0 K26 ["isCompact"]
       28 JUMPIFNOT                        R7 ; [+2]
       29 LOADN                            R6 18
       30 JUMP                             ; [+1]
       31 LOADN                            R6 22
       32 SETTABLEKS                       R6 R5 K10 ["TextSize"]
       34 GETTABLEKS                       R6 R2 K27 ["Color3"]
       36 SETTABLEKS                       R6 R5 K13 ["TextColor3"]
       38 GETTABLEKS                       R6 R2 K28 ["Transparency"]
       40 SETTABLEKS                       R6 R5 K14 ["TextTransparency"]
       42 GETIMPORT                        R6 K31 [Enum.TextXAlignment.Left]
       44 SETTABLEKS                       R6 R5 K15 ["TextXAlignment"]
       46 GETIMPORT                        R6 K33 [Enum.TextYAlignment.Center]
       48 SETTABLEKS                       R6 R5 K16 ["TextYAlignment"]
       50 GETIMPORT                        R6 K35 [Enum.AutomaticSize.XY]
       52 SETTABLEKS                       R6 R5 K19 ["AutomaticSize"]
       54 CALL                             R3 2 -1
       55 RETURN                           R3 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K6 [{[1] = "three-bars-horizontal", ["ariaLabel"] = "Open menu", ["onActivated"], ["isCompact"]}]
        3 GETTABLEKS                       R4 R0 K4 ["onActivated"]
        5 SETTABLEKS                       R4 R3 K4 ["onActivated"]
        7 GETTABLEKS                       R4 R0 K5 ["isCompact"]
        9 SETTABLEKS                       R4 R3 K5 ["isCompact"]
       11 CALL                             R1 2 -1
       12 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K6 [{[1] = "chevron-large-left", ["ariaLabel"] = "Back", ["onActivated"], ["isCompact"]}]
        3 GETTABLEKS                       R4 R0 K4 ["onActivated"]
        5 SETTABLEKS                       R4 R3 K4 ["onActivated"]
        7 GETTABLEKS                       R4 R0 K5 ["isCompact"]
        9 SETTABLEKS                       R4 R3 K5 ["isCompact"]
       11 CALL                             R1 2 -1
       12 RETURN                           R1 -1

PROTO_7:
        0 DUPTABLE                         R1 K1 [{"Button"}]
        1 GETUPVAL                         R2 0
        2 GETUPVAL                         R3 1
        3 DUPTABLE                         R4 K7 [{["icon"] = "bell", ["ariaLabel"] = "Notifications", ["isCompact"]}]
        4 GETTABLEKS                       R5 R0 K6 ["isCompact"]
        6 SETTABLEKS                       R5 R4 K6 ["isCompact"]
        8 CALL                             R2 2 1
        9 SETTABLEKS                       R2 R1 K0 ["Button"]
       11 GETTABLEKS                       R2 R0 K8 ["count"]
       13 JUMPIFEQKNIL                     R2 ; [+134]
       15 GETTABLEKS                       R2 R0 K8 ["count"]
       17 LOADN                            R3 0
       18 JUMPIFNOTLT                      R3 R2 ; [+129]
       20 GETUPVAL                         R2 2
       21 GETTABLEKS                       R2 R2 K9 ["Size"]
       23 GETTABLEKS                       R2 R2 K10 ["Size_400"]
       25 GETTABLEKS                       R4 R0 K8 ["count"]
       27 LOADN                            R5 9
       28 JUMPIFLE                         R4 R5 ; [+2]
       30 LOADB                            R3 0 +1
       31 LOADB                            R3 1
       32 GETUPVAL                         R4 0
       33 GETUPVAL                         R5 3
       34 GETTABLEKS                       R5 R5 K11 ["View"]
       36 DUPTABLE                         R6 K20 [{["testId"] = "--appkit-header-bar-notification-badge", ["AnchorPoint"], ["Position"], ["AutomaticSize"], ["Size"], ["ZIndex"] = 2, ["tag"]}]
       37 GETIMPORT                        R7 K23 [Vector2.new]
       39 LOADN                            R8 1
       40 LOADN                            R9 0
       41 CALL                             R7 2 1
       42 SETTABLEKS                       R7 R6 K14 ["AnchorPoint"]
       44 GETIMPORT                        R7 K25 [UDim2.new]
       46 LOADN                            R8 1
       47 GETUPVAL                         R9 2
       48 GETTABLEKS                       R9 R9 K26 ["Padding"]
       50 GETTABLEKS                       R9 R9 K27 ["XXSmall"]
       52 LOADN                            R10 0
       53 GETUPVAL                         R12 2
       54 GETTABLEKS                       R12 R12 K26 ["Padding"]
       56 GETTABLEKS                       R12 R12 K27 ["XXSmall"]
       58 MINUS                            R11 R12
       59 CALL                             R7 4 1
       60 SETTABLEKS                       R7 R6 K15 ["Position"]
       62 JUMPIFNOT                        R3 ; [+3]
       63 GETIMPORT                        R7 K30 [Enum.AutomaticSize.None]
       65 JUMP                             ; [+2]
       66 GETIMPORT                        R7 K32 [Enum.AutomaticSize.X]
       68 SETTABLEKS                       R7 R6 K16 ["AutomaticSize"]
       70 JUMPIFNOT                        R3 ; [+6]
       71 GETIMPORT                        R7 K34 [UDim2.fromOffset]
       73 MOVE                             R8 R2
       74 MOVE                             R9 R2
       75 CALL                             R7 2 1
       76 JUMP                             ; [+5]
       77 GETIMPORT                        R7 K34 [UDim2.fromOffset]
       79 LOADN                            R8 0
       80 MOVE                             R9 R2
       81 CALL                             R7 2 1
       82 SETTABLEKS                       R7 R6 K9 ["Size"]
       84 JUMPIFNOT                        R3 ; [+2]
       85 LOADK                            R7 K35 ["row align-x-center align-y-center radius-circle bg-system-emphasis"]
       86 JUMP                             ; [+1]
       87 LOADK                            R7 K36 ["row align-x-center align-y-center radius-circle bg-system-emphasis padding-x-xxsmall"]
       88 SETTABLEKS                       R7 R6 K19 ["tag"]
       90 DUPTABLE                         R7 K39 [{"SizeConstraint", "Count"}]
       91 JUMPIFNOT                        R3 ; [+2]
       92 LOADNIL                          R8
       93 JUMP                             ; [+11]
       94 GETUPVAL                         R8 0
       95 LOADK                            R9 K40 ["UISizeConstraint"]
       96 DUPTABLE                         R10 K42 [{"MinSize"}]
       97 GETIMPORT                        R11 K23 [Vector2.new]
       99 MOVE                             R12 R2
      100 MOVE                             R13 R2
      101 CALL                             R11 2 1
      102 SETTABLEKS                       R11 R10 K41 ["MinSize"]
      104 CALL                             R8 2 1
      105 SETTABLEKS                       R8 R7 K37 ["SizeConstraint"]
      107 GETUPVAL                         R8 0
      108 GETUPVAL                         R9 3
      109 GETTABLEKS                       R9 R9 K43 ["Text"]
      111 DUPTABLE                         R10 K45 [{["Text"], ["AutomaticSize"], ["Size"], ["tag"] = "text-label-small content-inverse-emphasis text-align-x-center text-align-y-center text-no-wrap"}]
      112 GETTABLEKS                       R12 R0 K8 ["count"]
      114 FASTCALL1                        TOSTRING R12 ; [+2]
      115 GETIMPORT                        R11 K47 [tostring]
      117 CALL                             R11 1 1
      118 SETTABLEKS                       R11 R10 K43 ["Text"]
      120 JUMPIFNOT                        R3 ; [+3]
      121 GETIMPORT                        R11 K30 [Enum.AutomaticSize.None]
      123 JUMP                             ; [+2]
      124 GETIMPORT                        R11 K32 [Enum.AutomaticSize.X]
      126 SETTABLEKS                       R11 R10 K16 ["AutomaticSize"]
      128 JUMPIFNOT                        R3 ; [+6]
      129 GETIMPORT                        R11 K49 [UDim2.fromScale]
      131 LOADN                            R12 1
      132 LOADN                            R13 1
      133 CALL                             R11 2 1
      134 JUMP                             ; [+5]
      135 GETIMPORT                        R11 K34 [UDim2.fromOffset]
      137 LOADN                            R12 0
      138 MOVE                             R13 R2
      139 CALL                             R11 2 1
      140 SETTABLEKS                       R11 R10 K9 ["Size"]
      142 CALL                             R8 2 1
      143 SETTABLEKS                       R8 R7 K38 ["Count"]
      145 CALL                             R4 3 1
      146 SETTABLEKS                       R4 R1 K50 ["Badge"]
      148 GETUPVAL                         R2 0
      149 GETUPVAL                         R3 3
      150 GETTABLEKS                       R3 R3 K11 ["View"]
      152 DUPTABLE                         R4 K53 [{["testId"] = "--appkit-header-bar-notification", ["AutomaticSize"], ["LayoutOrder"]}]
      153 GETIMPORT                        R5 K55 [Enum.AutomaticSize.XY]
      155 SETTABLEKS                       R5 R4 K16 ["AutomaticSize"]
      157 GETTABLEKS                       R5 R0 K52 ["LayoutOrder"]
      159 SETTABLEKS                       R5 R4 K52 ["LayoutOrder"]
      161 MOVE                             R5 R1
      162 CALL                             R2 3 -1
      163 RETURN                           R2 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Avatar"]
        4 DUPTABLE                         R3 K6 [{["testId"] = "--appkit-header-bar-avatar", ["userId"], ["size"], ["LayoutOrder"]}]
        5 GETTABLEKS                       R5 R0 K3 ["userId"]
        7 ORK                              R4 R5 K7 [1]
        8 SETTABLEKS                       R4 R3 K3 ["userId"]
       10 GETTABLEKS                       R5 R0 K8 ["isCompact"]
       12 JUMPIFNOT                        R5 ; [+8]
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K9 ["Enums"]
       16 GETTABLEKS                       R4 R4 K10 ["InputSize"]
       18 GETTABLEKS                       R4 R4 K11 ["Small"]
       20 JUMP                             ; [+7]
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R4 R4 K9 ["Enums"]
       24 GETTABLEKS                       R4 R4 K10 ["InputSize"]
       26 GETTABLEKS                       R4 R4 K12 ["Medium"]
       28 SETTABLEKS                       R4 R3 K4 ["size"]
       30 GETTABLEKS                       R4 R0 K5 ["LayoutOrder"]
       32 SETTABLEKS                       R4 R3 K5 ["LayoutOrder"]
       34 CALL                             R1 2 -1
       35 RETURN                           R1 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 ADDK                             R0 R0 K0 [1]
        2 SETUPVAL                         R0 0
        3 GETUPVAL                         R0 0
        4 RETURN                           R0 1

PROTO_10:
        0 LOADN                            R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          REF R1
        3 NEWTABLE                         R3 4 0
        5 GETTABLEKS                       R4 R0 K0 ["hasSearch"]
        7 JUMPIFNOT                        R4 ; [+14]
        8 GETUPVAL                         R4 0
        9 GETUPVAL                         R5 1
       10 DUPTABLE                         R6 K7 [{["icon"] = "magnifying-glass", ["ariaLabel"] = "Search", ["isCompact"], ["LayoutOrder"]}]
       11 GETTABLEKS                       R7 R0 K5 ["isCompact"]
       13 SETTABLEKS                       R7 R6 K5 ["isCompact"]
       15 ADDK                             R1 R1 K8 [1]
       16 MOVE                             R7 R1
       17 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
       19 CALL                             R4 2 1
       20 SETTABLEKS                       R4 R3 K4 ["Search"]
       22 GETTABLEKS                       R4 R0 K9 ["hasRoblox"]
       24 JUMPIFNOT                        R4 ; [+14]
       25 GETUPVAL                         R4 0
       26 GETUPVAL                         R5 1
       27 DUPTABLE                         R6 K12 [{["icon"] = "robux", ["ariaLabel"] = "Robux", ["isCompact"], ["LayoutOrder"]}]
       28 GETTABLEKS                       R7 R0 K5 ["isCompact"]
       30 SETTABLEKS                       R7 R6 K5 ["isCompact"]
       32 ADDK                             R1 R1 K8 [1]
       33 MOVE                             R7 R1
       34 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
       36 CALL                             R4 2 1
       37 SETTABLEKS                       R4 R3 K13 ["Roblox"]
       39 GETTABLEKS                       R4 R0 K14 ["hasSettings"]
       41 JUMPIFNOT                        R4 ; [+14]
       42 GETUPVAL                         R4 0
       43 GETUPVAL                         R5 1
       44 DUPTABLE                         R6 K17 [{["icon"] = "gear", ["ariaLabel"] = "Settings", ["isCompact"], ["LayoutOrder"]}]
       45 GETTABLEKS                       R7 R0 K5 ["isCompact"]
       47 SETTABLEKS                       R7 R6 K5 ["isCompact"]
       49 ADDK                             R1 R1 K8 [1]
       50 MOVE                             R7 R1
       51 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
       53 CALL                             R4 2 1
       54 SETTABLEKS                       R4 R3 K16 ["Settings"]
       56 GETTABLEKS                       R4 R0 K18 ["hasNotifications"]
       58 JUMPIFNOT                        R4 ; [+18]
       59 GETUPVAL                         R4 0
       60 GETUPVAL                         R5 2
       61 DUPTABLE                         R6 K20 [{"count", "isCompact", "LayoutOrder"}]
       62 GETTABLEKS                       R7 R0 K21 ["notificationCount"]
       64 SETTABLEKS                       R7 R6 K19 ["count"]
       66 GETTABLEKS                       R7 R0 K5 ["isCompact"]
       68 SETTABLEKS                       R7 R6 K5 ["isCompact"]
       70 ADDK                             R1 R1 K8 [1]
       71 MOVE                             R7 R1
       72 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
       74 CALL                             R4 2 1
       75 SETTABLEKS                       R4 R3 K22 ["Notifications"]
       77 DUPTABLE                         R4 K24 [{"Icons"}]
       78 GETUPVAL                         R5 0
       79 GETUPVAL                         R6 3
       80 GETTABLEKS                       R6 R6 K25 ["View"]
       82 DUPTABLE                         R7 K31 [{["testId"] = "--appkit-header-bar-utilities", ["AutomaticSize"], ["LayoutOrder"] = 1, ["tag"] = "row align-y-center gap-xsmall auto-xy"}]
       83 GETIMPORT                        R8 K34 [Enum.AutomaticSize.XY]
       85 SETTABLEKS                       R8 R7 K28 ["AutomaticSize"]
       87 MOVE                             R8 R3
       88 CALL                             R5 3 1
       89 SETTABLEKS                       R5 R4 K23 ["Icons"]
       91 GETTABLEKS                       R5 R0 K35 ["avatarUserId"]
       93 JUMPIFEQKNIL                     R5 ; [+15]
       95 GETUPVAL                         R5 0
       96 GETUPVAL                         R6 4
       97 DUPTABLE                         R7 K38 [{["userId"], ["isCompact"], ["LayoutOrder"] = 2}]
       98 GETTABLEKS                       R8 R0 K35 ["avatarUserId"]
      100 SETTABLEKS                       R8 R7 K36 ["userId"]
      102 GETTABLEKS                       R8 R0 K5 ["isCompact"]
      104 SETTABLEKS                       R8 R7 K5 ["isCompact"]
      106 CALL                             R5 2 1
      107 SETTABLEKS                       R5 R4 K39 ["Avatar"]
      109 GETUPVAL                         R5 0
      110 GETUPVAL                         R6 3
      111 GETTABLEKS                       R6 R6 K25 ["View"]
      113 DUPTABLE                         R7 K40 [{"AutomaticSize", "tag"}]
      114 GETIMPORT                        R8 K34 [Enum.AutomaticSize.XY]
      116 SETTABLEKS                       R8 R7 K28 ["AutomaticSize"]
      118 LOADK                            R9 K41 ["row align-y-center %* auto-xy"]
      119 GETTABLEKS                       R12 R0 K5 ["isCompact"]
      121 JUMPIFNOT                        R12 ; [+2]
      122 LOADK                            R11 K42 ["gap-none"]
      123 JUMP                             ; [+1]
      124 LOADK                            R11 K43 ["gap-medium"]
      125 NAMECALL                         R9 R9 K44 ["format"]
      127 CALL                             R9 2 1
      128 MOVE                             R8 R9
      129 SETTABLEKS                       R8 R7 K29 ["tag"]
      131 MOVE                             R8 R4
      132 CALL                             R5 3 -1
      133 CLOSEUPVALS                      R1
      134 RETURN                           R5 -1

PROTO_11:
        0 GETTABLEKS                       R2 R0 K0 ["withSearch"]
        2 JUMPIFNOTEQKNIL                  R2 ; [+3]
        4 LOADB                            R1 1
        5 JUMP                             ; [+2]
        6 GETTABLEKS                       R1 R0 K0 ["withSearch"]
        8 GETTABLEKS                       R3 R0 K1 ["withSettings"]
       10 JUMPIFNOTEQKNIL                  R3 ; [+3]
       12 LOADB                            R2 1
       13 JUMP                             ; [+2]
       14 GETTABLEKS                       R2 R0 K1 ["withSettings"]
       16 GETUPVAL                         R3 0
       17 GETUPVAL                         R4 1
       18 DUPTABLE                         R5 K9 [{["hasSearch"], ["hasSettings"], ["hasNotifications"] = True, ["notificationCount"], ["avatarUserId"], ["isCompact"]}]
       19 SETTABLEKS                       R1 R5 K2 ["hasSearch"]
       21 SETTABLEKS                       R2 R5 K3 ["hasSettings"]
       23 GETTABLEKS                       R7 R0 K6 ["notificationCount"]
       25 JUMPIFEQKNIL                     R7 ; [+4]
       27 GETTABLEKS                       R6 R0 K6 ["notificationCount"]
       29 JUMP                             ; [+1]
       30 LOADN                            R6 9
       31 SETTABLEKS                       R6 R5 K6 ["notificationCount"]
       33 GETTABLEKS                       R7 R0 K7 ["avatarUserId"]
       35 ORK                              R6 R7 K10 [1]
       36 SETTABLEKS                       R6 R5 K7 ["avatarUserId"]
       38 GETTABLEKS                       R6 R0 K8 ["isCompact"]
       40 SETTABLEKS                       R6 R5 K8 ["isCompact"]
       42 CALL                             R3 2 -1
       43 RETURN                           R3 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["View"]
        4 DUPTABLE                         R3 K6 [{["testId"] = "--appkit-header-bar-empty-utilities", ["AutomaticSize"], ["tag"] = "row align-y-center gap-xsmall auto-xy"}]
        5 GETIMPORT                        R4 K9 [Enum.AutomaticSize.XY]
        7 SETTABLEKS                       R4 R3 K3 ["AutomaticSize"]
        9 DUPTABLE                         R4 K12 [{"Search", "More"}]
       10 GETUPVAL                         R5 0
       11 GETUPVAL                         R6 2
       12 DUPTABLE                         R7 K19 [{["icon"] = "magnifying-glass", ["ariaLabel"] = "Search", ["isCompact"], ["LayoutOrder"] = 1}]
       13 GETTABLEKS                       R8 R0 K16 ["isCompact"]
       15 SETTABLEKS                       R8 R7 K16 ["isCompact"]
       17 CALL                             R5 2 1
       18 SETTABLEKS                       R5 R4 K10 ["Search"]
       20 GETUPVAL                         R5 0
       21 GETUPVAL                         R6 2
       22 DUPTABLE                         R7 K23 [{["icon"] = "three-dots-horizontal", ["ariaLabel"] = "More options", ["isCompact"], ["LayoutOrder"] = 2}]
       23 GETTABLEKS                       R8 R0 K16 ["isCompact"]
       25 SETTABLEKS                       R8 R7 K16 ["isCompact"]
       27 CALL                             R5 2 1
       28 SETTABLEKS                       R5 R4 K11 ["More"]
       30 CALL                             R1 3 -1
       31 RETURN                           R1 -1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["View"]
        4 DUPTABLE                         R3 K5 [{["testId"] = "--appkit-header-bar-user-leading", ["AutomaticSize"], ["tag"]}]
        5 GETIMPORT                        R4 K8 [Enum.AutomaticSize.XY]
        7 SETTABLEKS                       R4 R3 K3 ["AutomaticSize"]
        9 LOADK                            R5 K9 ["row align-y-center %* auto-xy"]
       10 GETTABLEKS                       R8 R0 K10 ["isCompact"]
       12 JUMPIFNOT                        R8 ; [+2]
       13 LOADK                            R7 K11 ["gap-small"]
       14 JUMP                             ; [+1]
       15 LOADK                            R7 K12 ["gap-medium"]
       16 NAMECALL                         R5 R5 K13 ["format"]
       18 CALL                             R5 2 1
       19 MOVE                             R4 R5
       20 SETTABLEKS                       R4 R3 K4 ["tag"]
       22 DUPTABLE                         R4 K16 [{"Avatar", "Text"}]
       23 GETUPVAL                         R5 0
       24 GETUPVAL                         R6 1
       25 GETTABLEKS                       R6 R6 K14 ["Avatar"]
       27 DUPTABLE                         R7 K21 [{["userId"], ["size"], ["LayoutOrder"] = 1}]
       28 GETTABLEKS                       R9 R0 K17 ["userId"]
       30 ORK                              R8 R9 K20 [1]
       31 SETTABLEKS                       R8 R7 K17 ["userId"]
       33 GETTABLEKS                       R9 R0 K10 ["isCompact"]
       35 JUMPIFNOT                        R9 ; [+8]
       36 GETUPVAL                         R8 1
       37 GETTABLEKS                       R8 R8 K22 ["Enums"]
       39 GETTABLEKS                       R8 R8 K23 ["InputSize"]
       41 GETTABLEKS                       R8 R8 K24 ["Small"]
       43 JUMP                             ; [+7]
       44 GETUPVAL                         R8 1
       45 GETTABLEKS                       R8 R8 K22 ["Enums"]
       47 GETTABLEKS                       R8 R8 K23 ["InputSize"]
       49 GETTABLEKS                       R8 R8 K25 ["Medium"]
       51 SETTABLEKS                       R8 R7 K18 ["size"]
       53 CALL                             R5 2 1
       54 SETTABLEKS                       R5 R4 K14 ["Avatar"]
       56 GETUPVAL                         R5 0
       57 GETUPVAL                         R6 1
       58 GETTABLEKS                       R6 R6 K0 ["View"]
       60 DUPTABLE                         R7 K28 [{["LayoutOrder"] = 2, ["AutomaticSize"], ["layout"]}]
       61 GETIMPORT                        R8 K8 [Enum.AutomaticSize.XY]
       63 SETTABLEKS                       R8 R7 K3 ["AutomaticSize"]
       65 DUPTABLE                         R8 K32 [{"FillDirection", "HorizontalAlignment", "SortOrder"}]
       66 GETIMPORT                        R9 K34 [Enum.FillDirection.Vertical]
       68 SETTABLEKS                       R9 R8 K29 ["FillDirection"]
       70 GETIMPORT                        R9 K36 [Enum.HorizontalAlignment.Left]
       72 SETTABLEKS                       R9 R8 K30 ["HorizontalAlignment"]
       74 GETIMPORT                        R9 K37 [Enum.SortOrder.LayoutOrder]
       76 SETTABLEKS                       R9 R8 K31 ["SortOrder"]
       78 SETTABLEKS                       R8 R7 K27 ["layout"]
       80 DUPTABLE                         R8 K40 [{"Username", "Handle"}]
       81 GETUPVAL                         R9 0
       82 GETUPVAL                         R10 1
       83 GETTABLEKS                       R10 R10 K15 ["Text"]
       85 DUPTABLE                         R11 K42 [{["Text"], ["LayoutOrder"] = 1, ["AutomaticSize"], ["tag"] = "text-title-small content-emphasis text-align-x-left text-no-wrap text-truncate-end"}]
       86 GETTABLEKS                       R13 R0 K43 ["username"]
       88 ORK                              R12 R13 K38 ["Username"]
       89 SETTABLEKS                       R12 R11 K15 ["Text"]
       91 GETIMPORT                        R12 K8 [Enum.AutomaticSize.XY]
       93 SETTABLEKS                       R12 R11 K3 ["AutomaticSize"]
       95 CALL                             R9 2 1
       96 SETTABLEKS                       R9 R8 K38 ["Username"]
       98 GETUPVAL                         R9 0
       99 GETUPVAL                         R10 1
      100 GETTABLEKS                       R10 R10 K15 ["Text"]
      102 DUPTABLE                         R11 K45 [{["Text"], ["LayoutOrder"] = 2, ["AutomaticSize"], ["tag"] = "text-body-small content-muted text-align-x-left text-no-wrap"}]
      103 GETTABLEKS                       R13 R0 K47 ["handle"]
      105 ORK                              R12 R13 K46 ["@handle"]
      106 SETTABLEKS                       R12 R11 K15 ["Text"]
      108 GETIMPORT                        R12 K8 [Enum.AutomaticSize.XY]
      110 SETTABLEKS                       R12 R11 K3 ["AutomaticSize"]
      112 CALL                             R9 2 1
      113 SETTABLEKS                       R9 R8 K39 ["Handle"]
      115 CALL                             R5 3 1
      116 SETTABLEKS                       R5 R4 K15 ["Text"]
      118 CALL                             R1 3 -1
      119 RETURN                           R1 -1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 ADDK                             R0 R0 K0 [1]
        2 SETUPVAL                         R0 0
        3 GETUPVAL                         R0 0
        4 RETURN                           R0 1

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["crumbs"]
        2 JUMPIF                           R1 ; [+7]
        3 NEWTABLE                         R1 0 3
        5 LOADK                            R2 K1 ["Link"]
        6 LOADK                            R3 K1 ["Link"]
        7 LOADK                            R4 K1 ["Link"]
        8 SETLIST                          R1 R2 3 [1]
       10 GETTABLEKS                       R3 R0 K2 ["isCompact"]
       12 JUMPIFNOT                        R3 ; [+2]
       13 LOADK                            R2 K3 ["text-title-small"]
       14 JUMP                             ; [+1]
       15 LOADK                            R2 K4 ["text-title-medium"]
       16 NEWTABLE                         R3 0 0
       18 LOADN                            R4 0
       19 NEWCLOSURE                       R5 P0
       20 CAPTURE                          REF R4
       21 GETIMPORT                        R6 K6 [ipairs]
       23 MOVE                             R7 R1
       24 CALL                             R6 1 3
       25 FORGPREP_INEXT                   R6
       26 LENGTH                           R12 R1
       27 JUMPIFEQ                         R9 R12 ; [+2]
       29 LOADB                            R11 0 +1
       30 LOADB                            R11 1
       31 LOADK                            R13 K7 ["Crumb"]
       32 MOVE                             R14 R9
       33 CONCAT                           R12 R13 R14
       34 GETUPVAL                         R13 0
       35 GETUPVAL                         R14 1
       36 GETTABLEKS                       R14 R14 K8 ["Text"]
       38 DUPTABLE                         R15 K12 [{"Text", "LayoutOrder", "AutomaticSize", "tag"}]
       39 SETTABLEKS                       R10 R15 K8 ["Text"]
       41 ADDK                             R4 R4 K13 [1]
       42 MOVE                             R16 R4
       43 SETTABLEKS                       R16 R15 K9 ["LayoutOrder"]
       45 GETIMPORT                        R16 K16 [Enum.AutomaticSize.XY]
       47 SETTABLEKS                       R16 R15 K10 ["AutomaticSize"]
       49 LOADK                            R17 K17 ["%* %* text-no-wrap"]
       50 MOVE                             R19 R2
       51 JUMPIFNOT                        R11 ; [+2]
       52 LOADK                            R20 K18 ["content-emphasis"]
       53 JUMP                             ; [+1]
       54 LOADK                            R20 K19 ["content-muted"]
       55 NAMECALL                         R17 R17 K20 ["format"]
       57 CALL                             R17 3 1
       58 MOVE                             R16 R17
       59 SETTABLEKS                       R16 R15 K11 ["tag"]
       61 CALL                             R13 2 1
       62 SETTABLE                         R13 R3 R12
       63 JUMPIF                           R11 ; [+26]
       64 LOADK                            R13 K21 ["Sep"]
       65 MOVE                             R14 R9
       66 CONCAT                           R12 R13 R14
       67 GETUPVAL                         R13 0
       68 GETUPVAL                         R14 1
       69 GETTABLEKS                       R14 R14 K8 ["Text"]
       71 DUPTABLE                         R15 K23 [{["Text"] = "/", ["LayoutOrder"], ["AutomaticSize"], ["tag"]}]
       72 ADDK                             R4 R4 K13 [1]
       73 MOVE                             R16 R4
       74 SETTABLEKS                       R16 R15 K9 ["LayoutOrder"]
       76 GETIMPORT                        R16 K16 [Enum.AutomaticSize.XY]
       78 SETTABLEKS                       R16 R15 K10 ["AutomaticSize"]
       80 LOADK                            R17 K24 ["%* content-muted text-no-wrap"]
       81 MOVE                             R19 R2
       82 NAMECALL                         R17 R17 K20 ["format"]
       84 CALL                             R17 2 1
       85 MOVE                             R16 R17
       86 SETTABLEKS                       R16 R15 K11 ["tag"]
       88 CALL                             R13 2 1
       89 SETTABLE                         R13 R3 R12
       90 FORGLOOP                         R6 2 [inext] ; [-65]
       92 GETUPVAL                         R6 0
       93 GETUPVAL                         R7 1
       94 GETTABLEKS                       R7 R7 K25 ["View"]
       96 DUPTABLE                         R8 K30 [{["testId"] = "--appkit-header-bar-breadcrumbs-nav", ["LayoutOrder"] = 2, ["AutomaticSize"], ["tag"] = "row align-y-center gap-xsmall auto-xy"}]
       97 GETIMPORT                        R9 K16 [Enum.AutomaticSize.XY]
       99 SETTABLEKS                       R9 R8 K10 ["AutomaticSize"]
      101 MOVE                             R9 R3
      102 CALL                             R6 3 1
      103 GETTABLEKS                       R7 R0 K31 ["withMenu"]
      105 JUMPIF                           R7 ; [+2]
      106 CLOSEUPVALS                      R4
      107 RETURN                           R6 1
      108 GETUPVAL                         R7 0
      109 GETUPVAL                         R8 1
      110 GETTABLEKS                       R8 R8 K25 ["View"]
      112 DUPTABLE                         R9 K33 [{["testId"] = "--appkit-header-bar-breadcrumbs", ["AutomaticSize"], ["tag"]}]
      113 GETIMPORT                        R10 K16 [Enum.AutomaticSize.XY]
      115 SETTABLEKS                       R10 R9 K10 ["AutomaticSize"]
      117 LOADK                            R11 K34 ["row align-y-center %* auto-xy"]
      118 GETTABLEKS                       R14 R0 K2 ["isCompact"]
      120 JUMPIFNOT                        R14 ; [+2]
      121 LOADK                            R13 K35 ["gap-small"]
      122 JUMP                             ; [+1]
      123 LOADK                            R13 K36 ["gap-medium"]
      124 NAMECALL                         R11 R11 K20 ["format"]
      126 CALL                             R11 2 1
      127 MOVE                             R10 R11
      128 SETTABLEKS                       R10 R9 K11 ["tag"]
      130 DUPTABLE                         R10 K39 [{"Menu", "Nav"}]
      131 GETUPVAL                         R11 0
      132 GETUPVAL                         R12 2
      133 DUPTABLE                         R13 K41 [{"onActivated", "isCompact"}]
      134 GETTABLEKS                       R14 R0 K42 ["onMenuActivated"]
      136 SETTABLEKS                       R14 R13 K40 ["onActivated"]
      138 GETTABLEKS                       R14 R0 K2 ["isCompact"]
      140 SETTABLEKS                       R14 R13 K2 ["isCompact"]
      142 CALL                             R11 2 1
      143 SETTABLEKS                       R11 R10 K37 ["Menu"]
      145 SETTABLEKS                       R6 R10 K38 ["Nav"]
      147 CALL                             R7 3 -1
      148 CLOSEUPVALS                      R4
      149 RETURN                           R7 -1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onActivated"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["onActivated"]
        7 GETUPVAL                         R1 1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["items"]
        2 JUMPIF                           R1 ; [+8]
        3 NEWTABLE                         R1 0 4
        5 LOADK                            R2 K1 ["Discover"]
        6 LOADK                            R3 K2 ["Catalog"]
        7 LOADK                            R4 K3 ["Create"]
        8 LOADK                            R5 K4 ["Trade"]
        9 SETLIST                          R1 R2 4 [1]
       11 GETTABLEKS                       R2 R0 K5 ["active"]
       13 JUMPIF                           R2 ; [+1]
       14 GETTABLEN                        R2 R1 1
       15 NEWTABLE                         R3 0 0
       17 GETIMPORT                        R4 K7 [ipairs]
       19 MOVE                             R5 R1
       20 CALL                             R4 1 3
       21 FORGPREP_INEXT                   R4
       22 LOADK                            R10 K8 ["Item"]
       23 MOVE                             R11 R7
       24 CONCAT                           R9 R10 R11
       25 GETUPVAL                         R10 0
       26 GETUPVAL                         R11 1
       27 GETTABLEKS                       R11 R11 K9 ["Button"]
       29 DUPTABLE                         R12 K15 [{"text", "size", "variant", "onActivated", "LayoutOrder"}]
       30 SETTABLEKS                       R8 R12 K10 ["text"]
       32 GETUPVAL                         R13 1
       33 GETTABLEKS                       R13 R13 K16 ["Enums"]
       35 GETTABLEKS                       R13 R13 K17 ["InputSize"]
       37 GETTABLEKS                       R13 R13 K18 ["Medium"]
       39 SETTABLEKS                       R13 R12 K11 ["size"]
       41 JUMPIFNOTEQ                      R8 R2 ; [+9]
       43 GETUPVAL                         R13 1
       44 GETTABLEKS                       R13 R13 K16 ["Enums"]
       46 GETTABLEKS                       R13 R13 K19 ["ButtonVariant"]
       48 GETTABLEKS                       R13 R13 K20 ["Standard"]
       50 JUMP                             ; [+7]
       51 GETUPVAL                         R13 1
       52 GETTABLEKS                       R13 R13 K16 ["Enums"]
       54 GETTABLEKS                       R13 R13 K19 ["ButtonVariant"]
       56 GETTABLEKS                       R13 R13 K21 ["Utility"]
       58 SETTABLEKS                       R13 R12 K12 ["variant"]
       60 NEWCLOSURE                       R13 P0
       61 CAPTURE                          VAL R0
       62 CAPTURE                          VAL R8
       63 SETTABLEKS                       R13 R12 K13 ["onActivated"]
       65 SETTABLEKS                       R7 R12 K14 ["LayoutOrder"]
       67 CALL                             R10 2 1
       68 SETTABLE                         R10 R3 R9
       69 FORGLOOP                         R4 2 [inext] ; [-48]
       71 GETUPVAL                         R4 0
       72 GETUPVAL                         R5 1
       73 GETTABLEKS                       R5 R5 K22 ["View"]
       75 DUPTABLE                         R6 K28 [{["testId"] = "--appkit-header-bar-marketing-nav", ["AutomaticSize"], ["tag"] = "row align-y-center gap-xsmall auto-xy"}]
       76 GETIMPORT                        R7 K31 [Enum.AutomaticSize.XY]
       78 SETTABLEKS                       R7 R6 K25 ["AutomaticSize"]
       80 MOVE                             R7 R3
       81 CALL                             R4 3 -1
       82 RETURN                           R4 -1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onActivated"]
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["onActivated"]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K1 ["value"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R2 R0 K2 ["items"]
        8 JUMPIF                           R2 ; [+6]
        9 NEWTABLE                         R2 0 2
       11 DUPTABLE                         R3 K7 [{["value"] = "shop", ["label"] = "Shop"}]
       12 DUPTABLE                         R4 K10 [{["value"] = "customize", ["label"] = "Customize"}]
       13 SETLIST                          R2 R3 2 [1]
       15 GETTABLEKS                       R3 R0 K3 ["value"]
       17 JUMPIF                           R3 ; [+3]
       18 GETTABLEN                        R3 R2 1
       19 GETTABLEKS                       R3 R3 K3 ["value"]
       21 GETTABLEKS                       R5 R0 K11 ["isCompact"]
       23 JUMPIFNOT                        R5 ; [+6]
       24 GETUPVAL                         R4 1
       25 GETTABLEKS                       R4 R4 K12 ["Size"]
       27 GETTABLEKS                       R4 R4 K13 ["Size_800"]
       29 JUMP                             ; [+5]
       30 GETUPVAL                         R4 1
       31 GETTABLEKS                       R4 R4 K12 ["Size"]
       33 GETTABLEKS                       R4 R4 K14 ["Size_1000"]
       35 NEWTABLE                         R5 0 0
       37 GETIMPORT                        R6 K16 [ipairs]
       39 MOVE                             R7 R2
       40 CALL                             R6 1 3
       41 FORGPREP_INEXT                   R6
       42 GETTABLEKS                       R12 R10 K3 ["value"]
       44 JUMPIFEQ                         R12 R3 ; [+2]
       46 LOADB                            R11 0 +1
       47 LOADB                            R11 1
       48 GETTABLEKS                       R12 R10 K3 ["value"]
       50 GETUPVAL                         R13 2
       51 GETUPVAL                         R14 0
       52 GETTABLEKS                       R14 R14 K17 ["View"]
       54 DUPTABLE                         R15 K23 [{"LayoutOrder", "onActivated", "stateLayer", "AutomaticSize", "Size", "tag"}]
       55 SETTABLEKS                       R9 R15 K18 ["LayoutOrder"]
       57 NEWCLOSURE                       R16 P0
       58 CAPTURE                          VAL R0
       59 CAPTURE                          VAL R10
       60 SETTABLEKS                       R16 R15 K19 ["onActivated"]
       62 DUPTABLE                         R16 K25 [{"affordance"}]
       63 GETUPVAL                         R17 0
       64 GETTABLEKS                       R17 R17 K26 ["Enums"]
       66 GETTABLEKS                       R17 R17 K27 ["StateLayerAffordance"]
       68 GETTABLEKS                       R17 R17 K28 ["None"]
       70 SETTABLEKS                       R17 R16 K24 ["affordance"]
       72 SETTABLEKS                       R16 R15 K20 ["stateLayer"]
       74 GETIMPORT                        R16 K31 [Enum.AutomaticSize.X]
       76 SETTABLEKS                       R16 R15 K21 ["AutomaticSize"]
       78 GETIMPORT                        R16 K34 [UDim2.new]
       80 LOADN                            R17 0
       81 LOADN                            R18 0
       82 LOADN                            R19 1
       83 LOADN                            R20 0
       84 CALL                             R16 4 1
       85 SETTABLEKS                       R16 R15 K12 ["Size"]
       87 LOADK                            R17 K35 ["row align-x-center align-y-center radius-circle padding-x-medium%*"]
       88 JUMPIFNOT                        R11 ; [+2]
       89 LOADK                            R19 K36 [" bg-shift-300"]
       90 JUMP                             ; [+1]
       91 LOADK                            R19 K37 [""]
       92 NAMECALL                         R17 R17 K38 ["format"]
       94 CALL                             R17 2 1
       95 MOVE                             R16 R17
       96 SETTABLEKS                       R16 R15 K22 ["tag"]
       98 DUPTABLE                         R16 K40 [{"Label"}]
       99 GETUPVAL                         R17 2
      100 GETUPVAL                         R18 0
      101 GETTABLEKS                       R18 R18 K41 ["Text"]
      103 DUPTABLE                         R19 K42 [{"Text", "AutomaticSize", "Size", "tag"}]
      104 GETTABLEKS                       R20 R10 K5 ["label"]
      106 SETTABLEKS                       R20 R19 K41 ["Text"]
      108 GETIMPORT                        R20 K31 [Enum.AutomaticSize.X]
      110 SETTABLEKS                       R20 R19 K21 ["AutomaticSize"]
      112 GETIMPORT                        R20 K34 [UDim2.new]
      114 LOADN                            R21 0
      115 LOADN                            R22 0
      116 LOADN                            R23 1
      117 LOADN                            R24 0
      118 CALL                             R20 4 1
      119 SETTABLEKS                       R20 R19 K12 ["Size"]
      121 LOADK                            R21 K43 ["text-label-medium %* text-no-wrap text-align-y-center"]
      122 JUMPIFNOT                        R11 ; [+2]
      123 LOADK                            R23 K44 ["content-emphasis"]
      124 JUMP                             ; [+1]
      125 LOADK                            R23 K45 ["content-default"]
      126 NAMECALL                         R21 R21 K38 ["format"]
      128 CALL                             R21 2 1
      129 MOVE                             R20 R21
      130 SETTABLEKS                       R20 R19 K22 ["tag"]
      132 CALL                             R17 2 1
      133 SETTABLEKS                       R17 R16 K39 ["Label"]
      135 CALL                             R13 3 1
      136 SETTABLE                         R13 R5 R12
      137 FORGLOOP                         R6 2 [inext] ; [-96]
      139 GETUPVAL                         R6 1
      140 GETTABLEKS                       R6 R6 K46 ["Padding"]
      142 GETTABLEKS                       R6 R6 K47 ["XSmall"]
      144 GETUPVAL                         R7 2
      145 GETUPVAL                         R8 0
      146 GETTABLEKS                       R8 R8 K17 ["View"]
      148 DUPTABLE                         R9 K53 [{["testId"] = "--appkit-header-bar-section-tabs", ["AutomaticSize"], ["Size"], ["tag"] = "row align-y-center radius-circle", ["padding"], ["stroke"]}]
      149 GETIMPORT                        R10 K31 [Enum.AutomaticSize.X]
      151 SETTABLEKS                       R10 R9 K21 ["AutomaticSize"]
      153 GETIMPORT                        R10 K34 [UDim2.new]
      155 LOADN                            R11 0
      156 LOADN                            R12 0
      157 LOADN                            R13 0
      158 MOVE                             R14 R4
      159 CALL                             R10 4 1
      160 SETTABLEKS                       R10 R9 K12 ["Size"]
      162 DUPTABLE                         R10 K58 [{"top", "bottom", "left", "right"}]
      163 GETIMPORT                        R11 K60 [UDim.new]
      165 LOADN                            R12 0
      166 MOVE                             R13 R6
      167 CALL                             R11 2 1
      168 SETTABLEKS                       R11 R10 K54 ["top"]
      170 GETIMPORT                        R11 K60 [UDim.new]
      172 LOADN                            R12 0
      173 MOVE                             R13 R6
      174 CALL                             R11 2 1
      175 SETTABLEKS                       R11 R10 K55 ["bottom"]
      177 GETIMPORT                        R11 K60 [UDim.new]
      179 LOADN                            R12 0
      180 MOVE                             R13 R6
      181 CALL                             R11 2 1
      182 SETTABLEKS                       R11 R10 K56 ["left"]
      184 GETIMPORT                        R11 K60 [UDim.new]
      186 LOADN                            R12 0
      187 MOVE                             R13 R6
      188 CALL                             R11 2 1
      189 SETTABLEKS                       R11 R10 K57 ["right"]
      191 SETTABLEKS                       R10 R9 K51 ["padding"]
      193 DUPTABLE                         R10 K65 [{"Color", "Transparency", "Thickness", "BorderStrokePosition"}]
      194 GETTABLEKS                       R11 R1 K61 ["Color"]
      196 GETTABLEKS                       R11 R11 K66 ["Stroke"]
      198 GETTABLEKS                       R11 R11 K67 ["Emphasis"]
      200 GETTABLEKS                       R11 R11 K68 ["Color3"]
      202 SETTABLEKS                       R11 R10 K61 ["Color"]
      204 GETTABLEKS                       R11 R1 K61 ["Color"]
      206 GETTABLEKS                       R11 R11 K66 ["Stroke"]
      208 GETTABLEKS                       R11 R11 K67 ["Emphasis"]
      210 GETTABLEKS                       R11 R11 K62 ["Transparency"]
      212 SETTABLEKS                       R11 R10 K62 ["Transparency"]
      214 GETTABLEKS                       R11 R1 K66 ["Stroke"]
      216 GETTABLEKS                       R11 R11 K69 ["Standard"]
      218 SETTABLEKS                       R11 R10 K63 ["Thickness"]
      220 GETIMPORT                        R11 K71 [Enum.BorderStrokePosition.Inner]
      222 SETTABLEKS                       R11 R10 K64 ["BorderStrokePosition"]
      224 SETTABLEKS                       R10 R9 K52 ["stroke"]
      226 MOVE                             R10 R5
      227 CALL                             R7 3 -1
      228 RETURN                           R7 -1

PROTO_20:
        0 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R1 R0 K0 ["width"]
        2 JUMPIF                           R1 ; [+6]
        3 GETTABLEKS                       R2 R0 K1 ["isCompact"]
        5 JUMPIFNOT                        R2 ; [+2]
        6 LOADN                            R1 240
        7 JUMP                             ; [+1]
        8 LOADN                            R1 400
        9 GETUPVAL                         R2 0
       10 GETUPVAL                         R3 1
       11 DUPTABLE                         R4 K5 [{"text", "onChanged", "size", "width"}]
       12 GETTABLEKS                       R6 R0 K2 ["text"]
       14 ORK                              R5 R6 K6 [""]
       15 SETTABLEKS                       R5 R4 K2 ["text"]
       17 GETTABLEKS                       R5 R0 K3 ["onChanged"]
       19 JUMPIF                           R5 ; [+1]
       20 DUPCLOSURE                       R5 K7 [PROTO_20]
       21 SETTABLEKS                       R5 R4 K3 ["onChanged"]
       23 GETTABLEKS                       R6 R0 K1 ["isCompact"]
       25 JUMPIFNOT                        R6 ; [+8]
       26 GETUPVAL                         R5 2
       27 GETTABLEKS                       R5 R5 K8 ["Enums"]
       29 GETTABLEKS                       R5 R5 K9 ["InputSize"]
       31 GETTABLEKS                       R5 R5 K10 ["Small"]
       33 JUMP                             ; [+7]
       34 GETUPVAL                         R5 2
       35 GETTABLEKS                       R5 R5 K8 ["Enums"]
       37 GETTABLEKS                       R5 R5 K9 ["InputSize"]
       39 GETTABLEKS                       R5 R5 K11 ["Medium"]
       41 SETTABLEKS                       R5 R4 K4 ["size"]
       43 GETIMPORT                        R5 K14 [UDim.new]
       45 LOADN                            R6 0
       46 MOVE                             R7 R1
       47 CALL                             R5 2 1
       48 SETTABLEKS                       R5 R4 K0 ["width"]
       50 CALL                             R2 2 -1
       51 RETURN                           R2 -1

PROTO_22:
        0 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["IconButton"]
        4 DUPTABLE                         R3 K9 [{["testId"], ["icon"] = "x", ["onActivated"], ["isCircular"] = True, ["variant"], ["size"]}]
        5 GETTABLEKS                       R5 R0 K1 ["testId"]
        7 ORK                              R4 R5 K10 ["--appkit-header-bar-over-media"]
        8 SETTABLEKS                       R4 R3 K1 ["testId"]
       10 GETTABLEKS                       R4 R0 K4 ["onActivated"]
       12 JUMPIF                           R4 ; [+1]
       13 DUPCLOSURE                       R4 K11 [PROTO_22]
       14 SETTABLEKS                       R4 R3 K4 ["onActivated"]
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R4 R4 K12 ["Enums"]
       19 GETTABLEKS                       R4 R4 K13 ["ButtonVariant"]
       21 GETTABLEKS                       R4 R4 K14 ["OverMedia"]
       23 SETTABLEKS                       R4 R3 K7 ["variant"]
       25 GETTABLEKS                       R5 R0 K15 ["isCompact"]
       27 JUMPIFNOT                        R5 ; [+8]
       28 GETUPVAL                         R4 1
       29 GETTABLEKS                       R4 R4 K12 ["Enums"]
       31 GETTABLEKS                       R4 R4 K16 ["InputSize"]
       33 GETTABLEKS                       R4 R4 K17 ["Small"]
       35 JUMP                             ; [+7]
       36 GETUPVAL                         R4 1
       37 GETTABLEKS                       R4 R4 K12 ["Enums"]
       39 GETTABLEKS                       R4 R4 K16 ["InputSize"]
       41 GETTABLEKS                       R4 R4 K18 ["Medium"]
       43 SETTABLEKS                       R4 R3 K8 ["size"]
       45 CALL                             R1 2 -1
       46 RETURN                           R1 -1

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K4 [{[1] = "--appkit-header-bar-close", ["onActivated"], ["isCompact"]}]
        3 GETTABLEKS                       R4 R0 K2 ["onActivated"]
        5 SETTABLEKS                       R4 R3 K2 ["onActivated"]
        7 GETTABLEKS                       R4 R0 K3 ["isCompact"]
        9 SETTABLEKS                       R4 R3 K3 ["isCompact"]
       11 CALL                             R1 2 -1
       12 RETURN                           R1 -1

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K4 [{[1] = "--appkit-header-bar-dismiss", ["onActivated"], ["isCompact"]}]
        3 GETTABLEKS                       R4 R0 K2 ["onActivated"]
        5 SETTABLEKS                       R4 R3 K2 ["onActivated"]
        7 GETTABLEKS                       R4 R0 K3 ["isCompact"]
        9 SETTABLEKS                       R4 R3 K3 ["isCompact"]
       11 CALL                             R1 2 -1
       12 RETURN                           R1 -1

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K6 [{[1] = "chevron-large-right", ["ariaLabel"] = "Forward", ["onActivated"], ["isCompact"]}]
        3 GETTABLEKS                       R4 R0 K4 ["onActivated"]
        5 SETTABLEKS                       R4 R3 K4 ["onActivated"]
        7 GETTABLEKS                       R4 R0 K5 ["isCompact"]
        9 SETTABLEKS                       R4 R3 K5 ["isCompact"]
       11 CALL                             R1 2 -1
       12 RETURN                           R1 -1

PROTO_27:
        0 GETTABLEKS                       R2 R0 K1 ["width"]
        2 ORK                              R1 R2 K0 [320]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K2 ["Hooks"]
        6 GETTABLEKS                       R2 R2 K3 ["useTokens"]
        8 CALL                             R2 0 1
        9 GETUPVAL                         R3 1
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K4 ["View"]
       13 DUPTABLE                         R5 K12 [{["testId"] = "--appkit-header-bar-custom-slot", ["Size"], ["AutomaticSize"], ["tag"] = "row align-x-center align-y-center radius-medium padding-small", ["stroke"]}]
       14 GETIMPORT                        R6 K15 [UDim2.new]
       16 LOADN                            R7 0
       17 MOVE                             R8 R1
       18 LOADN                            R9 0
       19 LOADN                            R10 0
       20 CALL                             R6 4 1
       21 SETTABLEKS                       R6 R5 K7 ["Size"]
       23 GETIMPORT                        R6 K18 [Enum.AutomaticSize.Y]
       25 SETTABLEKS                       R6 R5 K8 ["AutomaticSize"]
       27 DUPTABLE                         R6 K23 [{"Color", "Transparency", "Thickness", "BorderStrokePosition"}]
       28 GETTABLEKS                       R7 R2 K19 ["Color"]
       30 GETTABLEKS                       R7 R7 K24 ["Stroke"]
       32 GETTABLEKS                       R7 R7 K25 ["Default"]
       34 GETTABLEKS                       R7 R7 K26 ["Color3"]
       36 SETTABLEKS                       R7 R6 K19 ["Color"]
       38 GETTABLEKS                       R7 R2 K19 ["Color"]
       40 GETTABLEKS                       R7 R7 K24 ["Stroke"]
       42 GETTABLEKS                       R7 R7 K25 ["Default"]
       44 GETTABLEKS                       R7 R7 K20 ["Transparency"]
       46 SETTABLEKS                       R7 R6 K20 ["Transparency"]
       48 GETUPVAL                         R7 2
       49 GETTABLEKS                       R7 R7 K24 ["Stroke"]
       51 GETTABLEKS                       R7 R7 K27 ["Standard"]
       53 SETTABLEKS                       R7 R6 K21 ["Thickness"]
       55 GETIMPORT                        R7 K29 [Enum.BorderStrokePosition.Inner]
       57 SETTABLEKS                       R7 R6 K22 ["BorderStrokePosition"]
       59 SETTABLEKS                       R6 R5 K11 ["stroke"]
       61 DUPTABLE                         R6 K31 [{"Label"}]
       62 GETUPVAL                         R7 1
       63 GETUPVAL                         R8 0
       64 GETTABLEKS                       R8 R8 K32 ["Text"]
       66 DUPTABLE                         R9 K34 [{["Text"], ["AutomaticSize"], ["tag"] = "text-body-medium content-muted text-align-x-center"}]
       67 GETTABLEKS                       R11 R0 K36 ["label"]
       69 ORK                              R10 R11 K35 ["Custom slot"]
       70 SETTABLEKS                       R10 R9 K32 ["Text"]
       72 GETIMPORT                        R10 K38 [Enum.AutomaticSize.XY]
       74 SETTABLEKS                       R10 R9 K8 ["AutomaticSize"]
       76 CALL                             R7 2 1
       77 SETTABLEKS                       R7 R6 K30 ["Label"]
       79 CALL                             R3 3 -1
       80 RETURN                           R3 -1

PROTO_28:
        0 LOADNIL                          R1
        1 GETTABLEKS                       R2 R0 K0 ["title"]
        3 JUMPIFEQKNIL                     R2 ; [+65]
        5 DUPTABLE                         R2 K2 [{"Title"}]
        6 GETUPVAL                         R3 0
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K3 ["Text"]
       10 DUPTABLE                         R5 K11 [{["testId"] = "--appkit-header-bar-title", ["Text"], ["LayoutOrder"] = 1, ["AutomaticSize"], ["tag"] = "text-heading-medium content-emphasis text-align-x-left text-no-wrap text-truncate-end"}]
       11 GETTABLEKS                       R6 R0 K0 ["title"]
       13 SETTABLEKS                       R6 R5 K3 ["Text"]
       15 GETIMPORT                        R6 K14 [Enum.AutomaticSize.XY]
       17 SETTABLEKS                       R6 R5 K8 ["AutomaticSize"]
       19 CALL                             R3 2 1
       20 SETTABLEKS                       R3 R2 K1 ["Title"]
       22 GETTABLEKS                       R3 R0 K15 ["subtitle"]
       24 JUMPIFEQKNIL                     R3 ; [+17]
       26 GETUPVAL                         R3 0
       27 GETUPVAL                         R4 1
       28 GETTABLEKS                       R4 R4 K3 ["Text"]
       30 DUPTABLE                         R5 K18 [{["Text"], ["LayoutOrder"] = 2, ["AutomaticSize"], ["tag"] = "text-body-small content-muted text-align-x-left text-no-wrap text-truncate-end"}]
       31 GETTABLEKS                       R6 R0 K15 ["subtitle"]
       33 SETTABLEKS                       R6 R5 K3 ["Text"]
       35 GETIMPORT                        R6 K14 [Enum.AutomaticSize.XY]
       37 SETTABLEKS                       R6 R5 K8 ["AutomaticSize"]
       39 CALL                             R3 2 1
       40 SETTABLEKS                       R3 R2 K19 ["Subtitle"]
       42 GETUPVAL                         R3 0
       43 GETUPVAL                         R4 1
       44 GETTABLEKS                       R4 R4 K20 ["View"]
       46 DUPTABLE                         R5 K22 [{"AutomaticSize", "layout"}]
       47 GETIMPORT                        R6 K14 [Enum.AutomaticSize.XY]
       49 SETTABLEKS                       R6 R5 K8 ["AutomaticSize"]
       51 DUPTABLE                         R6 K26 [{"FillDirection", "HorizontalAlignment", "SortOrder"}]
       52 GETIMPORT                        R7 K28 [Enum.FillDirection.Vertical]
       54 SETTABLEKS                       R7 R6 K23 ["FillDirection"]
       56 GETIMPORT                        R7 K30 [Enum.HorizontalAlignment.Left]
       58 SETTABLEKS                       R7 R6 K24 ["HorizontalAlignment"]
       60 GETIMPORT                        R7 K31 [Enum.SortOrder.LayoutOrder]
       62 SETTABLEKS                       R7 R6 K25 ["SortOrder"]
       64 SETTABLEKS                       R6 R5 K21 ["layout"]
       66 MOVE                             R6 R2
       67 CALL                             R3 3 1
       68 MOVE                             R1 R3
       69 LOADNIL                          R2
       70 GETTABLEKS                       R3 R0 K32 ["leading"]
       72 JUMPIFEQKNIL                     R3 ; [+48]
       74 JUMPIFEQKNIL                     R1 ; [+46]
       76 GETUPVAL                         R3 0
       77 GETUPVAL                         R4 1
       78 GETTABLEKS                       R4 R4 K20 ["View"]
       80 DUPTABLE                         R5 K34 [{["AutomaticSize"], ["tag"] = "row align-y-center gap-small"}]
       81 GETIMPORT                        R6 K14 [Enum.AutomaticSize.XY]
       83 SETTABLEKS                       R6 R5 K8 ["AutomaticSize"]
       85 DUPTABLE                         R6 K37 [{"Accessory", "Titles"}]
       86 GETUPVAL                         R7 0
       87 GETUPVAL                         R8 1
       88 GETTABLEKS                       R8 R8 K20 ["View"]
       90 DUPTABLE                         R9 K38 [{["LayoutOrder"] = 1, ["AutomaticSize"]}]
       91 GETIMPORT                        R10 K14 [Enum.AutomaticSize.XY]
       93 SETTABLEKS                       R10 R9 K8 ["AutomaticSize"]
       95 DUPTABLE                         R10 K40 [{"C"}]
       96 GETTABLEKS                       R11 R0 K32 ["leading"]
       98 SETTABLEKS                       R11 R10 K39 ["C"]
      100 CALL                             R7 3 1
      101 SETTABLEKS                       R7 R6 K35 ["Accessory"]
      103 GETUPVAL                         R7 0
      104 GETUPVAL                         R8 1
      105 GETTABLEKS                       R8 R8 K20 ["View"]
      107 DUPTABLE                         R9 K41 [{["LayoutOrder"] = 2, ["AutomaticSize"]}]
      108 GETIMPORT                        R10 K14 [Enum.AutomaticSize.XY]
      110 SETTABLEKS                       R10 R9 K8 ["AutomaticSize"]
      112 DUPTABLE                         R10 K40 [{"C"}]
      113 SETTABLEKS                       R1 R10 K39 ["C"]
      115 CALL                             R7 3 1
      116 SETTABLEKS                       R7 R6 K36 ["Titles"]
      118 CALL                             R3 3 1
      119 MOVE                             R2 R3
      120 JUMP                             ; [+3]
      121 GETTABLEKS                       R3 R0 K32 ["leading"]
      123 OR                               R2 R3 R1
      124 GETUPVAL                         R3 2
      125 LOADK                            R4 K42 ["--appkit-header-bar"]
      126 GETTABLEKS                       R5 R0 K43 ["height"]
      128 GETTABLEKS                       R6 R0 K44 ["isCompact"]
      130 GETTABLEKS                       R7 R0 K45 ["hasDivider"]
      132 GETTABLEKS                       R8 R0 K46 ["hasBackground"]
      134 MOVE                             R9 R2
      135 GETTABLEKS                       R10 R0 K47 ["center"]
      137 GETTABLEKS                       R11 R0 K48 ["trailing"]
      139 CALL                             R3 8 -1
      140 RETURN                           R3 -1

PROTO_29:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["--appkit-footer-bar"]
        2 GETTABLEKS                       R3 R0 K1 ["height"]
        4 GETTABLEKS                       R4 R0 K2 ["isCompact"]
        6 GETTABLEKS                       R5 R0 K3 ["hasDivider"]
        8 GETTABLEKS                       R6 R0 K4 ["hasBackground"]
       10 GETTABLEKS                       R7 R0 K5 ["leading"]
       12 GETTABLEKS                       R8 R0 K6 ["center"]
       14 GETTABLEKS                       R9 R0 K7 ["trailing"]
       16 CALL                             R1 8 -1
       17 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DesignAssist"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 FASTCALL2K                       ASSERT R0 K4 ; [+5]
        9 MOVE                             R2 R0
       10 LOADK                            R3 K4 ["AppFramework.Bars must run inside the DesignAssist plugin tree"]
       11 GETIMPORT                        R1 K6 [assert]
       13 CALL                             R1 2 0
       14 GETIMPORT                        R1 K8 [require]
       16 GETTABLEKS                       R2 R0 K9 ["Packages"]
       18 GETTABLEKS                       R2 R2 K10 ["React"]
       20 CALL                             R1 1 1
       21 GETIMPORT                        R2 K8 [require]
       23 GETTABLEKS                       R3 R0 K9 ["Packages"]
       25 GETTABLEKS                       R3 R3 K11 ["Foundation"]
       27 CALL                             R2 1 1
       28 GETIMPORT                        R3 K8 [require]
       30 GETIMPORT                        R4 K1 [script]
       32 GETTABLEKS                       R4 R4 K12 ["Parent"]
       34 GETTABLEKS                       R4 R4 K13 ["UtilityButton"]
       36 CALL                             R3 1 1
       37 GETIMPORT                        R4 K8 [require]
       39 GETIMPORT                        R5 K1 [script]
       41 GETTABLEKS                       R5 R5 K12 ["Parent"]
       43 GETTABLEKS                       R5 R5 K14 ["SearchInput"]
       45 CALL                             R4 1 1
       46 GETIMPORT                        R5 K8 [require]
       48 GETIMPORT                        R6 K1 [script]
       50 GETTABLEKS                       R6 R6 K12 ["Parent"]
       52 GETTABLEKS                       R6 R6 K15 ["Hooks"]
       54 CALL                             R5 1 1
       55 GETTABLEKS                       R6 R1 K16 ["createElement"]
       57 GETTABLEKS                       R7 R2 K17 ["Utility"]
       59 GETTABLEKS                       R7 R7 K18 ["getTokens"]
       61 GETTABLEKS                       R8 R2 K19 ["Enums"]
       63 GETTABLEKS                       R8 R8 K20 ["Theme"]
       65 GETTABLEKS                       R8 R8 K21 ["Dark"]
       67 GETTABLEKS                       R9 R2 K19 ["Enums"]
       69 GETTABLEKS                       R9 R9 K22 ["Device"]
       71 GETTABLEKS                       R9 R9 K23 ["Desktop"]
       73 CALL                             R7 2 1
       74 GETTABLEKS                       R8 R7 K24 ["Size"]
       76 GETTABLEKS                       R8 R8 K25 ["Size_1800"]
       78 GETTABLEKS                       R9 R7 K24 ["Size"]
       80 GETTABLEKS                       R9 R9 K26 ["Size_1400"]
       82 DUPCLOSURE                       R10 K27 [PROTO_0]
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R2
       85 DUPCLOSURE                       R11 K28 [PROTO_1]
       86 CAPTURE                          VAL R1
       87 CAPTURE                          VAL R5
       88 CAPTURE                          VAL R9
       89 CAPTURE                          VAL R8
       90 CAPTURE                          VAL R7
       91 CAPTURE                          VAL R6
       92 CAPTURE                          VAL R2
       93 CAPTURE                          VAL R10
       94 DUPCLOSURE                       R12 K29 [PROTO_2]
       95 CAPTURE                          VAL R6
       96 CAPTURE                          VAL R2
       97 DUPCLOSURE                       R13 K30 [PROTO_3]
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R6
      100 GETIMPORT                        R14 K33 [Font.new]
      102 LOADK                            R15 K34 ["rbxasset://fonts/families/BuilderExtended.json"]
      103 GETIMPORT                        R16 K38 [Enum.FontWeight.Bold]
      105 CALL                             R14 2 1
      106 DUPCLOSURE                       R15 K39 [PROTO_4]
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R6
      109 CAPTURE                          VAL R14
      110 DUPCLOSURE                       R16 K40 [PROTO_5]
      111 CAPTURE                          VAL R6
      112 CAPTURE                          VAL R3
      113 DUPCLOSURE                       R17 K41 [PROTO_6]
      114 CAPTURE                          VAL R6
      115 CAPTURE                          VAL R3
      116 DUPCLOSURE                       R18 K42 [PROTO_7]
      117 CAPTURE                          VAL R6
      118 CAPTURE                          VAL R3
      119 CAPTURE                          VAL R7
      120 CAPTURE                          VAL R2
      121 DUPCLOSURE                       R19 K43 [PROTO_8]
      122 CAPTURE                          VAL R6
      123 CAPTURE                          VAL R2
      124 DUPCLOSURE                       R20 K44 [PROTO_10]
      125 CAPTURE                          VAL R6
      126 CAPTURE                          VAL R3
      127 CAPTURE                          VAL R18
      128 CAPTURE                          VAL R2
      129 CAPTURE                          VAL R19
      130 DUPCLOSURE                       R21 K45 [PROTO_11]
      131 CAPTURE                          VAL R6
      132 CAPTURE                          VAL R20
      133 DUPCLOSURE                       R22 K46 [PROTO_12]
      134 CAPTURE                          VAL R6
      135 CAPTURE                          VAL R2
      136 CAPTURE                          VAL R3
      137 DUPCLOSURE                       R23 K47 [PROTO_13]
      138 CAPTURE                          VAL R6
      139 CAPTURE                          VAL R2
      140 DUPCLOSURE                       R24 K48 [PROTO_15]
      141 CAPTURE                          VAL R6
      142 CAPTURE                          VAL R2
      143 CAPTURE                          VAL R16
      144 DUPCLOSURE                       R25 K49 [PROTO_17]
      145 CAPTURE                          VAL R6
      146 CAPTURE                          VAL R2
      147 DUPCLOSURE                       R26 K50 [PROTO_19]
      148 CAPTURE                          VAL R2
      149 CAPTURE                          VAL R7
      150 CAPTURE                          VAL R6
      151 DUPCLOSURE                       R27 K51 [PROTO_21]
      152 CAPTURE                          VAL R6
      153 CAPTURE                          VAL R4
      154 CAPTURE                          VAL R2
      155 DUPCLOSURE                       R28 K52 [PROTO_23]
      156 CAPTURE                          VAL R6
      157 CAPTURE                          VAL R2
      158 DUPCLOSURE                       R29 K53 [PROTO_24]
      159 CAPTURE                          VAL R6
      160 CAPTURE                          VAL R28
      161 DUPCLOSURE                       R30 K54 [PROTO_25]
      162 CAPTURE                          VAL R6
      163 CAPTURE                          VAL R28
      164 DUPCLOSURE                       R31 K55 [PROTO_26]
      165 CAPTURE                          VAL R6
      166 CAPTURE                          VAL R3
      167 DUPCLOSURE                       R32 K56 [PROTO_27]
      168 CAPTURE                          VAL R2
      169 CAPTURE                          VAL R6
      170 CAPTURE                          VAL R7
      171 DUPCLOSURE                       R33 K57 [PROTO_28]
      172 CAPTURE                          VAL R6
      173 CAPTURE                          VAL R2
      174 CAPTURE                          VAL R11
      175 DUPCLOSURE                       R34 K58 [PROTO_29]
      176 CAPTURE                          VAL R11
      177 DUPTABLE                         R35 K62 [{"HeaderBar", "FooterBar", "HeaderBarParts"}]
      178 SETTABLEKS                       R33 R35 K59 ["HeaderBar"]
      180 SETTABLEKS                       R34 R35 K60 ["FooterBar"]
      182 DUPTABLE                         R36 K82 [{"Title", "RobloxLogo", "ProductLogo", "MenuButton", "BackButton", "ForwardButton", "NotificationButton", "Avatar", "Utilities", "ProductTrailing", "EmptyUtilities", "UserLeading", "Breadcrumbs", "MarketingNav", "SectionTabs", "PillSearch", "CloseButton", "DismissButton", "CustomSlot"}]
      183 SETTABLEKS                       R12 R36 K63 ["Title"]
      185 SETTABLEKS                       R13 R36 K64 ["RobloxLogo"]
      187 SETTABLEKS                       R15 R36 K65 ["ProductLogo"]
      189 SETTABLEKS                       R16 R36 K66 ["MenuButton"]
      191 SETTABLEKS                       R17 R36 K67 ["BackButton"]
      193 SETTABLEKS                       R31 R36 K68 ["ForwardButton"]
      195 SETTABLEKS                       R18 R36 K69 ["NotificationButton"]
      197 SETTABLEKS                       R19 R36 K70 ["Avatar"]
      199 SETTABLEKS                       R20 R36 K71 ["Utilities"]
      201 SETTABLEKS                       R21 R36 K72 ["ProductTrailing"]
      203 SETTABLEKS                       R22 R36 K73 ["EmptyUtilities"]
      205 SETTABLEKS                       R23 R36 K74 ["UserLeading"]
      207 SETTABLEKS                       R24 R36 K75 ["Breadcrumbs"]
      209 SETTABLEKS                       R25 R36 K76 ["MarketingNav"]
      211 SETTABLEKS                       R26 R36 K77 ["SectionTabs"]
      213 SETTABLEKS                       R27 R36 K78 ["PillSearch"]
      215 SETTABLEKS                       R29 R36 K79 ["CloseButton"]
      217 SETTABLEKS                       R30 R36 K80 ["DismissButton"]
      219 SETTABLEKS                       R32 R36 K81 ["CustomSlot"]
      221 SETTABLEKS                       R36 R35 K61 ["HeaderBarParts"]
      223 RETURN                           R35 1
