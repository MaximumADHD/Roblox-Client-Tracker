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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+7]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["current"]
        7 GETTABLEKS                       R0 R1 K1 ["getIsFocused"]
        9 CALL                             R0 0 1
       10 RETURN                           R0 1
       11 LOADB                            R0 0
       12 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["minimum"]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R4 R5 K1 ["maximum"]
        6 FASTCALL3                        MATH_CLAMP R0 R3 R4
        8 MOVE                             R2 R0
        9 GETIMPORT                        R1 K4 [math.clamp]
       11 CALL                             R1 3 1
       12 RETURN                           R1 1

PROTO_4:
        0 MOVE                             R3 R1
        1 GETUPVAL                         R6 0
        2 GETTABLEKS                       R5 R6 K0 ["step"]
        4 DIV                              R4 R0 R5
        5 CALL                             R3 1 1
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K0 ["step"]
        9 MUL                              R2 R3 R4
       10 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["value"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["precision"]
        6 LOADN                            R4 10
        7 ORK                              R5 R2 K2 [0]
        8 POW                              R3 R4 R5
        9 MUL                              R6 R1 R3
       10 ADDK                             R5 R6 K3 [0.5]
       11 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       12 GETIMPORT                        R4 K6 [math.floor]
       14 CALL                             R4 1 1
       15 DIV                              R0 R4 R3
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R3 R4 K0 ["value"]
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R4 R5 K7 ["step"]
       22 ADD                              R2 R3 R4
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R3 R4 K1 ["precision"]
       26 LOADN                            R5 10
       27 ORK                              R6 R3 K2 [0]
       28 POW                              R4 R5 R6
       29 MUL                              R7 R2 R4
       30 ADDK                             R6 R7 K3 [0.5]
       31 FASTCALL1                        MATH_FLOOR R6 ; [+2]
       32 GETIMPORT                        R5 K6 [math.floor]
       34 CALL                             R5 1 1
       35 DIV                              R1 R5 R4
       36 GETUPVAL                         R3 1
       37 GETUPVAL                         R5 0
       38 GETTABLEKS                       R4 R5 K0 ["value"]
       40 GETIMPORT                        R5 K9 [math.ceil]
       42 CALL                             R3 2 1
       43 GETUPVAL                         R5 0
       44 GETTABLEKS                       R4 R5 K1 ["precision"]
       46 LOADN                            R6 10
       47 ORK                              R7 R4 K2 [0]
       48 POW                              R5 R6 R7
       49 MUL                              R8 R3 R5
       50 ADDK                             R7 R8 K3 [0.5]
       51 FASTCALL1                        MATH_FLOOR R7 ; [+2]
       52 GETIMPORT                        R6 K6 [math.floor]
       54 CALL                             R6 1 1
       55 DIV                              R2 R6 R5
       56 JUMPIFEQ                         R0 R2 ; [+2]
       58 MOVE                             R1 R2
       59 GETUPVAL                         R3 2
       60 MOVE                             R4 R1
       61 CALL                             R3 1 -1
       62 RETURN                           R3 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["value"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["precision"]
        6 LOADN                            R4 10
        7 ORK                              R5 R2 K2 [0]
        8 POW                              R3 R4 R5
        9 MUL                              R6 R1 R3
       10 ADDK                             R5 R6 K3 [0.5]
       11 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       12 GETIMPORT                        R4 K6 [math.floor]
       14 CALL                             R4 1 1
       15 DIV                              R0 R4 R3
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R3 R4 K0 ["value"]
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R4 R5 K7 ["step"]
       22 SUB                              R2 R3 R4
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R3 R4 K1 ["precision"]
       26 LOADN                            R5 10
       27 ORK                              R6 R3 K2 [0]
       28 POW                              R4 R5 R6
       29 MUL                              R7 R2 R4
       30 ADDK                             R6 R7 K3 [0.5]
       31 FASTCALL1                        MATH_FLOOR R6 ; [+2]
       32 GETIMPORT                        R5 K6 [math.floor]
       34 CALL                             R5 1 1
       35 DIV                              R1 R5 R4
       36 GETUPVAL                         R3 1
       37 GETUPVAL                         R5 0
       38 GETTABLEKS                       R4 R5 K0 ["value"]
       40 GETIMPORT                        R5 K6 [math.floor]
       42 CALL                             R3 2 1
       43 GETUPVAL                         R5 0
       44 GETTABLEKS                       R4 R5 K1 ["precision"]
       46 LOADN                            R6 10
       47 ORK                              R7 R4 K2 [0]
       48 POW                              R5 R6 R7
       49 MUL                              R8 R3 R5
       50 ADDK                             R7 R8 K3 [0.5]
       51 FASTCALL1                        MATH_FLOOR R7 ; [+2]
       52 GETIMPORT                        R6 K6 [math.floor]
       54 CALL                             R6 1 1
       55 DIV                              R2 R6 R5
       56 JUMPIFEQ                         R0 R2 ; [+2]
       58 MOVE                             R1 R2
       59 GETUPVAL                         R3 2
       60 MOVE                             R4 R1
       61 CALL                             R3 1 -1
       62 RETURN                           R3 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["isDisabled"]
        3 JUMPIF                           R0 ; [+10]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K1 ["value"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K2 ["maximum"]
       10 JUMPIFEQ                         R1 R2 ; [+2]
       12 LOADB                            R0 0 +1
       13 LOADB                            R0 1
       14 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["isDisabled"]
        3 JUMPIF                           R0 ; [+10]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K1 ["value"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K2 ["minimum"]
       10 JUMPIFEQ                         R1 R2 ; [+2]
       12 LOADB                            R0 0 +1
       13 LOADB                            R0 1
       14 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["minimum"]
        3 GETUPVAL                         R6 0
        4 GETTABLEKS                       R5 R6 K1 ["maximum"]
        6 FASTCALL3                        MATH_CLAMP R0 R4 R5
        8 MOVE                             R3 R0
        9 GETIMPORT                        R2 K4 [math.clamp]
       11 CALL                             R2 3 1
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R3 R4 K5 ["precision"]
       15 LOADN                            R5 10
       16 ORK                              R6 R3 K6 [0]
       17 POW                              R4 R5 R6
       18 MUL                              R7 R2 R4
       19 ADDK                             R6 R7 K7 [0.5]
       20 FASTCALL1                        MATH_FLOOR R6 ; [+2]
       21 GETIMPORT                        R5 K9 [math.floor]
       23 CALL                             R5 1 1
       24 DIV                              R1 R5 R4
       25 RETURN                           R1 1

PROTO_10:
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

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["value"]
        4 FASTCALL1                        TOSTRING R2 ; [+2]
        5 GETIMPORT                        R1 K2 [tostring]
        7 CALL                             R1 1 1
        8 CALL                             R0 1 0
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R0 R1 K3 ["onFocusGained"]
       12 JUMPIFNOT                        R0 ; [+4]
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R0 R1 K3 ["onFocusGained"]
       16 CALL                             R0 0 0
       17 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 MOVE                             R0 R2
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R4 2
        6 CALL                             R4 0 1
        7 JUMPIFNOT                        R4 ; [+6]
        8 FASTCALL1                        TOSTRING R0 ; [+3]
        9 MOVE                             R4 R0
       10 GETIMPORT                        R3 K1 [tostring]
       12 CALL                             R3 1 1
       13 JUMP                             ; [+5]
       14 GETUPVAL                         R4 3
       15 GETTABLEKS                       R3 R4 K2 ["formatAsString"]
       17 MOVE                             R4 R0
       18 CALL                             R3 1 1
       19 CALL                             R2 1 0
       20 GETUPVAL                         R3 3
       21 GETTABLEKS                       R2 R3 K3 ["onChanged"]
       23 MOVE                             R3 R0
       24 MOVE                             R4 R1
       25 CALL                             R2 2 0
       26 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R2 R3 K0 ["value"]
        7 GETUPVAL                         R4 3
        8 GETTABLEKS                       R3 R4 K1 ["FocusLost"]
       10 CALL                             R1 2 0
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R1 R2 K2 ["onFocusLost"]
       14 JUMPIFNOT                        R1 ; [+5]
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R1 R2 K2 ["onFocusLost"]
       18 MOVE                             R2 R0
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 CALL                             R1 0 1
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 FASTCALL1                        TONUMBER R0 ; [+3]
        8 MOVE                             R2 R0
        9 GETIMPORT                        R1 K1 [tonumber]
       11 CALL                             R1 1 1
       12 JUMPIFNOTEQKNIL                  R1 ; [+5]
       14 GETUPVAL                         R2 2
       15 LOADB                            R3 1
       16 CALL                             R2 1 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R2 2
       19 LOADB                            R3 0
       20 CALL                             R2 1 0
       21 GETUPVAL                         R3 3
       22 GETTABLEKS                       R2 R3 K2 ["onChanged"]
       24 MOVE                             R3 R1
       25 GETUPVAL                         R5 4
       26 GETTABLEKS                       R4 R5 K3 ["Keyboard"]
       28 CALL                             R2 2 0
       29 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 2
        5 GETUPVAL                         R3 3
        6 GETTABLEKS                       R2 R3 K0 ["Activate"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 2
        5 GETUPVAL                         R3 3
        6 GETTABLEKS                       R2 R3 K0 ["Activate"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_17:
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

PROTO_18:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["value"]
        3 JUMPIFNOT                        R2 ; [+10]
        4 GETUPVAL                         R3 1
        5 DUPTABLE                         R4 K2 [{"position", "value"}]
        6 GETTABLEKS                       R5 R1 K3 ["X"]
        8 SETTABLEKS                       R5 R4 K1 ["position"]
       10 SETTABLEKS                       R2 R4 K0 ["value"]
       12 SETTABLEKS                       R4 R3 K4 ["current"]
       14 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["current"]
        3 JUMPIFNOT                        R2 ; [+23]
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
       21 GETUPVAL                         R3 3
       22 MOVE                             R4 R2
       23 GETUPVAL                         R6 4
       24 GETTABLEKS                       R5 R6 K5 ["Drag"]
       26 CALL                             R3 2 0
       27 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 LOADNIL                          R1
        6 SETTABLEKS                       R1 R0 K0 ["current"]
        8 RETURN                           R0 0

PROTO_21:
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

PROTO_22:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+11]
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R1 R2 K0 ["formatAsString"]
        7 GETUPVAL                         R2 3
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K1 ["value"]
       11 CALL                             R2 1 -1
       12 CALL                             R1 -1 -1
       13 CALL                             R0 -1 0
       14 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K0 ["formatAsString"]
        7 GETUPVAL                         R2 2
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R3 R4 K1 ["value"]
       11 CALL                             R2 1 -1
       12 CALL                             R1 -1 -1
       13 RETURN                           R1 -1

PROTO_24:
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
       14 NEWCLOSURE                       R7 P0
       15 CAPTURE                          UPVAL U5
       16 CAPTURE                          UPVAL U6
       17 CAPTURE                          UPVAL U7
       18 NAMECALL                         R5 R5 K20 ["map"]
       20 CALL                             R5 2 1
       21 SETTABLEKS                       R5 R4 K2 ["text"]
       23 GETUPVAL                         R5 8
       24 SETTABLEKS                       R5 R4 K3 ["hasError"]
       26 GETUPVAL                         R6 6
       27 GETTABLEKS                       R5 R6 K4 ["size"]
       29 SETTABLEKS                       R5 R4 K4 ["size"]
       31 DUPTABLE                         R5 K22 [{"left"}]
       32 GETUPVAL                         R8 9
       33 GETTABLEKS                       R7 R8 K23 ["innerContainer"]
       35 GETTABLEKS                       R6 R7 K5 ["horizontalPadding"]
       37 SETTABLEKS                       R6 R5 K21 ["left"]
       39 SETTABLEKS                       R5 R4 K5 ["horizontalPadding"]
       41 GETUPVAL                         R5 10
       42 SETTABLEKS                       R5 R4 K6 ["onChanged"]
       44 GETUPVAL                         R5 11
       45 SETTABLEKS                       R5 R4 K7 ["onFocusLost"]
       47 GETUPVAL                         R5 12
       48 SETTABLEKS                       R5 R4 K8 ["onFocus"]
       50 GETUPVAL                         R7 6
       51 GETTABLEKS                       R6 R7 K24 ["isScrubbable"]
       53 JUMPIFNOT                        R6 ; [+2]
       54 GETUPVAL                         R5 13
       55 JUMP                             ; [+1]
       56 LOADNIL                          R5
       57 SETTABLEKS                       R5 R4 K9 ["onDragStarted"]
       59 GETUPVAL                         R7 6
       60 GETTABLEKS                       R6 R7 K24 ["isScrubbable"]
       62 JUMPIFNOT                        R6 ; [+2]
       63 GETUPVAL                         R5 14
       64 JUMP                             ; [+1]
       65 LOADNIL                          R5
       66 SETTABLEKS                       R5 R4 K10 ["onDrag"]
       68 GETUPVAL                         R7 6
       69 GETTABLEKS                       R6 R7 K24 ["isScrubbable"]
       71 JUMPIFNOT                        R6 ; [+2]
       72 GETUPVAL                         R5 15
       73 JUMP                             ; [+1]
       74 LOADNIL                          R5
       75 SETTABLEKS                       R5 R4 K11 ["onDragEnded"]
       77 GETUPVAL                         R6 6
       78 GETTABLEKS                       R5 R6 K12 ["onReturnPressed"]
       80 SETTABLEKS                       R5 R4 K12 ["onReturnPressed"]
       82 SETTABLEKS                       R0 R4 K13 ["ref"]
       84 GETUPVAL                         R7 6
       85 GETTABLEKS                       R6 R7 K24 ["isScrubbable"]
       87 JUMPIFNOT                        R6 ; [+29]
       88 GETUPVAL                         R6 16
       89 JUMPIFNOT                        R6 ; [+27]
       90 GETUPVAL                         R6 2
       91 GETTABLEKS                       R5 R6 K1 ["createElement"]
       93 LOADK                            R6 K25 ["UIGradient"]
       94 DUPTABLE                         R7 K29 [{"Color", "Transparency", "Rotation"}]
       95 GETIMPORT                        R8 K32 [ColorSequence.new]
       97 GETUPVAL                         R13 17
       98 GETTABLEKS                       R12 R13 K26 ["Color"]
      100 GETTABLEKS                       R11 R12 K33 ["Shift"]
      102 GETTABLEKS                       R10 R11 K34 ["Shift_300"]
      104 GETTABLEKS                       R9 R10 K35 ["Color3"]
      106 CALL                             R8 1 1
      107 SETTABLEKS                       R8 R7 K26 ["Color"]
      109 GETUPVAL                         R8 16
      110 SETTABLEKS                       R8 R7 K27 ["Transparency"]
      112 LOADN                            R8 0
      113 SETTABLEKS                       R8 R7 K28 ["Rotation"]
      115 CALL                             R5 2 1
      116 JUMP                             ; [+1]
      117 LOADNIL                          R5
      118 SETTABLEKS                       R5 R4 K14 ["backgroundGradient"]
      120 GETUPVAL                         R6 0
      121 GETUPVAL                         R8 1
      122 GETTABLEKS                       R7 R8 K36 ["Stacked"]
      124 JUMPIFNOTEQ                      R6 R7 ; [+3]
      126 GETUPVAL                         R5 18
      127 JUMP                             ; [+1]
      128 LOADNIL                          R5
      129 SETTABLEKS                       R5 R4 K15 ["trailingElement"]
      131 GETUPVAL                         R7 6
      132 GETTABLEKS                       R6 R7 K37 ["leadingIcon"]
      134 JUMPIFNOT                        R6 ; [+35]
      135 GETUPVAL                         R6 2
      136 GETTABLEKS                       R5 R6 K1 ["createElement"]
      138 GETUPVAL                         R6 19
      139 DUPTABLE                         R7 K39 [{"tag"}]
      140 LOADK                            R8 K40 ["row align-y-center size-0-full auto-x"]
      141 SETTABLEKS                       R8 R7 K38 ["tag"]
      143 GETUPVAL                         R9 2
      144 GETTABLEKS                       R8 R9 K1 ["createElement"]
      146 GETUPVAL                         R9 20
      147 DUPTABLE                         R10 K43 [{"name", "style", "size"}]
      148 GETUPVAL                         R12 6
      149 GETTABLEKS                       R11 R12 K37 ["leadingIcon"]
      151 SETTABLEKS                       R11 R10 K41 ["name"]
      153 GETUPVAL                         R13 9
      154 GETTABLEKS                       R12 R13 K44 ["icon"]
      156 GETTABLEKS                       R11 R12 K42 ["style"]
      158 SETTABLEKS                       R11 R10 K42 ["style"]
      160 GETUPVAL                         R13 9
      161 GETTABLEKS                       R12 R13 K44 ["icon"]
      163 GETTABLEKS                       R11 R12 K4 ["size"]
      165 SETTABLEKS                       R11 R10 K4 ["size"]
      167 CALL                             R8 2 -1
      168 CALL                             R5 -1 1
      169 JUMP                             ; [+1]
      170 LOADNIL                          R5
      171 SETTABLEKS                       R5 R4 K16 ["leadingElement"]
      173 GETUPVAL                         R6 6
      174 GETTABLEKS                       R5 R6 K17 ["isDisabled"]
      176 SETTABLEKS                       R5 R4 K17 ["isDisabled"]
      178 LOADK                            R6 K45 ["%*--field"]
      179 GETUPVAL                         R9 6
      180 GETTABLEKS                       R8 R9 K18 ["testId"]
      182 NAMECALL                         R6 R6 K46 ["format"]
      184 CALL                             R6 2 1
      185 MOVE                             R5 R6
      186 SETTABLEKS                       R5 R4 K18 ["testId"]
      188 CALL                             R2 2 1
      189 JUMPIFNOT                        R1 ; [+32]
      190 GETUPVAL                         R4 2
      191 GETTABLEKS                       R3 R4 K1 ["createElement"]
      193 GETUPVAL                         R4 19
      194 DUPTABLE                         R5 K48 [{"Size", "tag"}]
      195 GETIMPORT                        R6 K51 [UDim2.fromOffset]
      197 GETUPVAL                         R9 21
      198 GETTABLEKS                       R8 R9 K52 ["Offset"]
      200 GETUPVAL                         R10 22
      201 GETTABLEKS                       R9 R10 K52 ["Offset"]
      203 SUB                              R7 R8 R9
      204 LOADN                            R8 0
      205 CALL                             R6 2 1
      206 SETTABLEKS                       R6 R5 K47 ["Size"]
      208 LOADK                            R6 K53 ["row align-y-center gap-xsmall auto-y"]
      209 SETTABLEKS                       R6 R5 K38 ["tag"]
      211 DUPTABLE                         R6 K56 [{"InputField", "Controls"}]
      212 SETTABLEKS                       R2 R6 K54 ["InputField"]
      214 JUMPIFNOT                        R1 ; [+2]
      215 GETUPVAL                         R7 18
      216 JUMP                             ; [+1]
      217 LOADNIL                          R7
      218 SETTABLEKS                       R7 R6 K55 ["Controls"]
      220 CALL                             R3 3 1
      221 RETURN                           R3 1
      222 MOVE                             R3 R2
      223 RETURN                           R3 1

PROTO_25:
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
       15 GETUPVAL                         R10 5
       16 GETTABLEKS                       R9 R10 K1 ["FoundationNumberInputFixControlSizes"]
       18 JUMPIFNOT                        R9 ; [+3]
       19 GETTABLEKS                       R8 R2 K2 ["controlsVariant"]
       21 JUMP                             ; [+1]
       22 LOADNIL                          R8
       23 CALL                             R5 3 1
       24 GETUPVAL                         R7 6
       25 GETTABLEKS                       R6 R7 K3 ["useRef"]
       27 LOADNIL                          R7
       28 CALL                             R6 1 1
       29 GETUPVAL                         R8 7
       30 GETTABLEKS                       R7 R8 K4 ["useComposedRef"]
       32 MOVE                             R8 R6
       33 GETTABLEKS                       R9 R2 K5 ["textBoxRef"]
       35 CALL                             R7 2 1
       36 GETUPVAL                         R9 6
       37 GETTABLEKS                       R8 R9 K3 ["useRef"]
       39 LOADNIL                          R9
       40 CALL                             R8 1 1
       41 GETUPVAL                         R10 6
       42 GETTABLEKS                       R9 R10 K6 ["useCallback"]
       44 NEWCLOSURE                       R10 P0
       45 CAPTURE                          VAL R6
       46 NEWTABLE                         R11 0 0
       48 CALL                             R9 2 1
       49 GETUPVAL                         R11 6
       50 GETTABLEKS                       R10 R11 K7 ["useState"]
       52 LOADB                            R11 0
       53 CALL                             R10 1 2
       54 GETTABLEKS                       R13 R2 K8 ["hasError"]
       56 OR                               R12 R13 R10
       57 GETTABLEKS                       R13 R2 K2 ["controlsVariant"]
       59 GETUPVAL                         R15 6
       60 GETTABLEKS                       R14 R15 K6 ["useCallback"]
       62 NEWCLOSURE                       R15 P1
       63 CAPTURE                          VAL R2
       64 NEWTABLE                         R16 0 2
       66 GETTABLEKS                       R17 R2 K9 ["minimum"]
       68 GETTABLEKS                       R18 R2 K10 ["maximum"]
       70 SETLIST                          R16 R17 2 [1]
       72 CALL                             R14 2 1
       73 GETUPVAL                         R16 6
       74 GETTABLEKS                       R15 R16 K6 ["useCallback"]
       76 NEWCLOSURE                       R16 P2
       77 CAPTURE                          VAL R2
       78 NEWTABLE                         R17 0 1
       80 GETTABLEKS                       R18 R2 K11 ["step"]
       82 SETLIST                          R17 R18 1 [1]
       84 CALL                             R15 2 1
       85 GETUPVAL                         R17 6
       86 GETTABLEKS                       R16 R17 K12 ["useMemo"]
       88 NEWCLOSURE                       R17 P3
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R15
       91 CAPTURE                          VAL R14
       92 NEWTABLE                         R18 0 5
       94 GETTABLEKS                       R19 R2 K13 ["value"]
       96 GETTABLEKS                       R20 R2 K11 ["step"]
       98 GETTABLEKS                       R21 R2 K14 ["precision"]
      100 MOVE                             R22 R14
      101 MOVE                             R23 R15
      102 SETLIST                          R18 R19 5 [1]
      104 CALL                             R16 2 1
      105 GETUPVAL                         R18 6
      106 GETTABLEKS                       R17 R18 K12 ["useMemo"]
      108 NEWCLOSURE                       R18 P4
      109 CAPTURE                          VAL R2
      110 CAPTURE                          VAL R15
      111 CAPTURE                          VAL R14
      112 NEWTABLE                         R19 0 5
      114 GETTABLEKS                       R20 R2 K13 ["value"]
      116 GETTABLEKS                       R21 R2 K11 ["step"]
      118 GETTABLEKS                       R22 R2 K14 ["precision"]
      120 MOVE                             R23 R14
      121 MOVE                             R24 R15
      122 SETLIST                          R19 R20 5 [1]
      124 CALL                             R17 2 1
      125 GETUPVAL                         R19 6
      126 GETTABLEKS                       R18 R19 K12 ["useMemo"]
      128 NEWCLOSURE                       R19 P5
      129 CAPTURE                          VAL R2
      130 NEWTABLE                         R20 0 3
      132 GETTABLEKS                       R21 R2 K15 ["isDisabled"]
      134 GETTABLEKS                       R22 R2 K13 ["value"]
      136 GETTABLEKS                       R23 R2 K10 ["maximum"]
      138 SETLIST                          R20 R21 3 [1]
      140 CALL                             R18 2 1
      141 GETUPVAL                         R20 6
      142 GETTABLEKS                       R19 R20 K12 ["useMemo"]
      144 NEWCLOSURE                       R20 P6
      145 CAPTURE                          VAL R2
      146 NEWTABLE                         R21 0 3
      148 GETTABLEKS                       R22 R2 K15 ["isDisabled"]
      150 GETTABLEKS                       R23 R2 K13 ["value"]
      152 GETTABLEKS                       R24 R2 K9 ["minimum"]
      154 SETLIST                          R21 R22 3 [1]
      156 CALL                             R19 2 1
      157 GETUPVAL                         R21 6
      158 GETTABLEKS                       R20 R21 K6 ["useCallback"]
      160 NEWCLOSURE                       R21 P7
      161 CAPTURE                          VAL R2
      162 NEWTABLE                         R22 0 3
      164 GETTABLEKS                       R23 R2 K9 ["minimum"]
      166 GETTABLEKS                       R24 R2 K10 ["maximum"]
      168 GETTABLEKS                       R25 R2 K14 ["precision"]
      170 SETLIST                          R22 R23 3 [1]
      172 CALL                             R20 2 1
      173 GETUPVAL                         R22 6
      174 GETTABLEKS                       R21 R22 K16 ["useBinding"]
      176 GETTABLEKS                       R22 R2 K17 ["formatAsString"]
      178 MOVE                             R23 R20
      179 GETTABLEKS                       R24 R2 K13 ["value"]
      181 CALL                             R23 1 -1
      182 CALL                             R22 -1 -1
      183 CALL                             R21 -1 2
      184 GETTABLEKS                       R24 R2 K18 ["width"]
      186 JUMPIFNOT                        R24 ; [+3]
      187 GETTABLEKS                       R23 R2 K18 ["width"]
      189 JUMP                             ; [+8]
      190 GETIMPORT                        R23 K21 [UDim.new]
      192 LOADN                            R24 0
      193 GETTABLEKS                       R26 R5 K22 ["container"]
      195 GETTABLEKS                       R25 R26 K18 ["width"]
      197 CALL                             R23 2 1
      198 GETUPVAL                         R25 6
      199 GETTABLEKS                       R24 R25 K12 ["useMemo"]
      201 NEWCLOSURE                       R25 P8
      202 CAPTURE                          VAL R2
      203 CAPTURE                          VAL R14
      204 NEWTABLE                         R26 0 4
      206 GETTABLEKS                       R27 R2 K13 ["value"]
      208 GETTABLEKS                       R28 R2 K10 ["maximum"]
      210 GETTABLEKS                       R29 R2 K9 ["minimum"]
      212 MOVE                             R30 R14
      213 SETLIST                          R26 R27 4 [1]
      215 CALL                             R24 2 1
      216 GETUPVAL                         R26 6
      217 GETTABLEKS                       R25 R26 K6 ["useCallback"]
      219 NEWCLOSURE                       R26 P9
      220 CAPTURE                          VAL R22
      221 CAPTURE                          VAL R2
      222 NEWTABLE                         R27 0 2
      224 GETTABLEKS                       R28 R2 K23 ["onFocusGained"]
      226 GETTABLEKS                       R29 R2 K13 ["value"]
      228 SETLIST                          R27 R28 2 [1]
      230 CALL                             R25 2 1
      231 GETUPVAL                         R27 6
      232 GETTABLEKS                       R26 R27 K6 ["useCallback"]
      234 NEWCLOSURE                       R27 P10
      235 CAPTURE                          VAL R20
      236 CAPTURE                          VAL R22
      237 CAPTURE                          VAL R9
      238 CAPTURE                          VAL R2
      239 NEWTABLE                         R28 0 4
      241 GETTABLEKS                       R29 R2 K24 ["onChanged"]
      243 GETTABLEKS                       R30 R2 K17 ["formatAsString"]
      245 MOVE                             R31 R20
      246 MOVE                             R32 R9
      247 SETLIST                          R28 R29 4 [1]
      249 CALL                             R26 2 1
      250 GETUPVAL                         R28 6
      251 GETTABLEKS                       R27 R28 K6 ["useCallback"]
      253 NEWCLOSURE                       R28 P11
      254 CAPTURE                          VAL R11
      255 CAPTURE                          VAL R26
      256 CAPTURE                          VAL R2
      257 CAPTURE                          UPVAL U8
      258 NEWTABLE                         R29 0 4
      260 MOVE                             R30 R26
      261 GETTABLEKS                       R31 R2 K25 ["onFocusLost"]
      263 GETTABLEKS                       R32 R2 K13 ["value"]
      265 MOVE                             R33 R20
      266 SETLIST                          R29 R30 4 [1]
      268 CALL                             R27 2 1
      269 GETUPVAL                         R29 6
      270 GETTABLEKS                       R28 R29 K6 ["useCallback"]
      272 NEWCLOSURE                       R29 P12
      273 CAPTURE                          VAL R22
      274 CAPTURE                          VAL R9
      275 CAPTURE                          VAL R11
      276 CAPTURE                          VAL R2
      277 CAPTURE                          UPVAL U8
      278 NEWTABLE                         R30 0 2
      280 MOVE                             R31 R9
      281 GETTABLEKS                       R32 R2 K24 ["onChanged"]
      283 SETLIST                          R30 R31 2 [1]
      285 CALL                             R28 2 1
      286 GETUPVAL                         R30 6
      287 GETTABLEKS                       R29 R30 K6 ["useCallback"]
      289 NEWCLOSURE                       R30 P13
      290 CAPTURE                          VAL R18
      291 CAPTURE                          VAL R26
      292 CAPTURE                          VAL R16
      293 CAPTURE                          UPVAL U8
      294 NEWTABLE                         R31 0 3
      296 MOVE                             R32 R18
      297 MOVE                             R33 R16
      298 MOVE                             R34 R26
      299 SETLIST                          R31 R32 3 [1]
      301 CALL                             R29 2 1
      302 GETUPVAL                         R31 6
      303 GETTABLEKS                       R30 R31 K6 ["useCallback"]
      305 NEWCLOSURE                       R31 P14
      306 CAPTURE                          VAL R19
      307 CAPTURE                          VAL R26
      308 CAPTURE                          VAL R17
      309 CAPTURE                          UPVAL U8
      310 NEWTABLE                         R32 0 3
      312 MOVE                             R33 R19
      313 MOVE                             R34 R17
      314 MOVE                             R35 R26
      315 SETLIST                          R32 R33 3 [1]
      317 CALL                             R30 2 1
      318 GETUPVAL                         R32 6
      319 GETTABLEKS                       R31 R32 K26 ["createElement"]
      321 GETUPVAL                         R32 9
      322 DUPTABLE                         R33 K31 [{"variant", "size", "increment", "decrement", "testId"}]
      323 SETTABLEKS                       R13 R33 K27 ["variant"]
      325 GETTABLEKS                       R34 R2 K0 ["size"]
      327 SETTABLEKS                       R34 R33 K0 ["size"]
      329 DUPTABLE                         R34 K33 [{"isDisabled", "onClick"}]
      330 SETTABLEKS                       R18 R34 K15 ["isDisabled"]
      332 SETTABLEKS                       R29 R34 K32 ["onClick"]
      334 SETTABLEKS                       R34 R33 K28 ["increment"]
      336 DUPTABLE                         R34 K33 [{"isDisabled", "onClick"}]
      337 SETTABLEKS                       R19 R34 K15 ["isDisabled"]
      339 SETTABLEKS                       R30 R34 K32 ["onClick"]
      341 SETTABLEKS                       R34 R33 K29 ["decrement"]
      343 GETTABLEKS                       R34 R2 K30 ["testId"]
      345 SETTABLEKS                       R34 R33 K30 ["testId"]
      347 CALL                             R31 2 1
      348 GETUPVAL                         R33 6
      349 GETTABLEKS                       R32 R33 K12 ["useMemo"]
      351 NEWCLOSURE                       R33 P15
      352 CAPTURE                          VAL R13
      353 CAPTURE                          UPVAL U10
      354 CAPTURE                          VAL R5
      355 CAPTURE                          VAL R3
      356 NEWTABLE                         R34 0 4
      358 MOVE                             R35 R3
      359 MOVE                             R36 R13
      360 GETTABLEKS                       R38 R5 K34 ["splitButton"]
      362 GETTABLEKS                       R37 R38 K0 ["size"]
      364 GETTABLEKS                       R39 R3 K35 ["Gap"]
      366 GETTABLEKS                       R38 R39 K36 ["XSmall"]
      368 SETLIST                          R34 R35 4 [1]
      370 CALL                             R32 2 1
      371 GETUPVAL                         R34 6
      372 GETTABLEKS                       R33 R34 K6 ["useCallback"]
      374 NEWCLOSURE                       R34 P16
      375 CAPTURE                          VAL R2
      376 CAPTURE                          VAL R8
      377 NEWTABLE                         R35 0 1
      379 GETTABLEKS                       R36 R2 K13 ["value"]
      381 SETLIST                          R35 R36 1 [1]
      383 CALL                             R33 2 1
      384 GETUPVAL                         R35 6
      385 GETTABLEKS                       R34 R35 K6 ["useCallback"]
      387 NEWCLOSURE                       R35 P17
      388 CAPTURE                          VAL R8
      389 CAPTURE                          UPVAL U11
      390 CAPTURE                          VAL R2
      391 CAPTURE                          VAL R26
      392 CAPTURE                          UPVAL U8
      393 NEWTABLE                         R36 0 3
      395 MOVE                             R37 R26
      396 GETTABLEKS                       R38 R2 K11 ["step"]
      398 MOVE                             R39 R20
      399 SETLIST                          R36 R37 3 [1]
      401 CALL                             R34 2 1
      402 GETUPVAL                         R36 6
      403 GETTABLEKS                       R35 R36 K6 ["useCallback"]
      405 NEWCLOSURE                       R36 P18
      406 CAPTURE                          VAL R8
      407 NEWTABLE                         R37 0 0
      409 CALL                             R35 2 1
      410 GETTABLEKS                       R39 R3 K37 ["Color"]
      412 GETTABLEKS                       R38 R39 K38 ["Shift"]
      414 GETTABLEKS                       R37 R38 K39 ["Shift_300"]
      416 GETTABLEKS                       R36 R37 K40 ["Transparency"]
      418 GETTABLEKS                       R40 R3 K37 ["Color"]
      420 GETTABLEKS                       R39 R40 K38 ["Shift"]
      422 GETTABLEKS                       R38 R39 K41 ["Shift_100"]
      424 GETTABLEKS                       R37 R38 K40 ["Transparency"]
      426 GETUPVAL                         R39 6
      427 GETTABLEKS                       R38 R39 K12 ["useMemo"]
      429 NEWCLOSURE                       R39 P19
      430 CAPTURE                          VAL R24
      431 CAPTURE                          VAL R37
      432 CAPTURE                          VAL R36
      433 NEWTABLE                         R40 0 3
      435 MOVE                             R41 R24
      436 MOVE                             R42 R36
      437 MOVE                             R43 R37
      438 SETLIST                          R40 R41 3 [1]
      440 CALL                             R38 2 1
      441 GETUPVAL                         R40 6
      442 GETTABLEKS                       R39 R40 K42 ["useEffect"]
      444 NEWCLOSURE                       R40 P20
      445 CAPTURE                          VAL R9
      446 CAPTURE                          VAL R22
      447 CAPTURE                          VAL R2
      448 CAPTURE                          VAL R20
      449 NEWTABLE                         R41 0 4
      451 GETTABLEKS                       R42 R2 K13 ["value"]
      453 GETTABLEKS                       R43 R2 K17 ["formatAsString"]
      455 MOVE                             R44 R20
      456 MOVE                             R45 R9
      457 SETLIST                          R41 R42 4 [1]
      459 CALL                             R39 2 0
      460 GETUPVAL                         R40 6
      461 GETTABLEKS                       R39 R40 K26 ["createElement"]
      463 GETUPVAL                         R40 12
      464 GETUPVAL                         R41 13
      465 MOVE                             R42 R2
      466 DUPTABLE                         R43 K48 [{"width", "ref", "hasError", "label", "size", "isRequired", "hint", "textBoxRef", "input"}]
      467 SETTABLEKS                       R23 R43 K18 ["width"]
      469 SETTABLEKS                       R1 R43 K43 ["ref"]
      471 SETTABLEKS                       R12 R43 K8 ["hasError"]
      473 GETTABLEKS                       R44 R2 K44 ["label"]
      475 SETTABLEKS                       R44 R43 K44 ["label"]
      477 GETUPVAL                         R44 14
      478 GETTABLEKS                       R45 R2 K0 ["size"]
      480 CALL                             R44 1 1
      481 SETTABLEKS                       R44 R43 K0 ["size"]
      483 GETTABLEKS                       R44 R2 K45 ["isRequired"]
      485 SETTABLEKS                       R44 R43 K45 ["isRequired"]
      487 GETTABLEKS                       R44 R2 K46 ["hint"]
      489 SETTABLEKS                       R44 R43 K46 ["hint"]
      491 SETTABLEKS                       R7 R43 K5 ["textBoxRef"]
      493 NEWCLOSURE                       R44 P21
      494 CAPTURE                          VAL R13
      495 CAPTURE                          UPVAL U10
      496 CAPTURE                          UPVAL U6
      497 CAPTURE                          UPVAL U15
      498 CAPTURE                          VAL R21
      499 CAPTURE                          VAL R9
      500 CAPTURE                          VAL R2
      501 CAPTURE                          VAL R20
      502 CAPTURE                          VAL R12
      503 CAPTURE                          VAL R4
      504 CAPTURE                          VAL R28
      505 CAPTURE                          VAL R27
      506 CAPTURE                          VAL R25
      507 CAPTURE                          VAL R33
      508 CAPTURE                          VAL R34
      509 CAPTURE                          VAL R35
      510 CAPTURE                          VAL R38
      511 CAPTURE                          VAL R3
      512 CAPTURE                          VAL R31
      513 CAPTURE                          UPVAL U16
      514 CAPTURE                          UPVAL U17
      515 CAPTURE                          VAL R23
      516 CAPTURE                          VAL R32
      517 SETTABLEKS                       R44 R43 K47 ["input"]
      519 CALL                             R41 2 -1
      520 CALL                             R39 -1 -1
      521 RETURN                           R39 -1

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
       16 GETTABLEKS                       R4 R1 K8 ["ReactUtils"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R0 K9 ["Components"]
       21 GETIMPORT                        R5 K6 [require]
       23 GETTABLEKS                       R7 R0 K10 ["Utility"]
       25 GETTABLEKS                       R6 R7 K11 ["withCommonProps"]
       27 CALL                             R5 1 1
       28 GETIMPORT                        R6 K6 [require]
       30 GETTABLEKS                       R8 R0 K10 ["Utility"]
       32 GETTABLEKS                       R7 R8 K12 ["withDefaults"]
       34 CALL                             R6 1 1
       35 GETIMPORT                        R7 K6 [require]
       37 GETTABLEKS                       R9 R0 K13 ["Enums"]
       39 GETTABLEKS                       R8 R9 K14 ["InputSize"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K6 [require]
       44 GETTABLEKS                       R10 R0 K13 ["Enums"]
       46 GETTABLEKS                       R9 R10 K15 ["InputLabelSize"]
       48 CALL                             R8 1 1
       49 GETIMPORT                        R9 K6 [require]
       51 GETTABLEKS                       R11 R0 K13 ["Enums"]
       53 GETTABLEKS                       R10 R11 K16 ["NumberInputControlsVariant"]
       55 CALL                             R9 1 1
       56 GETIMPORT                        R10 K6 [require]
       58 GETTABLEKS                       R12 R0 K13 ["Enums"]
       60 GETTABLEKS                       R11 R12 K17 ["OnChangeCallbackReason"]
       62 CALL                             R10 1 1
       63 GETIMPORT                        R11 K6 [require]
       65 GETTABLEKS                       R13 R0 K10 ["Utility"]
       67 GETTABLEKS                       R12 R13 K18 ["Flags"]
       69 CALL                             R11 1 1
       70 GETIMPORT                        R12 K6 [require]
       72 GETTABLEKS                       R13 R4 K19 ["Icon"]
       74 CALL                             R12 1 1
       75 GETIMPORT                        R13 K6 [require]
       77 GETTABLEKS                       R14 R4 K20 ["InputField"]
       79 CALL                             R13 1 1
       80 GETIMPORT                        R14 K6 [require]
       82 GETTABLEKS                       R15 R4 K21 ["InternalTextInput"]
       84 CALL                             R14 1 1
       85 GETIMPORT                        R15 K6 [require]
       87 GETTABLEKS                       R16 R4 K22 ["Types"]
       89 CALL                             R15 1 1
       90 GETIMPORT                        R16 K6 [require]
       92 GETTABLEKS                       R17 R4 K23 ["View"]
       94 CALL                             R16 1 1
       95 GETIMPORT                        R17 K6 [require]
       97 GETTABLEKS                       R19 R0 K10 ["Utility"]
       99 GETTABLEKS                       R18 R19 K24 ["getInputTextSize"]
      101 CALL                             R17 1 1
      102 GETIMPORT                        R18 K6 [require]
      104 GETTABLEKS                       R20 R4 K25 ["TextInput"]
      106 GETTABLEKS                       R19 R20 K26 ["useTextInputVariants"]
      108 CALL                             R18 1 1
      109 GETIMPORT                        R19 K6 [require]
      111 GETTABLEKS                       R22 R0 K27 ["Providers"]
      113 GETTABLEKS                       R21 R22 K28 ["Style"]
      115 GETTABLEKS                       R20 R21 K29 ["useTokens"]
      117 CALL                             R19 1 1
      118 GETIMPORT                        R20 K6 [require]
      120 GETIMPORT                        R23 K1 [script]
      122 GETTABLEKS                       R22 R23 K4 ["Parent"]
      124 GETTABLEKS                       R21 R22 K30 ["NumberInputControls"]
      126 CALL                             R20 1 1
      127 GETIMPORT                        R21 K6 [require]
      129 GETIMPORT                        R24 K1 [script]
      131 GETTABLEKS                       R23 R24 K4 ["Parent"]
      133 GETTABLEKS                       R22 R23 K31 ["useNumberInputVariants"]
      135 CALL                             R21 1 1
      136 GETIMPORT                        R22 K6 [require]
      138 GETIMPORT                        R25 K1 [script]
      140 GETTABLEKS                       R24 R25 K4 ["Parent"]
      142 GETTABLEKS                       R23 R24 K32 ["calculateNumberInputValueFromPositions"]
      144 CALL                             R22 1 1
      145 DUPCLOSURE                       R23 K33 [PROTO_0]
      146 DUPCLOSURE                       R24 K34 [PROTO_1]
      147 DUPTABLE                         R25 K45 [{"controlsVariant", "size", "minimum", "maximum", "step", "precision", "value", "formatAsString", "isScrubbable", "testId"}]
      148 GETTABLEKS                       R26 R9 K46 ["Stacked"]
      150 SETTABLEKS                       R26 R25 K35 ["controlsVariant"]
      152 GETTABLEKS                       R26 R7 K47 ["Large"]
      154 SETTABLEKS                       R26 R25 K36 ["size"]
      156 LOADK                            R26 K48 [-∞]
      157 SETTABLEKS                       R26 R25 K37 ["minimum"]
      159 LOADK                            R26 K49 [∞]
      160 SETTABLEKS                       R26 R25 K38 ["maximum"]
      162 LOADN                            R26 1
      163 SETTABLEKS                       R26 R25 K39 ["step"]
      165 LOADN                            R26 3
      166 SETTABLEKS                       R26 R25 K40 ["precision"]
      168 LOADN                            R26 0
      169 SETTABLEKS                       R26 R25 K41 ["value"]
      171 SETTABLEKS                       R24 R25 K42 ["formatAsString"]
      173 LOADB                            R26 0
      174 SETTABLEKS                       R26 R25 K43 ["isScrubbable"]
      176 LOADK                            R26 K50 ["--foundation-number-input"]
      177 SETTABLEKS                       R26 R25 K44 ["testId"]
      179 DUPCLOSURE                       R26 K51 [PROTO_25]
      180 CAPTURE                          VAL R6
      181 CAPTURE                          VAL R25
      182 CAPTURE                          VAL R19
      183 CAPTURE                          VAL R18
      184 CAPTURE                          VAL R21
      185 CAPTURE                          VAL R11
      186 CAPTURE                          VAL R2
      187 CAPTURE                          VAL R3
      188 CAPTURE                          VAL R10
      189 CAPTURE                          VAL R20
      190 CAPTURE                          VAL R9
      191 CAPTURE                          VAL R22
      192 CAPTURE                          VAL R13
      193 CAPTURE                          VAL R5
      194 CAPTURE                          VAL R17
      195 CAPTURE                          VAL R14
      196 CAPTURE                          VAL R16
      197 CAPTURE                          VAL R12
      198 GETTABLEKS                       R27 R2 K52 ["memo"]
      200 GETTABLEKS                       R28 R2 K53 ["forwardRef"]
      202 MOVE                             R29 R26
      203 CALL                             R28 1 -1
      204 CALL                             R27 -1 -1
      205 RETURN                           R27 -1
