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
        5 GETTABLEKS                       R2 R2 K0 ["transitions"]
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 FORGPREP                         R2
       10 GETTABLEKS                       R7 R6 K1 ["fromStateId"]
       12 JUMPIFNOTEQ                      R7 R0 ; [+3]
       14 MOVE                             R1 R6
       15 JUMP                             ; [+2]
       16 FORGLOOP                         R2 2 ; [-7]
       18 JUMPIFNOTEQKNIL                  R1 ; [+2]
       20 RETURN                           R0 0
       21 GETUPVAL                         R2 1
       22 LOADN                            R3 0
       23 CALL                             R2 1 0
       24 GETUPVAL                         R2 2
       25 GETTABLEKS                       R3 R1 K2 ["id"]
       27 CALL                             R2 1 0
       28 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["startStateId"]
        7 GETUPVAL                         R2 2
        8 MOVE                             R3 R1
        9 CALL                             R2 1 0
       10 GETUPVAL                         R2 3
       11 MOVE                             R3 R1
       12 CALL                             R2 1 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R1 2
       15 LOADNIL                          R2
       16 CALL                             R1 1 0
       17 GETUPVAL                         R1 4
       18 LOADNIL                          R2
       19 CALL                             R1 1 0
       20 GETUPVAL                         R1 5
       21 LOADN                            R2 0
       22 CALL                             R1 1 0
       23 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getTransition"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_7:
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

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 0
        6 CALL                             R0 1 1
        7 JUMPIFNOT                        R0 ; [+3]
        8 GETTABLEKS                       R2 R0 K0 ["Length"]
       10 JUMP                             ; [+1]
       11 LOADN                            R2 0
       12 FASTCALL2K                       MATH_MAX R2 K1 ; [+4]
       14 LOADK                            R3 K1 [0.001]
       15 GETIMPORT                        R1 K4 [math.max]
       17 CALL                             R1 2 1
       18 JUMPIFNOT                        R0 ; [+3]
       19 GETTABLEKS                       R2 R0 K5 ["toStateId"]
       21 JUMP                             ; [+1]
       22 LOADNIL                          R2
       23 LOADN                            R3 0
       24 GETUPVAL                         R4 2
       25 GETTABLEKS                       R4 R4 K6 ["Heartbeat"]
       27 NEWCLOSURE                       R6 P0
       28 CAPTURE                          REF R3
       29 CAPTURE                          VAL R1
       30 CAPTURE                          UPVAL U3
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          VAL R2
       33 CAPTURE                          UPVAL U5
       34 NAMECALL                         R4 R4 K7 ["Connect"]
       36 CALL                             R4 2 1
       37 NEWCLOSURE                       R5 P1
       38 CAPTURE                          VAL R4
       39 CLOSEUPVALS                      R3
       40 RETURN                           R5 1

PROTO_10:
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

