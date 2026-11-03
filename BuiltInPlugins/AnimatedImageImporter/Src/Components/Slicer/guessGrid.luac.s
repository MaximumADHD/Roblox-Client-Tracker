PROTO_0:
        0 GETIMPORT                        R3 K2 [Vector2.zero]
        2 GETTABLEKS                       R4 R0 K3 ["Size"]
        4 NAMECALL                         R1 R0 K4 ["ReadPixelsBuffer"]
        6 CALL                             R1 3 1
        7 GETTABLEKS                       R2 R0 K3 ["Size"]
        9 GETTABLEKS                       R2 R2 K5 ["X"]
       11 GETTABLEKS                       R3 R0 K3 ["Size"]
       13 GETTABLEKS                       R3 R3 K6 ["Y"]
       15 NEWTABLE                         R4 0 0
       17 NEWTABLE                         R5 0 0
       19 NEWTABLE                         R6 0 0
       21 NEWTABLE                         R7 0 0
       23 LOADN                            R10 1
       24 SUBK                             R8 R2 K7 [1]
       25 LOADN                            R9 1
       26 FORNPREP                         R8
       27 LOADB                            R11 1
       28 LOADN                            R14 0
       29 SUBK                             R12 R3 K7 [1]
       30 LOADN                            R13 1
       31 FORNPREP                         R12
       32 MUL                              R17 R14 R2
       33 ADD                              R16 R17 R10
       34 MULK                             R15 R16 K8 [4]
       35 LOADN                            R19 3
       36 ADD                              R18 R19 R15
       37 FASTCALL2                        BUFFER_READU8 R1 R18 ; [+4]
       39 MOVE                             R17 R1
       40 GETIMPORT                        R16 K11 [buffer.readu8]
       42 CALL                             R16 2 1
       43 LOADK                            R17 K12 [0.99]
       44 JUMPIFNOTLT                      R17 R16 ; [+3]
       46 LOADB                            R11 0
       47 JUMP                             ; [+1]
       48 FORNLOOP                         R12
       49 JUMPIFNOT                        R11 ; [+9]
       50 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       52 MOVE                             R13 R5
       53 MOVE                             R14 R10
       54 GETIMPORT                        R12 K15 [table.insert]
       56 CALL                             R12 2 0
       57 LOADB                            R12 1
       58 SETTABLE                         R12 R4 R10
       59 FORNLOOP                         R8
       60 LOADN                            R10 1
       61 SUBK                             R8 R3 K7 [1]
       62 LOADN                            R9 1
       63 FORNPREP                         R8
       64 LOADB                            R11 1
       65 LOADN                            R14 0
       66 SUBK                             R12 R2 K7 [1]
       67 LOADN                            R13 1
       68 FORNPREP                         R12
       69 MUL                              R17 R10 R2
       70 ADD                              R16 R17 R14
       71 MULK                             R15 R16 K8 [4]
       72 LOADN                            R19 3
       73 ADD                              R18 R19 R15
       74 FASTCALL2                        BUFFER_READU8 R1 R18 ; [+4]
       76 MOVE                             R17 R1
       77 GETIMPORT                        R16 K11 [buffer.readu8]
       79 CALL                             R16 2 1
       80 LOADN                            R17 0
       81 JUMPIFNOTLT                      R17 R16 ; [+3]
       83 LOADB                            R11 0
       84 JUMP                             ; [+1]
       85 FORNLOOP                         R12
       86 JUMPIFNOT                        R11 ; [+9]
       87 FASTCALL2                        TABLE_INSERT R6 R10 ; [+5]
       89 MOVE                             R13 R6
       90 MOVE                             R14 R10
       91 GETIMPORT                        R12 K15 [table.insert]
       93 CALL                             R12 2 0
       94 LOADB                            R12 1
       95 SETTABLE                         R12 R7 R10
       96 FORNLOOP                         R8
       97 NEWTABLE                         R8 0 0
       99 MOVE                             R9 R5
      100 LOADNIL                          R10
      101 LOADNIL                          R11
      102 FORGPREP                         R9
      103 DIVK                             R14 R2 K16 [2]
      104 JUMPIFLT                         R14 R13 ; [+24]
      106 MOD                              R14 R2 R13
      107 JUMPIFNOTEQKN                    R14 K17 [0] ; [+19]
      109 LOADB                            R14 1
      110 MOVE                             R17 R13
      111 SUBK                             R15 R2 K7 [1]
      112 MOVE                             R16 R13
      113 FORNPREP                         R15
      114 GETTABLE                         R18 R4 R17
      115 JUMPIF                           R18 ; [+2]
      116 LOADB                            R14 0
      117 JUMP                             ; [+1]
      118 FORNLOOP                         R15
      119 JUMPIFNOT                        R14 ; [+7]
      120 FASTCALL2                        TABLE_INSERT R8 R13 ; [+5]
      122 MOVE                             R16 R8
      123 MOVE                             R17 R13
      124 GETIMPORT                        R15 K15 [table.insert]
      126 CALL                             R15 2 0
      127 FORGLOOP                         R9 2 ; [-25]
      129 NEWTABLE                         R9 0 0
      131 MOVE                             R10 R6
      132 LOADNIL                          R11
      133 LOADNIL                          R12
      134 FORGPREP                         R10
      135 DIVK                             R15 R3 K16 [2]
      136 JUMPIFLT                         R15 R14 ; [+24]
      138 MOD                              R15 R3 R14
      139 JUMPIFNOTEQKN                    R15 K17 [0] ; [+19]
      141 LOADB                            R15 1
      142 MOVE                             R18 R14
      143 SUBK                             R16 R3 K7 [1]
      144 MOVE                             R17 R14
      145 FORNPREP                         R16
      146 GETTABLE                         R19 R7 R18
      147 JUMPIF                           R19 ; [+2]
      148 LOADB                            R15 0
      149 JUMP                             ; [+1]
      150 FORNLOOP                         R16
      151 JUMPIFNOT                        R15 ; [+7]
      152 FASTCALL2                        TABLE_INSERT R9 R14 ; [+5]
      154 MOVE                             R17 R9
      155 MOVE                             R18 R14
      156 GETIMPORT                        R16 K15 [table.insert]
      158 CALL                             R16 2 0
      159 FORGLOOP                         R10 2 ; [-25]
      161 LENGTH                           R10 R8
      162 JUMPIFNOTEQKN                    R10 K17 [0] ; [+6]
      164 LENGTH                           R10 R9
      165 JUMPIFNOTEQKN                    R10 K17 [0] ; [+3]
      167 LOADNIL                          R10
      168 RETURN                           R10 1
      169 GETIMPORT                        R10 K19 [Vector2.new]
      171 LENGTH                           R12 R8
      172 JUMPIFNOTEQKN                    R12 K17 [0] ; [+3]
      174 LOADN                            R11 1
      175 JUMP                             ; [+2]
      176 GETTABLEN                        R12 R8 1
      177 IDIV                             R11 R2 R12
      178 LENGTH                           R13 R9
      179 JUMPIFNOTEQKN                    R13 K17 [0] ; [+3]
      181 LOADN                            R12 1
      182 JUMP                             ; [+2]
      183 GETTABLEN                        R13 R9 1
      184 IDIV                             R12 R3 R13
      185 CALL                             R10 2 -1
      186 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
