PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETTABLEKS                       R8 R1 K0 ["Max"]
        8 GETTABLEKS                       R8 R8 K1 ["X"]
       10 GETTABLEKS                       R9 R7 K2 ["Min"]
       12 GETTABLEKS                       R9 R9 K1 ["X"]
       14 JUMPIFLE                         R8 R9 ; [+31]
       16 GETTABLEKS                       R8 R1 K2 ["Min"]
       18 GETTABLEKS                       R8 R8 K1 ["X"]
       20 GETTABLEKS                       R9 R7 K0 ["Max"]
       22 GETTABLEKS                       R9 R9 K1 ["X"]
       24 JUMPIFLE                         R9 R8 ; [+21]
       26 GETTABLEKS                       R8 R1 K0 ["Max"]
       28 GETTABLEKS                       R8 R8 K3 ["Y"]
       30 GETTABLEKS                       R9 R7 K2 ["Min"]
       32 GETTABLEKS                       R9 R9 K3 ["Y"]
       34 JUMPIFLE                         R8 R9 ; [+11]
       36 GETTABLEKS                       R8 R1 K2 ["Min"]
       38 GETTABLEKS                       R8 R8 K3 ["Y"]
       40 GETTABLEKS                       R9 R7 K0 ["Max"]
       42 GETTABLEKS                       R9 R9 K3 ["Y"]
       44 JUMPIFNOTLE                      R9 R8 ; [+9]
       46 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       48 MOVE                             R9 R2
       49 MOVE                             R10 R7
       50 GETIMPORT                        R8 K6 [table.insert]
       52 CALL                             R8 2 0
       53 JUMP                             ; [+154]
       54 GETTABLEKS                       R9 R7 K2 ["Min"]
       56 GETTABLEKS                       R9 R9 K1 ["X"]
       58 GETTABLEKS                       R10 R1 K2 ["Min"]
       60 GETTABLEKS                       R10 R10 K1 ["X"]
       62 FASTCALL2                        MATH_MAX R9 R10 ; [+3]
       64 GETIMPORT                        R8 K9 [math.max]
       66 CALL                             R8 2 1
       67 GETTABLEKS                       R10 R7 K0 ["Max"]
       69 GETTABLEKS                       R10 R10 K1 ["X"]
       71 GETTABLEKS                       R11 R1 K0 ["Max"]
       73 GETTABLEKS                       R11 R11 K1 ["X"]
       75 FASTCALL2                        MATH_MIN R10 R11 ; [+3]
       77 GETIMPORT                        R9 K11 [math.min]
       79 CALL                             R9 2 1
       80 GETTABLEKS                       R11 R7 K2 ["Min"]
       82 GETTABLEKS                       R11 R11 K3 ["Y"]
       84 GETTABLEKS                       R12 R1 K2 ["Min"]
       86 GETTABLEKS                       R12 R12 K3 ["Y"]
       88 FASTCALL2                        MATH_MAX R11 R12 ; [+3]
       90 GETIMPORT                        R10 K9 [math.max]
       92 CALL                             R10 2 1
       93 GETTABLEKS                       R12 R7 K0 ["Max"]
       95 GETTABLEKS                       R12 R12 K3 ["Y"]
       97 GETTABLEKS                       R13 R1 K0 ["Max"]
       99 GETTABLEKS                       R13 R13 K3 ["Y"]
      101 FASTCALL2                        MATH_MIN R12 R13 ; [+3]
      103 GETIMPORT                        R11 K11 [math.min]
      105 CALL                             R11 2 1
      106 GETTABLEKS                       R12 R7 K2 ["Min"]
      108 GETTABLEKS                       R12 R12 K3 ["Y"]
      110 JUMPIFNOTLT                      R12 R10 ; [+19]
      112 MOVE                             R13 R2
      113 GETIMPORT                        R14 K14 [Rect.new]
      115 GETTABLEKS                       R15 R7 K2 ["Min"]
      117 GETIMPORT                        R16 K16 [Vector2.new]
      119 GETTABLEKS                       R17 R7 K0 ["Max"]
      121 GETTABLEKS                       R17 R17 K1 ["X"]
      123 MOVE                             R18 R10
      124 CALL                             R16 2 -1
      125 CALL                             R14 -1 -1
      126 FASTCALL                         TABLE_INSERT ; [+2]
      127 GETIMPORT                        R12 K6 [table.insert]
      129 CALL                             R12 -1 0
      130 GETTABLEKS                       R12 R7 K0 ["Max"]
      132 GETTABLEKS                       R12 R12 K3 ["Y"]
      134 JUMPIFNOTLT                      R11 R12 ; [+19]
      136 MOVE                             R13 R2
      137 GETIMPORT                        R14 K14 [Rect.new]
      139 GETIMPORT                        R15 K16 [Vector2.new]
      141 GETTABLEKS                       R16 R7 K2 ["Min"]
      143 GETTABLEKS                       R16 R16 K1 ["X"]
      145 MOVE                             R17 R11
      146 CALL                             R15 2 1
      147 GETTABLEKS                       R16 R7 K0 ["Max"]
      149 CALL                             R14 2 -1
      150 FASTCALL                         TABLE_INSERT ; [+2]
      151 GETIMPORT                        R12 K6 [table.insert]
      153 CALL                             R12 -1 0
      154 GETTABLEKS                       R12 R7 K2 ["Min"]
      156 GETTABLEKS                       R12 R12 K1 ["X"]
      158 JUMPIFNOTLT                      R12 R8 ; [+22]
      160 MOVE                             R13 R2
      161 GETIMPORT                        R14 K14 [Rect.new]
      163 GETIMPORT                        R15 K16 [Vector2.new]
      165 GETTABLEKS                       R16 R7 K2 ["Min"]
      167 GETTABLEKS                       R16 R16 K1 ["X"]
      169 MOVE                             R17 R10
      170 CALL                             R15 2 1
      171 GETIMPORT                        R16 K16 [Vector2.new]
      173 MOVE                             R17 R8
      174 MOVE                             R18 R11
      175 CALL                             R16 2 -1
      176 CALL                             R14 -1 -1
      177 FASTCALL                         TABLE_INSERT ; [+2]
      178 GETIMPORT                        R12 K6 [table.insert]
      180 CALL                             R12 -1 0
      181 GETTABLEKS                       R12 R7 K0 ["Max"]
      183 GETTABLEKS                       R12 R12 K1 ["X"]
      185 JUMPIFNOTLT                      R9 R12 ; [+22]
      187 MOVE                             R13 R2
      188 GETIMPORT                        R14 K14 [Rect.new]
      190 GETIMPORT                        R15 K16 [Vector2.new]
      192 MOVE                             R16 R9
      193 MOVE                             R17 R10
      194 CALL                             R15 2 1
      195 GETIMPORT                        R16 K16 [Vector2.new]
      197 GETTABLEKS                       R17 R7 K0 ["Max"]
      199 GETTABLEKS                       R17 R17 K1 ["X"]
      201 MOVE                             R18 R11
      202 CALL                             R16 2 -1
      203 CALL                             R14 -1 -1
      204 FASTCALL                         TABLE_INSERT ; [+2]
      205 GETIMPORT                        R12 K6 [table.insert]
      207 CALL                             R12 -1 0
      208 FORGLOOP                         R3 2 ; [-203]
      210 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