PROTO_11:
        0 DUPTABLE                         R0 K5 [{[1], ["selectionStyle"] = "emphasis", ["activeStyle"] = "shift400"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["activeStateIds"]
        4 RETURN                           R0 1

PROTO_12:
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
       15 MOVE                             R4 R1
       16 CALL                             R2 2 1
       17 MOVE                             R1 R2
       18 GETUPVAL                         R2 4
       19 GETUPVAL                         R3 2
       20 GETTABLEKS                       R3 R3 K2 ["addState"]
       22 GETUPVAL                         R4 3
       23 GETUPVAL                         R5 5
       24 GETUPVAL                         R6 3
       25 CALL                             R5 1 1
       26 MOVE                             R6 R1
       27 CALL                             R3 3 1
       28 CALL                             R2 1 0
       29 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETUPVAL                         R7 1
        6 GETTABLEKS                       R7 R7 K0 ["getState"]
        8 MOVE                             R8 R1
        9 MOVE                             R9 R6
       10 CALL                             R7 2 1
       11 JUMPIFNOT                        R7 ; [+13]
       12 GETUPVAL                         R8 1
       13 GETTABLEKS                       R8 R8 K1 ["isSynthetic"]
       15 MOVE                             R9 R7
       16 CALL                             R8 1 1
       17 JUMPIF                           R8 ; [+7]
       18 GETUPVAL                         R8 1
       19 GETTABLEKS                       R8 R8 K2 ["deleteState"]
       21 MOVE                             R9 R1
       22 MOVE                             R10 R6
       23 CALL                             R8 2 1
       24 MOVE                             R1 R8
       25 FORGLOOP                         R2 2 ; [-21]
       27 GETUPVAL                         R2 2
       28 MOVE                             R3 R1
       29 CALL                             R2 1 0
       30 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["addTransition"]
        4 GETUPVAL                         R4 2
        5 MOVE                             R5 R0
        6 MOVE                             R6 R1
        7 CALL                             R3 3 1
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["addState"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 GETUPVAL                         R5 1
        6 CALL                             R4 1 1
        7 DUPTABLE                         R5 K3 [{"x", "y"}]
        8 GETTABLEKS                       R6 R1 K4 ["X"]
       10 SETTABLEKS                       R6 R5 K1 ["x"]
       12 GETTABLEKS                       R6 R1 K5 ["Y"]
       14 SETTABLEKS                       R6 R5 K2 ["y"]
       16 CALL                             R2 3 2
       17 GETUPVAL                         R4 3
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R5 R5 K6 ["addTransition"]
       21 MOVE                             R6 R2
       22 MOVE                             R7 R0
       23 MOVE                             R8 R3
       24 CALL                             R5 3 1
       25 CALL                             R4 1 0
       26 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getState"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 JUMPIFEQKNIL                     R2 ; [+7]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K1 ["isSynthetic"]
       11 MOVE                             R4 R2
       12 CALL                             R3 1 1
       13 JUMPIFNOT                        R3 ; [+2]
       14 LOADB                            R3 0
       15 RETURN                           R3 1
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K0 ["getState"]
       19 GETUPVAL                         R4 1
       20 MOVE                             R5 R0
       21 CALL                             R3 2 1
       22 JUMPIFNOT                        R3 ; [+12]
       23 GETTABLEKS                       R4 R3 K2 ["isStart"]
       25 JUMPIFNOT                        R4 ; [+9]
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R4 R4 K3 ["hasOutgoingTransition"]
       29 GETUPVAL                         R5 1
       30 MOVE                             R6 R0
       31 CALL                             R4 2 1
       32 JUMPIFNOT                        R4 ; [+2]
       33 LOADB                            R4 0
       34 RETURN                           R4 1
       35 GETUPVAL                         R5 0
       36 GETTABLEKS                       R5 R5 K4 ["hasTransition"]
       38 GETUPVAL                         R6 1
       39 MOVE                             R7 R0
       40 MOVE                             R8 R1
       41 CALL                             R5 3 1
       42 NOT                              R4 R5
       43 RETURN                           R4 1

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["hasTransition"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R1
        5 MOVE                             R5 R0
        6 CALL                             R2 3 -1
        7 RETURN                           R2 -1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R2 R0 K2 ["data"]
        9 GETTABLEKS                       R3 R0 K3 ["onDataChanged"]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K4 ["useState"]
       14 LOADB                            R5 0
       15 CALL                             R4 1 2
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R6 R6 K4 ["useState"]
       19 LOADNIL                          R7
       20 CALL                             R6 1 2
       21 GETUPVAL                         R8 0
       22 GETTABLEKS                       R8 R8 K4 ["useState"]
       24 LOADNIL                          R9
       25 CALL                             R8 1 2
       26 GETUPVAL                         R10 0
       27 GETTABLEKS                       R10 R10 K4 ["useState"]
       29 LOADN                            R11 0
       30 CALL                             R10 1 2
       31 GETUPVAL                         R12 2
       32 GETTABLEKS                       R12 R12 K5 ["useEventCallback"]
       34 NEWCLOSURE                       R13 P0
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R11
       37 CAPTURE                          VAL R9
       38 CALL                             R12 1 1
       39 GETUPVAL                         R13 2
       40 GETTABLEKS                       R13 R13 K5 ["useEventCallback"]
       42 NEWCLOSURE                       R14 P1
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R7
       46 CAPTURE                          VAL R12
       47 CAPTURE                          VAL R9
       48 CAPTURE                          VAL R11
       49 CALL                             R13 1 1
       50 GETUPVAL                         R14 2
       51 GETTABLEKS                       R14 R14 K5 ["useEventCallback"]
       53 NEWCLOSURE                       R15 P2
       54 CAPTURE                          VAL R12
       55 CAPTURE                          VAL R6
       56 CALL                             R14 1 1
       57 GETUPVAL                         R15 2
       58 GETTABLEKS                       R15 R15 K5 ["useEventCallback"]
       60 NEWCLOSURE                       R16 P3
       61 CAPTURE                          UPVAL U3
       62 CAPTURE                          VAL R2
       63 CALL                             R15 1 1
       64 GETUPVAL                         R16 0
       65 GETTABLEKS                       R16 R16 K6 ["useEffect"]
       67 NEWCLOSURE                       R17 P4
       68 CAPTURE                          VAL R8
       69 CAPTURE                          VAL R15
       70 CAPTURE                          UPVAL U4
       71 CAPTURE                          VAL R11
       72 CAPTURE                          VAL R9
       73 CAPTURE                          VAL R7
       74 NEWTABLE                         R18 0 2
       76 MOVE                             R19 R8
       77 MOVE                             R20 R15
       78 SETLIST                          R18 R19 2 [1]
       80 CALL                             R16 2 0
       81 GETUPVAL                         R16 0
       82 GETTABLEKS                       R16 R16 K7 ["useMemo"]
       84 NEWCLOSURE                       R17 P5
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R6
       87 CAPTURE                          VAL R8
       88 CAPTURE                          UPVAL U3
       89 CAPTURE                          VAL R2
       90 NEWTABLE                         R18 0 4
       92 MOVE                             R19 R4
       93 MOVE                             R20 R6
       94 MOVE                             R21 R8
       95 MOVE                             R22 R2
       96 SETLIST                          R18 R19 4 [1]
       98 CALL                             R16 2 1
       99 GETUPVAL                         R17 0
      100 GETTABLEKS                       R17 R17 K7 ["useMemo"]
      102 NEWCLOSURE                       R18 P6
      103 CAPTURE                          VAL R16
      104 NEWTABLE                         R19 0 3
      106 MOVE                             R20 R16
      107 LOADK                            R21 K8 ["emphasis"]
      108 LOADK                            R22 K9 ["shift400"]
      109 SETLIST                          R19 R20 3 [1]
      111 CALL                             R17 2 1
      112 GETUPVAL                         R18 0
      113 GETTABLEKS                       R18 R18 K10 ["useRef"]
      115 LOADNIL                          R19
      116 CALL                             R18 1 1
      117 GETUPVAL                         R19 2
      118 GETTABLEKS                       R19 R19 K5 ["useEventCallback"]
      120 NEWCLOSURE                       R20 P7
      121 CAPTURE                          VAL R18
      122 CAPTURE                          UPVAL U5
      123 CAPTURE                          UPVAL U3
      124 CAPTURE                          VAL R2
      125 CAPTURE                          VAL R3
      126 CAPTURE                          UPVAL U6
      127 CALL                             R19 1 1
      128 GETUPVAL                         R20 2
      129 GETTABLEKS                       R20 R20 K5 ["useEventCallback"]
      131 NEWCLOSURE                       R21 P8
      132 CAPTURE                          VAL R2
      133 CAPTURE                          UPVAL U3
      134 CAPTURE                          VAL R3
      135 CALL                             R20 1 1
      136 GETUPVAL                         R21 2
      137 GETTABLEKS                       R21 R21 K5 ["useEventCallback"]
      139 NEWCLOSURE                       R22 P9
      140 CAPTURE                          VAL R3
      141 CAPTURE                          UPVAL U3
      142 CAPTURE                          VAL R2
      143 CALL                             R21 1 1
      144 GETUPVAL                         R22 2
      145 GETTABLEKS                       R22 R22 K5 ["useEventCallback"]
      147 NEWCLOSURE                       R23 P10
      148 CAPTURE                          UPVAL U3
      149 CAPTURE                          VAL R2
      150 CAPTURE                          UPVAL U6
      151 CAPTURE                          VAL R3
      152 CALL                             R22 1 1
      153 GETUPVAL                         R23 2
      154 GETTABLEKS                       R23 R23 K5 ["useEventCallback"]
      156 NEWCLOSURE                       R24 P11
      157 CAPTURE                          UPVAL U3
      158 CAPTURE                          VAL R2
      159 CALL                             R23 1 1
      160 GETUPVAL                         R24 2
      161 GETTABLEKS                       R24 R24 K5 ["useEventCallback"]
      163 NEWCLOSURE                       R25 P12
      164 CAPTURE                          UPVAL U3
      165 CAPTURE                          VAL R2
      166 CALL                             R24 1 1
      167 GETUPVAL                         R25 0
      168 GETTABLEKS                       R25 R25 K11 ["createElement"]
      170 LOADK                            R26 K12 ["Frame"]
      171 DUPTABLE                         R27 K21 [{["AnchorPoint"], ["Position"], ["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 1, ["ZIndex"] = 10}]
      172 GETIMPORT                        R28 K24 [Vector2.new]
      174 LOADK                            R29 K25 [0.5]
      175 LOADN                            R30 0
      176 CALL                             R28 2 1
      177 SETTABLEKS                       R28 R27 K13 ["AnchorPoint"]
      179 GETIMPORT                        R28 K27 [UDim2.new]
      181 LOADK                            R29 K25 [0.5]
      182 LOADN                            R30 0
      183 LOADN                            R31 0
      184 LOADN                            R32 12
      185 CALL                             R28 4 1
      186 SETTABLEKS                       R28 R27 K14 ["Position"]
      188 GETIMPORT                        R28 K29 [UDim2.fromOffset]
      190 LOADN                            R29 0
      191 LOADN                            R30 0
      192 CALL                             R28 2 1
      193 SETTABLEKS                       R28 R27 K15 ["Size"]
      195 GETIMPORT                        R28 K32 [Enum.AutomaticSize.XY]
      197 SETTABLEKS                       R28 R27 K16 ["AutomaticSize"]
      199 DUPTABLE                         R28 K34 [{"Buttons"}]
      200 GETUPVAL                         R29 0
      201 GETTABLEKS                       R29 R29 K11 ["createElement"]
      203 GETUPVAL                         R30 7
      204 GETTABLEKS                       R30 R30 K35 ["View"]
      206 DUPTABLE                         R31 K38 [{["tag"] = "row auto-xy gap-small padding-small radius-small bg-surface-200 stroke-muted"}]
      207 DUPTABLE                         R32 K41 [{"BackButton", "CreateState"}]
      208 GETUPVAL                         R33 0
      209 GETTABLEKS                       R33 R33 K11 ["createElement"]
      211 GETUPVAL                         R34 7
      212 GETTABLEKS                       R34 R34 K42 ["Button"]
      214 DUPTABLE                         R35 K51 [{["tag"] = "auto-xy", ["text"], ["icon"] = "arrow-large-left", ["size"], ["variant"], ["onActivated"], ["LayoutOrder"] = 1}]
      215 LOADK                            R37 K52 ["Back to %*"]
      216 GETTABLEKS                       R40 R0 K54 ["backLabel"]
      218 ORK                              R39 R40 K53 ["Graph"]
      219 NAMECALL                         R37 R37 K55 ["format"]
      221 CALL                             R37 2 1
      222 MOVE                             R36 R37
      223 SETTABLEKS                       R36 R35 K44 ["text"]
      225 GETUPVAL                         R36 7
      226 GETTABLEKS                       R36 R36 K56 ["Enums"]
      228 GETTABLEKS                       R36 R36 K57 ["InputSize"]
      230 GETTABLEKS                       R36 R36 K58 ["Small"]
      232 SETTABLEKS                       R36 R35 K47 ["size"]
      234 GETUPVAL                         R36 7
      235 GETTABLEKS                       R36 R36 K56 ["Enums"]
      237 GETTABLEKS                       R36 R36 K59 ["ButtonVariant"]
      239 GETTABLEKS                       R36 R36 K60 ["Standard"]
      241 SETTABLEKS                       R36 R35 K48 ["variant"]
      243 GETTABLEKS                       R36 R1 K61 ["close"]
      245 SETTABLEKS                       R36 R35 K49 ["onActivated"]
      247 CALL                             R33 2 1
      248 SETTABLEKS                       R33 R32 K39 ["BackButton"]
      250 GETUPVAL                         R33 0
      251 GETTABLEKS                       R33 R33 K11 ["createElement"]
      253 GETUPVAL                         R34 7
      254 GETTABLEKS                       R34 R34 K42 ["Button"]
      256 DUPTABLE                         R35 K65 [{["tag"] = "auto-xy", ["text"] = "Create State", ["icon"] = "plus-large", ["size"], ["variant"], ["onActivated"], ["LayoutOrder"] = 2}]
      257 GETUPVAL                         R36 7
      258 GETTABLEKS                       R36 R36 K56 ["Enums"]
      260 GETTABLEKS                       R36 R36 K57 ["InputSize"]
      262 GETTABLEKS                       R36 R36 K58 ["Small"]
      264 SETTABLEKS                       R36 R35 K47 ["size"]
      266 GETUPVAL                         R36 7
      267 GETTABLEKS                       R36 R36 K56 ["Enums"]
      269 GETTABLEKS                       R36 R36 K59 ["ButtonVariant"]
      271 GETTABLEKS                       R36 R36 K60 ["Standard"]
      273 SETTABLEKS                       R36 R35 K48 ["variant"]
      275 SETTABLEKS                       R19 R35 K49 ["onActivated"]
      277 CALL                             R33 2 1
      278 SETTABLEKS                       R33 R32 K40 ["CreateState"]
      280 CALL                             R29 3 1
      281 SETTABLEKS                       R29 R28 K33 ["Buttons"]
      283 CALL                             R25 3 1
      284 GETUPVAL                         R26 0
      285 GETTABLEKS                       R26 R26 K11 ["createElement"]
      287 LOADK                            R27 K12 ["Frame"]
      288 DUPTABLE                         R28 K21 [{["AnchorPoint"], ["Position"], ["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 1, ["ZIndex"] = 10}]
      289 GETIMPORT                        R29 K24 [Vector2.new]
      291 LOADN                            R30 1
      292 LOADN                            R31 0
      293 CALL                             R29 2 1
      294 SETTABLEKS                       R29 R28 K13 ["AnchorPoint"]
      296 GETIMPORT                        R29 K27 [UDim2.new]
      298 LOADN                            R30 1
      299 LOADN                            R31 -12
      300 LOADN                            R32 0
      301 LOADN                            R33 12
      302 CALL                             R29 4 1
      303 SETTABLEKS                       R29 R28 K14 ["Position"]
      305 GETIMPORT                        R29 K29 [UDim2.fromOffset]
      307 LOADN                            R30 0
      308 LOADN                            R31 0
      309 CALL                             R29 2 1
      310 SETTABLEKS                       R29 R28 K15 ["Size"]
      312 GETIMPORT                        R29 K32 [Enum.AutomaticSize.XY]
      314 SETTABLEKS                       R29 R28 K16 ["AutomaticSize"]
      316 DUPTABLE                         R29 K67 [{"Backing"}]
      317 GETUPVAL                         R30 0
      318 GETTABLEKS                       R30 R30 K11 ["createElement"]
      320 GETUPVAL                         R31 7
      321 GETTABLEKS                       R31 R31 K35 ["View"]
      323 DUPTABLE                         R32 K70 [{["tag"] = "col auto-xy gap-small padding-small radius-small stroke-muted", ["backgroundStyle"]}]
      324 DUPTABLE                         R33 K74 [{["Color3"], ["Transparency"] = 0}]
      325 GETIMPORT                        R34 K76 [Color3.fromRGB]
      327 LOADN                            R35 61
      328 LOADN                            R36 40
      329 LOADN                            R37 51
      330 CALL                             R34 3 1
      331 SETTABLEKS                       R34 R33 K71 ["Color3"]
      333 SETTABLEKS                       R33 R32 K69 ["backgroundStyle"]
      335 DUPTABLE                         R33 K79 [{"DebugFeedback", "Trigger"}]
      336 GETUPVAL                         R34 0
      337 GETTABLEKS                       R34 R34 K11 ["createElement"]
      339 GETUPVAL                         R35 7
      340 GETTABLEKS                       R35 R35 K80 ["Checkbox"]
      342 DUPTABLE                         R36 K84 [{["label"] = "Debug Runtime Feedback", ["isChecked"], ["onActivated"], ["size"], ["LayoutOrder"] = 1}]
      343 SETTABLEKS                       R4 R36 K83 ["isChecked"]
      345 SETTABLEKS                       R13 R36 K49 ["onActivated"]
      347 GETUPVAL                         R37 7
      348 GETTABLEKS                       R37 R37 K56 ["Enums"]
      350 GETTABLEKS                       R37 R37 K57 ["InputSize"]
      352 GETTABLEKS                       R37 R37 K58 ["Small"]
      354 SETTABLEKS                       R37 R36 K47 ["size"]
      356 CALL                             R34 2 1
      357 SETTABLEKS                       R34 R33 K77 ["DebugFeedback"]
      359 GETUPVAL                         R34 0
      360 GETTABLEKS                       R34 R34 K11 ["createElement"]
      362 GETUPVAL                         R35 7
      363 GETTABLEKS                       R35 R35 K42 ["Button"]
      365 DUPTABLE                         R36 K88 [{["width"], ["text"] = "Trigger Transition", ["size"], ["variant"], ["isDisabled"], ["onActivated"], ["LayoutOrder"] = 2}]
      366 GETIMPORT                        R37 K90 [UDim.new]
      368 LOADN                            R38 1
      369 LOADN                            R39 0
      370 CALL                             R37 2 1
      371 SETTABLEKS                       R37 R36 K85 ["width"]
      373 GETUPVAL                         R37 7
      374 GETTABLEKS                       R37 R37 K56 ["Enums"]
      376 GETTABLEKS                       R37 R37 K57 ["InputSize"]
      378 GETTABLEKS                       R37 R37 K58 ["Small"]
      380 SETTABLEKS                       R37 R36 K47 ["size"]
      382 GETUPVAL                         R37 7
      383 GETTABLEKS                       R37 R37 K56 ["Enums"]
      385 GETTABLEKS                       R37 R37 K59 ["ButtonVariant"]
      387 GETTABLEKS                       R37 R37 K60 ["Standard"]
      389 SETTABLEKS                       R37 R36 K48 ["variant"]
      391 NOT                              R37 R4
      392 JUMPIF                           R37 ; [+4]
      393 JUMPIFNOTEQKNIL                  R8 ; [+2]
      395 LOADB                            R37 0 +1
      396 LOADB                            R37 1
      397 SETTABLEKS                       R37 R36 K87 ["isDisabled"]
      399 SETTABLEKS                       R14 R36 K49 ["onActivated"]
      401 CALL                             R34 2 1
      402 SETTABLEKS                       R34 R33 K78 ["Trigger"]
      404 CALL                             R30 3 1
      405 SETTABLEKS                       R30 R29 K66 ["Backing"]
      407 CALL                             R26 3 1
      408 GETUPVAL                         R27 0
      409 GETTABLEKS                       R27 R27 K11 ["createElement"]
      411 GETUPVAL                         R28 7
      412 GETTABLEKS                       R28 R28 K35 ["View"]
      414 DUPTABLE                         R29 K92 [{["tag"] = "size-full-full"}]
      415 DUPTABLE                         R30 K94 [{"Contexts"}]
      416 GETUPVAL                         R31 0
      417 GETTABLEKS                       R31 R31 K11 ["createElement"]
      419 GETUPVAL                         R32 8
      420 GETTABLEKS                       R32 R32 K95 ["Provider"]
      422 DUPTABLE                         R33 K97 [{"children"}]
      423 GETUPVAL                         R34 0
      424 GETTABLEKS                       R34 R34 K11 ["createElement"]
      426 GETUPVAL                         R35 9
      427 GETTABLEKS                       R35 R35 K95 ["Provider"]
      429 DUPTABLE                         R36 K102 [{"onCreateTransition", "onCreateStateAndTransition", "isValidTarget", "hasReverseTransition", "children"}]
      430 SETTABLEKS                       R21 R36 K98 ["onCreateTransition"]
      432 SETTABLEKS                       R22 R36 K99 ["onCreateStateAndTransition"]
      434 SETTABLEKS                       R23 R36 K100 ["isValidTarget"]
      436 SETTABLEKS                       R24 R36 K101 ["hasReverseTransition"]
      438 GETUPVAL                         R37 0
      439 GETTABLEKS                       R37 R37 K11 ["createElement"]
      441 GETUPVAL                         R38 2
      442 GETTABLEKS                       R38 R38 K103 ["ContextStack"]
      444 DUPTABLE                         R39 K105 [{"providers"}]
      445 NEWTABLE                         R40 0 5
      447 GETUPVAL                         R41 0
      448 GETTABLEKS                       R41 R41 K11 ["createElement"]
      450 GETUPVAL                         R42 10
      451 GETTABLEKS                       R42 R42 K106 ["NodeLibraryContext"]
      453 GETTABLEKS                       R42 R42 K95 ["Provider"]
      455 DUPTABLE                         R43 K108 [{"value"}]
      456 GETUPVAL                         R44 11
      457 GETTABLEKS                       R44 R44 K109 ["NODE_LIBRARY"]
      459 SETTABLEKS                       R44 R43 K107 ["value"]
      461 CALL                             R41 2 1
      462 GETUPVAL                         R42 0
      463 GETTABLEKS                       R42 R42 K11 ["createElement"]
      465 GETUPVAL                         R43 10
      466 GETTABLEKS                       R43 R43 K110 ["ContextMenuOverrideContext"]
      468 GETTABLEKS                       R43 R43 K1 ["Context"]
      470 GETTABLEKS                       R43 R43 K95 ["Provider"]
      472 DUPTABLE                         R44 K108 [{"value"}]
      473 GETUPVAL                         R45 12
      474 SETTABLEKS                       R45 R44 K107 ["value"]
      476 CALL                             R42 2 1
      477 GETUPVAL                         R43 0
      478 GETTABLEKS                       R43 R43 K11 ["createElement"]
      480 GETUPVAL                         R44 13
      481 GETTABLEKS                       R44 R44 K1 ["Context"]
      483 GETTABLEKS                       R44 R44 K95 ["Provider"]
      485 DUPTABLE                         R45 K108 [{"value"}]
      486 SETTABLEKS                       R17 R45 K107 ["value"]
      488 CALL                             R43 2 1
      489 GETUPVAL                         R44 0
      490 GETTABLEKS                       R44 R44 K11 ["createElement"]
      492 GETUPVAL                         R45 14
      493 DUPTABLE                         R46 K114 [{"data", "onDataChanged", "onCreateState", "onDeleteStates", "parameters"}]
      494 SETTABLEKS                       R2 R46 K2 ["data"]
      496 SETTABLEKS                       R3 R46 K3 ["onDataChanged"]
      498 SETTABLEKS                       R19 R46 K111 ["onCreateState"]
      500 SETTABLEKS                       R20 R46 K112 ["onDeleteStates"]
      502 GETTABLEKS                       R47 R0 K113 ["parameters"]
      504 SETTABLEKS                       R47 R46 K113 ["parameters"]
      506 CALL                             R44 2 1
      507 GETUPVAL                         R45 0
      508 GETTABLEKS                       R45 R45 K11 ["createElement"]
      510 GETUPVAL                         R46 15
      511 GETTABLEKS                       R46 R46 K95 ["Provider"]
      513 DUPTABLE                         R47 K115 [{"data", "onDataChanged"}]
      514 SETTABLEKS                       R2 R47 K2 ["data"]
      516 SETTABLEKS                       R3 R47 K3 ["onDataChanged"]
      518 CALL                             R45 2 -1
      519 SETLIST                          R40 R41 -1 [1]
      521 SETTABLEKS                       R40 R39 K104 ["providers"]
      523 DUPTABLE                         R40 K116 [{"Graph"}]
      524 GETUPVAL                         R41 0
      525 GETTABLEKS                       R41 R41 K11 ["createElement"]
      527 GETUPVAL                         R42 10
      528 GETTABLEKS                       R42 R42 K117 ["GraphingCanvas"]
      530 DUPTABLE                         R43 K120 [{"initialGraphRect", "childrenBehindNodes"}]
      531 GETUPVAL                         R44 16
      532 SETTABLEKS                       R44 R43 K118 ["initialGraphRect"]
      534 GETUPVAL                         R44 0
      535 GETTABLEKS                       R44 R44 K11 ["createElement"]
      537 GETUPVAL                         R45 17
      538 DUPTABLE                         R46 K123 [{"data", "onDataChanged", "fillTransitionId", "fillFraction"}]
      539 SETTABLEKS                       R2 R46 K2 ["data"]
      541 SETTABLEKS                       R3 R46 K3 ["onDataChanged"]
      543 SETTABLEKS                       R8 R46 K121 ["fillTransitionId"]
      545 SETTABLEKS                       R10 R46 K122 ["fillFraction"]
      547 CALL                             R44 2 1
      548 SETTABLEKS                       R44 R43 K119 ["childrenBehindNodes"]
      550 GETUPVAL                         R44 0
      551 GETTABLEKS                       R44 R44 K11 ["createElement"]
      553 GETUPVAL                         R45 0
      554 GETTABLEKS                       R45 R45 K124 ["Fragment"]
      556 LOADNIL                          R46
      557 GETTABLEKS                       R47 R0 K96 ["children"]
      559 CALL                             R44 3 1
      560 GETUPVAL                         R45 0
      561 GETTABLEKS                       R45 R45 K11 ["createElement"]
      563 GETUPVAL                         R46 18
      564 DUPTABLE                         R47 K126 [{"getterRef"}]
      565 SETTABLEKS                       R18 R47 K125 ["getterRef"]
      567 CALL                             R45 2 1
      568 MOVE                             R46 R25
      569 MOVE                             R47 R26
      570 CALL                             R41 6 1
      571 SETTABLEKS                       R41 R40 K53 ["Graph"]
      573 CALL                             R37 3 1
      574 SETTABLEKS                       R37 R36 K96 ["children"]
      576 CALL                             R34 2 1
      577 SETTABLEKS                       R34 R33 K96 ["children"]
      579 CALL                             R31 2 1
      580 SETTABLEKS                       R31 R30 K93 ["Contexts"]
      582 CALL                             R27 3 -1
      583 RETURN                           R27 -1

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
      146 DUPCLOSURE                       R24 K40 [PROTO_18]
      147 CAPTURE                          VAL R3
      148 CAPTURE                          VAL R12
      149 CAPTURE                          VAL R4
      150 CAPTURE                          VAL R8
      151 CAPTURE                          VAL R18
      152 CAPTURE                          VAL R21
      153 CAPTURE                          VAL R22
      154 CAPTURE                          VAL R1
      155 CAPTURE                          VAL R10
      156 CAPTURE                          VAL R6
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
