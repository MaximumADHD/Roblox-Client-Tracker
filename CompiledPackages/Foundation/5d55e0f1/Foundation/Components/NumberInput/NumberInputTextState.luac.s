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
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["minimum"]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R4 R5 K1 ["maximum"]
        6 FASTCALL3                        MATH_CLAMP R0 R3 R4
        8 MOVE                             R2 R0
        9 GETIMPORT                        R1 K4 [math.clamp]
       11 CALL                             R1 3 1
       12 RETURN                           R1 1

PROTO_3:
        0 MOVE                             R3 R1
        1 GETUPVAL                         R6 0
        2 GETTABLEKS                       R5 R6 K0 ["step"]
        4 DIV                              R4 R0 R5
        5 CALL                             R3 1 1
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K0 ["step"]
        9 MUL                              R2 R3 R4
       10 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["value"]
        3 JUMPIFNOT                        R0 ; [+36]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K1 ["maximum"]
        7 JUMPIFNOT                        R0 ; [+32]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R0 R1 K2 ["minimum"]
       11 JUMPIFNOT                        R0 ; [+28]
       12 GETUPVAL                         R0 1
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R1 R2 K0 ["value"]
       16 CALL                             R0 1 1
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R1 R2 K1 ["maximum"]
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R2 R3 K2 ["minimum"]
       23 JUMPIFNOTEQ                      R1 R2 ; [+3]
       25 LOADN                            R1 1
       26 RETURN                           R1 1
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R3 R4 K2 ["minimum"]
       30 SUB                              R2 R0 R3
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R4 R5 K1 ["maximum"]
       34 GETUPVAL                         R6 0
       35 GETTABLEKS                       R5 R6 K2 ["minimum"]
       37 SUB                              R3 R4 R5
       38 DIV                              R1 R2 R3
       39 RETURN                           R1 1
       40 LOADN                            R0 0
       41 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["onFocusGained"]
        6 JUMPIFNOT                        R0 ; [+4]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R0 R1 K0 ["onFocusGained"]
       10 CALL                             R0 0 0
       11 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 LOADB                            R2 0
        5 CALL                             R1 1 0
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R2 R3 K0 ["value"]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R3 R4 K1 ["minimum"]
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R4 R5 K2 ["maximum"]
       15 FASTCALL                         MATH_CLAMP ; [+2]
       16 GETIMPORT                        R1 K5 [math.clamp]
       18 CALL                             R1 3 1
       19 GETUPVAL                         R3 2
       20 GETTABLEKS                       R2 R3 K6 ["onChanged"]
       22 GETUPVAL                         R5 2
       23 GETTABLEKS                       R4 R5 K7 ["precision"]
       25 LOADN                            R6 10
       26 ORK                              R7 R4 K8 [0]
       27 POW                              R5 R6 R7
       28 MUL                              R8 R1 R5
       29 ADDK                             R7 R8 K9 [0.5]
       30 FASTCALL1                        MATH_FLOOR R7 ; [+2]
       31 GETIMPORT                        R6 K11 [math.floor]
       33 CALL                             R6 1 1
       34 DIV                              R3 R6 R5
       35 GETUPVAL                         R5 3
       36 GETTABLEKS                       R4 R5 K12 ["FocusLost"]
       38 CALL                             R2 2 0
       39 GETUPVAL                         R3 2
       40 GETTABLEKS                       R2 R3 K13 ["onFocusLost"]
       42 JUMPIFNOT                        R2 ; [+5]
       43 GETUPVAL                         R3 2
       44 GETTABLEKS                       R2 R3 K13 ["onFocusLost"]
       46 MOVE                             R3 R0
       47 CALL                             R2 1 0
       48 RETURN                           R0 0

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
       17 GETUPVAL                         R3 2
       18 GETTABLEKS                       R2 R3 K2 ["onChanged"]
       20 MOVE                             R3 R1
       21 GETUPVAL                         R5 3
       22 GETTABLEKS                       R4 R5 K3 ["Keyboard"]
       24 CALL                             R2 2 0
       25 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["isDisabled"]
        3 JUMPIF                           R0 ; [+2]
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R0 R1 K1 ["onChanged"]
       10 GETUPVAL                         R1 2
       11 GETUPVAL                         R3 3
       12 GETTABLEKS                       R2 R3 K2 ["Activate"]
       14 CALL                             R0 2 0
       15 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["isDisabled"]
        3 JUMPIF                           R0 ; [+2]
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R0 R1 K1 ["onChanged"]
       10 GETUPVAL                         R1 2
       11 GETUPVAL                         R3 3
       12 GETTABLEKS                       R2 R3 K2 ["Activate"]
       14 CALL                             R0 2 0
       15 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["Split"]
        4 JUMPIFNOTEQ                      R0 R1 ; [+21]
        6 GETIMPORT                        R0 K3 [UDim.new]
        8 LOADN                            R1 0
        9 LOADN                            R4 2
       10 GETUPVAL                         R7 2
       11 GETTABLEKS                       R6 R7 K4 ["splitButton"]
       13 GETTABLEKS                       R5 R6 K5 ["size"]
       15 MUL                              R3 R4 R5
       16 LOADN                            R5 2
       17 GETUPVAL                         R8 3
       18 GETTABLEKS                       R7 R8 K6 ["Gap"]
       20 GETTABLEKS                       R6 R7 K7 ["XSmall"]
       22 MUL                              R4 R5 R6
       23 ADD                              R2 R3 R4
       24 CALL                             R0 2 -1
       25 RETURN                           R0 -1
       26 GETIMPORT                        R0 K3 [UDim.new]
       28 CALL                             R0 0 -1
       29 RETURN                           R0 -1

