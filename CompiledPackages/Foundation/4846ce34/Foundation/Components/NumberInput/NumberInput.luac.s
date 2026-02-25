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
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["Split"]
        4 JUMPIFEQ                         R2 R3 ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R2 R3 K1 ["createElement"]
       11 GETUPVAL                         R3 3
       12 DUPTABLE                         R4 K19 [{"text", "hasError", "size", "horizontalPadding", "onChanged", "onFocusLost", "onFocus", "onDragStarted", "onDrag", "onDragEnded", "onReturnPressed", "ref", "backgroundElement", "trailingElement", "leadingElement", "isDisabled", "testId"}]
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
       43 GETUPVAL                         R7 11
       44 GETTABLEKS                       R6 R7 K23 ["FoundationDontCreateUIDDForNumberInput"]
       46 JUMPIFNOT                        R6 ; [+8]
       47 GETUPVAL                         R7 6
       48 GETTABLEKS                       R6 R7 K24 ["isScrubbable"]
       50 JUMPIFNOT                        R6 ; [+2]
       51 GETUPVAL                         R5 12
       52 JUMP                             ; [+3]
       53 LOADNIL                          R5
       54 JUMP                             ; [+1]
       55 GETUPVAL                         R5 12
       56 SETTABLEKS                       R5 R4 K9 ["onDragStarted"]
       58 GETUPVAL                         R7 11
       59 GETTABLEKS                       R6 R7 K23 ["FoundationDontCreateUIDDForNumberInput"]
       61 JUMPIFNOT                        R6 ; [+8]
       62 GETUPVAL                         R7 6
       63 GETTABLEKS                       R6 R7 K24 ["isScrubbable"]
       65 JUMPIFNOT                        R6 ; [+2]
       66 GETUPVAL                         R5 13
       67 JUMP                             ; [+3]
       68 LOADNIL                          R5
       69 JUMP                             ; [+1]
       70 GETUPVAL                         R5 13
       71 SETTABLEKS                       R5 R4 K10 ["onDrag"]
       73 GETUPVAL                         R7 11
       74 GETTABLEKS                       R6 R7 K23 ["FoundationDontCreateUIDDForNumberInput"]
       76 JUMPIFNOT                        R6 ; [+8]
       77 GETUPVAL                         R7 6
       78 GETTABLEKS                       R6 R7 K24 ["isScrubbable"]
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
       95 GETUPVAL                         R7 6
       96 GETTABLEKS                       R6 R7 K24 ["isScrubbable"]
       98 JUMPIFNOT                        R6 ; [+78]
       99 GETUPVAL                         R6 15
      100 JUMPIFNOT                        R6 ; [+76]
      101 GETUPVAL                         R6 2
      102 GETTABLEKS                       R5 R6 K1 ["createElement"]
      104 GETUPVAL                         R6 16
      105 DUPTABLE                         R7 K27 [{"backgroundStyle", "tag"}]
      106 GETUPVAL                         R11 17
      107 GETTABLEKS                       R10 R11 K28 ["Color"]
      109 GETTABLEKS                       R9 R10 K29 ["Shift"]
      111 GETTABLEKS                       R8 R9 K30 ["Shift_300"]
      113 SETTABLEKS                       R8 R7 K25 ["backgroundStyle"]
      115 NEWTABLE                         R8 4 0
      117 LOADB                            R9 1
      118 SETTABLEKS                       R9 R8 K31 ["size-full"]
      120 GETUPVAL                         R11 6
      121 GETTABLEKS                       R10 R11 K4 ["size"]
      123 GETUPVAL                         R12 18
      124 GETTABLEKS                       R11 R12 K32 ["XSmall"]
      126 JUMPIFNOTEQ                      R10 R11 ; [+2]
      128 LOADB                            R9 0 +1
      129 LOADB                            R9 1
      130 SETTABLEKS                       R9 R8 K33 ["radius-medium"]
      132 GETUPVAL                         R11 6
      133 GETTABLEKS                       R10 R11 K4 ["size"]
      135 GETUPVAL                         R12 18
      136 GETTABLEKS                       R11 R12 K32 ["XSmall"]
      138 JUMPIFEQ                         R10 R11 ; [+2]
      140 LOADB                            R9 0 +1
      141 LOADB                            R9 1
      142 SETTABLEKS                       R9 R8 K34 ["radius-small"]
      144 SETTABLEKS                       R8 R7 K26 ["tag"]
      146 DUPTABLE                         R8 K36 [{"Gradient"}]
      147 GETUPVAL                         R10 2
      148 GETTABLEKS                       R9 R10 K1 ["createElement"]
      150 LOADK                            R10 K37 ["UIGradient"]
      151 DUPTABLE                         R11 K40 [{"Color", "Transparency", "Rotation"}]
      152 GETIMPORT                        R12 K43 [ColorSequence.new]
      154 GETUPVAL                         R17 17
      155 GETTABLEKS                       R16 R17 K28 ["Color"]
      157 GETTABLEKS                       R15 R16 K29 ["Shift"]
      159 GETTABLEKS                       R14 R15 K30 ["Shift_300"]
      161 GETTABLEKS                       R13 R14 K44 ["Color3"]
      163 CALL                             R12 1 1
      164 SETTABLEKS                       R12 R11 K28 ["Color"]
      166 GETUPVAL                         R12 15
      167 SETTABLEKS                       R12 R11 K38 ["Transparency"]
      169 LOADN                            R12 0
      170 SETTABLEKS                       R12 R11 K39 ["Rotation"]
      172 CALL                             R9 2 1
      173 SETTABLEKS                       R9 R8 K35 ["Gradient"]
      175 CALL                             R5 3 1
      176 JUMP                             ; [+1]
      177 LOADNIL                          R5
      178 SETTABLEKS                       R5 R4 K14 ["backgroundElement"]
      180 GETUPVAL                         R6 0
      181 GETUPVAL                         R8 1
      182 GETTABLEKS                       R7 R8 K45 ["Stacked"]
      184 JUMPIFNOTEQ                      R6 R7 ; [+3]
      186 GETUPVAL                         R5 19
      187 JUMP                             ; [+1]
      188 LOADNIL                          R5
      189 SETTABLEKS                       R5 R4 K15 ["trailingElement"]
      191 GETUPVAL                         R7 6
      192 GETTABLEKS                       R6 R7 K46 ["leadingIcon"]
      194 JUMPIFNOT                        R6 ; [+35]
      195 GETUPVAL                         R6 2
      196 GETTABLEKS                       R5 R6 K1 ["createElement"]
      198 GETUPVAL                         R6 16
      199 DUPTABLE                         R7 K47 [{"tag"}]
      200 LOADK                            R8 K48 ["size-0-full auto-x row align-y-center"]
      201 SETTABLEKS                       R8 R7 K26 ["tag"]
      203 GETUPVAL                         R9 2
      204 GETTABLEKS                       R8 R9 K1 ["createElement"]
      206 GETUPVAL                         R9 20
      207 DUPTABLE                         R10 K51 [{"name", "style", "size"}]
      208 GETUPVAL                         R12 6
      209 GETTABLEKS                       R11 R12 K46 ["leadingIcon"]
      211 SETTABLEKS                       R11 R10 K49 ["name"]
      213 GETUPVAL                         R13 7
      214 GETTABLEKS                       R12 R13 K52 ["icon"]
      216 GETTABLEKS                       R11 R12 K50 ["style"]
      218 SETTABLEKS                       R11 R10 K50 ["style"]
      220 GETUPVAL                         R13 7
      221 GETTABLEKS                       R12 R13 K52 ["icon"]
      223 GETTABLEKS                       R11 R12 K4 ["size"]
      225 SETTABLEKS                       R11 R10 K4 ["size"]
      227 CALL                             R8 2 -1
      228 CALL                             R5 -1 1
      229 JUMP                             ; [+1]
      230 LOADNIL                          R5
      231 SETTABLEKS                       R5 R4 K16 ["leadingElement"]
      233 GETUPVAL                         R6 6
      234 GETTABLEKS                       R5 R6 K17 ["isDisabled"]
      236 SETTABLEKS                       R5 R4 K17 ["isDisabled"]
      238 LOADK                            R6 K53 ["%*--field"]
      239 GETUPVAL                         R9 6
      240 GETTABLEKS                       R8 R9 K18 ["testId"]
      242 NAMECALL                         R6 R6 K54 ["format"]
      244 CALL                             R6 2 1
      245 MOVE                             R5 R6
      246 SETTABLEKS                       R5 R4 K18 ["testId"]
      248 CALL                             R2 2 1
      249 JUMPIFNOT                        R1 ; [+34]
      250 GETUPVAL                         R4 2
      251 GETTABLEKS                       R3 R4 K1 ["createElement"]
      253 GETUPVAL                         R4 16
      254 DUPTABLE                         R5 K56 [{"Size", "tag"}]
      255 GETIMPORT                        R6 K59 [UDim2.fromOffset]
      257 GETUPVAL                         R10 6
      258 GETTABLEKS                       R9 R10 K60 ["width"]
      260 GETTABLEKS                       R8 R9 K61 ["Offset"]
      262 GETUPVAL                         R10 21
      263 GETTABLEKS                       R9 R10 K61 ["Offset"]
      265 SUB                              R7 R8 R9
      266 LOADN                            R8 0
      267 CALL                             R6 2 1
      268 SETTABLEKS                       R6 R5 K55 ["Size"]
      270 LOADK                            R6 K62 ["row gap-xsmall auto-y align-y-center"]
      271 SETTABLEKS                       R6 R5 K26 ["tag"]
      273 DUPTABLE                         R6 K65 [{"InputField", "Controls"}]
      274 SETTABLEKS                       R2 R6 K63 ["InputField"]
      276 JUMPIFNOT                        R1 ; [+2]
      277 GETUPVAL                         R7 19
      278 JUMP                             ; [+1]
      279 LOADNIL                          R7
      280 SETTABLEKS                       R7 R6 K64 ["Controls"]
      282 CALL                             R3 3 1
      283 RETURN                           R3 1
      284 MOVE                             R3 R2
      285 RETURN                           R3 1

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
      242 GETUPVAL                         R24 5
      243 GETTABLEKS                       R23 R24 K23 ["useMemo"]
      245 NEWCLOSURE                       R24 P2
      246 CAPTURE                          VAL R2
      247 CAPTURE                          VAL R17
      248 NEWTABLE                         R25 0 3
      250 GETTABLEKS                       R26 R2 K9 ["value"]
      252 GETTABLEKS                       R27 R2 K7 ["maximum"]
      254 GETTABLEKS                       R28 R2 K6 ["minimum"]
      256 SETLIST                          R25 R26 3 [1]
      258 CALL                             R23 2 1
      259 GETUPVAL                         R25 5
      260 GETTABLEKS                       R24 R25 K5 ["useCallback"]
      262 NEWCLOSURE                       R25 P3
      263 CAPTURE                          VAL R7
      264 CAPTURE                          VAL R2
      265 NEWTABLE                         R26 0 2
      267 MOVE                             R27 R7
      268 GETTABLEKS                       R28 R2 K24 ["onFocusGained"]
      270 SETLIST                          R26 R27 2 [1]
      272 CALL                             R24 2 1
      273 GETUPVAL                         R26 5
      274 GETTABLEKS                       R25 R26 K5 ["useCallback"]
      276 NEWCLOSURE                       R26 P4
      277 CAPTURE                          VAL R7
      278 CAPTURE                          VAL R15
      279 CAPTURE                          VAL R2
      280 NEWTABLE                         R27 0 7
      282 MOVE                             R28 R7
      283 GETTABLEKS                       R29 R2 K25 ["onChanged"]
      285 GETTABLEKS                       R30 R2 K26 ["onFocusLost"]
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
      303 CAPTURE                          VAL R15
      304 CAPTURE                          VAL R2
      305 NEWTABLE                         R28 0 2
      307 MOVE                             R29 R6
      308 GETTABLEKS                       R30 R2 K25 ["onChanged"]
      310 SETLIST                          R28 R29 2 [1]
      312 CALL                             R26 2 1
      313 GETUPVAL                         R28 5
      314 GETTABLEKS                       R27 R28 K5 ["useCallback"]
      316 NEWCLOSURE                       R28 P6
      317 CAPTURE                          VAL R2
      318 CAPTURE                          REF R10
      319 CAPTURE                          REF R12
      320 NEWTABLE                         R29 0 4
      322 GETTABLEKS                       R30 R2 K27 ["isDisabled"]
      324 MOVE                             R31 R10
      325 MOVE                             R32 R12
      326 GETTABLEKS                       R33 R2 K25 ["onChanged"]
      328 SETLIST                          R29 R30 4 [1]
      330 CALL                             R27 2 1
      331 GETUPVAL                         R29 5
      332 GETTABLEKS                       R28 R29 K5 ["useCallback"]
      334 NEWCLOSURE                       R29 P7
      335 CAPTURE                          VAL R2
      336 CAPTURE                          REF R11
      337 CAPTURE                          REF R13
      338 NEWTABLE                         R30 0 4
      340 GETTABLEKS                       R31 R2 K27 ["isDisabled"]
      342 MOVE                             R32 R11
      343 MOVE                             R33 R13
      344 GETTABLEKS                       R34 R2 K25 ["onChanged"]
      346 SETLIST                          R30 R31 4 [1]
      348 CALL                             R28 2 1
      349 GETUPVAL                         R30 5
      350 GETTABLEKS                       R29 R30 K28 ["createElement"]
      352 GETUPVAL                         R30 7
      353 DUPTABLE                         R31 K33 [{"variant", "size", "increment", "decrement", "testId"}]
      354 SETTABLEKS                       R21 R31 K29 ["variant"]
      356 GETTABLEKS                       R32 R2 K0 ["size"]
      358 SETTABLEKS                       R32 R31 K0 ["size"]
      360 DUPTABLE                         R32 K35 [{"isDisabled", "onClick"}]
      361 GETTABLEKS                       R34 R2 K27 ["isDisabled"]
      363 OR                               R33 R34 R10
      364 SETTABLEKS                       R33 R32 K27 ["isDisabled"]
      366 SETTABLEKS                       R27 R32 K34 ["onClick"]
      368 SETTABLEKS                       R32 R31 K30 ["increment"]
      370 DUPTABLE                         R32 K35 [{"isDisabled", "onClick"}]
      371 GETTABLEKS                       R34 R2 K27 ["isDisabled"]
      373 OR                               R33 R34 R11
      374 SETTABLEKS                       R33 R32 K27 ["isDisabled"]
      376 SETTABLEKS                       R28 R32 K34 ["onClick"]
      378 SETTABLEKS                       R32 R31 K31 ["decrement"]
      380 GETTABLEKS                       R32 R2 K32 ["testId"]
      382 SETTABLEKS                       R32 R31 K32 ["testId"]
      384 CALL                             R29 2 1
      385 GETUPVAL                         R31 5
      386 GETTABLEKS                       R30 R31 K23 ["useMemo"]
      388 NEWCLOSURE                       R31 P8
      389 CAPTURE                          VAL R21
      390 CAPTURE                          UPVAL U8
      391 CAPTURE                          VAL R5
      392 CAPTURE                          VAL R3
      393 NEWTABLE                         R32 0 2
      395 MOVE                             R33 R3
      396 MOVE                             R34 R21
      397 SETLIST                          R32 R33 2 [1]
      399 CALL                             R30 2 1
      400 GETUPVAL                         R32 5
      401 GETTABLEKS                       R31 R32 K5 ["useCallback"]
      403 NEWCLOSURE                       R32 P9
      404 CAPTURE                          UPVAL U6
      405 CAPTURE                          VAL R2
      406 CAPTURE                          VAL R22
      407 CAPTURE                          VAL R9
      408 CAPTURE                          VAL R8
      409 NEWTABLE                         R33 0 1
      411 GETTABLEKS                       R34 R2 K36 ["isScrubbable"]
      413 SETLIST                          R33 R34 1 [1]
      415 CALL                             R31 2 1
      416 GETUPVAL                         R33 5
      417 GETTABLEKS                       R32 R33 K5 ["useCallback"]
      419 NEWCLOSURE                       R33 P10
      420 CAPTURE                          UPVAL U6
      421 CAPTURE                          VAL R2
      422 CAPTURE                          VAL R9
      423 CAPTURE                          UPVAL U9
      424 CAPTURE                          VAL R8
      425 CAPTURE                          VAL R22
      426 NEWTABLE                         R34 0 2
      428 GETTABLEKS                       R35 R2 K36 ["isScrubbable"]
      430 GETTABLEKS                       R36 R2 K25 ["onChanged"]
      432 SETLIST                          R34 R35 2 [1]
      434 CALL                             R32 2 1
      435 GETUPVAL                         R34 5
      436 GETTABLEKS                       R33 R34 K5 ["useCallback"]
      438 NEWCLOSURE                       R34 P11
      439 CAPTURE                          UPVAL U6
      440 CAPTURE                          VAL R2
      441 CAPTURE                          VAL R9
      442 CAPTURE                          VAL R8
      443 NEWTABLE                         R35 0 1
      445 GETTABLEKS                       R36 R2 K36 ["isScrubbable"]
      447 SETLIST                          R35 R36 1 [1]
      449 CALL                             R33 2 1
      450 GETUPVAL                         R35 5
      451 GETTABLEKS                       R34 R35 K23 ["useMemo"]
      453 NEWCLOSURE                       R35 P12
      454 CAPTURE                          VAL R23
      455 NEWTABLE                         R36 0 1
      457 MOVE                             R37 R23
      458 SETLIST                          R36 R37 1 [1]
      460 CALL                             R34 2 1
      461 GETUPVAL                         R36 5
      462 GETTABLEKS                       R35 R36 K28 ["createElement"]
      464 GETUPVAL                         R36 10
      465 GETUPVAL                         R37 11
      466 MOVE                             R38 R2
      467 DUPTABLE                         R39 K44 [{"width", "ref", "hasError", "label", "size", "isRequired", "hint", "textBoxRef", "input"}]
      468 GETTABLEKS                       R40 R2 K37 ["width"]
      470 SETTABLEKS                       R40 R39 K37 ["width"]
      472 SETTABLEKS                       R1 R39 K38 ["ref"]
      474 SETTABLEKS                       R16 R39 K4 ["hasError"]
      476 GETTABLEKS                       R40 R2 K39 ["label"]
      478 SETTABLEKS                       R40 R39 K39 ["label"]
      480 GETUPVAL                         R40 12
      481 GETTABLEKS                       R41 R2 K0 ["size"]
      483 CALL                             R40 1 1
      484 SETTABLEKS                       R40 R39 K0 ["size"]
      486 GETTABLEKS                       R40 R2 K40 ["isRequired"]
      488 SETTABLEKS                       R40 R39 K40 ["isRequired"]
      490 GETTABLEKS                       R40 R2 K41 ["hint"]
      492 SETTABLEKS                       R40 R39 K41 ["hint"]
      494 GETTABLEKS                       R40 R2 K42 ["textBoxRef"]
      496 SETTABLEKS                       R40 R39 K42 ["textBoxRef"]
      498 NEWCLOSURE                       R40 P13
      499 CAPTURE                          VAL R21
      500 CAPTURE                          UPVAL U8
      501 CAPTURE                          UPVAL U5
      502 CAPTURE                          UPVAL U13
      503 CAPTURE                          VAL R20
      504 CAPTURE                          VAL R16
      505 CAPTURE                          VAL R2
      506 CAPTURE                          VAL R4
      507 CAPTURE                          VAL R26
      508 CAPTURE                          VAL R25
      509 CAPTURE                          VAL R24
      510 CAPTURE                          UPVAL U6
      511 CAPTURE                          VAL R31
      512 CAPTURE                          VAL R32
      513 CAPTURE                          VAL R33
      514 CAPTURE                          VAL R34
      515 CAPTURE                          UPVAL U14
      516 CAPTURE                          VAL R3
      517 CAPTURE                          UPVAL U15
      518 CAPTURE                          VAL R29
      519 CAPTURE                          UPVAL U16
      520 CAPTURE                          VAL R30
      521 SETTABLEKS                       R40 R39 K43 ["input"]
      523 CALL                             R37 2 -1
      524 CALL                             R35 -1 -1
      525 CLOSEUPVALS                      R10
      526 RETURN                           R35 -1

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
      161 GETIMPORT                        R24 K51 [UDim.new]
      163 LOADN                            R25 0
      164 LOADN                            R26 144
      165 CALL                             R24 2 1
      166 SETTABLEKS                       R24 R23 K41 ["width"]
      168 LOADB                            R24 0
      169 SETTABLEKS                       R24 R23 K42 ["isScrubbable"]
      171 LOADK                            R24 K52 ["--foundation-number-input"]
      172 SETTABLEKS                       R24 R23 K43 ["testId"]
      174 DUPCLOSURE                       R24 K53 [PROTO_16]
      175 CAPTURE                          VAL R5
      176 CAPTURE                          VAL R23
      177 CAPTURE                          VAL R17
      178 CAPTURE                          VAL R16
      179 CAPTURE                          VAL R19
      180 CAPTURE                          VAL R2
      181 CAPTURE                          VAL R9
      182 CAPTURE                          VAL R18
      183 CAPTURE                          VAL R8
      184 CAPTURE                          VAL R20
      185 CAPTURE                          VAL R11
      186 CAPTURE                          VAL R4
      187 CAPTURE                          VAL R15
      188 CAPTURE                          VAL R12
      189 CAPTURE                          VAL R14
      190 CAPTURE                          VAL R6
      191 CAPTURE                          VAL R10
      192 GETTABLEKS                       R25 R2 K54 ["memo"]
      194 GETTABLEKS                       R26 R2 K55 ["forwardRef"]
      196 MOVE                             R27 R24
      197 CALL                             R26 1 -1
      198 CALL                             R25 -1 -1
      199 RETURN                           R25 -1
