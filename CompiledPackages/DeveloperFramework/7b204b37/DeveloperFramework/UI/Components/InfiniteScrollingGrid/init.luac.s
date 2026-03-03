PROTO_0:
        0 RETURN                           R0 1

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K2 [{"Size"}]
        5 GETIMPORT                        R3 K5 [UDim2.fromScale]
        7 LOADN                            R4 1
        8 LOADN                            R5 1
        9 CALL                             R3 2 1
       10 SETTABLEKS                       R3 R2 K1 ["Size"]
       12 CALL                             R0 2 -1
       13 RETURN                           R0 -1

PROTO_4:
        0 GETTABLEKS                       R3 R1 K0 ["X"]
        2 JUMPIFNOTEQKN                    R3 K1 [0] ; [+3]
        4 LOADN                            R3 0
        5 RETURN                           R3 1
        6 GETTABLEKS                       R6 R0 K0 ["X"]
        8 GETTABLEKS                       R7 R2 K0 ["X"]
       10 ADD                              R5 R6 R7
       11 GETTABLEKS                       R6 R1 K0 ["X"]
       13 DIV                              R4 R5 R6
       14 FASTCALL1                        MATH_FLOOR R4 ; [+2]
       15 GETIMPORT                        R3 K4 [math.floor]
       17 CALL                             R3 1 1
       18 RETURN                           R3 1

PROTO_5:
        0 GETIMPORT                        R2 K2 [Vector2.new]
        2 GETTABLEKS                       R6 R0 K3 ["X"]
        4 GETTABLEKS                       R5 R6 K4 ["Scale"]
        6 GETTABLEKS                       R6 R1 K3 ["X"]
        8 MUL                              R4 R5 R6
        9 GETTABLEKS                       R6 R0 K3 ["X"]
       11 GETTABLEKS                       R5 R6 K5 ["Offset"]
       13 ADD                              R3 R4 R5
       14 GETTABLEKS                       R7 R0 K6 ["Y"]
       16 GETTABLEKS                       R6 R7 K4 ["Scale"]
       18 GETTABLEKS                       R7 R1 K6 ["Y"]
       20 MUL                              R5 R6 R7
       21 GETTABLEKS                       R7 R0 K6 ["Y"]
       23 GETTABLEKS                       R6 R7 K5 ["Offset"]
       25 ADD                              R4 R5 R6
       26 CALL                             R2 2 -1
       27 RETURN                           R2 -1

