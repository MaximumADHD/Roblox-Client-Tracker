PROTO_0:
        0 JUMPIFNOTEQKNIL                  R0 ; [+4]
        2 GETIMPORT                        R1 K2 [Vector2.zero]
        4 RETURN                           R1 1
        5 LOADK                            R1 K3 [∞]
        6 LOADK                            R2 K3 [∞]
        7 MOVE                             R3 R0
        8 LOADNIL                          R4
        9 LOADNIL                          R5
       10 FORGPREP                         R3
       11 GETTABLEKS                       R10 R7 K4 ["X"]
       13 FASTCALL2                        MATH_MIN R1 R10 ; [+4]
       15 MOVE                             R9 R1
       16 GETIMPORT                        R8 K7 [math.min]
       18 CALL                             R8 2 1
       19 MOVE                             R1 R8
       20 GETTABLEKS                       R10 R7 K8 ["Y"]
       22 FASTCALL2                        MATH_MIN R2 R10 ; [+4]
       24 MOVE                             R9 R2
       25 GETIMPORT                        R8 K7 [math.min]
       27 CALL                             R8 2 1
       28 MOVE                             R2 R8
       29 FORGLOOP                         R3 2 ; [-19]
       31 JUMPIFNOTEQKN                    R1 K3 [∞] ; [+4]
       33 GETIMPORT                        R3 K2 [Vector2.zero]
       35 RETURN                           R3 1
       36 GETIMPORT                        R3 K10 [Vector2.new]
       38 MOVE                             R4 R1
       39 MOVE                             R5 R2
       40 CALL                             R3 2 -1
       41 RETURN                           R3 -1

PROTO_1:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 DUPTABLE                         R3 K5 [{"columnSpacing", "nodeSpacing", "defaultNodeSize", "origin", "iterations"}]
        5 GETTABLEKS                       R4 R2 K0 ["columnSpacing"]
        7 JUMPIF                           R4 ; [+3]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K6 ["COLUMN_HORIZONTAL_SPACING"]
       11 SETTABLEKS                       R4 R3 K0 ["columnSpacing"]
       13 GETTABLEKS                       R4 R2 K1 ["nodeSpacing"]
       15 JUMPIF                           R4 ; [+3]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K7 ["NODE_VERTICAL_SPACING"]
       19 SETTABLEKS                       R4 R3 K1 ["nodeSpacing"]
       21 GETTABLEKS                       R4 R2 K2 ["defaultNodeSize"]
       23 JUMPIF                           R4 ; [+3]
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R4 R4 K8 ["DEFAULT_NODE_SIZE"]
       27 SETTABLEKS                       R4 R3 K2 ["defaultNodeSize"]
       29 GETTABLEKS                       R4 R2 K3 ["origin"]
       31 JUMPIF                           R4 ; [+4]
       32 GETUPVAL                         R4 1
       33 GETTABLEKS                       R5 R1 K9 ["positions"]
       35 CALL                             R4 1 1
       36 SETTABLEKS                       R4 R3 K3 ["origin"]
       38 GETTABLEKS                       R4 R2 K4 ["iterations"]
       40 JUMPIF                           R4 ; [+3]
       41 GETUPVAL                         R4 0
       42 GETTABLEKS                       R4 R4 K10 ["DEFAULT_ITERATIONS"]
       44 SETTABLEKS                       R4 R3 K4 ["iterations"]
       46 RETURN                           R3 1

PROTO_2:
        0 GETTABLEKS                       R4 R0 K0 ["sizes"]
        2 JUMPIFNOT                        R4 ; [+4]
        3 GETTABLEKS                       R4 R0 K0 ["sizes"]
        5 GETTABLE                         R3 R4 R2
        6 JUMP                             ; [+1]
        7 LOADNIL                          R3
        8 JUMPIFEQKNIL                     R3 ; [+12]
       10 GETTABLEKS                       R4 R3 K1 ["X"]
       12 LOADN                            R5 0
       13 JUMPIFNOTLT                      R5 R4 ; [+7]
       15 GETTABLEKS                       R4 R3 K2 ["Y"]
       17 LOADN                            R5 0
       18 JUMPIFNOTLT                      R5 R4 ; [+2]
       20 RETURN                           R3 1
       21 GETTABLEKS                       R4 R1 K3 ["defaultNodeSize"]
       23 RETURN                           R4 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFEQ                         R1 R0 ; [+10]
        4 GETUPVAL                         R1 0
        5 GETUPVAL                         R3 0
        6 GETUPVAL                         R5 0
        7 GETTABLE                         R4 R5 R0
        8 GETTABLE                         R2 R3 R4
        9 SETTABLE                         R2 R1 R0
       10 GETUPVAL                         R1 0
       11 GETTABLE                         R0 R1 R0
       12 JUMPBACK                         ; [-13]
       13 RETURN                           R0 1

