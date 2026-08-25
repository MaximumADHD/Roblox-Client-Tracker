PROTO_0:
        0 JUMPIFEQKNIL                     R0 ; [+11]
        2 GETTABLEKS                       R1 R0 K0 ["Width"]
        4 LOADN                            R2 0
        5 JUMPIFLE                         R1 R2 ; [+6]
        7 GETTABLEKS                       R1 R0 K1 ["Height"]
        9 LOADN                            R2 0
       10 JUMPIFNOTLE                      R1 R2 ; [+10]
       12 DUPTABLE                         R1 K5 [{["x"], ["y"] = 120}]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K7 ["X"]
       16 MINUS                            R3 R4
       17 DIVK                             R2 R3 K6 [2]
       18 SETTABLEKS                       R2 R1 K2 ["x"]
       20 RETURN                           R1 1
       21 GETTABLEKS                       R3 R0 K8 ["Min"]
       23 GETTABLEKS                       R3 R3 K7 ["X"]
       25 GETTABLEKS                       R4 R0 K9 ["Max"]
       27 GETTABLEKS                       R4 R4 K7 ["X"]
       29 ADD                              R2 R3 R4
       30 DIVK                             R1 R2 K6 [2]
       31 GETTABLEKS                       R3 R0 K9 ["Max"]
       33 GETTABLEKS                       R3 R3 K10 ["Y"]
       35 GETTABLEKS                       R5 R0 K1 ["Height"]
       37 DIVK                             R4 R5 K11 [3]
       38 SUB                              R2 R3 R4
       39 DUPTABLE                         R3 K12 [{"x", "y"}]
       40 GETUPVAL                         R6 0
       41 GETTABLEKS                       R6 R6 K7 ["X"]
       43 DIVK                             R5 R6 K6 [2]
       44 SUB                              R4 R1 R5
       45 SETTABLEKS                       R4 R3 K2 ["x"]
       47 SETTABLEKS                       R2 R3 K3 ["y"]
       49 RETURN                           R3 1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["states"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETTABLEKS                       R7 R6 K1 ["name"]
        9 LOADB                            R8 1
       10 SETTABLE                         R8 R1 R7
       11 FORGLOOP                         R2 2 ; [-5]
       13 GETTABLEKS                       R2 R1 K2 ["State"]
       15 JUMPIF                           R2 ; [+2]
       16 LOADK                            R2 K2 ["State"]
       17 RETURN                           R2 1
       18 LOADN                            R2 2
       19 LOADK                            R5 K3 ["State %*"]
       20 MOVE                             R7 R2
       21 NAMECALL                         R5 R5 K4 ["format"]
       23 CALL                             R5 2 1
       24 MOVE                             R4 R5
       25 GETTABLE                         R3 R1 R4
       26 JUMPIFNOT                        R3 ; [+2]
       27 ADDK                             R2 R2 K5 [1]
       28 JUMPBACK                         ; [-10]
       29 LOADK                            R4 K3 ["State %*"]
       30 MOVE                             R6 R2
       31 NAMECALL                         R4 R4 K4 ["format"]
       33 CALL                             R4 2 1
       34 MOVE                             R3 R4
       35 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["ViewportRectContext"]
        6 GETTABLEKS                       R2 R2 K2 ["Context"]
        8 CALL                             R1 1 1
        9 GETTABLEKS                       R2 R0 K3 ["getterRef"]
       11 GETTABLEKS                       R3 R1 K4 ["observeViewportRect"]
       13 SETTABLEKS                       R3 R2 K5 ["current"]
       15 LOADNIL                          R2
       16 RETURN                           R2 1

PROTO_3:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 RETURN                           R0 0
        3 LOADNIL                          R1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K0 ["current"]
        7 GETTABLEKS                       R2 R2 K1 ["transitions"]
        9 LOADNIL                          R3
       10 LOADNIL                          R4
       11 FORGPREP                         R2
       12 GETTABLEKS                       R7 R6 K2 ["fromStateId"]
       14 JUMPIFNOTEQ                      R7 R0 ; [+3]
       16 MOVE                             R1 R6
       17 JUMP                             ; [+2]
       18 FORGLOOP                         R2 2 ; [-7]
       20 JUMPIFNOTEQKNIL                  R1 ; [+2]
       22 RETURN                           R0 0
       23 GETUPVAL                         R2 1
       24 LOADN                            R3 0
       25 CALL                             R2 1 0
       26 GETUPVAL                         R2 2
       27 GETTABLEKS                       R3 R1 K3 ["id"]
       29 CALL                             R2 1 0
       30 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 JUMPIFNOT                        R0 ; [+12]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["current"]
        7 GETTABLEKS                       R1 R1 K1 ["startStateId"]
        9 GETUPVAL                         R2 2
       10 MOVE                             R3 R1
       11 CALL                             R2 1 0
       12 GETUPVAL                         R2 3
       13 MOVE                             R3 R1
       14 CALL                             R2 1 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R1 2
       17 LOADNIL                          R2
       18 CALL                             R1 1 0
       19 GETUPVAL                         R1 4
       20 LOADNIL                          R2
       21 CALL                             R1 1 0
       22 GETUPVAL                         R1 5
       23 LOADN                            R2 0
       24 CALL                             R1 1 0
       25 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["current"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 ADD                              R1 R1 R0
        2 SETUPVAL                         R1 0
        3 GETUPVAL                         R3 0
        4 GETUPVAL                         R4 1
        5 DIV                              R2 R3 R4
        6 FASTCALL2K                       MATH_MIN R2 K0 ; [+4]
        8 LOADK                            R3 K0 [1]
        9 GETIMPORT                        R1 K3 [math.min]
       11 CALL                             R1 2 1
       12 GETUPVAL                         R2 2
       13 MOVE                             R3 R1
       14 CALL                             R2 1 0
       15 LOADN                            R2 1
       16 JUMPIFNOTLE                      R2 R1 ; [+13]
       18 GETUPVAL                         R2 3
       19 LOADNIL                          R3
       20 CALL                             R2 1 0
       21 GETUPVAL                         R2 2
       22 LOADN                            R3 0
       23 CALL                             R2 1 0
       24 GETUPVAL                         R2 4
       25 JUMPIFEQKNIL                     R2 ; [+4]
       27 GETUPVAL                         R2 5
       28 GETUPVAL                         R3 4
       29 CALL                             R2 1 0
       30 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["getTransition"]
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K1 ["current"]
       10 GETUPVAL                         R2 0
       11 CALL                             R0 2 1
       12 JUMPIFNOT                        R0 ; [+3]
       13 GETTABLEKS                       R2 R0 K2 ["Length"]
       15 JUMP                             ; [+1]
       16 LOADN                            R2 0
       17 FASTCALL2K                       MATH_MAX R2 K3 ; [+4]
       19 LOADK                            R3 K3 [0.001]
       20 GETIMPORT                        R1 K6 [math.max]
       22 CALL                             R1 2 1
       23 JUMPIFNOT                        R0 ; [+3]
       24 GETTABLEKS                       R2 R0 K7 ["toStateId"]
       26 JUMP                             ; [+1]
       27 LOADNIL                          R2
       28 LOADN                            R3 0
       29 GETUPVAL                         R4 3
       30 GETTABLEKS                       R4 R4 K8 ["Heartbeat"]
       32 NEWCLOSURE                       R6 P0
       33 CAPTURE                          REF R3
       34 CAPTURE                          VAL R1
       35 CAPTURE                          UPVAL U4
       36 CAPTURE                          UPVAL U5
       37 CAPTURE                          VAL R2
       38 CAPTURE                          UPVAL U6
       39 NAMECALL                         R4 R4 K9 ["Connect"]
       41 CALL                             R4 2 1
       42 NEWCLOSURE                       R5 P1
       43 CAPTURE                          VAL R4
       44 CLOSEUPVALS                      R3
       45 RETURN                           R5 1

PROTO_9:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 1
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R2 2
        7 JUMPIFEQKNIL                     R2 ; [+11]
        9 GETUPVAL                         R2 3
       10 GETTABLEKS                       R2 R2 K0 ["getTransition"]
       12 GETUPVAL                         R3 4
       13 GETUPVAL                         R4 2
       14 CALL                             R2 2 1
       15 JUMPIFEQKNIL                     R2 ; [+3]
       17 GETTABLEKS                       R1 R2 K1 ["toStateId"]
       19 JUMPIFEQKNIL                     R1 ; [+3]
       21 LOADB                            R2 1
       22 SETTABLE                         R2 R0 R1
       23 RETURN                           R0 1

PROTO_10:
        0 DUPTABLE                         R0 K5 [{[1], ["selectionStyle"] = "emphasis", ["activeStyle"] = "shift400"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["activeStateIds"]
        4 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 JUMPIFNOT                        R0 ; [+4]
        5 MOVE                             R2 R0
        6 LOADB                            R3 0
        7 CALL                             R2 1 1
        8 JUMP                             ; [+1]
        9 LOADNIL                          R2
       10 CALL                             R1 1 1
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K1 ["findFreePosition"]
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R3 R3 K0 ["current"]
       17 MOVE                             R4 R1
       18 CALL                             R2 2 1
       19 MOVE                             R1 R2
       20 GETUPVAL                         R2 4
       21 GETUPVAL                         R3 2
       22 GETTABLEKS                       R3 R3 K2 ["addState"]
       24 GETUPVAL                         R4 3
       25 GETTABLEKS                       R4 R4 K0 ["current"]
       27 GETUPVAL                         R5 5
       28 GETUPVAL                         R6 3
       29 GETTABLEKS                       R6 R6 K0 ["current"]
       31 CALL                             R5 1 1
       32 MOVE                             R6 R1
       33 CALL                             R3 3 1
       34 CALL                             R2 1 0
       35 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 MOVE                             R2 R0
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETUPVAL                         R7 1
        8 GETTABLEKS                       R7 R7 K1 ["getState"]
       10 MOVE                             R8 R1
       11 MOVE                             R9 R6
       12 CALL                             R7 2 1
       13 JUMPIFNOT                        R7 ; [+13]
       14 GETUPVAL                         R8 1
       15 GETTABLEKS                       R8 R8 K2 ["isSynthetic"]
       17 MOVE                             R9 R7
       18 CALL                             R8 1 1
       19 JUMPIF                           R8 ; [+7]
       20 GETUPVAL                         R8 1
       21 GETTABLEKS                       R8 R8 K3 ["deleteState"]
       23 MOVE                             R9 R1
       24 MOVE                             R10 R6
       25 CALL                             R8 2 1
       26 MOVE                             R1 R8
       27 FORGLOOP                         R2 2 ; [-21]
       29 GETUPVAL                         R2 2
       30 MOVE                             R3 R1
       31 CALL                             R2 1 0
       32 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["addTransition"]
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R4 R4 K1 ["current"]
        7 MOVE                             R5 R0
        8 MOVE                             R6 R1
        9 CALL                             R3 3 1
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["addState"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["current"]
        6 GETUPVAL                         R4 2
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R5 R5 K1 ["current"]
       10 CALL                             R4 1 1
       11 DUPTABLE                         R5 K4 [{"x", "y"}]
       12 GETTABLEKS                       R6 R1 K5 ["X"]
       14 SETTABLEKS                       R6 R5 K2 ["x"]
       16 GETTABLEKS                       R6 R1 K6 ["Y"]
       18 SETTABLEKS                       R6 R5 K3 ["y"]
       20 CALL                             R2 3 2
       21 GETUPVAL                         R4 3
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R5 R5 K7 ["addTransition"]
       25 MOVE                             R6 R2
       26 MOVE                             R7 R0
       27 MOVE                             R8 R3
       28 CALL                             R5 3 1
       29 CALL                             R4 1 0
       30 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getState"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["current"]
        6 MOVE                             R4 R1
        7 CALL                             R2 2 1
        8 JUMPIFEQKNIL                     R2 ; [+7]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K2 ["isSynthetic"]
       13 MOVE                             R4 R2
       14 CALL                             R3 1 1
       15 JUMPIFNOT                        R3 ; [+2]
       16 LOADB                            R3 0
       17 RETURN                           R3 1
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K0 ["getState"]
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R4 R4 K1 ["current"]
       24 MOVE                             R5 R0
       25 CALL                             R3 2 1
       26 JUMPIFNOT                        R3 ; [+14]
       27 GETTABLEKS                       R4 R3 K3 ["isStart"]
       29 JUMPIFNOT                        R4 ; [+11]
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R4 R4 K4 ["hasOutgoingTransition"]
       33 GETUPVAL                         R5 1
       34 GETTABLEKS                       R5 R5 K1 ["current"]
       36 MOVE                             R6 R0
       37 CALL                             R4 2 1
       38 JUMPIFNOT                        R4 ; [+2]
       39 LOADB                            R4 0
       40 RETURN                           R4 1
       41 GETUPVAL                         R5 0
       42 GETTABLEKS                       R5 R5 K5 ["hasTransition"]
       44 GETUPVAL                         R6 1
       45 GETTABLEKS                       R6 R6 K1 ["current"]
       47 MOVE                             R7 R0
       48 MOVE                             R8 R1
       49 CALL                             R5 3 1
       50 NOT                              R4 R5
       51 RETURN                           R4 1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["hasTransition"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["current"]
        6 MOVE                             R4 R1
        7 MOVE                             R5 R0
        8 CALL                             R2 3 -1
        9 RETURN                           R2 -1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R2 R0 K2 ["data"]
        9 GETTABLEKS                       R3 R0 K3 ["onDataChanged"]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K4 ["useRef"]
       14 MOVE                             R5 R2
       15 CALL                             R4 1 1
       16 SETTABLEKS                       R2 R4 K5 ["current"]
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R5 R5 K6 ["useState"]
       21 LOADB                            R6 0
       22 CALL                             R5 1 2
       23 GETUPVAL                         R7 0
       24 GETTABLEKS                       R7 R7 K6 ["useState"]
       26 LOADNIL                          R8
       27 CALL                             R7 1 2
       28 GETUPVAL                         R9 0
       29 GETTABLEKS                       R9 R9 K6 ["useState"]
       31 LOADNIL                          R10
       32 CALL                             R9 1 2
       33 GETUPVAL                         R11 0
       34 GETTABLEKS                       R11 R11 K6 ["useState"]
       36 LOADN                            R12 0
       37 CALL                             R11 1 2
       38 GETUPVAL                         R13 0
       39 GETTABLEKS                       R13 R13 K4 ["useRef"]
       41 MOVE                             R14 R7
       42 CALL                             R13 1 1
       43 SETTABLEKS                       R7 R13 K5 ["current"]
       45 GETUPVAL                         R14 0
       46 GETTABLEKS                       R14 R14 K7 ["useCallback"]
       48 NEWCLOSURE                       R15 P0
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R12
       51 CAPTURE                          VAL R10
       52 NEWTABLE                         R16 0 0
       54 CALL                             R14 2 1
       55 GETUPVAL                         R15 0
       56 GETTABLEKS                       R15 R15 K7 ["useCallback"]
       58 NEWCLOSURE                       R16 P1
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R8
       62 CAPTURE                          VAL R14
       63 CAPTURE                          VAL R10
       64 CAPTURE                          VAL R12
       65 NEWTABLE                         R17 0 1
       67 MOVE                             R18 R14
       68 SETLIST                          R17 R18 1 [1]
       70 CALL                             R15 2 1
       71 GETUPVAL                         R16 0
       72 GETTABLEKS                       R16 R16 K7 ["useCallback"]
       74 NEWCLOSURE                       R17 P2
       75 CAPTURE                          VAL R14
       76 CAPTURE                          VAL R13
       77 NEWTABLE                         R18 0 1
       79 MOVE                             R19 R14
       80 SETLIST                          R18 R19 1 [1]
       82 CALL                             R16 2 1
       83 GETUPVAL                         R17 0
       84 GETTABLEKS                       R17 R17 K8 ["useEffect"]
       86 NEWCLOSURE                       R18 P3
       87 CAPTURE                          VAL R9
       88 CAPTURE                          UPVAL U2
       89 CAPTURE                          VAL R4
       90 CAPTURE                          UPVAL U3
       91 CAPTURE                          VAL R12
       92 CAPTURE                          VAL R10
       93 CAPTURE                          VAL R8
       94 NEWTABLE                         R19 0 1
       96 MOVE                             R20 R9
       97 SETLIST                          R19 R20 1 [1]
       99 CALL                             R17 2 0
      100 GETUPVAL                         R17 0
      101 GETTABLEKS                       R17 R17 K9 ["useMemo"]
      103 NEWCLOSURE                       R18 P4
      104 CAPTURE                          VAL R5
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R9
      107 CAPTURE                          UPVAL U2
      108 CAPTURE                          VAL R2
      109 NEWTABLE                         R19 0 4
      111 MOVE                             R20 R5
      112 MOVE                             R21 R7
      113 MOVE                             R22 R9
      114 MOVE                             R23 R2
      115 SETLIST                          R19 R20 4 [1]
      117 CALL                             R17 2 1
      118 GETUPVAL                         R18 0
      119 GETTABLEKS                       R18 R18 K9 ["useMemo"]
      121 NEWCLOSURE                       R19 P5
      122 CAPTURE                          VAL R17
      123 NEWTABLE                         R20 0 3
      125 MOVE                             R21 R17
      126 LOADK                            R22 K10 ["emphasis"]
      127 LOADK                            R23 K11 ["shift400"]
      128 SETLIST                          R20 R21 3 [1]
      130 CALL                             R18 2 1
      131 GETUPVAL                         R19 0
      132 GETTABLEKS                       R19 R19 K4 ["useRef"]
      134 LOADNIL                          R20
      135 CALL                             R19 1 1
      136 GETUPVAL                         R20 0
      137 GETTABLEKS                       R20 R20 K7 ["useCallback"]
      139 NEWCLOSURE                       R21 P6
      140 CAPTURE                          VAL R19
      141 CAPTURE                          UPVAL U4
      142 CAPTURE                          UPVAL U2
      143 CAPTURE                          VAL R4
      144 CAPTURE                          VAL R3
      145 CAPTURE                          UPVAL U5
      146 NEWTABLE                         R22 0 1
      148 MOVE                             R23 R3
      149 SETLIST                          R22 R23 1 [1]
      151 CALL                             R20 2 1
      152 GETUPVAL                         R21 0
      153 GETTABLEKS                       R21 R21 K7 ["useCallback"]
      155 NEWCLOSURE                       R22 P7
      156 CAPTURE                          VAL R4
      157 CAPTURE                          UPVAL U2
      158 CAPTURE                          VAL R3
      159 NEWTABLE                         R23 0 1
      161 MOVE                             R24 R3
      162 SETLIST                          R23 R24 1 [1]
      164 CALL                             R21 2 1
      165 GETUPVAL                         R22 0
      166 GETTABLEKS                       R22 R22 K7 ["useCallback"]
      168 NEWCLOSURE                       R23 P8
      169 CAPTURE                          VAL R3
      170 CAPTURE                          UPVAL U2
      171 CAPTURE                          VAL R4
      172 NEWTABLE                         R24 0 1
      174 MOVE                             R25 R3
      175 SETLIST                          R24 R25 1 [1]
      177 CALL                             R22 2 1
      178 GETUPVAL                         R23 0
      179 GETTABLEKS                       R23 R23 K7 ["useCallback"]
      181 NEWCLOSURE                       R24 P9
      182 CAPTURE                          UPVAL U2
      183 CAPTURE                          VAL R4
      184 CAPTURE                          UPVAL U5
      185 CAPTURE                          VAL R3
      186 NEWTABLE                         R25 0 1
      188 MOVE                             R26 R3
      189 SETLIST                          R25 R26 1 [1]
      191 CALL                             R23 2 1
      192 GETUPVAL                         R24 0
      193 GETTABLEKS                       R24 R24 K7 ["useCallback"]
      195 NEWCLOSURE                       R25 P10
      196 CAPTURE                          UPVAL U2
      197 CAPTURE                          VAL R4
      198 NEWTABLE                         R26 0 0
      200 CALL                             R24 2 1
      201 GETUPVAL                         R25 0
      202 GETTABLEKS                       R25 R25 K7 ["useCallback"]
      204 NEWCLOSURE                       R26 P11
      205 CAPTURE                          UPVAL U2
      206 CAPTURE                          VAL R4
      207 NEWTABLE                         R27 0 0
      209 CALL                             R25 2 1
      210 GETUPVAL                         R26 0
      211 GETTABLEKS                       R26 R26 K12 ["createElement"]
      213 LOADK                            R27 K13 ["Frame"]
      214 DUPTABLE                         R28 K22 [{["AnchorPoint"], ["Position"], ["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 1, ["ZIndex"] = 10}]
      215 GETIMPORT                        R29 K25 [Vector2.new]
      217 LOADK                            R30 K26 [0.5]
      218 LOADN                            R31 0
      219 CALL                             R29 2 1
      220 SETTABLEKS                       R29 R28 K14 ["AnchorPoint"]
      222 GETIMPORT                        R29 K28 [UDim2.new]
      224 LOADK                            R30 K26 [0.5]
      225 LOADN                            R31 0
      226 LOADN                            R32 0
      227 LOADN                            R33 12
      228 CALL                             R29 4 1
      229 SETTABLEKS                       R29 R28 K15 ["Position"]
      231 GETIMPORT                        R29 K30 [UDim2.fromOffset]
      233 LOADN                            R30 0
      234 LOADN                            R31 0
      235 CALL                             R29 2 1
      236 SETTABLEKS                       R29 R28 K16 ["Size"]
      238 GETIMPORT                        R29 K33 [Enum.AutomaticSize.XY]
      240 SETTABLEKS                       R29 R28 K17 ["AutomaticSize"]
      242 DUPTABLE                         R29 K35 [{"Buttons"}]
      243 GETUPVAL                         R30 0
      244 GETTABLEKS                       R30 R30 K12 ["createElement"]
      246 GETUPVAL                         R31 6
      247 GETTABLEKS                       R31 R31 K36 ["View"]
      249 DUPTABLE                         R32 K39 [{["tag"] = "row auto-xy gap-small padding-small radius-small bg-surface-200 stroke-muted"}]
      250 DUPTABLE                         R33 K42 [{"BackButton", "CreateState"}]
      251 GETUPVAL                         R34 0
      252 GETTABLEKS                       R34 R34 K12 ["createElement"]
      254 GETUPVAL                         R35 6
      255 GETTABLEKS                       R35 R35 K43 ["Button"]
      257 DUPTABLE                         R36 K52 [{["tag"] = "auto-xy", ["text"], ["icon"] = "arrow-large-left", ["size"], ["variant"], ["onActivated"], ["LayoutOrder"] = 1}]
      258 LOADK                            R38 K53 ["Back to %*"]
      259 GETTABLEKS                       R41 R0 K55 ["backLabel"]
      261 ORK                              R40 R41 K54 ["Graph"]
      262 NAMECALL                         R38 R38 K56 ["format"]
      264 CALL                             R38 2 1
      265 MOVE                             R37 R38
      266 SETTABLEKS                       R37 R36 K45 ["text"]
      268 GETUPVAL                         R37 6
      269 GETTABLEKS                       R37 R37 K57 ["Enums"]
      271 GETTABLEKS                       R37 R37 K58 ["InputSize"]
      273 GETTABLEKS                       R37 R37 K59 ["Small"]
      275 SETTABLEKS                       R37 R36 K48 ["size"]
      277 GETUPVAL                         R37 6
      278 GETTABLEKS                       R37 R37 K57 ["Enums"]
      280 GETTABLEKS                       R37 R37 K60 ["ButtonVariant"]
      282 GETTABLEKS                       R37 R37 K61 ["Standard"]
      284 SETTABLEKS                       R37 R36 K49 ["variant"]
      286 GETTABLEKS                       R37 R1 K62 ["close"]
      288 SETTABLEKS                       R37 R36 K50 ["onActivated"]
      290 CALL                             R34 2 1
      291 SETTABLEKS                       R34 R33 K40 ["BackButton"]
      293 GETUPVAL                         R34 0
      294 GETTABLEKS                       R34 R34 K12 ["createElement"]
      296 GETUPVAL                         R35 6
      297 GETTABLEKS                       R35 R35 K43 ["Button"]
      299 DUPTABLE                         R36 K66 [{["tag"] = "auto-xy", ["text"] = "Create State", ["icon"] = "plus-large", ["size"], ["variant"], ["onActivated"], ["LayoutOrder"] = 2}]
      300 GETUPVAL                         R37 6
      301 GETTABLEKS                       R37 R37 K57 ["Enums"]
      303 GETTABLEKS                       R37 R37 K58 ["InputSize"]
      305 GETTABLEKS                       R37 R37 K59 ["Small"]
      307 SETTABLEKS                       R37 R36 K48 ["size"]
      309 GETUPVAL                         R37 6
      310 GETTABLEKS                       R37 R37 K57 ["Enums"]
      312 GETTABLEKS                       R37 R37 K60 ["ButtonVariant"]
      314 GETTABLEKS                       R37 R37 K61 ["Standard"]
      316 SETTABLEKS                       R37 R36 K49 ["variant"]
      318 SETTABLEKS                       R20 R36 K50 ["onActivated"]
      320 CALL                             R34 2 1
      321 SETTABLEKS                       R34 R33 K41 ["CreateState"]
      323 CALL                             R30 3 1
      324 SETTABLEKS                       R30 R29 K34 ["Buttons"]
      326 CALL                             R26 3 1
      327 GETUPVAL                         R27 0
      328 GETTABLEKS                       R27 R27 K12 ["createElement"]
      330 LOADK                            R28 K13 ["Frame"]
      331 DUPTABLE                         R29 K22 [{["AnchorPoint"], ["Position"], ["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 1, ["ZIndex"] = 10}]
      332 GETIMPORT                        R30 K25 [Vector2.new]
      334 LOADN                            R31 1
      335 LOADN                            R32 0
      336 CALL                             R30 2 1
      337 SETTABLEKS                       R30 R29 K14 ["AnchorPoint"]
      339 GETIMPORT                        R30 K28 [UDim2.new]
      341 LOADN                            R31 1
      342 LOADN                            R32 -12
      343 LOADN                            R33 0
      344 LOADN                            R34 12
      345 CALL                             R30 4 1
      346 SETTABLEKS                       R30 R29 K15 ["Position"]
      348 GETIMPORT                        R30 K30 [UDim2.fromOffset]
      350 LOADN                            R31 0
      351 LOADN                            R32 0
      352 CALL                             R30 2 1
      353 SETTABLEKS                       R30 R29 K16 ["Size"]
      355 GETIMPORT                        R30 K33 [Enum.AutomaticSize.XY]
      357 SETTABLEKS                       R30 R29 K17 ["AutomaticSize"]
      359 DUPTABLE                         R30 K68 [{"Backing"}]
      360 GETUPVAL                         R31 0
      361 GETTABLEKS                       R31 R31 K12 ["createElement"]
      363 GETUPVAL                         R32 6
      364 GETTABLEKS                       R32 R32 K36 ["View"]
      366 DUPTABLE                         R33 K71 [{["tag"] = "col auto-xy gap-small padding-small radius-small stroke-muted", ["backgroundStyle"]}]
      367 DUPTABLE                         R34 K75 [{["Color3"], ["Transparency"] = 0}]
      368 GETIMPORT                        R35 K77 [Color3.fromRGB]
      370 LOADN                            R36 61
      371 LOADN                            R37 40
      372 LOADN                            R38 51
      373 CALL                             R35 3 1
      374 SETTABLEKS                       R35 R34 K72 ["Color3"]
      376 SETTABLEKS                       R34 R33 K70 ["backgroundStyle"]
      378 DUPTABLE                         R34 K80 [{"DebugFeedback", "Trigger"}]
      379 GETUPVAL                         R35 0
      380 GETTABLEKS                       R35 R35 K12 ["createElement"]
      382 GETUPVAL                         R36 6
      383 GETTABLEKS                       R36 R36 K81 ["Checkbox"]
      385 DUPTABLE                         R37 K85 [{["label"] = "Debug Runtime Feedback", ["isChecked"], ["onActivated"], ["size"], ["LayoutOrder"] = 1}]
      386 SETTABLEKS                       R5 R37 K84 ["isChecked"]
      388 SETTABLEKS                       R15 R37 K50 ["onActivated"]
      390 GETUPVAL                         R38 6
      391 GETTABLEKS                       R38 R38 K57 ["Enums"]
      393 GETTABLEKS                       R38 R38 K58 ["InputSize"]
      395 GETTABLEKS                       R38 R38 K59 ["Small"]
      397 SETTABLEKS                       R38 R37 K48 ["size"]
      399 CALL                             R35 2 1
      400 SETTABLEKS                       R35 R34 K78 ["DebugFeedback"]
      402 GETUPVAL                         R35 0
      403 GETTABLEKS                       R35 R35 K12 ["createElement"]
      405 GETUPVAL                         R36 6
      406 GETTABLEKS                       R36 R36 K43 ["Button"]
      408 DUPTABLE                         R37 K89 [{["width"], ["text"] = "Trigger Transition", ["size"], ["variant"], ["isDisabled"], ["onActivated"], ["LayoutOrder"] = 2}]
      409 GETIMPORT                        R38 K91 [UDim.new]
      411 LOADN                            R39 1
      412 LOADN                            R40 0
      413 CALL                             R38 2 1
      414 SETTABLEKS                       R38 R37 K86 ["width"]
      416 GETUPVAL                         R38 6
      417 GETTABLEKS                       R38 R38 K57 ["Enums"]
      419 GETTABLEKS                       R38 R38 K58 ["InputSize"]
      421 GETTABLEKS                       R38 R38 K59 ["Small"]
      423 SETTABLEKS                       R38 R37 K48 ["size"]
      425 GETUPVAL                         R38 6
      426 GETTABLEKS                       R38 R38 K57 ["Enums"]
      428 GETTABLEKS                       R38 R38 K60 ["ButtonVariant"]
      430 GETTABLEKS                       R38 R38 K61 ["Standard"]
      432 SETTABLEKS                       R38 R37 K49 ["variant"]
      434 NOT                              R38 R5
      435 JUMPIF                           R38 ; [+4]
      436 JUMPIFNOTEQKNIL                  R9 ; [+2]
      438 LOADB                            R38 0 +1
      439 LOADB                            R38 1
      440 SETTABLEKS                       R38 R37 K88 ["isDisabled"]
      442 SETTABLEKS                       R16 R37 K50 ["onActivated"]
      444 CALL                             R35 2 1
      445 SETTABLEKS                       R35 R34 K79 ["Trigger"]
      447 CALL                             R31 3 1
      448 SETTABLEKS                       R31 R30 K67 ["Backing"]
      450 CALL                             R27 3 1
      451 GETUPVAL                         R28 0
      452 GETTABLEKS                       R28 R28 K12 ["createElement"]
      454 GETUPVAL                         R29 6
      455 GETTABLEKS                       R29 R29 K36 ["View"]
      457 DUPTABLE                         R30 K93 [{["tag"] = "size-full-full"}]
      458 DUPTABLE                         R31 K95 [{"Contexts"}]
      459 GETUPVAL                         R32 0
      460 GETTABLEKS                       R32 R32 K12 ["createElement"]
      462 GETUPVAL                         R33 7
      463 GETTABLEKS                       R33 R33 K96 ["Provider"]
      465 DUPTABLE                         R34 K98 [{"children"}]
      466 GETUPVAL                         R35 0
      467 GETTABLEKS                       R35 R35 K12 ["createElement"]
      469 GETUPVAL                         R36 8
      470 GETTABLEKS                       R36 R36 K96 ["Provider"]
      472 DUPTABLE                         R37 K103 [{"onCreateTransition", "onCreateStateAndTransition", "isValidTarget", "hasReverseTransition", "children"}]
      473 SETTABLEKS                       R22 R37 K99 ["onCreateTransition"]
      475 SETTABLEKS                       R23 R37 K100 ["onCreateStateAndTransition"]
      477 SETTABLEKS                       R24 R37 K101 ["isValidTarget"]
      479 SETTABLEKS                       R25 R37 K102 ["hasReverseTransition"]
      481 GETUPVAL                         R38 0
      482 GETTABLEKS                       R38 R38 K12 ["createElement"]
      484 GETUPVAL                         R39 9
      485 GETTABLEKS                       R39 R39 K104 ["ContextStack"]
      487 DUPTABLE                         R40 K106 [{"providers"}]
      488 NEWTABLE                         R41 0 5
      490 GETUPVAL                         R42 0
      491 GETTABLEKS                       R42 R42 K12 ["createElement"]
      493 GETUPVAL                         R43 10
      494 GETTABLEKS                       R43 R43 K107 ["NodeLibraryContext"]
      496 GETTABLEKS                       R43 R43 K96 ["Provider"]
      498 DUPTABLE                         R44 K109 [{"value"}]
      499 GETUPVAL                         R45 11
      500 GETTABLEKS                       R45 R45 K110 ["NODE_LIBRARY"]
      502 SETTABLEKS                       R45 R44 K108 ["value"]
      504 CALL                             R42 2 1
      505 GETUPVAL                         R43 0
      506 GETTABLEKS                       R43 R43 K12 ["createElement"]
      508 GETUPVAL                         R44 10
      509 GETTABLEKS                       R44 R44 K111 ["ContextMenuOverrideContext"]
      511 GETTABLEKS                       R44 R44 K1 ["Context"]
      513 GETTABLEKS                       R44 R44 K96 ["Provider"]
      515 DUPTABLE                         R45 K109 [{"value"}]
      516 GETUPVAL                         R46 12
      517 SETTABLEKS                       R46 R45 K108 ["value"]
      519 CALL                             R43 2 1
      520 GETUPVAL                         R44 0
      521 GETTABLEKS                       R44 R44 K12 ["createElement"]
      523 GETUPVAL                         R45 13
      524 GETTABLEKS                       R45 R45 K1 ["Context"]
      526 GETTABLEKS                       R45 R45 K96 ["Provider"]
      528 DUPTABLE                         R46 K109 [{"value"}]
      529 SETTABLEKS                       R18 R46 K108 ["value"]
      531 CALL                             R44 2 1
      532 GETUPVAL                         R45 0
      533 GETTABLEKS                       R45 R45 K12 ["createElement"]
      535 GETUPVAL                         R46 14
      536 DUPTABLE                         R47 K115 [{"data", "onDataChanged", "onCreateState", "onDeleteStates", "parameters"}]
      537 SETTABLEKS                       R2 R47 K2 ["data"]
      539 SETTABLEKS                       R3 R47 K3 ["onDataChanged"]
      541 SETTABLEKS                       R20 R47 K112 ["onCreateState"]
      543 SETTABLEKS                       R21 R47 K113 ["onDeleteStates"]
      545 GETTABLEKS                       R48 R0 K114 ["parameters"]
      547 SETTABLEKS                       R48 R47 K114 ["parameters"]
      549 CALL                             R45 2 1
      550 GETUPVAL                         R46 0
      551 GETTABLEKS                       R46 R46 K12 ["createElement"]
      553 GETUPVAL                         R47 15
      554 GETTABLEKS                       R47 R47 K96 ["Provider"]
      556 DUPTABLE                         R48 K116 [{"data", "onDataChanged"}]
      557 SETTABLEKS                       R2 R48 K2 ["data"]
      559 SETTABLEKS                       R3 R48 K3 ["onDataChanged"]
      561 CALL                             R46 2 -1
      562 SETLIST                          R41 R42 -1 [1]
      564 SETTABLEKS                       R41 R40 K105 ["providers"]
      566 DUPTABLE                         R41 K117 [{"Graph"}]
      567 GETUPVAL                         R42 0
      568 GETTABLEKS                       R42 R42 K12 ["createElement"]
      570 GETUPVAL                         R43 10
      571 GETTABLEKS                       R43 R43 K118 ["GraphingCanvas"]
      573 DUPTABLE                         R44 K121 [{"initialGraphRect", "childrenBehindNodes"}]
      574 GETUPVAL                         R45 16
      575 SETTABLEKS                       R45 R44 K119 ["initialGraphRect"]
      577 GETUPVAL                         R45 0
      578 GETTABLEKS                       R45 R45 K12 ["createElement"]
      580 GETUPVAL                         R46 17
      581 DUPTABLE                         R47 K124 [{"data", "onDataChanged", "fillTransitionId", "fillFraction"}]
      582 SETTABLEKS                       R2 R47 K2 ["data"]
      584 SETTABLEKS                       R3 R47 K3 ["onDataChanged"]
      586 SETTABLEKS                       R9 R47 K122 ["fillTransitionId"]
      588 SETTABLEKS                       R11 R47 K123 ["fillFraction"]
      590 CALL                             R45 2 1
      591 SETTABLEKS                       R45 R44 K120 ["childrenBehindNodes"]
      593 GETUPVAL                         R45 0
      594 GETTABLEKS                       R45 R45 K12 ["createElement"]
      596 GETUPVAL                         R46 0
      597 GETTABLEKS                       R46 R46 K125 ["Fragment"]
      599 LOADNIL                          R47
      600 GETTABLEKS                       R48 R0 K97 ["children"]
      602 CALL                             R45 3 1
      603 GETUPVAL                         R46 0
      604 GETTABLEKS                       R46 R46 K12 ["createElement"]
      606 GETUPVAL                         R47 18
      607 DUPTABLE                         R48 K127 [{"getterRef"}]
      608 SETTABLEKS                       R19 R48 K126 ["getterRef"]
      610 CALL                             R46 2 1
      611 MOVE                             R47 R26
      612 MOVE                             R48 R27
      613 CALL                             R42 6 1
      614 SETTABLEKS                       R42 R41 K54 ["Graph"]
      616 CALL                             R38 3 1
      617 SETTABLEKS                       R38 R37 K97 ["children"]
      619 CALL                             R35 2 1
      620 SETTABLEKS                       R35 R34 K97 ["children"]
      622 CALL                             R32 2 1
      623 SETTABLEKS                       R32 R31 K94 ["Contexts"]
      625 CALL                             R28 3 -1
      626 RETURN                           R28 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StateMachineGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["NodeGraphing"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R5 K10 ["ReactUtils"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Parent"]
       39 GETTABLEKS                       R6 R6 K11 ["Signals"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K12 ["Contexts"]
       46 GETTABLEKS                       R7 R7 K13 ["StateMachineConnectContext"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K14 ["Components"]
       53 GETTABLEKS                       R8 R8 K15 ["StateMachineContextMenu"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K16 ["Data"]
       60 GETTABLEKS                       R9 R9 K17 ["StateMachineData"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K14 ["Components"]
       67 GETTABLEKS                       R10 R10 K18 ["StateMachineEdges"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R11 R0 K12 ["Contexts"]
       74 GETTABLEKS                       R11 R11 K19 ["StateMachineGeometryContext"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K12 ["Contexts"]
       81 GETTABLEKS                       R12 R12 K20 ["StateMachineGraphContext"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R13 R0 K12 ["Contexts"]
       88 GETTABLEKS                       R13 R13 K21 ["StateMachineNavContext"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K5 [require]
       93 GETTABLEKS                       R14 R0 K12 ["Contexts"]
       95 GETTABLEKS                       R14 R14 K22 ["StateMachineNodeLibrary"]
       97 CALL                             R13 1 1
       98 GETIMPORT                        R14 K5 [require]
      100 GETTABLEKS                       R15 R0 K12 ["Contexts"]
      102 GETTABLEKS                       R15 R15 K23 ["StateMachinePreviewContext"]
      104 CALL                             R14 1 1
      105 GETIMPORT                        R15 K5 [require]
      107 GETTABLEKS                       R16 R0 K12 ["Contexts"]
      109 GETTABLEKS                       R16 R16 K24 ["StateMachineSelectionContext"]
      111 CALL                             R15 1 1
      112 GETIMPORT                        R16 K5 [require]
      114 GETTABLEKS                       R17 R0 K16 ["Data"]
      116 GETTABLEKS                       R17 R17 K25 ["StateMachineTypes"]
      118 CALL                             R16 1 1
      119 DUPTABLE                         R17 K27 [{"contextMenuComponent"}]
      120 SETTABLEKS                       R7 R17 K26 ["contextMenuComponent"]
      122 GETIMPORT                        R18 K29 [game]
      124 LOADK                            R20 K30 ["RunService"]
      125 NAMECALL                         R18 R18 K31 ["GetService"]
      127 CALL                             R18 2 1
      128 GETIMPORT                        R19 K34 [Rect.new]
      130 LOADN                            R20 0
      131 LOADN                            R21 -60
      132 LOADN                            R22 0
      133 LOADN                            R23 -60
      134 CALL                             R19 4 1
      135 GETIMPORT                        R20 K36 [Vector2.new]
      137 LOADN                            R21 150
      138 LOADN                            R22 50
      139 CALL                             R20 2 1
      140 DUPCLOSURE                       R21 K37 [PROTO_0]
      141 CAPTURE                          VAL R20
      142 DUPCLOSURE                       R22 K38 [PROTO_1]
      143 DUPCLOSURE                       R23 K39 [PROTO_2]
      144 CAPTURE                          VAL R3
      145 CAPTURE                          VAL R2
      146 DUPCLOSURE                       R24 K40 [PROTO_17]
      147 CAPTURE                          VAL R3
      148 CAPTURE                          VAL R12
      149 CAPTURE                          VAL R8
      150 CAPTURE                          VAL R18
      151 CAPTURE                          VAL R21
      152 CAPTURE                          VAL R22
      153 CAPTURE                          VAL R1
      154 CAPTURE                          VAL R10
      155 CAPTURE                          VAL R6
      156 CAPTURE                          VAL R4
      157 CAPTURE                          VAL R2
      158 CAPTURE                          VAL R13
      159 CAPTURE                          VAL R17
      160 CAPTURE                          VAL R14
      161 CAPTURE                          VAL R11
      162 CAPTURE                          VAL R15
      163 CAPTURE                          VAL R19
      164 CAPTURE                          VAL R9
      165 CAPTURE                          VAL R23
      166 RETURN                           R24 1
