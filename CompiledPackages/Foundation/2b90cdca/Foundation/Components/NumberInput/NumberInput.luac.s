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
        0 DUPTABLE                         R0 K3 [{"Font", "FontSize", "LineHeight"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["Font"]
        4 SETTABLEKS                       R1 R0 K0 ["Font"]
        6 GETUPVAL                         R2 1
        7 FASTCALL1                        MATH_FLOOR R2 ; [+2]
        8 GETIMPORT                        R1 K6 [math.floor]
       10 CALL                             R1 1 1
       11 SETTABLEKS                       R1 R0 K1 ["FontSize"]
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K2 ["LineHeight"]
       16 SETTABLEKS                       R1 R0 K2 ["LineHeight"]
       18 RETURN                           R0 1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADN                            R2 1
        3 GETUPVAL                         R3 2
        4 GETTABLEKS                       R3 R3 K0 ["LineHeight"]
        6 CALL                             R0 3 1
        7 GETUPVAL                         R6 3
        8 GETTABLEKS                       R6 R6 K2 ["container"]
       10 GETTABLEKS                       R6 R6 K3 ["minHeight"]
       12 SUBK                             R5 R6 K1 [2]
       13 SUB                              R4 R5 R0
       14 MULK                             R3 R4 K1 [2]
       15 FASTCALL1                        MATH_ROUND R3 ; [+2]
       16 GETIMPORT                        R2 K6 [math.round]
       18 CALL                             R2 1 1
       19 DIVK                             R1 R2 K1 [2]
       20 DUPTABLE                         R2 K11 [{"left", "right", "top", "bottom"}]
       21 GETIMPORT                        R3 K14 [UDim.new]
       23 LOADN                            R4 0
       24 GETUPVAL                         R7 3
       25 GETTABLEKS                       R7 R7 K2 ["container"]
       27 GETTABLEKS                       R7 R7 K15 ["horizontalPadding"]
       29 GETTABLEKS                       R7 R7 K16 ["Offset"]
       31 GETUPVAL                         R8 4
       32 ADD                              R6 R7 R8
       33 GETUPVAL                         R7 5
       34 ADD                              R5 R6 R7
       35 CALL                             R3 2 1
       36 SETTABLEKS                       R3 R2 K7 ["left"]
       38 GETUPVAL                         R3 3
       39 GETTABLEKS                       R3 R3 K2 ["container"]
       41 GETTABLEKS                       R3 R3 K15 ["horizontalPadding"]
       43 SETTABLEKS                       R3 R2 K8 ["right"]
       45 GETIMPORT                        R3 K14 [UDim.new]
       47 LOADN                            R4 0
       48 DIVK                             R7 R1 K1 [2]
       49 FASTCALL1                        MATH_FLOOR R7 ; [+2]
       50 GETIMPORT                        R6 K19 [math.floor]
       52 CALL                             R6 1 1
       53 ADDK                             R5 R6 K17 [1]
       54 CALL                             R3 2 1
       55 SETTABLEKS                       R3 R2 K9 ["top"]
       57 GETIMPORT                        R3 K14 [UDim.new]
       59 LOADN                            R4 0
       60 DIVK                             R7 R1 K1 [2]
       61 FASTCALL1                        MATH_CEIL R7 ; [+2]
       62 GETIMPORT                        R6 K21 [math.ceil]
       64 CALL                             R6 1 1
       65 ADDK                             R5 R6 K17 [1]
       66 CALL                             R3 2 1
       67 SETTABLEKS                       R3 R2 K10 ["bottom"]
       69 RETURN                           R2 1

PROTO_16:
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

PROTO_17:
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

PROTO_18:
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

PROTO_19:
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

PROTO_20:
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

PROTO_21:
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

PROTO_22:
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

PROTO_23:
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

PROTO_24:
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

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 LOADNIL                          R1
        6 SETTABLEKS                       R1 R0 K0 ["current"]
        8 RETURN                           R0 0

PROTO_26:
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

PROTO_27:
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

PROTO_28:
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

PROTO_29:
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

PROTO_30:
        0 LOADK                            R2 K0 ["%*<font transparency=\"1\">%*</font>%*"]
        1 GETUPVAL                         R5 0
        2 GETTABLEKS                       R5 R5 K1 ["prefix"]
        4 JUMPIFNOT                        R5 ; [+6]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R5 R5 K1 ["prefix"]
        8 LOADK                            R6 K2 [" "]
        9 CONCAT                           R4 R5 R6
       10 JUMP                             ; [+1]
       11 LOADK                            R4 K3 [""]
       12 MOVE                             R5 R0
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R7 R7 K4 ["suffix"]
       16 JUMPIFNOT                        R7 ; [+6]
       17 LOADK                            R7 K2 [" "]
       18 GETUPVAL                         R8 0
       19 GETTABLEKS                       R8 R8 K4 ["suffix"]
       21 CONCAT                           R6 R7 R8
       22 JUMP                             ; [+1]
       23 LOADK                            R6 K3 [""]
       24 NAMECALL                         R2 R2 K5 ["format"]
       26 CALL                             R2 4 1
       27 MOVE                             R1 R2
       28 RETURN                           R1 1

PROTO_31:
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
      103 DUPTABLE                         R5 K33 [{"left", "innerLeft"}]
      104 GETUPVAL                         R6 11
      105 GETTABLEKS                       R6 R6 K34 ["container"]
      107 GETTABLEKS                       R6 R6 K12 ["horizontalPadding"]
      109 SETTABLEKS                       R6 R5 K31 ["left"]
      111 GETUPVAL                         R7 10
      112 GETTABLEKS                       R7 R7 K35 ["FoundationSupportPrefixSuffixNumberInput"]
      114 JUMPIFNOT                        R7 ; [+18]
      115 GETUPVAL                         R7 12
      116 JUMPIFNOT                        R7 ; [+14]
      117 GETUPVAL                         R7 12
      118 GETTABLEKS                       R7 R7 K36 ["X"]
      120 LOADN                            R8 0
      121 JUMPIFNOTLT                      R8 R7 ; [+9]
      123 GETIMPORT                        R6 K39 [UDim.new]
      125 LOADN                            R7 0
      126 GETUPVAL                         R8 12
      127 GETTABLEKS                       R8 R8 K36 ["X"]
      129 CALL                             R6 2 1
      130 JUMP                             ; [+3]
      131 LOADNIL                          R6
      132 JUMP                             ; [+1]
      133 LOADNIL                          R6
      134 SETTABLEKS                       R6 R5 K32 ["innerLeft"]
      136 SETTABLEKS                       R5 R4 K12 ["horizontalPadding"]
      138 GETUPVAL                         R5 13
      139 GETTABLEKS                       R5 R5 K13 ["focusBehavior"]
      141 SETTABLEKS                       R5 R4 K13 ["focusBehavior"]
      143 GETUPVAL                         R5 14
      144 SETTABLEKS                       R5 R4 K14 ["onChanged"]
      146 GETUPVAL                         R5 15
      147 SETTABLEKS                       R5 R4 K15 ["onFocusLost"]
      149 GETUPVAL                         R5 16
      150 SETTABLEKS                       R5 R4 K16 ["onFocus"]
      152 GETUPVAL                         R6 4
      153 GETTABLEKS                       R6 R6 K40 ["isScrubbable"]
      155 JUMPIFNOT                        R6 ; [+2]
      156 GETUPVAL                         R5 17
      157 JUMP                             ; [+1]
      158 LOADNIL                          R5
      159 SETTABLEKS                       R5 R4 K17 ["onDragStarted"]
      161 GETUPVAL                         R6 4
      162 GETTABLEKS                       R6 R6 K40 ["isScrubbable"]
      164 JUMPIFNOT                        R6 ; [+2]
      165 GETUPVAL                         R5 18
      166 JUMP                             ; [+1]
      167 LOADNIL                          R5
      168 SETTABLEKS                       R5 R4 K18 ["onDrag"]
      170 GETUPVAL                         R6 4
      171 GETTABLEKS                       R6 R6 K40 ["isScrubbable"]
      173 JUMPIFNOT                        R6 ; [+2]
      174 GETUPVAL                         R5 19
      175 JUMP                             ; [+1]
      176 LOADNIL                          R5
      177 SETTABLEKS                       R5 R4 K19 ["onDragEnded"]
      179 GETUPVAL                         R5 4
      180 GETTABLEKS                       R5 R5 K20 ["onReturnPressed"]
      182 SETTABLEKS                       R5 R4 K20 ["onReturnPressed"]
      184 SETTABLEKS                       R0 R4 K21 ["ref"]
      186 GETUPVAL                         R6 4
      187 GETTABLEKS                       R6 R6 K40 ["isScrubbable"]
      189 JUMPIFNOT                        R6 ; [+26]
      190 GETUPVAL                         R6 20
      191 JUMPIFNOT                        R6 ; [+24]
      192 GETUPVAL                         R5 2
      193 GETTABLEKS                       R5 R5 K1 ["createElement"]
      195 LOADK                            R6 K41 ["UIGradient"]
      196 DUPTABLE                         R7 K46 [{["Color"], ["Transparency"], ["Rotation"] = 0}]
      197 GETIMPORT                        R8 K48 [ColorSequence.new]
      199 GETUPVAL                         R9 21
      200 GETTABLEKS                       R9 R9 K42 ["Color"]
      202 GETTABLEKS                       R9 R9 K49 ["Shift"]
      204 GETTABLEKS                       R9 R9 K50 ["Shift_300"]
      206 GETTABLEKS                       R9 R9 K51 ["Color3"]
      208 CALL                             R8 1 1
      209 SETTABLEKS                       R8 R7 K42 ["Color"]
      211 GETUPVAL                         R8 20
      212 SETTABLEKS                       R8 R7 K43 ["Transparency"]
      214 CALL                             R5 2 1
      215 JUMP                             ; [+1]
      216 LOADNIL                          R5
      217 SETTABLEKS                       R5 R4 K22 ["backgroundGradient"]
      219 GETUPVAL                         R6 0
      220 GETUPVAL                         R7 1
      221 GETTABLEKS                       R7 R7 K52 ["Stacked"]
      223 JUMPIFNOTEQ                      R6 R7 ; [+3]
      225 GETUPVAL                         R5 22
      226 JUMP                             ; [+1]
      227 LOADNIL                          R5
      228 SETTABLEKS                       R5 R4 K23 ["trailingElement"]
      230 GETUPVAL                         R6 4
      231 GETTABLEKS                       R6 R6 K53 ["leadingIcon"]
      233 JUMPIFNOT                        R6 ; [+32]
      234 GETUPVAL                         R5 2
      235 GETTABLEKS                       R5 R5 K1 ["createElement"]
      237 GETUPVAL                         R6 23
      238 DUPTABLE                         R7 K56 [{["tag"] = "row align-y-center size-0-full auto-x"}]
      239 GETUPVAL                         R8 2
      240 GETTABLEKS                       R8 R8 K1 ["createElement"]
      242 GETUPVAL                         R9 24
      243 DUPTABLE                         R10 K59 [{"name", "style", "size"}]
      244 GETUPVAL                         R11 4
      245 GETTABLEKS                       R11 R11 K53 ["leadingIcon"]
      247 SETTABLEKS                       R11 R10 K57 ["name"]
      249 GETUPVAL                         R11 11
      250 GETTABLEKS                       R11 R11 K60 ["icon"]
      252 GETTABLEKS                       R11 R11 K58 ["style"]
      254 SETTABLEKS                       R11 R10 K58 ["style"]
      256 GETUPVAL                         R11 11
      257 GETTABLEKS                       R11 R11 K60 ["icon"]
      259 GETTABLEKS                       R11 R11 K6 ["size"]
      261 SETTABLEKS                       R11 R10 K6 ["size"]
      263 CALL                             R8 2 -1
      264 CALL                             R5 -1 1
      265 JUMP                             ; [+1]
      266 LOADNIL                          R5
      267 SETTABLEKS                       R5 R4 K24 ["leadingElement"]
      269 GETUPVAL                         R5 4
      270 GETTABLEKS                       R5 R5 K25 ["isDisabled"]
      272 SETTABLEKS                       R5 R4 K25 ["isDisabled"]
      274 LOADK                            R6 K61 ["%*--field"]
      275 GETUPVAL                         R8 4
      276 GETTABLEKS                       R8 R8 K26 ["testId"]
      278 NAMECALL                         R6 R6 K62 ["format"]
      280 CALL                             R6 2 1
      281 MOVE                             R5 R6
      282 SETTABLEKS                       R5 R4 K26 ["testId"]
      284 CALL                             R2 2 1
      285 GETUPVAL                         R4 10
      286 GETTABLEKS                       R4 R4 K35 ["FoundationSupportPrefixSuffixNumberInput"]
      288 JUMPIFNOT                        R4 ; [+37]
      289 GETUPVAL                         R4 25
      290 JUMPIFNOT                        R4 ; [+35]
      291 GETUPVAL                         R3 2
      292 GETTABLEKS                       R3 R3 K1 ["createElement"]
      294 GETUPVAL                         R4 26
      295 DUPTABLE                         R5 K70 [{["tag"] = "size-full text-align-x-left text-align-y-center content-muted", ["fontStyle"], ["Text"], ["RichText"] = True, ["ClipsDescendants"] = True, ["padding"], ["testId"]}]
      296 GETUPVAL                         R6 11
      297 GETTABLEKS                       R6 R6 K71 ["textBox"]
      299 GETTABLEKS                       R6 R6 K64 ["fontStyle"]
      301 SETTABLEKS                       R6 R5 K64 ["fontStyle"]
      303 GETUPVAL                         R6 6
      304 NEWCLOSURE                       R8 P1
      305 CAPTURE                          UPVAL U4
      306 NAMECALL                         R6 R6 K72 ["map"]
      308 CALL                             R6 2 1
      309 SETTABLEKS                       R6 R5 K65 ["Text"]
      311 GETUPVAL                         R6 27
      312 SETTABLEKS                       R6 R5 K69 ["padding"]
      314 LOADK                            R7 K73 ["%*--units"]
      315 GETUPVAL                         R9 4
      316 GETTABLEKS                       R9 R9 K26 ["testId"]
      318 NAMECALL                         R7 R7 K62 ["format"]
      320 CALL                             R7 2 1
      321 MOVE                             R6 R7
      322 SETTABLEKS                       R6 R5 K26 ["testId"]
      324 CALL                             R3 2 1
      325 JUMP                             ; [+1]
      326 LOADNIL                          R3
      327 GETUPVAL                         R4 10
      328 GETTABLEKS                       R4 R4 K35 ["FoundationSupportPrefixSuffixNumberInput"]
      330 JUMPIFNOT                        R4 ; [+12]
      331 GETUPVAL                         R4 2
      332 GETTABLEKS                       R4 R4 K1 ["createElement"]
      334 GETUPVAL                         R5 23
      335 DUPTABLE                         R6 K75 [{["tag"] = "size-full-0 auto-y"}]
      336 DUPTABLE                         R7 K78 [{"Input", "Units"}]
      337 SETTABLEKS                       R2 R7 K76 ["Input"]
      339 SETTABLEKS                       R3 R7 K77 ["Units"]
      341 CALL                             R4 3 1
      342 MOVE                             R2 R4
      343 JUMPIFNOT                        R1 ; [+29]
      344 GETUPVAL                         R4 2
      345 GETTABLEKS                       R4 R4 K1 ["createElement"]
      347 GETUPVAL                         R5 23
      348 DUPTABLE                         R6 K81 [{["Size"], ["tag"] = "row align-y-center gap-xsmall auto-y"}]
      349 GETIMPORT                        R7 K84 [UDim2.fromOffset]
      351 GETUPVAL                         R9 28
      352 GETTABLEKS                       R9 R9 K85 ["Offset"]
      354 GETUPVAL                         R10 29
      355 GETTABLEKS                       R10 R10 K85 ["Offset"]
      357 SUB                              R8 R9 R10
      358 LOADN                            R9 0
      359 CALL                             R7 2 1
      360 SETTABLEKS                       R7 R6 K79 ["Size"]
      362 DUPTABLE                         R7 K88 [{"InputField", "Controls"}]
      363 SETTABLEKS                       R2 R7 K86 ["InputField"]
      365 JUMPIFNOT                        R1 ; [+2]
      366 GETUPVAL                         R8 22
      367 JUMP                             ; [+1]
      368 LOADNIL                          R8
      369 SETTABLEKS                       R8 R7 K87 ["Controls"]
      371 CALL                             R4 3 1
      372 RETURN                           R4 1
      373 MOVE                             R4 R2
      374 RETURN                           R4 1

PROTO_32:
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
      186 LOADNIL                          R23
      187 LOADNIL                          R24
      188 LOADNIL                          R25
      189 LOADNIL                          R26
      190 GETUPVAL                         R27 9
      191 GETTABLEKS                       R27 R27 K18 ["FoundationSupportPrefixSuffixNumberInput"]
      193 JUMPIFNOT                        R27 ; [+132]
      194 GETTABLEKS                       R27 R4 K19 ["textBox"]
      196 GETTABLEKS                       R27 R27 K20 ["fontStyle"]
      198 GETTABLEKS                       R28 R27 K21 ["FontSize"]
      200 GETTABLEKS                       R30 R2 K22 ["prefix"]
      202 JUMPIFNOT                        R30 ; [+5]
      203 LOADB                            R29 1
      204 GETTABLEKS                       R30 R2 K22 ["prefix"]
      206 JUMPIFNOTEQKS                    R30 K23 [""] ; [+10]
      208 GETTABLEKS                       R29 R2 K24 ["suffix"]
      210 JUMPIFNOT                        R29 ; [+6]
      211 GETTABLEKS                       R30 R2 K24 ["suffix"]
      213 JUMPIFNOTEQKS                    R30 K23 [""] ; [+2]
      215 LOADB                            R29 0 +1
      216 LOADB                            R29 1
      217 MOVE                             R23 R29
      218 GETTABLEKS                       R29 R2 K22 ["prefix"]
      220 JUMPIFNOT                        R29 ; [+5]
      221 GETTABLEKS                       R29 R2 K22 ["prefix"]
      223 LOADK                            R30 K25 [" "]
      224 CONCAT                           R24 R29 R30
      225 JUMP                             ; [+1]
      226 LOADNIL                          R24
      227 GETUPVAL                         R29 5
      228 GETTABLEKS                       R29 R29 K12 ["useMemo"]
      230 NEWCLOSURE                       R30 P8
      231 CAPTURE                          VAL R27
      232 CAPTURE                          VAL R28
      233 NEWTABLE                         R31 0 2
      235 MOVE                             R32 R27
      236 MOVE                             R33 R28
      237 SETLIST                          R31 R32 2 [1]
      239 CALL                             R29 2 1
      240 GETUPVAL                         R30 10
      241 MOVE                             R31 R24
      242 MOVE                             R32 R29
      243 CALL                             R30 2 1
      244 MOVE                             R25 R30
      245 GETUPVAL                         R30 11
      246 GETTABLEKS                       R31 R4 K26 ["icon"]
      248 GETTABLEKS                       R31 R31 K0 ["size"]
      250 GETUPVAL                         R32 12
      251 GETTABLEKS                       R33 R2 K27 ["leadingIcon"]
      253 CALL                             R32 1 -1
      254 CALL                             R30 -1 1
      255 GETTABLEKS                       R32 R2 K27 ["leadingIcon"]
      257 JUMPIFNOT                        R32 ; [+5]
      258 GETTABLEKS                       R31 R30 K28 ["X"]
      260 GETTABLEKS                       R31 R31 K29 ["Offset"]
      262 JUMP                             ; [+1]
      263 LOADN                            R31 0
      264 GETTABLEKS                       R33 R2 K0 ["size"]
      266 GETUPVAL                         R34 13
      267 GETTABLEKS                       R34 R34 K30 ["XSmall"]
      269 JUMPIFNOTEQ                      R33 R34 ; [+6]
      271 GETTABLEKS                       R32 R3 K31 ["Gap"]
      273 GETTABLEKS                       R32 R32 K32 ["Small"]
      275 JUMP                             ; [+16]
      276 GETTABLEKS                       R33 R2 K0 ["size"]
      278 GETUPVAL                         R34 13
      279 GETTABLEKS                       R34 R34 K32 ["Small"]
      281 JUMPIFNOTEQ                      R33 R34 ; [+6]
      283 GETTABLEKS                       R32 R3 K31 ["Gap"]
      285 GETTABLEKS                       R32 R32 K33 ["Medium"]
      287 JUMP                             ; [+4]
      288 GETTABLEKS                       R32 R3 K31 ["Gap"]
      290 GETTABLEKS                       R32 R32 K34 ["Large"]
      292 GETTABLEKS                       R34 R2 K27 ["leadingIcon"]
      294 JUMPIFNOT                        R34 ; [+2]
      295 MOVE                             R33 R32
      296 JUMP                             ; [+1]
      297 LOADN                            R33 0
      298 GETUPVAL                         R34 5
      299 GETTABLEKS                       R34 R34 K12 ["useMemo"]
      301 NEWCLOSURE                       R35 P9
      302 CAPTURE                          UPVAL U14
      303 CAPTURE                          VAL R28
      304 CAPTURE                          VAL R27
      305 CAPTURE                          VAL R4
      306 CAPTURE                          VAL R31
      307 CAPTURE                          VAL R33
      308 NEWTABLE                         R36 0 6
      310 GETTABLEKS                       R37 R4 K35 ["container"]
      312 GETTABLEKS                       R37 R37 K36 ["minHeight"]
      314 GETTABLEKS                       R38 R4 K35 ["container"]
      316 GETTABLEKS                       R38 R38 K37 ["horizontalPadding"]
      318 MOVE                             R39 R27
      319 MOVE                             R40 R31
      320 MOVE                             R41 R33
      321 MOVE                             R42 R28
      322 SETLIST                          R36 R37 6 [1]
      324 CALL                             R34 2 1
      325 MOVE                             R26 R34
      326 GETTABLEKS                       R28 R2 K38 ["width"]
      328 JUMPIFNOT                        R28 ; [+3]
      329 GETTABLEKS                       R27 R2 K38 ["width"]
      331 JUMP                             ; [+8]
      332 GETIMPORT                        R27 K41 [UDim.new]
      334 LOADN                            R28 0
      335 GETTABLEKS                       R29 R5 K35 ["container"]
      337 GETTABLEKS                       R29 R29 K38 ["width"]
      339 CALL                             R27 2 1
      340 GETUPVAL                         R28 5
      341 GETTABLEKS                       R28 R28 K6 ["useCallback"]
      343 NEWCLOSURE                       R29 P10
      344 CAPTURE                          VAL R22
      345 CAPTURE                          UPVAL U8
      346 CAPTURE                          VAL R2
      347 NEWTABLE                         R30 0 2
      349 GETTABLEKS                       R31 R2 K42 ["onFocusGained"]
      351 GETTABLEKS                       R32 R2 K13 ["value"]
      353 SETLIST                          R30 R31 2 [1]
      355 CALL                             R28 2 1
      356 GETUPVAL                         R29 5
      357 GETTABLEKS                       R29 R29 K6 ["useCallback"]
      359 NEWCLOSURE                       R30 P11
      360 CAPTURE                          VAL R20
      361 CAPTURE                          VAL R22
      362 CAPTURE                          VAL R9
      363 CAPTURE                          VAL R2
      364 NEWTABLE                         R31 0 4
      366 GETTABLEKS                       R32 R2 K43 ["onChanged"]
      368 GETTABLEKS                       R33 R2 K17 ["formatAsString"]
      370 MOVE                             R34 R20
      371 MOVE                             R35 R9
      372 SETLIST                          R31 R32 4 [1]
      374 CALL                             R29 2 1
      375 GETUPVAL                         R30 5
      376 GETTABLEKS                       R30 R30 K6 ["useCallback"]
      378 NEWCLOSURE                       R31 P12
      379 CAPTURE                          VAL R11
      380 CAPTURE                          VAL R29
      381 CAPTURE                          UPVAL U8
      382 CAPTURE                          VAL R2
      383 CAPTURE                          UPVAL U15
      384 NEWTABLE                         R32 0 4
      386 MOVE                             R33 R29
      387 GETTABLEKS                       R34 R2 K44 ["onFocusLost"]
      389 GETTABLEKS                       R35 R2 K13 ["value"]
      391 MOVE                             R36 R20
      392 SETLIST                          R32 R33 4 [1]
      394 CALL                             R30 2 1
      395 GETUPVAL                         R31 5
      396 GETTABLEKS                       R31 R31 K6 ["useCallback"]
      398 NEWCLOSURE                       R32 P13
      399 CAPTURE                          VAL R22
      400 CAPTURE                          VAL R9
      401 CAPTURE                          VAL R11
      402 CAPTURE                          VAL R2
      403 CAPTURE                          UPVAL U15
      404 NEWTABLE                         R33 0 2
      406 MOVE                             R34 R9
      407 GETTABLEKS                       R35 R2 K43 ["onChanged"]
      409 SETLIST                          R33 R34 2 [1]
      411 CALL                             R31 2 1
      412 GETUPVAL                         R32 5
      413 GETTABLEKS                       R32 R32 K6 ["useCallback"]
      415 NEWCLOSURE                       R33 P14
      416 CAPTURE                          UPVAL U8
      417 CAPTURE                          VAL R18
      418 CAPTURE                          VAL R29
      419 CAPTURE                          VAL R16
      420 CAPTURE                          UPVAL U15
      421 NEWTABLE                         R34 0 3
      423 MOVE                             R35 R18
      424 MOVE                             R36 R16
      425 MOVE                             R37 R29
      426 SETLIST                          R34 R35 3 [1]
      428 CALL                             R32 2 1
      429 GETUPVAL                         R33 5
      430 GETTABLEKS                       R33 R33 K6 ["useCallback"]
      432 NEWCLOSURE                       R34 P15
      433 CAPTURE                          UPVAL U8
      434 CAPTURE                          VAL R19
      435 CAPTURE                          VAL R29
      436 CAPTURE                          VAL R17
      437 CAPTURE                          UPVAL U15
      438 NEWTABLE                         R35 0 3
      440 MOVE                             R36 R19
      441 MOVE                             R37 R17
      442 MOVE                             R38 R29
      443 SETLIST                          R35 R36 3 [1]
      445 CALL                             R33 2 1
      446 GETUPVAL                         R34 5
      447 GETTABLEKS                       R34 R34 K45 ["createElement"]
      449 GETUPVAL                         R35 16
      450 DUPTABLE                         R36 K49 [{"variant", "controlsVariant", "size", "increment", "decrement", "testId"}]
      451 GETTABLEKS                       R37 R2 K1 ["variant"]
      453 SETTABLEKS                       R37 R36 K1 ["variant"]
      455 SETTABLEKS                       R13 R36 K2 ["controlsVariant"]
      457 GETTABLEKS                       R37 R2 K0 ["size"]
      459 SETTABLEKS                       R37 R36 K0 ["size"]
      461 DUPTABLE                         R37 K51 [{"isDisabled", "onClick"}]
      462 SETTABLEKS                       R18 R37 K15 ["isDisabled"]
      464 SETTABLEKS                       R32 R37 K50 ["onClick"]
      466 SETTABLEKS                       R37 R36 K46 ["increment"]
      468 DUPTABLE                         R37 K51 [{"isDisabled", "onClick"}]
      469 SETTABLEKS                       R19 R37 K15 ["isDisabled"]
      471 SETTABLEKS                       R33 R37 K50 ["onClick"]
      473 SETTABLEKS                       R37 R36 K47 ["decrement"]
      475 GETTABLEKS                       R37 R2 K48 ["testId"]
      477 SETTABLEKS                       R37 R36 K48 ["testId"]
      479 CALL                             R34 2 1
      480 GETUPVAL                         R35 5
      481 GETTABLEKS                       R35 R35 K12 ["useMemo"]
      483 NEWCLOSURE                       R36 P16
      484 CAPTURE                          VAL R13
      485 CAPTURE                          UPVAL U17
      486 CAPTURE                          VAL R5
      487 CAPTURE                          VAL R3
      488 NEWTABLE                         R37 0 4
      490 MOVE                             R38 R3
      491 MOVE                             R39 R13
      492 GETTABLEKS                       R40 R5 K52 ["splitButton"]
      494 GETTABLEKS                       R40 R40 K0 ["size"]
      496 GETTABLEKS                       R41 R3 K31 ["Gap"]
      498 GETTABLEKS                       R41 R41 K30 ["XSmall"]
      500 SETLIST                          R37 R38 4 [1]
      502 CALL                             R35 2 1
      503 GETUPVAL                         R36 5
      504 GETTABLEKS                       R36 R36 K6 ["useCallback"]
      506 NEWCLOSURE                       R37 P17
      507 CAPTURE                          VAL R2
      508 CAPTURE                          VAL R8
      509 CAPTURE                          UPVAL U8
      510 NEWTABLE                         R38 0 1
      512 GETTABLEKS                       R39 R2 K13 ["value"]
      514 SETLIST                          R38 R39 1 [1]
      516 CALL                             R36 2 1
      517 GETUPVAL                         R37 5
      518 GETTABLEKS                       R37 R37 K6 ["useCallback"]
      520 NEWCLOSURE                       R38 P18
      521 CAPTURE                          VAL R8
      522 CAPTURE                          UPVAL U18
      523 CAPTURE                          VAL R2
      524 CAPTURE                          VAL R29
      525 CAPTURE                          UPVAL U15
      526 NEWTABLE                         R39 0 3
      528 MOVE                             R40 R29
      529 GETTABLEKS                       R41 R2 K11 ["step"]
      531 MOVE                             R42 R20
      532 SETLIST                          R39 R40 3 [1]
      534 CALL                             R37 2 1
      535 GETUPVAL                         R38 5
      536 GETTABLEKS                       R38 R38 K6 ["useCallback"]
      538 NEWCLOSURE                       R39 P19
      539 CAPTURE                          VAL R8
      540 NEWTABLE                         R40 0 0
      542 CALL                             R38 2 1
      543 GETTABLEKS                       R39 R3 K53 ["Color"]
      545 GETTABLEKS                       R39 R39 K54 ["Shift"]
      547 GETTABLEKS                       R39 R39 K55 ["Shift_300"]
      549 GETTABLEKS                       R39 R39 K56 ["Transparency"]
      551 GETTABLEKS                       R40 R3 K53 ["Color"]
      553 GETTABLEKS                       R40 R40 K54 ["Shift"]
      555 GETTABLEKS                       R40 R40 K57 ["Shift_100"]
      557 GETTABLEKS                       R40 R40 K56 ["Transparency"]
      559 GETUPVAL                         R41 5
      560 GETTABLEKS                       R41 R41 K12 ["useMemo"]
      562 NEWCLOSURE                       R42 P20
      563 CAPTURE                          UPVAL U7
      564 CAPTURE                          VAL R2
      565 CAPTURE                          VAL R14
      566 CAPTURE                          VAL R40
      567 CAPTURE                          VAL R39
      568 NEWTABLE                         R43 0 6
      570 MOVE                             R44 R39
      571 MOVE                             R45 R40
      572 GETTABLEKS                       R46 R2 K13 ["value"]
      574 MOVE                             R47 R14
      575 GETTABLEKS                       R48 R2 K10 ["maximum"]
      577 GETTABLEKS                       R49 R2 K9 ["minimum"]
      579 SETLIST                          R43 R44 6 [1]
      581 CALL                             R41 2 1
      582 GETUPVAL                         R42 5
      583 GETTABLEKS                       R42 R42 K58 ["useEffect"]
      585 NEWCLOSURE                       R43 P21
      586 CAPTURE                          VAL R9
      587 CAPTURE                          UPVAL U19
      588 CAPTURE                          VAL R2
      589 CAPTURE                          VAL R22
      590 CAPTURE                          VAL R20
      591 NEWTABLE                         R44 0 4
      593 GETTABLEKS                       R45 R2 K13 ["value"]
      595 GETTABLEKS                       R46 R2 K17 ["formatAsString"]
      597 MOVE                             R47 R20
      598 MOVE                             R48 R9
      599 SETLIST                          R44 R45 4 [1]
      601 CALL                             R42 2 0
      602 GETUPVAL                         R42 5
      603 GETTABLEKS                       R42 R42 K45 ["createElement"]
      605 GETUPVAL                         R43 20
      606 GETUPVAL                         R44 21
      607 MOVE                             R45 R2
      608 DUPTABLE                         R46 K64 [{"width", "ref", "hasError", "label", "size", "isRequired", "isDisabled", "hint", "textBoxRef", "input"}]
      609 SETTABLEKS                       R27 R46 K38 ["width"]
      611 SETTABLEKS                       R1 R46 K59 ["ref"]
      613 SETTABLEKS                       R12 R46 K8 ["hasError"]
      615 GETTABLEKS                       R47 R2 K60 ["label"]
      617 SETTABLEKS                       R47 R46 K60 ["label"]
      619 GETUPVAL                         R47 22
      620 GETTABLEKS                       R48 R2 K0 ["size"]
      622 CALL                             R47 1 1
      623 SETTABLEKS                       R47 R46 K0 ["size"]
      625 GETTABLEKS                       R47 R2 K61 ["isRequired"]
      627 SETTABLEKS                       R47 R46 K61 ["isRequired"]
      629 GETTABLEKS                       R47 R2 K15 ["isDisabled"]
      631 SETTABLEKS                       R47 R46 K15 ["isDisabled"]
      633 GETTABLEKS                       R47 R2 K62 ["hint"]
      635 SETTABLEKS                       R47 R46 K62 ["hint"]
      637 SETTABLEKS                       R7 R46 K5 ["textBoxRef"]
      639 NEWCLOSURE                       R47 P22
      640 CAPTURE                          VAL R13
      641 CAPTURE                          UPVAL U17
      642 CAPTURE                          UPVAL U5
      643 CAPTURE                          UPVAL U23
      644 CAPTURE                          VAL R2
      645 CAPTURE                          UPVAL U24
      646 CAPTURE                          VAL R21
      647 CAPTURE                          VAL R9
      648 CAPTURE                          VAL R20
      649 CAPTURE                          VAL R12
      650 CAPTURE                          UPVAL U9
      651 CAPTURE                          VAL R4
      652 CAPTURE                          REF R25
      653 CAPTURE                          VAL R0
      654 CAPTURE                          VAL R31
      655 CAPTURE                          VAL R30
      656 CAPTURE                          VAL R28
      657 CAPTURE                          VAL R36
      658 CAPTURE                          VAL R37
      659 CAPTURE                          VAL R38
      660 CAPTURE                          VAL R41
      661 CAPTURE                          VAL R3
      662 CAPTURE                          VAL R34
      663 CAPTURE                          UPVAL U25
      664 CAPTURE                          UPVAL U26
      665 CAPTURE                          REF R23
      666 CAPTURE                          UPVAL U27
      667 CAPTURE                          REF R26
      668 CAPTURE                          VAL R27
      669 CAPTURE                          VAL R35
      670 SETTABLEKS                       R47 R46 K63 ["input"]
      672 CALL                             R44 2 -1
      673 CALL                             R42 -1 -1
      674 CLOSEUPVALS                      R23
      675 RETURN                           R42 -1

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
       99 GETTABLEKS                       R18 R5 K24 ["Text"]
      101 CALL                             R17 1 1
      102 GETIMPORT                        R18 K6 [require]
      104 GETTABLEKS                       R19 R5 K25 ["Types"]
      106 CALL                             R18 1 1
      107 GETIMPORT                        R19 K6 [require]
      109 GETTABLEKS                       R20 R5 K26 ["View"]
      111 CALL                             R19 1 1
      112 GETIMPORT                        R20 K6 [require]
      114 GETTABLEKS                       R21 R0 K11 ["Utility"]
      116 GETTABLEKS                       R21 R21 K27 ["getBindableValue"]
      118 CALL                             R20 1 1
      119 GETIMPORT                        R21 K6 [require]
      121 GETTABLEKS                       R22 R0 K11 ["Utility"]
      123 GETTABLEKS                       R22 R22 K28 ["getInputTextSize"]
      125 CALL                             R21 1 1
      126 GETIMPORT                        R22 K6 [require]
      128 GETTABLEKS                       R23 R0 K11 ["Utility"]
      130 GETTABLEKS                       R23 R23 K29 ["getMultiLineTextHeight"]
      132 CALL                             R22 1 1
      133 GETIMPORT                        R23 K6 [require]
      135 GETTABLEKS                       R24 R0 K11 ["Utility"]
      137 GETTABLEKS                       R24 R24 K30 ["isBuilderIcon"]
      139 CALL                             R23 1 1
      140 GETIMPORT                        R24 K6 [require]
      142 GETTABLEKS                       R25 R0 K11 ["Utility"]
      144 GETTABLEKS                       R25 R25 K31 ["joinBindables"]
      146 CALL                             R24 1 1
      147 GETIMPORT                        R25 K6 [require]
      149 GETTABLEKS                       R26 R0 K11 ["Utility"]
      151 GETTABLEKS                       R26 R26 K32 ["mapBindable"]
      153 CALL                             R25 1 1
      154 GETIMPORT                        R26 K6 [require]
      156 GETTABLEKS                       R27 R0 K11 ["Utility"]
      158 GETTABLEKS                       R27 R27 K33 ["useIconSize"]
      160 CALL                             R26 1 1
      161 GETIMPORT                        R27 K6 [require]
      163 GETTABLEKS                       R28 R5 K34 ["TextInput"]
      165 GETTABLEKS                       R28 R28 K35 ["useTextInputVariants"]
      167 CALL                             R27 1 1
      168 GETIMPORT                        R28 K6 [require]
      170 GETTABLEKS                       R29 R0 K11 ["Utility"]
      172 GETTABLEKS                       R29 R29 K36 ["useTextSize"]
      174 CALL                             R28 1 1
      175 GETIMPORT                        R29 K6 [require]
      177 GETTABLEKS                       R30 R0 K37 ["Providers"]
      179 GETTABLEKS                       R30 R30 K38 ["Style"]
      181 GETTABLEKS                       R30 R30 K39 ["useTokens"]
      183 CALL                             R29 1 1
      184 GETIMPORT                        R30 K6 [require]
      186 GETIMPORT                        R31 K1 [script]
      188 GETTABLEKS                       R31 R31 K4 ["Parent"]
      190 GETTABLEKS                       R31 R31 K40 ["NumberInputControls"]
      192 CALL                             R30 1 1
      193 GETIMPORT                        R31 K6 [require]
      195 GETIMPORT                        R32 K1 [script]
      197 GETTABLEKS                       R32 R32 K4 ["Parent"]
      199 GETTABLEKS                       R32 R32 K41 ["useNumberInputVariants"]
      201 CALL                             R31 1 1
      202 GETIMPORT                        R32 K6 [require]
      204 GETIMPORT                        R33 K1 [script]
      206 GETTABLEKS                       R33 R33 K4 ["Parent"]
      208 GETTABLEKS                       R33 R33 K42 ["calculateNumberInputValueFromPositions"]
      210 CALL                             R32 1 1
      211 GETIMPORT                        R33 K6 [require]
      213 GETTABLEKS                       R34 R0 K14 ["Enums"]
      215 GETTABLEKS                       R34 R34 K43 ["InputFocusBehavior"]
      217 CALL                             R33 1 1
      218 DUPCLOSURE                       R34 K44 [PROTO_0]
      219 DUPCLOSURE                       R35 K45 [PROTO_1]
      220 DUPTABLE                         R36 K64 [{["variant"], ["controlsVariant"], ["size"], ["minimum"] = -∞, ["maximum"] = ∞, ["step"] = 1, ["precision"] = 3, ["value"] = 0, ["formatAsString"], ["isScrubbable"] = False, ["testId"] = "--foundation-number-input"}]
      221 GETTABLEKS                       R37 R10 K65 ["Standard"]
      223 SETTABLEKS                       R37 R36 K46 ["variant"]
      225 GETTABLEKS                       R37 R11 K66 ["Stacked"]
      227 SETTABLEKS                       R37 R36 K47 ["controlsVariant"]
      229 GETTABLEKS                       R37 R8 K67 ["Large"]
      231 SETTABLEKS                       R37 R36 K48 ["size"]
      233 SETTABLEKS                       R35 R36 K59 ["formatAsString"]
      235 DUPCLOSURE                       R37 K68 [PROTO_32]
      236 CAPTURE                          VAL R7
      237 CAPTURE                          VAL R36
      238 CAPTURE                          VAL R29
      239 CAPTURE                          VAL R27
      240 CAPTURE                          VAL R31
      241 CAPTURE                          VAL R2
      242 CAPTURE                          VAL R4
      243 CAPTURE                          VAL R25
      244 CAPTURE                          VAL R20
      245 CAPTURE                          VAL R13
      246 CAPTURE                          VAL R28
      247 CAPTURE                          VAL R26
      248 CAPTURE                          VAL R23
      249 CAPTURE                          VAL R8
      250 CAPTURE                          VAL R22
      251 CAPTURE                          VAL R12
      252 CAPTURE                          VAL R30
      253 CAPTURE                          VAL R11
      254 CAPTURE                          VAL R32
      255 CAPTURE                          VAL R3
      256 CAPTURE                          VAL R15
      257 CAPTURE                          VAL R6
      258 CAPTURE                          VAL R21
      259 CAPTURE                          VAL R16
      260 CAPTURE                          VAL R24
      261 CAPTURE                          VAL R19
      262 CAPTURE                          VAL R14
      263 CAPTURE                          VAL R17
      264 GETTABLEKS                       R38 R2 K69 ["memo"]
      266 GETTABLEKS                       R39 R2 K70 ["forwardRef"]
      268 MOVE                             R40 R37
      269 CALL                             R39 1 -1
      270 CALL                             R38 -1 -1
      271 RETURN                           R38 -1
