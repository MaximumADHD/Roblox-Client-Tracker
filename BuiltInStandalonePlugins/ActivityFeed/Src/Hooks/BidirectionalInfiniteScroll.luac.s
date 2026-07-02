PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["List"]
        4 GETTABLEKS                       R1 R1 K1 ["join"]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K2 ["addedEventList"]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K3 ["eventList"]
       12 CALL                             R1 2 -1
       13 CALL                             R0 -1 -1
       14 RETURN                           R0 -1

PROTO_1:
        0 DUPTABLE                         R1 K5 [{"addedEventList", "eventList", "nextCursor", "prevCursor", "startDate"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["addedEventList"]
        5 GETUPVAL                         R3 0
        6 JUMPIFNOT                        R3 ; [+10]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K6 ["List"]
       10 GETTABLEKS                       R2 R2 K7 ["join"]
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R4 R0 K1 ["eventList"]
       15 CALL                             R2 2 1
       16 JUMPIF                           R2 ; [+9]
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R2 R2 K6 ["List"]
       20 GETTABLEKS                       R2 R2 K7 ["join"]
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
       10 GETUPVAL                         R9 2
       11 GETTABLEKS                       R9 R9 K1 ["current"]
       13 ORK                              R8 R9 K0 [0]
       14 LENGTH                           R10 R0
       15 GETUPVAL                         R11 3
       16 GETTABLEKS                       R11 R11 K2 ["bubbleHeight"]
       18 MUL                              R9 R10 R11
       19 ADD                              R7 R8 R9
       20 GETUPVAL                         R8 3
       21 GETTABLEKS                       R8 R8 K3 ["filterHeaderHeight"]
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
       25 DUPTABLE                         R2 K7 [{["addedEventList"], ["eventList"], ["nextCursor"] = "", ["prevCursor"] = "", ["startDate"]}]
       26 NEWTABLE                         R3 0 0
       28 SETTABLEKS                       R3 R2 K1 ["addedEventList"]
       30 NEWTABLE                         R3 0 0
       32 SETTABLEKS                       R3 R2 K2 ["eventList"]
       34 SETTABLEKS                       R0 R2 K6 ["startDate"]
       36 CALL                             R1 1 0
       37 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["startDate"]
        3 JUMPIFEQ                         R0 R2 ; [+7]
        5 GETUPVAL                         R2 1
        6 SETTABLEKS                       R1 R2 K1 ["current"]
        8 GETUPVAL                         R2 2
        9 MOVE                             R3 R0
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["nextCursor"]
        3 JUMPIFEQKNIL                     R1 ; [+16]
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R2 2
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K0 ["nextCursor"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K1 ["startDate"]
       13 LOADB                            R5 0
       14 MOVE                             R6 R0
       15 GETUPVAL                         R7 3
       16 GETTABLEKS                       R7 R7 K2 ["current"]
       18 CALL                             R1 6 0
       19 RETURN                           R0 0
       20 JUMPIFNOT                        R0 ; [+2]
       21 MOVE                             R1 R0
       22 CALL                             R1 0 0
       23 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["prevCursor"]
        3 JUMPIFEQKNIL                     R1 ; [+21]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["startDate"]
        8 JUMPIFEQKNIL                     R1 ; [+16]
       10 GETUPVAL                         R1 1
       11 GETUPVAL                         R2 2
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K0 ["prevCursor"]
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K1 ["startDate"]
       18 LOADB                            R5 1
       19 MOVE                             R6 R0
       20 GETUPVAL                         R7 3
       21 GETTABLEKS                       R7 R7 K2 ["current"]
       23 CALL                             R1 6 0
       24 RETURN                           R0 0
       25 JUMPIFNOT                        R0 ; [+2]
       26 MOVE                             R1 R0
       27 CALL                             R1 0 0
       28 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["AbsoluteCanvasSize"]
        2 GETTABLEKS                       R1 R1 K1 ["X"]
        4 GETTABLEKS                       R2 R0 K0 ["AbsoluteCanvasSize"]
        6 GETTABLEKS                       R2 R2 K2 ["Y"]
        8 GETTABLEKS                       R3 R0 K3 ["AbsoluteWindowSize"]
       10 GETTABLEKS                       R3 R3 K1 ["X"]
       12 GETTABLEKS                       R4 R0 K3 ["AbsoluteWindowSize"]
       14 GETTABLEKS                       R4 R4 K2 ["Y"]
       16 GETTABLEKS                       R5 R0 K4 ["CanvasPosition"]
       18 GETTABLEKS                       R5 R5 K1 ["X"]
       20 GETTABLEKS                       R6 R0 K4 ["CanvasPosition"]
       22 GETTABLEKS                       R6 R6 K2 ["Y"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
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
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["current"]
        5 JUMPIFNOT                        R0 ; [+10]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K0 ["current"]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K1 ["eventList"]
       12 LENGTH                           R2 R3
       13 GETTABLE                         R0 R1 R2
       14 JUMPIFNOT                        R0 ; [+1]
       15 RETURN                           R0 0
       16 GETUPVAL                         R0 1
       17 GETTABLEKS                       R0 R0 K0 ["current"]
       19 JUMPIFNOT                        R0 ; [+9]
       20 GETUPVAL                         R0 1
       21 GETTABLEKS                       R0 R0 K0 ["current"]
       23 GETUPVAL                         R2 2
       24 GETTABLEKS                       R2 R2 K1 ["eventList"]
       26 LENGTH                           R1 R2
       27 LOADB                            R2 1
       28 SETTABLE                         R2 R0 R1
       29 NEWCLOSURE                       R0 P0
       30 CAPTURE                          UPVAL U3
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          UPVAL U5
       33 GETUPVAL                         R1 6
       34 GETTABLEKS                       R1 R1 K0 ["current"]
       36 JUMPIFNOT                        R1 ; [+12]
       37 GETUPVAL                         R1 6
       38 GETTABLEKS                       R1 R1 K0 ["current"]
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
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K0 ["current"]
       10 JUMPIFNOT                        R1 ; [+18]
       11 GETUPVAL                         R1 3
       12 GETTABLEKS                       R1 R1 K0 ["current"]
       14 LOADN                            R2 0
       15 JUMPIFNOTLT                      R2 R1 ; [+13]
       17 GETUPVAL                         R1 2
       18 GETTABLEKS                       R1 R1 K0 ["current"]
       20 DUPTABLE                         R3 K4 [{["animated"] = False, ["offset"]}]
       21 GETUPVAL                         R4 3
       22 GETTABLEKS                       R4 R4 K0 ["current"]
       24 SETTABLEKS                       R4 R3 K3 ["offset"]
       26 NAMECALL                         R1 R1 K5 ["scrollToOffset"]
       28 CALL                             R1 2 0
       29 MOVE                             R1 R0
       30 CALL                             R1 0 0
       31 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
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
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["current"]
        5 JUMPIFNOT                        R0 ; [+10]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K0 ["current"]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K1 ["eventList"]
       12 LENGTH                           R2 R3
       13 GETTABLE                         R0 R1 R2
       14 JUMPIFNOT                        R0 ; [+1]
       15 RETURN                           R0 0
       16 GETUPVAL                         R0 1
       17 GETTABLEKS                       R0 R0 K0 ["current"]
       19 JUMPIFNOT                        R0 ; [+9]
       20 GETUPVAL                         R0 1
       21 GETTABLEKS                       R0 R0 K0 ["current"]
       23 GETUPVAL                         R2 2
       24 GETTABLEKS                       R2 R2 K1 ["eventList"]
       26 LENGTH                           R1 R2
       27 LOADB                            R2 1
       28 SETTABLE                         R2 R0 R1
       29 NEWCLOSURE                       R0 P0
       30 CAPTURE                          UPVAL U3
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          UPVAL U5
       33 CAPTURE                          UPVAL U6
       34 CAPTURE                          UPVAL U7
       35 GETUPVAL                         R1 8
       36 GETTABLEKS                       R1 R1 K0 ["current"]
       38 JUMPIFNOT                        R1 ; [+12]
       39 GETUPVAL                         R1 8
       40 GETTABLEKS                       R1 R1 K0 ["current"]
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
        5 GETUPVAL                         R0 2
        6 GETTABLEKS                       R0 R0 K0 ["nextCursor"]
        8 JUMPIFEQKNIL                     R0 ; [+4]
       10 GETUPVAL                         R0 3
       11 CALL                             R0 0 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R0 2
       14 GETTABLEKS                       R0 R0 K1 ["prevCursor"]
       16 JUMPIFEQKNIL                     R0 ; [+3]
       18 GETUPVAL                         R0 4
       19 CALL                             R0 0 0
       20 RETURN                           R0 0

PROTO_21:
        0 DUPTABLE                         R1 K5 [{"addedEventList", "eventList", "nextCursor", "prevCursor", "startDate"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K6 ["List"]
        4 GETTABLEKS                       R2 R2 K7 ["join"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["prevCursor"]
        3 JUMPIFEQKNIL                     R1 ; [+7]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["startDate"]
        8 JUMPIFEQKNIL                     R1 ; [+2]
       10 RETURN                           R0 0
       11 GETUPVAL                         R1 1
       12 NEWCLOSURE                       R2 P0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R0
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["useState"]
        3 DUPTABLE                         R6 K6 [{["addedEventList"], ["eventList"], ["prevCursor"] = "", ["nextCursor"] = ""}]
        4 NEWTABLE                         R7 0 0
        6 SETTABLEKS                       R7 R6 K1 ["addedEventList"]
        8 NEWTABLE                         R7 0 0
       10 SETTABLEKS                       R7 R6 K2 ["eventList"]
       12 CALL                             R5 1 2
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R7 R7 K7 ["useRef"]
       16 LOADNIL                          R8
       17 CALL                             R7 1 1
       18 GETUPVAL                         R8 0
       19 GETTABLEKS                       R8 R8 K0 ["useState"]
       21 LOADB                            R9 0
       22 CALL                             R8 1 2
       23 GETUPVAL                         R10 0
       24 GETTABLEKS                       R10 R10 K0 ["useState"]
       26 LOADB                            R11 0
       27 CALL                             R10 1 2
       28 GETUPVAL                         R12 0
       29 GETTABLEKS                       R12 R12 K7 ["useRef"]
       31 NEWTABLE                         R13 0 0
       33 CALL                             R12 1 1
       34 GETUPVAL                         R13 0
       35 GETTABLEKS                       R13 R13 K7 ["useRef"]
       37 NEWTABLE                         R14 0 0
       39 CALL                             R13 1 1
       40 GETUPVAL                         R14 0
       41 GETTABLEKS                       R14 R14 K7 ["useRef"]
       43 LOADNIL                          R15
       44 CALL                             R14 1 1
       45 GETUPVAL                         R15 0
       46 GETTABLEKS                       R15 R15 K7 ["useRef"]
       48 LOADNIL                          R16
       49 CALL                             R15 1 1
       50 GETUPVAL                         R16 0
       51 GETTABLEKS                       R16 R16 K7 ["useRef"]
       53 LOADN                            R17 0
       54 CALL                             R16 1 1
       55 GETUPVAL                         R17 0
       56 GETTABLEKS                       R17 R17 K7 ["useRef"]
       58 LOADNIL                          R18
       59 CALL                             R17 1 1
       60 GETUPVAL                         R18 0
       61 GETTABLEKS                       R18 R18 K8 ["useMemo"]
       63 NEWCLOSURE                       R19 P0
       64 CAPTURE                          VAL R1
       65 CAPTURE                          UPVAL U1
       66 CAPTURE                          VAL R5
       67 NEWTABLE                         R20 0 3
       69 GETTABLEKS                       R21 R5 K1 ["addedEventList"]
       71 GETTABLEKS                       R22 R5 K2 ["eventList"]
       73 MOVE                             R23 R1
       74 SETLIST                          R20 R21 3 [1]
       76 CALL                             R18 2 1
       77 GETUPVAL                         R19 0
       78 GETTABLEKS                       R19 R19 K9 ["useCallback"]
       80 NEWCLOSURE                       R20 P1
       81 CAPTURE                          VAL R6
       82 CAPTURE                          UPVAL U1
       83 CAPTURE                          VAL R16
       84 CAPTURE                          UPVAL U2
       85 NEWTABLE                         R21 0 1
       87 MOVE                             R22 R6
       88 SETLIST                          R21 R22 1 [1]
       90 CALL                             R19 2 1
       91 GETUPVAL                         R20 0
       92 GETTABLEKS                       R20 R20 K9 ["useCallback"]
       94 NEWCLOSURE                       R21 P2
       95 CAPTURE                          VAL R14
       96 CAPTURE                          VAL R15
       97 CAPTURE                          VAL R12
       98 CAPTURE                          VAL R13
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R11
      101 CAPTURE                          VAL R6
      102 NEWTABLE                         R22 0 3
      104 MOVE                             R23 R11
      105 MOVE                             R24 R9
      106 MOVE                             R25 R6
      107 SETLIST                          R22 R23 3 [1]
      109 CALL                             R20 2 1
      110 GETUPVAL                         R21 0
      111 GETTABLEKS                       R21 R21 K9 ["useCallback"]
      113 NEWCLOSURE                       R22 P3
      114 CAPTURE                          VAL R5
      115 CAPTURE                          VAL R17
      116 CAPTURE                          VAL R20
      117 NEWTABLE                         R23 0 2
      119 MOVE                             R24 R20
      120 GETTABLEKS                       R25 R5 K10 ["startDate"]
      122 SETLIST                          R23 R24 2 [1]
      124 CALL                             R21 2 1
      125 GETUPVAL                         R22 0
      126 GETTABLEKS                       R22 R22 K9 ["useCallback"]
      128 NEWCLOSURE                       R23 P4
      129 CAPTURE                          UPVAL U3
      130 CAPTURE                          VAL R5
      131 CAPTURE                          VAL R0
      132 CAPTURE                          VAL R19
      133 CAPTURE                          VAL R17
      134 NEWTABLE                         R24 0 4
      136 MOVE                             R25 R0
      137 MOVE                             R26 R19
      138 GETTABLEKS                       R27 R5 K5 ["nextCursor"]
      140 GETTABLEKS                       R28 R5 K10 ["startDate"]
      142 SETLIST                          R24 R25 4 [1]
      144 CALL                             R22 2 1
      145 GETUPVAL                         R23 0
      146 GETTABLEKS                       R23 R23 K9 ["useCallback"]
      148 NEWCLOSURE                       R24 P5
      149 CAPTURE                          UPVAL U3
      150 CAPTURE                          VAL R5
      151 CAPTURE                          VAL R0
      152 CAPTURE                          VAL R19
      153 CAPTURE                          VAL R17
      154 NEWTABLE                         R25 0 4
      156 MOVE                             R26 R0
      157 MOVE                             R27 R19
      158 GETTABLEKS                       R28 R5 K3 ["prevCursor"]
      160 GETTABLEKS                       R29 R5 K10 ["startDate"]
      162 SETLIST                          R25 R26 4 [1]
      164 CALL                             R23 2 1
      165 DUPCLOSURE                       R24 K11 [PROTO_9]
      166 GETUPVAL                         R25 0
      167 GETTABLEKS                       R25 R25 K9 ["useCallback"]
      169 NEWCLOSURE                       R26 P7
      170 CAPTURE                          VAL R10
      171 CAPTURE                          VAL R13
      172 CAPTURE                          VAL R5
      173 CAPTURE                          UPVAL U3
      174 CAPTURE                          VAL R15
      175 CAPTURE                          VAL R11
      176 CAPTURE                          VAL R14
      177 CAPTURE                          VAL R22
      178 NEWTABLE                         R27 0 4
      180 MOVE                             R28 R22
      181 MOVE                             R29 R10
      182 MOVE                             R30 R11
      183 GETTABLEKS                       R32 R5 K2 ["eventList"]
      185 LENGTH                           R31 R32
      186 SETLIST                          R27 R28 4 [1]
      188 CALL                             R25 2 1
      189 GETUPVAL                         R26 0
      190 GETTABLEKS                       R26 R26 K9 ["useCallback"]
      192 NEWCLOSURE                       R27 P8
      193 CAPTURE                          VAL R8
      194 CAPTURE                          VAL R12
      195 CAPTURE                          VAL R5
      196 CAPTURE                          UPVAL U3
      197 CAPTURE                          VAL R14
      198 CAPTURE                          VAL R9
      199 CAPTURE                          VAL R7
      200 CAPTURE                          VAL R16
      201 CAPTURE                          VAL R15
      202 CAPTURE                          VAL R23
      203 NEWTABLE                         R28 0 4
      205 MOVE                             R29 R23
      206 MOVE                             R30 R8
      207 MOVE                             R31 R9
      208 GETTABLEKS                       R33 R5 K2 ["eventList"]
      210 LENGTH                           R32 R33
      211 SETLIST                          R28 R29 4 [1]
      213 CALL                             R26 2 1
      214 GETUPVAL                         R27 0
      215 GETTABLEKS                       R27 R27 K9 ["useCallback"]
      217 NEWCLOSURE                       R28 P9
      218 CAPTURE                          VAL R24
      219 CAPTURE                          VAL R3
      220 CAPTURE                          VAL R25
      221 CAPTURE                          VAL R16
      222 CAPTURE                          VAL R26
      223 NEWTABLE                         R29 0 3
      225 MOVE                             R30 R3
      226 MOVE                             R31 R25
      227 MOVE                             R32 R26
      228 SETLIST                          R29 R30 3 [1]
      230 CALL                             R27 2 1
      231 GETUPVAL                         R28 0
      232 GETTABLEKS                       R28 R28 K12 ["useEffect"]
      234 NEWCLOSURE                       R29 P10
      235 CAPTURE                          VAL R20
      236 NEWTABLE                         R30 0 1
      238 MOVE                             R31 R0
      239 SETLIST                          R30 R31 1 [1]
      241 CALL                             R28 2 0
      242 GETUPVAL                         R28 0
      243 GETTABLEKS                       R28 R28 K12 ["useEffect"]
      245 NEWCLOSURE                       R29 P11
      246 CAPTURE                          VAL R18
      247 CAPTURE                          VAL R2
      248 CAPTURE                          VAL R5
      249 CAPTURE                          VAL R25
      250 CAPTURE                          VAL R26
      251 NEWTABLE                         R30 0 6
      253 LENGTH                           R31 R18
      254 MOVE                             R32 R25
      255 MOVE                             R33 R26
      256 MOVE                             R34 R2
      257 GETTABLEKS                       R35 R5 K5 ["nextCursor"]
      259 GETTABLEKS                       R36 R5 K3 ["prevCursor"]
      261 SETLIST                          R30 R31 6 [1]
      263 CALL                             R28 2 0
      264 GETUPVAL                         R28 0
      265 GETTABLEKS                       R28 R28 K9 ["useCallback"]
      267 NEWCLOSURE                       R29 P12
      268 CAPTURE                          VAL R5
      269 CAPTURE                          VAL R6
      270 CAPTURE                          UPVAL U1
      271 NEWTABLE                         R30 0 2
      273 MOVE                             R31 R6
      274 GETTABLEKS                       R32 R5 K3 ["prevCursor"]
      276 SETLIST                          R30 R31 2 [1]
      278 CALL                             R28 2 1
      279 DUPTABLE                         R29 K19 [{"vlref", "eventList", "jumpToDate", "addNewEvent", "onScroll", "fetchPreviousPageInProgress", "fetchNextPageInProgress"}]
      280 SETTABLEKS                       R7 R29 K13 ["vlref"]
      282 SETTABLEKS                       R18 R29 K2 ["eventList"]
      284 SETTABLEKS                       R21 R29 K14 ["jumpToDate"]
      286 SETTABLEKS                       R28 R29 K15 ["addNewEvent"]
      288 SETTABLEKS                       R27 R29 K16 ["onScroll"]
      290 SETTABLEKS                       R8 R29 K17 ["fetchPreviousPageInProgress"]
      292 SETTABLEKS                       R10 R29 K18 ["fetchNextPageInProgress"]
      294 RETURN                           R29 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["LuauPolyfill"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["Promise"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K10 ["Resources"]
       36 GETTABLEKS                       R5 R5 K11 ["StyleTips"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K4 [require]
       41 GETTABLEKS                       R6 R0 K5 ["Packages"]
       43 GETTABLEKS                       R6 R6 K12 ["Cryo"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K4 [require]
       48 GETTABLEKS                       R7 R0 K5 ["Packages"]
       50 GETTABLEKS                       R7 R7 K13 ["VirtualizedList"]
       52 CALL                             R6 1 1
       53 GETTABLEKS                       R7 R6 K13 ["VirtualizedList"]
       55 DUPCLOSURE                       R8 K14 [PROTO_23]
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R3
       60 RETURN                           R8 1
