PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["List"]
        4 GETTABLEKS                       R1 R2 K1 ["join"]
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R2 R3 K2 ["addedEventList"]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R3 R4 K3 ["eventList"]
       12 CALL                             R1 2 -1
       13 CALL                             R0 -1 -1
       14 RETURN                           R0 -1

PROTO_1:
        0 DUPTABLE                         R1 K5 [{"addedEventList", "eventList", "nextCursor", "prevCursor", "startDate"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["addedEventList"]
        5 GETUPVAL                         R3 0
        6 JUMPIFNOT                        R3 ; [+10]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R3 R4 K6 ["List"]
       10 GETTABLEKS                       R2 R3 K7 ["join"]
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R4 R0 K1 ["eventList"]
       15 CALL                             R2 2 1
       16 JUMPIF                           R2 ; [+9]
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R3 R4 K6 ["List"]
       20 GETTABLEKS                       R2 R3 K7 ["join"]
       22 GETTABLEKS                       R3 R0 K1 ["eventList"]
       24 GETUPVAL                         R4 2
       25 CALL                             R2 2 1
       26 SETTABLEKS                       R2 R1 K1 ["eventList"]
       28 GETUPVAL                         R3 0
       29 JUMPIFNOT                        R3 ; [+3]
       30 GETTABLEKS                       R2 R0 K2 ["nextCursor"]
       32 JUMPIF                           R2 ; [+1]
       33 GETUPVAL                         R2 3
       34 SETTABLEKS                       R2 R1 K2 ["nextCursor"]
       36 GETUPVAL                         R3 0
       37 JUMPIF                           R3 ; [+3]
       38 GETTABLEKS                       R2 R0 K3 ["prevCursor"]
       40 JUMPIF                           R2 ; [+1]
       41 GETUPVAL                         R2 4
       42 SETTABLEKS                       R2 R1 K3 ["prevCursor"]
       44 GETTABLEKS                       R2 R0 K4 ["startDate"]
       46 SETTABLEKS                       R2 R1 K4 ["startDate"]
       48 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R5 0
        1 NEWCLOSURE                       R6 P0
        2 CAPTURE                          VAL R3
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R2
        7 CALL                             R5 1 0
        8 JUMPIFNOT                        R3 ; [+17]
        9 GETUPVAL                         R5 2
       10 GETUPVAL                         R10 2
       11 GETTABLEKS                       R9 R10 K1 ["current"]
       13 ORK                              R8 R9 K0 [0]
       14 LENGTH                           R10 R0
       15 GETUPVAL                         R12 3
       16 GETTABLEKS                       R11 R12 K2 ["bubbleHeight"]
       18 MUL                              R9 R10 R11
       19 ADD                              R7 R8 R9
       20 GETUPVAL                         R9 3
       21 GETTABLEKS                       R8 R9 K3 ["filterHeaderHeight"]
       23 ADD                              R6 R7 R8
       24 SETTABLEKS                       R6 R5 K1 ["current"]
       26 JUMPIFNOT                        R4 ; [+2]
       27 MOVE                             R5 R4
       28 CALL                             R5 0 0
       29 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 SETTABLEKS                       R2 R1 K0 ["current"]
        4 GETUPVAL                         R1 1
        5 LOADNIL                          R2
        6 SETTABLEKS                       R2 R1 K0 ["current"]
        8 GETUPVAL                         R1 2
        9 NEWTABLE                         R2 0 0
       11 SETTABLEKS                       R2 R1 K0 ["current"]
       13 GETUPVAL                         R1 3
       14 NEWTABLE                         R2 0 0
       16 SETTABLEKS                       R2 R1 K0 ["current"]
       18 GETUPVAL                         R1 4
       19 LOADB                            R2 0
       20 CALL                             R1 1 0
       21 GETUPVAL                         R1 5
       22 LOADB                            R2 0
       23 CALL                             R1 1 0
       24 GETUPVAL                         R1 6
       25 DUPTABLE                         R2 K6 [{"addedEventList", "eventList", "nextCursor", "prevCursor", "startDate"}]
       26 NEWTABLE                         R3 0 0
       28 SETTABLEKS                       R3 R2 K1 ["addedEventList"]
       30 NEWTABLE                         R3 0 0
       32 SETTABLEKS                       R3 R2 K2 ["eventList"]
       34 LOADK                            R3 K7 [""]
       35 SETTABLEKS                       R3 R2 K3 ["nextCursor"]
       37 LOADK                            R3 K7 [""]
       38 SETTABLEKS                       R3 R2 K4 ["prevCursor"]
       40 SETTABLEKS                       R0 R2 K5 ["startDate"]
       42 CALL                             R1 1 0
       43 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["startDate"]
        3 JUMPIFEQ                         R0 R2 ; [+7]
        5 GETUPVAL                         R2 1
        6 SETTABLEKS                       R1 R2 K1 ["current"]
        8 GETUPVAL                         R2 2
        9 MOVE                             R3 R0
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["nextCursor"]
        3 JUMPIFEQKNIL                     R1 ; [+16]
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R2 2
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K0 ["nextCursor"]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K1 ["startDate"]
       13 LOADB                            R5 0
       14 MOVE                             R6 R0
       15 GETUPVAL                         R8 3
       16 GETTABLEKS                       R7 R8 K2 ["current"]
       18 CALL                             R1 6 0
       19 RETURN                           R0 0
       20 JUMPIFNOT                        R0 ; [+2]
       21 MOVE                             R1 R0
       22 CALL                             R1 0 0
       23 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["prevCursor"]
        3 JUMPIFEQKNIL                     R1 ; [+21]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K1 ["startDate"]
        8 JUMPIFEQKNIL                     R1 ; [+16]
       10 GETUPVAL                         R1 1
       11 GETUPVAL                         R2 2
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R3 R4 K0 ["prevCursor"]
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R4 R5 K1 ["startDate"]
       18 LOADB                            R5 1
       19 MOVE                             R6 R0
       20 GETUPVAL                         R8 3
       21 GETTABLEKS                       R7 R8 K2 ["current"]
       23 CALL                             R1 6 0
       24 RETURN                           R0 0
       25 JUMPIFNOT                        R0 ; [+2]
       26 MOVE                             R1 R0
       27 CALL                             R1 0 0
       28 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_9:
        0 GETTABLEKS                       R3 R0 K0 ["AbsoluteCanvasSize"]
        2 GETTABLEKS                       R1 R3 K1 ["X"]
        4 GETTABLEKS                       R3 R0 K0 ["AbsoluteCanvasSize"]
        6 GETTABLEKS                       R2 R3 K2 ["Y"]
        8 GETTABLEKS                       R5 R0 K3 ["AbsoluteWindowSize"]
       10 GETTABLEKS                       R3 R5 K1 ["X"]
       12 GETTABLEKS                       R5 R0 K3 ["AbsoluteWindowSize"]
       14 GETTABLEKS                       R4 R5 K2 ["Y"]
       16 GETTABLEKS                       R7 R0 K4 ["CanvasPosition"]
       18 GETTABLEKS                       R5 R7 K1 ["X"]
       20 GETTABLEKS                       R7 R0 K4 ["CanvasPosition"]
       22 GETTABLEKS                       R6 R7 K2 ["Y"]
       24 SUB                              R8 R1 R3
       25 SUB                              R7 R8 R5
       26 SUB                              R9 R2 R4
       27 SUB                              R8 R9 R6
       28 GETTABLEKS                       R9 R0 K5 ["ScrollingDirection"]
       30 GETIMPORT                        R10 K7 [Enum.ScrollingDirection.Y]
       32 JUMPIFNOTEQ                      R9 R10 ; [+5]
       34 DIV                              R9 R6 R4
       35 DIV                              R10 R8 R4
       36 MOVE                             R11 R6
       37 RETURN                           R9 3
       38 GETTABLEKS                       R9 R0 K5 ["ScrollingDirection"]
       40 GETIMPORT                        R10 K8 [Enum.ScrollingDirection.X]
       42 JUMPIFNOTEQ                      R9 R10 ; [+5]
       44 DIV                              R9 R5 R3
       45 DIV                              R10 R7 R3
       46 MOVE                             R11 R5
       47 RETURN                           R9 3
       48 JUMPIFNOTLT                      R4 R3 ; [+5]
       50 DIV                              R9 R5 R3
       51 DIV                              R10 R7 R3
       52 MOVE                             R11 R5
       53 RETURN                           R9 3
       54 DIV                              R9 R6 R4
       55 DIV                              R10 R8 R4
       56 MOVE                             R11 R6
       57 RETURN                           R9 3

PROTO_10:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 SETTABLEKS                       R2 R1 K0 ["current"]
        4 GETUPVAL                         R1 1
        5 LOADB                            R2 0
        6 CALL                             R1 1 0
        7 MOVE                             R1 R0
        8 CALL                             R1 0 0
        9 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 2
        5 CALL                             R1 0 1
        6 GETUPVAL                         R3 3
        7 NAMECALL                         R1 R1 K0 ["andThen"]
        9 CALL                             R1 2 1
       10 SETTABLEKS                       R1 R0 K1 ["current"]
       12 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+13]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["current"]
        5 JUMPIFNOT                        R0 ; [+10]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R1 R2 K0 ["current"]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R3 R4 K1 ["eventList"]
       12 LENGTH                           R2 R3
       13 GETTABLE                         R0 R1 R2
       14 JUMPIFNOT                        R0 ; [+1]
       15 RETURN                           R0 0
       16 GETUPVAL                         R1 1
       17 GETTABLEKS                       R0 R1 K0 ["current"]
       19 JUMPIFNOT                        R0 ; [+9]
       20 GETUPVAL                         R1 1
       21 GETTABLEKS                       R0 R1 K0 ["current"]
       23 GETUPVAL                         R3 2
       24 GETTABLEKS                       R2 R3 K1 ["eventList"]
       26 LENGTH                           R1 R2
       27 LOADB                            R2 1
       28 SETTABLE                         R2 R0 R1
       29 NEWCLOSURE                       R0 P0
       30 CAPTURE                          UPVAL U3
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          UPVAL U5
       33 GETUPVAL                         R2 6
       34 GETTABLEKS                       R1 R2 K0 ["current"]
       36 JUMPIFNOT                        R1 ; [+12]
       37 GETUPVAL                         R2 6
       38 GETTABLEKS                       R1 R2 K0 ["current"]
       40 NEWCLOSURE                       R3 P1
       41 CAPTURE                          UPVAL U5
       42 CAPTURE                          UPVAL U4
       43 CAPTURE                          UPVAL U7
       44 CAPTURE                          VAL R0
       45 NAMECALL                         R1 R1 K2 ["andThen"]
       47 CALL                             R1 2 0
       48 RETURN                           R0 0
       49 GETUPVAL                         R1 5
       50 LOADB                            R2 1
       51 CALL                             R1 1 0
       52 GETUPVAL                         R1 4
       53 GETUPVAL                         R2 7
       54 CALL                             R2 0 1
       55 MOVE                             R4 R0
       56 NAMECALL                         R2 R2 K2 ["andThen"]
       58 CALL                             R2 2 1
       59 SETTABLEKS                       R2 R1 K0 ["current"]
       61 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 SETTABLEKS                       R2 R1 K0 ["current"]
        4 GETUPVAL                         R1 1
        5 LOADB                            R2 0
        6 CALL                             R1 1 0
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R1 R2 K0 ["current"]
       10 JUMPIFNOT                        R1 ; [+21]
       11 GETUPVAL                         R2 3
       12 GETTABLEKS                       R1 R2 K0 ["current"]
       14 LOADN                            R2 0
       15 JUMPIFNOTLT                      R2 R1 ; [+16]
       17 GETUPVAL                         R2 2
       18 GETTABLEKS                       R1 R2 K0 ["current"]
       20 DUPTABLE                         R3 K3 [{"animated", "offset"}]
       21 LOADB                            R4 0
       22 SETTABLEKS                       R4 R3 K1 ["animated"]
       24 GETUPVAL                         R5 3
       25 GETTABLEKS                       R4 R5 K0 ["current"]
       27 SETTABLEKS                       R4 R3 K2 ["offset"]
       29 NAMECALL                         R1 R1 K4 ["scrollToOffset"]
       31 CALL                             R1 2 0
       32 MOVE                             R1 R0
       33 CALL                             R1 0 0
       34 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 2
        5 CALL                             R1 0 1
        6 GETUPVAL                         R3 3
        7 NAMECALL                         R1 R1 K0 ["andThen"]
        9 CALL                             R1 2 1
       10 SETTABLEKS                       R1 R0 K1 ["current"]
       12 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+13]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["current"]
        5 JUMPIFNOT                        R0 ; [+10]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R1 R2 K0 ["current"]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R3 R4 K1 ["eventList"]
       12 LENGTH                           R2 R3
       13 GETTABLE                         R0 R1 R2
       14 JUMPIFNOT                        R0 ; [+1]
       15 RETURN                           R0 0
       16 GETUPVAL                         R1 1
       17 GETTABLEKS                       R0 R1 K0 ["current"]
       19 JUMPIFNOT                        R0 ; [+9]
       20 GETUPVAL                         R1 1
       21 GETTABLEKS                       R0 R1 K0 ["current"]
       23 GETUPVAL                         R3 2
       24 GETTABLEKS                       R2 R3 K1 ["eventList"]
       26 LENGTH                           R1 R2
       27 LOADB                            R2 1
       28 SETTABLE                         R2 R0 R1
       29 NEWCLOSURE                       R0 P0
       30 CAPTURE                          UPVAL U3
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          UPVAL U5
       33 CAPTURE                          UPVAL U6
       34 CAPTURE                          UPVAL U7
       35 GETUPVAL                         R2 8
       36 GETTABLEKS                       R1 R2 K0 ["current"]
       38 JUMPIFNOT                        R1 ; [+12]
       39 GETUPVAL                         R2 8
       40 GETTABLEKS                       R1 R2 K0 ["current"]
       42 NEWCLOSURE                       R3 P1
       43 CAPTURE                          UPVAL U5
       44 CAPTURE                          UPVAL U4
       45 CAPTURE                          UPVAL U9
       46 CAPTURE                          VAL R0
       47 NAMECALL                         R1 R1 K2 ["andThen"]
       49 CALL                             R1 2 0
       50 RETURN                           R0 0
       51 GETUPVAL                         R1 5
       52 LOADB                            R2 1
       53 CALL                             R1 1 0
       54 GETUPVAL                         R1 4
       55 GETUPVAL                         R2 9
       56 CALL                             R2 0 1
       57 MOVE                             R4 R0
       58 NAMECALL                         R2 R2 K2 ["andThen"]
       60 CALL                             R2 2 1
       61 SETTABLEKS                       R2 R1 K0 ["current"]
       63 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 3
        3 GETUPVAL                         R5 1
        4 DIVK                             R4 R5 K0 [100]
        5 JUMPIFNOTLT                      R2 R4 ; [+3]
        7 GETUPVAL                         R4 2
        8 CALL                             R4 0 0
        9 GETUPVAL                         R5 1
       10 DIVK                             R4 R5 K0 [100]
       11 JUMPIFNOTLT                      R1 R4 ; [+6]
       13 GETUPVAL                         R4 3
       14 SETTABLEKS                       R3 R4 K1 ["current"]
       16 GETUPVAL                         R4 4
       17 CALL                             R4 0 0
       18 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 LENGTH                           R0 R1
        2 GETUPVAL                         R1 1
        3 JUMPIFNOTLT                      R0 R1 ; [+16]
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R0 R1 K0 ["nextCursor"]
        8 JUMPIFEQKNIL                     R0 ; [+4]
       10 GETUPVAL                         R0 3
       11 CALL                             R0 0 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R0 R1 K1 ["prevCursor"]
       16 JUMPIFEQKNIL                     R0 ; [+3]
       18 GETUPVAL                         R0 4
       19 CALL                             R0 0 0
       20 RETURN                           R0 0

