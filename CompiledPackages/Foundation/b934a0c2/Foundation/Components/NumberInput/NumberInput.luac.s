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
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADB                            R1 0
        5 CALL                             R0 1 0
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R1 R2 K0 ["value"]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R2 R3 K1 ["minimum"]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R3 R4 K2 ["maximum"]
       15 FASTCALL                         MATH_CLAMP ; [+2]
       16 GETIMPORT                        R0 K5 [math.clamp]
       18 CALL                             R0 3 1
       19 GETUPVAL                         R2 2
       20 GETTABLEKS                       R1 R2 K6 ["onChanged"]
       22 GETUPVAL                         R4 2
       23 GETTABLEKS                       R3 R4 K7 ["precision"]
       25 LOADN                            R5 10
       26 ORK                              R6 R3 K8 [0]
       27 POW                              R4 R5 R6
       28 MUL                              R7 R0 R4
       29 ADDK                             R6 R7 K9 [0.5]
       30 FASTCALL1                        MATH_FLOOR R6 ; [+2]
       31 GETIMPORT                        R5 K11 [math.floor]
       33 CALL                             R5 1 1
       34 DIV                              R2 R5 R4
       35 CALL                             R1 1 0
       36 GETUPVAL                         R2 2
       37 GETTABLEKS                       R1 R2 K12 ["onFocusLost"]
       39 JUMPIFNOT                        R1 ; [+4]
       40 GETUPVAL                         R2 2
       41 GETTABLEKS                       R1 R2 K12 ["onFocusLost"]
       43 CALL                             R1 0 0
       44 RETURN                           R0 0

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
       21 CALL                             R2 1 0
       22 RETURN                           R0 0

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
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

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
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["FoundationDontCreateUIDDForNumberInput"]
        3 JUMPIF                           R2 ; [+5]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["isScrubbable"]
        7 JUMPIF                           R2 ; [+1]
        8 RETURN                           R0 0
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K2 ["FoundationNumberInputDraggingDeltaFix"]
       12 JUMPIFNOT                        R2 ; [+21]
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R3 R4 K3 ["current"]
       16 FASTCALL1                        TONUMBER R3 ; [+2]
       17 GETIMPORT                        R2 K5 [tonumber]
       19 CALL                             R2 1 1
       20 GETUPVAL                         R3 3
       21 JUMPIFNOT                        R3 ; [+15]
       22 JUMPIFNOT                        R2 ; [+14]
       23 GETUPVAL                         R3 3
       24 DUPTABLE                         R4 K8 [{"position", "value"}]
       25 GETTABLEKS                       R5 R1 K9 ["X"]
       27 SETTABLEKS                       R5 R4 K6 ["position"]
       29 SETTABLEKS                       R2 R4 K7 ["value"]
       31 SETTABLEKS                       R4 R3 K3 ["current"]
       33 RETURN                           R0 0
       34 GETUPVAL                         R2 4
       35 SETTABLEKS                       R1 R2 K3 ["current"]
       37 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["FoundationDontCreateUIDDForNumberInput"]
        3 JUMPIF                           R2 ; [+5]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["isScrubbable"]
        7 JUMPIF                           R2 ; [+1]
        8 RETURN                           R0 0
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K2 ["FoundationNumberInputDraggingDeltaFix"]
       12 JUMPIFNOT                        R2 ; [+54]
       13 GETUPVAL                         R2 2
       14 JUMPIFNOT                        R2 ; [+118]
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R2 R3 K3 ["current"]
       18 JUMPIFNOT                        R2 ; [+114]
       19 GETUPVAL                         R2 3
       20 GETUPVAL                         R5 2
       21 GETTABLEKS                       R4 R5 K3 ["current"]
       23 GETTABLEKS                       R3 R4 K4 ["value"]
       25 GETUPVAL                         R6 2
       26 GETTABLEKS                       R5 R6 K3 ["current"]
       28 GETTABLEKS                       R4 R5 K5 ["position"]
       30 GETTABLEKS                       R5 R1 K6 ["X"]
       32 GETUPVAL                         R7 1
       33 GETTABLEKS                       R6 R7 K7 ["step"]
       35 CALL                             R2 4 1
       36 MOVE                             R5 R2
       37 GETUPVAL                         R7 1
       38 GETTABLEKS                       R6 R7 K8 ["precision"]
       40 LOADN                            R8 10
       41 ORK                              R9 R6 K9 [0]
       42 POW                              R7 R8 R9
       43 MUL                              R10 R5 R7
       44 ADDK                             R9 R10 K10 [0.5]
       45 FASTCALL1                        MATH_FLOOR R9 ; [+2]
       46 GETIMPORT                        R8 K13 [math.floor]
       48 CALL                             R8 1 1
       49 DIV                              R4 R8 R7
       50 GETUPVAL                         R6 1
       51 GETTABLEKS                       R5 R6 K14 ["minimum"]
       53 GETUPVAL                         R7 1
       54 GETTABLEKS                       R6 R7 K15 ["maximum"]
       56 FASTCALL                         MATH_CLAMP ; [+2]
       57 GETIMPORT                        R3 K17 [math.clamp]
       59 CALL                             R3 3 1
       60 MOVE                             R2 R3
       61 GETUPVAL                         R4 1
       62 GETTABLEKS                       R3 R4 K18 ["onChanged"]
       64 MOVE                             R4 R2
       65 CALL                             R3 1 0
       66 RETURN                           R0 0
       67 GETUPVAL                         R3 4
       68 GETTABLEKS                       R2 R3 K3 ["current"]
       70 JUMPIFNOT                        R2 ; [+62]
       71 GETUPVAL                         R5 4
       72 GETTABLEKS                       R4 R5 K3 ["current"]
       74 SUB                              R3 R1 R4
       75 GETTABLEKS                       R2 R3 K6 ["X"]
       77 FASTCALL1                        MATH_ABS R2 ; [+3]
       78 MOVE                             R5 R2
       79 GETIMPORT                        R4 K20 [math.abs]
       81 CALL                             R4 1 1
       82 DIV                              R3 R2 R4
       83 JUMPIFEQ                         R3 R3 ; [+2]
       85 LOADN                            R3 0
       86 GETUPVAL                         R4 4
       87 SETTABLEKS                       R1 R4 K3 ["current"]
       89 GETUPVAL                         R6 5
       90 GETTABLEKS                       R5 R6 K3 ["current"]
       92 FASTCALL1                        TONUMBER R5 ; [+2]
       93 GETIMPORT                        R4 K22 [tonumber]
       95 CALL                             R4 1 1
       96 JUMPIFNOT                        R4 ; [+36]
       97 GETUPVAL                         R9 1
       98 GETTABLEKS                       R8 R9 K7 ["step"]
      100 MUL                              R7 R3 R8
      101 ADD                              R6 R4 R7
      102 GETUPVAL                         R8 1
      103 GETTABLEKS                       R7 R8 K8 ["precision"]
      105 LOADN                            R9 10
      106 ORK                              R10 R7 K9 [0]
      107 POW                              R8 R9 R10
      108 MUL                              R11 R6 R8
      109 ADDK                             R10 R11 K10 [0.5]
      110 FASTCALL1                        MATH_FLOOR R10 ; [+2]
      111 GETIMPORT                        R9 K13 [math.floor]
      113 CALL                             R9 1 1
      114 DIV                              R5 R9 R8
      115 GETUPVAL                         R9 1
      116 GETTABLEKS                       R8 R9 K14 ["minimum"]
      118 GETUPVAL                         R10 1
      119 GETTABLEKS                       R9 R10 K15 ["maximum"]
      121 FASTCALL3                        MATH_CLAMP R5 R8 R9
      123 MOVE                             R7 R5
      124 GETIMPORT                        R6 K17 [math.clamp]
      126 CALL                             R6 3 1
      127 MOVE                             R5 R6
      128 GETUPVAL                         R7 1
      129 GETTABLEKS                       R6 R7 K18 ["onChanged"]
      131 MOVE                             R7 R5
      132 CALL                             R6 1 0
      133 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["FoundationDontCreateUIDDForNumberInput"]
        3 JUMPIF                           R0 ; [+5]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["isScrubbable"]
        7 JUMPIF                           R0 ; [+1]
        8 RETURN                           R0 0
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R0 R1 K2 ["FoundationNumberInputDraggingDeltaFix"]
       12 JUMPIFNOT                        R0 ; [+11]
       13 GETUPVAL                         R0 2
       14 JUMPIFNOT                        R0 ; [+13]
       15 GETUPVAL                         R1 2
       16 GETTABLEKS                       R0 R1 K3 ["current"]
       18 JUMPIFNOT                        R0 ; [+9]
       19 GETUPVAL                         R0 2
       20 LOADNIL                          R1
       21 SETTABLEKS                       R1 R0 K3 ["current"]
       23 RETURN                           R0 0
       24 GETUPVAL                         R0 3
       25 LOADNIL                          R1
       26 SETTABLEKS                       R1 R0 K3 ["current"]
       28 RETURN                           R0 0

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
       12 DUPTABLE                         R4 K20 [{"text", "hasError", "size", "horizontalPadding", "onChanged", "onFocusLost", "onFocus", "onDragStarted", "onDrag", "onDragEnded", "onReturnPressed", "ref", "backgroundElement", "backgroundGradient", "trailingElement", "leadingElement", "isDisabled", "testId"}]
       13 GETUPVAL                         R5 4
       14 SETTABLEKS                       R5 R4 K2 ["text"]
       16 GETUPVAL                         R5 5
       17 SETTABLEKS                       R5 R4 K3 ["hasError"]
       19 GETUPVAL                         R6 6
       20 GETTABLEKS                       R5 R6 K4 ["size"]
       22 SETTABLEKS                       R5 R4 K4 ["size"]
       24 DUPTABLE                         R5 K22 [{"left"}]
       25 GETUPVAL                         R8 7
       26 GETTABLEKS                       R7 R8 K23 ["innerContainer"]
       28 GETTABLEKS                       R6 R7 K5 ["horizontalPadding"]
       30 SETTABLEKS                       R6 R5 K21 ["left"]
       32 SETTABLEKS                       R5 R4 K5 ["horizontalPadding"]
       34 GETUPVAL                         R5 8
       35 SETTABLEKS                       R5 R4 K6 ["onChanged"]
       37 GETUPVAL                         R5 9
       38 SETTABLEKS                       R5 R4 K7 ["onFocusLost"]
       40 GETUPVAL                         R5 10
       41 SETTABLEKS                       R5 R4 K8 ["onFocus"]
       43 GETUPVAL                         R7 11
       44 GETTABLEKS                       R6 R7 K24 ["FoundationDontCreateUIDDForNumberInput"]
       46 JUMPIFNOT                        R6 ; [+8]
       47 GETUPVAL                         R7 6
       48 GETTABLEKS                       R6 R7 K25 ["isScrubbable"]
       50 JUMPIFNOT                        R6 ; [+2]
       51 GETUPVAL                         R5 12
       52 JUMP                             ; [+3]
       53 LOADNIL                          R5
       54 JUMP                             ; [+1]
       55 GETUPVAL                         R5 12
       56 SETTABLEKS                       R5 R4 K9 ["onDragStarted"]
       58 GETUPVAL                         R7 11
       59 GETTABLEKS                       R6 R7 K24 ["FoundationDontCreateUIDDForNumberInput"]
       61 JUMPIFNOT                        R6 ; [+8]
       62 GETUPVAL                         R7 6
       63 GETTABLEKS                       R6 R7 K25 ["isScrubbable"]
       65 JUMPIFNOT                        R6 ; [+2]
       66 GETUPVAL                         R5 13
       67 JUMP                             ; [+3]
       68 LOADNIL                          R5
       69 JUMP                             ; [+1]
       70 GETUPVAL                         R5 13
       71 SETTABLEKS                       R5 R4 K10 ["onDrag"]
       73 GETUPVAL                         R7 11
       74 GETTABLEKS                       R6 R7 K24 ["FoundationDontCreateUIDDForNumberInput"]
       76 JUMPIFNOT                        R6 ; [+8]
       77 GETUPVAL                         R7 6
       78 GETTABLEKS                       R6 R7 K25 ["isScrubbable"]
       80 JUMPIFNOT                        R6 ; [+2]
       81 GETUPVAL                         R5 14
       82 JUMP                             ; [+3]
       83 LOADNIL                          R5
       84 JUMP                             ; [+1]
       85 GETUPVAL                         R5 14
       86 SETTABLEKS                       R5 R4 K11 ["onDragEnded"]
       88 GETUPVAL                         R6 6
       89 GETTABLEKS                       R5 R6 K12 ["onReturnPressed"]
       91 SETTABLEKS                       R5 R4 K12 ["onReturnPressed"]
       93 SETTABLEKS                       R0 R4 K13 ["ref"]
       95 GETUPVAL                         R7 11
       96 GETTABLEKS                       R6 R7 K26 ["FoundationNumberInputFixScrubbableBG"]
       98 JUMPIF                           R6 ; [+82]
       99 GETUPVAL                         R7 6
      100 GETTABLEKS                       R6 R7 K25 ["isScrubbable"]
      102 JUMPIFNOT                        R6 ; [+78]
      103 GETUPVAL                         R6 15
      104 JUMPIFNOT                        R6 ; [+76]
      105 GETUPVAL                         R6 2
      106 GETTABLEKS                       R5 R6 K1 ["createElement"]
      108 GETUPVAL                         R6 16
      109 DUPTABLE                         R7 K29 [{"backgroundStyle", "tag"}]
      110 GETUPVAL                         R11 17
      111 GETTABLEKS                       R10 R11 K30 ["Color"]
      113 GETTABLEKS                       R9 R10 K31 ["Shift"]
      115 GETTABLEKS                       R8 R9 K32 ["Shift_300"]
      117 SETTABLEKS                       R8 R7 K27 ["backgroundStyle"]
      119 NEWTABLE                         R8 4 0
      121 LOADB                            R9 1
      122 SETTABLEKS                       R9 R8 K33 ["size-full"]
      124 GETUPVAL                         R11 6
      125 GETTABLEKS                       R10 R11 K4 ["size"]
      127 GETUPVAL                         R12 18
      128 GETTABLEKS                       R11 R12 K34 ["XSmall"]
      130 JUMPIFNOTEQ                      R10 R11 ; [+2]
      132 LOADB                            R9 0 +1
      133 LOADB                            R9 1
      134 SETTABLEKS                       R9 R8 K35 ["radius-medium"]
      136 GETUPVAL                         R11 6
      137 GETTABLEKS                       R10 R11 K4 ["size"]
      139 GETUPVAL                         R12 18
      140 GETTABLEKS                       R11 R12 K34 ["XSmall"]
      142 JUMPIFEQ                         R10 R11 ; [+2]
      144 LOADB                            R9 0 +1
      145 LOADB                            R9 1
      146 SETTABLEKS                       R9 R8 K36 ["radius-small"]
      148 SETTABLEKS                       R8 R7 K28 ["tag"]
      150 DUPTABLE                         R8 K38 [{"Gradient"}]
      151 GETUPVAL                         R10 2
      152 GETTABLEKS                       R9 R10 K1 ["createElement"]
      154 LOADK                            R10 K39 ["UIGradient"]
      155 DUPTABLE                         R11 K42 [{"Color", "Transparency", "Rotation"}]
      156 GETIMPORT                        R12 K45 [ColorSequence.new]
      158 GETUPVAL                         R17 17
      159 GETTABLEKS                       R16 R17 K30 ["Color"]
      161 GETTABLEKS                       R15 R16 K31 ["Shift"]
      163 GETTABLEKS                       R14 R15 K32 ["Shift_300"]
      165 GETTABLEKS                       R13 R14 K46 ["Color3"]
      167 CALL                             R12 1 1
      168 SETTABLEKS                       R12 R11 K30 ["Color"]
      170 GETUPVAL                         R12 15
      171 SETTABLEKS                       R12 R11 K40 ["Transparency"]
      173 LOADN                            R12 0
      174 SETTABLEKS                       R12 R11 K41 ["Rotation"]
      176 CALL                             R9 2 1
      177 SETTABLEKS                       R9 R8 K37 ["Gradient"]
      179 CALL                             R5 3 1
      180 JUMP                             ; [+1]
      181 LOADNIL                          R5
      182 SETTABLEKS                       R5 R4 K14 ["backgroundElement"]
      184 GETUPVAL                         R7 11
      185 GETTABLEKS                       R6 R7 K26 ["FoundationNumberInputFixScrubbableBG"]
      187 JUMPIFNOT                        R6 ; [+33]
      188 GETUPVAL                         R7 6
      189 GETTABLEKS                       R6 R7 K25 ["isScrubbable"]
      191 JUMPIFNOT                        R6 ; [+29]
      192 GETUPVAL                         R6 15
      193 JUMPIFNOT                        R6 ; [+27]
      194 GETUPVAL                         R6 2
      195 GETTABLEKS                       R5 R6 K1 ["createElement"]
      197 LOADK                            R6 K39 ["UIGradient"]
      198 DUPTABLE                         R7 K42 [{"Color", "Transparency", "Rotation"}]
      199 GETIMPORT                        R8 K45 [ColorSequence.new]
      201 GETUPVAL                         R13 17
      202 GETTABLEKS                       R12 R13 K30 ["Color"]
      204 GETTABLEKS                       R11 R12 K31 ["Shift"]
      206 GETTABLEKS                       R10 R11 K32 ["Shift_300"]
      208 GETTABLEKS                       R9 R10 K46 ["Color3"]
      210 CALL                             R8 1 1
      211 SETTABLEKS                       R8 R7 K30 ["Color"]
      213 GETUPVAL                         R8 15
      214 SETTABLEKS                       R8 R7 K40 ["Transparency"]
      216 LOADN                            R8 0
      217 SETTABLEKS                       R8 R7 K41 ["Rotation"]
      219 CALL                             R5 2 1
      220 JUMP                             ; [+1]
      221 LOADNIL                          R5
      222 SETTABLEKS                       R5 R4 K15 ["backgroundGradient"]
      224 GETUPVAL                         R6 0
      225 GETUPVAL                         R8 1
      226 GETTABLEKS                       R7 R8 K47 ["Stacked"]
      228 JUMPIFNOTEQ                      R6 R7 ; [+3]
      230 GETUPVAL                         R5 19
      231 JUMP                             ; [+1]
      232 LOADNIL                          R5
      233 SETTABLEKS                       R5 R4 K16 ["trailingElement"]
      235 GETUPVAL                         R7 6
      236 GETTABLEKS                       R6 R7 K48 ["leadingIcon"]
      238 JUMPIFNOT                        R6 ; [+35]
      239 GETUPVAL                         R6 2
      240 GETTABLEKS                       R5 R6 K1 ["createElement"]
      242 GETUPVAL                         R6 16
      243 DUPTABLE                         R7 K49 [{"tag"}]
      244 LOADK                            R8 K50 ["size-0-full auto-x row align-y-center"]
      245 SETTABLEKS                       R8 R7 K28 ["tag"]
      247 GETUPVAL                         R9 2
      248 GETTABLEKS                       R8 R9 K1 ["createElement"]
      250 GETUPVAL                         R9 20
      251 DUPTABLE                         R10 K53 [{"name", "style", "size"}]
      252 GETUPVAL                         R12 6
      253 GETTABLEKS                       R11 R12 K48 ["leadingIcon"]
      255 SETTABLEKS                       R11 R10 K51 ["name"]
      257 GETUPVAL                         R13 7
      258 GETTABLEKS                       R12 R13 K54 ["icon"]
      260 GETTABLEKS                       R11 R12 K52 ["style"]
      262 SETTABLEKS                       R11 R10 K52 ["style"]
      264 GETUPVAL                         R13 7
      265 GETTABLEKS                       R12 R13 K54 ["icon"]
      267 GETTABLEKS                       R11 R12 K4 ["size"]
      269 SETTABLEKS                       R11 R10 K4 ["size"]
      271 CALL                             R8 2 -1
      272 CALL                             R5 -1 1
      273 JUMP                             ; [+1]
      274 LOADNIL                          R5
      275 SETTABLEKS                       R5 R4 K17 ["leadingElement"]
      277 GETUPVAL                         R6 6
      278 GETTABLEKS                       R5 R6 K18 ["isDisabled"]
      280 SETTABLEKS                       R5 R4 K18 ["isDisabled"]
      282 LOADK                            R6 K55 ["%*--field"]
      283 GETUPVAL                         R9 6
      284 GETTABLEKS                       R8 R9 K19 ["testId"]
      286 NAMECALL                         R6 R6 K56 ["format"]
      288 CALL                             R6 2 1
      289 MOVE                             R5 R6
      290 SETTABLEKS                       R5 R4 K19 ["testId"]
      292 CALL                             R2 2 1
      293 JUMPIFNOT                        R1 ; [+32]
      294 GETUPVAL                         R4 2
      295 GETTABLEKS                       R3 R4 K1 ["createElement"]
      297 GETUPVAL                         R4 16
      298 DUPTABLE                         R5 K58 [{"Size", "tag"}]
      299 GETIMPORT                        R6 K61 [UDim2.fromOffset]
      301 GETUPVAL                         R9 21
      302 GETTABLEKS                       R8 R9 K62 ["Offset"]
      304 GETUPVAL                         R10 22
      305 GETTABLEKS                       R9 R10 K62 ["Offset"]
      307 SUB                              R7 R8 R9
      308 LOADN                            R8 0
      309 CALL                             R6 2 1
      310 SETTABLEKS                       R6 R5 K57 ["Size"]
      312 LOADK                            R6 K63 ["row gap-xsmall auto-y align-y-center"]
      313 SETTABLEKS                       R6 R5 K28 ["tag"]
      315 DUPTABLE                         R6 K66 [{"InputField", "Controls"}]
      316 SETTABLEKS                       R2 R6 K64 ["InputField"]
      318 JUMPIFNOT                        R1 ; [+2]
      319 GETUPVAL                         R7 19
      320 JUMP                             ; [+1]
      321 LOADNIL                          R7
      322 SETTABLEKS                       R7 R6 K65 ["Controls"]
      324 CALL                             R3 3 1
      325 RETURN                           R3 1
      326 MOVE                             R3 R2
      327 RETURN                           R3 1

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
       16 GETUPVAL                         R7 5
       17 GETTABLEKS                       R6 R7 K1 ["useState"]
       19 LOADB                            R7 0
       20 CALL                             R6 1 2
       21 GETUPVAL                         R10 6
       22 GETTABLEKS                       R9 R10 K2 ["FoundationNumberInputDraggingDeltaFix"]
       24 JUMPIFNOT                        R9 ; [+2]
       25 LOADNIL                          R8
       26 JUMP                             ; [+5]
       27 GETUPVAL                         R9 5
       28 GETTABLEKS                       R8 R9 K3 ["useRef"]
       30 LOADNIL                          R9
       31 CALL                             R8 1 1
       32 GETUPVAL                         R11 6
       33 GETTABLEKS                       R10 R11 K2 ["FoundationNumberInputDraggingDeltaFix"]
       35 JUMPIFNOT                        R10 ; [+6]
       36 GETUPVAL                         R10 5
       37 GETTABLEKS                       R9 R10 K3 ["useRef"]
       39 LOADNIL                          R10
       40 CALL                             R9 1 1
       41 JUMP                             ; [+1]
       42 LOADNIL                          R9
       43 LOADNIL                          R10
       44 LOADNIL                          R11
       45 LOADNIL                          R12
       46 LOADNIL                          R13
       47 GETUPVAL                         R15 5
       48 GETTABLEKS                       R14 R15 K1 ["useState"]
       50 LOADB                            R15 0
       51 CALL                             R14 1 2
       52 GETTABLEKS                       R17 R2 K4 ["hasError"]
       54 OR                               R16 R17 R14
       55 GETUPVAL                         R18 5
       56 GETTABLEKS                       R17 R18 K5 ["useCallback"]
       58 NEWCLOSURE                       R18 P0
       59 CAPTURE                          VAL R2
       60 NEWTABLE                         R19 0 2
       62 GETTABLEKS                       R20 R2 K6 ["minimum"]
       64 GETTABLEKS                       R21 R2 K7 ["maximum"]
       66 SETLIST                          R19 R20 2 [1]
       68 CALL                             R17 2 1
       69 GETUPVAL                         R19 5
       70 GETTABLEKS                       R18 R19 K5 ["useCallback"]
       72 NEWCLOSURE                       R19 P1
       73 CAPTURE                          VAL R2
       74 NEWTABLE                         R20 0 1
       76 GETTABLEKS                       R21 R2 K8 ["step"]
       78 SETLIST                          R20 R21 1 [1]
       80 CALL                             R18 2 1
       81 JUMPIF                           R6 ; [+114]
       82 GETTABLEKS                       R20 R2 K9 ["value"]
       84 GETTABLEKS                       R21 R2 K10 ["precision"]
       86 LOADN                            R23 10
       87 ORK                              R24 R21 K11 [0]
       88 POW                              R22 R23 R24
       89 MUL                              R25 R20 R22
       90 ADDK                             R24 R25 K12 [0.5]
       91 FASTCALL1                        MATH_FLOOR R24 ; [+2]
       92 GETIMPORT                        R23 K15 [math.floor]
       94 CALL                             R23 1 1
       95 DIV                              R19 R23 R22
       96 GETTABLEKS                       R22 R2 K9 ["value"]
       98 GETTABLEKS                       R23 R2 K8 ["step"]
      100 ADD                              R21 R22 R23
      101 GETTABLEKS                       R22 R2 K10 ["precision"]
      103 LOADN                            R24 10
      104 ORK                              R25 R22 K11 [0]
      105 POW                              R23 R24 R25
      106 MUL                              R26 R21 R23
      107 ADDK                             R25 R26 K12 [0.5]
      108 FASTCALL1                        MATH_FLOOR R25 ; [+2]
      109 GETIMPORT                        R24 K15 [math.floor]
      111 CALL                             R24 1 1
      112 DIV                              R20 R24 R23
      113 GETTABLEKS                       R23 R2 K9 ["value"]
      115 GETTABLEKS                       R24 R2 K8 ["step"]
      117 SUB                              R22 R23 R24
      118 GETTABLEKS                       R23 R2 K10 ["precision"]
      120 LOADN                            R25 10
      121 ORK                              R26 R23 K11 [0]
      122 POW                              R24 R25 R26
      123 MUL                              R27 R22 R24
      124 ADDK                             R26 R27 K12 [0.5]
      125 FASTCALL1                        MATH_FLOOR R26 ; [+2]
      126 GETIMPORT                        R25 K15 [math.floor]
      128 CALL                             R25 1 1
      129 DIV                              R21 R25 R24
      130 MOVE                             R23 R18
      131 GETTABLEKS                       R24 R2 K9 ["value"]
      133 GETIMPORT                        R25 K17 [math.ceil]
      135 CALL                             R23 2 1
      136 GETTABLEKS                       R24 R2 K10 ["precision"]
      138 LOADN                            R26 10
      139 ORK                              R27 R24 K11 [0]
      140 POW                              R25 R26 R27
      141 MUL                              R28 R23 R25
      142 ADDK                             R27 R28 K12 [0.5]
      143 FASTCALL1                        MATH_FLOOR R27 ; [+2]
      144 GETIMPORT                        R26 K15 [math.floor]
      146 CALL                             R26 1 1
      147 DIV                              R22 R26 R25
      148 MOVE                             R24 R18
      149 GETTABLEKS                       R25 R2 K9 ["value"]
      151 GETIMPORT                        R26 K15 [math.floor]
      153 CALL                             R24 2 1
      154 GETTABLEKS                       R25 R2 K10 ["precision"]
      156 LOADN                            R27 10
      157 ORK                              R28 R25 K11 [0]
      158 POW                              R26 R27 R28
      159 MUL                              R29 R24 R26
      160 ADDK                             R28 R29 K12 [0.5]
      161 FASTCALL1                        MATH_FLOOR R28 ; [+2]
      162 GETIMPORT                        R27 K15 [math.floor]
      164 CALL                             R27 1 1
      165 DIV                              R23 R27 R26
      166 JUMPIFEQ                         R19 R22 ; [+2]
      168 MOVE                             R20 R22
      169 JUMPIFEQ                         R19 R23 ; [+2]
      171 MOVE                             R21 R23
      172 MOVE                             R24 R17
      173 MOVE                             R25 R20
      174 CALL                             R24 1 1
      175 MOVE                             R12 R24
      176 MOVE                             R24 R17
      177 MOVE                             R25 R21
      178 CALL                             R24 1 1
      179 MOVE                             R13 R24
      180 GETTABLEKS                       R24 R2 K9 ["value"]
      182 GETTABLEKS                       R25 R2 K7 ["maximum"]
      184 JUMPIFEQ                         R24 R25 ; [+2]
      186 LOADB                            R10 0 +1
      187 LOADB                            R10 1
      188 GETTABLEKS                       R24 R2 K9 ["value"]
      190 GETTABLEKS                       R25 R2 K6 ["minimum"]
      192 JUMPIFEQ                         R24 R25 ; [+2]
      194 LOADB                            R11 0 +1
      195 LOADB                            R11 1
      196 GETTABLEKS                       R20 R2 K9 ["value"]
      198 JUMPIFNOT                        R20 ; [+15]
      199 GETTABLEKS                       R20 R2 K9 ["value"]
      201 GETTABLEKS                       R21 R2 K10 ["precision"]
      203 LOADN                            R23 10
      204 ORK                              R24 R21 K11 [0]
      205 POW                              R22 R23 R24
      206 MUL                              R25 R20 R22
      207 ADDK                             R24 R25 K12 [0.5]
      208 FASTCALL1                        MATH_FLOOR R24 ; [+2]
      209 GETIMPORT                        R23 K15 [math.floor]
      211 CALL                             R23 1 1
      212 DIV                              R19 R23 R22
      213 JUMP                             ; [+1]
      214 LOADN                            R19 0
      215 JUMPIFNOT                        R6 ; [+7]
      216 GETTABLEKS                       R21 R2 K9 ["value"]
      218 FASTCALL1                        TOSTRING R21 ; [+2]
      219 GETIMPORT                        R20 K19 [tostring]
      221 CALL                             R20 1 1
      222 JUMP                             ; [+4]
      223 GETTABLEKS                       R20 R2 K20 ["formatAsString"]
      225 MOVE                             R21 R19
      226 CALL                             R20 1 1
      227 GETTABLEKS                       R21 R2 K21 ["controlsVariant"]
      229 GETUPVAL                         R23 5
      230 GETTABLEKS                       R22 R23 K3 ["useRef"]
      232 MOVE                             R23 R20
      233 CALL                             R22 1 1
      234 GETTABLEKS                       R24 R2 K9 ["value"]
      236 FASTCALL1                        TOSTRING R24 ; [+2]
      237 GETIMPORT                        R23 K19 [tostring]
      239 CALL                             R23 1 1
      240 SETTABLEKS                       R23 R22 K22 ["current"]
      242 GETUPVAL                         R25 6
      243 GETTABLEKS                       R24 R25 K23 ["FoundationNumberInputTokenBasedWidth"]
      245 JUMPIFNOT                        R24 ; [+3]
      246 GETTABLEKS                       R24 R2 K24 ["width"]
      248 JUMPIFNOT                        R24 ; [+3]
      249 GETTABLEKS                       R23 R2 K24 ["width"]
      251 JUMP                             ; [+8]
      252 GETIMPORT                        R23 K27 [UDim.new]
      254 LOADN                            R24 0
      255 GETTABLEKS                       R26 R5 K28 ["container"]
      257 GETTABLEKS                       R25 R26 K24 ["width"]
      259 CALL                             R23 2 1
      260 GETUPVAL                         R25 5
      261 GETTABLEKS                       R24 R25 K29 ["useMemo"]
      263 NEWCLOSURE                       R25 P2
      264 CAPTURE                          VAL R2
      265 CAPTURE                          VAL R17
      266 NEWTABLE                         R26 0 3
      268 GETTABLEKS                       R27 R2 K9 ["value"]
      270 GETTABLEKS                       R28 R2 K7 ["maximum"]
      272 GETTABLEKS                       R29 R2 K6 ["minimum"]
      274 SETLIST                          R26 R27 3 [1]
      276 CALL                             R24 2 1
      277 GETUPVAL                         R26 5
      278 GETTABLEKS                       R25 R26 K5 ["useCallback"]
      280 NEWCLOSURE                       R26 P3
      281 CAPTURE                          VAL R7
      282 CAPTURE                          VAL R2
      283 NEWTABLE                         R27 0 2
      285 MOVE                             R28 R7
      286 GETTABLEKS                       R29 R2 K30 ["onFocusGained"]
      288 SETLIST                          R27 R28 2 [1]
      290 CALL                             R25 2 1
      291 GETUPVAL                         R27 5
      292 GETTABLEKS                       R26 R27 K5 ["useCallback"]
      294 NEWCLOSURE                       R27 P4
      295 CAPTURE                          VAL R7
      296 CAPTURE                          VAL R15
      297 CAPTURE                          VAL R2
      298 NEWTABLE                         R28 0 7
      300 MOVE                             R29 R7
      301 GETTABLEKS                       R30 R2 K31 ["onChanged"]
      303 GETTABLEKS                       R31 R2 K32 ["onFocusLost"]
      305 GETTABLEKS                       R32 R2 K7 ["maximum"]
      307 GETTABLEKS                       R33 R2 K6 ["minimum"]
      309 GETTABLEKS                       R34 R2 K10 ["precision"]
      311 GETTABLEKS                       R35 R2 K9 ["value"]
      313 SETLIST                          R28 R29 7 [1]
      315 CALL                             R26 2 1
      316 GETUPVAL                         R28 5
      317 GETTABLEKS                       R27 R28 K5 ["useCallback"]
      319 NEWCLOSURE                       R28 P5
      320 CAPTURE                          VAL R6
      321 CAPTURE                          VAL R15
      322 CAPTURE                          VAL R2
      323 NEWTABLE                         R29 0 2
      325 MOVE                             R30 R6
      326 GETTABLEKS                       R31 R2 K31 ["onChanged"]
      328 SETLIST                          R29 R30 2 [1]
      330 CALL                             R27 2 1
      331 GETUPVAL                         R29 5
      332 GETTABLEKS                       R28 R29 K5 ["useCallback"]
      334 NEWCLOSURE                       R29 P6
      335 CAPTURE                          VAL R2
      336 CAPTURE                          REF R10
      337 CAPTURE                          REF R12
      338 NEWTABLE                         R30 0 4
      340 GETTABLEKS                       R31 R2 K33 ["isDisabled"]
      342 MOVE                             R32 R10
      343 MOVE                             R33 R12
      344 GETTABLEKS                       R34 R2 K31 ["onChanged"]
      346 SETLIST                          R30 R31 4 [1]
      348 CALL                             R28 2 1
      349 GETUPVAL                         R30 5
      350 GETTABLEKS                       R29 R30 K5 ["useCallback"]
      352 NEWCLOSURE                       R30 P7
      353 CAPTURE                          VAL R2
      354 CAPTURE                          REF R11
      355 CAPTURE                          REF R13
      356 NEWTABLE                         R31 0 4
      358 GETTABLEKS                       R32 R2 K33 ["isDisabled"]
      360 MOVE                             R33 R11
      361 MOVE                             R34 R13
      362 GETTABLEKS                       R35 R2 K31 ["onChanged"]
      364 SETLIST                          R31 R32 4 [1]
      366 CALL                             R29 2 1
      367 GETUPVAL                         R31 5
      368 GETTABLEKS                       R30 R31 K34 ["createElement"]
      370 GETUPVAL                         R31 7
      371 DUPTABLE                         R32 K39 [{"variant", "size", "increment", "decrement", "testId"}]
      372 SETTABLEKS                       R21 R32 K35 ["variant"]
      374 GETTABLEKS                       R33 R2 K0 ["size"]
      376 SETTABLEKS                       R33 R32 K0 ["size"]
      378 DUPTABLE                         R33 K41 [{"isDisabled", "onClick"}]
      379 GETTABLEKS                       R35 R2 K33 ["isDisabled"]
      381 OR                               R34 R35 R10
      382 SETTABLEKS                       R34 R33 K33 ["isDisabled"]
      384 SETTABLEKS                       R28 R33 K40 ["onClick"]
      386 SETTABLEKS                       R33 R32 K36 ["increment"]
      388 DUPTABLE                         R33 K41 [{"isDisabled", "onClick"}]
      389 GETTABLEKS                       R35 R2 K33 ["isDisabled"]
      391 OR                               R34 R35 R11
      392 SETTABLEKS                       R34 R33 K33 ["isDisabled"]
      394 SETTABLEKS                       R29 R33 K40 ["onClick"]
      396 SETTABLEKS                       R33 R32 K37 ["decrement"]
      398 GETTABLEKS                       R33 R2 K38 ["testId"]
      400 SETTABLEKS                       R33 R32 K38 ["testId"]
      402 CALL                             R30 2 1
      403 GETUPVAL                         R32 5
      404 GETTABLEKS                       R31 R32 K29 ["useMemo"]
      406 NEWCLOSURE                       R32 P8
      407 CAPTURE                          VAL R21
      408 CAPTURE                          UPVAL U8
      409 CAPTURE                          VAL R5
      410 CAPTURE                          VAL R3
      411 NEWTABLE                         R33 0 2
      413 MOVE                             R34 R3
      414 MOVE                             R35 R21
      415 SETLIST                          R33 R34 2 [1]
      417 CALL                             R31 2 1
      418 GETUPVAL                         R33 5
      419 GETTABLEKS                       R32 R33 K5 ["useCallback"]
      421 NEWCLOSURE                       R33 P9
      422 CAPTURE                          UPVAL U6
      423 CAPTURE                          VAL R2
      424 CAPTURE                          VAL R22
      425 CAPTURE                          VAL R9
      426 CAPTURE                          VAL R8
      427 NEWTABLE                         R34 0 1
      429 GETTABLEKS                       R35 R2 K42 ["isScrubbable"]
      431 SETLIST                          R34 R35 1 [1]
      433 CALL                             R32 2 1
      434 GETUPVAL                         R34 5
      435 GETTABLEKS                       R33 R34 K5 ["useCallback"]
      437 NEWCLOSURE                       R34 P10
      438 CAPTURE                          UPVAL U6
      439 CAPTURE                          VAL R2
      440 CAPTURE                          VAL R9
      441 CAPTURE                          UPVAL U9
      442 CAPTURE                          VAL R8
      443 CAPTURE                          VAL R22
      444 NEWTABLE                         R35 0 2
      446 GETTABLEKS                       R36 R2 K42 ["isScrubbable"]
      448 GETTABLEKS                       R37 R2 K31 ["onChanged"]
      450 SETLIST                          R35 R36 2 [1]
      452 CALL                             R33 2 1
      453 GETUPVAL                         R35 5
      454 GETTABLEKS                       R34 R35 K5 ["useCallback"]
      456 NEWCLOSURE                       R35 P11
      457 CAPTURE                          UPVAL U6
      458 CAPTURE                          VAL R2
      459 CAPTURE                          VAL R9
      460 CAPTURE                          VAL R8
      461 NEWTABLE                         R36 0 1
      463 GETTABLEKS                       R37 R2 K42 ["isScrubbable"]
      465 SETLIST                          R36 R37 1 [1]
      467 CALL                             R34 2 1
      468 GETUPVAL                         R37 6
      469 GETTABLEKS                       R36 R37 K43 ["FoundationNumberInputFixScrubbableBG"]
      471 JUMPIFNOT                        R36 ; [+9]
      472 GETTABLEKS                       R38 R3 K44 ["Color"]
      474 GETTABLEKS                       R37 R38 K45 ["Shift"]
      476 GETTABLEKS                       R36 R37 K46 ["Shift_300"]
      478 GETTABLEKS                       R35 R36 K47 ["Transparency"]
      480 JUMP                             ; [+1]
      481 LOADN                            R35 0
      482 GETUPVAL                         R38 6
      483 GETTABLEKS                       R37 R38 K43 ["FoundationNumberInputFixScrubbableBG"]
      485 JUMPIFNOT                        R37 ; [+9]
      486 GETTABLEKS                       R39 R3 K44 ["Color"]
      488 GETTABLEKS                       R38 R39 K45 ["Shift"]
      490 GETTABLEKS                       R37 R38 K48 ["Shift_100"]
      492 GETTABLEKS                       R36 R37 K47 ["Transparency"]
      494 JUMP                             ; [+1]
      495 LOADN                            R36 1
      496 GETUPVAL                         R38 5
      497 GETTABLEKS                       R37 R38 K29 ["useMemo"]
      499 NEWCLOSURE                       R38 P12
      500 CAPTURE                          VAL R24
      501 CAPTURE                          VAL R36
      502 CAPTURE                          VAL R35
      503 NEWTABLE                         R39 0 3
      505 MOVE                             R40 R24
      506 MOVE                             R41 R35
      507 MOVE                             R42 R36
      508 SETLIST                          R39 R40 3 [1]
      510 CALL                             R37 2 1
      511 GETUPVAL                         R39 5
      512 GETTABLEKS                       R38 R39 K34 ["createElement"]
      514 GETUPVAL                         R39 10
      515 GETUPVAL                         R40 11
      516 MOVE                             R41 R2
      517 DUPTABLE                         R42 K55 [{"width", "ref", "hasError", "label", "size", "isRequired", "hint", "textBoxRef", "input"}]
      518 SETTABLEKS                       R23 R42 K24 ["width"]
      520 SETTABLEKS                       R1 R42 K49 ["ref"]
      522 SETTABLEKS                       R16 R42 K4 ["hasError"]
      524 GETTABLEKS                       R43 R2 K50 ["label"]
      526 SETTABLEKS                       R43 R42 K50 ["label"]
      528 GETUPVAL                         R43 12
      529 GETTABLEKS                       R44 R2 K0 ["size"]
      531 CALL                             R43 1 1
      532 SETTABLEKS                       R43 R42 K0 ["size"]
      534 GETTABLEKS                       R43 R2 K51 ["isRequired"]
      536 SETTABLEKS                       R43 R42 K51 ["isRequired"]
      538 GETTABLEKS                       R43 R2 K52 ["hint"]
      540 SETTABLEKS                       R43 R42 K52 ["hint"]
      542 GETTABLEKS                       R43 R2 K53 ["textBoxRef"]
      544 SETTABLEKS                       R43 R42 K53 ["textBoxRef"]
      546 NEWCLOSURE                       R43 P13
      547 CAPTURE                          VAL R21
      548 CAPTURE                          UPVAL U8
      549 CAPTURE                          UPVAL U5
      550 CAPTURE                          UPVAL U13
      551 CAPTURE                          VAL R20
      552 CAPTURE                          VAL R16
      553 CAPTURE                          VAL R2
      554 CAPTURE                          VAL R4
      555 CAPTURE                          VAL R27
      556 CAPTURE                          VAL R26
      557 CAPTURE                          VAL R25
      558 CAPTURE                          UPVAL U6
      559 CAPTURE                          VAL R32
      560 CAPTURE                          VAL R33
      561 CAPTURE                          VAL R34
      562 CAPTURE                          VAL R37
      563 CAPTURE                          UPVAL U14
      564 CAPTURE                          VAL R3
      565 CAPTURE                          UPVAL U15
      566 CAPTURE                          VAL R30
      567 CAPTURE                          UPVAL U16
      568 CAPTURE                          VAL R23
      569 CAPTURE                          VAL R31
      570 SETTABLEKS                       R43 R42 K54 ["input"]
      572 CALL                             R40 2 -1
      573 CALL                             R38 -1 -1
      574 CLOSEUPVALS                      R10
      575 RETURN                           R38 -1

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
       53 GETTABLEKS                       R11 R0 K9 ["Utility"]
       55 GETTABLEKS                       R10 R11 K16 ["Flags"]
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
      185 CAPTURE                          VAL R2
      186 CAPTURE                          VAL R9
      187 CAPTURE                          VAL R18
      188 CAPTURE                          VAL R8
      189 CAPTURE                          VAL R20
      190 CAPTURE                          VAL R11
      191 CAPTURE                          VAL R4
      192 CAPTURE                          VAL R15
      193 CAPTURE                          VAL R12
      194 CAPTURE                          VAL R14
      195 CAPTURE                          VAL R6
      196 CAPTURE                          VAL R10
      197 GETTABLEKS                       R25 R2 K55 ["memo"]
      199 GETTABLEKS                       R26 R2 K56 ["forwardRef"]
      201 MOVE                             R27 R24
      202 CALL                             R26 1 -1
      203 CALL                             R25 -1 -1
      204 RETURN                           R25 -1
