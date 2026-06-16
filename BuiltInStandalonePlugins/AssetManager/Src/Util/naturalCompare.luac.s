PROTO_0:
        0 LOADN                            R1 65
        1 JUMPIFNOTLE                      R1 R0 ; [+6]
        3 LOADN                            R1 90
        4 JUMPIFNOTLE                      R0 R1 ; [+3]
        6 ADDK                             R1 R0 K0 [32]
        7 RETURN                           R1 1
        8 LOADN                            R1 192
        9 JUMPIFNOTLE                      R1 R0 ; [+8]
       11 LOADN                            R1 222
       12 JUMPIFNOTLE                      R0 R1 ; [+5]
       14 JUMPIFEQKN                       R0 K1 [215] ; [+3]
       16 ADDK                             R1 R0 K0 [32]
       17 RETURN                           R1 1
       18 RETURN                           R0 1

PROTO_1:
        0 JUMPIFNOTEQ                      R0 R1 ; [+3]
        2 LOADN                            R2 0
        3 RETURN                           R2 1
        4 LENGTH                           R2 R0
        5 LENGTH                           R3 R1
        6 LOADN                            R4 1
        7 LOADN                            R5 1
        8 JUMPIFNOTLE                      R4 R2 ; [+201]
       10 JUMPIFNOTLE                      R5 R3 ; [+199]
       12 FASTCALL2                        STRING_BYTE R0 R4 ; [+4]
       14 MOVE                             R7 R0
       15 MOVE                             R8 R4
       16 GETUPVAL                         R6 0
       17 CALL                             R6 2 1
       18 LOADN                            R8 128
       19 JUMPIFNOTLT                      R6 R8 ; [+3]
       21 MOVE                             R7 R6
       22 JUMP                             ; [+4]
       23 GETUPVAL                         R7 1
       24 MOVE                             R8 R0
       25 MOVE                             R9 R4
       26 CALL                             R7 2 1
       27 FASTCALL2                        STRING_BYTE R1 R5 ; [+4]
       29 MOVE                             R9 R1
       30 MOVE                             R10 R5
       31 GETUPVAL                         R8 0
       32 CALL                             R8 2 1
       33 LOADN                            R10 128
       34 JUMPIFNOTLT                      R8 R10 ; [+3]
       36 MOVE                             R9 R8
       37 JUMP                             ; [+4]
       38 GETUPVAL                         R9 1
       39 MOVE                             R10 R1
       40 MOVE                             R11 R5
       41 CALL                             R9 2 1
       42 LOADN                            R10 48
       43 JUMPIFNOTLE                      R10 R7 ; [+91]
       45 LOADN                            R10 57
       46 JUMPIFNOTLE                      R7 R10 ; [+88]
       48 LOADN                            R10 48
       49 JUMPIFNOTLE                      R10 R9 ; [+85]
       51 LOADN                            R10 57
       52 JUMPIFNOTLE                      R9 R10 ; [+82]
       54 MOVE                             R10 R4
       55 MOVE                             R11 R5
       56 ADDK                             R4 R4 K0 [1]
       57 JUMPIFLT                         R2 R4 ; [+15]
       59 FASTCALL2                        STRING_BYTE R0 R4 ; [+4]
       61 MOVE                             R13 R0
       62 MOVE                             R14 R4
       63 GETUPVAL                         R12 0
       64 CALL                             R12 2 1
       65 MOVE                             R7 R12
       66 LOADN                            R12 48
       67 JUMPIFLT                         R7 R12 ; [+5]
       69 LOADN                            R12 57
       70 JUMPIFLT                         R12 R7 ; [+2]
       72 JUMPBACK                         ; [-17]
       73 ADDK                             R5 R5 K0 [1]
       74 JUMPIFLT                         R3 R5 ; [+15]
       76 FASTCALL2                        STRING_BYTE R1 R5 ; [+4]
       78 MOVE                             R13 R1
       79 MOVE                             R14 R5
       80 GETUPVAL                         R12 0
       81 CALL                             R12 2 1
       82 MOVE                             R9 R12
       83 LOADN                            R12 48
       84 JUMPIFLT                         R9 R12 ; [+5]
       86 LOADN                            R12 57
       87 JUMPIFLT                         R12 R9 ; [+2]
       89 JUMPBACK                         ; [-17]
       90 GETIMPORT                        R13 K4 [string.match]
       92 SUBK                             R17 R4 K0 [1]
       93 FASTCALL3                        STRING_SUB R0 R10 R17
       95 MOVE                             R15 R0
       96 MOVE                             R16 R10
       97 GETIMPORT                        R14 K6 [string.sub]
       99 CALL                             R14 3 1
      100 LOADK                            R15 K7 ["^0*(.*)"]
      101 CALL                             R13 2 1
      102 ORK                              R12 R13 K1 [""]
      103 GETIMPORT                        R14 K4 [string.match]
      105 SUBK                             R18 R5 K0 [1]
      106 FASTCALL3                        STRING_SUB R1 R11 R18
      108 MOVE                             R16 R1
      109 MOVE                             R17 R11
      110 GETIMPORT                        R15 K6 [string.sub]
      112 CALL                             R15 3 1
      113 LOADK                            R16 K7 ["^0*(.*)"]
      114 CALL                             R14 2 1
      115 ORK                              R13 R14 K1 [""]
      116 LENGTH                           R14 R12
      117 LENGTH                           R15 R13
      118 JUMPIFEQ                         R14 R15 ; [+7]
      120 JUMPIFNOTLT                      R14 R15 ; [+3]
      122 LOADN                            R16 255
      123 RETURN                           R16 1
      124 LOADN                            R16 1
      125 RETURN                           R16 1
      126 JUMPIFEQ                         R12 R13 ; [+82]
      128 JUMPIFNOTLT                      R12 R13 ; [+3]
      130 LOADN                            R16 255
      131 RETURN                           R16 1
      132 LOADN                            R16 1
      133 RETURN                           R16 1
      134 JUMP                             ; [+74]
      135 MOVE                             R11 R7
      136 LOADN                            R12 65
      137 JUMPIFNOTLE                      R12 R11 ; [+6]
      139 LOADN                            R12 90
      140 JUMPIFNOTLE                      R11 R12 ; [+3]
      142 ADDK                             R10 R11 K8 [32]
      143 JUMP                             ; [+11]
      144 LOADN                            R12 192
      145 JUMPIFNOTLE                      R12 R11 ; [+8]
      147 LOADN                            R12 222
      148 JUMPIFNOTLE                      R11 R12 ; [+5]
      150 JUMPIFEQKN                       R11 K9 [215] ; [+3]
      152 ADDK                             R10 R11 K8 [32]
      153 JUMP                             ; [+1]
      154 MOVE                             R10 R11
      155 MOVE                             R12 R9
      156 LOADN                            R13 65
      157 JUMPIFNOTLE                      R13 R12 ; [+6]
      159 LOADN                            R13 90
      160 JUMPIFNOTLE                      R12 R13 ; [+3]
      162 ADDK                             R11 R12 K8 [32]
      163 JUMP                             ; [+11]
      164 LOADN                            R13 192
      165 JUMPIFNOTLE                      R13 R12 ; [+8]
      167 LOADN                            R13 222
      168 JUMPIFNOTLE                      R12 R13 ; [+5]
      170 JUMPIFEQKN                       R12 K9 [215] ; [+3]
      172 ADDK                             R11 R12 K8 [32]
      173 JUMP                             ; [+1]
      174 MOVE                             R11 R12
      175 JUMPIFEQ                         R10 R11 ; [+7]
      177 JUMPIFNOTLT                      R10 R11 ; [+3]
      179 LOADN                            R12 255
      180 RETURN                           R12 1
      181 LOADN                            R12 1
      182 RETURN                           R12 1
      183 LOADN                            R12 128
      184 JUMPIFNOTLT                      R6 R12 ; [+3]
      186 ADDK                             R4 R4 K0 [1]
      187 JUMP                             ; [+8]
      188 GETUPVAL                         R12 2
      189 MOVE                             R13 R0
      190 LOADN                            R14 2
      191 MOVE                             R15 R4
      192 CALL                             R12 3 1
      193 JUMPIF                           R12 ; [+1]
      194 ADDK                             R12 R2 K0 [1]
      195 MOVE                             R4 R12
      196 LOADN                            R12 128
      197 JUMPIFNOTLT                      R8 R12 ; [+3]
      199 ADDK                             R5 R5 K0 [1]
      200 JUMP                             ; [+8]
      201 GETUPVAL                         R12 2
      202 MOVE                             R13 R1
      203 LOADN                            R14 2
      204 MOVE                             R15 R5
      205 CALL                             R12 3 1
      206 JUMPIF                           R12 ; [+1]
      207 ADDK                             R12 R3 K0 [1]
      208 MOVE                             R5 R12
      209 JUMPBACK                         ; [-202]
      210 JUMPIFNOTEQ                      R2 R3 ; [+3]
      212 LOADN                            R6 0
      213 RETURN                           R6 1
      214 JUMPIFNOTLT                      R2 R3 ; [+3]
      216 LOADN                            R6 255
      217 RETURN                           R6 1
      218 LOADN                            R6 1
      219 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K2 [string.byte]
        3 GETIMPORT                        R1 K5 [utf8.codepoint]
        5 GETIMPORT                        R2 K7 [utf8.offset]
        7 DUPCLOSURE                       R3 K8 [PROTO_0]
        8 DUPCLOSURE                       R4 K9 [PROTO_1]
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R1
       11 CAPTURE                          VAL R2
       12 RETURN                           R4 1
