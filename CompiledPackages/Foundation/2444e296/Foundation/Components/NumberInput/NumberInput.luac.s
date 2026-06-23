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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+7]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 GETTABLEKS                       R0 R0 K1 ["getIsFocused"]
        9 CALL                             R0 0 1
       10 RETURN                           R0 1
       11 LOADB                            R0 0
       12 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["minimum"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K1 ["maximum"]
        6 FASTCALL3                        MATH_CLAMP R0 R3 R4
        8 MOVE                             R2 R0
        9 GETIMPORT                        R1 K4 [math.clamp]
       11 CALL                             R1 3 1
       12 RETURN                           R1 1

PROTO_4:
        0 MOVE                             R3 R1
        1 GETUPVAL                         R5 0
        2 GETTABLEKS                       R5 R5 K0 ["step"]
        4 DIV                              R4 R0 R5
        5 CALL                             R3 1 1
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K0 ["step"]
        9 MUL                              R2 R3 R4
       10 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["precision"]
        3 LOADN                            R4 10
        4 ORK                              R5 R2 K1 [0]
        5 POW                              R3 R4 R5
        6 MUL                              R6 R0 R3
        7 ADDK                             R5 R6 K2 [0.5]
        8 FASTCALL1                        MATH_FLOOR R5 ; [+2]
        9 GETIMPORT                        R4 K5 [math.floor]
       11 CALL                             R4 1 1
       12 DIV                              R1 R4 R3
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K6 ["step"]
       16 ADD                              R3 R0 R4
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K0 ["precision"]
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
       35 GETUPVAL                         R5 0
       36 GETTABLEKS                       R5 R5 K0 ["precision"]
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
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["value"]
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CALL                             R0 2 -1
        9 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["precision"]
        3 LOADN                            R4 10
        4 ORK                              R5 R2 K1 [0]
        5 POW                              R3 R4 R5
        6 MUL                              R6 R0 R3
        7 ADDK                             R5 R6 K2 [0.5]
        8 FASTCALL1                        MATH_FLOOR R5 ; [+2]
        9 GETIMPORT                        R4 K5 [math.floor]
       11 CALL                             R4 1 1
       12 DIV                              R1 R4 R3
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K6 ["step"]
       16 SUB                              R3 R0 R4
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K0 ["precision"]
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
       35 GETUPVAL                         R5 0
       36 GETTABLEKS                       R5 R5 K0 ["precision"]
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
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["value"]
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CALL                             R0 2 -1
        9 RETURN                           R0 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isDisabled"]
        3 JUMPIF                           R1 ; [+7]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["maximum"]
        7 JUMPIFEQ                         R0 R2 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["value"]
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U1
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isDisabled"]
        3 JUMPIF                           R1 ; [+7]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["minimum"]
        7 JUMPIFEQ                         R0 R2 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["value"]
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U1
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_13:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["minimum"]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R5 K1 ["maximum"]
        6 FASTCALL3                        MATH_CLAMP R0 R4 R5
        8 MOVE                             R3 R0
        9 GETIMPORT                        R2 K4 [math.clamp]
       11 CALL                             R2 3 1
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K5 ["precision"]
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
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETTABLEKS                       R3 R3 K0 ["value"]
        5 CALL                             R2 1 -1
        6 FASTCALL                         TOSTRING ; [+2]
        7 GETIMPORT                        R1 K2 [tostring]
        9 CALL                             R1 -1 1
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 2
       12 GETTABLEKS                       R0 R0 K3 ["onFocusGained"]
       14 JUMPIFNOT                        R0 ; [+4]
       15 GETUPVAL                         R0 2
       16 GETTABLEKS                       R0 R0 K3 ["onFocusGained"]
       18 CALL                             R0 0 0
       19 RETURN                           R0 0

PROTO_15:
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
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R3 R3 K2 ["formatAsString"]
       17 MOVE                             R4 R0
       18 CALL                             R3 1 1
       19 CALL                             R2 1 0
       20 GETUPVAL                         R2 3
       21 GETTABLEKS                       R2 R2 K3 ["onChanged"]
       23 MOVE                             R3 R0
       24 MOVE                             R4 R1
       25 CALL                             R2 2 0
       26 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 GETTABLEKS                       R3 R3 K0 ["value"]
        8 CALL                             R2 1 1
        9 GETUPVAL                         R3 4
       10 GETTABLEKS                       R3 R3 K1 ["FocusLost"]
       12 CALL                             R1 2 0
       13 GETUPVAL                         R1 3
       14 GETTABLEKS                       R1 R1 K2 ["onFocusLost"]
       16 JUMPIFNOT                        R1 ; [+5]
       17 GETUPVAL                         R1 3
       18 GETTABLEKS                       R1 R1 K2 ["onFocusLost"]
       20 MOVE                             R2 R0
       21 CALL                             R1 1 0
       22 RETURN                           R0 0

PROTO_17:
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
       21 GETUPVAL                         R2 3
       22 GETTABLEKS                       R2 R2 K2 ["onChanged"]
       24 MOVE                             R3 R1
       25 GETUPVAL                         R4 4
       26 GETTABLEKS                       R4 R4 K3 ["Keyboard"]
       28 CALL                             R2 2 0
       29 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 2
        6 GETUPVAL                         R1 0
        7 GETUPVAL                         R2 3
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 4
       10 GETTABLEKS                       R2 R2 K0 ["Activate"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 2
        6 GETUPVAL                         R1 0
        7 GETUPVAL                         R2 3
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 4
       10 GETTABLEKS                       R2 R2 K0 ["Activate"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_20:
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

PROTO_21:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["value"]
        3 JUMPIFNOT                        R2 ; [+13]
        4 GETUPVAL                         R3 1
        5 DUPTABLE                         R4 K2 [{"position", "value"}]
        6 GETTABLEKS                       R5 R1 K3 ["X"]
        8 SETTABLEKS                       R5 R4 K1 ["position"]
       10 GETUPVAL                         R5 2
       11 MOVE                             R6 R2
       12 CALL                             R5 1 1
       13 SETTABLEKS                       R5 R4 K0 ["value"]
       15 SETTABLEKS                       R4 R3 K4 ["current"]
       17 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 JUMPIFNOT                        R2 ; [+23]
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
       21 GETUPVAL                         R3 3
       22 MOVE                             R4 R2
       23 GETUPVAL                         R5 4
       24 GETTABLEKS                       R5 R5 K5 ["Drag"]
       26 CALL                             R3 2 0
       27 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 LOADNIL                          R1
        6 SETTABLEKS                       R1 R0 K0 ["current"]
        8 RETURN                           R0 0

PROTO_24:
        0 LOADN                            R1 0
        1 JUMPIFNOT                        R0 ; [+33]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["maximum"]
        5 JUMPIFNOT                        R2 ; [+29]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["minimum"]
        9 JUMPIFNOT                        R2 ; [+25]
       10 GETUPVAL                         R2 1
       11 MOVE                             R3 R0
       12 CALL                             R2 1 1
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K0 ["maximum"]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K1 ["minimum"]
       19 JUMPIFNOTEQ                      R3 R4 ; [+3]
       21 LOADN                            R1 1
       22 JUMP                             ; [+12]
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R4 R4 K1 ["minimum"]
       26 SUB                              R3 R2 R4
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R5 R5 K0 ["maximum"]
       30 GETUPVAL                         R6 0
       31 GETTABLEKS                       R6 R6 K1 ["minimum"]
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

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["value"]
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CALL                             R0 2 -1
       10 RETURN                           R0 -1

PROTO_26:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+19]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["isBinding"]
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K1 ["value"]
        9 CALL                             R0 1 1
       10 JUMPIF                           R0 ; [+11]
       11 GETUPVAL                         R0 3
       12 GETUPVAL                         R1 2
       13 GETTABLEKS                       R1 R1 K2 ["formatAsString"]
       15 GETUPVAL                         R2 4
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R3 R3 K1 ["value"]
       19 CALL                             R2 1 -1
       20 CALL                             R1 -1 -1
       21 CALL                             R0 -1 0
       22 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETTABLEKS                       R1 R0 K0 ["text"]
        5 RETURN                           R1 1
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K1 ["formatAsString"]
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R3 R0 K2 ["value"]
       12 CALL                             R2 1 -1
       13 CALL                             R1 -1 -1
       14 RETURN                           R1 -1

PROTO_28:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["Split"]
        4 JUMPIFEQ                         R2 R3 ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K1 ["createElement"]
       11 GETUPVAL                         R3 3
       12 DUPTABLE                         R4 K27 [{"inputRef", "text", "hasError", "variant", "size", "Selectable", "NextSelectionUp", "NextSelectionDown", "NextSelectionLeft", "NextSelectionRight", "horizontalPadding", "focusBehavior", "onChanged", "onFocusLost", "onFocus", "onDragStarted", "onDrag", "onDragEnded", "onReturnPressed", "ref", "backgroundGradient", "trailingElement", "leadingElement", "isDisabled", "testId"}]
       13 GETUPVAL                         R5 4
       14 GETTABLEKS                       R5 R5 K2 ["inputRef"]
       16 SETTABLEKS                       R5 R4 K2 ["inputRef"]
       18 GETUPVAL                         R5 5
       19 DUPTABLE                         R6 K29 [{"text", "value"}]
       20 GETUPVAL                         R7 6
       21 SETTABLEKS                       R7 R6 K3 ["text"]
       23 GETUPVAL                         R7 4
       24 GETTABLEKS                       R7 R7 K28 ["value"]
       26 SETTABLEKS                       R7 R6 K28 ["value"]
       28 NEWCLOSURE                       R7 P0
       29 CAPTURE                          UPVAL U7
       30 CAPTURE                          UPVAL U4
       31 CAPTURE                          UPVAL U8
       32 CALL                             R5 2 1
       33 SETTABLEKS                       R5 R4 K3 ["text"]
       35 GETUPVAL                         R5 9
       36 SETTABLEKS                       R5 R4 K4 ["hasError"]
       38 GETUPVAL                         R5 4
       39 GETTABLEKS                       R5 R5 K5 ["variant"]
       41 SETTABLEKS                       R5 R4 K5 ["variant"]
       43 GETUPVAL                         R5 4
       44 GETTABLEKS                       R5 R5 K6 ["size"]
       46 SETTABLEKS                       R5 R4 K6 ["size"]
       48 GETUPVAL                         R6 10
       49 GETTABLEKS                       R6 R6 K30 ["FoundationInputSelectionProps"]
       51 JUMPIFNOT                        R6 ; [+4]
       52 GETUPVAL                         R5 4
       53 GETTABLEKS                       R5 R5 K7 ["Selectable"]
       55 JUMP                             ; [+1]
       56 LOADNIL                          R5
       57 SETTABLEKS                       R5 R4 K7 ["Selectable"]
       59 GETUPVAL                         R6 10
       60 GETTABLEKS                       R6 R6 K30 ["FoundationInputSelectionProps"]
       62 JUMPIFNOT                        R6 ; [+4]
       63 GETUPVAL                         R5 4
       64 GETTABLEKS                       R5 R5 K8 ["NextSelectionUp"]
       66 JUMP                             ; [+1]
       67 LOADNIL                          R5
       68 SETTABLEKS                       R5 R4 K8 ["NextSelectionUp"]
       70 GETUPVAL                         R6 10
       71 GETTABLEKS                       R6 R6 K30 ["FoundationInputSelectionProps"]
       73 JUMPIFNOT                        R6 ; [+4]
       74 GETUPVAL                         R5 4
       75 GETTABLEKS                       R5 R5 K9 ["NextSelectionDown"]
       77 JUMP                             ; [+1]
       78 LOADNIL                          R5
       79 SETTABLEKS                       R5 R4 K9 ["NextSelectionDown"]
       81 GETUPVAL                         R6 10
       82 GETTABLEKS                       R6 R6 K30 ["FoundationInputSelectionProps"]
       84 JUMPIFNOT                        R6 ; [+4]
       85 GETUPVAL                         R5 4
       86 GETTABLEKS                       R5 R5 K10 ["NextSelectionLeft"]
       88 JUMP                             ; [+1]
       89 LOADNIL                          R5
       90 SETTABLEKS                       R5 R4 K10 ["NextSelectionLeft"]
       92 GETUPVAL                         R6 10
       93 GETTABLEKS                       R6 R6 K30 ["FoundationInputSelectionProps"]
       95 JUMPIFNOT                        R6 ; [+4]
       96 GETUPVAL                         R5 4
       97 GETTABLEKS                       R5 R5 K11 ["NextSelectionRight"]
       99 JUMP                             ; [+1]
      100 LOADNIL                          R5
      101 SETTABLEKS                       R5 R4 K11 ["NextSelectionRight"]
      103 DUPTABLE                         R5 K32 [{"left"}]
      104 GETUPVAL                         R6 11
      105 GETTABLEKS                       R6 R6 K33 ["container"]
      107 GETTABLEKS                       R6 R6 K12 ["horizontalPadding"]
      109 SETTABLEKS                       R6 R5 K31 ["left"]
      111 SETTABLEKS                       R5 R4 K12 ["horizontalPadding"]
      113 GETUPVAL                         R5 12
      114 GETTABLEKS                       R5 R5 K13 ["focusBehavior"]
      116 SETTABLEKS                       R5 R4 K13 ["focusBehavior"]
      118 GETUPVAL                         R5 13
      119 SETTABLEKS                       R5 R4 K14 ["onChanged"]
      121 GETUPVAL                         R5 14
      122 SETTABLEKS                       R5 R4 K15 ["onFocusLost"]
      124 GETUPVAL                         R5 15
      125 SETTABLEKS                       R5 R4 K16 ["onFocus"]
      127 GETUPVAL                         R6 4
      128 GETTABLEKS                       R6 R6 K34 ["isScrubbable"]
      130 JUMPIFNOT                        R6 ; [+2]
      131 GETUPVAL                         R5 16
      132 JUMP                             ; [+1]
      133 LOADNIL                          R5
      134 SETTABLEKS                       R5 R4 K17 ["onDragStarted"]
      136 GETUPVAL                         R6 4
      137 GETTABLEKS                       R6 R6 K34 ["isScrubbable"]
      139 JUMPIFNOT                        R6 ; [+2]
      140 GETUPVAL                         R5 17
      141 JUMP                             ; [+1]
      142 LOADNIL                          R5
      143 SETTABLEKS                       R5 R4 K18 ["onDrag"]
      145 GETUPVAL                         R6 4
      146 GETTABLEKS                       R6 R6 K34 ["isScrubbable"]
      148 JUMPIFNOT                        R6 ; [+2]
      149 GETUPVAL                         R5 18
      150 JUMP                             ; [+1]
      151 LOADNIL                          R5
      152 SETTABLEKS                       R5 R4 K19 ["onDragEnded"]
      154 GETUPVAL                         R5 4
      155 GETTABLEKS                       R5 R5 K20 ["onReturnPressed"]
      157 SETTABLEKS                       R5 R4 K20 ["onReturnPressed"]
      159 SETTABLEKS                       R0 R4 K21 ["ref"]
      161 GETUPVAL                         R6 4
      162 GETTABLEKS                       R6 R6 K34 ["isScrubbable"]
      164 JUMPIFNOT                        R6 ; [+29]
      165 GETUPVAL                         R6 19
      166 JUMPIFNOT                        R6 ; [+27]
      167 GETUPVAL                         R5 2
      168 GETTABLEKS                       R5 R5 K1 ["createElement"]
      170 LOADK                            R6 K35 ["UIGradient"]
      171 DUPTABLE                         R7 K39 [{"Color", "Transparency", "Rotation"}]
      172 GETIMPORT                        R8 K42 [ColorSequence.new]
      174 GETUPVAL                         R9 20
      175 GETTABLEKS                       R9 R9 K36 ["Color"]
      177 GETTABLEKS                       R9 R9 K43 ["Shift"]
      179 GETTABLEKS                       R9 R9 K44 ["Shift_300"]
      181 GETTABLEKS                       R9 R9 K45 ["Color3"]
      183 CALL                             R8 1 1
      184 SETTABLEKS                       R8 R7 K36 ["Color"]
      186 GETUPVAL                         R8 19
      187 SETTABLEKS                       R8 R7 K37 ["Transparency"]
      189 LOADN                            R8 0
      190 SETTABLEKS                       R8 R7 K38 ["Rotation"]
      192 CALL                             R5 2 1
      193 JUMP                             ; [+1]
      194 LOADNIL                          R5
      195 SETTABLEKS                       R5 R4 K22 ["backgroundGradient"]
      197 GETUPVAL                         R6 0
      198 GETUPVAL                         R7 1
      199 GETTABLEKS                       R7 R7 K46 ["Stacked"]
      201 JUMPIFNOTEQ                      R6 R7 ; [+3]
      203 GETUPVAL                         R5 21
      204 JUMP                             ; [+1]
      205 LOADNIL                          R5
      206 SETTABLEKS                       R5 R4 K23 ["trailingElement"]
      208 GETUPVAL                         R6 4
      209 GETTABLEKS                       R6 R6 K47 ["leadingIcon"]
      211 JUMPIFNOT                        R6 ; [+35]
      212 GETUPVAL                         R5 2
      213 GETTABLEKS                       R5 R5 K1 ["createElement"]
      215 GETUPVAL                         R6 22
      216 DUPTABLE                         R7 K49 [{"tag"}]
      217 LOADK                            R8 K50 ["row align-y-center size-0-full auto-x"]
      218 SETTABLEKS                       R8 R7 K48 ["tag"]
      220 GETUPVAL                         R8 2
      221 GETTABLEKS                       R8 R8 K1 ["createElement"]
      223 GETUPVAL                         R9 23
      224 DUPTABLE                         R10 K53 [{"name", "style", "size"}]
      225 GETUPVAL                         R11 4
      226 GETTABLEKS                       R11 R11 K47 ["leadingIcon"]
      228 SETTABLEKS                       R11 R10 K51 ["name"]
      230 GETUPVAL                         R11 11
      231 GETTABLEKS                       R11 R11 K54 ["icon"]
      233 GETTABLEKS                       R11 R11 K52 ["style"]
      235 SETTABLEKS                       R11 R10 K52 ["style"]
      237 GETUPVAL                         R11 11
      238 GETTABLEKS                       R11 R11 K54 ["icon"]
      240 GETTABLEKS                       R11 R11 K6 ["size"]
      242 SETTABLEKS                       R11 R10 K6 ["size"]
      244 CALL                             R8 2 -1
      245 CALL                             R5 -1 1
      246 JUMP                             ; [+1]
      247 LOADNIL                          R5
      248 SETTABLEKS                       R5 R4 K24 ["leadingElement"]
      250 GETUPVAL                         R5 4
      251 GETTABLEKS                       R5 R5 K25 ["isDisabled"]
      253 SETTABLEKS                       R5 R4 K25 ["isDisabled"]
      255 LOADK                            R6 K55 ["%*--field"]
      256 GETUPVAL                         R8 4
      257 GETTABLEKS                       R8 R8 K26 ["testId"]
      259 NAMECALL                         R6 R6 K56 ["format"]
      261 CALL                             R6 2 1
      262 MOVE                             R5 R6
      263 SETTABLEKS                       R5 R4 K26 ["testId"]
      265 CALL                             R2 2 1
      266 JUMPIFNOT                        R1 ; [+32]
      267 GETUPVAL                         R3 2
      268 GETTABLEKS                       R3 R3 K1 ["createElement"]
      270 GETUPVAL                         R4 22
      271 DUPTABLE                         R5 K58 [{"Size", "tag"}]
      272 GETIMPORT                        R6 K61 [UDim2.fromOffset]
      274 GETUPVAL                         R8 24
      275 GETTABLEKS                       R8 R8 K62 ["Offset"]
      277 GETUPVAL                         R9 25
      278 GETTABLEKS                       R9 R9 K62 ["Offset"]
      280 SUB                              R7 R8 R9
      281 LOADN                            R8 0
      282 CALL                             R6 2 1
      283 SETTABLEKS                       R6 R5 K57 ["Size"]
      285 LOADK                            R6 K63 ["row align-y-center gap-xsmall auto-y"]
      286 SETTABLEKS                       R6 R5 K48 ["tag"]
      288 DUPTABLE                         R6 K66 [{"InputField", "Controls"}]
      289 SETTABLEKS                       R2 R6 K64 ["InputField"]
      291 JUMPIFNOT                        R1 ; [+2]
      292 GETUPVAL                         R7 21
      293 JUMP                             ; [+1]
      294 LOADNIL                          R7
      295 SETTABLEKS                       R7 R6 K65 ["Controls"]
      297 CALL                             R3 3 1
      298 RETURN                           R3 1
      299 MOVE                             R3 R2
      300 RETURN                           R3 1

PROTO_29:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 3
        7 MOVE                             R5 R3
        8 GETTABLEKS                       R6 R2 K0 ["size"]
       10 GETTABLEKS                       R7 R2 K1 ["variant"]
       12 CALL                             R4 3 1
       13 GETUPVAL                         R5 4
       14 MOVE                             R6 R3
       15 GETTABLEKS                       R7 R2 K0 ["size"]
       17 GETTABLEKS                       R8 R2 K2 ["controlsVariant"]
       19 CALL                             R5 3 1
       20 GETUPVAL                         R6 5
       21 GETTABLEKS                       R6 R6 K3 ["useRef"]
       23 LOADNIL                          R7
       24 CALL                             R6 1 1
       25 GETUPVAL                         R7 6
       26 GETTABLEKS                       R7 R7 K4 ["useComposedRef"]
       28 MOVE                             R8 R6
       29 GETTABLEKS                       R9 R2 K5 ["textBoxRef"]
       31 CALL                             R7 2 1
       32 GETUPVAL                         R8 5
       33 GETTABLEKS                       R8 R8 K3 ["useRef"]
       35 LOADNIL                          R9
       36 CALL                             R8 1 1
       37 GETUPVAL                         R9 5
       38 GETTABLEKS                       R9 R9 K6 ["useCallback"]
       40 NEWCLOSURE                       R10 P0
       41 CAPTURE                          VAL R6
       42 NEWTABLE                         R11 0 0
       44 CALL                             R9 2 1
       45 GETUPVAL                         R10 5
       46 GETTABLEKS                       R10 R10 K7 ["useState"]
       48 LOADB                            R11 0
       49 CALL                             R10 1 2
       50 GETTABLEKS                       R13 R2 K8 ["hasError"]
       52 OR                               R12 R13 R10
       53 GETTABLEKS                       R13 R2 K2 ["controlsVariant"]
       55 GETUPVAL                         R14 5
       56 GETTABLEKS                       R14 R14 K6 ["useCallback"]
       58 NEWCLOSURE                       R15 P1
       59 CAPTURE                          VAL R2
       60 NEWTABLE                         R16 0 2
       62 GETTABLEKS                       R17 R2 K9 ["minimum"]
       64 GETTABLEKS                       R18 R2 K10 ["maximum"]
       66 SETLIST                          R16 R17 2 [1]
       68 CALL                             R14 2 1
       69 GETUPVAL                         R15 5
       70 GETTABLEKS                       R15 R15 K6 ["useCallback"]
       72 NEWCLOSURE                       R16 P2
       73 CAPTURE                          VAL R2
       74 NEWTABLE                         R17 0 1
       76 GETTABLEKS                       R18 R2 K11 ["step"]
       78 SETLIST                          R17 R18 1 [1]
       80 CALL                             R15 2 1
       81 GETUPVAL                         R16 5
       82 GETTABLEKS                       R16 R16 K12 ["useMemo"]
       84 NEWCLOSURE                       R17 P3
       85 CAPTURE                          UPVAL U7
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R15
       88 CAPTURE                          VAL R14
       89 NEWTABLE                         R18 0 5
       91 GETTABLEKS                       R19 R2 K13 ["value"]
       93 GETTABLEKS                       R20 R2 K11 ["step"]
       95 GETTABLEKS                       R21 R2 K14 ["precision"]
       97 MOVE                             R22 R14
       98 MOVE                             R23 R15
       99 SETLIST                          R18 R19 5 [1]
      101 CALL                             R16 2 1
      102 GETUPVAL                         R17 5
      103 GETTABLEKS                       R17 R17 K12 ["useMemo"]
      105 NEWCLOSURE                       R18 P4
      106 CAPTURE                          UPVAL U7
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R15
      109 CAPTURE                          VAL R14
      110 NEWTABLE                         R19 0 5
      112 GETTABLEKS                       R20 R2 K13 ["value"]
      114 GETTABLEKS                       R21 R2 K11 ["step"]
      116 GETTABLEKS                       R22 R2 K14 ["precision"]
      118 MOVE                             R23 R14
      119 MOVE                             R24 R15
      120 SETLIST                          R19 R20 5 [1]
      122 CALL                             R17 2 1
      123 GETUPVAL                         R18 5
      124 GETTABLEKS                       R18 R18 K12 ["useMemo"]
      126 NEWCLOSURE                       R19 P5
      127 CAPTURE                          UPVAL U7
      128 CAPTURE                          VAL R2
      129 NEWTABLE                         R20 0 3
      131 GETTABLEKS                       R21 R2 K15 ["isDisabled"]
      133 GETTABLEKS                       R22 R2 K13 ["value"]
      135 GETTABLEKS                       R23 R2 K10 ["maximum"]
      137 SETLIST                          R20 R21 3 [1]
      139 CALL                             R18 2 1
      140 GETUPVAL                         R19 5
      141 GETTABLEKS                       R19 R19 K12 ["useMemo"]
      143 NEWCLOSURE                       R20 P6
      144 CAPTURE                          UPVAL U7
      145 CAPTURE                          VAL R2
      146 NEWTABLE                         R21 0 3
      148 GETTABLEKS                       R22 R2 K15 ["isDisabled"]
      150 GETTABLEKS                       R23 R2 K13 ["value"]
      152 GETTABLEKS                       R24 R2 K9 ["minimum"]
      154 SETLIST                          R21 R22 3 [1]
      156 CALL                             R19 2 1
      157 GETUPVAL                         R20 5
      158 GETTABLEKS                       R20 R20 K6 ["useCallback"]
      160 NEWCLOSURE                       R21 P7
      161 CAPTURE                          VAL R2
      162 NEWTABLE                         R22 0 3
      164 GETTABLEKS                       R23 R2 K9 ["minimum"]
      166 GETTABLEKS                       R24 R2 K10 ["maximum"]
      168 GETTABLEKS                       R25 R2 K14 ["precision"]
      170 SETLIST                          R22 R23 3 [1]
      172 CALL                             R20 2 1
      173 GETUPVAL                         R21 5
      174 GETTABLEKS                       R21 R21 K16 ["useBinding"]
      176 GETTABLEKS                       R22 R2 K17 ["formatAsString"]
      178 MOVE                             R23 R20
      179 GETUPVAL                         R24 8
      180 GETTABLEKS                       R25 R2 K13 ["value"]
      182 CALL                             R24 1 -1
      183 CALL                             R23 -1 -1
      184 CALL                             R22 -1 -1
      185 CALL                             R21 -1 2
      186 GETTABLEKS                       R24 R2 K18 ["width"]
      188 JUMPIFNOT                        R24 ; [+3]
      189 GETTABLEKS                       R23 R2 K18 ["width"]
      191 JUMP                             ; [+8]
      192 GETIMPORT                        R23 K21 [UDim.new]
      194 LOADN                            R24 0
      195 GETTABLEKS                       R25 R5 K22 ["container"]
      197 GETTABLEKS                       R25 R25 K18 ["width"]
      199 CALL                             R23 2 1
      200 GETUPVAL                         R24 5
      201 GETTABLEKS                       R24 R24 K6 ["useCallback"]
      203 NEWCLOSURE                       R25 P8
      204 CAPTURE                          VAL R22
      205 CAPTURE                          UPVAL U8
      206 CAPTURE                          VAL R2
      207 NEWTABLE                         R26 0 2
      209 GETTABLEKS                       R27 R2 K23 ["onFocusGained"]
      211 GETTABLEKS                       R28 R2 K13 ["value"]
      213 SETLIST                          R26 R27 2 [1]
      215 CALL                             R24 2 1
      216 GETUPVAL                         R25 5
      217 GETTABLEKS                       R25 R25 K6 ["useCallback"]
      219 NEWCLOSURE                       R26 P9
      220 CAPTURE                          VAL R20
      221 CAPTURE                          VAL R22
      222 CAPTURE                          VAL R9
      223 CAPTURE                          VAL R2
      224 NEWTABLE                         R27 0 4
      226 GETTABLEKS                       R28 R2 K24 ["onChanged"]
      228 GETTABLEKS                       R29 R2 K17 ["formatAsString"]
      230 MOVE                             R30 R20
      231 MOVE                             R31 R9
      232 SETLIST                          R27 R28 4 [1]
      234 CALL                             R25 2 1
      235 GETUPVAL                         R26 5
      236 GETTABLEKS                       R26 R26 K6 ["useCallback"]
      238 NEWCLOSURE                       R27 P10
      239 CAPTURE                          VAL R11
      240 CAPTURE                          VAL R25
      241 CAPTURE                          UPVAL U8
      242 CAPTURE                          VAL R2
      243 CAPTURE                          UPVAL U9
      244 NEWTABLE                         R28 0 4
      246 MOVE                             R29 R25
      247 GETTABLEKS                       R30 R2 K25 ["onFocusLost"]
      249 GETTABLEKS                       R31 R2 K13 ["value"]
      251 MOVE                             R32 R20
      252 SETLIST                          R28 R29 4 [1]
      254 CALL                             R26 2 1
      255 GETUPVAL                         R27 5
      256 GETTABLEKS                       R27 R27 K6 ["useCallback"]
      258 NEWCLOSURE                       R28 P11
      259 CAPTURE                          VAL R22
      260 CAPTURE                          VAL R9
      261 CAPTURE                          VAL R11
      262 CAPTURE                          VAL R2
      263 CAPTURE                          UPVAL U9
      264 NEWTABLE                         R29 0 2
      266 MOVE                             R30 R9
      267 GETTABLEKS                       R31 R2 K24 ["onChanged"]
      269 SETLIST                          R29 R30 2 [1]
      271 CALL                             R27 2 1
      272 GETUPVAL                         R28 5
      273 GETTABLEKS                       R28 R28 K6 ["useCallback"]
      275 NEWCLOSURE                       R29 P12
      276 CAPTURE                          UPVAL U8
      277 CAPTURE                          VAL R18
      278 CAPTURE                          VAL R25
      279 CAPTURE                          VAL R16
      280 CAPTURE                          UPVAL U9
      281 NEWTABLE                         R30 0 3
      283 MOVE                             R31 R18
      284 MOVE                             R32 R16
      285 MOVE                             R33 R25
      286 SETLIST                          R30 R31 3 [1]
      288 CALL                             R28 2 1
      289 GETUPVAL                         R29 5
      290 GETTABLEKS                       R29 R29 K6 ["useCallback"]
      292 NEWCLOSURE                       R30 P13
      293 CAPTURE                          UPVAL U8
      294 CAPTURE                          VAL R19
      295 CAPTURE                          VAL R25
      296 CAPTURE                          VAL R17
      297 CAPTURE                          UPVAL U9
      298 NEWTABLE                         R31 0 3
      300 MOVE                             R32 R19
      301 MOVE                             R33 R17
      302 MOVE                             R34 R25
      303 SETLIST                          R31 R32 3 [1]
      305 CALL                             R29 2 1
      306 GETUPVAL                         R30 5
      307 GETTABLEKS                       R30 R30 K26 ["createElement"]
      309 GETUPVAL                         R31 10
      310 DUPTABLE                         R32 K30 [{"variant", "controlsVariant", "size", "increment", "decrement", "testId"}]
      311 GETTABLEKS                       R33 R2 K1 ["variant"]
      313 SETTABLEKS                       R33 R32 K1 ["variant"]
      315 SETTABLEKS                       R13 R32 K2 ["controlsVariant"]
      317 GETTABLEKS                       R33 R2 K0 ["size"]
      319 SETTABLEKS                       R33 R32 K0 ["size"]
      321 DUPTABLE                         R33 K32 [{"isDisabled", "onClick"}]
      322 SETTABLEKS                       R18 R33 K15 ["isDisabled"]
      324 SETTABLEKS                       R28 R33 K31 ["onClick"]
      326 SETTABLEKS                       R33 R32 K27 ["increment"]
      328 DUPTABLE                         R33 K32 [{"isDisabled", "onClick"}]
      329 SETTABLEKS                       R19 R33 K15 ["isDisabled"]
      331 SETTABLEKS                       R29 R33 K31 ["onClick"]
      333 SETTABLEKS                       R33 R32 K28 ["decrement"]
      335 GETTABLEKS                       R33 R2 K29 ["testId"]
      337 SETTABLEKS                       R33 R32 K29 ["testId"]
      339 CALL                             R30 2 1
      340 GETUPVAL                         R31 5
      341 GETTABLEKS                       R31 R31 K12 ["useMemo"]
      343 NEWCLOSURE                       R32 P14
      344 CAPTURE                          VAL R13
      345 CAPTURE                          UPVAL U11
      346 CAPTURE                          VAL R5
      347 CAPTURE                          VAL R3
      348 NEWTABLE                         R33 0 4
      350 MOVE                             R34 R3
      351 MOVE                             R35 R13
      352 GETTABLEKS                       R36 R5 K33 ["splitButton"]
      354 GETTABLEKS                       R36 R36 K0 ["size"]
      356 GETTABLEKS                       R37 R3 K34 ["Gap"]
      358 GETTABLEKS                       R37 R37 K35 ["XSmall"]
      360 SETLIST                          R33 R34 4 [1]
      362 CALL                             R31 2 1
      363 GETUPVAL                         R32 5
      364 GETTABLEKS                       R32 R32 K6 ["useCallback"]
      366 NEWCLOSURE                       R33 P15
      367 CAPTURE                          VAL R2
      368 CAPTURE                          VAL R8
      369 CAPTURE                          UPVAL U8
      370 NEWTABLE                         R34 0 1
      372 GETTABLEKS                       R35 R2 K13 ["value"]
      374 SETLIST                          R34 R35 1 [1]
      376 CALL                             R32 2 1
      377 GETUPVAL                         R33 5
      378 GETTABLEKS                       R33 R33 K6 ["useCallback"]
      380 NEWCLOSURE                       R34 P16
      381 CAPTURE                          VAL R8
      382 CAPTURE                          UPVAL U12
      383 CAPTURE                          VAL R2
      384 CAPTURE                          VAL R25
      385 CAPTURE                          UPVAL U9
      386 NEWTABLE                         R35 0 3
      388 MOVE                             R36 R25
      389 GETTABLEKS                       R37 R2 K11 ["step"]
      391 MOVE                             R38 R20
      392 SETLIST                          R35 R36 3 [1]
      394 CALL                             R33 2 1
      395 GETUPVAL                         R34 5
      396 GETTABLEKS                       R34 R34 K6 ["useCallback"]
      398 NEWCLOSURE                       R35 P17
      399 CAPTURE                          VAL R8
      400 NEWTABLE                         R36 0 0
      402 CALL                             R34 2 1
      403 GETTABLEKS                       R35 R3 K36 ["Color"]
      405 GETTABLEKS                       R35 R35 K37 ["Shift"]
      407 GETTABLEKS                       R35 R35 K38 ["Shift_300"]
      409 GETTABLEKS                       R35 R35 K39 ["Transparency"]
      411 GETTABLEKS                       R36 R3 K36 ["Color"]
      413 GETTABLEKS                       R36 R36 K37 ["Shift"]
      415 GETTABLEKS                       R36 R36 K40 ["Shift_100"]
      417 GETTABLEKS                       R36 R36 K39 ["Transparency"]
      419 GETUPVAL                         R37 5
      420 GETTABLEKS                       R37 R37 K12 ["useMemo"]
      422 NEWCLOSURE                       R38 P18
      423 CAPTURE                          UPVAL U7
      424 CAPTURE                          VAL R2
      425 CAPTURE                          VAL R14
      426 CAPTURE                          VAL R36
      427 CAPTURE                          VAL R35
      428 NEWTABLE                         R39 0 6
      430 MOVE                             R40 R35
      431 MOVE                             R41 R36
      432 GETTABLEKS                       R42 R2 K13 ["value"]
      434 MOVE                             R43 R14
      435 GETTABLEKS                       R44 R2 K10 ["maximum"]
      437 GETTABLEKS                       R45 R2 K9 ["minimum"]
      439 SETLIST                          R39 R40 6 [1]
      441 CALL                             R37 2 1
      442 GETUPVAL                         R38 5
      443 GETTABLEKS                       R38 R38 K41 ["useEffect"]
      445 NEWCLOSURE                       R39 P19
      446 CAPTURE                          VAL R9
      447 CAPTURE                          UPVAL U13
      448 CAPTURE                          VAL R2
      449 CAPTURE                          VAL R22
      450 CAPTURE                          VAL R20
      451 NEWTABLE                         R40 0 4
      453 GETTABLEKS                       R41 R2 K13 ["value"]
      455 GETTABLEKS                       R42 R2 K17 ["formatAsString"]
      457 MOVE                             R43 R20
      458 MOVE                             R44 R9
      459 SETLIST                          R40 R41 4 [1]
      461 CALL                             R38 2 0
      462 GETUPVAL                         R38 5
      463 GETTABLEKS                       R38 R38 K26 ["createElement"]
      465 GETUPVAL                         R39 14
      466 GETUPVAL                         R40 15
      467 MOVE                             R41 R2
      468 DUPTABLE                         R42 K47 [{"width", "ref", "hasError", "label", "size", "isRequired", "isDisabled", "hint", "textBoxRef", "input"}]
      469 SETTABLEKS                       R23 R42 K18 ["width"]
      471 SETTABLEKS                       R1 R42 K42 ["ref"]
      473 SETTABLEKS                       R12 R42 K8 ["hasError"]
      475 GETTABLEKS                       R43 R2 K43 ["label"]
      477 SETTABLEKS                       R43 R42 K43 ["label"]
      479 GETUPVAL                         R43 16
      480 GETTABLEKS                       R44 R2 K0 ["size"]
      482 CALL                             R43 1 1
      483 SETTABLEKS                       R43 R42 K0 ["size"]
      485 GETTABLEKS                       R43 R2 K44 ["isRequired"]
      487 SETTABLEKS                       R43 R42 K44 ["isRequired"]
      489 GETTABLEKS                       R43 R2 K15 ["isDisabled"]
      491 SETTABLEKS                       R43 R42 K15 ["isDisabled"]
      493 GETTABLEKS                       R43 R2 K45 ["hint"]
      495 SETTABLEKS                       R43 R42 K45 ["hint"]
      497 SETTABLEKS                       R7 R42 K5 ["textBoxRef"]
      499 NEWCLOSURE                       R43 P20
      500 CAPTURE                          VAL R13
      501 CAPTURE                          UPVAL U11
      502 CAPTURE                          UPVAL U5
      503 CAPTURE                          UPVAL U17
      504 CAPTURE                          VAL R2
      505 CAPTURE                          UPVAL U18
      506 CAPTURE                          VAL R21
      507 CAPTURE                          VAL R9
      508 CAPTURE                          VAL R20
      509 CAPTURE                          VAL R12
      510 CAPTURE                          UPVAL U19
      511 CAPTURE                          VAL R4
      512 CAPTURE                          VAL R0
      513 CAPTURE                          VAL R27
      514 CAPTURE                          VAL R26
      515 CAPTURE                          VAL R24
      516 CAPTURE                          VAL R32
      517 CAPTURE                          VAL R33
      518 CAPTURE                          VAL R34
      519 CAPTURE                          VAL R37
      520 CAPTURE                          VAL R3
      521 CAPTURE                          VAL R30
      522 CAPTURE                          UPVAL U20
      523 CAPTURE                          UPVAL U21
      524 CAPTURE                          VAL R23
      525 CAPTURE                          VAL R31
      526 SETTABLEKS                       R43 R42 K46 ["input"]
      528 CALL                             R40 2 -1
      529 CALL                             R38 -1 -1
      530 RETURN                           R38 -1

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
       28 GETTABLEKS                       R7 R0 K11 ["Utility"]
       30 GETTABLEKS                       R7 R7 K12 ["withCommonProps"]
       32 CALL                             R6 1 1
       33 GETIMPORT                        R7 K6 [require]
       35 GETTABLEKS                       R8 R0 K11 ["Utility"]
       37 GETTABLEKS                       R8 R8 K13 ["withDefaults"]
       39 CALL                             R7 1 1
       40 GETIMPORT                        R8 K6 [require]
       42 GETTABLEKS                       R9 R0 K14 ["Enums"]
       44 GETTABLEKS                       R9 R9 K15 ["InputSize"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K6 [require]
       49 GETTABLEKS                       R10 R0 K14 ["Enums"]
       51 GETTABLEKS                       R10 R10 K16 ["InputLabelSize"]
       53 CALL                             R9 1 1
       54 GETIMPORT                        R10 K6 [require]
       56 GETTABLEKS                       R11 R0 K14 ["Enums"]
       58 GETTABLEKS                       R11 R11 K17 ["InputVariant"]
       60 CALL                             R10 1 1
       61 GETIMPORT                        R11 K6 [require]
       63 GETTABLEKS                       R12 R0 K14 ["Enums"]
       65 GETTABLEKS                       R12 R12 K18 ["NumberInputControlsVariant"]
       67 CALL                             R11 1 1
       68 GETIMPORT                        R12 K6 [require]
       70 GETTABLEKS                       R13 R0 K14 ["Enums"]
       72 GETTABLEKS                       R13 R13 K19 ["OnChangeCallbackReason"]
       74 CALL                             R12 1 1
       75 GETIMPORT                        R13 K6 [require]
       77 GETTABLEKS                       R14 R0 K11 ["Utility"]
       79 GETTABLEKS                       R14 R14 K20 ["Flags"]
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
      109 GETTABLEKS                       R20 R0 K11 ["Utility"]
      111 GETTABLEKS                       R20 R20 K26 ["getBindableValue"]
      113 CALL                             R19 1 1
      114 GETIMPORT                        R20 K6 [require]
      116 GETTABLEKS                       R21 R0 K11 ["Utility"]
      118 GETTABLEKS                       R21 R21 K27 ["getInputTextSize"]
      120 CALL                             R20 1 1
      121 GETIMPORT                        R21 K6 [require]
      123 GETTABLEKS                       R22 R0 K11 ["Utility"]
      125 GETTABLEKS                       R22 R22 K28 ["joinBindables"]
      127 CALL                             R21 1 1
      128 GETIMPORT                        R22 K6 [require]
      130 GETTABLEKS                       R23 R0 K11 ["Utility"]
      132 GETTABLEKS                       R23 R23 K29 ["mapBindable"]
      134 CALL                             R22 1 1
      135 GETIMPORT                        R23 K6 [require]
      137 GETTABLEKS                       R24 R5 K30 ["TextInput"]
      139 GETTABLEKS                       R24 R24 K31 ["useTextInputVariants"]
      141 CALL                             R23 1 1
      142 GETIMPORT                        R24 K6 [require]
      144 GETTABLEKS                       R25 R0 K32 ["Providers"]
      146 GETTABLEKS                       R25 R25 K33 ["Style"]
      148 GETTABLEKS                       R25 R25 K34 ["useTokens"]
      150 CALL                             R24 1 1
      151 GETIMPORT                        R25 K6 [require]
      153 GETIMPORT                        R26 K1 [script]
      155 GETTABLEKS                       R26 R26 K4 ["Parent"]
      157 GETTABLEKS                       R26 R26 K35 ["NumberInputControls"]
      159 CALL                             R25 1 1
      160 GETIMPORT                        R26 K6 [require]
      162 GETIMPORT                        R27 K1 [script]
      164 GETTABLEKS                       R27 R27 K4 ["Parent"]
      166 GETTABLEKS                       R27 R27 K36 ["useNumberInputVariants"]
      168 CALL                             R26 1 1
      169 GETIMPORT                        R27 K6 [require]
      171 GETIMPORT                        R28 K1 [script]
      173 GETTABLEKS                       R28 R28 K4 ["Parent"]
      175 GETTABLEKS                       R28 R28 K37 ["calculateNumberInputValueFromPositions"]
      177 CALL                             R27 1 1
      178 GETIMPORT                        R28 K6 [require]
      180 GETTABLEKS                       R29 R0 K14 ["Enums"]
      182 GETTABLEKS                       R29 R29 K38 ["InputFocusBehavior"]
      184 CALL                             R28 1 1
      185 DUPCLOSURE                       R29 K39 [PROTO_0]
      186 DUPCLOSURE                       R30 K40 [PROTO_1]
      187 DUPTABLE                         R31 K52 [{"variant", "controlsVariant", "size", "minimum", "maximum", "step", "precision", "value", "formatAsString", "isScrubbable", "testId"}]
      188 GETTABLEKS                       R32 R10 K53 ["Standard"]
      190 SETTABLEKS                       R32 R31 K41 ["variant"]
      192 GETTABLEKS                       R32 R11 K54 ["Stacked"]
      194 SETTABLEKS                       R32 R31 K42 ["controlsVariant"]
      196 GETTABLEKS                       R32 R8 K55 ["Large"]
      198 SETTABLEKS                       R32 R31 K43 ["size"]
      200 LOADK                            R32 K56 [-∞]
      201 SETTABLEKS                       R32 R31 K44 ["minimum"]
      203 LOADK                            R32 K57 [∞]
      204 SETTABLEKS                       R32 R31 K45 ["maximum"]
      206 LOADN                            R32 1
      207 SETTABLEKS                       R32 R31 K46 ["step"]
      209 LOADN                            R32 3
      210 SETTABLEKS                       R32 R31 K47 ["precision"]
      212 LOADN                            R32 0
      213 SETTABLEKS                       R32 R31 K48 ["value"]
      215 SETTABLEKS                       R30 R31 K49 ["formatAsString"]
      217 LOADB                            R32 0
      218 SETTABLEKS                       R32 R31 K50 ["isScrubbable"]
      220 LOADK                            R32 K58 ["--foundation-number-input"]
      221 SETTABLEKS                       R32 R31 K51 ["testId"]
      223 DUPCLOSURE                       R32 K59 [PROTO_29]
      224 CAPTURE                          VAL R7
      225 CAPTURE                          VAL R31
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
      243 CAPTURE                          VAL R13
      244 CAPTURE                          VAL R18
      245 CAPTURE                          VAL R14
      246 GETTABLEKS                       R33 R2 K60 ["memo"]
      248 GETTABLEKS                       R34 R2 K61 ["forwardRef"]
      250 MOVE                             R35 R32
      251 CALL                             R34 1 -1
      252 CALL                             R33 -1 -1
      253 RETURN                           R33 -1