PROTO_4:
        0 MOVE                             R4 R0
        1 GETUPVAL                         R6 0
        2 GETTABLE                         R5 R6 R4
        3 JUMPIFEQ                         R5 R4 ; [+10]
        5 GETUPVAL                         R5 0
        6 GETUPVAL                         R7 0
        7 GETUPVAL                         R9 0
        8 GETTABLE                         R8 R9 R4
        9 GETTABLE                         R6 R7 R8
       10 SETTABLE                         R6 R5 R4
       11 GETUPVAL                         R5 0
       12 GETTABLE                         R4 R5 R4
       13 JUMPBACK                         ; [-13]
       14 MOVE                             R2 R4
       15 MOVE                             R4 R1
       16 GETUPVAL                         R6 0
       17 GETTABLE                         R5 R6 R4
       18 JUMPIFEQ                         R5 R4 ; [+10]
       20 GETUPVAL                         R5 0
       21 GETUPVAL                         R7 0
       22 GETUPVAL                         R9 0
       23 GETTABLE                         R8 R9 R4
       24 GETTABLE                         R6 R7 R8
       25 SETTABLE                         R6 R5 R4
       26 GETUPVAL                         R5 0
       27 GETTABLE                         R4 R5 R4
       28 JUMPBACK                         ; [-13]
       29 MOVE                             R3 R4
       30 JUMPIFEQ                         R2 R3 ; [+8]
       32 JUMPIFNOTLT                      R2 R3 ; [+4]
       34 GETUPVAL                         R4 0
       35 SETTABLE                         R2 R4 R3
       36 RETURN                           R0 0
       37 GETUPVAL                         R4 0
       38 SETTABLE                         R3 R4 R2
       39 RETURN                           R0 0

PROTO_5:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 RETURN                           R0 0
        3 GETTABLEKS                       R2 R0 K0 ["outputNodeId"]
        5 JUMPIFEQ                         R2 R1 ; [+44]
        7 GETUPVAL                         R4 0
        8 GETTABLE                         R3 R4 R2
        9 JUMPIFEQKNIL                     R3 ; [+40]
       11 MOVE                             R5 R1
       12 GETUPVAL                         R7 1
       13 GETTABLE                         R6 R7 R5
       14 JUMPIFEQ                         R6 R5 ; [+10]
       16 GETUPVAL                         R6 1
       17 GETUPVAL                         R8 1
       18 GETUPVAL                         R10 1
       19 GETTABLE                         R9 R10 R5
       20 GETTABLE                         R7 R8 R9
       21 SETTABLE                         R7 R6 R5
       22 GETUPVAL                         R6 1
       23 GETTABLE                         R5 R6 R5
       24 JUMPBACK                         ; [-13]
       25 MOVE                             R3 R5
       26 MOVE                             R5 R2
       27 GETUPVAL                         R7 1
       28 GETTABLE                         R6 R7 R5
       29 JUMPIFEQ                         R6 R5 ; [+10]
       31 GETUPVAL                         R6 1
       32 GETUPVAL                         R8 1
       33 GETUPVAL                         R10 1
       34 GETTABLE                         R9 R10 R5
       35 GETTABLE                         R7 R8 R9
       36 SETTABLE                         R7 R6 R5
       37 GETUPVAL                         R6 1
       38 GETTABLE                         R5 R6 R5
       39 JUMPBACK                         ; [-13]
       40 MOVE                             R4 R5
       41 JUMPIFEQ                         R3 R4 ; [+8]
       43 JUMPIFNOTLT                      R3 R4 ; [+4]
       45 GETUPVAL                         R5 1
       46 SETTABLE                         R3 R5 R4
       47 RETURN                           R0 0
       48 GETUPVAL                         R5 1
       49 SETTABLE                         R4 R5 R3
       50 RETURN                           R0 0

PROTO_6:
        0 GETTABLEN                        R3 R0 1
        1 GETTABLEN                        R4 R1 1
        2 JUMPIFLT                         R3 R4 ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 RETURN                           R2 1

