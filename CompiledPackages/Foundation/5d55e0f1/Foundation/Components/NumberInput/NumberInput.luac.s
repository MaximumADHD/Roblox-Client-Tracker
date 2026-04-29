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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["precision"]
        3 LOADN                            R4 10
        4 ORK                              R5 R2 K1 [0]
        5 POW                              R3 R4 R5
        6 MUL                              R6 R0 R3
        7 ADDK                             R5 R6 K2 [0.5]
        8 FASTCALL1                        MATH_FLOOR R5 ; [+2]
        9 GETIMPORT                        R4 K5 [math.floor]
       11 CALL                             R4 1 1
       12 DIV                              R1 R4 R3
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R4 R5 K6 ["step"]
       16 ADD                              R3 R0 R4
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R4 R5 K0 ["precision"]
       20 LOADN                            R6 10
       21 ORK                              R7 R4 K1 [0]
       22 POW                              R5 R6 R7
       23 MUL                              R8 R3 R5
       24 ADDK                             R7 R8 K2 [0.5]
       25 FASTCALL1                        MATH_FLOOR R7 ; [+2]
       26 GETIMPORT                        R6 K5 [math.floor]
       28 CALL                             R6 1 1
       29 DIV                              R2 R6 R5
       30 GETUPVAL                         R4 1
       31 MOVE                             R5 R0
       32 GETIMPORT                        R6 K8 [math.ceil]
       34 CALL                             R4 2 1
       35 GETUPVAL                         R6 0
       36 GETTABLEKS                       R5 R6 K0 ["precision"]
       38 LOADN                            R7 10
       39 ORK                              R8 R5 K1 [0]
       40 POW                              R6 R7 R8
       41 MUL                              R9 R4 R6
       42 ADDK                             R8 R9 K2 [0.5]
       43 FASTCALL1                        MATH_FLOOR R8 ; [+2]
       44 GETIMPORT                        R7 K5 [math.floor]
       46 CALL                             R7 1 1
       47 DIV                              R3 R7 R6
       48 JUMPIFEQ                         R1 R3 ; [+2]
       50 MOVE                             R2 R3
       51 GETUPVAL                         R4 2
       52 MOVE                             R5 R2
       53 CALL                             R4 1 -1
       54 RETURN                           R4 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["FoundationNumberInputBindableValue"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R1 R2 K1 ["value"]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 CALL                             R0 2 -1
       13 RETURN                           R0 -1
       14 GETUPVAL                         R2 2
       15 GETTABLEKS                       R1 R2 K1 ["value"]
       17 GETUPVAL                         R3 2
       18 GETTABLEKS                       R2 R3 K2 ["precision"]
       20 LOADN                            R4 10
       21 ORK                              R5 R2 K3 [0]
       22 POW                              R3 R4 R5
       23 MUL                              R6 R1 R3
       24 ADDK                             R5 R6 K4 [0.5]
       25 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       26 GETIMPORT                        R4 K7 [math.floor]
       28 CALL                             R4 1 1
       29 DIV                              R0 R4 R3
       30 GETUPVAL                         R4 2
       31 GETTABLEKS                       R3 R4 K1 ["value"]
       33 GETUPVAL                         R5 2
       34 GETTABLEKS                       R4 R5 K8 ["step"]
       36 ADD                              R2 R3 R4
       37 GETUPVAL                         R4 2
       38 GETTABLEKS                       R3 R4 K2 ["precision"]
       40 LOADN                            R5 10
       41 ORK                              R6 R3 K3 [0]
       42 POW                              R4 R5 R6
       43 MUL                              R7 R2 R4
       44 ADDK                             R6 R7 K4 [0.5]
       45 FASTCALL1                        MATH_FLOOR R6 ; [+2]
       46 GETIMPORT                        R5 K7 [math.floor]
       48 CALL                             R5 1 1
       49 DIV                              R1 R5 R4
       50 GETUPVAL                         R3 3
       51 GETUPVAL                         R5 2
       52 GETTABLEKS                       R4 R5 K1 ["value"]
       54 GETIMPORT                        R5 K10 [math.ceil]
       56 CALL                             R3 2 1
       57 GETUPVAL                         R5 2
       58 GETTABLEKS                       R4 R5 K2 ["precision"]
       60 LOADN                            R6 10
       61 ORK                              R7 R4 K3 [0]
       62 POW                              R5 R6 R7
       63 MUL                              R8 R3 R5
       64 ADDK                             R7 R8 K4 [0.5]
       65 FASTCALL1                        MATH_FLOOR R7 ; [+2]
       66 GETIMPORT                        R6 K7 [math.floor]
       68 CALL                             R6 1 1
       69 DIV                              R2 R6 R5
       70 JUMPIFEQ                         R0 R2 ; [+2]
       72 MOVE                             R1 R2
       73 GETUPVAL                         R3 4
       74 MOVE                             R4 R1
       75 CALL                             R3 1 -1
       76 RETURN                           R3 -1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["precision"]
        3 LOADN                            R4 10
        4 ORK                              R5 R2 K1 [0]
        5 POW                              R3 R4 R5
        6 MUL                              R6 R0 R3
        7 ADDK                             R5 R6 K2 [0.5]
        8 FASTCALL1                        MATH_FLOOR R5 ; [+2]
        9 GETIMPORT                        R4 K5 [math.floor]
       11 CALL                             R4 1 1
       12 DIV                              R1 R4 R3
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R4 R5 K6 ["step"]
       16 SUB                              R3 R0 R4
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R4 R5 K0 ["precision"]
       20 LOADN                            R6 10
       21 ORK                              R7 R4 K1 [0]
       22 POW                              R5 R6 R7
       23 MUL                              R8 R3 R5
       24 ADDK                             R7 R8 K2 [0.5]
       25 FASTCALL1                        MATH_FLOOR R7 ; [+2]
       26 GETIMPORT                        R6 K5 [math.floor]
       28 CALL                             R6 1 1
       29 DIV                              R2 R6 R5
       30 GETUPVAL                         R4 1
       31 MOVE                             R5 R0
       32 GETIMPORT                        R6 K5 [math.floor]
       34 CALL                             R4 2 1
       35 GETUPVAL                         R6 0
       36 GETTABLEKS                       R5 R6 K0 ["precision"]
       38 LOADN                            R7 10
       39 ORK                              R8 R5 K1 [0]
       40 POW                              R6 R7 R8
       41 MUL                              R9 R4 R6
       42 ADDK                             R8 R9 K2 [0.5]
       43 FASTCALL1                        MATH_FLOOR R8 ; [+2]
       44 GETIMPORT                        R7 K5 [math.floor]
       46 CALL                             R7 1 1
       47 DIV                              R3 R7 R6
       48 JUMPIFEQ                         R1 R3 ; [+2]
       50 MOVE                             R2 R3
       51 GETUPVAL                         R4 2
       52 MOVE                             R5 R2
       53 CALL                             R4 1 -1
       54 RETURN                           R4 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["FoundationNumberInputBindableValue"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R1 R2 K1 ["value"]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 CALL                             R0 2 -1
       13 RETURN                           R0 -1
       14 GETUPVAL                         R2 2
       15 GETTABLEKS                       R1 R2 K1 ["value"]
       17 GETUPVAL                         R3 2
       18 GETTABLEKS                       R2 R3 K2 ["precision"]
       20 LOADN                            R4 10
       21 ORK                              R5 R2 K3 [0]
       22 POW                              R3 R4 R5
       23 MUL                              R6 R1 R3
       24 ADDK                             R5 R6 K4 [0.5]
       25 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       26 GETIMPORT                        R4 K7 [math.floor]
       28 CALL                             R4 1 1
       29 DIV                              R0 R4 R3
       30 GETUPVAL                         R4 2
       31 GETTABLEKS                       R3 R4 K1 ["value"]
       33 GETUPVAL                         R5 2
       34 GETTABLEKS                       R4 R5 K8 ["step"]
       36 SUB                              R2 R3 R4
       37 GETUPVAL                         R4 2
       38 GETTABLEKS                       R3 R4 K2 ["precision"]
       40 LOADN                            R5 10
       41 ORK                              R6 R3 K3 [0]
       42 POW                              R4 R5 R6
       43 MUL                              R7 R2 R4
       44 ADDK                             R6 R7 K4 [0.5]
       45 FASTCALL1                        MATH_FLOOR R6 ; [+2]
       46 GETIMPORT                        R5 K7 [math.floor]
       48 CALL                             R5 1 1
       49 DIV                              R1 R5 R4
       50 GETUPVAL                         R3 3
       51 GETUPVAL                         R5 2
       52 GETTABLEKS                       R4 R5 K1 ["value"]
       54 GETIMPORT                        R5 K7 [math.floor]
       56 CALL                             R3 2 1
       57 GETUPVAL                         R5 2
       58 GETTABLEKS                       R4 R5 K2 ["precision"]
       60 LOADN                            R6 10
       61 ORK                              R7 R4 K3 [0]
       62 POW                              R5 R6 R7
       63 MUL                              R8 R3 R5
       64 ADDK                             R7 R8 K4 [0.5]
       65 FASTCALL1                        MATH_FLOOR R7 ; [+2]
       66 GETIMPORT                        R6 K7 [math.floor]
       68 CALL                             R6 1 1
       69 DIV                              R2 R6 R5
       70 JUMPIFEQ                         R0 R2 ; [+2]
       72 MOVE                             R1 R2
       73 GETUPVAL                         R3 4
       74 MOVE                             R4 R1
       75 CALL                             R3 1 -1
       76 RETURN                           R3 -1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["isDisabled"]
        3 JUMPIF                           R1 ; [+7]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K1 ["maximum"]
        7 JUMPIFEQ                         R0 R2 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["FoundationNumberInputBindableValue"]
        3 JUMPIFNOT                        R1 ; [+8]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R1 R2 K1 ["value"]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          UPVAL U2
       10 CALL                             R0 2 1
       11 RETURN                           R0 1
       12 GETUPVAL                         R1 2
       13 GETTABLEKS                       R0 R1 K2 ["isDisabled"]
       15 JUMPIF                           R0 ; [+10]
       16 GETUPVAL                         R2 2
       17 GETTABLEKS                       R1 R2 K1 ["value"]
       19 GETUPVAL                         R3 2
       20 GETTABLEKS                       R2 R3 K3 ["maximum"]
       22 JUMPIFEQ                         R1 R2 ; [+2]
       24 LOADB                            R0 0 +1
       25 LOADB                            R0 1
       26 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["isDisabled"]
        3 JUMPIF                           R1 ; [+7]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K1 ["minimum"]
        7 JUMPIFEQ                         R0 R2 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["FoundationNumberInputBindableValue"]
        3 JUMPIFNOT                        R1 ; [+8]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R1 R2 K1 ["value"]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          UPVAL U2
       10 CALL                             R0 2 1
       11 RETURN                           R0 1
       12 GETUPVAL                         R1 2
       13 GETTABLEKS                       R0 R1 K2 ["isDisabled"]
       15 JUMPIF                           R0 ; [+10]
       16 GETUPVAL                         R2 2
       17 GETTABLEKS                       R1 R2 K1 ["value"]
       19 GETUPVAL                         R3 2
       20 GETTABLEKS                       R2 R3 K3 ["minimum"]
       22 JUMPIFEQ                         R1 R2 ; [+2]
       24 LOADB                            R0 0 +1
       25 LOADB                            R0 1
       26 RETURN                           R0 1

PROTO_13:
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

PROTO_14:
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

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["FoundationNumberInputBindableValue"]
        4 JUMPIFNOT                        R3 ; [+6]
        5 GETUPVAL                         R2 2
        6 GETUPVAL                         R4 3
        7 GETTABLEKS                       R3 R4 K1 ["value"]
        9 CALL                             R2 1 1
       10 JUMP                             ; [+3]
       11 GETUPVAL                         R3 3
       12 GETTABLEKS                       R2 R3 K1 ["value"]
       14 FASTCALL1                        TOSTRING R2 ; [+2]
       15 GETIMPORT                        R1 K3 [tostring]
       17 CALL                             R1 1 1
       18 CALL                             R0 1 0
       19 GETUPVAL                         R1 3
       20 GETTABLEKS                       R0 R1 K4 ["onFocusGained"]
       22 JUMPIFNOT                        R0 ; [+4]
       23 GETUPVAL                         R1 3
       24 GETTABLEKS                       R0 R1 K4 ["onFocusGained"]
       26 CALL                             R0 0 0
       27 RETURN                           R0 0

PROTO_16:
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

PROTO_17:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R3 R4 K0 ["FoundationNumberInputBindableValue"]
        7 JUMPIFNOT                        R3 ; [+6]
        8 GETUPVAL                         R2 3
        9 GETUPVAL                         R4 4
       10 GETTABLEKS                       R3 R4 K1 ["value"]
       12 CALL                             R2 1 1
       13 JUMP                             ; [+3]
       14 GETUPVAL                         R3 4
       15 GETTABLEKS                       R2 R3 K1 ["value"]
       17 GETUPVAL                         R4 5
       18 GETTABLEKS                       R3 R4 K2 ["FocusLost"]
       20 CALL                             R1 2 0
       21 GETUPVAL                         R2 4
       22 GETTABLEKS                       R1 R2 K3 ["onFocusLost"]
       24 JUMPIFNOT                        R1 ; [+5]
       25 GETUPVAL                         R2 4
       26 GETTABLEKS                       R1 R2 K3 ["onFocusLost"]
       28 MOVE                             R2 R0
       29 CALL                             R1 1 0
       30 RETURN                           R0 0

PROTO_18:
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

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["FoundationNumberInputBindableValue"]
        3 JUMPIFNOT                        R1 ; [+4]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 2
        6 CALL                             R0 1 1
        7 JUMP                             ; [+1]
        8 GETUPVAL                         R0 2
        9 JUMPIFNOT                        R0 ; [+1]
       10 RETURN                           R0 0
       11 GETUPVAL                         R0 3
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K0 ["FoundationNumberInputBindableValue"]
       15 JUMPIFNOT                        R2 ; [+4]
       16 GETUPVAL                         R1 1
       17 GETUPVAL                         R2 4
       18 CALL                             R1 1 1
       19 JUMP                             ; [+1]
       20 GETUPVAL                         R1 4
       21 GETUPVAL                         R3 5
       22 GETTABLEKS                       R2 R3 K1 ["Activate"]
       24 CALL                             R0 2 0
       25 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["FoundationNumberInputBindableValue"]
        3 JUMPIFNOT                        R1 ; [+4]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 2
        6 CALL                             R0 1 1
        7 JUMP                             ; [+1]
        8 GETUPVAL                         R0 2
        9 JUMPIFNOT                        R0 ; [+1]
       10 RETURN                           R0 0
       11 GETUPVAL                         R0 3
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K0 ["FoundationNumberInputBindableValue"]
       15 JUMPIFNOT                        R2 ; [+4]
       16 GETUPVAL                         R1 1
       17 GETUPVAL                         R2 4
       18 CALL                             R1 1 1
       19 JUMP                             ; [+1]
       20 GETUPVAL                         R1 4
       21 GETUPVAL                         R3 5
       22 GETTABLEKS                       R2 R3 K1 ["Activate"]
       24 CALL                             R0 2 0
       25 RETURN                           R0 0

PROTO_21:
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

PROTO_22:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["value"]
        3 JUMPIFNOT                        R2 ; [+19]
        4 GETUPVAL                         R3 1
        5 DUPTABLE                         R4 K2 [{"position", "value"}]
        6 GETTABLEKS                       R5 R1 K3 ["X"]
        8 SETTABLEKS                       R5 R4 K1 ["position"]
       10 GETUPVAL                         R7 2
       11 GETTABLEKS                       R6 R7 K4 ["FoundationNumberInputBindableValue"]
       13 JUMPIFNOT                        R6 ; [+4]
       14 GETUPVAL                         R5 3
       15 MOVE                             R6 R2
       16 CALL                             R5 1 1
       17 JUMP                             ; [+1]
       18 MOVE                             R5 R2
       19 SETTABLEKS                       R5 R4 K0 ["value"]
       21 SETTABLEKS                       R4 R3 K5 ["current"]
       23 RETURN                           R0 0

PROTO_23:
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

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 LOADNIL                          R1
        6 SETTABLEKS                       R1 R0 K0 ["current"]
        8 RETURN                           R0 0

PROTO_25:
        0 LOADN                            R1 0
        1 JUMPIFNOT                        R0 ; [+33]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["maximum"]
        5 JUMPIFNOT                        R2 ; [+29]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K1 ["minimum"]
        9 JUMPIFNOT                        R2 ; [+25]
       10 GETUPVAL                         R2 1
       11 MOVE                             R3 R0
       12 CALL                             R2 1 1
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R3 R4 K0 ["maximum"]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R4 R5 K1 ["minimum"]
       19 JUMPIFNOTEQ                      R3 R4 ; [+3]
       21 LOADN                            R1 1
       22 JUMP                             ; [+12]
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R4 R5 K1 ["minimum"]
       26 SUB                              R3 R2 R4
       27 GETUPVAL                         R6 0
       28 GETTABLEKS                       R5 R6 K0 ["maximum"]
       30 GETUPVAL                         R7 0
       31 GETTABLEKS                       R6 R7 K1 ["minimum"]
       33 SUB                              R4 R5 R6
       34 DIV                              R1 R3 R4
       35 JUMPIFNOTEQKN                    R1 K2 [0] ; [+6]
       37 GETIMPORT                        R2 K5 [NumberSequence.new]
       39 GETUPVAL                         R3 2
       40 CALL                             R2 1 -1
       41 RETURN                           R2 -1
       42 JUMPIFNOTEQKN                    R1 K6 [1] ; [+6]
       44 GETIMPORT                        R2 K5 [NumberSequence.new]
       46 GETUPVAL                         R3 3
       47 CALL                             R2 1 -1
       48 RETURN                           R2 -1
       49 LOADN                            R2 0
       50 JUMPIFLT                         R2 R1 ; [+4]
       52 LOADN                            R2 1
       53 JUMPIFNOTLT                      R1 R2 ; [+44]
       55 NEWTABLE                         R2 0 3
       57 GETIMPORT                        R3 K8 [NumberSequenceKeypoint.new]
       59 LOADN                            R4 0
       60 GETUPVAL                         R5 3
       61 CALL                             R3 2 1
       62 GETIMPORT                        R4 K8 [NumberSequenceKeypoint.new]
       64 MOVE                             R5 R1
       65 GETUPVAL                         R6 3
       66 CALL                             R4 2 1
       67 GETIMPORT                        R5 K8 [NumberSequenceKeypoint.new]
       69 ADDK                             R7 R1 K9 [0.001]
       70 FASTCALL2K                       MATH_MIN R7 K6 ; [+4]
       72 LOADK                            R8 K6 [1]
       73 GETIMPORT                        R6 K12 [math.min]
       75 CALL                             R6 2 1
       76 GETUPVAL                         R7 2
       77 CALL                             R5 2 -1
       78 SETLIST                          R2 R3 -1 [1]
       80 LOADK                            R3 K13 [0.999]
       81 JUMPIFNOTLT                      R1 R3 ; [+11]
       83 MOVE                             R4 R2
       84 GETIMPORT                        R5 K8 [NumberSequenceKeypoint.new]
       86 LOADN                            R6 1
       87 GETUPVAL                         R7 2
       88 CALL                             R5 2 -1
       89 FASTCALL                         TABLE_INSERT ; [+2]
       90 GETIMPORT                        R3 K16 [table.insert]
       92 CALL                             R3 -1 0
       93 GETIMPORT                        R3 K5 [NumberSequence.new]
       95 MOVE                             R4 R2
       96 CALL                             R3 1 -1
       97 RETURN                           R3 -1
       98 GETIMPORT                        R2 K5 [NumberSequence.new]
      100 GETUPVAL                         R3 2
      101 CALL                             R2 1 -1
      102 RETURN                           R2 -1

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["FoundationNumberInputBindableValue"]
        3 JUMPIFNOT                        R0 ; [+11]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R1 R2 K1 ["value"]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          UPVAL U5
       13 CALL                             R0 2 -1
       14 RETURN                           R0 -1
       15 GETUPVAL                         R0 6
       16 JUMPIFNOTEQKN                    R0 K2 [0] ; [+6]
       18 GETIMPORT                        R0 K5 [NumberSequence.new]
       20 GETUPVAL                         R1 4
       21 CALL                             R0 1 -1
       22 RETURN                           R0 -1
       23 GETUPVAL                         R0 6
       24 JUMPIFNOTEQKN                    R0 K6 [1] ; [+6]
       26 GETIMPORT                        R0 K5 [NumberSequence.new]
       28 GETUPVAL                         R1 5
       29 CALL                             R0 1 -1
       30 RETURN                           R0 -1
       31 GETUPVAL                         R0 6
       32 LOADN                            R1 0
       33 JUMPIFLT                         R1 R0 ; [+5]
       35 GETUPVAL                         R0 6
       36 LOADN                            R1 1
       37 JUMPIFNOTLT                      R0 R1 ; [+46]
       39 NEWTABLE                         R0 0 3
       41 GETIMPORT                        R1 K8 [NumberSequenceKeypoint.new]
       43 LOADN                            R2 0
       44 GETUPVAL                         R3 5
       45 CALL                             R1 2 1
       46 GETIMPORT                        R2 K8 [NumberSequenceKeypoint.new]
       48 GETUPVAL                         R3 6
       49 GETUPVAL                         R4 5
       50 CALL                             R2 2 1
       51 GETIMPORT                        R3 K8 [NumberSequenceKeypoint.new]
       53 GETUPVAL                         R6 6
       54 ADDK                             R5 R6 K9 [0.001]
       55 FASTCALL2K                       MATH_MIN R5 K6 ; [+4]
       57 LOADK                            R6 K6 [1]
       58 GETIMPORT                        R4 K12 [math.min]
       60 CALL                             R4 2 1
       61 GETUPVAL                         R5 4
       62 CALL                             R3 2 -1
       63 SETLIST                          R0 R1 -1 [1]
       65 GETUPVAL                         R1 6
       66 LOADK                            R2 K13 [0.999]
       67 JUMPIFNOTLT                      R1 R2 ; [+11]
       69 MOVE                             R2 R0
       70 GETIMPORT                        R3 K8 [NumberSequenceKeypoint.new]
       72 LOADN                            R4 1
       73 GETUPVAL                         R5 4
       74 CALL                             R3 2 -1
       75 FASTCALL                         TABLE_INSERT ; [+2]
       76 GETIMPORT                        R1 K16 [table.insert]
       78 CALL                             R1 -1 0
       79 GETIMPORT                        R1 K5 [NumberSequence.new]
       81 MOVE                             R2 R0
       82 CALL                             R1 1 -1
       83 RETURN                           R1 -1
       84 GETIMPORT                        R0 K5 [NumberSequence.new]
       86 GETUPVAL                         R1 4
       87 CALL                             R0 1 -1
       88 RETURN                           R0 -1

PROTO_27:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["FoundationNumberInputBindableValue"]
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["isBinding"]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R1 R2 K2 ["value"]
       10 CALL                             R0 1 1
       11 GETUPVAL                         R1 3
       12 CALL                             R1 0 1
       13 JUMPIF                           R1 ; [+12]
       14 JUMPIF                           R0 ; [+11]
       15 GETUPVAL                         R1 4
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R2 R3 K3 ["formatAsString"]
       19 GETUPVAL                         R3 5
       20 GETUPVAL                         R5 2
       21 GETTABLEKS                       R4 R5 K2 ["value"]
       23 CALL                             R3 1 -1
       24 CALL                             R2 -1 -1
       25 CALL                             R1 -1 0
       26 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETTABLEKS                       R1 R0 K0 ["text"]
        5 RETURN                           R1 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R1 R2 K1 ["formatAsString"]
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R3 R0 K2 ["value"]
       12 CALL                             R2 1 -1
       13 CALL                             R1 -1 -1
       14 RETURN                           R1 -1

PROTO_29:
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

PROTO_30:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["Split"]
        4 JUMPIFEQ                         R2 R3 ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R2 R3 K1 ["createElement"]
       11 GETUPVAL                         R3 3
       12 DUPTABLE                         R4 K20 [{"text", "hasError", "variant", "size", "horizontalPadding", "onChanged", "onFocusLost", "onFocus", "onDragStarted", "onDrag", "onDragEnded", "onReturnPressed", "ref", "backgroundGradient", "trailingElement", "leadingElement", "isDisabled", "testId"}]
       13 GETUPVAL                         R7 4
       14 GETTABLEKS                       R6 R7 K21 ["FoundationNumberInputBindableValue"]
       16 JUMPIFNOT                        R6 ; [+16]
       17 GETUPVAL                         R5 5
       18 DUPTABLE                         R6 K23 [{"text", "value"}]
       19 GETUPVAL                         R7 6
       20 SETTABLEKS                       R7 R6 K2 ["text"]
       22 GETUPVAL                         R8 7
       23 GETTABLEKS                       R7 R8 K22 ["value"]
       25 SETTABLEKS                       R7 R6 K22 ["value"]
       27 NEWCLOSURE                       R7 P0
       28 CAPTURE                          UPVAL U8
       29 CAPTURE                          UPVAL U7
       30 CAPTURE                          UPVAL U9
       31 CALL                             R5 2 1
       32 JUMP                             ; [+8]
       33 GETUPVAL                         R5 6
       34 NEWCLOSURE                       R7 P1
       35 CAPTURE                          UPVAL U8
       36 CAPTURE                          UPVAL U7
       37 CAPTURE                          UPVAL U9
       38 NAMECALL                         R5 R5 K24 ["map"]
       40 CALL                             R5 2 1
       41 SETTABLEKS                       R5 R4 K2 ["text"]
       43 GETUPVAL                         R5 10
       44 SETTABLEKS                       R5 R4 K3 ["hasError"]
       46 GETUPVAL                         R7 4
       47 GETTABLEKS                       R6 R7 K25 ["FoundationNumberInputVariant"]
       49 JUMPIFNOT                        R6 ; [+4]
       50 GETUPVAL                         R6 7
       51 GETTABLEKS                       R5 R6 K4 ["variant"]
       53 JUMP                             ; [+1]
       54 LOADNIL                          R5
       55 SETTABLEKS                       R5 R4 K4 ["variant"]
       57 GETUPVAL                         R6 7
       58 GETTABLEKS                       R5 R6 K5 ["size"]
       60 SETTABLEKS                       R5 R4 K5 ["size"]
       62 DUPTABLE                         R5 K27 [{"left"}]
       63 GETUPVAL                         R9 4
       64 GETTABLEKS                       R8 R9 K28 ["FoundationInputVariantsConsolidateContainer"]
       66 JUMPIFNOT                        R8 ; [+4]
       67 GETUPVAL                         R8 11
       68 GETTABLEKS                       R7 R8 K29 ["container"]
       70 JUMP                             ; [+3]
       71 GETUPVAL                         R8 11
       72 GETTABLEKS                       R7 R8 K30 ["innerContainer"]
       74 GETTABLEKS                       R6 R7 K6 ["horizontalPadding"]
       76 SETTABLEKS                       R6 R5 K26 ["left"]
       78 SETTABLEKS                       R5 R4 K6 ["horizontalPadding"]
       80 GETUPVAL                         R5 12
       81 SETTABLEKS                       R5 R4 K7 ["onChanged"]
       83 GETUPVAL                         R5 13
       84 SETTABLEKS                       R5 R4 K8 ["onFocusLost"]
       86 GETUPVAL                         R5 14
       87 SETTABLEKS                       R5 R4 K9 ["onFocus"]
       89 GETUPVAL                         R7 7
       90 GETTABLEKS                       R6 R7 K31 ["isScrubbable"]
       92 JUMPIFNOT                        R6 ; [+2]
       93 GETUPVAL                         R5 15
       94 JUMP                             ; [+1]
       95 LOADNIL                          R5
       96 SETTABLEKS                       R5 R4 K10 ["onDragStarted"]
       98 GETUPVAL                         R7 7
       99 GETTABLEKS                       R6 R7 K31 ["isScrubbable"]
      101 JUMPIFNOT                        R6 ; [+2]
      102 GETUPVAL                         R5 16
      103 JUMP                             ; [+1]
      104 LOADNIL                          R5
      105 SETTABLEKS                       R5 R4 K11 ["onDrag"]
      107 GETUPVAL                         R7 7
      108 GETTABLEKS                       R6 R7 K31 ["isScrubbable"]
      110 JUMPIFNOT                        R6 ; [+2]
      111 GETUPVAL                         R5 17
      112 JUMP                             ; [+1]
      113 LOADNIL                          R5
      114 SETTABLEKS                       R5 R4 K12 ["onDragEnded"]
      116 GETUPVAL                         R6 7
      117 GETTABLEKS                       R5 R6 K13 ["onReturnPressed"]
      119 SETTABLEKS                       R5 R4 K13 ["onReturnPressed"]
      121 SETTABLEKS                       R0 R4 K14 ["ref"]
      123 GETUPVAL                         R7 7
      124 GETTABLEKS                       R6 R7 K31 ["isScrubbable"]
      126 JUMPIFNOT                        R6 ; [+29]
      127 GETUPVAL                         R6 18
      128 JUMPIFNOT                        R6 ; [+27]
      129 GETUPVAL                         R6 2
      130 GETTABLEKS                       R5 R6 K1 ["createElement"]
      132 LOADK                            R6 K32 ["UIGradient"]
      133 DUPTABLE                         R7 K36 [{"Color", "Transparency", "Rotation"}]
      134 GETIMPORT                        R8 K39 [ColorSequence.new]
      136 GETUPVAL                         R13 19
      137 GETTABLEKS                       R12 R13 K33 ["Color"]
      139 GETTABLEKS                       R11 R12 K40 ["Shift"]
      141 GETTABLEKS                       R10 R11 K41 ["Shift_300"]
      143 GETTABLEKS                       R9 R10 K42 ["Color3"]
      145 CALL                             R8 1 1
      146 SETTABLEKS                       R8 R7 K33 ["Color"]
      148 GETUPVAL                         R8 18
      149 SETTABLEKS                       R8 R7 K34 ["Transparency"]
      151 LOADN                            R8 0
      152 SETTABLEKS                       R8 R7 K35 ["Rotation"]
      154 CALL                             R5 2 1
      155 JUMP                             ; [+1]
      156 LOADNIL                          R5
      157 SETTABLEKS                       R5 R4 K15 ["backgroundGradient"]
      159 GETUPVAL                         R6 0
      160 GETUPVAL                         R8 1
      161 GETTABLEKS                       R7 R8 K43 ["Stacked"]
      163 JUMPIFNOTEQ                      R6 R7 ; [+3]
      165 GETUPVAL                         R5 20
      166 JUMP                             ; [+1]
      167 LOADNIL                          R5
      168 SETTABLEKS                       R5 R4 K16 ["trailingElement"]
      170 GETUPVAL                         R7 7
      171 GETTABLEKS                       R6 R7 K44 ["leadingIcon"]
      173 JUMPIFNOT                        R6 ; [+35]
      174 GETUPVAL                         R6 2
      175 GETTABLEKS                       R5 R6 K1 ["createElement"]
      177 GETUPVAL                         R6 21
      178 DUPTABLE                         R7 K46 [{"tag"}]
      179 LOADK                            R8 K47 ["row align-y-center size-0-full auto-x"]
      180 SETTABLEKS                       R8 R7 K45 ["tag"]
      182 GETUPVAL                         R9 2
      183 GETTABLEKS                       R8 R9 K1 ["createElement"]
      185 GETUPVAL                         R9 22
      186 DUPTABLE                         R10 K50 [{"name", "style", "size"}]
      187 GETUPVAL                         R12 7
      188 GETTABLEKS                       R11 R12 K44 ["leadingIcon"]
      190 SETTABLEKS                       R11 R10 K48 ["name"]
      192 GETUPVAL                         R13 11
      193 GETTABLEKS                       R12 R13 K51 ["icon"]
      195 GETTABLEKS                       R11 R12 K49 ["style"]
      197 SETTABLEKS                       R11 R10 K49 ["style"]
      199 GETUPVAL                         R13 11
      200 GETTABLEKS                       R12 R13 K51 ["icon"]
      202 GETTABLEKS                       R11 R12 K5 ["size"]
      204 SETTABLEKS                       R11 R10 K5 ["size"]
      206 CALL                             R8 2 -1
      207 CALL                             R5 -1 1
      208 JUMP                             ; [+1]
      209 LOADNIL                          R5
      210 SETTABLEKS                       R5 R4 K17 ["leadingElement"]
      212 GETUPVAL                         R6 7
      213 GETTABLEKS                       R5 R6 K18 ["isDisabled"]
      215 SETTABLEKS                       R5 R4 K18 ["isDisabled"]
      217 LOADK                            R6 K52 ["%*--field"]
      218 GETUPVAL                         R9 7
      219 GETTABLEKS                       R8 R9 K19 ["testId"]
      221 NAMECALL                         R6 R6 K53 ["format"]
      223 CALL                             R6 2 1
      224 MOVE                             R5 R6
      225 SETTABLEKS                       R5 R4 K19 ["testId"]
      227 CALL                             R2 2 1
      228 JUMPIFNOT                        R1 ; [+32]
      229 GETUPVAL                         R4 2
      230 GETTABLEKS                       R3 R4 K1 ["createElement"]
      232 GETUPVAL                         R4 21
      233 DUPTABLE                         R5 K55 [{"Size", "tag"}]
      234 GETIMPORT                        R6 K58 [UDim2.fromOffset]
      236 GETUPVAL                         R9 23
      237 GETTABLEKS                       R8 R9 K59 ["Offset"]
      239 GETUPVAL                         R10 24
      240 GETTABLEKS                       R9 R10 K59 ["Offset"]
      242 SUB                              R7 R8 R9
      243 LOADN                            R8 0
      244 CALL                             R6 2 1
      245 SETTABLEKS                       R6 R5 K54 ["Size"]
      247 LOADK                            R6 K60 ["row align-y-center gap-xsmall auto-y"]
      248 SETTABLEKS                       R6 R5 K45 ["tag"]
      250 DUPTABLE                         R6 K63 [{"InputField", "Controls"}]
      251 SETTABLEKS                       R2 R6 K61 ["InputField"]
      253 JUMPIFNOT                        R1 ; [+2]
      254 GETUPVAL                         R7 20
      255 JUMP                             ; [+1]
      256 LOADNIL                          R7
      257 SETTABLEKS                       R7 R6 K62 ["Controls"]
      259 CALL                             R3 3 1
      260 RETURN                           R3 1
      261 MOVE                             R3 R2
      262 RETURN                           R3 1

PROTO_31:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R3 R4 K0 ["FoundationNumberInputVariant"]
        7 JUMPIFNOT                        R3 ; [+9]
        8 GETTABLEKS                       R3 R2 K1 ["variant"]
       10 JUMPIFNOTEQKNIL                  R3 ; [+6]
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R3 R4 K2 ["Standard"]
       15 SETTABLEKS                       R3 R2 K1 ["variant"]
       17 GETUPVAL                         R3 4
       18 CALL                             R3 0 1
       19 GETUPVAL                         R4 5
       20 MOVE                             R5 R3
       21 GETTABLEKS                       R6 R2 K3 ["size"]
       23 GETUPVAL                         R9 2
       24 GETTABLEKS                       R8 R9 K0 ["FoundationNumberInputVariant"]
       26 JUMPIFNOT                        R8 ; [+3]
       27 GETTABLEKS                       R7 R2 K1 ["variant"]
       29 JUMP                             ; [+1]
       30 LOADNIL                          R7
       31 CALL                             R4 3 1
       32 GETUPVAL                         R5 6
       33 MOVE                             R6 R3
       34 GETTABLEKS                       R7 R2 K3 ["size"]
       36 GETTABLEKS                       R8 R2 K4 ["controlsVariant"]
       38 CALL                             R5 3 1
       39 GETUPVAL                         R7 7
       40 GETTABLEKS                       R6 R7 K5 ["useRef"]
       42 LOADNIL                          R7
       43 CALL                             R6 1 1
       44 GETUPVAL                         R8 8
       45 GETTABLEKS                       R7 R8 K6 ["useComposedRef"]
       47 MOVE                             R8 R6
       48 GETTABLEKS                       R9 R2 K7 ["textBoxRef"]
       50 CALL                             R7 2 1
       51 GETUPVAL                         R9 7
       52 GETTABLEKS                       R8 R9 K5 ["useRef"]
       54 LOADNIL                          R9
       55 CALL                             R8 1 1
       56 GETUPVAL                         R10 7
       57 GETTABLEKS                       R9 R10 K8 ["useCallback"]
       59 NEWCLOSURE                       R10 P0
       60 CAPTURE                          VAL R6
       61 NEWTABLE                         R11 0 0
       63 CALL                             R9 2 1
       64 GETUPVAL                         R11 7
       65 GETTABLEKS                       R10 R11 K9 ["useState"]
       67 LOADB                            R11 0
       68 CALL                             R10 1 2
       69 GETTABLEKS                       R13 R2 K10 ["hasError"]
       71 OR                               R12 R13 R10
       72 GETTABLEKS                       R13 R2 K4 ["controlsVariant"]
       74 GETUPVAL                         R15 7
       75 GETTABLEKS                       R14 R15 K8 ["useCallback"]
       77 NEWCLOSURE                       R15 P1
       78 CAPTURE                          VAL R2
       79 NEWTABLE                         R16 0 2
       81 GETTABLEKS                       R17 R2 K11 ["minimum"]
       83 GETTABLEKS                       R18 R2 K12 ["maximum"]
       85 SETLIST                          R16 R17 2 [1]
       87 CALL                             R14 2 1
       88 GETUPVAL                         R16 7
       89 GETTABLEKS                       R15 R16 K8 ["useCallback"]
       91 NEWCLOSURE                       R16 P2
       92 CAPTURE                          VAL R2
       93 NEWTABLE                         R17 0 1
       95 GETTABLEKS                       R18 R2 K13 ["step"]
       97 SETLIST                          R17 R18 1 [1]
       99 CALL                             R15 2 1
      100 GETUPVAL                         R17 7
      101 GETTABLEKS                       R16 R17 K14 ["useMemo"]
      103 NEWCLOSURE                       R17 P3
      104 CAPTURE                          UPVAL U2
      105 CAPTURE                          UPVAL U9
      106 CAPTURE                          VAL R2
      107 CAPTURE                          VAL R15
      108 CAPTURE                          VAL R14
      109 NEWTABLE                         R18 0 5
      111 GETTABLEKS                       R19 R2 K15 ["value"]
      113 GETTABLEKS                       R20 R2 K13 ["step"]
      115 GETTABLEKS                       R21 R2 K16 ["precision"]
      117 MOVE                             R22 R14
      118 MOVE                             R23 R15
      119 SETLIST                          R18 R19 5 [1]
      121 CALL                             R16 2 1
      122 GETUPVAL                         R18 7
      123 GETTABLEKS                       R17 R18 K14 ["useMemo"]
      125 NEWCLOSURE                       R18 P4
      126 CAPTURE                          UPVAL U2
      127 CAPTURE                          UPVAL U9
      128 CAPTURE                          VAL R2
      129 CAPTURE                          VAL R15
      130 CAPTURE                          VAL R14
      131 NEWTABLE                         R19 0 5
      133 GETTABLEKS                       R20 R2 K15 ["value"]
      135 GETTABLEKS                       R21 R2 K13 ["step"]
      137 GETTABLEKS                       R22 R2 K16 ["precision"]
      139 MOVE                             R23 R14
      140 MOVE                             R24 R15
      141 SETLIST                          R19 R20 5 [1]
      143 CALL                             R17 2 1
      144 GETUPVAL                         R19 7
      145 GETTABLEKS                       R18 R19 K14 ["useMemo"]
      147 NEWCLOSURE                       R19 P5
      148 CAPTURE                          UPVAL U2
      149 CAPTURE                          UPVAL U9
      150 CAPTURE                          VAL R2
      151 NEWTABLE                         R20 0 3
      153 GETTABLEKS                       R21 R2 K17 ["isDisabled"]
      155 GETTABLEKS                       R22 R2 K15 ["value"]
      157 GETTABLEKS                       R23 R2 K12 ["maximum"]
      159 SETLIST                          R20 R21 3 [1]
      161 CALL                             R18 2 1
      162 GETUPVAL                         R20 7
      163 GETTABLEKS                       R19 R20 K14 ["useMemo"]
      165 NEWCLOSURE                       R20 P6
      166 CAPTURE                          UPVAL U2
      167 CAPTURE                          UPVAL U9
      168 CAPTURE                          VAL R2
      169 NEWTABLE                         R21 0 3
      171 GETTABLEKS                       R22 R2 K17 ["isDisabled"]
      173 GETTABLEKS                       R23 R2 K15 ["value"]
      175 GETTABLEKS                       R24 R2 K11 ["minimum"]
      177 SETLIST                          R21 R22 3 [1]
      179 CALL                             R19 2 1
      180 GETUPVAL                         R21 7
      181 GETTABLEKS                       R20 R21 K8 ["useCallback"]
      183 NEWCLOSURE                       R21 P7
      184 CAPTURE                          VAL R2
      185 NEWTABLE                         R22 0 3
      187 GETTABLEKS                       R23 R2 K11 ["minimum"]
      189 GETTABLEKS                       R24 R2 K12 ["maximum"]
      191 GETTABLEKS                       R25 R2 K16 ["precision"]
      193 SETLIST                          R22 R23 3 [1]
      195 CALL                             R20 2 1
      196 GETUPVAL                         R22 7
      197 GETTABLEKS                       R21 R22 K18 ["useBinding"]
      199 GETTABLEKS                       R22 R2 K19 ["formatAsString"]
      201 MOVE                             R23 R20
      202 GETUPVAL                         R26 2
      203 GETTABLEKS                       R25 R26 K20 ["FoundationNumberInputBindableValue"]
      205 JUMPIFNOT                        R25 ; [+5]
      206 GETUPVAL                         R24 10
      207 GETTABLEKS                       R25 R2 K15 ["value"]
      209 CALL                             R24 1 1
      210 JUMP                             ; [+2]
      211 GETTABLEKS                       R24 R2 K15 ["value"]
      213 CALL                             R23 1 -1
      214 CALL                             R22 -1 -1
      215 CALL                             R21 -1 2
      216 GETTABLEKS                       R24 R2 K21 ["width"]
      218 JUMPIFNOT                        R24 ; [+3]
      219 GETTABLEKS                       R23 R2 K21 ["width"]
      221 JUMP                             ; [+8]
      222 GETIMPORT                        R23 K24 [UDim.new]
      224 LOADN                            R24 0
      225 GETTABLEKS                       R26 R5 K25 ["container"]
      227 GETTABLEKS                       R25 R26 K21 ["width"]
      229 CALL                             R23 2 1
      230 GETUPVAL                         R26 2
      231 GETTABLEKS                       R25 R26 K20 ["FoundationNumberInputBindableValue"]
      233 JUMPIF                           R25 ; [+19]
      234 GETUPVAL                         R25 7
      235 GETTABLEKS                       R24 R25 K14 ["useMemo"]
      237 NEWCLOSURE                       R25 P8
      238 CAPTURE                          VAL R2
      239 CAPTURE                          VAL R14
      240 NEWTABLE                         R26 0 4
      242 GETTABLEKS                       R27 R2 K15 ["value"]
      244 GETTABLEKS                       R28 R2 K12 ["maximum"]
      246 GETTABLEKS                       R29 R2 K11 ["minimum"]
      248 MOVE                             R30 R14
      249 SETLIST                          R26 R27 4 [1]
      251 CALL                             R24 2 1
      252 JUMP                             ; [+1]
      253 LOADNIL                          R24
      254 GETUPVAL                         R26 7
      255 GETTABLEKS                       R25 R26 K8 ["useCallback"]
      257 NEWCLOSURE                       R26 P9
      258 CAPTURE                          VAL R22
      259 CAPTURE                          UPVAL U2
      260 CAPTURE                          UPVAL U10
      261 CAPTURE                          VAL R2
      262 NEWTABLE                         R27 0 2
      264 GETTABLEKS                       R28 R2 K26 ["onFocusGained"]
      266 GETTABLEKS                       R29 R2 K15 ["value"]
      268 SETLIST                          R27 R28 2 [1]
      270 CALL                             R25 2 1
      271 GETUPVAL                         R27 7
      272 GETTABLEKS                       R26 R27 K8 ["useCallback"]
      274 NEWCLOSURE                       R27 P10
      275 CAPTURE                          VAL R20
      276 CAPTURE                          VAL R22
      277 CAPTURE                          VAL R9
      278 CAPTURE                          VAL R2
      279 NEWTABLE                         R28 0 4
      281 GETTABLEKS                       R29 R2 K27 ["onChanged"]
      283 GETTABLEKS                       R30 R2 K19 ["formatAsString"]
      285 MOVE                             R31 R20
      286 MOVE                             R32 R9
      287 SETLIST                          R28 R29 4 [1]
      289 CALL                             R26 2 1
      290 GETUPVAL                         R28 7
      291 GETTABLEKS                       R27 R28 K8 ["useCallback"]
      293 NEWCLOSURE                       R28 P11
      294 CAPTURE                          VAL R11
      295 CAPTURE                          VAL R26
      296 CAPTURE                          UPVAL U2
      297 CAPTURE                          UPVAL U10
      298 CAPTURE                          VAL R2
      299 CAPTURE                          UPVAL U11
      300 NEWTABLE                         R29 0 4
      302 MOVE                             R30 R26
      303 GETTABLEKS                       R31 R2 K28 ["onFocusLost"]
      305 GETTABLEKS                       R32 R2 K15 ["value"]
      307 MOVE                             R33 R20
      308 SETLIST                          R29 R30 4 [1]
      310 CALL                             R27 2 1
      311 GETUPVAL                         R29 7
      312 GETTABLEKS                       R28 R29 K8 ["useCallback"]
      314 NEWCLOSURE                       R29 P12
      315 CAPTURE                          VAL R22
      316 CAPTURE                          VAL R9
      317 CAPTURE                          VAL R11
      318 CAPTURE                          VAL R2
      319 CAPTURE                          UPVAL U11
      320 NEWTABLE                         R30 0 2
      322 MOVE                             R31 R9
      323 GETTABLEKS                       R32 R2 K27 ["onChanged"]
      325 SETLIST                          R30 R31 2 [1]
      327 CALL                             R28 2 1
      328 GETUPVAL                         R30 7
      329 GETTABLEKS                       R29 R30 K8 ["useCallback"]
      331 NEWCLOSURE                       R30 P13
      332 CAPTURE                          UPVAL U2
      333 CAPTURE                          UPVAL U10
      334 CAPTURE                          VAL R18
      335 CAPTURE                          VAL R26
      336 CAPTURE                          VAL R16
      337 CAPTURE                          UPVAL U11
      338 NEWTABLE                         R31 0 3
      340 MOVE                             R32 R18
      341 MOVE                             R33 R16
      342 MOVE                             R34 R26
      343 SETLIST                          R31 R32 3 [1]
      345 CALL                             R29 2 1
      346 GETUPVAL                         R31 7
      347 GETTABLEKS                       R30 R31 K8 ["useCallback"]
      349 NEWCLOSURE                       R31 P14
      350 CAPTURE                          UPVAL U2
      351 CAPTURE                          UPVAL U10
      352 CAPTURE                          VAL R19
      353 CAPTURE                          VAL R26
      354 CAPTURE                          VAL R17
      355 CAPTURE                          UPVAL U11
      356 NEWTABLE                         R32 0 3
      358 MOVE                             R33 R19
      359 MOVE                             R34 R17
      360 MOVE                             R35 R26
      361 SETLIST                          R32 R33 3 [1]
      363 CALL                             R30 2 1
      364 GETUPVAL                         R32 7
      365 GETTABLEKS                       R31 R32 K29 ["createElement"]
      367 GETUPVAL                         R32 12
      368 DUPTABLE                         R33 K33 [{"variant", "controlsVariant", "size", "increment", "decrement", "testId"}]
      369 GETUPVAL                         R36 2
      370 GETTABLEKS                       R35 R36 K0 ["FoundationNumberInputVariant"]
      372 JUMPIFNOT                        R35 ; [+3]
      373 GETTABLEKS                       R34 R2 K1 ["variant"]
      375 JUMP                             ; [+1]
      376 LOADNIL                          R34
      377 SETTABLEKS                       R34 R33 K1 ["variant"]
      379 SETTABLEKS                       R13 R33 K4 ["controlsVariant"]
      381 GETTABLEKS                       R34 R2 K3 ["size"]
      383 SETTABLEKS                       R34 R33 K3 ["size"]
      385 DUPTABLE                         R34 K35 [{"isDisabled", "onClick"}]
      386 SETTABLEKS                       R18 R34 K17 ["isDisabled"]
      388 SETTABLEKS                       R29 R34 K34 ["onClick"]
      390 SETTABLEKS                       R34 R33 K30 ["increment"]
      392 DUPTABLE                         R34 K35 [{"isDisabled", "onClick"}]
      393 SETTABLEKS                       R19 R34 K17 ["isDisabled"]
      395 SETTABLEKS                       R30 R34 K34 ["onClick"]
      397 SETTABLEKS                       R34 R33 K31 ["decrement"]
      399 GETTABLEKS                       R34 R2 K32 ["testId"]
      401 SETTABLEKS                       R34 R33 K32 ["testId"]
      403 CALL                             R31 2 1
      404 GETUPVAL                         R33 7
      405 GETTABLEKS                       R32 R33 K14 ["useMemo"]
      407 NEWCLOSURE                       R33 P15
      408 CAPTURE                          VAL R13
      409 CAPTURE                          UPVAL U13
      410 CAPTURE                          VAL R5
      411 CAPTURE                          VAL R3
      412 NEWTABLE                         R34 0 4
      414 MOVE                             R35 R3
      415 MOVE                             R36 R13
      416 GETTABLEKS                       R38 R5 K36 ["splitButton"]
      418 GETTABLEKS                       R37 R38 K3 ["size"]
      420 GETTABLEKS                       R39 R3 K37 ["Gap"]
      422 GETTABLEKS                       R38 R39 K38 ["XSmall"]
      424 SETLIST                          R34 R35 4 [1]
      426 CALL                             R32 2 1
      427 GETUPVAL                         R34 7
      428 GETTABLEKS                       R33 R34 K8 ["useCallback"]
      430 NEWCLOSURE                       R34 P16
      431 CAPTURE                          VAL R2
      432 CAPTURE                          VAL R8
      433 CAPTURE                          UPVAL U2
      434 CAPTURE                          UPVAL U10
      435 NEWTABLE                         R35 0 1
      437 GETTABLEKS                       R36 R2 K15 ["value"]
      439 SETLIST                          R35 R36 1 [1]
      441 CALL                             R33 2 1
      442 GETUPVAL                         R35 7
      443 GETTABLEKS                       R34 R35 K8 ["useCallback"]
      445 NEWCLOSURE                       R35 P17
      446 CAPTURE                          VAL R8
      447 CAPTURE                          UPVAL U14
      448 CAPTURE                          VAL R2
      449 CAPTURE                          VAL R26
      450 CAPTURE                          UPVAL U11
      451 NEWTABLE                         R36 0 3
      453 MOVE                             R37 R26
      454 GETTABLEKS                       R38 R2 K13 ["step"]
      456 MOVE                             R39 R20
      457 SETLIST                          R36 R37 3 [1]
      459 CALL                             R34 2 1
      460 GETUPVAL                         R36 7
      461 GETTABLEKS                       R35 R36 K8 ["useCallback"]
      463 NEWCLOSURE                       R36 P18
      464 CAPTURE                          VAL R8
      465 NEWTABLE                         R37 0 0
      467 CALL                             R35 2 1
      468 GETTABLEKS                       R39 R3 K39 ["Color"]
      470 GETTABLEKS                       R38 R39 K40 ["Shift"]
      472 GETTABLEKS                       R37 R38 K41 ["Shift_300"]
      474 GETTABLEKS                       R36 R37 K42 ["Transparency"]
      476 GETTABLEKS                       R40 R3 K39 ["Color"]
      478 GETTABLEKS                       R39 R40 K40 ["Shift"]
      480 GETTABLEKS                       R38 R39 K43 ["Shift_100"]
      482 GETTABLEKS                       R37 R38 K42 ["Transparency"]
      484 GETUPVAL                         R39 7
      485 GETTABLEKS                       R38 R39 K14 ["useMemo"]
      487 NEWCLOSURE                       R39 P19
      488 CAPTURE                          UPVAL U2
      489 CAPTURE                          UPVAL U9
      490 CAPTURE                          VAL R2
      491 CAPTURE                          VAL R14
      492 CAPTURE                          VAL R37
      493 CAPTURE                          VAL R36
      494 CAPTURE                          VAL R24
      495 NEWTABLE                         R40 0 7
      497 MOVE                             R41 R36
      498 MOVE                             R42 R37
      499 GETTABLEKS                       R43 R2 K15 ["value"]
      501 MOVE                             R44 R14
      502 GETTABLEKS                       R45 R2 K12 ["maximum"]
      504 GETTABLEKS                       R46 R2 K11 ["minimum"]
      506 GETUPVAL                         R49 2
      507 GETTABLEKS                       R48 R49 K20 ["FoundationNumberInputBindableValue"]
      509 JUMPIFNOT                        R48 ; [+2]
      510 LOADNIL                          R47
      511 JUMP                             ; [+1]
      512 MOVE                             R47 R24
      513 SETLIST                          R40 R41 7 [1]
      515 CALL                             R38 2 1
      516 GETUPVAL                         R40 7
      517 GETTABLEKS                       R39 R40 K44 ["useEffect"]
      519 NEWCLOSURE                       R40 P20
      520 CAPTURE                          UPVAL U2
      521 CAPTURE                          UPVAL U15
      522 CAPTURE                          VAL R2
      523 CAPTURE                          VAL R9
      524 CAPTURE                          VAL R22
      525 CAPTURE                          VAL R20
      526 NEWTABLE                         R41 0 4
      528 GETTABLEKS                       R42 R2 K15 ["value"]
      530 GETTABLEKS                       R43 R2 K19 ["formatAsString"]
      532 MOVE                             R44 R20
      533 MOVE                             R45 R9
      534 SETLIST                          R41 R42 4 [1]
      536 CALL                             R39 2 0
      537 GETUPVAL                         R40 7
      538 GETTABLEKS                       R39 R40 K29 ["createElement"]
      540 GETUPVAL                         R40 16
      541 GETUPVAL                         R41 17
      542 MOVE                             R42 R2
      543 DUPTABLE                         R43 K50 [{"width", "ref", "hasError", "label", "size", "isRequired", "isDisabled", "hint", "textBoxRef", "input"}]
      544 SETTABLEKS                       R23 R43 K21 ["width"]
      546 SETTABLEKS                       R1 R43 K45 ["ref"]
      548 SETTABLEKS                       R12 R43 K10 ["hasError"]
      550 GETTABLEKS                       R44 R2 K46 ["label"]
      552 SETTABLEKS                       R44 R43 K46 ["label"]
      554 GETUPVAL                         R44 18
      555 GETTABLEKS                       R45 R2 K3 ["size"]
      557 CALL                             R44 1 1
      558 SETTABLEKS                       R44 R43 K3 ["size"]
      560 GETTABLEKS                       R44 R2 K47 ["isRequired"]
      562 SETTABLEKS                       R44 R43 K47 ["isRequired"]
      564 GETUPVAL                         R46 2
      565 GETTABLEKS                       R45 R46 K51 ["FoundationNumberInputDisabledField"]
      567 JUMPIFNOT                        R45 ; [+3]
      568 GETTABLEKS                       R44 R2 K17 ["isDisabled"]
      570 JUMP                             ; [+1]
      571 LOADNIL                          R44
      572 SETTABLEKS                       R44 R43 K17 ["isDisabled"]
      574 GETTABLEKS                       R44 R2 K48 ["hint"]
      576 SETTABLEKS                       R44 R43 K48 ["hint"]
      578 SETTABLEKS                       R7 R43 K7 ["textBoxRef"]
      580 NEWCLOSURE                       R44 P21
      581 CAPTURE                          VAL R13
      582 CAPTURE                          UPVAL U13
      583 CAPTURE                          UPVAL U7
      584 CAPTURE                          UPVAL U19
      585 CAPTURE                          UPVAL U2
      586 CAPTURE                          UPVAL U20
      587 CAPTURE                          VAL R21
      588 CAPTURE                          VAL R2
      589 CAPTURE                          VAL R9
      590 CAPTURE                          VAL R20
      591 CAPTURE                          VAL R12
      592 CAPTURE                          VAL R4
      593 CAPTURE                          VAL R28
      594 CAPTURE                          VAL R27
      595 CAPTURE                          VAL R25
      596 CAPTURE                          VAL R33
      597 CAPTURE                          VAL R34
      598 CAPTURE                          VAL R35
      599 CAPTURE                          VAL R38
      600 CAPTURE                          VAL R3
      601 CAPTURE                          VAL R31
      602 CAPTURE                          UPVAL U21
      603 CAPTURE                          UPVAL U22
      604 CAPTURE                          VAL R23
      605 CAPTURE                          VAL R32
      606 SETTABLEKS                       R44 R43 K49 ["input"]
      608 CALL                             R41 2 -1
      609 CALL                             R39 -1 -1
      610 RETURN                           R39 -1

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
       21 GETTABLEKS                       R5 R1 K9 ["ReactUtils"]
       23 CALL                             R4 1 1
       24 GETTABLEKS                       R5 R0 K10 ["Components"]
       26 GETIMPORT                        R6 K6 [require]
       28 GETTABLEKS                       R8 R0 K11 ["Utility"]
       30 GETTABLEKS                       R7 R8 K12 ["withCommonProps"]
       32 CALL                             R6 1 1
       33 GETIMPORT                        R7 K6 [require]
       35 GETTABLEKS                       R9 R0 K11 ["Utility"]
       37 GETTABLEKS                       R8 R9 K13 ["withDefaults"]
       39 CALL                             R7 1 1
       40 GETIMPORT                        R8 K6 [require]
       42 GETTABLEKS                       R10 R0 K14 ["Enums"]
       44 GETTABLEKS                       R9 R10 K15 ["InputSize"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K6 [require]
       49 GETTABLEKS                       R11 R0 K14 ["Enums"]
       51 GETTABLEKS                       R10 R11 K16 ["InputLabelSize"]
       53 CALL                             R9 1 1
       54 GETIMPORT                        R10 K6 [require]
       56 GETTABLEKS                       R12 R0 K14 ["Enums"]
       58 GETTABLEKS                       R11 R12 K17 ["InputVariant"]
       60 CALL                             R10 1 1
       61 GETIMPORT                        R11 K6 [require]
       63 GETTABLEKS                       R13 R0 K14 ["Enums"]
       65 GETTABLEKS                       R12 R13 K18 ["NumberInputControlsVariant"]
       67 CALL                             R11 1 1
       68 GETIMPORT                        R12 K6 [require]
       70 GETTABLEKS                       R14 R0 K14 ["Enums"]
       72 GETTABLEKS                       R13 R14 K19 ["OnChangeCallbackReason"]
       74 CALL                             R12 1 1
       75 GETIMPORT                        R13 K6 [require]
       77 GETTABLEKS                       R15 R0 K11 ["Utility"]
       79 GETTABLEKS                       R14 R15 K20 ["Flags"]
       81 CALL                             R13 1 1
       82 GETIMPORT                        R14 K6 [require]
       84 GETTABLEKS                       R15 R5 K21 ["Icon"]
       86 CALL                             R14 1 1
       87 GETIMPORT                        R15 K6 [require]
       89 GETTABLEKS                       R16 R5 K22 ["InputField"]
       91 CALL                             R15 1 1
       92 GETIMPORT                        R16 K6 [require]
       94 GETTABLEKS                       R17 R5 K23 ["InternalTextInput"]
       96 CALL                             R16 1 1
       97 GETIMPORT                        R17 K6 [require]
       99 GETTABLEKS                       R18 R5 K24 ["Types"]
      101 CALL                             R17 1 1
      102 GETIMPORT                        R18 K6 [require]
      104 GETTABLEKS                       R19 R5 K25 ["View"]
      106 CALL                             R18 1 1
      107 GETIMPORT                        R19 K6 [require]
      109 GETTABLEKS                       R21 R0 K11 ["Utility"]
      111 GETTABLEKS                       R20 R21 K26 ["getBindableValue"]
      113 CALL                             R19 1 1
      114 GETIMPORT                        R20 K6 [require]
      116 GETTABLEKS                       R22 R0 K11 ["Utility"]
      118 GETTABLEKS                       R21 R22 K27 ["getInputTextSize"]
      120 CALL                             R20 1 1
      121 GETIMPORT                        R21 K6 [require]
      123 GETTABLEKS                       R23 R0 K11 ["Utility"]
      125 GETTABLEKS                       R22 R23 K28 ["joinBindables"]
      127 CALL                             R21 1 1
      128 GETIMPORT                        R22 K6 [require]
      130 GETTABLEKS                       R24 R0 K11 ["Utility"]
      132 GETTABLEKS                       R23 R24 K29 ["mapBindable"]
      134 CALL                             R22 1 1
      135 GETIMPORT                        R23 K6 [require]
      137 GETTABLEKS                       R25 R5 K30 ["TextInput"]
      139 GETTABLEKS                       R24 R25 K31 ["useTextInputVariants"]
      141 CALL                             R23 1 1
      142 GETIMPORT                        R24 K6 [require]
      144 GETTABLEKS                       R27 R0 K32 ["Providers"]
      146 GETTABLEKS                       R26 R27 K33 ["Style"]
      148 GETTABLEKS                       R25 R26 K34 ["useTokens"]
      150 CALL                             R24 1 1
      151 GETIMPORT                        R25 K6 [require]
      153 GETIMPORT                        R28 K1 [script]
      155 GETTABLEKS                       R27 R28 K4 ["Parent"]
      157 GETTABLEKS                       R26 R27 K35 ["NumberInputControls"]
      159 CALL                             R25 1 1
      160 GETIMPORT                        R26 K6 [require]
      162 GETIMPORT                        R29 K1 [script]
      164 GETTABLEKS                       R28 R29 K4 ["Parent"]
      166 GETTABLEKS                       R27 R28 K36 ["useNumberInputVariants"]
      168 CALL                             R26 1 1
      169 GETIMPORT                        R27 K6 [require]
      171 GETIMPORT                        R30 K1 [script]
      173 GETTABLEKS                       R29 R30 K4 ["Parent"]
      175 GETTABLEKS                       R28 R29 K37 ["calculateNumberInputValueFromPositions"]
      177 CALL                             R27 1 1
      178 DUPCLOSURE                       R28 K38 [PROTO_0]
      179 DUPCLOSURE                       R29 K39 [PROTO_1]
      180 DUPTABLE                         R30 K51 [{"variant", "controlsVariant", "size", "minimum", "maximum", "step", "precision", "value", "formatAsString", "isScrubbable", "testId"}]
      181 GETTABLEKS                       R32 R13 K52 ["FoundationNumberInputVariant"]
      183 JUMPIFNOT                        R32 ; [+3]
      184 GETTABLEKS                       R31 R10 K53 ["Standard"]
      186 JUMP                             ; [+1]
      187 LOADNIL                          R31
      188 SETTABLEKS                       R31 R30 K40 ["variant"]
      190 GETTABLEKS                       R31 R11 K54 ["Stacked"]
      192 SETTABLEKS                       R31 R30 K41 ["controlsVariant"]
      194 GETTABLEKS                       R31 R8 K55 ["Large"]
      196 SETTABLEKS                       R31 R30 K42 ["size"]
      198 LOADK                            R31 K56 [-∞]
      199 SETTABLEKS                       R31 R30 K43 ["minimum"]
      201 LOADK                            R31 K57 [∞]
      202 SETTABLEKS                       R31 R30 K44 ["maximum"]
      204 LOADN                            R31 1
      205 SETTABLEKS                       R31 R30 K45 ["step"]
      207 LOADN                            R31 3
      208 SETTABLEKS                       R31 R30 K46 ["precision"]
      210 LOADN                            R31 0
      211 SETTABLEKS                       R31 R30 K47 ["value"]
      213 SETTABLEKS                       R29 R30 K48 ["formatAsString"]
      215 LOADB                            R31 0
      216 SETTABLEKS                       R31 R30 K49 ["isScrubbable"]
      218 LOADK                            R31 K58 ["--foundation-number-input"]
      219 SETTABLEKS                       R31 R30 K50 ["testId"]
      221 DUPCLOSURE                       R31 K59 [PROTO_31]
      222 CAPTURE                          VAL R7
      223 CAPTURE                          VAL R30
      224 CAPTURE                          VAL R13
      225 CAPTURE                          VAL R10
      226 CAPTURE                          VAL R24
      227 CAPTURE                          VAL R23
      228 CAPTURE                          VAL R26
      229 CAPTURE                          VAL R2
      230 CAPTURE                          VAL R4
      231 CAPTURE                          VAL R22
      232 CAPTURE                          VAL R19
      233 CAPTURE                          VAL R12
      234 CAPTURE                          VAL R25
      235 CAPTURE                          VAL R11
      236 CAPTURE                          VAL R27
      237 CAPTURE                          VAL R3
      238 CAPTURE                          VAL R15
      239 CAPTURE                          VAL R6
      240 CAPTURE                          VAL R20
      241 CAPTURE                          VAL R16
      242 CAPTURE                          VAL R21
      243 CAPTURE                          VAL R18
      244 CAPTURE                          VAL R14
      245 GETTABLEKS                       R32 R2 K60 ["memo"]
      247 GETTABLEKS                       R33 R2 K61 ["forwardRef"]
      249 MOVE                             R34 R31
      250 CALL                             R33 1 -1
      251 CALL                             R32 -1 -1
      252 RETURN                           R32 -1