PROTO_21:
        0 DUPTABLE                         R1 K5 [{"addedEventList", "eventList", "nextCursor", "prevCursor", "startDate"}]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K6 ["List"]
        4 GETTABLEKS                       R2 R3 K7 ["join"]
        6 NEWTABLE                         R3 0 1
        8 GETUPVAL                         R4 1
        9 SETLIST                          R3 R4 1 [1]
       11 GETTABLEKS                       R4 R0 K0 ["addedEventList"]
       13 CALL                             R2 2 1
       14 SETTABLEKS                       R2 R1 K0 ["addedEventList"]
       16 GETTABLEKS                       R2 R0 K1 ["eventList"]
       18 SETTABLEKS                       R2 R1 K1 ["eventList"]
       20 GETTABLEKS                       R2 R0 K2 ["nextCursor"]
       22 SETTABLEKS                       R2 R1 K2 ["nextCursor"]
       24 GETTABLEKS                       R2 R0 K3 ["prevCursor"]
       26 SETTABLEKS                       R2 R1 K3 ["prevCursor"]
       28 GETTABLEKS                       R2 R0 K4 ["startDate"]
       30 SETTABLEKS                       R2 R1 K4 ["startDate"]
       32 RETURN                           R1 1

PROTO_22:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["prevCursor"]
        3 JUMPIFEQKNIL                     R1 ; [+7]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K1 ["startDate"]
        8 JUMPIFEQKNIL                     R1 ; [+2]
       10 RETURN                           R0 0
       11 GETUPVAL                         R1 1
       12 NEWCLOSURE                       R2 P0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R0
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["useState"]
        3 DUPTABLE                         R6 K5 [{"addedEventList", "eventList", "prevCursor", "nextCursor"}]
        4 NEWTABLE                         R7 0 0
        6 SETTABLEKS                       R7 R6 K1 ["addedEventList"]
        8 NEWTABLE                         R7 0 0
       10 SETTABLEKS                       R7 R6 K2 ["eventList"]
       12 LOADK                            R7 K6 [""]
       13 SETTABLEKS                       R7 R6 K3 ["prevCursor"]
       15 LOADK                            R7 K6 [""]
       16 SETTABLEKS                       R7 R6 K4 ["nextCursor"]
       18 CALL                             R5 1 2
       19 GETUPVAL                         R8 0
       20 GETTABLEKS                       R7 R8 K7 ["useRef"]
       22 LOADNIL                          R8
       23 CALL                             R7 1 1
       24 GETUPVAL                         R9 0
       25 GETTABLEKS                       R8 R9 K0 ["useState"]
       27 LOADB                            R9 0
       28 CALL                             R8 1 2
       29 GETUPVAL                         R11 0
       30 GETTABLEKS                       R10 R11 K0 ["useState"]
       32 LOADB                            R11 0
       33 CALL                             R10 1 2
       34 GETUPVAL                         R13 0
       35 GETTABLEKS                       R12 R13 K7 ["useRef"]
       37 NEWTABLE                         R13 0 0
       39 CALL                             R12 1 1
       40 GETUPVAL                         R14 0
       41 GETTABLEKS                       R13 R14 K7 ["useRef"]
       43 NEWTABLE                         R14 0 0
       45 CALL                             R13 1 1
       46 GETUPVAL                         R15 0
       47 GETTABLEKS                       R14 R15 K7 ["useRef"]
       49 LOADNIL                          R15
       50 CALL                             R14 1 1
       51 GETUPVAL                         R16 0
       52 GETTABLEKS                       R15 R16 K7 ["useRef"]
       54 LOADNIL                          R16
       55 CALL                             R15 1 1
       56 GETUPVAL                         R17 0
       57 GETTABLEKS                       R16 R17 K7 ["useRef"]
       59 LOADN                            R17 0
       60 CALL                             R16 1 1
       61 GETUPVAL                         R18 0
       62 GETTABLEKS                       R17 R18 K7 ["useRef"]
       64 LOADNIL                          R18
       65 CALL                             R17 1 1
       66 GETUPVAL                         R19 0
       67 GETTABLEKS                       R18 R19 K8 ["useMemo"]
       69 NEWCLOSURE                       R19 P0
       70 CAPTURE                          VAL R1
       71 CAPTURE                          UPVAL U1
       72 CAPTURE                          VAL R5
       73 NEWTABLE                         R20 0 3
       75 GETTABLEKS                       R21 R5 K1 ["addedEventList"]
       77 GETTABLEKS                       R22 R5 K2 ["eventList"]
       79 MOVE                             R23 R1
       80 SETLIST                          R20 R21 3 [1]
       82 CALL                             R18 2 1
       83 GETUPVAL                         R20 0
       84 GETTABLEKS                       R19 R20 K9 ["useCallback"]
       86 NEWCLOSURE                       R20 P1
       87 CAPTURE                          VAL R6
       88 CAPTURE                          UPVAL U1
       89 CAPTURE                          VAL R16
       90 CAPTURE                          UPVAL U2
       91 NEWTABLE                         R21 0 1
       93 MOVE                             R22 R6
       94 SETLIST                          R21 R22 1 [1]
       96 CALL                             R19 2 1
       97 GETUPVAL                         R21 0
       98 GETTABLEKS                       R20 R21 K9 ["useCallback"]
      100 NEWCLOSURE                       R21 P2
      101 CAPTURE                          VAL R14
      102 CAPTURE                          VAL R15
      103 CAPTURE                          VAL R12
      104 CAPTURE                          VAL R13
      105 CAPTURE                          VAL R9
      106 CAPTURE                          VAL R11
      107 CAPTURE                          VAL R6
      108 NEWTABLE                         R22 0 3
      110 MOVE                             R23 R11
      111 MOVE                             R24 R9
      112 MOVE                             R25 R6
      113 SETLIST                          R22 R23 3 [1]
      115 CALL                             R20 2 1
      116 GETUPVAL                         R22 0
      117 GETTABLEKS                       R21 R22 K9 ["useCallback"]
      119 NEWCLOSURE                       R22 P3
      120 CAPTURE                          VAL R5
      121 CAPTURE                          VAL R17
      122 CAPTURE                          VAL R20
      123 NEWTABLE                         R23 0 2
      125 MOVE                             R24 R20
      126 GETTABLEKS                       R25 R5 K10 ["startDate"]
      128 SETLIST                          R23 R24 2 [1]
      130 CALL                             R21 2 1
      131 GETUPVAL                         R23 0
      132 GETTABLEKS                       R22 R23 K9 ["useCallback"]
      134 NEWCLOSURE                       R23 P4
      135 CAPTURE                          UPVAL U3
      136 CAPTURE                          VAL R5
      137 CAPTURE                          VAL R0
      138 CAPTURE                          VAL R19
      139 CAPTURE                          VAL R17
      140 NEWTABLE                         R24 0 4
      142 MOVE                             R25 R0
      143 MOVE                             R26 R19
      144 GETTABLEKS                       R27 R5 K4 ["nextCursor"]
      146 GETTABLEKS                       R28 R5 K10 ["startDate"]
      148 SETLIST                          R24 R25 4 [1]
      150 CALL                             R22 2 1
      151 GETUPVAL                         R24 0
      152 GETTABLEKS                       R23 R24 K9 ["useCallback"]
      154 NEWCLOSURE                       R24 P5
      155 CAPTURE                          UPVAL U3
      156 CAPTURE                          VAL R5
      157 CAPTURE                          VAL R0
      158 CAPTURE                          VAL R19
      159 CAPTURE                          VAL R17
      160 NEWTABLE                         R25 0 4
      162 MOVE                             R26 R0
      163 MOVE                             R27 R19
      164 GETTABLEKS                       R28 R5 K3 ["prevCursor"]
      166 GETTABLEKS                       R29 R5 K10 ["startDate"]
      168 SETLIST                          R25 R26 4 [1]
      170 CALL                             R23 2 1
      171 DUPCLOSURE                       R24 K11 [PROTO_9]
      172 GETUPVAL                         R26 0
      173 GETTABLEKS                       R25 R26 K9 ["useCallback"]
      175 NEWCLOSURE                       R26 P7
      176 CAPTURE                          VAL R10
      177 CAPTURE                          VAL R13
      178 CAPTURE                          VAL R5
      179 CAPTURE                          UPVAL U3
      180 CAPTURE                          VAL R15
      181 CAPTURE                          VAL R11
      182 CAPTURE                          VAL R14
      183 CAPTURE                          VAL R22
      184 NEWTABLE                         R27 0 4
      186 MOVE                             R28 R22
      187 MOVE                             R29 R10
      188 MOVE                             R30 R11
      189 GETTABLEKS                       R32 R5 K2 ["eventList"]
      191 LENGTH                           R31 R32
      192 SETLIST                          R27 R28 4 [1]
      194 CALL                             R25 2 1
      195 GETUPVAL                         R27 0
      196 GETTABLEKS                       R26 R27 K9 ["useCallback"]
      198 NEWCLOSURE                       R27 P8
      199 CAPTURE                          VAL R8
      200 CAPTURE                          VAL R12
      201 CAPTURE                          VAL R5
      202 CAPTURE                          UPVAL U3
      203 CAPTURE                          VAL R14
      204 CAPTURE                          VAL R9
      205 CAPTURE                          VAL R7
      206 CAPTURE                          VAL R16
      207 CAPTURE                          VAL R15
      208 CAPTURE                          VAL R23
      209 NEWTABLE                         R28 0 4
      211 MOVE                             R29 R23
      212 MOVE                             R30 R8
      213 MOVE                             R31 R9
      214 GETTABLEKS                       R33 R5 K2 ["eventList"]
      216 LENGTH                           R32 R33
      217 SETLIST                          R28 R29 4 [1]
      219 CALL                             R26 2 1
      220 GETUPVAL                         R28 0
      221 GETTABLEKS                       R27 R28 K9 ["useCallback"]
      223 NEWCLOSURE                       R28 P9
      224 CAPTURE                          VAL R24
      225 CAPTURE                          VAL R3
      226 CAPTURE                          VAL R25
      227 CAPTURE                          VAL R16
      228 CAPTURE                          VAL R26
      229 NEWTABLE                         R29 0 3
      231 MOVE                             R30 R3
      232 MOVE                             R31 R25
      233 MOVE                             R32 R26
      234 SETLIST                          R29 R30 3 [1]
      236 CALL                             R27 2 1
      237 GETUPVAL                         R29 0
      238 GETTABLEKS                       R28 R29 K12 ["useEffect"]
      240 NEWCLOSURE                       R29 P10
      241 CAPTURE                          VAL R20
      242 NEWTABLE                         R30 0 1
      244 MOVE                             R31 R0
      245 SETLIST                          R30 R31 1 [1]
      247 CALL                             R28 2 0
      248 GETUPVAL                         R29 0
      249 GETTABLEKS                       R28 R29 K12 ["useEffect"]
      251 NEWCLOSURE                       R29 P11
      252 CAPTURE                          VAL R18
      253 CAPTURE                          VAL R2
      254 CAPTURE                          VAL R5
      255 CAPTURE                          VAL R25
      256 CAPTURE                          VAL R26
      257 NEWTABLE                         R30 0 6
      259 LENGTH                           R31 R18
      260 MOVE                             R32 R25
      261 MOVE                             R33 R26
      262 MOVE                             R34 R2
      263 GETTABLEKS                       R35 R5 K4 ["nextCursor"]
      265 GETTABLEKS                       R36 R5 K3 ["prevCursor"]
      267 SETLIST                          R30 R31 6 [1]
      269 CALL                             R28 2 0
      270 GETUPVAL                         R29 0
      271 GETTABLEKS                       R28 R29 K9 ["useCallback"]
      273 NEWCLOSURE                       R29 P12
      274 CAPTURE                          VAL R5
      275 CAPTURE                          VAL R6
      276 CAPTURE                          UPVAL U1
      277 NEWTABLE                         R30 0 2
      279 MOVE                             R31 R6
      280 GETTABLEKS                       R32 R5 K3 ["prevCursor"]
      282 SETLIST                          R30 R31 2 [1]
      284 CALL                             R28 2 1
      285 DUPTABLE                         R29 K19 [{"vlref", "eventList", "jumpToDate", "addNewEvent", "onScroll", "fetchPreviousPageInProgress", "fetchNextPageInProgress"}]
      286 SETTABLEKS                       R7 R29 K13 ["vlref"]
      288 SETTABLEKS                       R18 R29 K2 ["eventList"]
      290 SETTABLEKS                       R21 R29 K14 ["jumpToDate"]
      292 SETTABLEKS                       R28 R29 K15 ["addNewEvent"]
      294 SETTABLEKS                       R27 R29 K16 ["onScroll"]
      296 SETTABLEKS                       R8 R29 K17 ["fetchPreviousPageInProgress"]
      298 SETTABLEKS                       R10 R29 K18 ["fetchNextPageInProgress"]
      300 RETURN                           R29 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["LuauPolyfill"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R5 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R5 K8 ["Promise"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R7 R0 K9 ["Src"]
       34 GETTABLEKS                       R6 R7 K10 ["Resources"]
       36 GETTABLEKS                       R5 R6 K11 ["StyleTips"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K4 [require]
       41 GETTABLEKS                       R7 R0 K5 ["Packages"]
       43 GETTABLEKS                       R6 R7 K12 ["Cryo"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K4 [require]
       48 GETTABLEKS                       R8 R0 K5 ["Packages"]
       50 GETTABLEKS                       R7 R8 K13 ["VirtualizedList"]
       52 CALL                             R6 1 1
       53 GETTABLEKS                       R7 R6 K13 ["VirtualizedList"]
       55 DUPCLOSURE                       R8 K14 [PROTO_23]
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R3
       60 RETURN                           R8 1