PROTO_7:
        0 NEWTABLE                         R1 0 0
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R1
        4 NEWCLOSURE                       R3 P1
        5 CAPTURE                          VAL R1
        6 NEWTABLE                         R4 0 0
        8 MOVE                             R5 R0
        9 LOADNIL                          R6
       10 LOADNIL                          R7
       11 FORGPREP                         R5
       12 SETTABLE                         R8 R1 R8
       13 FASTCALL2                        TABLE_INSERT R4 R8 ; [+5]
       15 MOVE                             R11 R4
       16 MOVE                             R12 R8
       17 GETIMPORT                        R10 K2 [table.insert]
       19 CALL                             R10 2 0
       20 FORGLOOP                         R5 1 ; [-9]
       22 GETIMPORT                        R5 K4 [table.sort]
       24 MOVE                             R6 R4
       25 CALL                             R5 1 0
       26 NEWCLOSURE                       R5 P2
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R1
       29 MOVE                             R6 R4
       30 LOADNIL                          R7
       31 LOADNIL                          R8
       32 FORGPREP                         R6
       33 GETTABLE                         R11 R0 R10
       34 GETTABLEKS                       R12 R11 K5 ["inputPinToConnectionMap"]
       36 LOADNIL                          R13
       37 LOADNIL                          R14
       38 FORGPREP                         R12
       39 JUMPIFNOTEQKNIL                  R16 ; [+2]
       41 JUMP                             ; [+34]
       42 GETTABLEKS                       R17 R16 K6 ["outputNodeId"]
       44 JUMPIFEQ                         R17 R10 ; [+31]
       46 GETTABLE                         R18 R0 R17
       47 JUMPIFEQKNIL                     R18 ; [+28]
       49 MOVE                             R20 R10
       50 GETTABLE                         R21 R1 R20
       51 JUMPIFEQ                         R21 R20 ; [+6]
       53 GETTABLE                         R22 R1 R20
       54 GETTABLE                         R21 R1 R22
       55 SETTABLE                         R21 R1 R20
       56 GETTABLE                         R20 R1 R20
       57 JUMPBACK                         ; [-8]
       58 MOVE                             R18 R20
       59 MOVE                             R20 R17
       60 GETTABLE                         R21 R1 R20
       61 JUMPIFEQ                         R21 R20 ; [+6]
       63 GETTABLE                         R22 R1 R20
       64 GETTABLE                         R21 R1 R22
       65 SETTABLE                         R21 R1 R20
       66 GETTABLE                         R20 R1 R20
       67 JUMPBACK                         ; [-8]
       68 MOVE                             R19 R20
       69 JUMPIFEQ                         R18 R19 ; [+6]
       71 JUMPIFNOTLT                      R18 R19 ; [+3]
       73 SETTABLE                         R18 R1 R19
       74 JUMP                             ; [+1]
       75 SETTABLE                         R19 R1 R18
       76 FORGLOOP                         R12 2 ; [-38]
       78 GETTABLEKS                       R12 R11 K7 ["inputLabelPinToConnectionMap"]
       80 LOADNIL                          R13
       81 LOADNIL                          R14
       82 FORGPREP                         R12
       83 MOVE                             R17 R16
       84 LOADNIL                          R18
       85 LOADNIL                          R19
       86 FORGPREP                         R17
       87 JUMPIFNOTEQKNIL                  R21 ; [+2]
       89 JUMP                             ; [+34]
       90 GETTABLEKS                       R22 R21 K6 ["outputNodeId"]
       92 JUMPIFEQ                         R22 R10 ; [+31]
       94 GETTABLE                         R23 R0 R22
       95 JUMPIFEQKNIL                     R23 ; [+28]
       97 MOVE                             R25 R10
       98 GETTABLE                         R26 R1 R25
       99 JUMPIFEQ                         R26 R25 ; [+6]
      101 GETTABLE                         R27 R1 R25
      102 GETTABLE                         R26 R1 R27
      103 SETTABLE                         R26 R1 R25
      104 GETTABLE                         R25 R1 R25
      105 JUMPBACK                         ; [-8]
      106 MOVE                             R23 R25
      107 MOVE                             R25 R22
      108 GETTABLE                         R26 R1 R25
      109 JUMPIFEQ                         R26 R25 ; [+6]
      111 GETTABLE                         R27 R1 R25
      112 GETTABLE                         R26 R1 R27
      113 SETTABLE                         R26 R1 R25
      114 GETTABLE                         R25 R1 R25
      115 JUMPBACK                         ; [-8]
      116 MOVE                             R24 R25
      117 JUMPIFEQ                         R23 R24 ; [+6]
      119 JUMPIFNOTLT                      R23 R24 ; [+3]
      121 SETTABLE                         R23 R1 R24
      122 JUMP                             ; [+1]
      123 SETTABLE                         R24 R1 R23
      124 FORGLOOP                         R17 2 ; [-38]
      126 FORGLOOP                         R12 2 ; [-44]
      128 FORGLOOP                         R6 2 ; [-96]
      130 NEWTABLE                         R6 0 0
      132 MOVE                             R7 R4
      133 LOADNIL                          R8
      134 LOADNIL                          R9
      135 FORGPREP                         R7
      136 MOVE                             R13 R11
      137 GETTABLE                         R14 R1 R13
      138 JUMPIFEQ                         R14 R13 ; [+6]
      140 GETTABLE                         R15 R1 R13
      141 GETTABLE                         R14 R1 R15
      142 SETTABLE                         R14 R1 R13
      143 GETTABLE                         R13 R1 R13
      144 JUMPBACK                         ; [-8]
      145 MOVE                             R12 R13
      146 GETTABLE                         R13 R6 R12
      147 JUMPIFNOTEQKNIL                  R13 ; [+4]
      149 NEWTABLE                         R13 0 0
      151 SETTABLE                         R13 R6 R12
      152 FASTCALL2                        TABLE_INSERT R13 R11 ; [+5]
      154 MOVE                             R15 R13
      155 MOVE                             R16 R11
      156 GETIMPORT                        R14 K2 [table.insert]
      158 CALL                             R14 2 0
      159 FORGLOOP                         R7 2 ; [-24]
      161 NEWTABLE                         R7 0 0
      163 MOVE                             R8 R6
      164 LOADNIL                          R9
      165 LOADNIL                          R10
      166 FORGPREP                         R8
      167 FASTCALL2                        TABLE_INSERT R7 R12 ; [+5]
      169 MOVE                             R14 R7
      170 MOVE                             R15 R12
      171 GETIMPORT                        R13 K2 [table.insert]
      173 CALL                             R13 2 0
      174 FORGLOOP                         R8 2 ; [-8]
      176 GETIMPORT                        R8 K4 [table.sort]
      178 MOVE                             R9 R7
      179 DUPCLOSURE                       R10 K8 [PROTO_6]
      180 CALL                             R8 2 0
      181 RETURN                           R7 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["payloads"]
        3 GETTABLEKS                       R4 R0 K1 ["pinOffsets"]
        5 CALL                             R2 2 1
        6 GETUPVAL                         R3 1
        7 MOVE                             R4 R2
        8 CALL                             R3 1 1
        9 GETTABLEKS                       R3 R3 K2 ["graph"]
       11 GETUPVAL                         R4 2
       12 MOVE                             R5 R3
       13 CALL                             R4 1 1
       14 GETUPVAL                         R5 3
       15 MOVE                             R6 R3
       16 MOVE                             R7 R4
       17 GETTABLEKS                       R8 R0 K3 ["sizes"]
       19 MOVE                             R9 R1
       20 CALL                             R5 4 1
       21 GETUPVAL                         R6 4
       22 MOVE                             R7 R5
       23 MOVE                             R8 R1
       24 GETTABLEKS                       R9 R0 K4 ["positions"]
       26 CALL                             R6 3 1
       27 GETUPVAL                         R7 5
       28 MOVE                             R8 R5
       29 GETTABLEKS                       R9 R6 K5 ["order"]
       31 MOVE                             R10 R1
       32 CALL                             R7 3 -1
       33 RETURN                           R7 -1

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["sizes"]
        2 GETTABLEKS                       R3 R0 K1 ["positions"]
        4 GETTABLEKS                       R4 R0 K2 ["pinOffsets"]
        6 NEWTABLE                         R5 0 0
        8 JUMPIFNOT                        R2 ; [+3]
        9 NEWTABLE                         R6 0 0
       11 JUMP                             ; [+1]
       12 LOADNIL                          R6
       13 JUMPIFNOT                        R3 ; [+3]
       14 NEWTABLE                         R7 0 0
       16 JUMP                             ; [+1]
       17 LOADNIL                          R7
       18 JUMPIFNOT                        R4 ; [+3]
       19 NEWTABLE                         R8 0 0
       21 JUMP                             ; [+1]
       22 LOADNIL                          R8
       23 MOVE                             R9 R1
       24 LOADNIL                          R10
       25 LOADNIL                          R11
       26 FORGPREP                         R9
       27 GETTABLEKS                       R15 R0 K3 ["payloads"]
       29 GETTABLE                         R14 R15 R13
       30 SETTABLE                         R14 R5 R13
       31 JUMPIFNOT                        R6 ; [+3]
       32 JUMPIFNOT                        R2 ; [+2]
       33 GETTABLE                         R14 R2 R13
       34 SETTABLE                         R14 R6 R13
       35 JUMPIFNOT                        R7 ; [+3]
       36 JUMPIFNOT                        R3 ; [+2]
       37 GETTABLE                         R14 R3 R13
       38 SETTABLE                         R14 R7 R13
       39 JUMPIFNOT                        R8 ; [+3]
       40 JUMPIFNOT                        R4 ; [+2]
       41 GETTABLE                         R14 R4 R13
       42 SETTABLE                         R14 R8 R13
       43 FORGLOOP                         R9 2 ; [-17]
       45 DUPTABLE                         R9 K4 [{"payloads", "sizes", "positions", "pinOffsets"}]
       46 SETTABLEKS                       R5 R9 K3 ["payloads"]
       48 SETTABLEKS                       R6 R9 K0 ["sizes"]
       50 SETTABLEKS                       R7 R9 K1 ["positions"]
       52 SETTABLEKS                       R8 R9 K2 ["pinOffsets"]
       54 RETURN                           R9 1

