PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 NAMECALL                         R5 R4 K1 ["Disconnect"]
        8 CALL                             R5 1 0
        9 FORGLOOP                         R0 2 ; [-4]
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+43]
        3 GETUPVAL                         R0 1
        4 LOADNIL                          R1
        5 LOADNIL                          R2
        6 FORGPREP                         R0
        7 GETUPVAL                         R7 0
        8 FASTCALL1                        TYPEOF R7 ; [+2]
        9 GETIMPORT                        R6 K1 [typeof]
       11 CALL                             R6 1 1
       12 JUMPIFNOTEQKS                    R6 K2 ["Instance"] ; [+7]
       14 GETUPVAL                         R5 0
       15 MOVE                             R7 R4
       16 NAMECALL                         R5 R5 K3 ["GetPropertyChangedSignal"]
       18 CALL                             R5 2 1
       19 JUMP                             ; [+5]
       20 GETUPVAL                         R5 0
       21 MOVE                             R7 R4
       22 NAMECALL                         R5 R5 K3 ["GetPropertyChangedSignal"]
       24 CALL                             R5 2 1
       25 GETUPVAL                         R6 2
       26 GETTABLEKS                       R6 R6 K4 ["current"]
       28 GETUPVAL                         R11 3
       29 FASTCALL1                        TYPE R11 ; [+2]
       30 GETIMPORT                        R10 K6 [type]
       32 CALL                             R10 1 1
       33 JUMPIFNOTEQKS                    R10 K7 ["table"] ; [+4]
       35 NEWCLOSURE                       R9 P0
       36 CAPTURE                          UPVAL U3
       37 JUMP                             ; [+1]
       38 GETUPVAL                         R9 3
       39 NAMECALL                         R7 R5 K8 ["Connect"]
       41 CALL                             R7 2 1
       42 SETTABLE                         R7 R6 R4
       43 FORGLOOP                         R0 2 ; [-37]
       45 NEWCLOSURE                       R0 P1
       46 CAPTURE                          UPVAL U2
       47 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["useRef"]
        3 NEWTABLE                         R4 0 0
        5 CALL                             R3 1 1
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K1 ["useLayoutEffect"]
        9 NEWCLOSURE                       R5 P0
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          VAL R3
       13 CAPTURE                          VAL R2
       14 NEWTABLE                         R6 0 2
       16 MOVE                             R7 R0
       17 MOVE                             R8 R2
       18 SETLIST                          R6 R7 2 [1]
       20 CALL                             R4 2 0
       21 RETURN                           R0 0

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 2
        5 JUMPIFNOT                        R0 ; [+2]
        6 GETUPVAL                         R0 3
        7 JUMPIF                           R0 ; [+4]
        8 GETUPVAL                         R0 4
        9 LOADB                            R1 0
       10 CALL                             R0 1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R0 1
       13 GETTABLEKS                       R0 R0 K0 ["AbsolutePosition"]
       15 GETUPVAL                         R1 1
       16 GETTABLEKS                       R1 R1 K1 ["AbsoluteSize"]
       18 GETUPVAL                         R2 2
       19 GETTABLEKS                       R2 R2 K1 ["AbsoluteSize"]
       21 GETUPVAL                         R3 3
       22 GETTABLEKS                       R3 R3 K1 ["AbsoluteSize"]
       24 GETUPVAL                         R4 3
       25 GETTABLEKS                       R4 R4 K0 ["AbsolutePosition"]
       27 GETIMPORT                        R5 K4 [Rect.new]
       29 MOVE                             R6 R0
       30 ADD                              R7 R0 R1
       31 CALL                             R5 2 1
       32 GETIMPORT                        R6 K4 [Rect.new]
       34 MOVE                             R7 R4
       35 ADD                              R8 R4 R3
       36 CALL                             R6 2 1
       37 GETUPVAL                         R7 5
       38 GETTABLEKS                       R7 R7 K5 ["isOnScreen"]
       40 MOVE                             R8 R5
       41 MOVE                             R9 R6
       42 CALL                             R7 2 1
       43 JUMPIF                           R7 ; [+4]
       44 GETUPVAL                         R7 4
       45 LOADB                            R8 0
       46 CALL                             R7 1 0
       47 RETURN                           R0 0
       48 GETUPVAL                         R7 6
       49 GETTABLEKS                       R7 R7 K6 ["FoundationPopoverClipAwareVisibility"]
       51 JUMPIFNOT                        R7 ; [+98]
       52 GETUPVAL                         R7 7
       53 GETTABLEKS                       R7 R7 K7 ["current"]
       55 LOADNIL                          R8
       56 MOVE                             R9 R7
       57 LOADNIL                          R10
       58 LOADNIL                          R11
       59 FORGPREP                         R9
       60 GETIMPORT                        R14 K4 [Rect.new]
       62 GETTABLEKS                       R15 R13 K0 ["AbsolutePosition"]
       64 GETTABLEKS                       R17 R13 K0 ["AbsolutePosition"]
       66 GETTABLEKS                       R18 R13 K1 ["AbsoluteSize"]
       68 ADD                              R16 R17 R18
       69 CALL                             R14 2 1
       70 JUMPIFNOTEQKNIL                  R8 ; [+3]
       72 MOVE                             R8 R14
       73 JUMP                             ; [+62]
       74 GETIMPORT                        R15 K4 [Rect.new]
       76 GETIMPORT                        R16 K9 [Vector2.new]
       78 GETTABLEKS                       R18 R8 K10 ["Min"]
       80 GETTABLEKS                       R18 R18 K11 ["X"]
       82 GETTABLEKS                       R19 R14 K10 ["Min"]
       84 GETTABLEKS                       R19 R19 K11 ["X"]
       86 FASTCALL2                        MATH_MAX R18 R19 ; [+3]
       88 GETIMPORT                        R17 K14 [math.max]
       90 CALL                             R17 2 1
       91 GETTABLEKS                       R19 R8 K10 ["Min"]
       93 GETTABLEKS                       R19 R19 K15 ["Y"]
       95 GETTABLEKS                       R20 R14 K10 ["Min"]
       97 GETTABLEKS                       R20 R20 K15 ["Y"]
       99 FASTCALL2                        MATH_MAX R19 R20 ; [+3]
      101 GETIMPORT                        R18 K14 [math.max]
      103 CALL                             R18 2 1
      104 CALL                             R16 2 1
      105 GETIMPORT                        R17 K9 [Vector2.new]
      107 GETTABLEKS                       R19 R8 K16 ["Max"]
      109 GETTABLEKS                       R19 R19 K11 ["X"]
      111 GETTABLEKS                       R20 R14 K16 ["Max"]
      113 GETTABLEKS                       R20 R20 K11 ["X"]
      115 FASTCALL2                        MATH_MIN R19 R20 ; [+3]
      117 GETIMPORT                        R18 K18 [math.min]
      119 CALL                             R18 2 1
      120 GETTABLEKS                       R20 R8 K16 ["Max"]
      122 GETTABLEKS                       R20 R20 K15 ["Y"]
      124 GETTABLEKS                       R21 R14 K16 ["Max"]
      126 GETTABLEKS                       R21 R21 K15 ["Y"]
      128 FASTCALL2                        MATH_MIN R20 R21 ; [+3]
      130 GETIMPORT                        R19 K18 [math.min]
      132 CALL                             R19 2 1
      133 CALL                             R17 2 -1
      134 CALL                             R15 -1 1
      135 MOVE                             R8 R15
      136 FORGLOOP                         R9 2 ; [-77]
      138 JUMPIFNOT                        R8 ; [+11]
      139 GETUPVAL                         R9 5
      140 GETTABLEKS                       R9 R9 K5 ["isOnScreen"]
      142 MOVE                             R10 R5
      143 MOVE                             R11 R8
      144 CALL                             R9 2 1
      145 JUMPIF                           R9 ; [+4]
      146 GETUPVAL                         R9 4
      147 LOADB                            R10 0
      148 CALL                             R9 1 0
      149 RETURN                           R0 0
      150 GETUPVAL                         R9 8
      151 FASTCALL1                        TYPE R9 ; [+2]
      152 GETIMPORT                        R8 K20 [type]
      154 CALL                             R8 1 1
      155 JUMPIFNOTEQKS                    R8 K21 ["table"] ; [+5]
      157 GETUPVAL                         R7 8
      158 GETTABLEKS                       R7 R7 K22 ["position"]
      160 JUMP                             ; [+1]
      161 GETUPVAL                         R7 8
      162 GETUPVAL                         R10 8
      163 FASTCALL1                        TYPE R10 ; [+2]
      164 GETIMPORT                        R9 K20 [type]
      166 CALL                             R9 1 1
      167 JUMPIFNOTEQKS                    R9 K21 ["table"] ; [+5]
      169 GETUPVAL                         R8 8
      170 GETTABLEKS                       R8 R8 K23 ["offset"]
      172 JUMP                             ; [+1]
      173 LOADN                            R8 0
      174 GETUPVAL                         R9 9
      175 LOADN                            R10 0
      176 GETUPVAL                         R12 9
      177 FASTCALL1                        TYPE R12 ; [+2]
      178 GETIMPORT                        R11 K20 [type]
      180 CALL                             R11 1 1
      181 JUMPIFNOTEQKS                    R11 K21 ["table"] ; [+7]
      183 GETUPVAL                         R11 9
      184 GETTABLEKS                       R9 R11 K22 ["position"]
      186 GETUPVAL                         R11 9
      187 GETTABLEKS                       R10 R11 K23 ["offset"]
      189 GETUPVAL                         R12 10
      190 ORK                              R11 R12 K24 [0]
      191 GETUPVAL                         R12 5
      192 GETTABLEKS                       R12 R12 K25 ["calculatePopoverBounds"]
      194 MOVE                             R13 R7
      195 MOVE                             R14 R8
      196 MOVE                             R15 R10
      197 MOVE                             R16 R11
      198 MOVE                             R17 R2
      199 CALL                             R12 5 1
      200 GETUPVAL                         R13 5
      201 GETTABLEKS                       R13 R13 K26 ["calculateSide"]
      203 MOVE                             R14 R7
      204 MOVE                             R15 R5
      205 MOVE                             R16 R6
      206 MOVE                             R17 R12
      207 CALL                             R13 4 1
      208 MOVE                             R7 R13
      209 GETUPVAL                         R13 5
      210 GETTABLEKS                       R13 R13 K27 ["calculatePositions"]
      212 MOVE                             R14 R7
      213 MOVE                             R15 R8
      214 MOVE                             R16 R9
      215 MOVE                             R17 R10
      216 MOVE                             R18 R5
      217 MOVE                             R19 R6
      218 MOVE                             R20 R11
      219 MOVE                             R21 R2
      220 CALL                             R13 8 3
      221 GETUPVAL                         R16 11
      222 GETIMPORT                        R17 K30 [UDim2.fromOffset]
      224 GETTABLEKS                       R18 R2 K11 ["X"]
      226 GETTABLEKS                       R19 R2 K15 ["Y"]
      228 CALL                             R17 2 -1
      229 CALL                             R16 -1 0
      230 GETUPVAL                         R16 12
      231 MOVE                             R17 R3
      232 CALL                             R16 1 0
      233 GETUPVAL                         R16 13
      234 ADD                              R17 R14 R13
      235 CALL                             R16 1 0
      236 GETUPVAL                         R16 14
      237 MOVE                             R17 R13
      238 CALL                             R16 1 0
      239 GETUPVAL                         R16 15
      240 MOVE                             R17 R15
      241 CALL                             R16 1 0
      242 GETUPVAL                         R16 4
      243 LOADB                            R17 1
      244 CALL                             R16 1 0
      245 GETUPVAL                         R16 2
      246 GETTABLEKS                       R16 R16 K0 ["AbsolutePosition"]
      248 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 0
        6 LOADB                            R1 1
        7 SETTABLEKS                       R1 R0 K0 ["current"]
        9 GETIMPORT                        R0 K3 [task.defer]
       11 NEWCLOSURE                       R1 P0
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          UPVAL U1
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 GETIMPORT                        R0 K3 [table.clear]
       11 GETUPVAL                         R1 0
       12 CALL                             R0 1 0
       13 NEWTABLE                         R0 0 0
       15 GETUPVAL                         R1 1
       16 GETTABLEKS                       R1 R1 K4 ["Parent"]
       18 JUMPIFNOT                        R1 ; [+46]
       19 LOADK                            R4 K5 ["GuiObject"]
       20 NAMECALL                         R2 R1 K6 ["IsA"]
       22 CALL                             R2 2 1
       23 JUMPIFNOT                        R2 ; [+41]
       24 GETTABLEKS                       R2 R1 K7 ["ClipsDescendants"]
       26 JUMPIFNOT                        R2 ; [+35]
       27 FASTCALL2                        TABLE_INSERT R0 R1 ; [+5]
       29 MOVE                             R3 R0
       30 MOVE                             R4 R1
       31 GETIMPORT                        R2 K9 [table.insert]
       33 CALL                             R2 2 0
       34 GETUPVAL                         R3 0
       35 LOADK                            R6 K10 ["AbsolutePosition"]
       36 NAMECALL                         R4 R1 K11 ["GetPropertyChangedSignal"]
       38 CALL                             R4 2 1
       39 NEWCLOSURE                       R6 P0
       40 CAPTURE                          UPVAL U2
       41 NAMECALL                         R4 R4 K12 ["Connect"]
       43 CALL                             R4 2 -1
       44 FASTCALL                         TABLE_INSERT ; [+2]
       45 GETIMPORT                        R2 K9 [table.insert]
       47 CALL                             R2 -1 0
       48 GETUPVAL                         R3 0
       49 LOADK                            R6 K13 ["AbsoluteSize"]
       50 NAMECALL                         R4 R1 K11 ["GetPropertyChangedSignal"]
       52 CALL                             R4 2 1
       53 NEWCLOSURE                       R6 P1
       54 CAPTURE                          UPVAL U2
       55 NAMECALL                         R4 R4 K12 ["Connect"]
       57 CALL                             R4 2 -1
       58 FASTCALL                         TABLE_INSERT ; [+2]
       59 GETIMPORT                        R2 K9 [table.insert]
       61 CALL                             R2 -1 0
       62 GETTABLEKS                       R1 R1 K4 ["Parent"]
       64 JUMPBACK                         ; [-47]
       65 GETUPVAL                         R2 3
       66 SETTABLEKS                       R0 R2 K14 ["current"]
       68 LENGTH                           R2 R0
       69 LOADN                            R3 0
       70 JUMPIFNOTLT                      R3 R2 ; [+5]
       72 GETUPVAL                         R2 2
       73 GETTABLEKS                       R2 R2 K14 ["current"]
       75 CALL                             R2 0 0
       76 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 LOADNIL                          R1
        6 LOADNIL                          R2
        7 FORGPREP                         R0
        8 NAMECALL                         R5 R4 K0 ["Disconnect"]
       10 CALL                             R5 1 0
       11 FORGLOOP                         R0 2 ; [-4]
       13 GETUPVAL                         R0 2
       14 NEWTABLE                         R1 0 0
       16 SETTABLEKS                       R1 R0 K1 ["current"]
       18 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 1
        4 FASTCALL1                        TYPEOF R1 ; [+2]
        5 GETIMPORT                        R0 K1 [typeof]
        7 CALL                             R0 1 1
        8 JUMPIFNOTEQKS                    R0 K2 ["Instance"] ; [+7]
       10 GETUPVAL                         R0 1
       11 LOADK                            R2 K3 ["GuiObject"]
       12 NAMECALL                         R0 R0 K4 ["IsA"]
       14 CALL                             R0 2 1
       15 JUMPIF                           R0 ; [+1]
       16 RETURN                           R0 0
       17 GETUPVAL                         R0 1
       18 GETUPVAL                         R1 2
       19 NEWTABLE                         R2 0 0
       21 NEWCLOSURE                       R3 P0
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          VAL R1
       26 MOVE                             R4 R3
       27 CALL                             R4 0 0
       28 GETTABLEKS                       R4 R0 K5 ["AncestryChanged"]
       30 MOVE                             R6 R3
       31 NAMECALL                         R4 R4 K6 ["Connect"]
       33 CALL                             R4 2 1
       34 NEWCLOSURE                       R5 P1
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R1
       38 RETURN                           R5 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R7 0
        1 GETTABLEKS                       R7 R7 K0 ["useBinding"]
        3 GETIMPORT                        R8 K3 [Vector2.new]
        5 CALL                             R8 0 -1
        6 CALL                             R7 -1 2
        7 GETUPVAL                         R9 0
        8 GETTABLEKS                       R9 R9 K0 ["useBinding"]
       10 LOADB                            R10 1
       11 CALL                             R9 1 2
       12 GETUPVAL                         R11 0
       13 GETTABLEKS                       R11 R11 K0 ["useBinding"]
       15 GETIMPORT                        R12 K5 [UDim2.new]
       17 CALL                             R12 0 -1
       18 CALL                             R11 -1 2
       19 GETUPVAL                         R13 0
       20 GETTABLEKS                       R13 R13 K0 ["useBinding"]
       22 GETIMPORT                        R14 K3 [Vector2.new]
       24 CALL                             R14 0 -1
       25 CALL                             R13 -1 2
       26 GETUPVAL                         R15 0
       27 GETTABLEKS                       R15 R15 K0 ["useBinding"]
       29 GETIMPORT                        R16 K3 [Vector2.new]
       31 CALL                             R16 0 -1
       32 CALL                             R15 -1 2
       33 GETUPVAL                         R17 0
       34 GETTABLEKS                       R17 R17 K0 ["useBinding"]
       36 GETIMPORT                        R18 K3 [Vector2.new]
       38 LOADN                            R19 0
       39 LOADN                            R20 0
       40 CALL                             R18 2 -1
       41 CALL                             R17 -1 2
       42 GETUPVAL                         R19 0
       43 GETTABLEKS                       R19 R19 K6 ["useRef"]
       45 DUPCLOSURE                       R20 K7 [PROTO_4]
       46 CALL                             R19 1 1
       47 GETUPVAL                         R21 1
       48 GETTABLEKS                       R21 R21 K8 ["FoundationPopoverClipAwareVisibility"]
       50 JUMPIFNOT                        R21 ; [+7]
       51 GETUPVAL                         R20 0
       52 GETTABLEKS                       R20 R20 K6 ["useRef"]
       54 NEWTABLE                         R21 0 0
       56 CALL                             R20 1 1
       57 JUMP                             ; [+1]
       58 LOADNIL                          R20
       59 GETUPVAL                         R22 1
       60 GETTABLEKS                       R22 R22 K8 ["FoundationPopoverClipAwareVisibility"]
       62 JUMPIFNOT                        R22 ; [+6]
       63 GETUPVAL                         R21 0
       64 GETTABLEKS                       R21 R21 K6 ["useRef"]
       66 LOADB                            R22 0
       67 CALL                             R21 1 1
       68 JUMP                             ; [+1]
       69 LOADNIL                          R21
       70 GETUPVAL                         R22 0
       71 GETTABLEKS                       R22 R22 K9 ["useCallback"]
       73 NEWCLOSURE                       R23 P1
       74 CAPTURE                          VAL R0
       75 CAPTURE                          VAL R1
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R10
       79 CAPTURE                          UPVAL U2
       80 CAPTURE                          UPVAL U1
       81 CAPTURE                          VAL R20
       82 CAPTURE                          VAL R4
       83 CAPTURE                          VAL R5
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R12
       86 CAPTURE                          VAL R14
       87 CAPTURE                          VAL R16
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R18
       90 NEWTABLE                         R24 0 7
       92 MOVE                             R25 R0
       93 MOVE                             R26 R1
       94 MOVE                             R27 R2
       95 MOVE                             R28 R3
       96 MOVE                             R29 R4
       97 MOVE                             R30 R5
       98 MOVE                             R31 R6
       99 SETLIST                          R24 R25 7 [1]
      101 CALL                             R22 2 1
      102 GETUPVAL                         R23 1
      103 GETTABLEKS                       R23 R23 K8 ["FoundationPopoverClipAwareVisibility"]
      105 JUMPIFNOT                        R23 ; [+6]
      106 NEWCLOSURE                       R23 P2
      107 CAPTURE                          VAL R21
      108 CAPTURE                          VAL R22
      109 SETTABLEKS                       R23 R19 K10 ["current"]
      111 JUMP                             ; [+2]
      112 SETTABLEKS                       R22 R19 K10 ["current"]
      114 GETUPVAL                         R23 3
      115 MOVE                             R24 R1
      116 NEWTABLE                         R25 0 2
      118 LOADK                            R26 K11 ["AbsolutePosition"]
      119 LOADK                            R27 K12 ["AbsoluteSize"]
      120 SETLIST                          R25 R26 2 [1]
      122 MOVE                             R26 R19
      123 CALL                             R23 3 0
      124 GETUPVAL                         R23 3
      125 MOVE                             R24 R2
      126 NEWTABLE                         R25 0 1
      128 LOADK                            R26 K12 ["AbsoluteSize"]
      129 SETLIST                          R25 R26 1 [1]
      131 MOVE                             R26 R19
      132 CALL                             R23 3 0
      133 GETUPVAL                         R23 3
      134 MOVE                             R24 R3
      135 NEWTABLE                         R25 0 1
      137 LOADK                            R26 K12 ["AbsoluteSize"]
      138 SETLIST                          R25 R26 1 [1]
      140 MOVE                             R26 R19
      141 CALL                             R23 3 0
      142 GETUPVAL                         R23 1
      143 GETTABLEKS                       R23 R23 K8 ["FoundationPopoverClipAwareVisibility"]
      145 JUMPIFNOT                        R23 ; [+15]
      146 GETUPVAL                         R23 0
      147 GETTABLEKS                       R23 R23 K13 ["useLayoutEffect"]
      149 NEWCLOSURE                       R24 P3
      150 CAPTURE                          VAL R0
      151 CAPTURE                          VAL R1
      152 CAPTURE                          VAL R20
      153 CAPTURE                          VAL R19
      154 NEWTABLE                         R25 0 2
      156 MOVE                             R26 R1
      157 MOVE                             R27 R0
      158 SETLIST                          R25 R26 2 [1]
      160 CALL                             R23 2 0
      161 GETUPVAL                         R23 0
      162 GETTABLEKS                       R23 R23 K13 ["useLayoutEffect"]
      164 NEWCLOSURE                       R24 P4
      165 CAPTURE                          VAL R22
      166 NEWTABLE                         R25 0 1
      168 MOVE                             R26 R22
      169 SETLIST                          R25 R26 1 [1]
      171 CALL                             R23 2 0
      172 MOVE                             R23 R7
      173 MOVE                             R24 R9
      174 MOVE                             R25 R11
      175 MOVE                             R26 R15
      176 MOVE                             R27 R13
      177 MOVE                             R28 R17
      178 RETURN                           R23 6

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Utility"]
       13 GETTABLEKS                       R3 R3 K8 ["Flags"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Enums"]
       20 GETTABLEKS                       R4 R4 K10 ["PopoverAlign"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K9 ["Enums"]
       27 GETTABLEKS                       R5 R5 K11 ["PopoverSide"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R1 K12 ["React"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETIMPORT                        R7 K1 [script]
       39 GETTABLEKS                       R7 R7 K4 ["Parent"]
       41 GETTABLEKS                       R7 R7 K13 ["positioning"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R8 R0 K14 ["Components"]
       48 GETTABLEKS                       R8 R8 K15 ["Types"]
       50 CALL                             R7 1 1
       51 DUPCLOSURE                       R8 K16 [PROTO_3]
       52 CAPTURE                          VAL R5
       53 DUPCLOSURE                       R9 K17 [PROTO_14]
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R8
       58 RETURN                           R9 1
