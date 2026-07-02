PROTO_0:
        0 GETIMPORT                        R3 K3 [Enum.HorizontalAlignment.Left]
        2 JUMPIFNOTEQ                      R1 R3 ; [+3]
        4 LOADN                            R2 180
        5 JUMP                             ; [+1]
        6 LOADN                            R2 0
        7 GETIMPORT                        R4 K3 [Enum.HorizontalAlignment.Left]
        9 JUMPIFNOTEQ                      R1 R4 ; [+3]
       11 LOADN                            R3 360
       12 JUMP                             ; [+1]
       13 LOADN                            R3 180
       14 JUMPIFNOTEQKNIL                  R0 ; [+3]
       16 LOADN                            R4 0
       17 RETURN                           R4 1
       18 MULK                             R5 R0 K4 [360]
       19 FASTCALL3                        MATH_CLAMP R5 R2 R3
       21 MOVE                             R6 R2
       22 MOVE                             R7 R3
       23 GETIMPORT                        R4 K7 [math.clamp]
       25 CALL                             R4 3 1
       26 RETURN                           R4 1

PROTO_1:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADK                            R1 K0 ["0%"]
        3 RETURN                           R1 1
        4 LOADK                            R2 K1 ["%*%%"]
        5 MULK                             R5 R0 K2 [100]
        6 FASTCALL1                        MATH_FLOOR R5 ; [+2]
        7 GETIMPORT                        R4 K5 [math.floor]
        9 CALL                             R4 1 1
       10 NAMECALL                         R2 R2 K6 ["format"]
       12 CALL                             R2 2 1
       13 MOVE                             R1 R2
       14 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Color"]
        3 GETTABLEKS                       R0 R0 K1 ["Content"]
        5 GETTABLEKS                       R0 R0 K2 ["Emphasis"]
        7 GETTABLEKS                       R0 R0 K3 ["Transparency"]
        9 GETUPVAL                         R2 1
       10 JUMPIFNOT                        R2 ; [+2]
       11 LOADN                            R1 1
       12 JUMP                             ; [+9]
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K0 ["Color"]
       16 GETTABLEKS                       R1 R1 K4 ["Shift"]
       18 GETTABLEKS                       R1 R1 K5 ["Shift_200"]
       20 GETTABLEKS                       R1 R1 K3 ["Transparency"]
       22 GETIMPORT                        R2 K8 [NumberSequence.new]
       24 NEWTABLE                         R3 0 4
       26 GETIMPORT                        R4 K10 [NumberSequenceKeypoint.new]
       28 LOADN                            R5 0
       29 MOVE                             R6 R0
       30 CALL                             R4 2 1
       31 GETIMPORT                        R5 K10 [NumberSequenceKeypoint.new]
       33 LOADK                            R6 K11 [0.4999]
       34 MOVE                             R7 R0
       35 CALL                             R5 2 1
       36 GETIMPORT                        R6 K10 [NumberSequenceKeypoint.new]
       38 LOADK                            R7 K12 [0.5]
       39 MOVE                             R8 R1
       40 CALL                             R6 2 1
       41 GETIMPORT                        R7 K10 [NumberSequenceKeypoint.new]
       43 LOADN                            R8 1
       44 MOVE                             R9 R1
       45 CALL                             R7 2 -1
       46 SETLIST                          R3 R4 -1 [1]
       48 CALL                             R2 1 -1
       49 RETURN                           R2 -1

PROTO_3:
        0 GETIMPORT                        R0 K2 [ColorSequence.new]
        2 NEWTABLE                         R1 0 4
        4 GETIMPORT                        R2 K4 [ColorSequenceKeypoint.new]
        6 LOADN                            R3 0
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K5 ["Color"]
       10 GETTABLEKS                       R4 R4 K6 ["Content"]
       12 GETTABLEKS                       R4 R4 K7 ["Emphasis"]
       14 GETTABLEKS                       R4 R4 K8 ["Color3"]
       16 CALL                             R2 2 1
       17 GETIMPORT                        R3 K4 [ColorSequenceKeypoint.new]
       19 LOADK                            R4 K9 [0.4999]
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K5 ["Color"]
       23 GETTABLEKS                       R5 R5 K6 ["Content"]
       25 GETTABLEKS                       R5 R5 K7 ["Emphasis"]
       27 GETTABLEKS                       R5 R5 K8 ["Color3"]
       29 CALL                             R3 2 1
       30 GETIMPORT                        R4 K4 [ColorSequenceKeypoint.new]
       32 LOADK                            R5 K10 [0.5]
       33 GETUPVAL                         R6 0
       34 GETTABLEKS                       R6 R6 K5 ["Color"]
       36 GETTABLEKS                       R6 R6 K11 ["Shift"]
       38 GETTABLEKS                       R6 R6 K12 ["Shift_200"]
       40 GETTABLEKS                       R6 R6 K8 ["Color3"]
       42 CALL                             R4 2 1
       43 GETIMPORT                        R5 K4 [ColorSequenceKeypoint.new]
       45 LOADN                            R6 1
       46 GETUPVAL                         R7 0
       47 GETTABLEKS                       R7 R7 K5 ["Color"]
       49 GETTABLEKS                       R7 R7 K11 ["Shift"]
       51 GETTABLEKS                       R7 R7 K12 ["Shift_200"]
       53 GETTABLEKS                       R7 R7 K8 ["Color3"]
       55 CALL                             R5 2 -1
       56 SETLIST                          R1 R2 -1 [1]
       58 CALL                             R0 1 -1
       59 RETURN                           R0 -1

