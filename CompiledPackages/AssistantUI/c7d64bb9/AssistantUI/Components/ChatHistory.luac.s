PROTO_0:
        0 LOADN                            R2 0
        1 GETTABLEKS                       R4 R0 K0 ["AbsoluteCanvasSize"]
        3 GETTABLEKS                       R4 R4 K1 ["Y"]
        5 GETTABLEKS                       R5 R0 K2 ["AbsoluteSize"]
        7 GETTABLEKS                       R5 R5 K1 ["Y"]
        9 SUB                              R3 R4 R5
       10 FASTCALL2                        MATH_MAX R2 R3 ; [+3]
       12 GETIMPORT                        R1 K5 [math.max]
       14 CALL                             R1 2 1
       15 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [Vector2.new]
        2 LOADN                            R2 0
        3 LOADN                            R4 0
        4 GETTABLEKS                       R6 R0 K3 ["AbsoluteCanvasSize"]
        6 GETTABLEKS                       R6 R6 K4 ["Y"]
        8 GETTABLEKS                       R7 R0 K5 ["AbsoluteSize"]
       10 GETTABLEKS                       R7 R7 K4 ["Y"]
       12 SUB                              R5 R6 R7
       13 FASTCALL2                        MATH_MAX R4 R5 ; [+3]
       15 GETIMPORT                        R3 K8 [math.max]
       17 CALL                             R3 2 1
       18 CALL                             R1 2 1
       19 SETTABLEKS                       R1 R0 K9 ["CanvasPosition"]
       21 RETURN                           R0 0

PROTO_2:
        0 LOADNIL                          R2
        1 GETUPVAL                         R3 0
        2 CALL                             R3 0 1
        3 JUMPIFNOT                        R3 ; [+7]
        4 MOVE                             R3 R1
        5 JUMPIFNOT                        R3 ; [+3]
        6 GETTABLEKS                       R4 R0 K0 ["threads"]
        8 GETTABLE                         R3 R4 R1
        9 MOVE                             R2 R3
       10 JUMP                             ; [+4]
       11 MOVE                             R3 R1
       12 JUMPIFNOT                        R3 ; [+1]
       13 GETTABLE                         R3 R0 R1
       14 MOVE                             R2 R3
       15 JUMPIF                           R2 ; [+2]
       16 LOADNIL                          R3
       17 RETURN                           R3 1
       18 GETTABLEKS                       R3 R2 K1 ["messages"]
       20 RETURN                           R3 1