PROTO_10:
        0 GETTABLEKS                       R3 R0 K0 ["positions"]
        2 LOADK                            R4 K1 [-∞]
        3 LOADK                            R5 K2 [∞]
        4 LOADK                            R6 K1 [-∞]
        5 LOADN                            R7 0
        6 LOADN                            R8 0
        7 LOADNIL                          R9
        8 MOVE                             R10 R2
        9 LOADNIL                          R11
       10 LOADNIL                          R12
       11 FORGPREP                         R10
       12 GETTABLEKS                       R17 R0 K3 ["sizes"]
       14 JUMPIFNOT                        R17 ; [+4]
       15 GETTABLEKS                       R17 R0 K3 ["sizes"]
       17 GETTABLE                         R16 R17 R13
       18 JUMP                             ; [+1]
       19 LOADNIL                          R16
       20 JUMPIFEQKNIL                     R16 ; [+13]
       22 GETTABLEKS                       R17 R16 K4 ["X"]
       24 LOADN                            R18 0
       25 JUMPIFNOTLT                      R18 R17 ; [+8]
       27 GETTABLEKS                       R17 R16 K5 ["Y"]
       29 LOADN                            R18 0
       30 JUMPIFNOTLT                      R18 R17 ; [+3]
       32 MOVE                             R15 R16
       33 JUMP                             ; [+2]
       34 GETTABLEKS                       R15 R1 K6 ["defaultNodeSize"]
       36 GETTABLEKS                       R18 R14 K5 ["Y"]
       38 FASTCALL2                        MATH_MAX R4 R18 ; [+4]
       40 MOVE                             R17 R4
       41 GETIMPORT                        R16 K9 [math.max]
       43 CALL                             R16 2 1
       44 MOVE                             R4 R16
       45 GETTABLEKS                       R19 R14 K5 ["Y"]
       47 GETTABLEKS                       R20 R15 K5 ["Y"]
       49 SUB                              R18 R19 R20
       50 FASTCALL2                        MATH_MIN R5 R18 ; [+4]
       52 MOVE                             R17 R5
       53 GETIMPORT                        R16 K11 [math.min]
       55 CALL                             R16 2 1
       56 MOVE                             R5 R16
       57 GETTABLEKS                       R18 R14 K4 ["X"]
       59 FASTCALL2                        MATH_MAX R6 R18 ; [+4]
       61 MOVE                             R17 R6
       62 GETIMPORT                        R16 K9 [math.max]
       64 CALL                             R16 2 1
       65 MOVE                             R6 R16
       66 JUMPIFNOT                        R3 ; [+6]
       67 GETTABLE                         R16 R3 R13
       68 JUMPIFNOT                        R16 ; [+4]
       69 GETTABLEKS                       R17 R16 K5 ["Y"]
       71 ADD                              R7 R7 R17
       72 ADDK                             R8 R8 K12 [1]
       73 JUMPIFEQKNIL                     R9 ; [+3]
       75 JUMPIFNOTLT                      R13 R9 ; [+2]
       77 MOVE                             R9 R13
       78 FORGLOOP                         R10 2 ; [-67]
       80 DUPTABLE                         R10 K18 [{"positions", "top", "bottom", "rootLeft", "orderY", "key"}]
       81 SETTABLEKS                       R2 R10 K0 ["positions"]
       83 SETTABLEKS                       R4 R10 K13 ["top"]
       85 SETTABLEKS                       R5 R10 K14 ["bottom"]
       87 SETTABLEKS                       R6 R10 K15 ["rootLeft"]
       89 LOADN                            R12 0
       90 JUMPIFNOTLT                      R12 R8 ; [+3]
       92 DIV                              R11 R7 R8
       93 JUMP                             ; [+1]
       94 LOADN                            R11 0
       95 SETTABLEKS                       R11 R10 K16 ["orderY"]
       97 SETTABLEKS                       R9 R10 K17 ["key"]
       99 RETURN                           R10 1