PROTO_4:
        0 GETIMPORT                        R1 K2 [NumberSequence.new]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K3 ["Color"]
        5 GETTABLEKS                       R3 R3 K4 ["Content"]
        7 GETTABLEKS                       R3 R3 K5 ["Emphasis"]
        9 GETTABLEKS                       R3 R3 K6 ["Transparency"]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K3 ["Color"]
       14 GETTABLEKS                       R4 R4 K7 ["Shift"]
       16 GETTABLEKS                       R4 R4 K8 ["Shift_200"]
       18 GETTABLEKS                       R4 R4 K6 ["Transparency"]
       20 FASTCALL3                        MATH_LERP R3 R4 R0
       22 MOVE                             R5 R0
       23 GETIMPORT                        R2 K11 [math.lerp]
       25 CALL                             R2 3 1
       26 CALL                             R1 1 -1
       27 RETURN                           R1 -1

PROTO_5:
        0 GETIMPORT                        R1 K2 [ColorSequence.new]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K3 ["Color"]
        5 GETTABLEKS                       R2 R2 K4 ["Content"]
        7 GETTABLEKS                       R2 R2 K5 ["Emphasis"]
        9 GETTABLEKS                       R2 R2 K6 ["Color3"]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K3 ["Color"]
       14 GETTABLEKS                       R4 R4 K7 ["Shift"]
       16 GETTABLEKS                       R4 R4 K8 ["Shift_200"]
       18 GETTABLEKS                       R4 R4 K6 ["Color3"]
       20 MOVE                             R5 R0
       21 NAMECALL                         R2 R2 K9 ["Lerp"]
       23 CALL                             R2 3 -1
       24 CALL                             R1 -1 -1
       25 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETIMPORT                        R4 K3 [Enum.HorizontalAlignment.Left]
        3 JUMPIFNOTEQ                      R2 R4 ; [+3]
        5 LOADN                            R3 180
        6 JUMP                             ; [+1]
        7 LOADN                            R3 0
        8 GETIMPORT                        R5 K3 [Enum.HorizontalAlignment.Left]
       10 JUMPIFNOTEQ                      R2 R5 ; [+3]
       12 LOADN                            R4 360
       13 JUMP                             ; [+1]
       14 LOADN                            R4 180
       15 JUMPIFNOTEQKNIL                  R0 ; [+3]
       17 LOADN                            R1 0
       18 RETURN                           R1 1
       19 MULK                             R6 R0 K4 [360]
       20 FASTCALL3                        MATH_CLAMP R6 R3 R4
       22 MOVE                             R7 R3
       23 MOVE                             R8 R4
       24 GETIMPORT                        R5 K7 [math.clamp]
       26 CALL                             R5 3 1
       27 MOVE                             R1 R5
       28 RETURN                           R1 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["side"]
        2 GETTABLEKS                       R2 R0 K1 ["isIndeterminate"]
        4 GETTABLEKS                       R3 R0 K2 ["progress"]
        6 GETUPVAL                         R4 0
        7 CALL                             R4 0 1
        8 GETUPVAL                         R5 1
        9 CALL                             R5 0 1
       10 GETUPVAL                         R6 2
       11 GETTABLEKS                       R6 R6 K3 ["useMemo"]
       13 NEWCLOSURE                       R7 P0
       14 CAPTURE                          VAL R4
       15 CAPTURE                          VAL R2
       16 NEWTABLE                         R8 0 2
       18 MOVE                             R9 R4
       19 MOVE                             R10 R2
       20 SETLIST                          R8 R9 2 [1]
       22 CALL                             R6 2 1
       23 GETUPVAL                         R7 2
       24 GETTABLEKS                       R7 R7 K3 ["useMemo"]
       26 NEWCLOSURE                       R8 P1
       27 CAPTURE                          VAL R4
       28 NEWTABLE                         R9 0 1
       30 MOVE                             R10 R4
       31 SETLIST                          R9 R10 1 [1]
       33 CALL                             R7 2 1
       34 JUMPIFNOT                        R2 ; [+42]
       35 GETTABLEKS                       R8 R5 K4 ["reducedMotion"]
       37 JUMPIFNOT                        R8 ; [+39]
       38 LOADNIL                          R8
       39 JUMPIF                           R2 ; [+3]
       40 GETTABLEKS                       R8 R0 K5 ["rotation"]
       42 JUMP                             ; [+7]
       43 GETIMPORT                        R9 K9 [Enum.HorizontalAlignment.Left]
       45 JUMPIFNOTEQ                      R1 R9 ; [+3]
       47 LOADN                            R8 0
       48 JUMP                             ; [+1]
       49 LOADN                            R8 180
       50 GETUPVAL                         R9 2
       51 GETTABLEKS                       R9 R9 K10 ["createElement"]
       53 LOADK                            R10 K11 ["UIGradient"]
       54 DUPTABLE                         R11 K15 [{"Transparency", "Color", "Rotation"}]
       55 GETTABLEKS                       R12 R0 K16 ["pulse"]
       57 NEWCLOSURE                       R14 P2
       58 CAPTURE                          VAL R4
       59 NAMECALL                         R12 R12 K17 ["map"]
       61 CALL                             R12 2 1
       62 SETTABLEKS                       R12 R11 K12 ["Transparency"]
       64 GETTABLEKS                       R12 R0 K16 ["pulse"]
       66 NEWCLOSURE                       R14 P3
       67 CAPTURE                          VAL R4
       68 NAMECALL                         R12 R12 K17 ["map"]
       70 CALL                             R12 2 1
       71 SETTABLEKS                       R12 R11 K13 ["Color"]
       73 SETTABLEKS                       R8 R11 K14 ["Rotation"]
       75 CALL                             R9 2 -1
       76 RETURN                           R9 -1
       77 GETUPVAL                         R8 2
       78 GETTABLEKS                       R8 R8 K10 ["createElement"]
       80 LOADK                            R9 K11 ["UIGradient"]
       81 DUPTABLE                         R10 K15 [{"Transparency", "Color", "Rotation"}]
       82 SETTABLEKS                       R6 R10 K12 ["Transparency"]
       84 SETTABLEKS                       R7 R10 K13 ["Color"]
       86 GETUPVAL                         R12 3
       87 GETTABLEKS                       R12 R12 K18 ["isBinding"]
       89 MOVE                             R13 R3
       90 CALL                             R12 1 1
       91 JUMPIFNOT                        R12 ; [+6]
       92 NEWCLOSURE                       R13 P4
       93 CAPTURE                          VAL R1
       94 NAMECALL                         R11 R3 K17 ["map"]
       96 CALL                             R11 2 1
       97 JUMP                             ; [+27]
       98 GETIMPORT                        R13 K9 [Enum.HorizontalAlignment.Left]
      100 JUMPIFNOTEQ                      R1 R13 ; [+3]
      102 LOADN                            R12 180
      103 JUMP                             ; [+1]
      104 LOADN                            R12 0
      105 GETIMPORT                        R14 K9 [Enum.HorizontalAlignment.Left]
      107 JUMPIFNOTEQ                      R1 R14 ; [+3]
      109 LOADN                            R13 360
      110 JUMP                             ; [+1]
      111 LOADN                            R13 180
      112 JUMPIFNOTEQKNIL                  R3 ; [+3]
      114 LOADN                            R11 0
      115 JUMP                             ; [+9]
      116 MULK                             R15 R3 K19 [360]
      117 FASTCALL3                        MATH_CLAMP R15 R12 R13
      119 MOVE                             R16 R12
      120 MOVE                             R17 R13
      121 GETIMPORT                        R14 K22 [math.clamp]
      123 CALL                             R14 3 1
      124 MOVE                             R11 R14
      125 SETTABLEKS                       R11 R10 K14 ["Rotation"]
      127 CALL                             R8 2 1
      128 RETURN                           R8 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 1
        4 GETUPVAL                         R2 2
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 3
        7 CALL                             R3 0 1
        8 GETUPVAL                         R4 4
        9 MOVE                             R5 R2
       10 GETTABLEKS                       R6 R1 K0 ["size"]
       12 CALL                             R4 2 1
       13 GETUPVAL                         R5 5
       14 GETTABLEKS                       R6 R1 K1 ["value"]
       16 CALL                             R5 1 2
       17 GETUPVAL                         R7 6
       18 GETTABLEKS                       R7 R7 K2 ["useBinding"]
       20 LOADK                            R8 K3 [0.8]
       21 CALL                             R7 1 1
       22 GETUPVAL                         R8 7
       23 LOADN                            R9 1
       24 CALL                             R8 1 1
       25 GETUPVAL                         R9 8
       26 GETUPVAL                         R11 9
       27 GETTABLEKS                       R11 R11 K5 ["INDETERMINATE_SHIMMER_SPEED"]
       29 DIVRK                            R10 K4 [1] R11
       30 CALL                             R9 1 1
       31 GETIMPORT                        R10 K8 [UDim2.fromOffset]
       33 GETTABLEKS                       R11 R4 K9 ["circle"]
       35 GETTABLEKS                       R11 R11 K0 ["size"]
       37 GETTABLEKS                       R12 R4 K9 ["circle"]
       39 GETTABLEKS                       R12 R12 K0 ["size"]
       41 CALL                             R10 2 1
       42 JUMPIFNOT                        R6 ; [+169]
       43 GETTABLEKS                       R11 R3 K10 ["reducedMotion"]
       45 JUMPIF                           R11 ; [+166]
       46 GETUPVAL                         R11 6
       47 GETTABLEKS                       R11 R11 K11 ["createElement"]
       49 GETUPVAL                         R12 10
       50 GETUPVAL                         R13 11
       51 MOVE                             R14 R1
       52 DUPTABLE                         R15 K15 [{["tag"] = "auto-xy", ["ref"]}]
       53 GETTABLEKS                       R16 R1 K14 ["ref"]
       55 SETTABLEKS                       R16 R15 K14 ["ref"]
       57 CALL                             R13 2 1
       58 DUPTABLE                         R14 K17 [{"IndeterminateContainer"}]
       59 GETUPVAL                         R15 6
       60 GETTABLEKS                       R15 R15 K11 ["createElement"]
       62 GETUPVAL                         R16 10
       63 DUPTABLE                         R17 K21 [{"Size", "Rotation", "testId"}]
       64 SETTABLEKS                       R10 R17 K18 ["Size"]
       66 SETTABLEKS                       R8 R17 K19 ["Rotation"]
       68 LOADK                            R19 K22 ["%*--indeterminate-container"]
       69 GETTABLEKS                       R21 R1 K20 ["testId"]
       71 NAMECALL                         R19 R19 K23 ["format"]
       73 CALL                             R19 2 1
       74 MOVE                             R18 R19
       75 SETTABLEKS                       R18 R17 K20 ["testId"]
       77 DUPTABLE                         R18 K26 [{"LeftGradient", "RightGradient"}]
       78 GETUPVAL                         R19 6
       79 GETTABLEKS                       R19 R19 K11 ["createElement"]
       81 GETUPVAL                         R20 10
       82 DUPTABLE                         R21 K28 [{["Size"], ["tag"] = "position-top-left clip", ["testId"]}]
       83 GETIMPORT                        R22 K30 [UDim2.fromScale]
       85 LOADK                            R23 K31 [0.5]
       86 LOADN                            R24 1
       87 CALL                             R22 2 1
       88 SETTABLEKS                       R22 R21 K18 ["Size"]
       90 LOADK                            R23 K32 ["%*--left-gradient"]
       91 GETTABLEKS                       R25 R1 K20 ["testId"]
       93 NAMECALL                         R23 R23 K23 ["format"]
       95 CALL                             R23 2 1
       96 MOVE                             R22 R23
       97 SETTABLEKS                       R22 R21 K20 ["testId"]
       99 DUPTABLE                         R22 K34 [{"Image"}]
      100 GETUPVAL                         R23 6
      101 GETTABLEKS                       R23 R23 K11 ["createElement"]
      103 GETUPVAL                         R24 12
      104 DUPTABLE                         R25 K37 [{["Image"] = "rbxasset://textures/ui/Controls/RadialFill.png", ["Size"], ["tag"] = "position-top-left content-emphasis"}]
      105 GETIMPORT                        R26 K30 [UDim2.fromScale]
      107 LOADN                            R27 2
      108 LOADN                            R28 1
      109 CALL                             R26 2 1
      110 SETTABLEKS                       R26 R25 K18 ["Size"]
      112 DUPTABLE                         R26 K39 [{"Gradient"}]
      113 GETUPVAL                         R27 6
      114 GETTABLEKS                       R27 R27 K11 ["createElement"]
      116 GETUPVAL                         R28 13
      117 DUPTABLE                         R29 K45 [{"side", "isIndeterminate", "rotation", "progress", "pulse"}]
      118 GETIMPORT                        R30 K49 [Enum.HorizontalAlignment.Left]
      120 SETTABLEKS                       R30 R29 K40 ["side"]
      122 SETTABLEKS                       R6 R29 K41 ["isIndeterminate"]
      124 SETTABLEKS                       R8 R29 K42 ["rotation"]
      126 SETTABLEKS                       R7 R29 K43 ["progress"]
      128 SETTABLEKS                       R9 R29 K44 ["pulse"]
      130 CALL                             R27 2 1
      131 SETTABLEKS                       R27 R26 K38 ["Gradient"]
      133 CALL                             R23 3 1
      134 SETTABLEKS                       R23 R22 K33 ["Image"]
      136 CALL                             R19 3 1
      137 SETTABLEKS                       R19 R18 K24 ["LeftGradient"]
      139 GETUPVAL                         R19 6
      140 GETTABLEKS                       R19 R19 K11 ["createElement"]
      142 GETUPVAL                         R20 10
      143 DUPTABLE                         R21 K51 [{["Size"], ["tag"] = "position-top-center clip", ["testId"]}]
      144 GETIMPORT                        R22 K30 [UDim2.fromScale]
      146 LOADK                            R23 K31 [0.5]
      147 LOADN                            R24 1
      148 CALL                             R22 2 1
      149 SETTABLEKS                       R22 R21 K18 ["Size"]
      151 LOADK                            R23 K52 ["%*--right-gradient"]
      152 GETTABLEKS                       R25 R1 K20 ["testId"]
      154 NAMECALL                         R23 R23 K23 ["format"]
      156 CALL                             R23 2 1
      157 MOVE                             R22 R23
      158 SETTABLEKS                       R22 R21 K20 ["testId"]
      160 DUPTABLE                         R22 K34 [{"Image"}]
      161 GETUPVAL                         R23 6
      162 GETTABLEKS                       R23 R23 K11 ["createElement"]
      164 GETUPVAL                         R24 12
      165 DUPTABLE                         R25 K55 [{["Image"] = "rbxasset://textures/ui/Controls/RadialFill.png", ["Size"], ["Position"], ["tag"] = "content-emphasis"}]
      166 GETIMPORT                        R26 K30 [UDim2.fromScale]
      168 LOADN                            R27 2
      169 LOADN                            R28 1
      170 CALL                             R26 2 1
      171 SETTABLEKS                       R26 R25 K18 ["Size"]
      173 GETIMPORT                        R26 K30 [UDim2.fromScale]
      175 LOADN                            R27 -1
      176 LOADN                            R28 0
      177 CALL                             R26 2 1
      178 SETTABLEKS                       R26 R25 K53 ["Position"]
      180 DUPTABLE                         R26 K39 [{"Gradient"}]
      181 GETUPVAL                         R27 6
      182 GETTABLEKS                       R27 R27 K11 ["createElement"]
      184 GETUPVAL                         R28 13
      185 DUPTABLE                         R29 K45 [{"side", "isIndeterminate", "rotation", "progress", "pulse"}]
      186 GETIMPORT                        R30 K57 [Enum.HorizontalAlignment.Right]
      188 SETTABLEKS                       R30 R29 K40 ["side"]
      190 SETTABLEKS                       R6 R29 K41 ["isIndeterminate"]
      192 SETTABLEKS                       R8 R29 K42 ["rotation"]
      194 SETTABLEKS                       R7 R29 K43 ["progress"]
      196 SETTABLEKS                       R9 R29 K44 ["pulse"]
      198 CALL                             R27 2 1
      199 SETTABLEKS                       R27 R26 K38 ["Gradient"]
      201 CALL                             R23 3 1
      202 SETTABLEKS                       R23 R22 K33 ["Image"]
      204 CALL                             R19 3 1
      205 SETTABLEKS                       R19 R18 K25 ["RightGradient"]
      207 CALL                             R15 3 1
      208 SETTABLEKS                       R15 R14 K16 ["IndeterminateContainer"]
      210 CALL                             R11 3 -1
      211 RETURN                           R11 -1
      212 GETUPVAL                         R11 6
      213 GETTABLEKS                       R11 R11 K11 ["createElement"]
      215 GETUPVAL                         R12 10
      216 GETUPVAL                         R13 11
      217 MOVE                             R14 R1
      218 DUPTABLE                         R15 K58 [{"Size", "ref"}]
      219 SETTABLEKS                       R10 R15 K18 ["Size"]
      221 GETTABLEKS                       R16 R1 K14 ["ref"]
      223 SETTABLEKS                       R16 R15 K14 ["ref"]
      225 CALL                             R13 2 1
      226 DUPTABLE                         R14 K60 [{"LeftGradient", "RightGradient", "ProgressLabel"}]
      227 GETUPVAL                         R15 6
      228 GETTABLEKS                       R15 R15 K11 ["createElement"]
      230 GETUPVAL                         R16 10
      231 DUPTABLE                         R17 K28 [{["Size"], ["tag"] = "position-top-left clip", ["testId"]}]
      232 GETIMPORT                        R18 K30 [UDim2.fromScale]
      234 LOADK                            R19 K31 [0.5]
      235 LOADN                            R20 1
      236 CALL                             R18 2 1
      237 SETTABLEKS                       R18 R17 K18 ["Size"]
      239 LOADK                            R19 K32 ["%*--left-gradient"]
      240 GETTABLEKS                       R21 R1 K20 ["testId"]
      242 NAMECALL                         R19 R19 K23 ["format"]
      244 CALL                             R19 2 1
      245 MOVE                             R18 R19
      246 SETTABLEKS                       R18 R17 K20 ["testId"]
      248 DUPTABLE                         R18 K34 [{"Image"}]
      249 GETUPVAL                         R19 6
      250 GETTABLEKS                       R19 R19 K11 ["createElement"]
      252 GETUPVAL                         R20 12
      253 DUPTABLE                         R21 K37 [{["Image"] = "rbxasset://textures/ui/Controls/RadialFill.png", ["Size"], ["tag"] = "position-top-left content-emphasis"}]
      254 GETIMPORT                        R22 K30 [UDim2.fromScale]
      256 LOADN                            R23 2
      257 LOADN                            R24 1
      258 CALL                             R22 2 1
      259 SETTABLEKS                       R22 R21 K18 ["Size"]
      261 DUPTABLE                         R22 K39 [{"Gradient"}]
      262 GETUPVAL                         R23 6
      263 GETTABLEKS                       R23 R23 K11 ["createElement"]
      265 GETUPVAL                         R24 13
      266 DUPTABLE                         R25 K45 [{"side", "isIndeterminate", "rotation", "progress", "pulse"}]
      267 GETIMPORT                        R26 K49 [Enum.HorizontalAlignment.Left]
      269 SETTABLEKS                       R26 R25 K40 ["side"]
      271 SETTABLEKS                       R6 R25 K41 ["isIndeterminate"]
      273 SETTABLEKS                       R8 R25 K42 ["rotation"]
      275 SETTABLEKS                       R5 R25 K43 ["progress"]
      277 SETTABLEKS                       R9 R25 K44 ["pulse"]
      279 CALL                             R23 2 1
      280 SETTABLEKS                       R23 R22 K38 ["Gradient"]
      282 CALL                             R19 3 1
      283 SETTABLEKS                       R19 R18 K33 ["Image"]
      285 CALL                             R15 3 1
      286 SETTABLEKS                       R15 R14 K24 ["LeftGradient"]
      288 GETUPVAL                         R15 6
      289 GETTABLEKS                       R15 R15 K11 ["createElement"]
      291 GETUPVAL                         R16 10
      292 DUPTABLE                         R17 K51 [{["Size"], ["tag"] = "position-top-center clip", ["testId"]}]
      293 GETIMPORT                        R18 K30 [UDim2.fromScale]
      295 LOADK                            R19 K31 [0.5]
      296 LOADN                            R20 1
      297 CALL                             R18 2 1
      298 SETTABLEKS                       R18 R17 K18 ["Size"]
      300 LOADK                            R19 K52 ["%*--right-gradient"]
      301 GETTABLEKS                       R21 R1 K20 ["testId"]
      303 NAMECALL                         R19 R19 K23 ["format"]
      305 CALL                             R19 2 1
      306 MOVE                             R18 R19
      307 SETTABLEKS                       R18 R17 K20 ["testId"]
      309 DUPTABLE                         R18 K34 [{"Image"}]
      310 GETUPVAL                         R19 6
      311 GETTABLEKS                       R19 R19 K11 ["createElement"]
      313 GETUPVAL                         R20 12
      314 DUPTABLE                         R21 K55 [{["Image"] = "rbxasset://textures/ui/Controls/RadialFill.png", ["Size"], ["Position"], ["tag"] = "content-emphasis"}]
      315 GETIMPORT                        R22 K30 [UDim2.fromScale]
      317 LOADN                            R23 2
      318 LOADN                            R24 1
      319 CALL                             R22 2 1
      320 SETTABLEKS                       R22 R21 K18 ["Size"]
      322 GETIMPORT                        R22 K30 [UDim2.fromScale]
      324 LOADN                            R23 -1
      325 LOADN                            R24 0
      326 CALL                             R22 2 1
      327 SETTABLEKS                       R22 R21 K53 ["Position"]
      329 DUPTABLE                         R22 K39 [{"Gradient"}]
      330 GETUPVAL                         R23 6
      331 GETTABLEKS                       R23 R23 K11 ["createElement"]
      333 GETUPVAL                         R24 13
      334 DUPTABLE                         R25 K45 [{"side", "isIndeterminate", "rotation", "progress", "pulse"}]
      335 GETIMPORT                        R26 K57 [Enum.HorizontalAlignment.Right]
      337 SETTABLEKS                       R26 R25 K40 ["side"]
      339 SETTABLEKS                       R6 R25 K41 ["isIndeterminate"]
      341 SETTABLEKS                       R8 R25 K42 ["rotation"]
      343 SETTABLEKS                       R5 R25 K43 ["progress"]
      345 SETTABLEKS                       R9 R25 K44 ["pulse"]
      347 CALL                             R23 2 1
      348 SETTABLEKS                       R23 R22 K38 ["Gradient"]
      350 CALL                             R19 3 1
      351 SETTABLEKS                       R19 R18 K33 ["Image"]
      353 CALL                             R15 3 1
      354 SETTABLEKS                       R15 R14 K25 ["RightGradient"]
      356 GETTABLEKS                       R16 R4 K9 ["circle"]
      358 GETTABLEKS                       R16 R16 K61 ["labelFont"]
      360 JUMPIFNOT                        R16 ; [+50]
      361 JUMPIF                           R6 ; [+49]
      362 GETUPVAL                         R15 6
      363 GETTABLEKS                       R15 R15 K11 ["createElement"]
      365 GETUPVAL                         R16 14
      366 DUPTABLE                         R17 K65 [{["Text"], ["fontStyle"], ["tag"] = "position-center-center anchor-center-center", ["testId"]}]
      367 GETUPVAL                         R19 15
      368 GETTABLEKS                       R19 R19 K66 ["isBinding"]
      370 MOVE                             R20 R5
      371 CALL                             R19 1 1
      372 JUMPIFNOT                        R19 ; [+5]
      373 GETUPVAL                         R20 16
      374 NAMECALL                         R18 R5 K67 ["map"]
      376 CALL                             R18 2 1
      377 JUMP                             ; [+14]
      378 JUMPIFNOTEQKNIL                  R5 ; [+3]
      380 LOADK                            R18 K68 ["0%"]
      381 JUMP                             ; [+10]
      382 LOADK                            R19 K69 ["%*%%"]
      383 MULK                             R22 R5 K70 [100]
      384 FASTCALL1                        MATH_FLOOR R22 ; [+2]
      385 GETIMPORT                        R21 K73 [math.floor]
      387 CALL                             R21 1 1
      388 NAMECALL                         R19 R19 K23 ["format"]
      390 CALL                             R19 2 1
      391 MOVE                             R18 R19
      392 SETTABLEKS                       R18 R17 K62 ["Text"]
      394 GETTABLEKS                       R18 R4 K9 ["circle"]
      396 GETTABLEKS                       R18 R18 K61 ["labelFont"]
      398 SETTABLEKS                       R18 R17 K63 ["fontStyle"]
      400 LOADK                            R19 K74 ["%*--label"]
      401 GETTABLEKS                       R21 R1 K20 ["testId"]
      403 NAMECALL                         R19 R19 K23 ["format"]
      405 CALL                             R19 2 1
      406 MOVE                             R18 R19
      407 SETTABLEKS                       R18 R17 K20 ["testId"]
      409 CALL                             R15 2 1
      410 JUMP                             ; [+1]
      411 LOADNIL                          R15
      412 SETTABLEKS                       R15 R14 K59 ["ProgressLabel"]
      414 CALL                             R11 3 -1
      415 RETURN                           R11 -1

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
       16 GETTABLEKS                       R4 R1 K8 ["ReactIs"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETIMPORT                        R5 K1 [script]
       23 GETTABLEKS                       R5 R5 K4 ["Parent"]
       25 GETTABLEKS                       R5 R5 K9 ["constants"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K10 ["Components"]
       32 GETTABLEKS                       R6 R6 K11 ["Image"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K10 ["Components"]
       39 GETTABLEKS                       R7 R7 K12 ["Text"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K10 ["Components"]
       46 GETTABLEKS                       R8 R8 K13 ["Types"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K10 ["Components"]
       53 GETTABLEKS                       R9 R9 K14 ["View"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K15 ["Providers"]
       60 GETTABLEKS                       R10 R10 K16 ["Preferences"]
       62 GETTABLEKS                       R10 R10 K17 ["usePreferences"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K6 [require]
       67 GETIMPORT                        R11 K1 [script]
       69 GETTABLEKS                       R11 R11 K4 ["Parent"]
       71 GETTABLEKS                       R11 R11 K18 ["useProgressBinding"]
       73 CALL                             R10 1 1
       74 GETIMPORT                        R11 K6 [require]
       76 GETIMPORT                        R12 K1 [script]
       78 GETTABLEKS                       R12 R12 K4 ["Parent"]
       80 GETTABLEKS                       R12 R12 K19 ["useProgressVariants"]
       82 CALL                             R11 1 1
       83 GETIMPORT                        R12 K6 [require]
       85 GETTABLEKS                       R13 R0 K20 ["Utility"]
       87 GETTABLEKS                       R13 R13 K21 ["usePulseBinding"]
       89 CALL                             R12 1 1
       90 GETIMPORT                        R13 K6 [require]
       92 GETTABLEKS                       R14 R0 K20 ["Utility"]
       94 GETTABLEKS                       R14 R14 K22 ["useRotation"]
       96 CALL                             R13 1 1
       97 GETIMPORT                        R14 K6 [require]
       99 GETTABLEKS                       R15 R0 K15 ["Providers"]
      101 GETTABLEKS                       R15 R15 K23 ["Style"]
      103 GETTABLEKS                       R15 R15 K24 ["useTokens"]
      105 CALL                             R14 1 1
      106 GETIMPORT                        R15 K6 [require]
      108 GETTABLEKS                       R16 R0 K20 ["Utility"]
      110 GETTABLEKS                       R16 R16 K25 ["withCommonProps"]
      112 CALL                             R15 1 1
      113 GETIMPORT                        R16 K6 [require]
      115 GETTABLEKS                       R17 R0 K20 ["Utility"]
      117 GETTABLEKS                       R17 R17 K26 ["withDefaults"]
      119 CALL                             R16 1 1
      120 GETIMPORT                        R17 K6 [require]
      122 GETTABLEKS                       R18 R0 K27 ["Enums"]
      124 GETTABLEKS                       R18 R18 K28 ["ProgressShape"]
      126 CALL                             R17 1 1
      127 GETIMPORT                        R18 K6 [require]
      129 GETTABLEKS                       R19 R0 K27 ["Enums"]
      131 GETTABLEKS                       R19 R19 K29 ["ProgressSize"]
      133 CALL                             R18 1 1
      134 DUPTABLE                         R19 K31 [{"size"}]
      135 GETTABLEKS                       R20 R18 K32 ["Medium"]
      137 SETTABLEKS                       R20 R19 K30 ["size"]
      139 DUPCLOSURE                       R20 K33 [PROTO_0]
      140 DUPCLOSURE                       R21 K34 [PROTO_1]
      141 DUPCLOSURE                       R22 K35 [PROTO_7]
      142 CAPTURE                          VAL R14
      143 CAPTURE                          VAL R9
      144 CAPTURE                          VAL R2
      145 CAPTURE                          VAL R3
      146 DUPCLOSURE                       R23 K36 [PROTO_8]
      147 CAPTURE                          VAL R16
      148 CAPTURE                          VAL R19
      149 CAPTURE                          VAL R14
      150 CAPTURE                          VAL R9
      151 CAPTURE                          VAL R11
      152 CAPTURE                          VAL R10
      153 CAPTURE                          VAL R2
      154 CAPTURE                          VAL R13
      155 CAPTURE                          VAL R12
      156 CAPTURE                          VAL R4
      157 CAPTURE                          VAL R8
      158 CAPTURE                          VAL R15
      159 CAPTURE                          VAL R5
      160 CAPTURE                          VAL R22
      161 CAPTURE                          VAL R6
      162 CAPTURE                          VAL R3
      163 CAPTURE                          VAL R21
      164 RETURN                           R23 1
