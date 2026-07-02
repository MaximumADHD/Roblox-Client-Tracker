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
        4 GETTABLEKS                       R0 R0 K0 ["FoundationNumberInputRefAndCallbacks"]
        6 JUMPIFNOT                        R0 ; [+8]
        7 GETUPVAL                         R0 2
        8 GETTABLEKS                       R0 R0 K1 ["onFocusGained"]
       10 JUMPIFNOT                        R0 ; [+4]
       11 GETUPVAL                         R0 2
       12 GETTABLEKS                       R0 R0 K1 ["onFocusGained"]
       14 CALL                             R0 0 0
       15 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["FoundationNumberInputInvalidError"]
        6 JUMPIFNOT                        R0 ; [+3]
        7 GETUPVAL                         R0 2
        8 LOADB                            R1 0
        9 CALL                             R0 1 0
       10 GETUPVAL                         R1 3
       11 GETTABLEKS                       R1 R1 K1 ["value"]
       13 GETUPVAL                         R2 3
       14 GETTABLEKS                       R2 R2 K2 ["minimum"]
       16 GETUPVAL                         R3 3
       17 GETTABLEKS                       R3 R3 K3 ["maximum"]
       19 FASTCALL                         MATH_CLAMP ; [+2]
       20 GETIMPORT                        R0 K6 [math.clamp]
       22 CALL                             R0 3 1
       23 GETUPVAL                         R1 3
       24 GETTABLEKS                       R1 R1 K7 ["onChanged"]
       26 GETUPVAL                         R3 3
       27 GETTABLEKS                       R3 R3 K8 ["precision"]
       29 LOADN                            R5 10
       30 ORK                              R6 R3 K9 [0]
       31 POW                              R4 R5 R6
       32 MUL                              R7 R0 R4
       33 ADDK                             R6 R7 K10 [0.5]
       34 FASTCALL1                        MATH_FLOOR R6 ; [+2]
       35 GETIMPORT                        R5 K12 [math.floor]
       37 CALL                             R5 1 1
       38 DIV                              R2 R5 R4
       39 CALL                             R1 1 0
       40 GETUPVAL                         R1 1
       41 GETTABLEKS                       R1 R1 K13 ["FoundationNumberInputRefAndCallbacks"]
       43 JUMPIFNOT                        R1 ; [+8]
       44 GETUPVAL                         R1 3
       45 GETTABLEKS                       R1 R1 K14 ["onFocusLost"]
       47 JUMPIFNOT                        R1 ; [+4]
       48 GETUPVAL                         R1 3
       49 GETTABLEKS                       R1 R1 K14 ["onFocusLost"]
       51 CALL                             R1 0 0
       52 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 FASTCALL1                        TONUMBER R0 ; [+3]
        4 MOVE                             R2 R0
        5 GETIMPORT                        R1 K1 [tonumber]
        7 CALL                             R1 1 1
        8 JUMPIFNOTEQKNIL                  R1 ; [+9]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K2 ["FoundationNumberInputInvalidError"]
       13 JUMPIFNOT                        R2 ; [+3]
       14 GETUPVAL                         R2 2
       15 LOADB                            R3 1
       16 CALL                             R2 1 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R2 R2 K2 ["FoundationNumberInputInvalidError"]
       21 JUMPIFNOT                        R2 ; [+3]
       22 GETUPVAL                         R2 2
       23 LOADB                            R3 0
       24 CALL                             R2 1 0
       25 GETUPVAL                         R2 3
       26 GETTABLEKS                       R2 R2 K3 ["onChanged"]
       28 MOVE                             R3 R1
       29 CALL                             R2 1 0
       30 RETURN                           R0 0

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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["isScrubbable"]
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 1
        6 SETTABLEKS                       R1 R2 K1 ["current"]
        8 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["isScrubbable"]
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["current"]
        8 JUMPIFNOT                        R2 ; [+62]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K1 ["current"]
       12 SUB                              R2 R1 R3
       13 GETTABLEKS                       R2 R2 K2 ["X"]
       15 FASTCALL1                        MATH_ABS R2 ; [+3]
       16 MOVE                             R5 R2
       17 GETIMPORT                        R4 K5 [math.abs]
       19 CALL                             R4 1 1
       20 DIV                              R3 R2 R4
       21 JUMPIFEQ                         R3 R3 ; [+2]
       23 LOADN                            R3 0
       24 GETUPVAL                         R4 1
       25 SETTABLEKS                       R1 R4 K1 ["current"]
       27 GETUPVAL                         R5 2
       28 GETTABLEKS                       R5 R5 K1 ["current"]
       30 FASTCALL1                        TONUMBER R5 ; [+2]
       31 GETIMPORT                        R4 K7 [tonumber]
       33 CALL                             R4 1 1
       34 JUMPIFNOT                        R4 ; [+36]
       35 GETUPVAL                         R8 0
       36 GETTABLEKS                       R8 R8 K8 ["step"]
       38 MUL                              R7 R3 R8
       39 ADD                              R6 R4 R7
       40 GETUPVAL                         R7 0
       41 GETTABLEKS                       R7 R7 K9 ["precision"]
       43 LOADN                            R9 10
       44 ORK                              R10 R7 K10 [0]
       45 POW                              R8 R9 R10
       46 MUL                              R11 R6 R8
       47 ADDK                             R10 R11 K11 [0.5]
       48 FASTCALL1                        MATH_FLOOR R10 ; [+2]
       49 GETIMPORT                        R9 K13 [math.floor]
       51 CALL                             R9 1 1
       52 DIV                              R5 R9 R8
       53 GETUPVAL                         R8 0
       54 GETTABLEKS                       R8 R8 K14 ["minimum"]
       56 GETUPVAL                         R9 0
       57 GETTABLEKS                       R9 R9 K15 ["maximum"]
       59 FASTCALL3                        MATH_CLAMP R5 R8 R9
       61 MOVE                             R7 R5
       62 GETIMPORT                        R6 K17 [math.clamp]
       64 CALL                             R6 3 1
       65 MOVE                             R5 R6
       66 GETUPVAL                         R6 0
       67 GETTABLEKS                       R6 R6 K18 ["onChanged"]
       69 MOVE                             R7 R5
       70 CALL                             R6 1 0
       71 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isScrubbable"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 LOADNIL                          R1
        7 SETTABLEKS                       R1 R0 K1 ["current"]
        9 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKN                    R0 K0 [0] ; [+6]
        3 GETIMPORT                        R0 K3 [NumberSequence.new]
        5 LOADN                            R1 1
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1
        8 GETUPVAL                         R0 0
        9 JUMPIFNOTEQKN                    R0 K4 [1] ; [+6]
       11 GETIMPORT                        R0 K3 [NumberSequence.new]
       13 LOADN                            R1 0
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
       29 LOADN                            R3 0
       30 CALL                             R1 2 1
       31 GETIMPORT                        R2 K6 [NumberSequenceKeypoint.new]
       33 GETUPVAL                         R3 0
       34 LOADN                            R4 0
       35 CALL                             R2 2 1
       36 GETIMPORT                        R3 K6 [NumberSequenceKeypoint.new]
       38 GETUPVAL                         R6 0
       39 ADDK                             R5 R6 K7 [0.001]
       40 FASTCALL2K                       MATH_MIN R5 K4 ; [+4]
       42 LOADK                            R6 K4 [1]
       43 GETIMPORT                        R4 K10 [math.min]
       45 CALL                             R4 2 1
       46 LOADN                            R5 1
       47 CALL                             R3 2 -1
       48 SETLIST                          R0 R1 -1 [1]
       50 GETUPVAL                         R1 0
       51 LOADK                            R2 K11 [0.999]
       52 JUMPIFNOTLT                      R1 R2 ; [+11]
       54 MOVE                             R2 R0
       55 GETIMPORT                        R3 K6 [NumberSequenceKeypoint.new]
       57 LOADN                            R4 1
       58 LOADN                            R5 1
       59 CALL                             R3 2 -1
       60 FASTCALL                         TABLE_INSERT ; [+2]
       61 GETIMPORT                        R1 K14 [table.insert]
       63 CALL                             R1 -1 0
       64 GETIMPORT                        R1 K3 [NumberSequence.new]
       66 MOVE                             R2 R0
       67 CALL                             R1 1 -1
       68 RETURN                           R1 -1
       69 GETIMPORT                        R0 K3 [NumberSequence.new]
       71 LOADN                            R1 1
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
       12 DUPTABLE                         R4 K19 [{"text", "hasError", "size", "horizontalPadding", "onChanged", "onFocusLost", "onFocus", "onDragStarted", "onDrag", "onDragEnded", "onReturnPressed", "ref", "backgroundElement", "trailingElement", "leadingElement", "isDisabled", "testId"}]
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
       43 GETUPVAL                         R5 11
       44 SETTABLEKS                       R5 R4 K9 ["onDragStarted"]
       46 GETUPVAL                         R5 12
       47 SETTABLEKS                       R5 R4 K10 ["onDrag"]
       49 GETUPVAL                         R5 13
       50 SETTABLEKS                       R5 R4 K11 ["onDragEnded"]
       52 GETUPVAL                         R6 14
       53 GETTABLEKS                       R6 R6 K23 ["FoundationNumberInputRefAndCallbacks"]
       55 JUMPIFNOT                        R6 ; [+4]
       56 GETUPVAL                         R5 6
       57 GETTABLEKS                       R5 R5 K12 ["onReturnPressed"]
       59 JUMP                             ; [+1]
       60 LOADNIL                          R5
       61 SETTABLEKS                       R5 R4 K12 ["onReturnPressed"]
       63 SETTABLEKS                       R0 R4 K13 ["ref"]
       65 GETUPVAL                         R6 6
       66 GETTABLEKS                       R6 R6 K24 ["isScrubbable"]
       68 JUMPIFNOT                        R6 ; [+75]
       69 GETUPVAL                         R6 15
       70 JUMPIFNOT                        R6 ; [+73]
       71 GETUPVAL                         R5 2
       72 GETTABLEKS                       R5 R5 K1 ["createElement"]
       74 GETUPVAL                         R6 16
       75 DUPTABLE                         R7 K27 [{"backgroundStyle", "tag"}]
       76 GETUPVAL                         R8 17
       77 GETTABLEKS                       R8 R8 K28 ["Color"]
       79 GETTABLEKS                       R8 R8 K29 ["Shift"]
       81 GETTABLEKS                       R8 R8 K30 ["Shift_300"]
       83 SETTABLEKS                       R8 R7 K25 ["backgroundStyle"]
       85 NEWTABLE                         R8 4 0
       87 LOADB                            R9 1
       88 SETTABLEKS                       R9 R8 K31 ["size-full"]
       90 GETUPVAL                         R10 6
       91 GETTABLEKS                       R10 R10 K4 ["size"]
       93 GETUPVAL                         R11 18
       94 GETTABLEKS                       R11 R11 K32 ["XSmall"]
       96 JUMPIFNOTEQ                      R10 R11 ; [+2]
       98 LOADB                            R9 0 +1
       99 LOADB                            R9 1
      100 SETTABLEKS                       R9 R8 K33 ["radius-medium"]
      102 GETUPVAL                         R10 6
      103 GETTABLEKS                       R10 R10 K4 ["size"]
      105 GETUPVAL                         R11 18
      106 GETTABLEKS                       R11 R11 K32 ["XSmall"]
      108 JUMPIFEQ                         R10 R11 ; [+2]
      110 LOADB                            R9 0 +1
      111 LOADB                            R9 1
      112 SETTABLEKS                       R9 R8 K34 ["radius-small"]
      114 SETTABLEKS                       R8 R7 K26 ["tag"]
      116 DUPTABLE                         R8 K36 [{"Gradient"}]
      117 GETUPVAL                         R9 2
      118 GETTABLEKS                       R9 R9 K1 ["createElement"]
      120 LOADK                            R10 K37 ["UIGradient"]
      121 DUPTABLE                         R11 K41 [{["Color"], ["Transparency"], ["Rotation"] = 0}]
      122 GETIMPORT                        R12 K44 [ColorSequence.new]
      124 GETUPVAL                         R13 17
      125 GETTABLEKS                       R13 R13 K28 ["Color"]
      127 GETTABLEKS                       R13 R13 K29 ["Shift"]
      129 GETTABLEKS                       R13 R13 K30 ["Shift_300"]
      131 GETTABLEKS                       R13 R13 K45 ["Color3"]
      133 CALL                             R12 1 1
      134 SETTABLEKS                       R12 R11 K28 ["Color"]
      136 GETUPVAL                         R12 15
      137 SETTABLEKS                       R12 R11 K38 ["Transparency"]
      139 CALL                             R9 2 1
      140 SETTABLEKS                       R9 R8 K35 ["Gradient"]
      142 CALL                             R5 3 1
      143 JUMP                             ; [+1]
      144 LOADNIL                          R5
      145 SETTABLEKS                       R5 R4 K14 ["backgroundElement"]
      147 GETUPVAL                         R6 0
      148 GETUPVAL                         R7 1
      149 GETTABLEKS                       R7 R7 K46 ["Stacked"]
      151 JUMPIFNOTEQ                      R6 R7 ; [+3]
      153 GETUPVAL                         R5 19
      154 JUMP                             ; [+1]
      155 LOADNIL                          R5
      156 SETTABLEKS                       R5 R4 K15 ["trailingElement"]
      158 GETUPVAL                         R6 6
      159 GETTABLEKS                       R6 R6 K47 ["leadingIcon"]
      161 JUMPIFNOT                        R6 ; [+32]
      162 GETUPVAL                         R5 2
      163 GETTABLEKS                       R5 R5 K1 ["createElement"]
      165 GETUPVAL                         R6 16
      166 DUPTABLE                         R7 K49 [{["tag"] = "size-0-full auto-x row align-y-center"}]
      167 GETUPVAL                         R8 2
      168 GETTABLEKS                       R8 R8 K1 ["createElement"]
      170 GETUPVAL                         R9 20
      171 DUPTABLE                         R10 K52 [{"name", "style", "size"}]
      172 GETUPVAL                         R11 6
      173 GETTABLEKS                       R11 R11 K47 ["leadingIcon"]
      175 SETTABLEKS                       R11 R10 K50 ["name"]
      177 GETUPVAL                         R11 7
      178 GETTABLEKS                       R11 R11 K53 ["icon"]
      180 GETTABLEKS                       R11 R11 K51 ["style"]
      182 SETTABLEKS                       R11 R10 K51 ["style"]
      184 GETUPVAL                         R11 7
      185 GETTABLEKS                       R11 R11 K53 ["icon"]
      187 GETTABLEKS                       R11 R11 K4 ["size"]
      189 SETTABLEKS                       R11 R10 K4 ["size"]
      191 CALL                             R8 2 -1
      192 CALL                             R5 -1 1
      193 JUMP                             ; [+1]
      194 LOADNIL                          R5
      195 SETTABLEKS                       R5 R4 K16 ["leadingElement"]
      197 GETUPVAL                         R5 6
      198 GETTABLEKS                       R5 R5 K17 ["isDisabled"]
      200 SETTABLEKS                       R5 R4 K17 ["isDisabled"]
      202 LOADK                            R6 K54 ["%*--field"]
      203 GETUPVAL                         R8 6
      204 GETTABLEKS                       R8 R8 K18 ["testId"]
      206 NAMECALL                         R6 R6 K55 ["format"]
      208 CALL                             R6 2 1
      209 MOVE                             R5 R6
      210 SETTABLEKS                       R5 R4 K18 ["testId"]
      212 CALL                             R2 2 1
      213 JUMPIFNOT                        R1 ; [+31]
      214 GETUPVAL                         R3 2
      215 GETTABLEKS                       R3 R3 K1 ["createElement"]
      217 GETUPVAL                         R4 16
      218 DUPTABLE                         R5 K58 [{["Size"], ["tag"] = "row gap-xsmall auto-y align-y-center"}]
      219 GETIMPORT                        R6 K61 [UDim2.fromOffset]
      221 GETUPVAL                         R8 6
      222 GETTABLEKS                       R8 R8 K62 ["width"]
      224 GETTABLEKS                       R8 R8 K63 ["Offset"]
      226 GETUPVAL                         R9 21
      227 GETTABLEKS                       R9 R9 K63 ["Offset"]
      229 SUB                              R7 R8 R9
      230 LOADN                            R8 0
      231 CALL                             R6 2 1
      232 SETTABLEKS                       R6 R5 K56 ["Size"]
      234 DUPTABLE                         R6 K66 [{"InputField", "Controls"}]
      235 SETTABLEKS                       R2 R6 K64 ["InputField"]
      237 JUMPIFNOT                        R1 ; [+2]
      238 GETUPVAL                         R7 19
      239 JUMP                             ; [+1]
      240 LOADNIL                          R7
      241 SETTABLEKS                       R7 R6 K65 ["Controls"]
      243 CALL                             R3 3 1
      244 RETURN                           R3 1
      245 MOVE                             R3 R2
      246 RETURN                           R3 1

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
       15 CALL                             R5 2 1
       16 GETUPVAL                         R6 5
       17 GETTABLEKS                       R6 R6 K1 ["useState"]
       19 LOADB                            R7 0
       20 CALL                             R6 1 2
       21 GETUPVAL                         R8 5
       22 GETTABLEKS                       R8 R8 K2 ["useRef"]
       24 LOADNIL                          R9
       25 CALL                             R8 1 1
       26 LOADNIL                          R9
       27 LOADNIL                          R10
       28 LOADNIL                          R11
       29 LOADNIL                          R12
       30 GETUPVAL                         R13 5
       31 GETTABLEKS                       R13 R13 K1 ["useState"]
       33 LOADB                            R14 0
       34 CALL                             R13 1 2
       35 GETUPVAL                         R16 6
       36 GETTABLEKS                       R16 R16 K3 ["FoundationNumberInputInvalidError"]
       38 JUMPIFNOT                        R16 ; [+4]
       39 GETTABLEKS                       R16 R2 K4 ["hasError"]
       41 OR                               R15 R16 R13
       42 JUMP                             ; [+2]
       43 GETTABLEKS                       R15 R2 K4 ["hasError"]
       45 GETUPVAL                         R16 5
       46 GETTABLEKS                       R16 R16 K5 ["useCallback"]
       48 NEWCLOSURE                       R17 P0
       49 CAPTURE                          VAL R2
       50 NEWTABLE                         R18 0 2
       52 GETTABLEKS                       R19 R2 K6 ["minimum"]
       54 GETTABLEKS                       R20 R2 K7 ["maximum"]
       56 SETLIST                          R18 R19 2 [1]
       58 CALL                             R16 2 1
       59 GETUPVAL                         R17 5
       60 GETTABLEKS                       R17 R17 K5 ["useCallback"]
       62 NEWCLOSURE                       R18 P1
       63 CAPTURE                          VAL R2
       64 NEWTABLE                         R19 0 1
       66 GETTABLEKS                       R20 R2 K8 ["step"]
       68 SETLIST                          R19 R20 1 [1]
       70 CALL                             R17 2 1
       71 JUMPIF                           R6 ; [+159]
       72 GETUPVAL                         R18 6
       73 GETTABLEKS                       R18 R18 K9 ["FoundationNumberInputSpinboxRespectSnap"]
       75 JUMPIFNOT                        R18 ; [+99]
       76 GETTABLEKS                       R19 R2 K10 ["value"]
       78 GETTABLEKS                       R20 R2 K11 ["precision"]
       80 LOADN                            R22 10
       81 ORK                              R23 R20 K12 [0]
       82 POW                              R21 R22 R23
       83 MUL                              R24 R19 R21
       84 ADDK                             R23 R24 K13 [0.5]
       85 FASTCALL1                        MATH_FLOOR R23 ; [+2]
       86 GETIMPORT                        R22 K16 [math.floor]
       88 CALL                             R22 1 1
       89 DIV                              R18 R22 R21
       90 GETTABLEKS                       R21 R2 K10 ["value"]
       92 GETTABLEKS                       R22 R2 K8 ["step"]
       94 ADD                              R20 R21 R22
       95 GETTABLEKS                       R21 R2 K11 ["precision"]
       97 LOADN                            R23 10
       98 ORK                              R24 R21 K12 [0]
       99 POW                              R22 R23 R24
      100 MUL                              R25 R20 R22
      101 ADDK                             R24 R25 K13 [0.5]
      102 FASTCALL1                        MATH_FLOOR R24 ; [+2]
      103 GETIMPORT                        R23 K16 [math.floor]
      105 CALL                             R23 1 1
      106 DIV                              R19 R23 R22
      107 GETTABLEKS                       R22 R2 K10 ["value"]
      109 GETTABLEKS                       R23 R2 K8 ["step"]
      111 SUB                              R21 R22 R23
      112 GETTABLEKS                       R22 R2 K11 ["precision"]
      114 LOADN                            R24 10
      115 ORK                              R25 R22 K12 [0]
      116 POW                              R23 R24 R25
      117 MUL                              R26 R21 R23
      118 ADDK                             R25 R26 K13 [0.5]
      119 FASTCALL1                        MATH_FLOOR R25 ; [+2]
      120 GETIMPORT                        R24 K16 [math.floor]
      122 CALL                             R24 1 1
      123 DIV                              R20 R24 R23
      124 MOVE                             R22 R17
      125 GETTABLEKS                       R23 R2 K10 ["value"]
      127 GETIMPORT                        R24 K18 [math.ceil]
      129 CALL                             R22 2 1
      130 GETTABLEKS                       R23 R2 K11 ["precision"]
      132 LOADN                            R25 10
      133 ORK                              R26 R23 K12 [0]
      134 POW                              R24 R25 R26
      135 MUL                              R27 R22 R24
      136 ADDK                             R26 R27 K13 [0.5]
      137 FASTCALL1                        MATH_FLOOR R26 ; [+2]
      138 GETIMPORT                        R25 K16 [math.floor]
      140 CALL                             R25 1 1
      141 DIV                              R21 R25 R24
      142 MOVE                             R23 R17
      143 GETTABLEKS                       R24 R2 K10 ["value"]
      145 GETIMPORT                        R25 K16 [math.floor]
      147 CALL                             R23 2 1
      148 GETTABLEKS                       R24 R2 K11 ["precision"]
      150 LOADN                            R26 10
      151 ORK                              R27 R24 K12 [0]
      152 POW                              R25 R26 R27
      153 MUL                              R28 R23 R25
      154 ADDK                             R27 R28 K13 [0.5]
      155 FASTCALL1                        MATH_FLOOR R27 ; [+2]
      156 GETIMPORT                        R26 K16 [math.floor]
      158 CALL                             R26 1 1
      159 DIV                              R22 R26 R25
      160 JUMPIFEQ                         R18 R21 ; [+2]
      162 MOVE                             R19 R21
      163 JUMPIFEQ                         R18 R22 ; [+2]
      165 MOVE                             R20 R22
      166 MOVE                             R23 R16
      167 MOVE                             R24 R19
      168 CALL                             R23 1 1
      169 MOVE                             R11 R23
      170 MOVE                             R23 R16
      171 MOVE                             R24 R20
      172 CALL                             R23 1 1
      173 MOVE                             R12 R23
      174 JUMP                             ; [+40]
      175 MOVE                             R18 R16
      176 GETTABLEKS                       R21 R2 K10 ["value"]
      178 GETTABLEKS                       R22 R2 K8 ["step"]
      180 ADD                              R20 R21 R22
      181 GETTABLEKS                       R21 R2 K11 ["precision"]
      183 LOADN                            R23 10
      184 ORK                              R24 R21 K12 [0]
      185 POW                              R22 R23 R24
      186 MUL                              R25 R20 R22
      187 ADDK                             R24 R25 K13 [0.5]
      188 FASTCALL1                        MATH_FLOOR R24 ; [+2]
      189 GETIMPORT                        R23 K16 [math.floor]
      191 CALL                             R23 1 1
      192 DIV                              R19 R23 R22
      193 CALL                             R18 1 1
      194 MOVE                             R11 R18
      195 MOVE                             R18 R16
      196 GETTABLEKS                       R21 R2 K10 ["value"]
      198 GETTABLEKS                       R22 R2 K8 ["step"]
      200 SUB                              R20 R21 R22
      201 GETTABLEKS                       R21 R2 K11 ["precision"]
      203 LOADN                            R23 10
      204 ORK                              R24 R21 K12 [0]
      205 POW                              R22 R23 R24
      206 MUL                              R25 R20 R22
      207 ADDK                             R24 R25 K13 [0.5]
      208 FASTCALL1                        MATH_FLOOR R24 ; [+2]
      209 GETIMPORT                        R23 K16 [math.floor]
      211 CALL                             R23 1 1
      212 DIV                              R19 R23 R22
      213 CALL                             R18 1 1
      214 MOVE                             R12 R18
      215 GETTABLEKS                       R18 R2 K10 ["value"]
      217 GETTABLEKS                       R19 R2 K7 ["maximum"]
      219 JUMPIFEQ                         R18 R19 ; [+2]
      221 LOADB                            R9 0 +1
      222 LOADB                            R9 1
      223 GETTABLEKS                       R18 R2 K10 ["value"]
      225 GETTABLEKS                       R19 R2 K6 ["minimum"]
      227 JUMPIFEQ                         R18 R19 ; [+2]
      229 LOADB                            R10 0 +1
      230 LOADB                            R10 1
      231 GETTABLEKS                       R19 R2 K10 ["value"]
      233 JUMPIFNOT                        R19 ; [+15]
      234 GETTABLEKS                       R19 R2 K10 ["value"]
      236 GETTABLEKS                       R20 R2 K11 ["precision"]
      238 LOADN                            R22 10
      239 ORK                              R23 R20 K12 [0]
      240 POW                              R21 R22 R23
      241 MUL                              R24 R19 R21
      242 ADDK                             R23 R24 K13 [0.5]
      243 FASTCALL1                        MATH_FLOOR R23 ; [+2]
      244 GETIMPORT                        R22 K16 [math.floor]
      246 CALL                             R22 1 1
      247 DIV                              R18 R22 R21
      248 JUMP                             ; [+1]
      249 LOADN                            R18 0
      250 JUMPIFNOT                        R6 ; [+7]
      251 GETTABLEKS                       R20 R2 K10 ["value"]
      253 FASTCALL1                        TOSTRING R20 ; [+2]
      254 GETIMPORT                        R19 K20 [tostring]
      256 CALL                             R19 1 1
      257 JUMP                             ; [+4]
      258 GETTABLEKS                       R19 R2 K21 ["formatAsString"]
      260 MOVE                             R20 R18
      261 CALL                             R19 1 1
      262 GETTABLEKS                       R20 R2 K22 ["controlsVariant"]
      264 GETUPVAL                         R21 5
      265 GETTABLEKS                       R21 R21 K2 ["useRef"]
      267 MOVE                             R22 R19
      268 CALL                             R21 1 1
      269 GETTABLEKS                       R23 R2 K10 ["value"]
      271 FASTCALL1                        TOSTRING R23 ; [+2]
      272 GETIMPORT                        R22 K20 [tostring]
      274 CALL                             R22 1 1
      275 SETTABLEKS                       R22 R21 K23 ["current"]
      277 GETUPVAL                         R22 5
      278 GETTABLEKS                       R22 R22 K24 ["useMemo"]
      280 NEWCLOSURE                       R23 P2
      281 CAPTURE                          VAL R2
      282 CAPTURE                          VAL R16
      283 NEWTABLE                         R24 0 3
      285 GETTABLEKS                       R25 R2 K10 ["value"]
      287 GETTABLEKS                       R26 R2 K7 ["maximum"]
      289 GETTABLEKS                       R27 R2 K6 ["minimum"]
      291 SETLIST                          R24 R25 3 [1]
      293 CALL                             R22 2 1
      294 GETUPVAL                         R23 5
      295 GETTABLEKS                       R23 R23 K5 ["useCallback"]
      297 NEWCLOSURE                       R24 P3
      298 CAPTURE                          VAL R7
      299 CAPTURE                          UPVAL U6
      300 CAPTURE                          VAL R2
      301 NEWTABLE                         R25 0 2
      303 MOVE                             R26 R7
      304 GETTABLEKS                       R27 R2 K25 ["onFocusGained"]
      306 SETLIST                          R25 R26 2 [1]
      308 CALL                             R23 2 1
      309 GETUPVAL                         R24 5
      310 GETTABLEKS                       R24 R24 K5 ["useCallback"]
      312 NEWCLOSURE                       R25 P4
      313 CAPTURE                          VAL R7
      314 CAPTURE                          UPVAL U6
      315 CAPTURE                          VAL R14
      316 CAPTURE                          VAL R2
      317 NEWTABLE                         R26 0 7
      319 MOVE                             R27 R7
      320 GETTABLEKS                       R28 R2 K26 ["onChanged"]
      322 GETTABLEKS                       R29 R2 K27 ["onFocusLost"]
      324 GETTABLEKS                       R30 R2 K7 ["maximum"]
      326 GETTABLEKS                       R31 R2 K6 ["minimum"]
      328 GETTABLEKS                       R32 R2 K11 ["precision"]
      330 GETTABLEKS                       R33 R2 K10 ["value"]
      332 SETLIST                          R26 R27 7 [1]
      334 CALL                             R24 2 1
      335 GETUPVAL                         R25 5
      336 GETTABLEKS                       R25 R25 K5 ["useCallback"]
      338 NEWCLOSURE                       R26 P5
      339 CAPTURE                          VAL R6
      340 CAPTURE                          UPVAL U6
      341 CAPTURE                          VAL R14
      342 CAPTURE                          VAL R2
      343 NEWTABLE                         R27 0 2
      345 MOVE                             R28 R6
      346 GETTABLEKS                       R29 R2 K26 ["onChanged"]
      348 SETLIST                          R27 R28 2 [1]
      350 CALL                             R25 2 1
      351 GETUPVAL                         R26 5
      352 GETTABLEKS                       R26 R26 K5 ["useCallback"]
      354 NEWCLOSURE                       R27 P6
      355 CAPTURE                          VAL R2
      356 CAPTURE                          REF R9
      357 CAPTURE                          REF R11
      358 NEWTABLE                         R28 0 4
      360 GETTABLEKS                       R29 R2 K28 ["isDisabled"]
      362 MOVE                             R30 R9
      363 MOVE                             R31 R11
      364 GETTABLEKS                       R32 R2 K26 ["onChanged"]
      366 SETLIST                          R28 R29 4 [1]
      368 CALL                             R26 2 1
      369 GETUPVAL                         R27 5
      370 GETTABLEKS                       R27 R27 K5 ["useCallback"]
      372 NEWCLOSURE                       R28 P7
      373 CAPTURE                          VAL R2
      374 CAPTURE                          REF R10
      375 CAPTURE                          REF R12
      376 NEWTABLE                         R29 0 4
      378 GETTABLEKS                       R30 R2 K28 ["isDisabled"]
      380 MOVE                             R31 R10
      381 MOVE                             R32 R12
      382 GETTABLEKS                       R33 R2 K26 ["onChanged"]
      384 SETLIST                          R29 R30 4 [1]
      386 CALL                             R27 2 1
      387 GETUPVAL                         R28 5
      388 GETTABLEKS                       R28 R28 K29 ["createElement"]
      390 GETUPVAL                         R29 7
      391 DUPTABLE                         R30 K34 [{"variant", "size", "increment", "decrement", "testId"}]
      392 SETTABLEKS                       R20 R30 K30 ["variant"]
      394 GETTABLEKS                       R31 R2 K0 ["size"]
      396 SETTABLEKS                       R31 R30 K0 ["size"]
      398 DUPTABLE                         R31 K36 [{"isDisabled", "onClick"}]
      399 GETTABLEKS                       R33 R2 K28 ["isDisabled"]
      401 OR                               R32 R33 R9
      402 SETTABLEKS                       R32 R31 K28 ["isDisabled"]
      404 SETTABLEKS                       R26 R31 K35 ["onClick"]
      406 SETTABLEKS                       R31 R30 K31 ["increment"]
      408 DUPTABLE                         R31 K36 [{"isDisabled", "onClick"}]
      409 GETTABLEKS                       R33 R2 K28 ["isDisabled"]
      411 OR                               R32 R33 R10
      412 SETTABLEKS                       R32 R31 K28 ["isDisabled"]
      414 SETTABLEKS                       R27 R31 K35 ["onClick"]
      416 SETTABLEKS                       R31 R30 K32 ["decrement"]
      418 GETTABLEKS                       R31 R2 K33 ["testId"]
      420 SETTABLEKS                       R31 R30 K33 ["testId"]
      422 CALL                             R28 2 1
      423 GETUPVAL                         R29 5
      424 GETTABLEKS                       R29 R29 K24 ["useMemo"]
      426 NEWCLOSURE                       R30 P8
      427 CAPTURE                          VAL R20
      428 CAPTURE                          UPVAL U8
      429 CAPTURE                          VAL R5
      430 CAPTURE                          VAL R3
      431 NEWTABLE                         R31 0 2
      433 MOVE                             R32 R3
      434 MOVE                             R33 R20
      435 SETLIST                          R31 R32 2 [1]
      437 CALL                             R29 2 1
      438 GETUPVAL                         R30 5
      439 GETTABLEKS                       R30 R30 K5 ["useCallback"]
      441 NEWCLOSURE                       R31 P9
      442 CAPTURE                          VAL R2
      443 CAPTURE                          VAL R8
      444 NEWTABLE                         R32 0 1
      446 GETTABLEKS                       R33 R2 K37 ["isScrubbable"]
      448 SETLIST                          R32 R33 1 [1]
      450 CALL                             R30 2 1
      451 GETUPVAL                         R31 5
      452 GETTABLEKS                       R31 R31 K5 ["useCallback"]
      454 NEWCLOSURE                       R32 P10
      455 CAPTURE                          VAL R2
      456 CAPTURE                          VAL R8
      457 CAPTURE                          VAL R21
      458 NEWTABLE                         R33 0 2
      460 GETTABLEKS                       R34 R2 K37 ["isScrubbable"]
      462 GETTABLEKS                       R35 R2 K26 ["onChanged"]
      464 SETLIST                          R33 R34 2 [1]
      466 CALL                             R31 2 1
      467 GETUPVAL                         R32 5
      468 GETTABLEKS                       R32 R32 K5 ["useCallback"]
      470 NEWCLOSURE                       R33 P11
      471 CAPTURE                          VAL R2
      472 CAPTURE                          VAL R8
      473 NEWTABLE                         R34 0 1
      475 GETTABLEKS                       R35 R2 K37 ["isScrubbable"]
      477 SETLIST                          R34 R35 1 [1]
      479 CALL                             R32 2 1
      480 GETUPVAL                         R33 5
      481 GETTABLEKS                       R33 R33 K24 ["useMemo"]
      483 NEWCLOSURE                       R34 P12
      484 CAPTURE                          VAL R22
      485 NEWTABLE                         R35 0 1
      487 MOVE                             R36 R22
      488 SETLIST                          R35 R36 1 [1]
      490 CALL                             R33 2 1
      491 GETUPVAL                         R34 5
      492 GETTABLEKS                       R34 R34 K29 ["createElement"]
      494 GETUPVAL                         R35 9
      495 GETUPVAL                         R36 10
      496 MOVE                             R37 R2
      497 DUPTABLE                         R38 K45 [{"width", "ref", "hasError", "label", "size", "isRequired", "hint", "textBoxRef", "input"}]
      498 GETTABLEKS                       R39 R2 K38 ["width"]
      500 SETTABLEKS                       R39 R38 K38 ["width"]
      502 SETTABLEKS                       R1 R38 K39 ["ref"]
      504 SETTABLEKS                       R15 R38 K4 ["hasError"]
      506 GETTABLEKS                       R39 R2 K40 ["label"]
      508 SETTABLEKS                       R39 R38 K40 ["label"]
      510 GETUPVAL                         R39 11
      511 GETTABLEKS                       R40 R2 K0 ["size"]
      513 CALL                             R39 1 1
      514 SETTABLEKS                       R39 R38 K0 ["size"]
      516 GETTABLEKS                       R39 R2 K41 ["isRequired"]
      518 SETTABLEKS                       R39 R38 K41 ["isRequired"]
      520 GETTABLEKS                       R39 R2 K42 ["hint"]
      522 SETTABLEKS                       R39 R38 K42 ["hint"]
      524 GETUPVAL                         R40 6
      525 GETTABLEKS                       R40 R40 K46 ["FoundationNumberInputRefAndCallbacks"]
      527 JUMPIFNOT                        R40 ; [+3]
      528 GETTABLEKS                       R39 R2 K43 ["textBoxRef"]
      530 JUMP                             ; [+1]
      531 LOADNIL                          R39
      532 SETTABLEKS                       R39 R38 K43 ["textBoxRef"]
      534 NEWCLOSURE                       R39 P13
      535 CAPTURE                          VAL R20
      536 CAPTURE                          UPVAL U8
      537 CAPTURE                          UPVAL U5
      538 CAPTURE                          UPVAL U12
      539 CAPTURE                          VAL R19
      540 CAPTURE                          VAL R15
      541 CAPTURE                          VAL R2
      542 CAPTURE                          VAL R4
      543 CAPTURE                          VAL R25
      544 CAPTURE                          VAL R24
      545 CAPTURE                          VAL R23
      546 CAPTURE                          VAL R30
      547 CAPTURE                          VAL R31
      548 CAPTURE                          VAL R32
      549 CAPTURE                          UPVAL U6
      550 CAPTURE                          VAL R33
      551 CAPTURE                          UPVAL U13
      552 CAPTURE                          VAL R3
      553 CAPTURE                          UPVAL U14
      554 CAPTURE                          VAL R28
      555 CAPTURE                          UPVAL U15
      556 CAPTURE                          VAL R29
      557 SETTABLEKS                       R39 R38 K44 ["input"]
      559 CALL                             R36 2 -1
      560 CALL                             R34 -1 -1
      561 CLOSEUPVALS                      R9
      562 RETURN                           R34 -1

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
       20 GETTABLEKS                       R5 R5 K10 ["withDefaults"]
       22 CALL                             R4 1 1
       23 GETIMPORT                        R5 K6 [require]
       25 GETTABLEKS                       R6 R0 K9 ["Utility"]
       27 GETTABLEKS                       R6 R6 K11 ["withCommonProps"]
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
       53 GETTABLEKS                       R10 R3 K16 ["InternalTextInput"]
       55 CALL                             R9 1 1
       56 GETIMPORT                        R10 K6 [require]
       58 GETTABLEKS                       R11 R3 K17 ["InputField"]
       60 CALL                             R10 1 1
       61 GETIMPORT                        R11 K6 [require]
       63 GETTABLEKS                       R12 R3 K18 ["Icon"]
       65 CALL                             R11 1 1
       66 GETIMPORT                        R12 K6 [require]
       68 GETTABLEKS                       R13 R3 K19 ["View"]
       70 CALL                             R12 1 1
       71 GETIMPORT                        R13 K6 [require]
       73 GETTABLEKS                       R14 R0 K9 ["Utility"]
       75 GETTABLEKS                       R14 R14 K20 ["getInputTextSize"]
       77 CALL                             R13 1 1
       78 GETIMPORT                        R14 K6 [require]
       80 GETTABLEKS                       R15 R0 K21 ["Providers"]
       82 GETTABLEKS                       R15 R15 K22 ["Style"]
       84 GETTABLEKS                       R15 R15 K23 ["useTokens"]
       86 CALL                             R14 1 1
       87 GETIMPORT                        R15 K6 [require]
       89 GETTABLEKS                       R16 R3 K24 ["TextInput"]
       91 GETTABLEKS                       R16 R16 K25 ["useTextInputVariants"]
       93 CALL                             R15 1 1
       94 GETIMPORT                        R16 K6 [require]
       96 GETTABLEKS                       R17 R0 K9 ["Utility"]
       98 GETTABLEKS                       R17 R17 K26 ["Flags"]
      100 CALL                             R16 1 1
      101 GETIMPORT                        R17 K6 [require]
      103 GETTABLEKS                       R18 R3 K27 ["Types"]
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
      124 DUPCLOSURE                       R20 K30 [PROTO_0]
      125 DUPCLOSURE                       R21 K31 [PROTO_1]
      126 DUPTABLE                         R22 K50 [{["controlsVariant"], ["size"], ["minimum"] = -∞, ["maximum"] = ∞, ["step"] = 1, ["precision"] = 3, ["value"] = 0, ["formatAsString"], ["width"], ["isScruabble"] = False, ["testId"] = "--foundation-number-input"}]
      127 GETTABLEKS                       R23 R8 K51 ["Stacked"]
      129 SETTABLEKS                       R23 R22 K32 ["controlsVariant"]
      131 GETTABLEKS                       R23 R6 K52 ["Large"]
      133 SETTABLEKS                       R23 R22 K33 ["size"]
      135 SETTABLEKS                       R21 R22 K44 ["formatAsString"]
      137 GETIMPORT                        R23 K55 [UDim.new]
      139 LOADN                            R24 0
      140 LOADN                            R25 400
      141 CALL                             R23 2 1
      142 SETTABLEKS                       R23 R22 K45 ["width"]
      144 DUPCLOSURE                       R23 K56 [PROTO_16]
      145 CAPTURE                          VAL R4
      146 CAPTURE                          VAL R22
      147 CAPTURE                          VAL R14
      148 CAPTURE                          VAL R15
      149 CAPTURE                          VAL R19
      150 CAPTURE                          VAL R2
      151 CAPTURE                          VAL R16
      152 CAPTURE                          VAL R18
      153 CAPTURE                          VAL R8
      154 CAPTURE                          VAL R10
      155 CAPTURE                          VAL R5
      156 CAPTURE                          VAL R13
      157 CAPTURE                          VAL R9
      158 CAPTURE                          VAL R12
      159 CAPTURE                          VAL R6
      160 CAPTURE                          VAL R11
      161 GETTABLEKS                       R24 R2 K57 ["memo"]
      163 GETTABLEKS                       R25 R2 K58 ["forwardRef"]
      165 MOVE                             R26 R23
      166 CALL                             R25 1 -1
      167 CALL                             R24 -1 -1
      168 RETURN                           R24 -1