PROTO_11:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+8]
        2 GETUPVAL                         R4 0
        3 GETTABLE                         R3 R4 R0
        4 JUMPIFNOT                        R3 ; [+5]
        5 GETUPVAL                         R3 0
        6 GETTABLE                         R2 R3 R0
        7 GETTABLEKS                       R2 R2 K0 ["Y"]
        9 JUMP                             ; [+1]
       10 LOADN                            R2 0
       11 GETUPVAL                         R4 0
       12 JUMPIFNOT                        R4 ; [+8]
       13 GETUPVAL                         R5 0
       14 GETTABLE                         R4 R5 R1
       15 JUMPIFNOT                        R4 ; [+5]
       16 GETUPVAL                         R4 0
       17 GETTABLE                         R3 R4 R1
       18 GETTABLEKS                       R3 R3 K0 ["Y"]
       20 JUMP                             ; [+1]
       21 LOADN                            R3 0
       22 JUMPIFEQ                         R2 R3 ; [+6]
       24 JUMPIFLT                         R3 R2 ; [+2]
       26 LOADB                            R4 0 +1
       27 LOADB                            R4 1
       28 RETURN                           R4 1
       29 JUMPIFLT                         R0 R1 ; [+2]
       31 LOADB                            R4 0 +1
       32 LOADB                            R4 1
       33 RETURN                           R4 1