PROTO_6:
        0 GETIMPORT                        R3 K2 [Vector2.new]
        2 GETTABLEKS                       R8 R0 K3 ["X"]
        4 GETTABLEKS                       R7 R8 K4 ["Scale"]
        6 GETTABLEKS                       R9 R1 K3 ["X"]
        8 GETTABLEKS                       R8 R9 K4 ["Scale"]
       10 ADD                              R6 R7 R8
       11 GETTABLEKS                       R7 R2 K3 ["X"]
       13 MUL                              R5 R6 R7
       14 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       15 GETIMPORT                        R4 K7 [math.floor]
       17 CALL                             R4 1 1
       18 GETTABLEKS                       R9 R0 K8 ["Y"]
       20 GETTABLEKS                       R8 R9 K4 ["Scale"]
       22 GETTABLEKS                       R10 R1 K8 ["Y"]
       24 GETTABLEKS                       R9 R10 K4 ["Scale"]
       26 ADD                              R7 R8 R9
       27 GETTABLEKS                       R8 R2 K8 ["Y"]
       29 MUL                              R6 R7 R8
       30 FASTCALL1                        MATH_FLOOR R6 ; [+2]
       31 GETIMPORT                        R5 K7 [math.floor]
       33 CALL                             R5 1 1
       34 CALL                             R3 2 1
       35 GETIMPORT                        R4 K2 [Vector2.new]
       37 GETTABLEKS                       R7 R3 K3 ["X"]
       39 GETTABLEKS                       R9 R0 K3 ["X"]
       41 GETTABLEKS                       R8 R9 K9 ["Offset"]
       43 ADD                              R6 R7 R8
       44 GETTABLEKS                       R8 R1 K3 ["X"]
       46 GETTABLEKS                       R7 R8 K9 ["Offset"]
       48 ADD                              R5 R6 R7
       49 GETTABLEKS                       R8 R3 K8 ["Y"]
       51 GETTABLEKS                       R10 R0 K8 ["Y"]
       53 GETTABLEKS                       R9 R10 K9 ["Offset"]
       55 ADD                              R7 R8 R9
       56 GETTABLEKS                       R9 R1 K8 ["Y"]
       58 GETTABLEKS                       R8 R9 K9 ["Offset"]
       60 ADD                              R6 R7 R8
       61 CALL                             R4 2 -1
       62 RETURN                           R4 -1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K1 ["state"]
        6 GETTABLEKS                       R4 R3 K2 ["canvasPosition"]
        8 JUMPIFNOT                        R4 ; [+18]
        9 JUMPIF                           R1 ; [+17]
       10 GETTABLEKS                       R4 R0 K3 ["X"]
       12 GETTABLEKS                       R6 R3 K2 ["canvasPosition"]
       14 GETTABLEKS                       R5 R6 K3 ["X"]
       16 JUMPIFNOTEQ                      R4 R5 ; [+10]
       18 GETTABLEKS                       R4 R0 K4 ["Y"]
       20 GETTABLEKS                       R6 R3 K2 ["canvasPosition"]
       22 GETTABLEKS                       R5 R6 K4 ["Y"]
       24 JUMPIFNOTEQ                      R4 R5 ; [+2]
       26 RETURN                           R0 0
       27 GETTABLEKS                       R4 R2 K5 ["AbsoluteMax"]
       29 GETTABLEKS                       R5 R2 K6 ["AbsoluteSize"]
       31 GETTABLEKS                       R6 R2 K7 ["BufferedRows"]
       33 GETTABLEKS                       R7 R2 K8 ["CellSize"]
       35 GETTABLEKS                       R8 R2 K9 ["CellPadding"]
       37 GETUPVAL                         R9 1
       38 MOVE                             R10 R7
       39 MOVE                             R11 R8
       40 MOVE                             R12 R5
       41 CALL                             R9 3 1
       42 GETIMPORT                        R10 K12 [Vector2.new]
       44 GETTABLEKS                       R14 R8 K3 ["X"]
       46 GETTABLEKS                       R13 R14 K13 ["Scale"]
       48 GETTABLEKS                       R14 R5 K3 ["X"]
       50 MUL                              R12 R13 R14
       51 GETTABLEKS                       R14 R8 K3 ["X"]
       53 GETTABLEKS                       R13 R14 K14 ["Offset"]
       55 ADD                              R11 R12 R13
       56 GETTABLEKS                       R15 R8 K4 ["Y"]
       58 GETTABLEKS                       R14 R15 K13 ["Scale"]
       60 GETTABLEKS                       R15 R5 K4 ["Y"]
       62 MUL                              R13 R14 R15
       63 GETTABLEKS                       R15 R8 K4 ["Y"]
       65 GETTABLEKS                       R14 R15 K14 ["Offset"]
       67 ADD                              R12 R13 R14
       68 CALL                             R10 2 1
       69 GETTABLEKS                       R15 R0 K4 ["Y"]
       71 GETTABLEKS                       R16 R9 K4 ["Y"]
       73 DIV                              R14 R15 R16
       74 FASTCALL1                        MATH_FLOOR R14 ; [+2]
       75 GETIMPORT                        R13 K17 [math.floor]
       77 CALL                             R13 1 1
       78 SUB                              R12 R13 R6
       79 FASTCALL2K                       MATH_MAX R12 K18 ; [+4]
       81 LOADK                            R13 K18 [0]
       82 GETIMPORT                        R11 K20 [math.max]
       84 CALL                             R11 2 1
       85 GETTABLEKS                       R16 R0 K4 ["Y"]
       87 GETTABLEKS                       R17 R5 K4 ["Y"]
       89 ADD                              R15 R16 R17
       90 GETTABLEKS                       R16 R9 K4 ["Y"]
       92 DIV                              R14 R15 R16
       93 FASTCALL1                        MATH_FLOOR R14 ; [+2]
       94 GETIMPORT                        R13 K17 [math.floor]
       96 CALL                             R13 1 1
       97 ADD                              R12 R13 R6
       98 GETTABLEKS                       R14 R9 K3 ["X"]
      100 JUMPIFNOTEQKN                    R14 K18 [0] ; [+3]
      102 LOADN                            R13 0
      103 JUMP                             ; [+13]
      104 GETTABLEKS                       R16 R5 K3 ["X"]
      106 GETTABLEKS                       R17 R10 K3 ["X"]
      108 ADD                              R15 R16 R17
      109 GETTABLEKS                       R16 R9 K3 ["X"]
      111 DIV                              R14 R15 R16
      112 FASTCALL1                        MATH_FLOOR R14 ; [+2]
      113 GETIMPORT                        R13 K17 [math.floor]
      115 CALL                             R13 1 1
      116 JUMP                             ; [0]
      117 SUB                              R14 R12 R11
      118 MUL                              R16 R13 R11
      119 ADDK                             R15 R16 K21 [1]
      120 MUL                              R16 R13 R12
      121 GETTABLEKS                       R17 R3 K22 ["minItemIndex"]
      123 JUMPIFNOTEQ                      R15 R17 ; [+5]
      125 GETTABLEKS                       R17 R3 K23 ["maxItemIndex"]
      127 JUMPIFEQ                         R16 R17 ; [+100]
      129 GETTABLEKS                       R17 R2 K24 ["LoadRange"]
      131 MOVE                             R18 R15
      132 SUB                              R20 R16 R15
      133 ADDK                             R19 R20 K21 [1]
      134 CALL                             R17 2 0
      135 MOVE                             R17 R15
      136 MOVE                             R18 R16
      137 DIV                              R20 R4 R13
      138 FASTCALL1                        MATH_FLOOR R20 ; [+2]
      139 GETIMPORT                        R19 K17 [math.floor]
      141 CALL                             R19 1 1
      142 JUMPIFNOTLT                      R19 R12 ; [+15]
      144 DIV                              R21 R4 R13
      145 FASTCALL1                        MATH_FLOOR R21 ; [+2]
      146 GETIMPORT                        R20 K17 [math.floor]
      148 CALL                             R20 1 1
      149 MOVE                             R12 R20
      150 SUB                              R21 R12 R14
      151 FASTCALL2K                       MATH_MAX R21 K18 ; [+4]
      153 LOADK                            R22 K18 [0]
      154 GETIMPORT                        R20 K20 [math.max]
      156 CALL                             R20 2 1
      157 MOVE                             R11 R20
      158 MUL                              R20 R13 R11
      159 ADDK                             R15 R20 K21 [1]
      160 MUL                              R20 R13 R12
      161 MOD                              R21 R4 R13
      162 ADD                              R16 R20 R21
      163 GETTABLEKS                       R21 R3 K22 ["minItemIndex"]
      165 ORK                              R20 R21 K21 [1]
      166 GETTABLEKS                       R22 R3 K23 ["maxItemIndex"]
      168 ORK                              R21 R22 K21 [1]
      169 JUMPIFNOTLT                      R20 R15 ; [+11]
      171 MOVE                             R24 R20
      172 MOVE                             R22 R15
      173 LOADN                            R23 1
      174 FORNPREP                         R22
      175 GETUPVAL                         R26 0
      176 GETTABLEKS                       R25 R26 K25 ["itemElements"]
      178 LOADNIL                          R26
      179 SETTABLE                         R26 R25 R24
      180 FORNLOOP                         R22
      181 JUMPIFNOTLT                      R16 R21 ; [+11]
      183 MOVE                             R24 R16
      184 MOVE                             R22 R21
      185 LOADN                            R23 1
      186 FORNPREP                         R22
      187 GETUPVAL                         R26 0
      188 GETTABLEKS                       R25 R26 K25 ["itemElements"]
      190 LOADNIL                          R26
      191 SETTABLE                         R26 R25 R24
      192 FORNLOOP                         R22
      193 GETTABLEKS                       R22 R3 K22 ["minItemIndex"]
      195 JUMPIFNOTEQ                      R15 R22 ; [+9]
      197 GETTABLEKS                       R22 R3 K23 ["maxItemIndex"]
      199 JUMPIFNOTEQ                      R16 R22 ; [+5]
      201 JUMPIFNOTEQ                      R17 R17 ; [+3]
      203 JUMPIFEQ                         R18 R18 ; [+24]
      205 GETUPVAL                         R22 0
      206 DUPTABLE                         R24 K32 [{"absoluteSize", "canvasPosition", "cellsPerRow", "maxItemIndex", "maxRowIndex", "minItemIndex", "minRowIndex", "targetMaxItemIndex", "targetMinItemIndex"}]
      207 SETTABLEKS                       R5 R24 K26 ["absoluteSize"]
      209 SETTABLEKS                       R0 R24 K2 ["canvasPosition"]
      211 SETTABLEKS                       R13 R24 K27 ["cellsPerRow"]
      213 SETTABLEKS                       R16 R24 K23 ["maxItemIndex"]
      215 SETTABLEKS                       R12 R24 K28 ["maxRowIndex"]
      217 SETTABLEKS                       R15 R24 K22 ["minItemIndex"]
      219 SETTABLEKS                       R11 R24 K29 ["minRowIndex"]
      221 SETTABLEKS                       R18 R24 K30 ["targetMaxItemIndex"]
      223 SETTABLEKS                       R17 R24 K31 ["targetMinItemIndex"]
      225 NAMECALL                         R22 R22 K33 ["setState"]
      227 CALL                             R22 2 0
      228 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["state"]
        6 GETTABLEKS                       R2 R0 K2 ["Items"]
        8 GETTABLEKS                       R3 R0 K3 ["AbsoluteMax"]
       10 GETTABLEKS                       R4 R1 K4 ["minItemIndex"]
       12 GETTABLEKS                       R5 R1 K5 ["maxItemIndex"]
       14 GETTABLEKS                       R6 R1 K6 ["targetMinItemIndex"]
       16 GETTABLEKS                       R7 R1 K7 ["targetMaxItemIndex"]
       18 GETTABLEKS                       R13 R1 K8 ["cellsPerRow"]
       20 MOD                              R12 R3 R13
       21 SUB                              R11 R3 R12
       22 SUB                              R12 R7 R6
       23 SUB                              R10 R11 R12
       24 FASTCALL2                        MATH_MIN R6 R10 ; [+4]
       26 MOVE                             R9 R6
       27 GETIMPORT                        R8 K11 [math.min]
       29 CALL                             R8 2 1
       30 FASTCALL2                        MATH_MIN R7 R3 ; [+5]
       32 MOVE                             R10 R7
       33 MOVE                             R11 R3
       34 GETIMPORT                        R9 K11 [math.min]
       36 CALL                             R9 2 1
       37 MOVE                             R12 R4
       38 MOVE                             R10 R8
       39 LOADN                            R11 255
       40 FORNPREP                         R10
       41 GETTABLE                         R13 R2 R12
       42 JUMPIF                           R13 ; [+1]
       43 RETURN                           R0 0
       44 FORNLOOP                         R10
       45 MOVE                             R12 R5
       46 MOVE                             R10 R9
       47 LOADN                            R11 1
       48 FORNPREP                         R10
       49 GETTABLE                         R13 R2 R12
       50 JUMPIF                           R13 ; [+1]
       51 RETURN                           R0 0
       52 FORNLOOP                         R10
       53 GETUPVAL                         R10 0
       54 DUPTABLE                         R12 K12 [{"maxItemIndex", "minItemIndex", "targetMaxItemIndex", "targetMinItemIndex"}]
       55 SETTABLEKS                       R9 R12 K5 ["maxItemIndex"]
       57 SETTABLEKS                       R8 R12 K4 ["minItemIndex"]
       59 SETTABLEKS                       R9 R12 K7 ["targetMaxItemIndex"]
       61 SETTABLEKS                       R8 R12 K6 ["targetMinItemIndex"]
       63 NAMECALL                         R10 R10 K13 ["setState"]
       65 CALL                             R10 2 0
       66 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["OnScrollUpdate"]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 0
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K2 ["onUpdateView"]
       10 MOVE                             R3 R0
       11 LOADB                            R4 0
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_10:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["itemElements"]
        4 NEWTABLE                         R1 0 0
        6 SETTABLEKS                       R1 R0 K1 ["itemKeys"]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K2 ["createRef"]
       11 CALL                             R1 0 1
       12 SETTABLEKS                       R1 R0 K3 ["scrollingFrameRef"]
       14 NEWCLOSURE                       R1 P0
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U1
       17 SETTABLEKS                       R1 R0 K4 ["onUpdateView"]
       19 NEWCLOSURE                       R1 P1
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R1 R0 K5 ["onBoundsUpdated"]
       23 NEWCLOSURE                       R1 P2
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R1 R0 K6 ["onScrollUpdate"]
       27 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R0 K1 ["state"]
        4 GETTABLEKS                       R4 R2 K2 ["AbsoluteSize"]
        6 GETTABLEKS                       R5 R2 K3 ["CellPadding"]
        8 GETTABLEKS                       R6 R2 K4 ["CellSize"]
       10 GETUPVAL                         R7 0
       11 MOVE                             R8 R6
       12 MOVE                             R9 R5
       13 MOVE                             R10 R4
       14 CALL                             R7 3 1
       15 GETIMPORT                        R8 K7 [Vector2.new]
       17 GETTABLEKS                       R12 R5 K8 ["X"]
       19 GETTABLEKS                       R11 R12 K9 ["Scale"]
       21 GETTABLEKS                       R12 R4 K8 ["X"]
       23 MUL                              R10 R11 R12
       24 GETTABLEKS                       R12 R5 K8 ["X"]
       26 GETTABLEKS                       R11 R12 K10 ["Offset"]
       28 ADD                              R9 R10 R11
       29 GETTABLEKS                       R13 R5 K11 ["Y"]
       31 GETTABLEKS                       R12 R13 K9 ["Scale"]
       33 GETTABLEKS                       R13 R4 K11 ["Y"]
       35 MUL                              R11 R12 R13
       36 GETTABLEKS                       R13 R5 K11 ["Y"]
       38 GETTABLEKS                       R12 R13 K10 ["Offset"]
       40 ADD                              R10 R11 R12
       41 CALL                             R8 2 1
       42 GETTABLEKS                       R10 R7 K8 ["X"]
       44 JUMPIFNOTEQKN                    R10 K12 [0] ; [+3]
       46 LOADN                            R9 0
       47 JUMP                             ; [+13]
       48 GETTABLEKS                       R12 R4 K8 ["X"]
       50 GETTABLEKS                       R13 R8 K8 ["X"]
       52 ADD                              R11 R12 R13
       53 GETTABLEKS                       R12 R7 K8 ["X"]
       55 DIV                              R10 R11 R12
       56 FASTCALL1                        MATH_FLOOR R10 ; [+2]
       57 GETIMPORT                        R9 K15 [math.floor]
       59 CALL                             R9 1 1
       60 JUMP                             ; [0]
       61 LOADB                            R10 1
       62 GETTABLEKS                       R13 R1 K4 ["CellSize"]
       64 GETTABLEKS                       R12 R13 K8 ["X"]
       66 GETTABLEKS                       R11 R12 K10 ["Offset"]
       68 GETTABLEKS                       R13 R6 K8 ["X"]
       70 GETTABLEKS                       R12 R13 K10 ["Offset"]
       72 JUMPIFNOTEQ                      R11 R12 ; [+15]
       74 GETTABLEKS                       R13 R1 K4 ["CellSize"]
       76 GETTABLEKS                       R12 R13 K11 ["Y"]
       78 GETTABLEKS                       R11 R12 K10 ["Offset"]
       80 GETTABLEKS                       R13 R6 K11 ["Y"]
       82 GETTABLEKS                       R12 R13 K10 ["Offset"]
       84 JUMPIFNOTEQ                      R11 R12 ; [+2]
       86 LOADB                            R10 0 +1
       87 LOADB                            R10 1
       88 GETTABLEKS                       R11 R1 K16 ["Items"]
       90 GETTABLEKS                       R13 R0 K0 ["props"]
       92 GETTABLEKS                       R12 R13 K16 ["Items"]
       94 JUMPIFNOTEQ                      R11 R12 ; [+2]
       96 JUMPIFNOT                        R10 ; [+50]
       97 DUPTABLE                         R13 K26 [{"absoluteSize", "canvasPosition", "cellsPerRow", "minItemIndex", "minRowIndex", "maxItemIndex", "maxRowIndex", "targetMaxItemIndex", "targetMinItemIndex"}]
       98 GETUPVAL                         R15 1
       99 GETTABLEKS                       R14 R15 K27 ["None"]
      101 SETTABLEKS                       R14 R13 K17 ["absoluteSize"]
      103 GETUPVAL                         R15 1
      104 GETTABLEKS                       R14 R15 K27 ["None"]
      106 SETTABLEKS                       R14 R13 K18 ["canvasPosition"]
      108 GETUPVAL                         R15 1
      109 GETTABLEKS                       R14 R15 K27 ["None"]
      111 SETTABLEKS                       R14 R13 K19 ["cellsPerRow"]
      113 GETUPVAL                         R15 1
      114 GETTABLEKS                       R14 R15 K27 ["None"]
      116 SETTABLEKS                       R14 R13 K20 ["minItemIndex"]
      118 GETUPVAL                         R15 1
      119 GETTABLEKS                       R14 R15 K27 ["None"]
      121 SETTABLEKS                       R14 R13 K21 ["minRowIndex"]
      123 GETUPVAL                         R15 1
      124 GETTABLEKS                       R14 R15 K27 ["None"]
      126 SETTABLEKS                       R14 R13 K22 ["maxItemIndex"]
      128 GETUPVAL                         R15 1
      129 GETTABLEKS                       R14 R15 K27 ["None"]
      131 SETTABLEKS                       R14 R13 K23 ["maxRowIndex"]
      133 GETUPVAL                         R15 1
      134 GETTABLEKS                       R14 R15 K27 ["None"]
      136 SETTABLEKS                       R14 R13 K24 ["targetMaxItemIndex"]
      138 GETUPVAL                         R15 1
      139 GETTABLEKS                       R14 R15 K27 ["None"]
      141 SETTABLEKS                       R14 R13 K25 ["targetMinItemIndex"]
      143 NAMECALL                         R11 R0 K28 ["setState"]
      145 CALL                             R11 2 0
      146 RETURN                           R0 0
      147 JUMPIFEQKN                       R9 K12 [0] ; [+50]
      149 GETTABLEKS                       R11 R0 K29 ["scrollingFrameRef"]
      151 NAMECALL                         R11 R11 K30 ["getValue"]
      153 CALL                             R11 1 1
      154 GETTABLEKS                       R12 R3 K17 ["absoluteSize"]
      156 JUMPIFNOT                        R12 ; [+24]
      157 GETTABLEKS                       R13 R3 K17 ["absoluteSize"]
      159 GETTABLEKS                       R12 R13 K8 ["X"]
      161 GETTABLEKS                       R13 R4 K8 ["X"]
      163 JUMPIFNOTEQ                      R12 R13 ; [+17]
      165 GETTABLEKS                       R13 R3 K17 ["absoluteSize"]
      167 GETTABLEKS                       R12 R13 K11 ["Y"]
      169 GETTABLEKS                       R13 R4 K11 ["Y"]
      171 JUMPIFNOTEQ                      R12 R13 ; [+9]
      173 JUMPIF                           R10 ; [+7]
      174 JUMPIFNOT                        R11 ; [+23]
      175 GETTABLEKS                       R12 R11 K31 ["CanvasPosition"]
      177 GETTABLEKS                       R13 R3 K18 ["canvasPosition"]
      179 JUMPIFEQ                         R12 R13 ; [+18]
      181 JUMPIFNOT                        R11 ; [+3]
      182 GETTABLEKS                       R12 R11 K31 ["CanvasPosition"]
      184 JUMP                             ; [+2]
      185 GETTABLEKS                       R12 R3 K18 ["canvasPosition"]
      187 GETTABLEKS                       R13 R0 K32 ["onUpdateView"]
      189 MOVE                             R14 R12
      190 JUMPIF                           R14 ; [+5]
      191 GETIMPORT                        R14 K7 [Vector2.new]
      193 LOADN                            R15 0
      194 LOADN                            R16 0
      195 CALL                             R14 2 1
      196 LOADB                            R15 1
      197 CALL                             R13 2 0
      198 GETTABLEKS                       R11 R3 K20 ["minItemIndex"]
      200 JUMPIFNOT                        R11 ; [+24]
      201 GETTABLEKS                       R11 R3 K25 ["targetMinItemIndex"]
      203 JUMPIFNOT                        R11 ; [+21]
      204 GETTABLEKS                       R11 R3 K22 ["maxItemIndex"]
      206 JUMPIFNOT                        R11 ; [+18]
      207 GETTABLEKS                       R11 R3 K24 ["targetMaxItemIndex"]
      209 JUMPIFNOT                        R11 ; [+15]
      210 GETTABLEKS                       R11 R3 K20 ["minItemIndex"]
      212 GETTABLEKS                       R12 R3 K25 ["targetMinItemIndex"]
      214 JUMPIFNOTEQ                      R11 R12 ; [+7]
      216 GETTABLEKS                       R11 R3 K22 ["maxItemIndex"]
      218 GETTABLEKS                       R12 R3 K24 ["targetMaxItemIndex"]
      220 JUMPIFEQ                         R11 R12 ; [+4]
      222 GETTABLEKS                       R11 R0 K33 ["onBoundsUpdated"]
      224 CALL                             R11 0 0
      225 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["AbsoluteMax"]
        6 GETTABLEKS                       R4 R1 K3 ["AbsoluteSize"]
        8 GETTABLEKS                       R5 R1 K4 ["CellSize"]
       10 GETTABLEKS                       R6 R1 K5 ["CellPadding"]
       12 GETTABLEKS                       R7 R1 K6 ["GetItemKey"]
       14 GETTABLEKS                       R8 R1 K7 ["Items"]
       16 GETTABLEKS                       R9 R1 K8 ["Loading"]
       18 GETTABLEKS                       R10 R1 K9 ["Padding"]
       20 GETTABLEKS                       R11 R1 K10 ["Position"]
       22 GETTABLEKS                       R12 R1 K11 ["RenderItem"]
       24 GETTABLEKS                       R13 R1 K12 ["RenderEmpty"]
       26 GETTABLEKS                       R14 R1 K13 ["Size"]
       28 GETTABLEKS                       R15 R1 K14 ["Stylizer"]
       30 GETUPVAL                         R16 0
       31 MOVE                             R17 R5
       32 MOVE                             R18 R6
       33 MOVE                             R19 R4
       34 CALL                             R16 3 1
       35 GETIMPORT                        R17 K17 [Vector2.new]
       37 GETTABLEKS                       R21 R6 K18 ["X"]
       39 GETTABLEKS                       R20 R21 K19 ["Scale"]
       41 GETTABLEKS                       R21 R4 K18 ["X"]
       43 MUL                              R19 R20 R21
       44 GETTABLEKS                       R21 R6 K18 ["X"]
       46 GETTABLEKS                       R20 R21 K20 ["Offset"]
       48 ADD                              R18 R19 R20
       49 GETTABLEKS                       R22 R6 K21 ["Y"]
       51 GETTABLEKS                       R21 R22 K19 ["Scale"]
       53 GETTABLEKS                       R22 R4 K21 ["Y"]
       55 MUL                              R20 R21 R22
       56 GETTABLEKS                       R22 R6 K21 ["Y"]
       58 GETTABLEKS                       R21 R22 K20 ["Offset"]
       60 ADD                              R19 R20 R21
       61 CALL                             R17 2 1
       62 GETTABLEKS                       R19 R16 K18 ["X"]
       64 JUMPIFNOTEQKN                    R19 K22 [0] ; [+3]
       66 LOADN                            R18 0
       67 JUMP                             ; [+13]
       68 GETTABLEKS                       R21 R4 K18 ["X"]
       70 GETTABLEKS                       R22 R17 K18 ["X"]
       72 ADD                              R20 R21 R22
       73 GETTABLEKS                       R21 R16 K18 ["X"]
       75 DIV                              R19 R20 R21
       76 FASTCALL1                        MATH_FLOOR R19 ; [+2]
       77 GETIMPORT                        R18 K25 [math.floor]
       79 CALL                             R18 1 1
       80 JUMP                             ; [0]
       81 JUMPIFEQKN                       R18 K22 [0] ; [+7]
       83 GETTABLEKS                       R19 R2 K26 ["minItemIndex"]
       85 JUMPIFNOT                        R19 ; [+3]
       86 GETTABLEKS                       R19 R2 K27 ["maxItemIndex"]
       88 JUMPIF                           R19 ; [+15]
       89 GETUPVAL                         R20 1
       90 GETTABLEKS                       R19 R20 K28 ["createElement"]
       92 GETUPVAL                         R20 2
       93 GETUPVAL                         R21 3
       94 DUPTABLE                         R22 K29 [{"Size", "Position"}]
       95 SETTABLEKS                       R14 R22 K13 ["Size"]
       97 SETTABLEKS                       R11 R22 K10 ["Position"]
       99 GETTABLEKS                       R23 R1 K30 ["WrapperProps"]
      101 CALL                             R21 2 -1
      102 CALL                             R19 -1 -1
      103 RETURN                           R19 -1
      104 DUPTABLE                         R19 K32 [{"UIGridLayout"}]
      105 GETUPVAL                         R21 1
      106 GETTABLEKS                       R20 R21 K28 ["createElement"]
      108 LOADK                            R21 K31 ["UIGridLayout"]
      109 DUPTABLE                         R22 K35 [{"CellPadding", "CellSize", "HorizontalAlignment", "SortOrder"}]
      110 SETTABLEKS                       R6 R22 K5 ["CellPadding"]
      112 SETTABLEKS                       R5 R22 K4 ["CellSize"]
      114 GETIMPORT                        R23 K38 [Enum.HorizontalAlignment.Left]
      116 SETTABLEKS                       R23 R22 K33 ["HorizontalAlignment"]
      118 GETIMPORT                        R23 K40 [Enum.SortOrder.LayoutOrder]
      120 SETTABLEKS                       R23 R22 K34 ["SortOrder"]
      122 CALL                             R20 2 1
      123 SETTABLEKS                       R20 R19 K31 ["UIGridLayout"]
      125 GETTABLEKS                       R22 R2 K26 ["minItemIndex"]
      127 GETTABLEKS                       R20 R2 K27 ["maxItemIndex"]
      129 LOADN                            R21 1
      130 FORNPREP                         R20
      131 GETTABLE                         R23 R8 R22
      132 JUMPIF                           R23 ; [+5]
      133 MOVE                             R23 R13
      134 MOVE                             R24 R22
      135 CALL                             R23 1 1
      136 SETTABLE                         R23 R19 R22
      137 JUMP                             ; [+34]
      138 GETTABLEKS                       R24 R0 K41 ["itemElements"]
      140 GETTABLE                         R23 R24 R22
      141 JUMPIFNOT                        R23 ; [+13]
      142 GETTABLEKS                       R24 R0 K42 ["itemKeys"]
      144 GETTABLE                         R23 R24 R22
      145 MOVE                             R24 R7
      146 GETTABLE                         R25 R8 R22
      147 CALL                             R24 1 1
      148 JUMPIFNOTEQ                      R23 R24 ; [+6]
      150 GETTABLEKS                       R24 R0 K41 ["itemElements"]
      152 GETTABLE                         R23 R24 R22
      153 SETTABLE                         R23 R19 R22
      154 JUMP                             ; [+17]
      155 GETTABLEKS                       R23 R0 K41 ["itemElements"]
      157 MOVE                             R24 R12
      158 MOVE                             R25 R22
      159 GETTABLE                         R26 R8 R22
      160 CALL                             R24 2 1
      161 SETTABLE                         R24 R23 R22
      162 GETTABLEKS                       R23 R0 K42 ["itemKeys"]
      164 MOVE                             R24 R7
      165 GETTABLE                         R25 R8 R22
      166 CALL                             R24 1 1
      167 SETTABLE                         R24 R23 R22
      168 GETTABLEKS                       R24 R0 K41 ["itemElements"]
      170 GETTABLE                         R23 R24 R22
      171 SETTABLE                         R23 R19 R22
      172 FORNLOOP                         R20
      173 LOADNIL                          R20
      174 JUMPIFNOT                        R9 ; [+19]
      175 GETUPVAL                         R22 1
      176 GETTABLEKS                       R21 R22 K28 ["createElement"]
      178 GETUPVAL                         R22 2
      179 DUPTABLE                         R23 K43 [{"Padding", "Size"}]
      180 GETTABLEKS                       R24 R15 K44 ["LoadingIndicatorPadding"]
      182 SETTABLEKS                       R24 R23 K9 ["Padding"]
      184 GETTABLEKS                       R24 R15 K45 ["LoadingIndicatorSize"]
      186 SETTABLEKS                       R24 R23 K13 ["Size"]
      188 DUPTABLE                         R24 K47 [{"loadingIndicator"}]
      189 GETUPVAL                         R25 4
      190 SETTABLEKS                       R25 R24 K46 ["loadingIndicator"]
      192 CALL                             R21 3 1
      193 MOVE                             R20 R21
      194 GETUPVAL                         R22 1
      195 GETTABLEKS                       R21 R22 K28 ["createElement"]
      197 GETUPVAL                         R22 2
      198 GETUPVAL                         R23 3
      199 DUPTABLE                         R24 K49 [{"Size", "Position", "ZIndex"}]
      200 SETTABLEKS                       R14 R24 K13 ["Size"]
      202 SETTABLEKS                       R11 R24 K10 ["Position"]
      204 GETTABLEKS                       R25 R1 K48 ["ZIndex"]
      206 SETTABLEKS                       R25 R24 K48 ["ZIndex"]
      208 GETTABLEKS                       R25 R1 K30 ["WrapperProps"]
      210 CALL                             R23 2 1
      211 DUPTABLE                         R24 K51 [{"scrollingFrame"}]
      212 GETUPVAL                         R26 1
      213 GETTABLEKS                       R25 R26 K28 ["createElement"]
      215 GETUPVAL                         R26 5
      216 NEWTABLE                         R27 8 0
      218 LOADB                            R28 1
      219 SETTABLEKS                       R28 R27 K52 ["AutoSizeCanvas"]
      221 GETIMPORT                        R28 K55 [Enum.AutomaticSize.XY]
      223 SETTABLEKS                       R28 R27 K56 ["AutomaticCanvasSize"]
      225 GETIMPORT                        R28 K59 [UDim2.fromScale]
      227 LOADN                            R29 1
      228 LOADN                            R30 1
      229 CALL                             R28 2 1
      230 SETTABLEKS                       R28 R27 K60 ["CanvasSize"]
      232 GETTABLEKS                       R28 R0 K61 ["onScrollUpdate"]
      234 SETTABLEKS                       R28 R27 K62 ["OnScrollUpdate"]
      236 SETTABLEKS                       R10 R27 K9 ["Padding"]
      238 GETIMPORT                        R28 K59 [UDim2.fromScale]
      240 LOADN                            R29 1
      241 LOADN                            R30 1
      242 CALL                             R28 2 1
      243 SETTABLEKS                       R28 R27 K13 ["Size"]
      245 GETUPVAL                         R29 1
      246 GETTABLEKS                       R28 R29 K63 ["Ref"]
      248 GETTABLEKS                       R29 R0 K64 ["scrollingFrameRef"]
      250 SETTABLE                         R29 R27 R28
      251 DUPTABLE                         R28 K67 [{"Grid", "Loader"}]
      252 GETUPVAL                         R30 1
      253 GETTABLEKS                       R29 R30 K28 ["createElement"]
      255 GETUPVAL                         R30 2
      256 DUPTABLE                         R31 K68 [{"LayoutOrder", "Position", "Size"}]
      257 LOADN                            R32 1
      258 SETTABLEKS                       R32 R31 K39 ["LayoutOrder"]
      260 GETIMPORT                        R32 K70 [UDim2.fromOffset]
      262 LOADN                            R33 0
      263 GETTABLEKS                       R35 R2 K71 ["minRowIndex"]
      265 GETTABLEKS                       R36 R16 K21 ["Y"]
      267 MUL                              R34 R35 R36
      268 CALL                             R32 2 1
      269 SETTABLEKS                       R32 R31 K10 ["Position"]
      271 GETIMPORT                        R32 K72 [UDim2.new]
      273 LOADN                            R33 1
      274 LOADN                            R34 0
      275 LOADN                            R35 0
      276 GETTABLEKS                       R37 R16 K21 ["Y"]
      278 GETTABLEKS                       R39 R2 K73 ["maxRowIndex"]
      280 GETTABLEKS                       R40 R2 K71 ["minRowIndex"]
      282 SUB                              R38 R39 R40
      283 MUL                              R36 R37 R38
      284 CALL                             R32 4 1
      285 SETTABLEKS                       R32 R31 K13 ["Size"]
      287 MOVE                             R32 R19
      288 CALL                             R29 3 1
      289 SETTABLEKS                       R29 R28 K65 ["Grid"]
      291 GETUPVAL                         R30 1
      292 GETTABLEKS                       R29 R30 K28 ["createElement"]
      294 GETUPVAL                         R30 2
      295 DUPTABLE                         R31 K74 [{"AutomaticSize", "HorizontalAlignment", "LayoutOrder", "Position", "Size"}]
      296 GETIMPORT                        R32 K55 [Enum.AutomaticSize.XY]
      298 SETTABLEKS                       R32 R31 K53 ["AutomaticSize"]
      300 GETIMPORT                        R32 K76 [Enum.HorizontalAlignment.Center]
      302 SETTABLEKS                       R32 R31 K33 ["HorizontalAlignment"]
      304 LOADN                            R32 2
      305 SETTABLEKS                       R32 R31 K39 ["LayoutOrder"]
      307 GETIMPORT                        R32 K72 [UDim2.new]
      309 GETTABLEKS                       R37 R15 K45 ["LoadingIndicatorSize"]
      311 GETTABLEKS                       R36 R37 K18 ["X"]
      313 GETTABLEKS                       R35 R36 K19 ["Scale"]
      315 DIVK                             R34 R35 K78 [2]
      316 SUBRK                            R33 R77 K34 ["SortOrder"]
      317 GETTABLEKS                       R39 R15 K45 ["LoadingIndicatorSize"]
      319 GETTABLEKS                       R38 R39 K18 ["X"]
      321 GETTABLEKS                       R37 R38 K20 ["Offset"]
      323 GETTABLEKS                       R38 R15 K44 ["LoadingIndicatorPadding"]
      325 ADD                              R36 R37 R38
      326 MINUS                            R35 R36
      327 DIVK                             R34 R35 K78 [2]
      328 LOADN                            R35 0
      329 DIV                              R38 R3 R18
      330 FASTCALL1                        MATH_CEIL R38 ; [+2]
      331 GETIMPORT                        R37 K80 [math.ceil]
      333 CALL                             R37 1 1
      334 GETTABLEKS                       R38 R16 K21 ["Y"]
      336 MUL                              R36 R37 R38
      337 CALL                             R32 4 1
      338 SETTABLEKS                       R32 R31 K10 ["Position"]
      340 GETIMPORT                        R32 K70 [UDim2.fromOffset]
      342 LOADN                            R33 0
      343 ORK                              R34 R10 K22 [0]
      344 CALL                             R32 2 1
      345 SETTABLEKS                       R32 R31 K13 ["Size"]
      347 DUPTABLE                         R32 K82 [{"Indicator"}]
      348 SETTABLEKS                       R20 R32 K81 ["Indicator"]
      350 CALL                             R29 3 1
      351 SETTABLEKS                       R29 R28 K66 ["Loader"]
      353 CALL                             R25 3 1
      354 SETTABLEKS                       R25 R24 K50 ["scrollingFrame"]
      356 CALL                             R21 3 -1
      357 RETURN                           R21 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R0 K2 ["UI"]
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R5 R2 K8 ["Components"]
       22 GETTABLEKS                       R4 R5 K9 ["ScrollingFrame"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R6 R2 K8 ["Components"]
       29 GETTABLEKS                       R5 R6 K10 ["Pane"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R7 R2 K8 ["Components"]
       36 GETTABLEKS                       R6 R7 K11 ["LoadingIndicator"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETIMPORT                        R8 K1 [script]
       43 GETTABLEKS                       R7 R8 K12 ["style"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K6 [require]
       48 GETTABLEKS                       R9 R0 K13 ["Wrappers"]
       50 GETTABLEKS                       R8 R9 K14 ["withAbsoluteSize"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K6 [require]
       55 GETTABLEKS                       R10 R0 K4 ["Parent"]
       57 GETTABLEKS                       R9 R10 K15 ["Dash"]
       59 CALL                             R8 1 1
       60 GETTABLEKS                       R9 R8 K16 ["join"]
       62 GETIMPORT                        R10 K6 [require]
       64 GETTABLEKS                       R12 R0 K2 ["UI"]
       66 GETTABLEKS                       R11 R12 K17 ["ContextServices"]
       68 CALL                             R10 1 1
       69 GETTABLEKS                       R11 R10 K18 ["withContext"]
       71 GETIMPORT                        R12 K6 [require]
       73 GETTABLEKS                       R14 R0 K19 ["Util"]
       75 GETTABLEKS                       R13 R14 K20 ["Typecheck"]
       77 CALL                             R12 1 1
       78 GETTABLEKS                       R13 R1 K21 ["PureComponent"]
       80 LOADK                            R15 K22 ["InfiniteScrollingGrid"]
       81 NAMECALL                         R13 R13 K23 ["extend"]
       83 CALL                             R13 2 1
       84 GETTABLEKS                       R14 R12 K24 ["wrap"]
       86 MOVE                             R15 R13
       87 GETIMPORT                        R16 K1 [script]
       89 CALL                             R14 2 0
       90 DUPTABLE                         R14 K34 [{"BufferedRows", "CellPadding", "CellSize", "GetItemKey", "LoadRange", "OnScrollUpdate", "RenderEmpty", "Position", "Size"}]
       91 LOADN                            R15 1
       92 SETTABLEKS                       R15 R14 K25 ["BufferedRows"]
       94 GETIMPORT                        R15 K37 [UDim2.fromOffset]
       96 LOADN                            R16 0
       97 LOADN                            R17 0
       98 CALL                             R15 2 1
       99 SETTABLEKS                       R15 R14 K26 ["CellPadding"]
      101 GETIMPORT                        R15 K37 [UDim2.fromOffset]
      103 LOADN                            R16 100
      104 LOADN                            R17 100
      105 CALL                             R15 2 1
      106 SETTABLEKS                       R15 R14 K27 ["CellSize"]
      108 DUPCLOSURE                       R15 K38 [PROTO_0]
      109 SETTABLEKS                       R15 R14 K28 ["GetItemKey"]
      111 DUPCLOSURE                       R15 K39 [PROTO_1]
      112 SETTABLEKS                       R15 R14 K29 ["LoadRange"]
      114 DUPCLOSURE                       R15 K40 [PROTO_2]
      115 SETTABLEKS                       R15 R14 K30 ["OnScrollUpdate"]
      117 DUPCLOSURE                       R15 K41 [PROTO_3]
      118 CAPTURE                          VAL R1
      119 CAPTURE                          VAL R4
      120 SETTABLEKS                       R15 R14 K31 ["RenderEmpty"]
      122 GETIMPORT                        R15 K37 [UDim2.fromOffset]
      124 LOADN                            R16 0
      125 LOADN                            R17 0
      126 CALL                             R15 2 1
      127 SETTABLEKS                       R15 R14 K32 ["Position"]
      129 GETIMPORT                        R15 K43 [UDim2.fromScale]
      131 LOADN                            R16 1
      132 LOADN                            R17 1
      133 CALL                             R15 2 1
      134 SETTABLEKS                       R15 R14 K33 ["Size"]
      136 SETTABLEKS                       R14 R13 K44 ["defaultProps"]
      138 DUPCLOSURE                       R14 K45 [PROTO_4]
      139 DUPCLOSURE                       R15 K46 [PROTO_5]
      140 DUPCLOSURE                       R16 K47 [PROTO_6]
      141 DUPCLOSURE                       R17 K48 [PROTO_10]
      142 CAPTURE                          VAL R1
      143 CAPTURE                          VAL R16
      144 SETTABLEKS                       R17 R13 K49 ["init"]
      146 DUPCLOSURE                       R17 K50 [PROTO_11]
      147 CAPTURE                          VAL R16
      148 CAPTURE                          VAL R1
      149 SETTABLEKS                       R17 R13 K51 ["didUpdate"]
      151 DUPCLOSURE                       R17 K52 [PROTO_12]
      152 CAPTURE                          VAL R16
      153 CAPTURE                          VAL R1
      154 CAPTURE                          VAL R4
      155 CAPTURE                          VAL R9
      156 CAPTURE                          VAL R5
      157 CAPTURE                          VAL R3
      158 SETTABLEKS                       R17 R13 K53 ["render"]
      160 MOVE                             R17 R11
      161 DUPTABLE                         R18 K55 [{"Stylizer"}]
      162 GETTABLEKS                       R19 R10 K54 ["Stylizer"]
      164 SETTABLEKS                       R19 R18 K54 ["Stylizer"]
      166 CALL                             R17 1 1
      167 MOVE                             R18 R13
      168 CALL                             R17 1 1
      169 MOVE                             R13 R17
      170 MOVE                             R17 R7
      171 MOVE                             R18 R13
      172 CALL                             R17 1 -1
      173 RETURN                           R17 -1