PROTO_11:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["current"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["current"]
        3 JUMPIFNOT                        R2 ; [+50]
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K0 ["current"]
        8 GETTABLEKS                       R3 R4 K1 ["value"]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R5 R6 K0 ["current"]
       13 GETTABLEKS                       R4 R5 K2 ["position"]
       15 GETTABLEKS                       R5 R1 K3 ["X"]
       17 GETUPVAL                         R7 2
       18 GETTABLEKS                       R6 R7 K4 ["step"]
       20 CALL                             R2 4 1
       21 MOVE                             R5 R2
       22 GETUPVAL                         R7 2
       23 GETTABLEKS                       R6 R7 K5 ["precision"]
       25 LOADN                            R8 10
       26 ORK                              R9 R6 K6 [0]
       27 POW                              R7 R8 R9
       28 MUL                              R10 R5 R7
       29 ADDK                             R9 R10 K7 [0.5]
       30 FASTCALL1                        MATH_FLOOR R9 ; [+2]
       31 GETIMPORT                        R8 K10 [math.floor]
       33 CALL                             R8 1 1
       34 DIV                              R4 R8 R7
       35 GETUPVAL                         R6 2
       36 GETTABLEKS                       R5 R6 K11 ["minimum"]
       38 GETUPVAL                         R7 2
       39 GETTABLEKS                       R6 R7 K12 ["maximum"]
       41 FASTCALL                         MATH_CLAMP ; [+2]
       42 GETIMPORT                        R3 K14 [math.clamp]
       44 CALL                             R3 3 1
       45 MOVE                             R2 R3
       46 GETUPVAL                         R4 2
       47 GETTABLEKS                       R3 R4 K15 ["onChanged"]
       49 MOVE                             R4 R2
       50 GETUPVAL                         R6 3
       51 GETTABLEKS                       R5 R6 K16 ["Drag"]
       53 CALL                             R3 2 0
       54 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
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
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["Split"]
        4 JUMPIFEQ                         R2 R3 ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R2 R3 K1 ["createElement"]
       11 GETUPVAL                         R3 3
       12 DUPTABLE                         R4 K19 [{"text", "hasError", "size", "horizontalPadding", "onChanged", "onFocusLost", "onFocus", "onDragStarted", "onDrag", "onDragEnded", "onReturnPressed", "ref", "backgroundGradient", "trailingElement", "leadingElement", "isDisabled", "testId"}]
       13 GETUPVAL                         R5 4
       14 SETTABLEKS                       R5 R4 K2 ["text"]
       16 GETUPVAL                         R5 5
       17 SETTABLEKS                       R5 R4 K3 ["hasError"]
       19 GETUPVAL                         R6 6
       20 GETTABLEKS                       R5 R6 K4 ["size"]
       22 SETTABLEKS                       R5 R4 K4 ["size"]
       24 DUPTABLE                         R5 K21 [{"left"}]
       25 GETUPVAL                         R8 7
       26 GETTABLEKS                       R7 R8 K22 ["innerContainer"]
       28 GETTABLEKS                       R6 R7 K5 ["horizontalPadding"]
       30 SETTABLEKS                       R6 R5 K20 ["left"]
       32 SETTABLEKS                       R5 R4 K5 ["horizontalPadding"]
       34 GETUPVAL                         R5 8
       35 SETTABLEKS                       R5 R4 K6 ["onChanged"]
       37 GETUPVAL                         R5 9
       38 SETTABLEKS                       R5 R4 K7 ["onFocusLost"]
       40 GETUPVAL                         R5 10
       41 SETTABLEKS                       R5 R4 K8 ["onFocus"]
       43 GETUPVAL                         R7 6
       44 GETTABLEKS                       R6 R7 K23 ["isScrubbable"]
       46 JUMPIFNOT                        R6 ; [+2]
       47 GETUPVAL                         R5 11
       48 JUMP                             ; [+1]
       49 LOADNIL                          R5
       50 SETTABLEKS                       R5 R4 K9 ["onDragStarted"]
       52 GETUPVAL                         R7 6
       53 GETTABLEKS                       R6 R7 K23 ["isScrubbable"]
       55 JUMPIFNOT                        R6 ; [+2]
       56 GETUPVAL                         R5 12
       57 JUMP                             ; [+1]
       58 LOADNIL                          R5
       59 SETTABLEKS                       R5 R4 K10 ["onDrag"]
       61 GETUPVAL                         R7 6
       62 GETTABLEKS                       R6 R7 K23 ["isScrubbable"]
       64 JUMPIFNOT                        R6 ; [+2]
       65 GETUPVAL                         R5 13
       66 JUMP                             ; [+1]
       67 LOADNIL                          R5
       68 SETTABLEKS                       R5 R4 K11 ["onDragEnded"]
       70 GETUPVAL                         R6 6
       71 GETTABLEKS                       R5 R6 K12 ["onReturnPressed"]
       73 SETTABLEKS                       R5 R4 K12 ["onReturnPressed"]
       75 SETTABLEKS                       R0 R4 K13 ["ref"]
       77 GETUPVAL                         R7 6
       78 GETTABLEKS                       R6 R7 K23 ["isScrubbable"]
       80 JUMPIFNOT                        R6 ; [+29]
       81 GETUPVAL                         R6 14
       82 JUMPIFNOT                        R6 ; [+27]
       83 GETUPVAL                         R6 2
       84 GETTABLEKS                       R5 R6 K1 ["createElement"]
       86 LOADK                            R6 K24 ["UIGradient"]
       87 DUPTABLE                         R7 K28 [{"Color", "Transparency", "Rotation"}]
       88 GETIMPORT                        R8 K31 [ColorSequence.new]
       90 GETUPVAL                         R13 15
       91 GETTABLEKS                       R12 R13 K25 ["Color"]
       93 GETTABLEKS                       R11 R12 K32 ["Shift"]
       95 GETTABLEKS                       R10 R11 K33 ["Shift_300"]
       97 GETTABLEKS                       R9 R10 K34 ["Color3"]
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
      114 GETUPVAL                         R8 1
      115 GETTABLEKS                       R7 R8 K35 ["Stacked"]
      117 JUMPIFNOTEQ                      R6 R7 ; [+3]
      119 GETUPVAL                         R5 16
      120 JUMP                             ; [+1]
      121 LOADNIL                          R5
      122 SETTABLEKS                       R5 R4 K15 ["trailingElement"]
      124 GETUPVAL                         R7 6
      125 GETTABLEKS                       R6 R7 K36 ["leadingIcon"]
      127 JUMPIFNOT                        R6 ; [+35]
      128 GETUPVAL                         R6 2
      129 GETTABLEKS                       R5 R6 K1 ["createElement"]
      131 GETUPVAL                         R6 17
      132 DUPTABLE                         R7 K38 [{"tag"}]
      133 LOADK                            R8 K39 ["row align-y-center size-0-full auto-x"]
      134 SETTABLEKS                       R8 R7 K37 ["tag"]
      136 GETUPVAL                         R9 2
      137 GETTABLEKS                       R8 R9 K1 ["createElement"]
      139 GETUPVAL                         R9 18
      140 DUPTABLE                         R10 K42 [{"name", "style", "size"}]
      141 GETUPVAL                         R12 6
      142 GETTABLEKS                       R11 R12 K36 ["leadingIcon"]
      144 SETTABLEKS                       R11 R10 K40 ["name"]
      146 GETUPVAL                         R13 7
      147 GETTABLEKS                       R12 R13 K43 ["icon"]
      149 GETTABLEKS                       R11 R12 K41 ["style"]
      151 SETTABLEKS                       R11 R10 K41 ["style"]
      153 GETUPVAL                         R13 7
      154 GETTABLEKS                       R12 R13 K43 ["icon"]
      156 GETTABLEKS                       R11 R12 K4 ["size"]
      158 SETTABLEKS                       R11 R10 K4 ["size"]
      160 CALL                             R8 2 -1
      161 CALL                             R5 -1 1
      162 JUMP                             ; [+1]
      163 LOADNIL                          R5
      164 SETTABLEKS                       R5 R4 K16 ["leadingElement"]
      166 GETUPVAL                         R6 6
      167 GETTABLEKS                       R5 R6 K17 ["isDisabled"]
      169 SETTABLEKS                       R5 R4 K17 ["isDisabled"]
      171 LOADK                            R6 K44 ["%*--field"]
      172 GETUPVAL                         R9 6
      173 GETTABLEKS                       R8 R9 K18 ["testId"]
      175 NAMECALL                         R6 R6 K45 ["format"]
      177 CALL                             R6 2 1
      178 MOVE                             R5 R6
      179 SETTABLEKS                       R5 R4 K18 ["testId"]
      181 CALL                             R2 2 1
      182 JUMPIFNOT                        R1 ; [+32]
      183 GETUPVAL                         R4 2
      184 GETTABLEKS                       R3 R4 K1 ["createElement"]
      186 GETUPVAL                         R4 17
      187 DUPTABLE                         R5 K47 [{"Size", "tag"}]
      188 GETIMPORT                        R6 K50 [UDim2.fromOffset]
      190 GETUPVAL                         R9 19
      191 GETTABLEKS                       R8 R9 K51 ["Offset"]
      193 GETUPVAL                         R10 20
      194 GETTABLEKS                       R9 R10 K51 ["Offset"]
      196 SUB                              R7 R8 R9
      197 LOADN                            R8 0
      198 CALL                             R6 2 1
      199 SETTABLEKS                       R6 R5 K46 ["Size"]
      201 LOADK                            R6 K52 ["row align-y-center gap-xsmall auto-y"]
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
       15 GETTABLEKS                       R8 R2 K1 ["controlsVariant"]
       17 CALL                             R5 3 1
       18 GETUPVAL                         R7 5
       19 GETTABLEKS                       R6 R7 K2 ["useState"]
       21 LOADB                            R7 0
       22 CALL                             R6 1 2
       23 GETUPVAL                         R9 5
       24 GETTABLEKS                       R8 R9 K3 ["useRef"]
       26 LOADNIL                          R9
       27 CALL                             R8 1 1
       28 GETUPVAL                         R10 5
       29 GETTABLEKS                       R9 R10 K2 ["useState"]
       31 LOADB                            R10 0
       32 CALL                             R9 1 2
       33 GETTABLEKS                       R12 R2 K4 ["hasError"]
       35 OR                               R11 R12 R9
       36 GETTABLEKS                       R12 R2 K1 ["controlsVariant"]
       38 GETUPVAL                         R14 5
       39 GETTABLEKS                       R13 R14 K5 ["useCallback"]
       41 NEWCLOSURE                       R14 P0
       42 CAPTURE                          VAL R2
       43 NEWTABLE                         R15 0 2
       45 GETTABLEKS                       R16 R2 K6 ["minimum"]
       47 GETTABLEKS                       R17 R2 K7 ["maximum"]
       49 SETLIST                          R15 R16 2 [1]
       51 CALL                             R13 2 1
       52 GETUPVAL                         R15 5
       53 GETTABLEKS                       R14 R15 K5 ["useCallback"]
       55 NEWCLOSURE                       R15 P1
       56 CAPTURE                          VAL R2
       57 NEWTABLE                         R16 0 1
       59 GETTABLEKS                       R17 R2 K8 ["step"]
       61 SETLIST                          R16 R17 1 [1]
       63 CALL                             R14 2 1
       64 LOADNIL                          R15
       65 LOADNIL                          R16
       66 LOADNIL                          R17
       67 LOADNIL                          R18
       68 JUMPIF                           R6 ; [+114]
       69 GETTABLEKS                       R20 R2 K9 ["value"]
       71 GETTABLEKS                       R21 R2 K10 ["precision"]
       73 LOADN                            R23 10
       74 ORK                              R24 R21 K11 [0]
       75 POW                              R22 R23 R24
       76 MUL                              R25 R20 R22
       77 ADDK                             R24 R25 K12 [0.5]
       78 FASTCALL1                        MATH_FLOOR R24 ; [+2]
       79 GETIMPORT                        R23 K15 [math.floor]
       81 CALL                             R23 1 1
       82 DIV                              R19 R23 R22
       83 GETTABLEKS                       R22 R2 K9 ["value"]
       85 GETTABLEKS                       R23 R2 K8 ["step"]
       87 ADD                              R21 R22 R23
       88 GETTABLEKS                       R22 R2 K10 ["precision"]
       90 LOADN                            R24 10
       91 ORK                              R25 R22 K11 [0]
       92 POW                              R23 R24 R25
       93 MUL                              R26 R21 R23
       94 ADDK                             R25 R26 K12 [0.5]
       95 FASTCALL1                        MATH_FLOOR R25 ; [+2]
       96 GETIMPORT                        R24 K15 [math.floor]
       98 CALL                             R24 1 1
       99 DIV                              R20 R24 R23
      100 GETTABLEKS                       R23 R2 K9 ["value"]
      102 GETTABLEKS                       R24 R2 K8 ["step"]
      104 SUB                              R22 R23 R24
      105 GETTABLEKS                       R23 R2 K10 ["precision"]
      107 LOADN                            R25 10
      108 ORK                              R26 R23 K11 [0]
      109 POW                              R24 R25 R26
      110 MUL                              R27 R22 R24
      111 ADDK                             R26 R27 K12 [0.5]
      112 FASTCALL1                        MATH_FLOOR R26 ; [+2]
      113 GETIMPORT                        R25 K15 [math.floor]
      115 CALL                             R25 1 1
      116 DIV                              R21 R25 R24
      117 MOVE                             R23 R14
      118 GETTABLEKS                       R24 R2 K9 ["value"]
      120 GETIMPORT                        R25 K17 [math.ceil]
      122 CALL                             R23 2 1
      123 GETTABLEKS                       R24 R2 K10 ["precision"]
      125 LOADN                            R26 10
      126 ORK                              R27 R24 K11 [0]
      127 POW                              R25 R26 R27
      128 MUL                              R28 R23 R25
      129 ADDK                             R27 R28 K12 [0.5]
      130 FASTCALL1                        MATH_FLOOR R27 ; [+2]
      131 GETIMPORT                        R26 K15 [math.floor]
      133 CALL                             R26 1 1
      134 DIV                              R22 R26 R25
      135 MOVE                             R24 R14
      136 GETTABLEKS                       R25 R2 K9 ["value"]
      138 GETIMPORT                        R26 K15 [math.floor]
      140 CALL                             R24 2 1
      141 GETTABLEKS                       R25 R2 K10 ["precision"]
      143 LOADN                            R27 10
      144 ORK                              R28 R25 K11 [0]
      145 POW                              R26 R27 R28
      146 MUL                              R29 R24 R26
      147 ADDK                             R28 R29 K12 [0.5]
      148 FASTCALL1                        MATH_FLOOR R28 ; [+2]
      149 GETIMPORT                        R27 K15 [math.floor]
      151 CALL                             R27 1 1
      152 DIV                              R23 R27 R26
      153 JUMPIFEQ                         R19 R22 ; [+2]
      155 MOVE                             R20 R22
      156 JUMPIFEQ                         R19 R23 ; [+2]
      158 MOVE                             R21 R23
      159 MOVE                             R24 R13
      160 MOVE                             R25 R20
      161 CALL                             R24 1 1
      162 MOVE                             R17 R24
      163 MOVE                             R24 R13
      164 MOVE                             R25 R21
      165 CALL                             R24 1 1
      166 MOVE                             R18 R24
      167 GETTABLEKS                       R24 R2 K9 ["value"]
      169 GETTABLEKS                       R25 R2 K7 ["maximum"]
      171 JUMPIFEQ                         R24 R25 ; [+2]
      173 LOADB                            R15 0 +1
      174 LOADB                            R15 1
      175 GETTABLEKS                       R24 R2 K9 ["value"]
      177 GETTABLEKS                       R25 R2 K6 ["minimum"]
      179 JUMPIFEQ                         R24 R25 ; [+2]
      181 LOADB                            R16 0 +1
      182 LOADB                            R16 1
      183 GETTABLEKS                       R20 R2 K9 ["value"]
      185 JUMPIFNOT                        R20 ; [+15]
      186 GETTABLEKS                       R20 R2 K9 ["value"]
      188 GETTABLEKS                       R21 R2 K10 ["precision"]
      190 LOADN                            R23 10
      191 ORK                              R24 R21 K11 [0]
      192 POW                              R22 R23 R24
      193 MUL                              R25 R20 R22
      194 ADDK                             R24 R25 K12 [0.5]
      195 FASTCALL1                        MATH_FLOOR R24 ; [+2]
      196 GETIMPORT                        R23 K15 [math.floor]
      198 CALL                             R23 1 1
      199 DIV                              R19 R23 R22
      200 JUMP                             ; [+1]
      201 LOADN                            R19 0
      202 JUMPIFNOT                        R6 ; [+7]
      203 GETTABLEKS                       R21 R2 K9 ["value"]
      205 FASTCALL1                        TOSTRING R21 ; [+2]
      206 GETIMPORT                        R20 K19 [tostring]
      208 CALL                             R20 1 1
      209 JUMP                             ; [+4]
      210 GETTABLEKS                       R20 R2 K20 ["formatAsString"]
      212 MOVE                             R21 R19
      213 CALL                             R20 1 1
      214 GETUPVAL                         R22 5
      215 GETTABLEKS                       R21 R22 K3 ["useRef"]
      217 MOVE                             R22 R20
      218 CALL                             R21 1 1
      219 GETTABLEKS                       R23 R2 K9 ["value"]
      221 FASTCALL1                        TOSTRING R23 ; [+2]
      222 GETIMPORT                        R22 K19 [tostring]
      224 CALL                             R22 1 1
      225 SETTABLEKS                       R22 R21 K21 ["current"]
      227 GETTABLEKS                       R23 R2 K22 ["width"]
      229 JUMPIFNOT                        R23 ; [+3]
      230 GETTABLEKS                       R22 R2 K22 ["width"]
      232 JUMP                             ; [+8]
      233 GETIMPORT                        R22 K25 [UDim.new]
      235 LOADN                            R23 0
      236 GETTABLEKS                       R25 R5 K26 ["container"]
      238 GETTABLEKS                       R24 R25 K22 ["width"]
      240 CALL                             R22 2 1
      241 GETUPVAL                         R24 5
      242 GETTABLEKS                       R23 R24 K27 ["useMemo"]
      244 NEWCLOSURE                       R24 P2
      245 CAPTURE                          VAL R2
      246 CAPTURE                          VAL R13
      247 NEWTABLE                         R25 0 3
      249 GETTABLEKS                       R26 R2 K9 ["value"]
      251 GETTABLEKS                       R27 R2 K7 ["maximum"]
      253 GETTABLEKS                       R28 R2 K6 ["minimum"]
      255 SETLIST                          R25 R26 3 [1]
      257 CALL                             R23 2 1
      258 GETUPVAL                         R25 5
      259 GETTABLEKS                       R24 R25 K5 ["useCallback"]
      261 NEWCLOSURE                       R25 P3
      262 CAPTURE                          VAL R7
      263 CAPTURE                          VAL R2
      264 NEWTABLE                         R26 0 2
      266 MOVE                             R27 R7
      267 GETTABLEKS                       R28 R2 K28 ["onFocusGained"]
      269 SETLIST                          R26 R27 2 [1]
      271 CALL                             R24 2 1
      272 GETUPVAL                         R26 5
      273 GETTABLEKS                       R25 R26 K5 ["useCallback"]
      275 NEWCLOSURE                       R26 P4
      276 CAPTURE                          VAL R7
      277 CAPTURE                          VAL R10
      278 CAPTURE                          VAL R2
      279 CAPTURE                          UPVAL U6
      280 NEWTABLE                         R27 0 7
      282 MOVE                             R28 R7
      283 GETTABLEKS                       R29 R2 K29 ["onChanged"]
      285 GETTABLEKS                       R30 R2 K30 ["onFocusLost"]
      287 GETTABLEKS                       R31 R2 K7 ["maximum"]
      289 GETTABLEKS                       R32 R2 K6 ["minimum"]
      291 GETTABLEKS                       R33 R2 K10 ["precision"]
      293 GETTABLEKS                       R34 R2 K9 ["value"]
      295 SETLIST                          R27 R28 7 [1]
      297 CALL                             R25 2 1
      298 GETUPVAL                         R27 5
      299 GETTABLEKS                       R26 R27 K5 ["useCallback"]
      301 NEWCLOSURE                       R27 P5
      302 CAPTURE                          VAL R6
      303 CAPTURE                          VAL R10
      304 CAPTURE                          VAL R2
      305 CAPTURE                          UPVAL U6
      306 NEWTABLE                         R28 0 2
      308 MOVE                             R29 R6
      309 GETTABLEKS                       R30 R2 K29 ["onChanged"]
      311 SETLIST                          R28 R29 2 [1]
      313 CALL                             R26 2 1
      314 GETUPVAL                         R28 5
      315 GETTABLEKS                       R27 R28 K5 ["useCallback"]
      317 NEWCLOSURE                       R28 P6
      318 CAPTURE                          VAL R2
      319 CAPTURE                          REF R15
      320 CAPTURE                          REF R17
      321 CAPTURE                          UPVAL U6
      322 NEWTABLE                         R29 0 4
      324 GETTABLEKS                       R30 R2 K31 ["isDisabled"]
      326 MOVE                             R31 R15
      327 MOVE                             R32 R17
      328 GETTABLEKS                       R33 R2 K29 ["onChanged"]
      330 SETLIST                          R29 R30 4 [1]
      332 CALL                             R27 2 1
      333 GETUPVAL                         R29 5
      334 GETTABLEKS                       R28 R29 K5 ["useCallback"]
      336 NEWCLOSURE                       R29 P7
      337 CAPTURE                          VAL R2
      338 CAPTURE                          REF R16
      339 CAPTURE                          REF R18
      340 CAPTURE                          UPVAL U6
      341 NEWTABLE                         R30 0 4
      343 GETTABLEKS                       R31 R2 K31 ["isDisabled"]
      345 MOVE                             R32 R16
      346 MOVE                             R33 R18
      347 GETTABLEKS                       R34 R2 K29 ["onChanged"]
      349 SETLIST                          R30 R31 4 [1]
      351 CALL                             R28 2 1
      352 GETUPVAL                         R30 5
      353 GETTABLEKS                       R29 R30 K32 ["createElement"]
      355 GETUPVAL                         R30 7
      356 DUPTABLE                         R31 K37 [{"variant", "controlsVariant", "size", "increment", "decrement", "testId"}]
      357 LOADNIL                          R32
      358 SETTABLEKS                       R32 R31 K33 ["variant"]
      360 SETTABLEKS                       R12 R31 K1 ["controlsVariant"]
      362 GETTABLEKS                       R32 R2 K0 ["size"]
      364 SETTABLEKS                       R32 R31 K0 ["size"]
      366 DUPTABLE                         R32 K39 [{"isDisabled", "onClick"}]
      367 GETTABLEKS                       R34 R2 K31 ["isDisabled"]
      369 OR                               R33 R34 R15
      370 SETTABLEKS                       R33 R32 K31 ["isDisabled"]
      372 SETTABLEKS                       R27 R32 K38 ["onClick"]
      374 SETTABLEKS                       R32 R31 K34 ["increment"]
      376 DUPTABLE                         R32 K39 [{"isDisabled", "onClick"}]
      377 GETTABLEKS                       R34 R2 K31 ["isDisabled"]
      379 OR                               R33 R34 R16
      380 SETTABLEKS                       R33 R32 K31 ["isDisabled"]
      382 SETTABLEKS                       R28 R32 K38 ["onClick"]
      384 SETTABLEKS                       R32 R31 K35 ["decrement"]
      386 GETTABLEKS                       R32 R2 K36 ["testId"]
      388 SETTABLEKS                       R32 R31 K36 ["testId"]
      390 CALL                             R29 2 1
      391 GETUPVAL                         R31 5
      392 GETTABLEKS                       R30 R31 K27 ["useMemo"]
      394 NEWCLOSURE                       R31 P8
      395 CAPTURE                          VAL R12
      396 CAPTURE                          UPVAL U8
      397 CAPTURE                          VAL R5
      398 CAPTURE                          VAL R3
      399 NEWTABLE                         R32 0 2
      401 MOVE                             R33 R3
      402 MOVE                             R34 R12
      403 SETLIST                          R32 R33 2 [1]
      405 CALL                             R30 2 1
      406 GETUPVAL                         R32 5
      407 GETTABLEKS                       R31 R32 K5 ["useCallback"]
      409 NEWCLOSURE                       R32 P9
      410 CAPTURE                          VAL R21
      411 CAPTURE                          VAL R8
      412 NEWTABLE                         R33 0 0
      414 CALL                             R31 2 1
      415 GETUPVAL                         R33 5
      416 GETTABLEKS                       R32 R33 K5 ["useCallback"]
      418 NEWCLOSURE                       R33 P10
      419 CAPTURE                          VAL R8
      420 CAPTURE                          UPVAL U9
      421 CAPTURE                          VAL R2
      422 CAPTURE                          UPVAL U6
      423 NEWTABLE                         R34 0 1
      425 GETTABLEKS                       R35 R2 K29 ["onChanged"]
      427 SETLIST                          R34 R35 1 [1]
      429 CALL                             R32 2 1
      430 GETUPVAL                         R34 5
      431 GETTABLEKS                       R33 R34 K5 ["useCallback"]
      433 NEWCLOSURE                       R34 P11
      434 CAPTURE                          VAL R8
      435 NEWTABLE                         R35 0 0
      437 CALL                             R33 2 1
      438 GETTABLEKS                       R37 R3 K40 ["Color"]
      440 GETTABLEKS                       R36 R37 K41 ["Shift"]
      442 GETTABLEKS                       R35 R36 K42 ["Shift_300"]
      444 GETTABLEKS                       R34 R35 K43 ["Transparency"]
      446 GETTABLEKS                       R38 R3 K40 ["Color"]
      448 GETTABLEKS                       R37 R38 K41 ["Shift"]
      450 GETTABLEKS                       R36 R37 K44 ["Shift_100"]
      452 GETTABLEKS                       R35 R36 K43 ["Transparency"]
      454 GETUPVAL                         R37 5
      455 GETTABLEKS                       R36 R37 K27 ["useMemo"]
      457 NEWCLOSURE                       R37 P12
      458 CAPTURE                          VAL R23
      459 CAPTURE                          VAL R35
      460 CAPTURE                          VAL R34
      461 NEWTABLE                         R38 0 3
      463 MOVE                             R39 R23
      464 MOVE                             R40 R34
      465 MOVE                             R41 R35
      466 SETLIST                          R38 R39 3 [1]
      468 CALL                             R36 2 1
      469 GETUPVAL                         R38 5
      470 GETTABLEKS                       R37 R38 K32 ["createElement"]
      472 GETUPVAL                         R38 10
      473 GETUPVAL                         R39 11
      474 MOVE                             R40 R2
      475 DUPTABLE                         R41 K51 [{"width", "ref", "hasError", "label", "size", "isRequired", "hint", "textBoxRef", "input"}]
      476 SETTABLEKS                       R22 R41 K22 ["width"]
      478 SETTABLEKS                       R1 R41 K45 ["ref"]
      480 SETTABLEKS                       R11 R41 K4 ["hasError"]
      482 GETTABLEKS                       R42 R2 K46 ["label"]
      484 SETTABLEKS                       R42 R41 K46 ["label"]
      486 GETUPVAL                         R42 12
      487 GETTABLEKS                       R43 R2 K0 ["size"]
      489 CALL                             R42 1 1
      490 SETTABLEKS                       R42 R41 K0 ["size"]
      492 GETTABLEKS                       R42 R2 K47 ["isRequired"]
      494 SETTABLEKS                       R42 R41 K47 ["isRequired"]
      496 GETTABLEKS                       R42 R2 K48 ["hint"]
      498 SETTABLEKS                       R42 R41 K48 ["hint"]
      500 GETTABLEKS                       R42 R2 K49 ["textBoxRef"]
      502 SETTABLEKS                       R42 R41 K49 ["textBoxRef"]
      504 NEWCLOSURE                       R42 P13
      505 CAPTURE                          VAL R12
      506 CAPTURE                          UPVAL U8
      507 CAPTURE                          UPVAL U5
      508 CAPTURE                          UPVAL U13
      509 CAPTURE                          VAL R20
      510 CAPTURE                          VAL R11
      511 CAPTURE                          VAL R2
      512 CAPTURE                          VAL R4
      513 CAPTURE                          VAL R26
      514 CAPTURE                          VAL R25
      515 CAPTURE                          VAL R24
      516 CAPTURE                          VAL R31
      517 CAPTURE                          VAL R32
      518 CAPTURE                          VAL R33
      519 CAPTURE                          VAL R36
      520 CAPTURE                          VAL R3
      521 CAPTURE                          VAL R29
      522 CAPTURE                          UPVAL U14
      523 CAPTURE                          UPVAL U15
      524 CAPTURE                          VAL R22
      525 CAPTURE                          VAL R30
      526 SETTABLEKS                       R42 R41 K50 ["input"]
      528 CALL                             R39 2 -1
      529 CALL                             R37 -1 -1
      530 CLOSEUPVALS                      R15
      531 RETURN                           R37 -1

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
       18 GETTABLEKS                       R6 R0 K9 ["Utility"]
       20 GETTABLEKS                       R5 R6 K10 ["withCommonProps"]
       22 CALL                             R4 1 1
       23 GETIMPORT                        R5 K6 [require]
       25 GETTABLEKS                       R7 R0 K9 ["Utility"]
       27 GETTABLEKS                       R6 R7 K11 ["withDefaults"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K6 [require]
       32 GETTABLEKS                       R8 R0 K12 ["Enums"]
       34 GETTABLEKS                       R7 R8 K13 ["InputSize"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K6 [require]
       39 GETTABLEKS                       R9 R0 K12 ["Enums"]
       41 GETTABLEKS                       R8 R9 K14 ["InputLabelSize"]
       43 CALL                             R7 1 1
       44 GETIMPORT                        R8 K6 [require]
       46 GETTABLEKS                       R10 R0 K12 ["Enums"]
       48 GETTABLEKS                       R9 R10 K15 ["NumberInputControlsVariant"]
       50 CALL                             R8 1 1
       51 GETIMPORT                        R9 K6 [require]
       53 GETTABLEKS                       R11 R0 K12 ["Enums"]
       55 GETTABLEKS                       R10 R11 K16 ["OnChangeCallbackReason"]
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
       85 GETTABLEKS                       R17 R0 K9 ["Utility"]
       87 GETTABLEKS                       R16 R17 K22 ["getInputTextSize"]
       89 CALL                             R15 1 1
       90 GETIMPORT                        R16 K6 [require]
       92 GETTABLEKS                       R18 R3 K23 ["TextInput"]
       94 GETTABLEKS                       R17 R18 K24 ["useTextInputVariants"]
       96 CALL                             R16 1 1
       97 GETIMPORT                        R17 K6 [require]
       99 GETTABLEKS                       R20 R0 K25 ["Providers"]
      101 GETTABLEKS                       R19 R20 K26 ["Style"]
      103 GETTABLEKS                       R18 R19 K27 ["useTokens"]
      105 CALL                             R17 1 1
      106 GETIMPORT                        R18 K6 [require]
      108 GETIMPORT                        R21 K1 [script]
      110 GETTABLEKS                       R20 R21 K4 ["Parent"]
      112 GETTABLEKS                       R19 R20 K28 ["NumberInputControls"]
      114 CALL                             R18 1 1
      115 GETIMPORT                        R19 K6 [require]
      117 GETIMPORT                        R22 K1 [script]
      119 GETTABLEKS                       R21 R22 K4 ["Parent"]
      121 GETTABLEKS                       R20 R21 K29 ["useNumberInputVariants"]
      123 CALL                             R19 1 1
      124 GETIMPORT                        R20 K6 [require]
      126 GETIMPORT                        R23 K1 [script]
      128 GETTABLEKS                       R22 R23 K4 ["Parent"]
      130 GETTABLEKS                       R21 R22 K30 ["calculateNumberInputValueFromPositions"]
      132 CALL                             R20 1 1
      133 DUPCLOSURE                       R21 K31 [PROTO_0]
      134 DUPCLOSURE                       R22 K32 [PROTO_1]
      135 DUPTABLE                         R23 K43 [{"controlsVariant", "size", "minimum", "maximum", "step", "precision", "value", "formatAsString", "isScrubbable", "testId"}]
      136 GETTABLEKS                       R24 R8 K44 ["Stacked"]
      138 SETTABLEKS                       R24 R23 K33 ["controlsVariant"]
      140 GETTABLEKS                       R24 R6 K45 ["Large"]
      142 SETTABLEKS                       R24 R23 K34 ["size"]
      144 LOADK                            R24 K46 [-∞]
      145 SETTABLEKS                       R24 R23 K35 ["minimum"]
      147 LOADK                            R24 K47 [∞]
      148 SETTABLEKS                       R24 R23 K36 ["maximum"]
      150 LOADN                            R24 1
      151 SETTABLEKS                       R24 R23 K37 ["step"]
      153 LOADN                            R24 3
      154 SETTABLEKS                       R24 R23 K38 ["precision"]
      156 LOADN                            R24 0
      157 SETTABLEKS                       R24 R23 K39 ["value"]
      159 SETTABLEKS                       R22 R23 K40 ["formatAsString"]
      161 LOADB                            R24 0
      162 SETTABLEKS                       R24 R23 K41 ["isScrubbable"]
      164 LOADK                            R24 K48 ["--foundation-number-input"]
      165 SETTABLEKS                       R24 R23 K42 ["testId"]
      167 DUPCLOSURE                       R24 K49 [PROTO_16]
      168 CAPTURE                          VAL R5
      169 CAPTURE                          VAL R23
      170 CAPTURE                          VAL R17
      171 CAPTURE                          VAL R16
      172 CAPTURE                          VAL R19
      173 CAPTURE                          VAL R2
      174 CAPTURE                          VAL R9
      175 CAPTURE                          VAL R18
      176 CAPTURE                          VAL R8
      177 CAPTURE                          VAL R20
      178 CAPTURE                          VAL R11
      179 CAPTURE                          VAL R4
      180 CAPTURE                          VAL R15
      181 CAPTURE                          VAL R12
      182 CAPTURE                          VAL R14
      183 CAPTURE                          VAL R10
      184 GETTABLEKS                       R25 R2 K50 ["memo"]
      186 GETTABLEKS                       R26 R2 K51 ["forwardRef"]
      188 MOVE                             R27 R24
      189 CALL                             R26 1 -1
      190 CALL                             R25 -1 -1
      191 RETURN                           R25 -1