PROTO_12:
        0 GETTABLEKS                       R3 R0 K0 ["positions"]
        2 GETIMPORT                        R4 K3 [table.clone]
        4 MOVE                             R5 R2
        5 CALL                             R4 1 1
        6 GETIMPORT                        R5 K5 [table.sort]
        8 MOVE                             R6 R4
        9 NEWCLOSURE                       R7 P0
       10 CAPTURE                          VAL R3
       11 CALL                             R5 2 0
       12 LOADN                            R5 0
       13 LOADN                            R6 0
       14 MOVE                             R7 R4
       15 LOADNIL                          R8
       16 LOADNIL                          R9
       17 FORGPREP                         R7
       18 GETTABLEKS                       R14 R0 K6 ["sizes"]
       20 JUMPIFNOT                        R14 ; [+4]
       21 GETTABLEKS                       R14 R0 K6 ["sizes"]
       23 GETTABLE                         R13 R14 R11
       24 JUMP                             ; [+1]
       25 LOADNIL                          R13
       26 JUMPIFEQKNIL                     R13 ; [+13]
       28 GETTABLEKS                       R14 R13 K7 ["X"]
       30 LOADN                            R15 0
       31 JUMPIFNOTLT                      R15 R14 ; [+8]
       33 GETTABLEKS                       R14 R13 K8 ["Y"]
       35 LOADN                            R15 0
       36 JUMPIFNOTLT                      R15 R14 ; [+3]
       38 MOVE                             R12 R13
       39 JUMP                             ; [+2]
       40 GETTABLEKS                       R12 R1 K9 ["defaultNodeSize"]
       42 GETTABLEKS                       R15 R12 K7 ["X"]
       44 FASTCALL2                        MATH_MAX R5 R15 ; [+4]
       46 MOVE                             R14 R5
       47 GETIMPORT                        R13 K12 [math.max]
       49 CALL                             R13 2 1
       50 MOVE                             R5 R13
       51 GETTABLEKS                       R15 R12 K8 ["Y"]
       53 FASTCALL2                        MATH_MAX R6 R15 ; [+4]
       55 MOVE                             R14 R6
       56 GETIMPORT                        R13 K12 [math.max]
       58 CALL                             R13 2 1
       59 MOVE                             R6 R13
       60 FORGLOOP                         R7 2 ; [-43]
       62 LOADN                            R8 1
       63 LENGTH                           R11 R4
       64 FASTCALL1                        MATH_SQRT R11 ; [+2]
       65 GETIMPORT                        R10 K14 [math.sqrt]
       67 CALL                             R10 1 1
       68 FASTCALL1                        MATH_CEIL R10 ; [+2]
       69 GETIMPORT                        R9 K16 [math.ceil]
       71 CALL                             R9 1 1
       72 FASTCALL2                        MATH_MAX R8 R9 ; [+3]
       74 GETIMPORT                        R7 K12 [math.max]
       76 CALL                             R7 2 1
       77 GETTABLEKS                       R9 R1 K17 ["columnSpacing"]
       79 ADD                              R8 R5 R9
       80 GETTABLEKS                       R10 R1 K18 ["nodeSpacing"]
       82 ADD                              R9 R6 R10
       83 NEWTABLE                         R10 0 0
       85 MOVE                             R11 R4
       86 LOADNIL                          R12
       87 LOADNIL                          R13
       88 FORGPREP                         R11
       89 SUBK                             R16 R14 K19 [1]
       90 GETIMPORT                        R17 K22 [Vector2.new]
       92 MOD                              R19 R16 R7
       93 MUL                              R18 R19 R8
       94 IDIV                             R21 R16 R7
       95 MINUS                            R20 R21
       96 MUL                              R19 R20 R9
       97 CALL                             R17 2 1
       98 SETTABLE                         R17 R10 R15
       99 FORGLOOP                         R11 2 ; [-11]
      101 GETUPVAL                         R11 0
      102 MOVE                             R12 R0
      103 MOVE                             R13 R1
      104 MOVE                             R14 R10
      105 CALL                             R11 3 1
      106 RETURN                           R11 1

