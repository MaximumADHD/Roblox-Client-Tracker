PROTO_0:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 CALL                             R3 1 0
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R5 R2 K0 ["Position"]
        6 GETTABLEKS                       R5 R5 K1 ["X"]
        8 GETTABLEKS                       R6 R1 K2 ["AbsolutePosition"]
       10 GETTABLEKS                       R6 R6 K1 ["X"]
       12 SUB                              R4 R5 R6
       13 CALL                             R3 1 0
       14 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 [""]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 LOADN                            R1 0
        1 JUMPIFNOTLT                      R0 R1 ; [+43]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K0 ["XRange"]
        6 GETTABLEKS                       R3 R3 K1 ["Min"]
        8 ADD                              R2 R3 R0
        9 FASTCALL2K                       MATH_MAX R2 K2 ; [+4]
       11 LOADK                            R3 K2 [0]
       12 GETIMPORT                        R1 K5 [math.max]
       14 CALL                             R1 2 1
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K0 ["XRange"]
       18 GETTABLEKS                       R3 R3 K6 ["Max"]
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K0 ["XRange"]
       23 GETTABLEKS                       R5 R5 K1 ["Min"]
       25 SUB                              R4 R1 R5
       26 ADD                              R2 R3 R4
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R3 R3 K7 ["SetXRange"]
       30 GETIMPORT                        R4 K10 [NumberRange.new]
       32 MOVE                             R5 R1
       33 MOVE                             R6 R2
       34 CALL                             R4 2 -1
       35 CALL                             R3 -1 0
       36 GETUPVAL                         R3 0
       37 GETIMPORT                        R4 K10 [NumberRange.new]
       39 MOVE                             R5 R1
       40 MOVE                             R6 R2
       41 CALL                             R4 2 1
       42 SETTABLEKS                       R4 R3 K0 ["XRange"]
       44 RETURN                           R0 0
       45 LOADN                            R1 0
       46 JUMPIFNOTLT                      R1 R0 ; [+42]
       48 GETUPVAL                         R3 0
       49 GETTABLEKS                       R3 R3 K0 ["XRange"]
       51 GETTABLEKS                       R3 R3 K6 ["Max"]
       53 ADD                              R2 R3 R0
       54 GETUPVAL                         R3 1
       55 FASTCALL2                        MATH_MIN R2 R3 ; [+3]
       57 GETIMPORT                        R1 K12 [math.min]
       59 CALL                             R1 2 1
       60 GETUPVAL                         R3 0
       61 GETTABLEKS                       R3 R3 K0 ["XRange"]
       63 GETTABLEKS                       R3 R3 K1 ["Min"]
       65 GETUPVAL                         R5 0
       66 GETTABLEKS                       R5 R5 K0 ["XRange"]
       68 GETTABLEKS                       R5 R5 K6 ["Max"]
       70 SUB                              R4 R1 R5
       71 ADD                              R2 R3 R4
       72 GETUPVAL                         R3 0
       73 GETTABLEKS                       R3 R3 K7 ["SetXRange"]
       75 GETIMPORT                        R4 K10 [NumberRange.new]
       77 MOVE                             R5 R2
       78 MOVE                             R6 R1
       79 CALL                             R4 2 -1
       80 CALL                             R3 -1 0
       81 GETUPVAL                         R3 0
       82 GETIMPORT                        R4 K10 [NumberRange.new]
       84 MOVE                             R5 R2
       85 MOVE                             R6 R1
       86 CALL                             R4 2 1
       87 SETTABLEKS                       R4 R3 K0 ["XRange"]
       89 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["current"]
        8 FASTCALL2K                       ASSERT R2 K1 ; [+4]
       10 LOADK                            R3 K1 ["frameRef.current was nil"]
       11 GETIMPORT                        R1 K3 [assert]
       13 CALL                             R1 2 0
       14 GETTABLEKS                       R2 R0 K4 ["Position"]
       16 GETTABLEKS                       R2 R2 K5 ["X"]
       18 GETUPVAL                         R3 1
       19 SUB                              R1 R2 R3
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K0 ["current"]
       23 GETTABLEKS                       R4 R4 K6 ["AbsolutePosition"]
       25 GETTABLEKS                       R4 R4 K5 ["X"]
       27 SUB                              R3 R1 R4
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R4 R4 K0 ["current"]
       31 GETTABLEKS                       R4 R4 K7 ["AbsoluteSize"]
       33 GETTABLEKS                       R4 R4 K5 ["X"]
       35 DIV                              R2 R3 R4
       36 LOADN                            R5 0
       37 LOADN                            R6 1
       38 FASTCALL3                        MATH_CLAMP R2 R5 R6
       40 MOVE                             R4 R2
       41 GETIMPORT                        R3 K10 [math.clamp]
       43 CALL                             R3 3 1
       44 MOVE                             R2 R3
       45 LOADN                            R4 0
       46 GETUPVAL                         R7 2
       47 SUBK                             R6 R7 K11 [0]
       48 MUL                              R5 R2 R6
       49 ADD                              R3 R4 R5
       50 GETUPVAL                         R4 3
       51 GETUPVAL                         R6 4
       52 GETTABLEKS                       R6 R6 K12 ["XRange"]
       54 GETTABLEKS                       R6 R6 K13 ["Min"]
       56 SUB                              R5 R3 R6
       57 CALL                             R4 1 0
       58 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["current"]
        8 FASTCALL2K                       ASSERT R2 K1 ; [+4]
       10 LOADK                            R3 K1 ["frameRef.current was nil"]
       11 GETIMPORT                        R1 K3 [assert]
       13 CALL                             R1 2 0
       14 GETTABLEKS                       R3 R0 K5 ["Position"]
       16 GETTABLEKS                       R3 R3 K6 ["X"]
       18 GETUPVAL                         R4 1
       19 SUB                              R2 R3 R4
       20 ADDK                             R1 R2 K4 [15]
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K0 ["current"]
       24 GETTABLEKS                       R4 R4 K7 ["AbsolutePosition"]
       26 GETTABLEKS                       R4 R4 K6 ["X"]
       28 SUB                              R3 R1 R4
       29 GETUPVAL                         R4 0
       30 GETTABLEKS                       R4 R4 K0 ["current"]
       32 GETTABLEKS                       R4 R4 K8 ["AbsoluteSize"]
       34 GETTABLEKS                       R4 R4 K6 ["X"]
       36 DIV                              R2 R3 R4
       37 LOADN                            R5 0
       38 LOADN                            R6 1
       39 FASTCALL3                        MATH_CLAMP R2 R5 R6
       41 MOVE                             R4 R2
       42 GETIMPORT                        R3 K11 [math.clamp]
       44 CALL                             R3 3 1
       45 MOVE                             R2 R3
       46 LOADN                            R4 0
       47 GETUPVAL                         R7 2
       48 SUBK                             R6 R7 K12 [0]
       49 MUL                              R5 R2 R6
       50 ADD                              R3 R4 R5
       51 LOADN                            R6 0
       52 GETUPVAL                         R8 3
       53 GETTABLEKS                       R8 R8 K13 ["XRange"]
       55 GETTABLEKS                       R8 R8 K14 ["Max"]
       57 GETUPVAL                         R9 4
       58 SUB                              R7 R8 R9
       59 FASTCALL3                        MATH_CLAMP R3 R6 R7
       61 MOVE                             R5 R3
       62 GETIMPORT                        R4 K11 [math.clamp]
       64 CALL                             R4 3 1
       65 MOVE                             R3 R4
       66 GETUPVAL                         R4 3
       67 GETTABLEKS                       R4 R4 K15 ["SetXRange"]
       69 GETIMPORT                        R5 K18 [NumberRange.new]
       71 MOVE                             R6 R3
       72 GETUPVAL                         R7 3
       73 GETTABLEKS                       R7 R7 K13 ["XRange"]
       75 GETTABLEKS                       R7 R7 K14 ["Max"]
       77 CALL                             R5 2 -1
       78 CALL                             R4 -1 0
       79 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["current"]
        8 FASTCALL2K                       ASSERT R2 K1 ; [+4]
       10 LOADK                            R3 K1 ["frameRef.current was nil"]
       11 GETIMPORT                        R1 K3 [assert]
       13 CALL                             R1 2 0
       14 GETTABLEKS                       R2 R0 K4 ["Position"]
       16 GETTABLEKS                       R2 R2 K5 ["X"]
       18 GETUPVAL                         R3 1
       19 SUB                              R1 R2 R3
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K0 ["current"]
       23 GETTABLEKS                       R4 R4 K6 ["AbsolutePosition"]
       25 GETTABLEKS                       R4 R4 K5 ["X"]
       27 SUB                              R3 R1 R4
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R4 R4 K0 ["current"]
       31 GETTABLEKS                       R4 R4 K7 ["AbsoluteSize"]
       33 GETTABLEKS                       R4 R4 K5 ["X"]
       35 DIV                              R2 R3 R4
       36 LOADN                            R5 0
       37 LOADN                            R6 1
       38 FASTCALL3                        MATH_CLAMP R2 R5 R6
       40 MOVE                             R4 R2
       41 GETIMPORT                        R3 K10 [math.clamp]
       43 CALL                             R3 3 1
       44 MOVE                             R2 R3
       45 LOADN                            R4 0
       46 GETUPVAL                         R7 2
       47 SUBK                             R6 R7 K11 [0]
       48 MUL                              R5 R2 R6
       49 ADD                              R3 R4 R5
       50 GETUPVAL                         R7 3
       51 GETTABLEKS                       R7 R7 K12 ["XRange"]
       53 GETTABLEKS                       R7 R7 K13 ["Min"]
       55 GETUPVAL                         R8 4
       56 ADD                              R6 R7 R8
       57 GETUPVAL                         R7 5
       58 FASTCALL3                        MATH_CLAMP R3 R6 R7
       60 MOVE                             R5 R3
       61 GETIMPORT                        R4 K10 [math.clamp]
       63 CALL                             R4 3 1
       64 MOVE                             R3 R4
       65 GETUPVAL                         R4 3
       66 GETTABLEKS                       R4 R4 K14 ["SetXRange"]
       68 GETIMPORT                        R5 K17 [NumberRange.new]
       70 GETUPVAL                         R6 3
       71 GETTABLEKS                       R6 R6 K12 ["XRange"]
       73 GETTABLEKS                       R6 R6 K13 ["Min"]
       75 MOVE                             R7 R3
       76 CALL                             R5 2 -1
       77 CALL                             R4 -1 0
       78 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKN                       R0 K0 [0] ; [+5]
        3 GETUPVAL                         R0 0
        4 LOADN                            R1 20
        5 JUMPIFNOTLT                      R1 R0 ; [+16]
        7 GETUPVAL                         R0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K1 ["XRange"]
       11 GETTABLEKS                       R3 R3 K2 ["Max"]
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R4 R4 K1 ["XRange"]
       16 GETTABLEKS                       R4 R4 K3 ["Min"]
       18 SUB                              R2 R3 R4
       19 GETUPVAL                         R3 3
       20 MUL                              R1 R2 R3
       21 CALL                             R0 1 0
       22 GETUPVAL                         R0 0
       23 ADDK                             R0 R0 K4 [1]
       24 SETUPVAL                         R0 0
       25 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+5]
        3 GETUPVAL                         R0 0
        4 NAMECALL                         R0 R0 K0 ["Disconnect"]
        6 CALL                             R0 1 0
        7 LOADN                            R0 0
        8 GETUPVAL                         R1 1
        9 JUMPIFNOTEQKS                    R1 K1 ["SL"] ; [+3]
       11 LOADK                            R0 K2 [-0.04]
       12 JUMP                             ; [+10]
       13 GETUPVAL                         R1 1
       14 JUMPIFNOTEQKS                    R1 K3 ["SR"] ; [+3]
       16 LOADK                            R0 K4 [0.04]
       17 JUMP                             ; [+5]
       18 GETUPVAL                         R1 2
       19 LOADNIL                          R2
       20 CALL                             R1 1 0
       21 CLOSEUPVALS                      R0
       22 RETURN                           R0 0
       23 LOADN                            R1 0
       24 GETUPVAL                         R2 2
       25 GETUPVAL                         R3 3
       26 GETTABLEKS                       R3 R3 K5 ["Heartbeat"]
       28 NEWCLOSURE                       R5 P0
       29 CAPTURE                          REF R1
       30 CAPTURE                          UPVAL U4
       31 CAPTURE                          UPVAL U5
       32 CAPTURE                          REF R0
       33 NAMECALL                         R3 R3 K6 ["Connect"]
       35 CALL                             R3 2 -1
       36 CALL                             R2 -1 0
       37 CLOSEUPVALS                      R0
       38 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R3 R0 K0 ["XRange"]
        2 GETTABLEKS                       R3 R3 K1 ["Max"]
        4 GETTABLEKS                       R4 R0 K2 ["DefaultXMax"]
        6 FASTCALL2                        MATH_MAX R3 R4 ; [+3]
        8 GETIMPORT                        R2 K5 [math.max]
       10 CALL                             R2 2 1
       11 GETUPVAL                         R3 0
       12 FASTCALL2                        MATH_MIN R2 R3 ; [+3]
       14 GETIMPORT                        R1 K7 [math.min]
       16 CALL                             R1 2 1
       17 GETIMPORT                        R2 K10 [UDim2.fromScale]
       19 GETTABLEKS                       R5 R0 K0 ["XRange"]
       21 GETTABLEKS                       R5 R5 K12 ["Min"]
       23 SUBK                             R4 R5 K11 [0]
       24 SUBK                             R5 R1 K11 [0]
       25 DIV                              R3 R4 R5
       26 LOADN                            R4 0
       27 CALL                             R2 2 1
       28 GETIMPORT                        R3 K10 [UDim2.fromScale]
       30 GETTABLEKS                       R6 R0 K0 ["XRange"]
       32 GETTABLEKS                       R6 R6 K1 ["Max"]
       34 GETTABLEKS                       R7 R0 K0 ["XRange"]
       36 GETTABLEKS                       R7 R7 K12 ["Min"]
       38 SUB                              R5 R6 R7
       39 SUBK                             R6 R1 K11 [0]
       40 DIV                              R4 R5 R6
       41 LOADN                            R5 1
       42 CALL                             R3 2 1
       43 GETUPVAL                         R4 1
       44 LOADNIL                          R5
       45 CALL                             R4 1 1
       46 GETUPVAL                         R5 2
       47 LOADK                            R6 K13 [""]
       48 CALL                             R5 1 2
       49 GETUPVAL                         R7 2
       50 LOADN                            R8 0
       51 CALL                             R7 1 2
       52 GETUPVAL                         R9 3
       53 NEWCLOSURE                       R10 P0
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R8
       56 NEWTABLE                         R11 0 2
       58 MOVE                             R12 R6
       59 MOVE                             R13 R8
       60 SETLIST                          R11 R12 2 [1]
       62 CALL                             R9 2 1
       63 GETUPVAL                         R10 3
       64 NEWCLOSURE                       R11 P1
       65 CAPTURE                          VAL R6
       66 NEWTABLE                         R12 0 1
       68 MOVE                             R13 R6
       69 SETLIST                          R12 R13 1 [1]
       71 CALL                             R10 2 1
       72 GETUPVAL                         R11 3
       73 NEWCLOSURE                       R12 P2
       74 CAPTURE                          VAL R0
       75 CAPTURE                          UPVAL U0
       76 NEWTABLE                         R13 0 1
       78 MOVE                             R14 R0
       79 SETLIST                          R13 R14 1 [1]
       81 CALL                             R11 2 1
       82 GETUPVAL                         R12 3
       83 NEWCLOSURE                       R13 P3
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R1
       87 CAPTURE                          VAL R11
       88 CAPTURE                          VAL R0
       89 NEWTABLE                         R14 0 3
       91 MOVE                             R15 R4
       92 MOVE                             R16 R7
       93 MOVE                             R17 R0
       94 SETLIST                          R14 R15 3 [1]
       96 CALL                             R12 2 1
       97 GETUPVAL                         R13 3
       98 NEWCLOSURE                       R14 P4
       99 CAPTURE                          VAL R4
      100 CAPTURE                          VAL R7
      101 CAPTURE                          VAL R1
      102 CAPTURE                          VAL R0
      103 CAPTURE                          UPVAL U4
      104 NEWTABLE                         R15 0 3
      106 MOVE                             R16 R4
      107 MOVE                             R17 R7
      108 MOVE                             R18 R0
      109 SETLIST                          R15 R16 3 [1]
      111 CALL                             R13 2 1
      112 GETUPVAL                         R14 3
      113 NEWCLOSURE                       R15 P5
      114 CAPTURE                          VAL R4
      115 CAPTURE                          VAL R7
      116 CAPTURE                          VAL R1
      117 CAPTURE                          VAL R0
      118 CAPTURE                          UPVAL U4
      119 CAPTURE                          UPVAL U0
      120 NEWTABLE                         R16 0 3
      122 MOVE                             R17 R4
      123 MOVE                             R18 R7
      124 MOVE                             R19 R0
      125 SETLIST                          R16 R17 3 [1]
      127 CALL                             R14 2 1
      128 GETUPVAL                         R15 2
      129 LOADNIL                          R16
      130 CALL                             R15 1 2
      131 GETUPVAL                         R17 5
      132 NEWCLOSURE                       R18 P6
      133 CAPTURE                          VAL R15
      134 CAPTURE                          VAL R5
      135 CAPTURE                          VAL R16
      136 CAPTURE                          UPVAL U6
      137 CAPTURE                          VAL R11
      138 CAPTURE                          VAL R0
      139 NEWTABLE                         R19 0 1
      141 MOVE                             R20 R5
      142 SETLIST                          R19 R20 1 [1]
      144 CALL                             R17 2 0
      145 GETUPVAL                         R17 7
      146 GETTABLEKS                       R17 R17 K14 ["createElement"]
      148 GETUPVAL                         R18 8
      149 NEWTABLE                         R19 4 0
      151 LOADN                            R20 2
      152 SETTABLEKS                       R20 R19 K15 ["LayoutOrder"]
      154 GETIMPORT                        R20 K17 [UDim2.new]
      156 LOADN                            R21 0
      157 LOADN                            R22 35
      158 LOADN                            R23 1
      159 LOADN                            R24 236
      160 CALL                             R20 4 1
      161 SETTABLEKS                       R20 R19 K18 ["Position"]
      163 GETIMPORT                        R20 K17 [UDim2.new]
      165 LOADN                            R21 1
      166 LOADN                            R22 186
      167 LOADN                            R23 0
      168 LOADN                            R24 20
      169 CALL                             R20 4 1
      170 SETTABLEKS                       R20 R19 K19 ["Size"]
      172 GETUPVAL                         R20 7
      173 GETTABLEKS                       R20 R20 K20 ["Tag"]
      175 LOADK                            R21 K21 ["ScrollbarFrame"]
      176 SETTABLE                         R21 R19 R20
      177 DUPTABLE                         R20 K25 [{"LeftButton", "RightButton", "Inner"}]
      178 GETUPVAL                         R21 7
      179 GETTABLEKS                       R21 R21 K14 ["createElement"]
      181 GETUPVAL                         R22 9
      182 DUPTABLE                         R23 K32 [{"AnchorPoint", "Size", "Text", "ControlId", "DragTarget", "OnDragBegan", "OnDragEnded"}]
      183 GETIMPORT                        R24 K34 [Vector2.new]
      185 LOADN                            R25 1
      186 LOADN                            R26 0
      187 CALL                             R24 2 1
      188 SETTABLEKS                       R24 R23 K26 ["AnchorPoint"]
      190 GETIMPORT                        R24 K17 [UDim2.new]
      192 LOADN                            R25 0
      193 LOADN                            R26 20
      194 LOADN                            R27 1
      195 LOADN                            R28 0
      196 CALL                             R24 4 1
      197 SETTABLEKS                       R24 R23 K19 ["Size"]
      199 LOADK                            R24 K35 ["<<"]
      200 SETTABLEKS                       R24 R23 K27 ["Text"]
      202 LOADK                            R24 K36 ["SL"]
      203 SETTABLEKS                       R24 R23 K28 ["ControlId"]
      205 SETTABLEKS                       R5 R23 K29 ["DragTarget"]
      207 SETTABLEKS                       R9 R23 K30 ["OnDragBegan"]
      209 SETTABLEKS                       R10 R23 K31 ["OnDragEnded"]
      211 CALL                             R21 2 1
      212 SETTABLEKS                       R21 R20 K22 ["LeftButton"]
      214 GETUPVAL                         R21 7
      215 GETTABLEKS                       R21 R21 K14 ["createElement"]
      217 GETUPVAL                         R22 9
      218 DUPTABLE                         R23 K37 [{"Position", "Size", "Text", "ControlId", "DragTarget", "OnDragBegan", "OnDragEnded"}]
      219 GETIMPORT                        R24 K17 [UDim2.new]
      221 LOADN                            R25 1
      222 LOADN                            R26 0
      223 LOADN                            R27 0
      224 LOADN                            R28 0
      225 CALL                             R24 4 1
      226 SETTABLEKS                       R24 R23 K18 ["Position"]
      228 GETIMPORT                        R24 K17 [UDim2.new]
      230 LOADN                            R25 0
      231 LOADN                            R26 20
      232 LOADN                            R27 1
      233 LOADN                            R28 0
      234 CALL                             R24 4 1
      235 SETTABLEKS                       R24 R23 K19 ["Size"]
      237 LOADK                            R24 K38 [">>"]
      238 SETTABLEKS                       R24 R23 K27 ["Text"]
      240 LOADK                            R24 K39 ["SR"]
      241 SETTABLEKS                       R24 R23 K28 ["ControlId"]
      243 SETTABLEKS                       R5 R23 K29 ["DragTarget"]
      245 SETTABLEKS                       R9 R23 K30 ["OnDragBegan"]
      247 SETTABLEKS                       R10 R23 K31 ["OnDragEnded"]
      249 CALL                             R21 2 1
      250 SETTABLEKS                       R21 R20 K23 ["RightButton"]
      252 GETUPVAL                         R21 7
      253 GETTABLEKS                       R21 R21 K14 ["createElement"]
      255 GETUPVAL                         R22 8
      256 DUPTABLE                         R23 K41 [{"Position", "Size", "ForwardRef"}]
      257 GETIMPORT                        R24 K17 [UDim2.new]
      259 LOADN                            R25 0
      260 LOADN                            R26 15
      261 LOADN                            R27 0
      262 LOADN                            R28 0
      263 CALL                             R24 4 1
      264 SETTABLEKS                       R24 R23 K18 ["Position"]
      266 GETIMPORT                        R24 K17 [UDim2.new]
      268 LOADN                            R25 1
      269 LOADN                            R26 226
      270 LOADN                            R27 1
      271 LOADN                            R28 0
      272 CALL                             R24 4 1
      273 SETTABLEKS                       R24 R23 K19 ["Size"]
      275 SETTABLEKS                       R4 R23 K40 ["ForwardRef"]
      277 DUPTABLE                         R24 K43 [{"Body"}]
      278 GETUPVAL                         R25 7
      279 GETTABLEKS                       R25 R25 K14 ["createElement"]
      281 GETUPVAL                         R26 8
      282 DUPTABLE                         R27 K44 [{"Position", "Size"}]
      283 SETTABLEKS                       R2 R27 K18 ["Position"]
      285 SETTABLEKS                       R3 R27 K19 ["Size"]
      287 DUPTABLE                         R28 K46 [{"MainButton", "LeftButton", "RightButton"}]
      288 GETUPVAL                         R29 7
      289 GETTABLEKS                       R29 R29 K14 ["createElement"]
      291 GETUPVAL                         R30 9
      292 DUPTABLE                         R31 K48 [{"Size", "ControlId", "DragTarget", "OnDragBegan", "OnDragMoved", "OnDragEnded"}]
      293 GETIMPORT                        R32 K10 [UDim2.fromScale]
      295 LOADN                            R33 1
      296 LOADN                            R34 1
      297 CALL                             R32 2 1
      298 SETTABLEKS                       R32 R31 K19 ["Size"]
      300 LOADK                            R32 K49 ["M"]
      301 SETTABLEKS                       R32 R31 K28 ["ControlId"]
      303 SETTABLEKS                       R5 R31 K29 ["DragTarget"]
      305 SETTABLEKS                       R9 R31 K30 ["OnDragBegan"]
      307 SETTABLEKS                       R12 R31 K47 ["OnDragMoved"]
      309 SETTABLEKS                       R10 R31 K31 ["OnDragEnded"]
      311 CALL                             R29 2 1
      312 SETTABLEKS                       R29 R28 K45 ["MainButton"]
      314 GETUPVAL                         R29 7
      315 GETTABLEKS                       R29 R29 K14 ["createElement"]
      317 GETUPVAL                         R30 9
      318 DUPTABLE                         R31 K50 [{"AnchorPoint", "Size", "Text", "ControlId", "DragTarget", "OnDragBegan", "OnDragMoved", "OnDragEnded"}]
      319 GETIMPORT                        R32 K34 [Vector2.new]
      321 LOADN                            R33 1
      322 LOADN                            R34 0
      323 CALL                             R32 2 1
      324 SETTABLEKS                       R32 R31 K26 ["AnchorPoint"]
      326 GETIMPORT                        R32 K17 [UDim2.new]
      328 LOADN                            R33 0
      329 LOADN                            R34 15
      330 LOADN                            R35 1
      331 LOADN                            R36 0
      332 CALL                             R32 4 1
      333 SETTABLEKS                       R32 R31 K19 ["Size"]
      335 LOADK                            R32 K51 ["::"]
      336 SETTABLEKS                       R32 R31 K27 ["Text"]
      338 LOADK                            R32 K52 ["L"]
      339 SETTABLEKS                       R32 R31 K28 ["ControlId"]
      341 SETTABLEKS                       R5 R31 K29 ["DragTarget"]
      343 SETTABLEKS                       R9 R31 K30 ["OnDragBegan"]
      345 SETTABLEKS                       R13 R31 K47 ["OnDragMoved"]
      347 SETTABLEKS                       R10 R31 K31 ["OnDragEnded"]
      349 CALL                             R29 2 1
      350 SETTABLEKS                       R29 R28 K22 ["LeftButton"]
      352 GETUPVAL                         R29 7
      353 GETTABLEKS                       R29 R29 K14 ["createElement"]
      355 GETUPVAL                         R30 9
      356 DUPTABLE                         R31 K53 [{"Position", "Size", "Text", "ControlId", "DragTarget", "OnDragBegan", "OnDragMoved", "OnDragEnded"}]
      357 GETIMPORT                        R32 K17 [UDim2.new]
      359 LOADN                            R33 1
      360 LOADN                            R34 0
      361 LOADN                            R35 0
      362 LOADN                            R36 0
      363 CALL                             R32 4 1
      364 SETTABLEKS                       R32 R31 K18 ["Position"]
      366 GETIMPORT                        R32 K17 [UDim2.new]
      368 LOADN                            R33 0
      369 LOADN                            R34 15
      370 LOADN                            R35 1
      371 LOADN                            R36 0
      372 CALL                             R32 4 1
      373 SETTABLEKS                       R32 R31 K19 ["Size"]
      375 LOADK                            R32 K51 ["::"]
      376 SETTABLEKS                       R32 R31 K27 ["Text"]
      378 LOADK                            R32 K54 ["R'"]
      379 SETTABLEKS                       R32 R31 K28 ["ControlId"]
      381 SETTABLEKS                       R5 R31 K29 ["DragTarget"]
      383 SETTABLEKS                       R9 R31 K30 ["OnDragBegan"]
      385 SETTABLEKS                       R14 R31 K47 ["OnDragMoved"]
      387 SETTABLEKS                       R10 R31 K31 ["OnDragEnded"]
      389 CALL                             R29 2 1
      390 SETTABLEKS                       R29 R28 K23 ["RightButton"]
      392 CALL                             R25 3 1
      393 SETTABLEKS                       R25 R24 K42 ["Body"]
      395 CALL                             R21 3 1
      396 SETTABLEKS                       R21 R20 K24 ["Inner"]
      398 CALL                             R17 3 -1
      399 RETURN                           R17 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K1 [script]
        7 LOADK                            R3 K3 ["AttenuationCurveEditor"]
        8 NAMECALL                         R1 R1 K4 ["FindFirstAncestor"]
       10 CALL                             R1 2 1
       11 GETIMPORT                        R2 K6 [require]
       13 GETTABLEKS                       R3 R1 K7 ["Packages"]
       15 GETTABLEKS                       R3 R3 K8 ["React"]
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R3 R2 K9 ["useCallback"]
       20 GETTABLEKS                       R4 R2 K10 ["useEffect"]
       22 GETTABLEKS                       R5 R2 K11 ["useRef"]
       24 GETTABLEKS                       R6 R2 K12 ["useState"]
       26 GETIMPORT                        R7 K6 [require]
       28 GETTABLEKS                       R8 R1 K7 ["Packages"]
       30 GETTABLEKS                       R8 R8 K13 ["Framework"]
       32 CALL                             R7 1 1
       33 GETTABLEKS                       R8 R7 K14 ["UI"]
       35 GETTABLEKS                       R8 R8 K15 ["Pane"]
       37 GETIMPORT                        R9 K6 [require]
       39 GETTABLEKS                       R10 R1 K16 ["Src"]
       41 GETTABLEKS                       R10 R10 K17 ["Types"]
       43 CALL                             R9 1 1
       44 GETIMPORT                        R10 K6 [require]
       46 GETTABLEKS                       R11 R0 K18 ["ScrollbarButton"]
       48 CALL                             R10 1 1
       49 GETIMPORT                        R11 K20 [game]
       51 LOADK                            R13 K21 ["RunService"]
       52 NAMECALL                         R11 R11 K22 ["GetService"]
       54 CALL                             R11 2 1
       55 GETIMPORT                        R12 K6 [require]
       57 GETTABLEKS                       R13 R0 K23 ["CurveRenderer"]
       59 GETTABLEKS                       R13 R13 K24 ["PlotRectUtil"]
       61 CALL                             R12 1 1
       62 GETTABLEKS                       R13 R12 K25 ["MIN_ZOOM"]
       64 GETTABLEKS                       R14 R12 K26 ["MAX_ZOOM"]
       66 DUPCLOSURE                       R15 K27 [PROTO_8]
       67 CAPTURE                          VAL R14
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R13
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R11
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R8
       76 CAPTURE                          VAL R10
       77 RETURN                           R15 1
