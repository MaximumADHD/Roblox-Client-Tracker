PROTO_0:
        0 LOADN                            R3 10
        1 ORK                              R4 R1 K0 [0]
        2 POW                              R2 R3 R4
        3 MUL                              R6 R0 R2
        4 ADDK                             R5 R6 K1 [0.5]
        5 FASTCALL1                        MATH_FLOOR R5 ; [+2]
        6 GETIMPORT                        R4 K4 [math.floor]
        8 CALL                             R4 1 1
        9 DIV                              R3 R4 R2
       10 RETURN                           R3 1

PROTO_1:
        0 FASTCALL1                        TOSTRING R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [tostring]
        4 CALL                             R1 1 1
        5 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["minimum"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K1 ["maximum"]
        6 FASTCALL3                        MATH_CLAMP R0 R3 R4
        8 MOVE                             R2 R0
        9 GETIMPORT                        R1 K4 [math.clamp]
       11 CALL                             R1 3 1
       12 RETURN                           R1 1

PROTO_3:
        0 MOVE                             R3 R1
        1 GETUPVAL                         R5 0
        2 GETTABLEKS                       R5 R5 K0 ["step"]
        4 DIV                              R4 R0 R5
        5 CALL                             R3 1 1
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K0 ["step"]
        9 MUL                              R2 R3 R4
       10 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["value"]
        3 JUMPIFNOT                        R0 ; [+36]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["maximum"]
        7 JUMPIFNOT                        R0 ; [+32]
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K2 ["minimum"]
       11 JUMPIFNOT                        R0 ; [+28]
       12 GETUPVAL                         R0 1
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K0 ["value"]
       16 CALL                             R0 1 1
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R1 R1 K1 ["maximum"]
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R2 R2 K2 ["minimum"]
       23 JUMPIFNOTEQ                      R1 R2 ; [+3]
       25 LOADN                            R1 1
       26 RETURN                           R1 1
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R3 R3 K2 ["minimum"]
       30 SUB                              R2 R0 R3
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R4 R4 K1 ["maximum"]
       34 GETUPVAL                         R5 0
       35 GETTABLEKS                       R5 R5 K2 ["minimum"]
       37 SUB                              R3 R4 R5
       38 DIV                              R1 R2 R3
       39 RETURN                           R1 1
       40 LOADN                            R0 0
       41 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["onFocusGained"]
        6 JUMPIFNOT                        R0 ; [+4]
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K0 ["onFocusGained"]
       10 CALL                             R0 0 0
       11 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 LOADB                            R2 0
        5 CALL                             R1 1 0
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K0 ["value"]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K1 ["minimum"]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R4 R4 K2 ["maximum"]
       15 FASTCALL                         MATH_CLAMP ; [+2]
       16 GETIMPORT                        R1 K5 [math.clamp]
       18 CALL                             R1 3 1
       19 GETUPVAL                         R2 2
       20 GETTABLEKS                       R2 R2 K6 ["onChanged"]
       22 GETUPVAL                         R4 2
       23 GETTABLEKS                       R4 R4 K7 ["precision"]
       25 LOADN                            R6 10
       26 ORK                              R7 R4 K8 [0]
       27 POW                              R5 R6 R7
       28 MUL                              R8 R1 R5
       29 ADDK                             R7 R8 K9 [0.5]
       30 FASTCALL1                        MATH_FLOOR R7 ; [+2]
       31 GETIMPORT                        R6 K11 [math.floor]
       33 CALL                             R6 1 1
       34 DIV                              R3 R6 R5
       35 CALL                             R2 1 0
       36 GETUPVAL                         R2 2
       37 GETTABLEKS                       R2 R2 K12 ["onFocusLost"]
       39 JUMPIFNOT                        R2 ; [+5]
       40 GETUPVAL                         R2 2
       41 GETTABLEKS                       R2 R2 K12 ["onFocusLost"]
       43 MOVE                             R3 R0
       44 CALL                             R2 1 0
       45 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 FASTCALL1                        TONUMBER R0 ; [+3]
        4 MOVE                             R2 R0
        5 GETIMPORT                        R1 K1 [tonumber]
        7 CALL                             R1 1 1
        8 JUMPIFNOTEQKNIL                  R1 ; [+5]
       10 GETUPVAL                         R2 1
       11 LOADB                            R3 1
       12 CALL                             R2 1 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R2 1
       15 LOADB                            R3 0
       16 CALL                             R2 1 0
       17 GETUPVAL                         R2 2
       18 GETTABLEKS                       R2 R2 K2 ["onChanged"]
       20 MOVE                             R3 R1
       21 CALL                             R2 1 0
       22 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isDisabled"]
        3 JUMPIF                           R0 ; [+2]
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K1 ["onChanged"]
       10 GETUPVAL                         R1 2
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isDisabled"]
        3 JUMPIF                           R0 ; [+2]
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K1 ["onChanged"]
       10 GETUPVAL                         R1 2
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Split"]
        4 JUMPIFNOTEQ                      R0 R1 ; [+21]
        6 GETIMPORT                        R0 K3 [UDim.new]
        8 LOADN                            R1 0
        9 LOADN                            R4 2
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R5 R5 K4 ["splitButton"]
       13 GETTABLEKS                       R5 R5 K5 ["size"]
       15 MUL                              R3 R4 R5
       16 LOADN                            R5 2
       17 GETUPVAL                         R6 3
       18 GETTABLEKS                       R6 R6 K6 ["Gap"]
       20 GETTABLEKS                       R6 R6 K7 ["XSmall"]
       22 MUL                              R4 R5 R6
       23 ADD                              R2 R3 R4
       24 CALL                             R0 2 -1
       25 RETURN                           R0 -1
       26 GETIMPORT                        R0 K3 [UDim.new]
       28 CALL                             R0 0 -1
       29 RETURN                           R0 -1

PROTO_11:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["current"]
        3 FASTCALL1                        TONUMBER R3 ; [+2]
        4 GETIMPORT                        R2 K2 [tonumber]
        6 CALL                             R2 1 1
        7 JUMPIFNOT                        R2 ; [+10]
        8 GETUPVAL                         R3 1
        9 DUPTABLE                         R4 K5 [{"position", "value"}]
       10 GETTABLEKS                       R5 R1 K6 ["X"]
       12 SETTABLEKS                       R5 R4 K3 ["position"]
       14 SETTABLEKS                       R2 R4 K4 ["value"]
       16 SETTABLEKS                       R4 R3 K0 ["current"]
       18 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 JUMPIFNOT                        R2 ; [+47]
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["current"]
        8 GETTABLEKS                       R3 R3 K1 ["value"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K0 ["current"]
       13 GETTABLEKS                       R4 R4 K2 ["position"]
       15 GETTABLEKS                       R5 R1 K3 ["X"]
       17 GETUPVAL                         R6 2
       18 GETTABLEKS                       R6 R6 K4 ["step"]
       20 CALL                             R2 4 1
       21 MOVE                             R5 R2
       22 GETUPVAL                         R6 2
       23 GETTABLEKS                       R6 R6 K5 ["precision"]
       25 LOADN                            R8 10
       26 ORK                              R9 R6 K6 [0]
       27 POW                              R7 R8 R9
       28 MUL                              R10 R5 R7
       29 ADDK                             R9 R10 K7 [0.5]
       30 FASTCALL1                        MATH_FLOOR R9 ; [+2]
       31 GETIMPORT                        R8 K10 [math.floor]
       33 CALL                             R8 1 1
       34 DIV                              R4 R8 R7
       35 GETUPVAL                         R5 2
       36 GETTABLEKS                       R5 R5 K11 ["minimum"]
       38 GETUPVAL                         R6 2
       39 GETTABLEKS                       R6 R6 K12 ["maximum"]
       41 FASTCALL                         MATH_CLAMP ; [+2]
       42 GETIMPORT                        R3 K14 [math.clamp]
       44 CALL                             R3 3 1
       45 MOVE                             R2 R3
       46 GETUPVAL                         R3 2
       47 GETTABLEKS                       R3 R3 K15 ["onChanged"]
       49 MOVE                             R4 R2
       50 CALL                             R3 1 0
       51 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 LOADNIL                          R1
        6 SETTABLEKS                       R1 R0 K0 ["current"]
        8 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKN                    R0 K0 [0] ; [+6]
        3 GETIMPORT                        R0 K3 [NumberSequence.new]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1
        8 GETUPVAL                         R0 0
        9 JUMPIFNOTEQKN                    R0 K4 [1] ; [+6]
       11 GETIMPORT                        R0 K3 [NumberSequence.new]
       13 GETUPVAL                         R1 2
       14 CALL                             R0 1 -1
       15 RETURN                           R0 -1
       16 GETUPVAL                         R0 0
       17 LOADN                            R1 0
       18 JUMPIFLT                         R1 R0 ; [+5]
       20 GETUPVAL                         R0 0
       21 LOADN                            R1 1
       22 JUMPIFNOTLT                      R0 R1 ; [+46]
       24 NEWTABLE                         R0 0 3
       26 GETIMPORT                        R1 K6 [NumberSequenceKeypoint.new]
       28 LOADN                            R2 0
       29 GETUPVAL                         R3 2
       30 CALL                             R1 2 1
       31 GETIMPORT                        R2 K6 [NumberSequenceKeypoint.new]
       33 GETUPVAL                         R3 0
       34 GETUPVAL                         R4 2
       35 CALL                             R2 2 1
       36 GETIMPORT                        R3 K6 [NumberSequenceKeypoint.new]
       38 GETUPVAL                         R6 0
       39 ADDK                             R5 R6 K7 [0.001]
       40 FASTCALL2K                       MATH_MIN R5 K4 ; [+4]
       42 LOADK                            R6 K4 [1]
       43 GETIMPORT                        R4 K10 [math.min]
       45 CALL                             R4 2 1
       46 GETUPVAL                         R5 1
       47 CALL                             R3 2 -1
       48 SETLIST                          R0 R1 -1 [1]
       50 GETUPVAL                         R1 0
       51 LOADK                            R2 K11 [0.999]
       52 JUMPIFNOTLT                      R1 R2 ; [+11]
       54 MOVE                             R2 R0
       55 GETIMPORT                        R3 K6 [NumberSequenceKeypoint.new]
       57 LOADN                            R4 1
       58 GETUPVAL                         R5 1
       59 CALL                             R3 2 -1
       60 FASTCALL                         TABLE_INSERT ; [+2]
       61 GETIMPORT                        R1 K14 [table.insert]
       63 CALL                             R1 -1 0
       64 GETIMPORT                        R1 K3 [NumberSequence.new]
       66 MOVE                             R2 R0
       67 CALL                             R1 1 -1
       68 RETURN                           R1 -1
       69 GETIMPORT                        R0 K3 [NumberSequence.new]
       71 GETUPVAL                         R1 1
       72 CALL                             R0 1 -1
       73 RETURN                           R0 -1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["Split"]
        4 JUMPIFEQ                         R2 R3 ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K1 ["createElement"]
       11 GETUPVAL                         R3 3
       12 DUPTABLE                         R4 K19 [{"text", "hasError", "size", "horizontalPadding", "onChanged", "onFocusLost", "onFocus", "onDragStarted", "onDrag", "onDragEnded", "onReturnPressed", "ref", "backgroundGradient", "trailingElement", "leadingElement", "isDisabled", "testId"}]
       13 GETUPVAL                         R5 4
       14 SETTABLEKS                       R5 R4 K2 ["text"]
       16 GETUPVAL                         R5 5
       17 SETTABLEKS                       R5 R4 K3 ["hasError"]
       19 GETUPVAL                         R5 6
       20 GETTABLEKS                       R5 R5 K4 ["size"]
       22 SETTABLEKS                       R5 R4 K4 ["size"]
       24 DUPTABLE                         R5 K21 [{"left"}]
       25 GETUPVAL                         R6 7
       26 GETTABLEKS                       R6 R6 K22 ["innerContainer"]
       28 GETTABLEKS                       R6 R6 K5 ["horizontalPadding"]
       30 SETTABLEKS                       R6 R5 K20 ["left"]
       32 SETTABLEKS                       R5 R4 K5 ["horizontalPadding"]
       34 GETUPVAL                         R5 8
       35 SETTABLEKS                       R5 R4 K6 ["onChanged"]
       37 GETUPVAL                         R5 9
       38 SETTABLEKS                       R5 R4 K7 ["onFocusLost"]
       40 GETUPVAL                         R5 10
       41 SETTABLEKS                       R5 R4 K8 ["onFocus"]
       43 GETUPVAL                         R6 6
       44 GETTABLEKS                       R6 R6 K23 ["isScrubbable"]
       46 JUMPIFNOT                        R6 ; [+2]
       47 GETUPVAL                         R5 11
       48 JUMP                             ; [+1]
       49 LOADNIL                          R5
       50 SETTABLEKS                       R5 R4 K9 ["onDragStarted"]
       52 GETUPVAL                         R6 6
       53 GETTABLEKS                       R6 R6 K23 ["isScrubbable"]
       55 JUMPIFNOT                        R6 ; [+2]
       56 GETUPVAL                         R5 12
       57 JUMP                             ; [+1]
       58 LOADNIL                          R5
       59 SETTABLEKS                       R5 R4 K10 ["onDrag"]
       61 GETUPVAL                         R6 6
       62 GETTABLEKS                       R6 R6 K23 ["isScrubbable"]
       64 JUMPIFNOT                        R6 ; [+2]
       65 GETUPVAL                         R5 13
       66 JUMP                             ; [+1]
       67 LOADNIL                          R5
       68 SETTABLEKS                       R5 R4 K11 ["onDragEnded"]
       70 GETUPVAL                         R5 6
       71 GETTABLEKS                       R5 R5 K12 ["onReturnPressed"]
       73 SETTABLEKS                       R5 R4 K12 ["onReturnPressed"]
       75 SETTABLEKS                       R0 R4 K13 ["ref"]
       77 GETUPVAL                         R6 6
       78 GETTABLEKS                       R6 R6 K23 ["isScrubbable"]
       80 JUMPIFNOT                        R6 ; [+29]
       81 GETUPVAL                         R6 14
       82 JUMPIFNOT                        R6 ; [+27]
       83 GETUPVAL                         R5 2
       84 GETTABLEKS                       R5 R5 K1 ["createElement"]
       86 LOADK                            R6 K24 ["UIGradient"]
       87 DUPTABLE                         R7 K28 [{"Color", "Transparency", "Rotation"}]
       88 GETIMPORT                        R8 K31 [ColorSequence.new]
       90 GETUPVAL                         R9 15
       91 GETTABLEKS                       R9 R9 K25 ["Color"]
       93 GETTABLEKS                       R9 R9 K32 ["Shift"]
       95 GETTABLEKS                       R9 R9 K33 ["Shift_300"]
       97 GETTABLEKS                       R9 R9 K34 ["Color3"]
       99 CALL                             R8 1 1
      100 SETTABLEKS                       R8 R7 K25 ["Color"]
      102 GETUPVAL                         R8 14
      103 SETTABLEKS                       R8 R7 K26 ["Transparency"]
      105 LOADN                            R8 0
      106 SETTABLEKS                       R8 R7 K27 ["Rotation"]
      108 CALL                             R5 2 1
      109 JUMP                             ; [+1]
      110 LOADNIL                          R5
      111 SETTABLEKS                       R5 R4 K14 ["backgroundGradient"]
      113 GETUPVAL                         R6 0
      114 GETUPVAL                         R7 1
      115 GETTABLEKS                       R7 R7 K35 ["Stacked"]
      117 JUMPIFNOTEQ                      R6 R7 ; [+3]
      119 GETUPVAL                         R5 16
      120 JUMP                             ; [+1]
      121 LOADNIL                          R5
      122 SETTABLEKS                       R5 R4 K15 ["trailingElement"]
      124 GETUPVAL                         R6 6
      125 GETTABLEKS                       R6 R6 K36 ["leadingIcon"]
      127 JUMPIFNOT                        R6 ; [+35]
      128 GETUPVAL                         R5 2
      129 GETTABLEKS                       R5 R5 K1 ["createElement"]
      131 GETUPVAL                         R6 17
      132 DUPTABLE                         R7 K38 [{"tag"}]
      133 LOADK                            R8 K39 ["size-0-full auto-x row align-y-center"]
      134 SETTABLEKS                       R8 R7 K37 ["tag"]
      136 GETUPVAL                         R8 2
      137 GETTABLEKS                       R8 R8 K1 ["createElement"]
      139 GETUPVAL                         R9 18
      140 DUPTABLE                         R10 K42 [{"name", "style", "size"}]
      141 GETUPVAL                         R11 6
      142 GETTABLEKS                       R11 R11 K36 ["leadingIcon"]
      144 SETTABLEKS                       R11 R10 K40 ["name"]
      146 GETUPVAL                         R11 7
      147 GETTABLEKS                       R11 R11 K43 ["icon"]
      149 GETTABLEKS                       R11 R11 K41 ["style"]
      151 SETTABLEKS                       R11 R10 K41 ["style"]
      153 GETUPVAL                         R11 7
      154 GETTABLEKS                       R11 R11 K43 ["icon"]
      156 GETTABLEKS                       R11 R11 K4 ["size"]
      158 SETTABLEKS                       R11 R10 K4 ["size"]
      160 CALL                             R8 2 -1
      161 CALL                             R5 -1 1
      162 JUMP                             ; [+1]
      163 LOADNIL                          R5
      164 SETTABLEKS                       R5 R4 K16 ["leadingElement"]
      166 GETUPVAL                         R5 6
      167 GETTABLEKS                       R5 R5 K17 ["isDisabled"]
      169 SETTABLEKS                       R5 R4 K17 ["isDisabled"]
      171 LOADK                            R6 K44 ["%*--field"]
      172 GETUPVAL                         R8 6
      173 GETTABLEKS                       R8 R8 K18 ["testId"]
      175 NAMECALL                         R6 R6 K45 ["format"]
      177 CALL                             R6 2 1
      178 MOVE                             R5 R6
      179 SETTABLEKS                       R5 R4 K18 ["testId"]
      181 CALL                             R2 2 1
      182 JUMPIFNOT                        R1 ; [+32]
      183 GETUPVAL                         R3 2
      184 GETTABLEKS                       R3 R3 K1 ["createElement"]
      186 GETUPVAL                         R4 17
      187 DUPTABLE                         R5 K47 [{"Size", "tag"}]
      188 GETIMPORT                        R6 K50 [UDim2.fromOffset]
      190 GETUPVAL                         R8 19
      191 GETTABLEKS                       R8 R8 K51 ["Offset"]
      193 GETUPVAL                         R9 20
      194 GETTABLEKS                       R9 R9 K51 ["Offset"]
      196 SUB                              R7 R8 R9
      197 LOADN                            R8 0
      198 CALL                             R6 2 1
      199 SETTABLEKS                       R6 R5 K46 ["Size"]
      201 LOADK                            R6 K52 ["row gap-xsmall auto-y align-y-center"]
      202 SETTABLEKS                       R6 R5 K37 ["tag"]
      204 DUPTABLE                         R6 K55 [{"InputField", "Controls"}]
      205 SETTABLEKS                       R2 R6 K53 ["InputField"]
      207 JUMPIFNOT                        R1 ; [+2]
      208 GETUPVAL                         R7 16
      209 JUMP                             ; [+1]
      210 LOADNIL                          R7
      211 SETTABLEKS                       R7 R6 K54 ["Controls"]
      213 CALL                             R3 3 1
      214 RETURN                           R3 1
      215 MOVE                             R3 R2
      216 RETURN                           R3 1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 3
        7 MOVE                             R5 R3
        8 GETTABLEKS                       R6 R2 K0 ["size"]
       10 CALL                             R4 2 1
       11 GETUPVAL                         R5 4
       12 MOVE                             R6 R3
       13 GETTABLEKS                       R7 R2 K0 ["size"]
       15 GETUPVAL                         R9 5
       16 GETTABLEKS                       R9 R9 K1 ["FoundationNumberInputFixControlSizes"]
       18 JUMPIFNOT                        R9 ; [+3]
       19 GETTABLEKS                       R8 R2 K2 ["controlsVariant"]
       21 JUMP                             ; [+1]
       22 LOADNIL                          R8
       23 CALL                             R5 3 1
       24 GETUPVAL                         R6 6
       25 GETTABLEKS                       R6 R6 K3 ["useState"]
       27 LOADB                            R7 0
       28 CALL                             R6 1 2
       29 GETUPVAL                         R8 6
       30 GETTABLEKS                       R8 R8 K4 ["useRef"]
       32 LOADNIL                          R9
       33 CALL                             R8 1 1
       34 GETUPVAL                         R9 6
       35 GETTABLEKS                       R9 R9 K3 ["useState"]
       37 LOADB                            R10 0
       38 CALL                             R9 1 2
       39 GETTABLEKS                       R12 R2 K5 ["hasError"]
       41 OR                               R11 R12 R9
       42 GETTABLEKS                       R12 R2 K2 ["controlsVariant"]
       44 GETUPVAL                         R13 6
       45 GETTABLEKS                       R13 R13 K6 ["useCallback"]
       47 NEWCLOSURE                       R14 P0
       48 CAPTURE                          VAL R2
       49 NEWTABLE                         R15 0 2
       51 GETTABLEKS                       R16 R2 K7 ["minimum"]
       53 GETTABLEKS                       R17 R2 K8 ["maximum"]
       55 SETLIST                          R15 R16 2 [1]
       57 CALL                             R13 2 1
       58 GETUPVAL                         R14 6
       59 GETTABLEKS                       R14 R14 K6 ["useCallback"]
       61 NEWCLOSURE                       R15 P1
       62 CAPTURE                          VAL R2
       63 NEWTABLE                         R16 0 1
       65 GETTABLEKS                       R17 R2 K9 ["step"]
       67 SETLIST                          R16 R17 1 [1]
       69 CALL                             R14 2 1
       70 LOADNIL                          R15
       71 LOADNIL                          R16
       72 LOADNIL                          R17
       73 LOADNIL                          R18
       74 JUMPIF                           R6 ; [+114]
       75 GETTABLEKS                       R20 R2 K10 ["value"]
       77 GETTABLEKS                       R21 R2 K11 ["precision"]
       79 LOADN                            R23 10
       80 ORK                              R24 R21 K12 [0]
       81 POW                              R22 R23 R24
       82 MUL                              R25 R20 R22
       83 ADDK                             R24 R25 K13 [0.5]
       84 FASTCALL1                        MATH_FLOOR R24 ; [+2]
       85 GETIMPORT                        R23 K16 [math.floor]
       87 CALL                             R23 1 1
       88 DIV                              R19 R23 R22
       89 GETTABLEKS                       R22 R2 K10 ["value"]
       91 GETTABLEKS                       R23 R2 K9 ["step"]
       93 ADD                              R21 R22 R23
       94 GETTABLEKS                       R22 R2 K11 ["precision"]
       96 LOADN                            R24 10
       97 ORK                              R25 R22 K12 [0]
       98 POW                              R23 R24 R25
       99 MUL                              R26 R21 R23
      100 ADDK                             R25 R26 K13 [0.5]
      101 FASTCALL1                        MATH_FLOOR R25 ; [+2]
      102 GETIMPORT                        R24 K16 [math.floor]
      104 CALL                             R24 1 1
      105 DIV                              R20 R24 R23
      106 GETTABLEKS                       R23 R2 K10 ["value"]
      108 GETTABLEKS                       R24 R2 K9 ["step"]
      110 SUB                              R22 R23 R24
      111 GETTABLEKS                       R23 R2 K11 ["precision"]
      113 LOADN                            R25 10
      114 ORK                              R26 R23 K12 [0]
      115 POW                              R24 R25 R26
      116 MUL                              R27 R22 R24
      117 ADDK                             R26 R27 K13 [0.5]
      118 FASTCALL1                        MATH_FLOOR R26 ; [+2]
      119 GETIMPORT                        R25 K16 [math.floor]
      121 CALL                             R25 1 1
      122 DIV                              R21 R25 R24
      123 MOVE                             R23 R14
      124 GETTABLEKS                       R24 R2 K10 ["value"]
      126 GETIMPORT                        R25 K18 [math.ceil]
      128 CALL                             R23 2 1
      129 GETTABLEKS                       R24 R2 K11 ["precision"]
      131 LOADN                            R26 10
      132 ORK                              R27 R24 K12 [0]
      133 POW                              R25 R26 R27
      134 MUL                              R28 R23 R25
      135 ADDK                             R27 R28 K13 [0.5]
      136 FASTCALL1                        MATH_FLOOR R27 ; [+2]
      137 GETIMPORT                        R26 K16 [math.floor]
      139 CALL                             R26 1 1
      140 DIV                              R22 R26 R25
      141 MOVE                             R24 R14
      142 GETTABLEKS                       R25 R2 K10 ["value"]
      144 GETIMPORT                        R26 K16 [math.floor]
      146 CALL                             R24 2 1
      147 GETTABLEKS                       R25 R2 K11 ["precision"]
      149 LOADN                            R27 10
      150 ORK                              R28 R25 K12 [0]
      151 POW                              R26 R27 R28
      152 MUL                              R29 R24 R26
      153 ADDK                             R28 R29 K13 [0.5]
      154 FASTCALL1                        MATH_FLOOR R28 ; [+2]
      155 GETIMPORT                        R27 K16 [math.floor]
      157 CALL                             R27 1 1
      158 DIV                              R23 R27 R26
      159 JUMPIFEQ                         R19 R22 ; [+2]
      161 MOVE                             R20 R22
      162 JUMPIFEQ                         R19 R23 ; [+2]
      164 MOVE                             R21 R23
      165 MOVE                             R24 R13
      166 MOVE                             R25 R20
      167 CALL                             R24 1 1
      168 MOVE                             R17 R24
      169 MOVE                             R24 R13
      170 MOVE                             R25 R21
      171 CALL                             R24 1 1
      172 MOVE                             R18 R24
      173 GETTABLEKS                       R24 R2 K10 ["value"]
      175 GETTABLEKS                       R25 R2 K8 ["maximum"]
      177 JUMPIFEQ                         R24 R25 ; [+2]
      179 LOADB                            R15 0 +1
      180 LOADB                            R15 1
      181 GETTABLEKS                       R24 R2 K10 ["value"]
      183 GETTABLEKS                       R25 R2 K7 ["minimum"]
      185 JUMPIFEQ                         R24 R25 ; [+2]
      187 LOADB                            R16 0 +1
      188 LOADB                            R16 1
      189 GETTABLEKS                       R20 R2 K10 ["value"]
      191 JUMPIFNOT                        R20 ; [+15]
      192 GETTABLEKS                       R20 R2 K10 ["value"]
      194 GETTABLEKS                       R21 R2 K11 ["precision"]
      196 LOADN                            R23 10
      197 ORK                              R24 R21 K12 [0]
      198 POW                              R22 R23 R24
      199 MUL                              R25 R20 R22
      200 ADDK                             R24 R25 K13 [0.5]
      201 FASTCALL1                        MATH_FLOOR R24 ; [+2]
      202 GETIMPORT                        R23 K16 [math.floor]
      204 CALL                             R23 1 1
      205 DIV                              R19 R23 R22
      206 JUMP                             ; [+1]
      207 LOADN                            R19 0
      208 JUMPIFNOT                        R6 ; [+7]
      209 GETTABLEKS                       R21 R2 K10 ["value"]
      211 FASTCALL1                        TOSTRING R21 ; [+2]
      212 GETIMPORT                        R20 K20 [tostring]
      214 CALL                             R20 1 1
      215 JUMP                             ; [+4]
      216 GETTABLEKS                       R20 R2 K21 ["formatAsString"]
      218 MOVE                             R21 R19
      219 CALL                             R20 1 1
      220 GETUPVAL                         R21 6
      221 GETTABLEKS                       R21 R21 K4 ["useRef"]
      223 MOVE                             R22 R20
      224 CALL                             R21 1 1
      225 GETTABLEKS                       R23 R2 K10 ["value"]
      227 FASTCALL1                        TOSTRING R23 ; [+2]
      228 GETIMPORT                        R22 K20 [tostring]
      230 CALL                             R22 1 1
      231 SETTABLEKS                       R22 R21 K22 ["current"]
      233 GETUPVAL                         R23 5
      234 GETTABLEKS                       R23 R23 K23 ["FoundationNumberInputTokenBasedWidth"]
      236 JUMPIFNOT                        R23 ; [+3]
      237 GETTABLEKS                       R23 R2 K24 ["width"]
      239 JUMPIFNOT                        R23 ; [+3]
      240 GETTABLEKS                       R22 R2 K24 ["width"]
      242 JUMP                             ; [+8]
      243 GETIMPORT                        R22 K27 [UDim.new]
      245 LOADN                            R23 0
      246 GETTABLEKS                       R24 R5 K28 ["container"]
      248 GETTABLEKS                       R24 R24 K24 ["width"]
      250 CALL                             R22 2 1
      251 GETUPVAL                         R23 6
      252 GETTABLEKS                       R23 R23 K29 ["useMemo"]
      254 NEWCLOSURE                       R24 P2
      255 CAPTURE                          VAL R2
      256 CAPTURE                          VAL R13
      257 NEWTABLE                         R25 0 3
      259 GETTABLEKS                       R26 R2 K10 ["value"]
      261 GETTABLEKS                       R27 R2 K8 ["maximum"]
      263 GETTABLEKS                       R28 R2 K7 ["minimum"]
      265 SETLIST                          R25 R26 3 [1]
      267 CALL                             R23 2 1
      268 GETUPVAL                         R24 6
      269 GETTABLEKS                       R24 R24 K6 ["useCallback"]
      271 NEWCLOSURE                       R25 P3
      272 CAPTURE                          VAL R7
      273 CAPTURE                          VAL R2
      274 NEWTABLE                         R26 0 2
      276 MOVE                             R27 R7
      277 GETTABLEKS                       R28 R2 K30 ["onFocusGained"]
      279 SETLIST                          R26 R27 2 [1]
      281 CALL                             R24 2 1
      282 GETUPVAL                         R25 6
      283 GETTABLEKS                       R25 R25 K6 ["useCallback"]
      285 NEWCLOSURE                       R26 P4
      286 CAPTURE                          VAL R7
      287 CAPTURE                          VAL R10
      288 CAPTURE                          VAL R2
      289 NEWTABLE                         R27 0 7
      291 MOVE                             R28 R7
      292 GETTABLEKS                       R29 R2 K31 ["onChanged"]
      294 GETTABLEKS                       R30 R2 K32 ["onFocusLost"]
      296 GETTABLEKS                       R31 R2 K8 ["maximum"]
      298 GETTABLEKS                       R32 R2 K7 ["minimum"]
      300 GETTABLEKS                       R33 R2 K11 ["precision"]
      302 GETTABLEKS                       R34 R2 K10 ["value"]
      304 SETLIST                          R27 R28 7 [1]
      306 CALL                             R25 2 1
      307 GETUPVAL                         R26 6
      308 GETTABLEKS                       R26 R26 K6 ["useCallback"]
      310 NEWCLOSURE                       R27 P5
      311 CAPTURE                          VAL R6
      312 CAPTURE                          VAL R10
      313 CAPTURE                          VAL R2
      314 NEWTABLE                         R28 0 2
      316 MOVE                             R29 R6
      317 GETTABLEKS                       R30 R2 K31 ["onChanged"]
      319 SETLIST                          R28 R29 2 [1]
      321 CALL                             R26 2 1
      322 GETUPVAL                         R27 6
      323 GETTABLEKS                       R27 R27 K6 ["useCallback"]
      325 NEWCLOSURE                       R28 P6
      326 CAPTURE                          VAL R2
      327 CAPTURE                          REF R15
      328 CAPTURE                          REF R17
      329 NEWTABLE                         R29 0 4
      331 GETTABLEKS                       R30 R2 K33 ["isDisabled"]
      333 MOVE                             R31 R15
      334 MOVE                             R32 R17
      335 GETTABLEKS                       R33 R2 K31 ["onChanged"]
      337 SETLIST                          R29 R30 4 [1]
      339 CALL                             R27 2 1
      340 GETUPVAL                         R28 6
      341 GETTABLEKS                       R28 R28 K6 ["useCallback"]
      343 NEWCLOSURE                       R29 P7
      344 CAPTURE                          VAL R2
      345 CAPTURE                          REF R16
      346 CAPTURE                          REF R18
      347 NEWTABLE                         R30 0 4
      349 GETTABLEKS                       R31 R2 K33 ["isDisabled"]
      351 MOVE                             R32 R16
      352 MOVE                             R33 R18
      353 GETTABLEKS                       R34 R2 K31 ["onChanged"]
      355 SETLIST                          R30 R31 4 [1]
      357 CALL                             R28 2 1
      358 GETUPVAL                         R29 6
      359 GETTABLEKS                       R29 R29 K34 ["createElement"]
      361 GETUPVAL                         R30 7
      362 DUPTABLE                         R31 K39 [{"variant", "size", "increment", "decrement", "testId"}]
      363 SETTABLEKS                       R12 R31 K35 ["variant"]
      365 GETTABLEKS                       R32 R2 K0 ["size"]
      367 SETTABLEKS                       R32 R31 K0 ["size"]
      369 DUPTABLE                         R32 K41 [{"isDisabled", "onClick"}]
      370 GETTABLEKS                       R34 R2 K33 ["isDisabled"]
      372 OR                               R33 R34 R15
      373 SETTABLEKS                       R33 R32 K33 ["isDisabled"]
      375 SETTABLEKS                       R27 R32 K40 ["onClick"]
      377 SETTABLEKS                       R32 R31 K36 ["increment"]
      379 DUPTABLE                         R32 K41 [{"isDisabled", "onClick"}]
      380 GETTABLEKS                       R34 R2 K33 ["isDisabled"]
      382 OR                               R33 R34 R16
      383 SETTABLEKS                       R33 R32 K33 ["isDisabled"]
      385 SETTABLEKS                       R28 R32 K40 ["onClick"]
      387 SETTABLEKS                       R32 R31 K37 ["decrement"]
      389 GETTABLEKS                       R32 R2 K38 ["testId"]
      391 SETTABLEKS                       R32 R31 K38 ["testId"]
      393 CALL                             R29 2 1
      394 GETUPVAL                         R30 6
      395 GETTABLEKS                       R30 R30 K29 ["useMemo"]
      397 NEWCLOSURE                       R31 P8
      398 CAPTURE                          VAL R12
      399 CAPTURE                          UPVAL U8
      400 CAPTURE                          VAL R5
      401 CAPTURE                          VAL R3
      402 NEWTABLE                         R32 0 2
      404 MOVE                             R33 R3
      405 MOVE                             R34 R12
      406 SETLIST                          R32 R33 2 [1]
      408 CALL                             R30 2 1
      409 GETUPVAL                         R31 6
      410 GETTABLEKS                       R31 R31 K6 ["useCallback"]
      412 NEWCLOSURE                       R32 P9
      413 CAPTURE                          VAL R21
      414 CAPTURE                          VAL R8
      415 NEWTABLE                         R33 0 0
      417 CALL                             R31 2 1
      418 GETUPVAL                         R32 6
      419 GETTABLEKS                       R32 R32 K6 ["useCallback"]
      421 NEWCLOSURE                       R33 P10
      422 CAPTURE                          VAL R8
      423 CAPTURE                          UPVAL U9
      424 CAPTURE                          VAL R2
      425 NEWTABLE                         R34 0 1
      427 GETTABLEKS                       R35 R2 K31 ["onChanged"]
      429 SETLIST                          R34 R35 1 [1]
      431 CALL                             R32 2 1
      432 GETUPVAL                         R33 6
      433 GETTABLEKS                       R33 R33 K6 ["useCallback"]
      435 NEWCLOSURE                       R34 P11
      436 CAPTURE                          VAL R8
      437 NEWTABLE                         R35 0 0
      439 CALL                             R33 2 1
      440 GETTABLEKS                       R34 R3 K42 ["Color"]
      442 GETTABLEKS                       R34 R34 K43 ["Shift"]
      444 GETTABLEKS                       R34 R34 K44 ["Shift_300"]
      446 GETTABLEKS                       R34 R34 K45 ["Transparency"]
      448 GETTABLEKS                       R35 R3 K42 ["Color"]
      450 GETTABLEKS                       R35 R35 K43 ["Shift"]
      452 GETTABLEKS                       R35 R35 K46 ["Shift_100"]
      454 GETTABLEKS                       R35 R35 K45 ["Transparency"]
      456 GETUPVAL                         R36 6
      457 GETTABLEKS                       R36 R36 K29 ["useMemo"]
      459 NEWCLOSURE                       R37 P12
      460 CAPTURE                          VAL R23
      461 CAPTURE                          VAL R35
      462 CAPTURE                          VAL R34
      463 NEWTABLE                         R38 0 3
      465 MOVE                             R39 R23
      466 MOVE                             R40 R34
      467 MOVE                             R41 R35
      468 SETLIST                          R38 R39 3 [1]
      470 CALL                             R36 2 1
      471 GETUPVAL                         R37 6
      472 GETTABLEKS                       R37 R37 K34 ["createElement"]
      474 GETUPVAL                         R38 10
      475 GETUPVAL                         R39 11
      476 MOVE                             R40 R2
      477 DUPTABLE                         R41 K53 [{"width", "ref", "hasError", "label", "size", "isRequired", "hint", "textBoxRef", "input"}]
      478 SETTABLEKS                       R22 R41 K24 ["width"]
      480 SETTABLEKS                       R1 R41 K47 ["ref"]
      482 SETTABLEKS                       R11 R41 K5 ["hasError"]
      484 GETTABLEKS                       R42 R2 K48 ["label"]
      486 SETTABLEKS                       R42 R41 K48 ["label"]
      488 GETUPVAL                         R42 12
      489 GETTABLEKS                       R43 R2 K0 ["size"]
      491 CALL                             R42 1 1
      492 SETTABLEKS                       R42 R41 K0 ["size"]
      494 GETTABLEKS                       R42 R2 K49 ["isRequired"]
      496 SETTABLEKS                       R42 R41 K49 ["isRequired"]
      498 GETTABLEKS                       R42 R2 K50 ["hint"]
      500 SETTABLEKS                       R42 R41 K50 ["hint"]
      502 GETTABLEKS                       R42 R2 K51 ["textBoxRef"]
      504 SETTABLEKS                       R42 R41 K51 ["textBoxRef"]
      506 NEWCLOSURE                       R42 P13
      507 CAPTURE                          VAL R12
      508 CAPTURE                          UPVAL U8
      509 CAPTURE                          UPVAL U6
      510 CAPTURE                          UPVAL U13
      511 CAPTURE                          VAL R20
      512 CAPTURE                          VAL R11
      513 CAPTURE                          VAL R2
      514 CAPTURE                          VAL R4
      515 CAPTURE                          VAL R26
      516 CAPTURE                          VAL R25
      517 CAPTURE                          VAL R24
      518 CAPTURE                          VAL R31
      519 CAPTURE                          VAL R32
      520 CAPTURE                          VAL R33
      521 CAPTURE                          VAL R36
      522 CAPTURE                          VAL R3
      523 CAPTURE                          VAL R29
      524 CAPTURE                          UPVAL U14
      525 CAPTURE                          UPVAL U15
      526 CAPTURE                          VAL R22
      527 CAPTURE                          VAL R30
      528 SETTABLEKS                       R42 R41 K52 ["input"]
      530 CALL                             R39 2 -1
      531 CALL                             R37 -1 -1
      532 CLOSEUPVALS                      R15
      533 RETURN                           R37 -1

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
       14 GETTABLEKS                       R3 R0 K8 ["Components"]
       16 GETIMPORT                        R4 K6 [require]
       18 GETTABLEKS                       R5 R0 K9 ["Utility"]
       20 GETTABLEKS                       R5 R5 K10 ["withCommonProps"]
       22 CALL                             R4 1 1
       23 GETIMPORT                        R5 K6 [require]
       25 GETTABLEKS                       R6 R0 K9 ["Utility"]
       27 GETTABLEKS                       R6 R6 K11 ["withDefaults"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K6 [require]
       32 GETTABLEKS                       R7 R0 K12 ["Enums"]
       34 GETTABLEKS                       R7 R7 K13 ["InputSize"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K6 [require]
       39 GETTABLEKS                       R8 R0 K12 ["Enums"]
       41 GETTABLEKS                       R8 R8 K14 ["InputLabelSize"]
       43 CALL                             R7 1 1
       44 GETIMPORT                        R8 K6 [require]
       46 GETTABLEKS                       R9 R0 K12 ["Enums"]
       48 GETTABLEKS                       R9 R9 K15 ["NumberInputControlsVariant"]
       50 CALL                             R8 1 1
       51 GETIMPORT                        R9 K6 [require]
       53 GETTABLEKS                       R10 R0 K9 ["Utility"]
       55 GETTABLEKS                       R10 R10 K16 ["Flags"]
       57 CALL                             R9 1 1
       58 GETIMPORT                        R10 K6 [require]
       60 GETTABLEKS                       R11 R3 K17 ["Icon"]
       62 CALL                             R10 1 1
       63 GETIMPORT                        R11 K6 [require]
       65 GETTABLEKS                       R12 R3 K18 ["InputField"]
       67 CALL                             R11 1 1
       68 GETIMPORT                        R12 K6 [require]
       70 GETTABLEKS                       R13 R3 K19 ["InternalTextInput"]
       72 CALL                             R12 1 1
       73 GETIMPORT                        R13 K6 [require]
       75 GETTABLEKS                       R14 R3 K20 ["Types"]
       77 CALL                             R13 1 1
       78 GETIMPORT                        R14 K6 [require]
       80 GETTABLEKS                       R15 R3 K21 ["View"]
       82 CALL                             R14 1 1
       83 GETIMPORT                        R15 K6 [require]
       85 GETTABLEKS                       R16 R0 K9 ["Utility"]
       87 GETTABLEKS                       R16 R16 K22 ["getInputTextSize"]
       89 CALL                             R15 1 1
       90 GETIMPORT                        R16 K6 [require]
       92 GETTABLEKS                       R17 R3 K23 ["TextInput"]
       94 GETTABLEKS                       R17 R17 K24 ["useTextInputVariants"]
       96 CALL                             R16 1 1
       97 GETIMPORT                        R17 K6 [require]
       99 GETTABLEKS                       R18 R0 K25 ["Providers"]
      101 GETTABLEKS                       R18 R18 K26 ["Style"]
      103 GETTABLEKS                       R18 R18 K27 ["useTokens"]
      105 CALL                             R17 1 1
      106 GETIMPORT                        R18 K6 [require]
      108 GETIMPORT                        R19 K1 [script]
      110 GETTABLEKS                       R19 R19 K4 ["Parent"]
      112 GETTABLEKS                       R19 R19 K28 ["NumberInputControls"]
      114 CALL                             R18 1 1
      115 GETIMPORT                        R19 K6 [require]
      117 GETIMPORT                        R20 K1 [script]
      119 GETTABLEKS                       R20 R20 K4 ["Parent"]
      121 GETTABLEKS                       R20 R20 K29 ["useNumberInputVariants"]
      123 CALL                             R19 1 1
      124 GETIMPORT                        R20 K6 [require]
      126 GETIMPORT                        R21 K1 [script]
      128 GETTABLEKS                       R21 R21 K4 ["Parent"]
      130 GETTABLEKS                       R21 R21 K30 ["calculateNumberInputValueFromPositions"]
      132 CALL                             R20 1 1
      133 DUPCLOSURE                       R21 K31 [PROTO_0]
      134 DUPCLOSURE                       R22 K32 [PROTO_1]
      135 DUPTABLE                         R23 K44 [{"controlsVariant", "size", "minimum", "maximum", "step", "precision", "value", "formatAsString", "width", "isScrubbable", "testId"}]
      136 GETTABLEKS                       R24 R8 K45 ["Stacked"]
      138 SETTABLEKS                       R24 R23 K33 ["controlsVariant"]
      140 GETTABLEKS                       R24 R6 K46 ["Large"]
      142 SETTABLEKS                       R24 R23 K34 ["size"]
      144 LOADK                            R24 K47 [-∞]
      145 SETTABLEKS                       R24 R23 K35 ["minimum"]
      147 LOADK                            R24 K48 [∞]
      148 SETTABLEKS                       R24 R23 K36 ["maximum"]
      150 LOADN                            R24 1
      151 SETTABLEKS                       R24 R23 K37 ["step"]
      153 LOADN                            R24 3
      154 SETTABLEKS                       R24 R23 K38 ["precision"]
      156 LOADN                            R24 0
      157 SETTABLEKS                       R24 R23 K39 ["value"]
      159 SETTABLEKS                       R22 R23 K40 ["formatAsString"]
      161 GETTABLEKS                       R25 R9 K49 ["FoundationNumberInputTokenBasedWidth"]
      163 JUMPIFNOT                        R25 ; [+2]
      164 LOADNIL                          R24
      165 JUMP                             ; [+5]
      166 GETIMPORT                        R24 K52 [UDim.new]
      168 LOADN                            R25 0
      169 LOADN                            R26 144
      170 CALL                             R24 2 1
      171 SETTABLEKS                       R24 R23 K41 ["width"]
      173 LOADB                            R24 0
      174 SETTABLEKS                       R24 R23 K42 ["isScrubbable"]
      176 LOADK                            R24 K53 ["--foundation-number-input"]
      177 SETTABLEKS                       R24 R23 K43 ["testId"]
      179 DUPCLOSURE                       R24 K54 [PROTO_16]
      180 CAPTURE                          VAL R5
      181 CAPTURE                          VAL R23
      182 CAPTURE                          VAL R17
      183 CAPTURE                          VAL R16
      184 CAPTURE                          VAL R19
      185 CAPTURE                          VAL R9
      186 CAPTURE                          VAL R2
      187 CAPTURE                          VAL R18
      188 CAPTURE                          VAL R8
      189 CAPTURE                          VAL R20
      190 CAPTURE                          VAL R11
      191 CAPTURE                          VAL R4
      192 CAPTURE                          VAL R15
      193 CAPTURE                          VAL R12
      194 CAPTURE                          VAL R14
      195 CAPTURE                          VAL R10
      196 GETTABLEKS                       R25 R2 K55 ["memo"]
      198 GETTABLEKS                       R26 R2 K56 ["forwardRef"]
      200 MOVE                             R27 R24
      201 CALL                             R26 1 -1
      202 CALL                             R25 -1 -1
      203 RETURN                           R25 -1