PROTO_13:
        0 GETTABLEKS                       R2 R0 K0 ["orderY"]
        2 GETTABLEKS                       R3 R1 K0 ["orderY"]
        4 JUMPIFEQ                         R2 R3 ; [+10]
        6 GETTABLEKS                       R3 R0 K0 ["orderY"]
        8 GETTABLEKS                       R4 R1 K0 ["orderY"]
       10 JUMPIFLT                         R4 R3 ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 RETURN                           R2 1
       15 GETTABLEKS                       R3 R0 K1 ["key"]
       17 GETTABLEKS                       R4 R1 K1 ["key"]
       19 JUMPIFLT                         R3 R4 ; [+2]
       21 LOADB                            R2 0 +1
       22 LOADB                            R2 1
       23 RETURN                           R2 1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 MOVE                             R4 R0
        3 CALL                             R2 2 1
        4 GETIMPORT                        R3 K1 [next]
        6 GETTABLEKS                       R4 R0 K2 ["payloads"]
        8 CALL                             R3 1 1
        9 JUMPIFNOTEQKNIL                  R3 ; [+4]
       11 NEWTABLE                         R3 0 0
       13 RETURN                           R3 1
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R4 R0 K2 ["payloads"]
       17 CALL                             R3 1 1
       18 LENGTH                           R4 R3
       19 JUMPIFNOTEQKN                    R4 K3 [1] ; [+6]
       21 GETUPVAL                         R4 2
       22 MOVE                             R5 R0
       23 MOVE                             R6 R2
       24 CALL                             R4 2 -1
       25 RETURN                           R4 -1
       26 GETIMPORT                        R4 K6 [table.clone]
       28 MOVE                             R5 R2
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K9 [Vector2.zero]
       32 SETTABLEKS                       R5 R4 K10 ["origin"]
       34 NEWTABLE                         R5 0 0
       36 NEWTABLE                         R6 0 0
       38 MOVE                             R7 R3
       39 LOADNIL                          R8
       40 LOADNIL                          R9
       41 FORGPREP                         R7
       42 LENGTH                           R12 R11
       43 JUMPIFNOTEQKN                    R12 K3 [1] ; [+9]
       45 GETTABLEN                        R14 R11 1
       46 FASTCALL2                        TABLE_INSERT R6 R14 ; [+4]
       48 MOVE                             R13 R6
       49 GETIMPORT                        R12 K12 [table.insert]
       51 CALL                             R12 2 0
       52 JUMP                             ; [+18]
       53 GETUPVAL                         R12 2
       54 GETUPVAL                         R13 3
       55 MOVE                             R14 R0
       56 MOVE                             R15 R11
       57 CALL                             R13 2 1
       58 MOVE                             R14 R4
       59 CALL                             R12 2 1
       60 GETUPVAL                         R15 4
       61 MOVE                             R16 R0
       62 MOVE                             R17 R4
       63 MOVE                             R18 R12
       64 CALL                             R15 3 1
       65 FASTCALL2                        TABLE_INSERT R5 R15 ; [+4]
       67 MOVE                             R14 R5
       68 GETIMPORT                        R13 K12 [table.insert]
       70 CALL                             R13 2 0
       71 FORGLOOP                         R7 2 ; [-30]
       73 LENGTH                           R7 R6
       74 LOADN                            R8 0
       75 JUMPIFNOTLT                      R8 R7 ; [+12]
       77 GETUPVAL                         R9 5
       78 MOVE                             R10 R0
       79 MOVE                             R11 R4
       80 MOVE                             R12 R6
       81 CALL                             R9 3 1
       82 FASTCALL2                        TABLE_INSERT R5 R9 ; [+4]
       84 MOVE                             R8 R5
       85 GETIMPORT                        R7 K12 [table.insert]
       87 CALL                             R7 2 0
       88 GETIMPORT                        R7 K14 [table.sort]
       90 MOVE                             R8 R5
       91 DUPCLOSURE                       R9 K15 [PROTO_13]
       92 CALL                             R7 2 0
       93 NEWTABLE                         R7 0 0
       95 LOADN                            R8 0
       96 MOVE                             R9 R5
       97 LOADNIL                          R10
       98 LOADNIL                          R11
       99 FORGPREP                         R9
      100 GETIMPORT                        R14 K17 [Vector2.new]
      102 GETTABLEKS                       R16 R13 K18 ["rootLeft"]
      104 MINUS                            R15 R16
      105 GETTABLEKS                       R17 R13 K19 ["top"]
      107 SUB                              R16 R8 R17
      108 CALL                             R14 2 1
      109 GETTABLEKS                       R15 R13 K20 ["positions"]
      111 LOADNIL                          R16
      112 LOADNIL                          R17
      113 FORGPREP                         R15
      114 ADD                              R20 R19 R14
      115 SETTABLE                         R20 R7 R18
      116 FORGLOOP                         R15 2 ; [-3]
      118 GETTABLEKS                       R17 R13 K19 ["top"]
      120 GETTABLEKS                       R18 R13 K21 ["bottom"]
      122 SUB                              R16 R17 R18
      123 GETUPVAL                         R17 6
      124 GETTABLEKS                       R17 R17 K22 ["COMPONENT_VERTICAL_SPACING"]
      126 ADD                              R15 R16 R17
      127 SUB                              R8 R8 R15
      128 FORGLOOP                         R9 2 ; [-29]
      130 LOADK                            R9 K23 [∞]
      131 LOADK                            R10 K23 [∞]
      132 MOVE                             R11 R7
      133 LOADNIL                          R12
      134 LOADNIL                          R13
      135 FORGPREP                         R11
      136 GETTABLEKS                       R18 R15 K24 ["X"]
      138 FASTCALL2                        MATH_MIN R9 R18 ; [+4]
      140 MOVE                             R17 R9
      141 GETIMPORT                        R16 K27 [math.min]
      143 CALL                             R16 2 1
      144 MOVE                             R9 R16
      145 GETTABLEKS                       R18 R15 K28 ["Y"]
      147 FASTCALL2                        MATH_MIN R10 R18 ; [+4]
      149 MOVE                             R17 R10
      150 GETIMPORT                        R16 K27 [math.min]
      152 CALL                             R16 2 1
      153 MOVE                             R10 R16
      154 FORGLOOP                         R11 2 ; [-19]
      156 GETTABLEKS                       R12 R2 K10 ["origin"]
      158 JUMPIF                           R12 ; [+2]
      159 GETIMPORT                        R12 K9 [Vector2.zero]
      161 GETIMPORT                        R13 K17 [Vector2.new]
      163 MOVE                             R14 R9
      164 MOVE                             R15 R10
      165 CALL                             R13 2 1
      166 SUB                              R11 R12 R13
      167 NEWTABLE                         R12 0 0
      169 MOVE                             R13 R7
      170 LOADNIL                          R14
      171 LOADNIL                          R15
      172 FORGPREP                         R13
      173 ADD                              R18 R17 R11
      174 SETTABLE                         R18 R12 R16
      175 FORGLOOP                         R13 2 ; [-3]
      177 RETURN                           R12 1