PROTO_3:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 MOVE                             R3 R0
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 FORGPREP                         R3
        9 GETTABLEKS                       R8 R7 K0 ["isDeleted"]
       11 JUMPIF                           R8 ; [+20]
       12 GETTABLEKS                       R8 R7 K1 ["role"]
       14 JUMPIFNOTEQKS                    R8 K2 ["assistant"] ; [+9]
       16 JUMPIFNOT                        R1 ; [+6]
       17 GETTABLEKS                       R8 R7 K3 ["LayoutOrder"]
       19 GETTABLEKS                       R9 R1 K3 ["LayoutOrder"]
       21 JUMPIFNOTLT                      R9 R8 ; [+2]
       23 MOVE                             R1 R7
       24 JUMPIFNOT                        R2 ; [+6]
       25 GETTABLEKS                       R8 R7 K3 ["LayoutOrder"]
       27 GETTABLEKS                       R9 R2 K3 ["LayoutOrder"]
       29 JUMPIFNOTLT                      R9 R8 ; [+2]
       31 MOVE                             R2 R7
       32 FORGLOOP                         R3 2 ; [-24]
       34 JUMPIFNOT                        R1 ; [+10]
       35 JUMPIFNOT                        R2 ; [+9]
       36 GETTABLEKS                       R3 R1 K4 ["messageId"]
       38 GETTABLEKS                       R4 R2 K4 ["messageId"]
       40 JUMPIFNOTEQ                      R3 R4 ; [+4]
       42 GETTABLEKS                       R3 R1 K4 ["messageId"]
       44 RETURN                           R3 1
       45 LOADNIL                          R3
       46 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 JUMPIFEQ                         R0 R1 ; [+7]
        6 GETUPVAL                         R0 0
        7 GETUPVAL                         R1 1
        8 SETTABLEKS                       R1 R0 K0 ["current"]
       10 GETUPVAL                         R0 2
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R0 K1 [{"MessagesLoadError"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K2 ["ChatHistory"]
        3 LOADK                            R4 K0 ["MessagesLoadError"]
        4 NAMECALL                         R1 R1 K3 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["MessagesLoadError"]
        9 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+20]
        4 GETTABLEKS                       R1 R0 K1 ["Parent"]
        6 JUMPIFNOT                        R1 ; [+17]
        7 LOADK                            R4 K2 ["ScrollingFrame"]
        8 NAMECALL                         R2 R1 K3 ["IsA"]
       10 CALL                             R2 2 1
       11 JUMPIFNOT                        R2 ; [+12]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R4 R0 K4 ["AbsolutePosition"]
       15 GETTABLEKS                       R4 R4 K5 ["Y"]
       17 GETTABLEKS                       R5 R1 K4 ["AbsolutePosition"]
       19 GETTABLEKS                       R5 R5 K5 ["Y"]
       21 SUB                              R3 R4 R5
       22 SETTABLEKS                       R3 R2 K0 ["current"]
       24 GETUPVAL                         R1 2
       25 GETUPVAL                         R2 3
       26 GETTABLEKS                       R2 R2 K0 ["current"]
       28 CALL                             R1 1 0
       29 GETUPVAL                         R1 4
       30 GETTABLEKS                       R1 R1 K6 ["loadOlderMessages"]
       32 GETUPVAL                         R2 5
       33 GETUPVAL                         R3 6
       34 CALL                             R1 2 0
       35 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["AbsolutePosition"]
        3 GETTABLEKS                       R1 R1 K1 ["Y"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K0 ["AbsolutePosition"]
        8 GETTABLEKS                       R2 R2 K1 ["Y"]
       10 SUB                              R0 R1 R2
       11 GETUPVAL                         R2 2
       12 SUB                              R1 R0 R2
       13 SETUPVAL                         R0 2
       14 LOADN                            R2 0
       15 JUMPIFNOTLT                      R2 R1 ; [+12]
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R3 R2 K2 ["CanvasPosition"]
       20 GETIMPORT                        R4 K5 [Vector2.new]
       22 LOADN                            R5 0
       23 MOVE                             R6 R1
       24 CALL                             R4 2 1
       25 ADD                              R3 R3 R4
       26 SETTABLEKS                       R3 R2 K2 ["CanvasPosition"]
       28 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 LOADNIL                          R1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Connected"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 NAMECALL                         R0 R0 K1 ["Disconnect"]
        7 CALL                             R0 1 0
        8 GETIMPORT                        R0 K4 [coroutine.status]
       10 GETUPVAL                         R1 1
       11 CALL                             R0 1 1
       12 JUMPIFEQKS                       R0 K5 ["dead"] ; [+5]
       14 GETIMPORT                        R0 K8 [task.cancel]
       16 GETUPVAL                         R1 1
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["PersistenceLoadStates"]
        4 GETTABLEKS                       R1 R1 K1 ["Loaded"]
        6 JUMPIFEQ                         R0 R1 ; [+2]
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 2
       10 GETTABLEKS                       R0 R0 K2 ["current"]
       12 JUMPIF                           R0 ; [+1]
       13 RETURN                           R0 0
       14 GETUPVAL                         R1 2
       15 LOADNIL                          R2
       16 SETTABLEKS                       R2 R1 K2 ["current"]
       18 GETUPVAL                         R1 3
       19 GETTABLEKS                       R1 R1 K2 ["current"]
       21 JUMPIF                           R1 ; [+4]
       22 GETUPVAL                         R2 4
       23 LOADNIL                          R3
       24 CALL                             R2 1 0
       25 RETURN                           R0 0
       26 GETTABLEKS                       R2 R1 K3 ["Parent"]
       28 JUMPIFNOT                        R2 ; [+5]
       29 LOADK                            R5 K4 ["ScrollingFrame"]
       30 NAMECALL                         R3 R2 K5 ["IsA"]
       32 CALL                             R3 2 1
       33 JUMPIF                           R3 ; [+4]
       34 GETUPVAL                         R3 4
       35 LOADNIL                          R4
       36 CALL                             R3 1 0
       37 RETURN                           R0 0
       38 GETTABLEKS                       R4 R1 K6 ["AbsolutePosition"]
       40 GETTABLEKS                       R4 R4 K7 ["Y"]
       42 GETTABLEKS                       R5 R2 K6 ["AbsolutePosition"]
       44 GETTABLEKS                       R5 R5 K7 ["Y"]
       46 SUB                              R3 R4 R5
       47 GETTABLEKS                       R4 R2 K8 ["CanvasPosition"]
       49 GETIMPORT                        R5 K11 [Vector2.new]
       51 LOADN                            R6 0
       52 SUB                              R7 R3 R0
       53 CALL                             R5 2 1
       54 ADD                              R4 R4 R5
       55 SETTABLEKS                       R4 R2 K8 ["CanvasPosition"]
       57 MOVE                             R4 R0
       58 LOADK                            R7 K6 ["AbsolutePosition"]
       59 NAMECALL                         R5 R1 K12 ["GetPropertyChangedSignal"]
       61 CALL                             R5 2 1
       62 NEWCLOSURE                       R7 P0
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R2
       65 CAPTURE                          REF R4
       66 NAMECALL                         R5 R5 K13 ["Connect"]
       68 CALL                             R5 2 1
       69 GETIMPORT                        R6 K16 [task.delay]
       71 LOADK                            R7 K17 [0.1]
       72 NEWCLOSURE                       R8 P1
       73 CAPTURE                          VAL R5
       74 CAPTURE                          UPVAL U4
       75 CALL                             R6 2 1
       76 NEWCLOSURE                       R7 P2
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R6
       79 CLOSEUPVALS                      R4
       80 RETURN                           R7 1

PROTO_12:
        0 LOADN                            R2 0
        1 GETTABLEKS                       R4 R0 K0 ["AbsoluteCanvasSize"]
        3 GETTABLEKS                       R4 R4 K1 ["Y"]
        5 GETTABLEKS                       R5 R0 K2 ["AbsoluteSize"]
        7 GETTABLEKS                       R5 R5 K1 ["Y"]
        9 SUB                              R3 R4 R5
       10 FASTCALL2                        MATH_MAX R2 R3 ; [+3]
       12 GETIMPORT                        R1 K5 [math.max]
       14 CALL                             R1 2 1
       15 GETTABLEKS                       R2 R0 K6 ["CanvasPosition"]
       17 GETTABLEKS                       R2 R2 K1 ["Y"]
       19 SUB                              R5 R2 R1
       20 FASTCALL1                        MATH_ABS R5 ; [+2]
       21 GETIMPORT                        R4 K8 [math.abs]
       23 CALL                             R4 1 1
       24 LOADN                            R5 1
       25 JUMPIFLE                         R4 R5 ; [+2]
       27 LOADB                            R3 0 +1
       28 LOADB                            R3 1
       29 GETUPVAL                         R4 0
       30 SETTABLEKS                       R3 R4 K9 ["current"]
       32 GETUPVAL                         R4 1
       33 GETTABLEKS                       R4 R4 K10 ["onCanvasPositionChanged"]
       35 MOVE                             R5 R0
       36 CALL                             R4 1 0
       37 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+21]
        4 GETIMPORT                        R1 K3 [Vector2.new]
        6 LOADN                            R2 0
        7 LOADN                            R4 0
        8 GETTABLEKS                       R6 R0 K4 ["AbsoluteCanvasSize"]
       10 GETTABLEKS                       R6 R6 K5 ["Y"]
       12 GETTABLEKS                       R7 R0 K6 ["AbsoluteSize"]
       14 GETTABLEKS                       R7 R7 K5 ["Y"]
       16 SUB                              R5 R6 R7
       17 FASTCALL2                        MATH_MAX R4 R5 ; [+3]
       19 GETIMPORT                        R3 K9 [math.max]
       21 CALL                             R3 2 1
       22 CALL                             R1 2 1
       23 SETTABLEKS                       R1 R0 K10 ["CanvasPosition"]
       25 GETUPVAL                         R1 1
       26 GETTABLEKS                       R1 R1 K11 ["onCanvasPositionChanged"]
       28 MOVE                             R2 R0
       29 CALL                             R1 1 0
       30 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+21]
        4 GETIMPORT                        R1 K3 [Vector2.new]
        6 LOADN                            R2 0
        7 LOADN                            R4 0
        8 GETTABLEKS                       R6 R0 K4 ["AbsoluteCanvasSize"]
       10 GETTABLEKS                       R6 R6 K5 ["Y"]
       12 GETTABLEKS                       R7 R0 K6 ["AbsoluteSize"]
       14 GETTABLEKS                       R7 R7 K5 ["Y"]
       16 SUB                              R5 R6 R7
       17 FASTCALL2                        MATH_MAX R4 R5 ; [+3]
       19 GETIMPORT                        R3 K9 [math.max]
       21 CALL                             R3 2 1
       22 CALL                             R1 2 1
       23 SETTABLEKS                       R1 R0 K10 ["CanvasPosition"]
       25 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 0
        4 DUPTABLE                         R1 K1 [{"scrollToBottom"}]
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U1
        7 SETTABLEKS                       R2 R1 K0 ["scrollToBottom"]
        9 SETTABLEKS                       R1 R0 K2 ["current"]
       11 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useContext"]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K1 ["Context"]
        8 CALL                             R2 1 1
        9 GETTABLEKS                       R3 R2 K2 ["threadId"]
       11 GETUPVAL                         R5 3
       12 CALL                             R5 0 1
       13 JUMPIFNOT                        R5 ; [+6]
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K3 ["useRef"]
       17 LOADNIL                          R5
       18 CALL                             R4 1 1
       19 JUMP                             ; [+2]
       20 GETTABLEKS                       R4 R0 K4 ["scrollingFrameRef"]
       22 GETUPVAL                         R5 3
       23 CALL                             R5 0 1
       24 JUMPIF                           R5 ; [+30]
       25 GETUPVAL                         R5 1
       26 GETTABLEKS                       R5 R5 K0 ["useContext"]
       28 GETUPVAL                         R6 4
       29 GETTABLEKS                       R6 R6 K1 ["Context"]
       31 CALL                             R5 1 1
       32 GETTABLEKS                       R6 R5 K5 ["sessionId"]
       34 GETUPVAL                         R7 1
       35 GETTABLEKS                       R7 R7 K3 ["useRef"]
       37 MOVE                             R8 R6
       38 CALL                             R7 1 1
       39 GETUPVAL                         R8 5
       40 CALL                             R8 0 1
       41 GETUPVAL                         R9 1
       42 GETTABLEKS                       R9 R9 K6 ["useEffect"]
       44 NEWCLOSURE                       R10 P0
       45 CAPTURE                          VAL R7
       46 CAPTURE                          VAL R6
       47 CAPTURE                          VAL R8
       48 NEWTABLE                         R11 0 2
       50 MOVE                             R12 R8
       51 MOVE                             R13 R6
       52 SETLIST                          R11 R12 2 [1]
       54 CALL                             R9 2 0
       55 GETUPVAL                         R5 6
       56 CALL                             R5 0 1
       57 GETUPVAL                         R6 1
       58 GETTABLEKS                       R6 R6 K6 ["useEffect"]
       60 NEWCLOSURE                       R7 P1
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R3
       63 NEWTABLE                         R8 0 2
       65 MOVE                             R9 R3
       66 MOVE                             R10 R5
       67 SETLIST                          R8 R9 2 [1]
       69 CALL                             R6 2 0
       70 GETUPVAL                         R6 7
       71 MOVE                             R7 R1
       72 MOVE                             R8 R3
       73 CALL                             R6 2 0
       74 GETUPVAL                         R6 1
       75 GETTABLEKS                       R6 R6 K0 ["useContext"]
       77 GETUPVAL                         R7 8
       78 GETTABLEKS                       R7 R7 K1 ["Context"]
       80 CALL                             R6 1 1
       81 GETUPVAL                         R7 9
       82 DUPTABLE                         R8 K8 [{"setInputEnabled"}]
       83 GETUPVAL                         R9 10
       84 MOVE                             R10 R6
       85 CALL                             R9 1 1
       86 SETTABLEKS                       R9 R8 K7 ["setInputEnabled"]
       88 CALL                             R7 1 1
       89 GETUPVAL                         R8 11
       90 CALL                             R8 0 1
       91 DUPTABLE                         R9 K10 [{"UIPadding"}]
       92 GETUPVAL                         R10 12
       93 LOADK                            R11 K9 ["UIPadding"]
       94 DUPTABLE                         R12 K15 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       95 GETIMPORT                        R13 K18 [UDim.new]
       97 LOADN                            R14 0
       98 LOADN                            R15 20
       99 CALL                             R13 2 1
      100 SETTABLEKS                       R13 R12 K11 ["PaddingTop"]
      102 GETIMPORT                        R13 K18 [UDim.new]
      104 LOADN                            R14 0
      105 LOADN                            R15 20
      106 CALL                             R13 2 1
      107 SETTABLEKS                       R13 R12 K12 ["PaddingBottom"]
      109 GETIMPORT                        R13 K18 [UDim.new]
      111 LOADN                            R14 0
      112 LOADN                            R15 20
      113 CALL                             R13 2 1
      114 SETTABLEKS                       R13 R12 K13 ["PaddingLeft"]
      116 GETIMPORT                        R13 K18 [UDim.new]
      118 LOADN                            R14 0
      119 LOADN                            R15 20
      120 CALL                             R13 2 1
      121 SETTABLEKS                       R13 R12 K14 ["PaddingRight"]
      123 CALL                             R10 2 1
      124 SETTABLEKS                       R10 R9 K9 ["UIPadding"]
      126 LOADNIL                          R11
      127 GETUPVAL                         R12 3
      128 CALL                             R12 0 1
      129 JUMPIFNOT                        R12 ; [+7]
      130 MOVE                             R12 R3
      131 JUMPIFNOT                        R12 ; [+3]
      132 GETTABLEKS                       R13 R1 K19 ["threads"]
      134 GETTABLE                         R12 R13 R3
      135 MOVE                             R11 R12
      136 JUMP                             ; [+4]
      137 MOVE                             R12 R3
      138 JUMPIFNOT                        R12 ; [+1]
      139 GETTABLE                         R12 R1 R3
      140 MOVE                             R11 R12
      141 JUMPIF                           R11 ; [+2]
      142 LOADNIL                          R10
      143 JUMP                             ; [+2]
      144 GETTABLEKS                       R10 R11 K20 ["messages"]
      146 LOADN                            R11 0
      147 GETUPVAL                         R12 1
      148 GETTABLEKS                       R12 R12 K21 ["useState"]
      150 LOADNIL                          R13
      151 CALL                             R12 1 2
      152 GETUPVAL                         R14 1
      153 GETTABLEKS                       R14 R14 K3 ["useRef"]
      155 LOADNIL                          R15
      156 CALL                             R14 1 1
      157 GETUPVAL                         R15 1
      158 GETTABLEKS                       R15 R15 K3 ["useRef"]
      160 LOADNIL                          R16
      161 CALL                             R15 1 1
      162 GETUPVAL                         R16 1
      163 GETTABLEKS                       R16 R16 K3 ["useRef"]
      165 LOADNIL                          R17
      166 CALL                             R16 1 1
      167 JUMPIFNOT                        R10 ; [+87]
      168 GETUPVAL                         R17 13
      169 MOVE                             R18 R10
      170 CALL                             R17 1 1
      171 MOVE                             R18 R10
      172 LOADNIL                          R19
      173 LOADNIL                          R20
      174 FORGPREP                         R18
      175 GETTABLEKS                       R23 R22 K22 ["hidden"]
      177 JUMPIF                           R23 ; [+13]
      178 GETTABLEKS                       R23 R22 K23 ["isDeleted"]
      180 JUMPIF                           R23 ; [+10]
      181 GETTABLEKS                       R26 R22 K25 ["LayoutOrder"]
      183 ORK                              R25 R26 K24 [0]
      184 FASTCALL2                        MATH_MIN R11 R25 ; [+4]
      186 MOVE                             R24 R11
      187 GETIMPORT                        R23 K28 [math.min]
      189 CALL                             R23 2 1
      190 MOVE                             R11 R23
      191 FORGLOOP                         R18 2 ; [-17]
      193 MOVE                             R18 R10
      194 LOADNIL                          R19
      195 LOADNIL                          R20
      196 FORGPREP                         R18
      197 GETTABLEKS                       R23 R22 K22 ["hidden"]
      199 JUMPIF                           R23 ; [+53]
      200 GETTABLEKS                       R23 R22 K23 ["isDeleted"]
      202 JUMPIF                           R23 ; [+50]
      203 GETTABLEKS                       R24 R22 K25 ["LayoutOrder"]
      205 ORK                              R23 R24 K24 [0]
      206 LOADNIL                          R24
      207 JUMPIFNOT                        R12 ; [+4]
      208 JUMPIFNOTEQ                      R21 R12 ; [+8]
      210 MOVE                             R24 R14
      211 JUMP                             ; [+5]
      212 JUMPIFNOTEQ                      R23 R11 ; [+4]
      214 MOVE                             R24 R14
      215 SETTABLEKS                       R21 R15 K29 ["current"]
      217 GETUPVAL                         R25 14
      218 GETTABLEKS                       R25 R25 K30 ["Dictionary"]
      220 GETTABLEKS                       R25 R25 K31 ["join"]
      222 MOVE                             R26 R22
      223 DUPTABLE                         R27 K36 [{"retryMessage", "sendMessage", "isLatestAssistantAndMostRecent", "ref"}]
      224 SETTABLEKS                       R8 R27 K32 ["retryMessage"]
      226 SETTABLEKS                       R7 R27 K33 ["sendMessage"]
      228 JUMPIFEQ                         R21 R17 ; [+2]
      230 LOADB                            R28 0 +1
      231 LOADB                            R28 1
      232 SETTABLEKS                       R28 R27 K34 ["isLatestAssistantAndMostRecent"]
      234 SETTABLEKS                       R24 R27 K35 ["ref"]
      236 CALL                             R25 2 1
      237 GETUPVAL                         R27 3
      238 CALL                             R27 0 1
      239 JUMPIFNOT                        R27 ; [+7]
      240 GETIMPORT                        R26 K39 [string.format]
      242 LOADK                            R27 K40 ["Message-%04i-%s"]
      243 MOVE                             R28 R23
      244 MOVE                             R29 R21
      245 CALL                             R26 3 1
      246 JUMP                             ; [+1]
      247 MOVE                             R26 R21
      248 GETUPVAL                         R27 12
      249 GETUPVAL                         R28 15
      250 MOVE                             R29 R25
      251 CALL                             R27 2 1
      252 SETTABLE                         R27 R9 R26
      253 FORGLOOP                         R18 2 ; [-57]
      255 LOADNIL                          R17
      256 LOADNIL                          R18
      257 LOADNIL                          R19
      258 GETUPVAL                         R20 3
      259 CALL                             R20 0 1
      260 JUMPIFNOT                        R20 ; [+253]
      261 GETUPVAL                         R20 16
      262 GETTABLEKS                       R20 R20 K41 ["Hooks"]
      264 GETTABLEKS                       R20 R20 K42 ["useTokens"]
      266 CALL                             R20 0 1
      267 GETUPVAL                         R21 1
      268 GETTABLEKS                       R21 R21 K43 ["useMemo"]
      270 DUPCLOSURE                       R22 K44 [PROTO_6]
      271 CAPTURE                          UPVAL U17
      272 NEWTABLE                         R23 0 1
      274 GETUPVAL                         R24 17
      275 GETTABLEKS                       R24 R24 K45 ["locale"]
      277 SETLIST                          R23 R24 1 [1]
      279 CALL                             R21 2 1
      280 GETUPVAL                         R22 18
      281 CALL                             R22 0 1
      282 GETUPVAL                         R23 19
      283 CALL                             R23 0 1
      284 JUMPIFNOT                        R23 ; [+3]
      285 GETTABLEKS                       R24 R23 K46 ["messagePageState"]
      287 JUMP                             ; [+1]
      288 LOADNIL                          R24
      289 JUMPIFNOT                        R23 ; [+3]
      290 GETTABLEKS                       R25 R23 K47 ["messageLoadState"]
      292 JUMP                             ; [+1]
      293 LOADNIL                          R25
      294 GETUPVAL                         R26 20
      295 GETTABLEKS                       R26 R26 K48 ["PersistenceLoadStates"]
      297 GETTABLEKS                       R26 R26 K49 ["Loading"]
      299 JUMPIFNOTEQ                      R25 R26 ; [+30]
      301 GETUPVAL                         R26 12
      302 GETUPVAL                         R27 21
      303 DUPTABLE                         R28 K51 [{"tag", "LayoutOrder"}]
      304 LOADK                            R29 K52 ["row size-full-800 gap-small align-x-center align-y-center"]
      305 SETTABLEKS                       R29 R28 K50 ["tag"]
      307 SUBK                             R29 R11 K53 [1]
      308 SETTABLEKS                       R29 R28 K25 ["LayoutOrder"]
      310 DUPTABLE                         R29 K54 [{"Loading"}]
      311 GETUPVAL                         R30 12
      312 GETUPVAL                         R31 22
      313 DUPTABLE                         R32 K56 [{"size"}]
      314 GETUPVAL                         R33 16
      315 GETTABLEKS                       R33 R33 K57 ["Enums"]
      317 GETTABLEKS                       R33 R33 K58 ["IconSize"]
      319 GETTABLEKS                       R33 R33 K59 ["Small"]
      321 SETTABLEKS                       R33 R32 K55 ["size"]
      323 CALL                             R30 2 1
      324 SETTABLEKS                       R30 R29 K49 ["Loading"]
      326 CALL                             R26 3 1
      327 SETTABLEKS                       R26 R9 K60 ["MessagePersistenceInfo"]
      329 JUMP                             ; [+73]
      330 GETUPVAL                         R26 20
      331 GETTABLEKS                       R26 R26 K48 ["PersistenceLoadStates"]
      333 GETTABLEKS                       R26 R26 K61 ["Error"]
      335 JUMPIFNOTEQ                      R25 R26 ; [+67]
      337 GETUPVAL                         R26 12
      338 GETUPVAL                         R27 21
      339 DUPTABLE                         R28 K51 [{"tag", "LayoutOrder"}]
      340 LOADK                            R29 K52 ["row size-full-800 gap-small align-x-center align-y-center"]
      341 SETTABLEKS                       R29 R28 K50 ["tag"]
      343 SUBK                             R29 R11 K53 [1]
      344 SETTABLEKS                       R29 R28 K25 ["LayoutOrder"]
      346 DUPTABLE                         R29 K64 [{"Icon", "Text"}]
      347 GETUPVAL                         R30 12
      348 GETUPVAL                         R31 23
      349 DUPTABLE                         R32 K67 [{"name", "size", "style", "LayoutOrder"}]
      350 GETUPVAL                         R33 16
      351 GETTABLEKS                       R33 R33 K57 ["Enums"]
      353 GETTABLEKS                       R33 R33 K68 ["IconName"]
      355 GETTABLEKS                       R33 R33 K69 ["TriangleExclamation"]
      357 SETTABLEKS                       R33 R32 K65 ["name"]
      359 GETUPVAL                         R33 16
      360 GETTABLEKS                       R33 R33 K57 ["Enums"]
      362 GETTABLEKS                       R33 R33 K58 ["IconSize"]
      364 GETTABLEKS                       R33 R33 K70 ["Medium"]
      366 SETTABLEKS                       R33 R32 K55 ["size"]
      368 GETTABLEKS                       R33 R20 K71 ["Color"]
      370 GETTABLEKS                       R33 R33 K72 ["System"]
      372 GETTABLEKS                       R33 R33 K73 ["Warning"]
      374 SETTABLEKS                       R33 R32 K66 ["style"]
      376 MOVE                             R33 R22
      377 CALL                             R33 0 1
      378 SETTABLEKS                       R33 R32 K25 ["LayoutOrder"]
      380 CALL                             R30 2 1
      381 SETTABLEKS                       R30 R29 K62 ["Icon"]
      383 GETUPVAL                         R30 12
      384 GETUPVAL                         R31 24
      385 DUPTABLE                         R32 K74 [{"tag", "Text", "LayoutOrder"}]
      386 LOADK                            R33 K75 ["size-0-full auto-x content-system-warning text-label-medium text-align-x-center text-align-y-center text-truncate-split"]
      387 SETTABLEKS                       R33 R32 K50 ["tag"]
      389 GETTABLEKS                       R33 R21 K76 ["MessagesLoadError"]
      391 SETTABLEKS                       R33 R32 K63 ["Text"]
      393 MOVE                             R33 R22
      394 CALL                             R33 0 1
      395 SETTABLEKS                       R33 R32 K25 ["LayoutOrder"]
      397 CALL                             R30 2 1
      398 SETTABLEKS                       R30 R29 K63 ["Text"]
      400 CALL                             R26 3 1
      401 SETTABLEKS                       R26 R9 K60 ["MessagePersistenceInfo"]
      403 GETUPVAL                         R26 25
      404 DUPTABLE                         R27 K83 [{"pageState", "loadState", "onLoadMore", "direction", "triggerDistance", "resetKey"}]
      405 SETTABLEKS                       R24 R27 K77 ["pageState"]
      407 SETTABLEKS                       R25 R27 K78 ["loadState"]
      409 GETUPVAL                         R28 1
      410 GETTABLEKS                       R28 R28 K84 ["useCallback"]
      412 NEWCLOSURE                       R29 P3
      413 CAPTURE                          VAL R14
      414 CAPTURE                          VAL R16
      415 CAPTURE                          VAL R13
      416 CAPTURE                          VAL R15
      417 CAPTURE                          UPVAL U26
      418 CAPTURE                          VAL R24
      419 CAPTURE                          VAL R3
      420 NEWTABLE                         R30 0 2
      422 MOVE                             R31 R24
      423 MOVE                             R32 R3
      424 SETLIST                          R30 R31 2 [1]
      426 CALL                             R28 2 1
      427 SETTABLEKS                       R28 R27 K79 ["onLoadMore"]
      429 LOADK                            R28 K85 ["top"]
      430 SETTABLEKS                       R28 R27 K80 ["direction"]
      432 GETUPVAL                         R28 27
      433 GETTABLEKS                       R28 R28 K86 ["MESSAGES_LOAD_TRIGGER_DISTANCE"]
      435 SETTABLEKS                       R28 R27 K81 ["triggerDistance"]
      437 SETTABLEKS                       R3 R27 K82 ["resetKey"]
      439 CALL                             R26 1 1
      440 GETUPVAL                         R27 1
      441 GETTABLEKS                       R27 R27 K6 ["useEffect"]
      443 NEWCLOSURE                       R28 P4
      444 CAPTURE                          VAL R25
      445 CAPTURE                          UPVAL U20
      446 CAPTURE                          VAL R16
      447 CAPTURE                          VAL R14
      448 CAPTURE                          VAL R13
      449 NEWTABLE                         R29 0 1
      451 MOVE                             R30 R25
      452 SETLIST                          R29 R30 1 [1]
      454 CALL                             R27 2 0
      455 GETUPVAL                         R27 1
      456 GETTABLEKS                       R27 R27 K3 ["useRef"]
      458 LOADB                            R28 1
      459 CALL                             R27 1 1
      460 GETUPVAL                         R28 1
      461 GETTABLEKS                       R28 R28 K84 ["useCallback"]
      463 NEWCLOSURE                       R29 P5
      464 CAPTURE                          VAL R27
      465 CAPTURE                          VAL R26
      466 NEWTABLE                         R30 0 1
      468 GETTABLEKS                       R31 R26 K87 ["onCanvasPositionChanged"]
      470 SETLIST                          R30 R31 1 [1]
      472 CALL                             R28 2 1
      473 MOVE                             R17 R28
      474 GETUPVAL                         R28 1
      475 GETTABLEKS                       R28 R28 K84 ["useCallback"]
      477 NEWCLOSURE                       R29 P6
      478 CAPTURE                          REF R17
      479 NEWTABLE                         R30 0 1
      481 MOVE                             R31 R17
      482 SETLIST                          R30 R31 1 [1]
      484 CALL                             R28 2 1
      485 MOVE                             R18 R28
      486 GETUPVAL                         R28 1
      487 GETTABLEKS                       R28 R28 K84 ["useCallback"]
      489 NEWCLOSURE                       R29 P7
      490 CAPTURE                          VAL R27
      491 CAPTURE                          VAL R26
      492 NEWTABLE                         R30 0 1
      494 GETTABLEKS                       R31 R26 K87 ["onCanvasPositionChanged"]
      496 SETLIST                          R30 R31 1 [1]
      498 CALL                             R28 2 1
      499 MOVE                             R19 R28
      500 GETTABLEKS                       R28 R0 K88 ["chatHistoryInterfaceRef"]
      502 GETUPVAL                         R29 1
      503 GETTABLEKS                       R29 R29 K6 ["useEffect"]
      505 NEWCLOSURE                       R30 P8
      506 CAPTURE                          VAL R28
      507 CAPTURE                          VAL R4
      508 NEWTABLE                         R31 0 1
      510 MOVE                             R32 R28
      511 SETLIST                          R31 R32 1 [1]
      513 CALL                             R29 2 0
      514 GETUPVAL                         R20 12
      515 GETUPVAL                         R21 28
      516 DUPTABLE                         R22 K93 [{"tag", "layout", "scroll", "scrollingFrameRef", "onCanvasPositionChanged", "onAbsoluteCanvasSizeChanged", "onAbsoluteWindowSizeChanged"}]
      517 LOADK                            R23 K94 ["size-full-full"]
      518 SETTABLEKS                       R23 R22 K50 ["tag"]
      520 DUPTABLE                         R23 K98 [{"FillDirection", "SortOrder", "Padding"}]
      521 GETIMPORT                        R24 K101 [Enum.FillDirection.Vertical]
      523 SETTABLEKS                       R24 R23 K95 ["FillDirection"]
      525 GETIMPORT                        R24 K102 [Enum.SortOrder.LayoutOrder]
      527 SETTABLEKS                       R24 R23 K96 ["SortOrder"]
      529 GETUPVAL                         R25 3
      530 CALL                             R25 0 1
      531 JUMPIFNOT                        R25 ; [+6]
      532 GETIMPORT                        R24 K18 [UDim.new]
      534 LOADN                            R25 0
      535 LOADN                            R26 12
      536 CALL                             R24 2 1
      537 JUMP                             ; [+5]
      538 GETIMPORT                        R24 K18 [UDim.new]
      540 LOADN                            R25 0
      541 LOADN                            R26 24
      542 CALL                             R24 2 1
      543 SETTABLEKS                       R24 R23 K97 ["Padding"]
      545 SETTABLEKS                       R23 R22 K89 ["layout"]
      547 DUPTABLE                         R23 K106 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      548 GETIMPORT                        R24 K109 [Enum.AutomaticSize.Y]
      550 SETTABLEKS                       R24 R23 K103 ["AutomaticCanvasSize"]
      552 GETIMPORT                        R24 K112 [UDim2.fromScale]
      554 LOADN                            R25 1
      555 LOADN                            R26 0
      556 CALL                             R24 2 1
      557 SETTABLEKS                       R24 R23 K104 ["CanvasSize"]
      559 GETIMPORT                        R24 K113 [Enum.ScrollingDirection.Y]
      561 SETTABLEKS                       R24 R23 K105 ["ScrollingDirection"]
      563 SETTABLEKS                       R23 R22 K90 ["scroll"]
      565 SETTABLEKS                       R4 R22 K4 ["scrollingFrameRef"]
      567 GETUPVAL                         R24 3
      568 CALL                             R24 0 1
      569 JUMPIFNOT                        R24 ; [+2]
      570 MOVE                             R23 R17
      571 JUMP                             ; [+2]
      572 GETTABLEKS                       R23 R0 K87 ["onCanvasPositionChanged"]
      574 SETTABLEKS                       R23 R22 K87 ["onCanvasPositionChanged"]
      576 GETUPVAL                         R24 3
      577 CALL                             R24 0 1
      578 JUMPIFNOT                        R24 ; [+2]
      579 MOVE                             R23 R19
      580 JUMP                             ; [+2]
      581 GETTABLEKS                       R23 R0 K91 ["onAbsoluteCanvasSizeChanged"]
      583 SETTABLEKS                       R23 R22 K91 ["onAbsoluteCanvasSizeChanged"]
      585 GETUPVAL                         R24 3
      586 CALL                             R24 0 1
      587 JUMPIFNOT                        R24 ; [+2]
      588 MOVE                             R23 R18
      589 JUMP                             ; [+1]
      590 LOADNIL                          R23
      591 SETTABLEKS                       R23 R22 K92 ["onAbsoluteWindowSizeChanged"]
      593 MOVE                             R23 R9
      594 CALL                             R20 3 -1
      595 CLOSEUPVALS                      R17
      596 RETURN                           R20 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Constants"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Parent"]
       16 GETTABLEKS                       R3 R3 K8 ["Cryo"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K7 ["Parent"]
       23 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K10 ["Components"]
       30 GETTABLEKS                       R5 R5 K11 ["Contexts"]
       32 GETTABLEKS                       R5 R5 K12 ["InputStateContext"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K10 ["Components"]
       39 GETTABLEKS                       R6 R6 K13 ["MessageWidget"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K14 ["Util"]
       46 GETTABLEKS                       R7 R7 K15 ["Persistence"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K7 ["Parent"]
       53 GETTABLEKS                       R8 R8 K16 ["React"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K7 ["Parent"]
       60 GETTABLEKS                       R9 R9 K17 ["ReactUtils"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K10 ["Components"]
       67 GETTABLEKS                       R10 R10 K11 ["Contexts"]
       69 GETTABLEKS                       R10 R10 K18 ["SessionIdContext"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K10 ["Components"]
       76 GETTABLEKS                       R11 R11 K11 ["Contexts"]
       78 GETTABLEKS                       R11 R11 K19 ["ThreadIdContext"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K20 ["Resources"]
       85 GETTABLEKS                       R12 R12 K21 ["Localization"]
       87 GETTABLEKS                       R12 R12 K22 ["Translator"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETTABLEKS                       R13 R0 K23 ["Types"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K5 [require]
       97 GETTABLEKS                       R14 R0 K14 ["Util"]
       99 GETTABLEKS                       R14 R14 K24 ["getToggleGenerationInputFunc"]
      101 CALL                             R13 1 1
      102 GETIMPORT                        R14 K5 [require]
      104 GETTABLEKS                       R15 R0 K25 ["Hooks"]
      106 GETTABLEKS                       R15 R15 K26 ["useAddThread"]
      108 CALL                             R14 1 1
      109 GETIMPORT                        R15 K5 [require]
      111 GETTABLEKS                       R16 R0 K25 ["Hooks"]
      113 GETTABLEKS                       R16 R16 K27 ["useClearConversation"]
      115 CALL                             R15 1 1
      116 GETIMPORT                        R16 K5 [require]
      118 GETTABLEKS                       R17 R0 K25 ["Hooks"]
      120 GETTABLEKS                       R17 R17 K28 ["useConversation"]
      122 CALL                             R16 1 1
      123 GETIMPORT                        R17 K5 [require]
      125 GETTABLEKS                       R18 R0 K25 ["Hooks"]
      127 GETTABLEKS                       R18 R18 K29 ["useCurrentThread"]
      129 CALL                             R17 1 1
      130 GETIMPORT                        R18 K5 [require]
      132 GETTABLEKS                       R19 R0 K25 ["Hooks"]
      134 GETTABLEKS                       R19 R19 K30 ["usePaginatedScrollEdge"]
      136 CALL                             R18 1 1
      137 GETIMPORT                        R19 K5 [require]
      139 GETTABLEKS                       R20 R0 K25 ["Hooks"]
      141 GETTABLEKS                       R20 R20 K31 ["useRetryMessage"]
      143 CALL                             R19 1 1
      144 GETIMPORT                        R20 K5 [require]
      146 GETTABLEKS                       R21 R0 K25 ["Hooks"]
      148 GETTABLEKS                       R21 R21 K32 ["useSendMessage"]
      150 CALL                             R20 1 1
      151 GETIMPORT                        R21 K5 [require]
      153 GETTABLEKS                       R22 R0 K25 ["Hooks"]
      155 GETTABLEKS                       R22 R22 K33 ["useWelcomeMessage"]
      157 CALL                             R21 1 1
      158 GETIMPORT                        R22 K5 [require]
      160 GETTABLEKS                       R23 R0 K34 ["Flags"]
      162 GETTABLEKS                       R23 R23 K35 ["FFlagAssistantMultipleChatPersistence"]
      164 CALL                             R22 1 1
      165 GETTABLEKS                       R23 R3 K36 ["Icon"]
      167 GETTABLEKS                       R24 R3 K37 ["Loading"]
      169 GETTABLEKS                       R25 R3 K38 ["ScrollView"]
      171 GETTABLEKS                       R26 R3 K39 ["Text"]
      173 GETTABLEKS                       R27 R3 K40 ["View"]
      175 GETTABLEKS                       R28 R7 K41 ["createElement"]
      177 GETTABLEKS                       R29 R8 K42 ["createNextOrder"]
      179 DUPCLOSURE                       R30 K43 [PROTO_0]
      180 DUPCLOSURE                       R31 K44 [PROTO_1]
      181 DUPCLOSURE                       R32 K45 [PROTO_2]
      182 CAPTURE                          VAL R22
      183 DUPCLOSURE                       R33 K46 [PROTO_3]
      184 DUPCLOSURE                       R34 K47 [PROTO_17]
      185 CAPTURE                          VAL R16
      186 CAPTURE                          VAL R7
      187 CAPTURE                          VAL R10
      188 CAPTURE                          VAL R22
      189 CAPTURE                          VAL R9
      190 CAPTURE                          VAL R15
      191 CAPTURE                          VAL R14
      192 CAPTURE                          VAL R21
      193 CAPTURE                          VAL R4
      194 CAPTURE                          VAL R20
      195 CAPTURE                          VAL R13
      196 CAPTURE                          VAL R19
      197 CAPTURE                          VAL R28
      198 CAPTURE                          VAL R33
      199 CAPTURE                          VAL R2
      200 CAPTURE                          VAL R5
      201 CAPTURE                          VAL R3
      202 CAPTURE                          VAL R11
      203 CAPTURE                          VAL R29
      204 CAPTURE                          VAL R17
      205 CAPTURE                          VAL R12
      206 CAPTURE                          VAL R27
      207 CAPTURE                          VAL R24
      208 CAPTURE                          VAL R23
      209 CAPTURE                          VAL R26
      210 CAPTURE                          VAL R18
      211 CAPTURE                          VAL R6
      212 CAPTURE                          VAL R1
      213 CAPTURE                          VAL R25
      214 RETURN                           R34 1