PROTO_15:
        0 GETTABLEKS                       R2 R0 K0 ["nodePayloadDispatcher"]
        2 GETTABLEKS                       R2 R2 K1 ["getMap"]
        4 CALL                             R2 0 1
        5 GETTABLEKS                       R3 R0 K2 ["nodeRenderInfoDispatcher"]
        7 GETTABLEKS                       R3 R3 K1 ["getMap"]
        9 CALL                             R3 0 1
       10 NEWTABLE                         R4 0 0
       12 NEWTABLE                         R5 0 0
       14 MOVE                             R6 R3
       15 LOADNIL                          R7
       16 LOADNIL                          R8
       17 FORGPREP                         R6
       18 GETTABLEKS                       R11 R10 K3 ["size"]
       20 SETTABLE                         R11 R4 R9
       21 GETTABLEKS                       R11 R10 K4 ["position"]
       23 SETTABLE                         R11 R5 R9
       24 FORGLOOP                         R6 2 ; [-7]
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R6 R6 K5 ["computeLayout"]
       29 DUPTABLE                         R7 K9 [{"payloads", "sizes", "positions"}]
       30 SETTABLEKS                       R2 R7 K6 ["payloads"]
       32 SETTABLEKS                       R4 R7 K7 ["sizes"]
       34 SETTABLEKS                       R5 R7 K8 ["positions"]
       36 MOVE                             R8 R1
       37 CALL                             R6 2 1
       38 NEWTABLE                         R7 0 0
       40 MOVE                             R8 R6
       41 LOADNIL                          R9
       42 LOADNIL                          R10
       43 FORGPREP                         R8
       44 GETTABLE                         R13 R3 R11
       45 JUMPIFEQKNIL                     R13 ; [+2]
       47 SETTABLE                         R12 R7 R11
       48 FORGLOOP                         R8 2 ; [-5]
       50 GETTABLEKS                       R8 R0 K10 ["setNodePositions"]
       52 MOVE                             R9 R7
       53 CALL                             R8 1 0
       54 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["GraphContext"]
       13 GETTABLEKS                       R2 R2 K8 ["GraphContextTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["NodeViewTypes"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETIMPORT                        R4 K1 [script]
       25 GETTABLEKS                       R4 R4 K10 ["Constants"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETIMPORT                        R5 K1 [script]
       32 GETTABLEKS                       R5 R5 K11 ["Types"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETIMPORT                        R6 K1 [script]
       39 GETTABLEKS                       R6 R6 K12 ["assignCoordinates"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETIMPORT                        R7 K1 [script]
       46 GETTABLEKS                       R7 R7 K13 ["assignLayers"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETIMPORT                        R8 K1 [script]
       53 GETTABLEKS                       R8 R8 K14 ["breakCycles"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETIMPORT                        R9 K1 [script]
       60 GETTABLEKS                       R9 R9 K15 ["buildGraph"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETIMPORT                        R10 K1 [script]
       67 GETTABLEKS                       R10 R10 K16 ["insertDummyNodes"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETIMPORT                        R11 K1 [script]
       74 GETTABLEKS                       R11 R11 K17 ["orderWithinLayers"]
       76 CALL                             R10 1 1
       77 NEWTABLE                         R11 2 0
       79 DUPCLOSURE                       R12 K18 [PROTO_0]
       80 DUPCLOSURE                       R13 K19 [PROTO_1]
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R12
       83 DUPCLOSURE                       R14 K20 [PROTO_2]
       84 DUPCLOSURE                       R15 K21 [PROTO_7]
       85 DUPCLOSURE                       R16 K22 [PROTO_8]
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R6
       89 CAPTURE                          VAL R9
       90 CAPTURE                          VAL R10
       91 CAPTURE                          VAL R5
       92 DUPCLOSURE                       R17 K23 [PROTO_9]
       93 DUPCLOSURE                       R18 K24 [PROTO_10]
       94 DUPCLOSURE                       R19 K25 [PROTO_12]
       95 CAPTURE                          VAL R18
       96 DUPCLOSURE                       R20 K26 [PROTO_14]
       97 CAPTURE                          VAL R13
       98 CAPTURE                          VAL R15
       99 CAPTURE                          VAL R16
      100 CAPTURE                          VAL R17
      101 CAPTURE                          VAL R18
      102 CAPTURE                          VAL R19
      103 CAPTURE                          VAL R3
      104 SETTABLEKS                       R20 R11 K27 ["computeLayout"]
      106 DUPCLOSURE                       R20 K28 [PROTO_15]
      107 CAPTURE                          VAL R11
      108 SETTABLEKS                       R20 R11 K29 ["apply"]
      110 RETURN                           R11 1
