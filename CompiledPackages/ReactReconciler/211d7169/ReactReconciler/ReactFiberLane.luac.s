PROTO_0:
        0 FASTCALL2K                       BIT32_RSHIFT R0 K0 ; [+4]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K0 [0]
        4 GETUPVAL                         R1 0
        5 CALL                             R1 2 1
        6 JUMPIFNOTEQKN                    R1 K0 [0] ; [+3]
        8 LOADN                            R2 32
        9 RETURN                           R2 1
       10 FASTCALL1                        MATH_LOG R1 ; [+2]
       11 MOVE                             R6 R1
       12 GETUPVAL                         R5 1
       13 CALL                             R5 1 1
       14 DIVK                             R4 R5 K2 [0.693147180559945]
       15 FASTCALL1                        MATH_FLOOR R4 ; [+1]
       16 GETUPVAL                         R3 2
       17 CALL                             R3 1 1
       18 SUBRK                            R2 R1 K3 [NULL]
       19 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_2:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_3:
        0 LOADN                            R2 1
        1 FASTCALL2                        BIT32_BAND R2 R0 ; [+4]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R1 K2 [bit32.band]
        6 CALL                             R1 2 1
        7 JUMPIFEQKN                       R1 K3 [0] ; [+5]
        9 LOADN                            R1 15
       10 SETUPVAL                         R1 0
       11 LOADN                            R1 1
       12 RETURN                           R1 1
       13 LOADN                            R2 2
       14 FASTCALL2                        BIT32_BAND R2 R0 ; [+4]
       16 MOVE                             R3 R0
       17 GETIMPORT                        R1 K2 [bit32.band]
       19 CALL                             R1 2 1
       20 JUMPIFEQKN                       R1 K3 [0] ; [+5]
       22 LOADN                            R1 14
       23 SETUPVAL                         R1 0
       24 LOADN                            R1 2
       25 RETURN                           R1 1
       26 LOADN                            R2 4
       27 FASTCALL2                        BIT32_BAND R2 R0 ; [+4]
       29 MOVE                             R3 R0
       30 GETIMPORT                        R1 K2 [bit32.band]
       32 CALL                             R1 2 1
       33 JUMPIFEQKN                       R1 K3 [0] ; [+5]
       35 LOADN                            R1 13
       36 SETUPVAL                         R1 0
       37 LOADN                            R1 4
       38 RETURN                           R1 1
       39 LOADN                            R2 24
       40 FASTCALL2                        BIT32_BAND R2 R0 ; [+4]
       42 MOVE                             R3 R0
       43 GETIMPORT                        R1 K2 [bit32.band]
       45 CALL                             R1 2 1
       46 JUMPIFEQKN                       R1 K3 [0] ; [+4]
       48 LOADN                            R2 12
       49 SETUPVAL                         R2 0
       50 RETURN                           R1 1
       51 FASTCALL2K                       BIT32_BAND R0 K4 ; [+5]
       53 MOVE                             R3 R0
       54 LOADK                            R4 K4 [32]
       55 GETIMPORT                        R2 K2 [bit32.band]
       57 CALL                             R2 2 1
       58 JUMPIFEQKN                       R2 K3 [0] ; [+5]
       60 LOADN                            R2 11
       61 SETUPVAL                         R2 0
       62 LOADN                            R2 32
       63 RETURN                           R2 1
       64 LOADN                            R3 192
       65 FASTCALL2                        BIT32_BAND R3 R0 ; [+4]
       67 MOVE                             R4 R0
       68 GETIMPORT                        R2 K2 [bit32.band]
       70 CALL                             R2 2 1
       71 JUMPIFEQKN                       R2 K3 [0] ; [+4]
       73 LOADN                            R3 10
       74 SETUPVAL                         R3 0
       75 RETURN                           R2 1
       76 FASTCALL2K                       BIT32_BAND R0 K5 ; [+5]
       78 MOVE                             R4 R0
       79 LOADK                            R5 K5 [256]
       80 GETIMPORT                        R3 K2 [bit32.band]
       82 CALL                             R3 2 1
       83 JUMPIFEQKN                       R3 K3 [0] ; [+5]
       85 LOADN                            R3 9
       86 SETUPVAL                         R3 0
       87 LOADN                            R3 0
       88 RETURN                           R3 1
       89 LOADN                            R4 0
       90 FASTCALL2                        BIT32_BAND R4 R0 ; [+4]
       92 MOVE                             R5 R0
       93 GETIMPORT                        R3 K2 [bit32.band]
       95 CALL                             R3 2 1
       96 JUMPIFEQKN                       R3 K3 [0] ; [+4]
       98 LOADN                            R4 8
       99 SETUPVAL                         R4 0
      100 RETURN                           R3 1
      101 FASTCALL2K                       BIT32_BAND R0 K6 ; [+5]
      103 MOVE                             R5 R0
      104 LOADK                            R6 K6 [4096]
      105 GETIMPORT                        R4 K2 [bit32.band]
      107 CALL                             R4 2 1
      108 JUMPIFEQKN                       R4 K3 [0] ; [+5]
      110 LOADN                            R4 7
      111 SETUPVAL                         R4 0
      112 LOADN                            R4 0
      113 RETURN                           R4 1
      114 LOADK                            R5 K7 [4186112]
      115 FASTCALL2                        BIT32_BAND R5 R0 ; [+4]
      117 MOVE                             R6 R0
      118 GETIMPORT                        R4 K2 [bit32.band]
      120 CALL                             R4 2 1
      121 JUMPIFEQKN                       R4 K3 [0] ; [+4]
      123 LOADN                            R5 6
      124 SETUPVAL                         R5 0
      125 RETURN                           R4 1
      126 LOADK                            R6 K8 [62914560]
      127 FASTCALL2                        BIT32_BAND R6 R0 ; [+4]
      129 MOVE                             R7 R0
      130 GETIMPORT                        R5 K2 [bit32.band]
      132 CALL                             R5 2 1
      133 JUMPIFEQKN                       R5 K3 [0] ; [+4]
      135 LOADN                            R6 5
      136 SETUPVAL                         R6 0
      137 RETURN                           R5 1
      138 FASTCALL2K                       BIT32_BAND R0 K9 ; [+5]
      140 MOVE                             R7 R0
      141 LOADK                            R8 K9 [67108864]
      142 GETIMPORT                        R6 K2 [bit32.band]
      144 CALL                             R6 2 1
      145 JUMPIFEQKN                       R6 K3 [0] ; [+5]
      147 LOADN                            R6 4
      148 SETUPVAL                         R6 0
      149 LOADK                            R6 K9 [67108864]
      150 RETURN                           R6 1
      151 FASTCALL2K                       BIT32_BAND R0 K10 ; [+5]
      153 MOVE                             R7 R0
      154 LOADK                            R8 K10 [134217728]
      155 GETIMPORT                        R6 K2 [bit32.band]
      157 CALL                             R6 2 1
      158 JUMPIFEQKN                       R6 K3 [0] ; [+5]
      160 LOADN                            R6 3
      161 SETUPVAL                         R6 0
      162 LOADK                            R6 K10 [134217728]
      163 RETURN                           R6 1
      164 LOADK                            R7 K11 [805306368]
      165 FASTCALL2                        BIT32_BAND R7 R0 ; [+4]
      167 MOVE                             R8 R0
      168 GETIMPORT                        R6 K2 [bit32.band]
      170 CALL                             R6 2 1
      171 JUMPIFEQKN                       R6 K3 [0] ; [+4]
      173 LOADN                            R7 2
      174 SETUPVAL                         R7 0
      175 RETURN                           R6 1
      176 LOADK                            R8 K12 [1073741824]
      177 FASTCALL2                        BIT32_BAND R8 R0 ; [+4]
      179 MOVE                             R9 R0
      180 GETIMPORT                        R7 K2 [bit32.band]
      182 CALL                             R7 2 1
      183 JUMPIFEQKN                       R7 K3 [0] ; [+5]
      185 LOADN                            R7 1
      186 SETUPVAL                         R7 0
      187 LOADK                            R7 K12 [1073741824]
      188 RETURN                           R7 1
      189 GETIMPORT                        R7 K14 [_G]
      191 GETTABLEKS                       R7 R7 K15 ["__DEV__"]
      193 JUMPIFNOT                        R7 ; [+5]
      194 GETUPVAL                         R7 1
      195 GETTABLEKS                       R7 R7 K16 ["error"]
      197 LOADK                            R8 K17 ["Should have found matching lanes. This is a bug in React."]
      198 CALL                             R7 1 0
      199 LOADN                            R7 8
      200 SETUPVAL                         R7 0
      201 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQ                      R0 R1 ; [+3]
        3 LOADN                            R1 15
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 1
        6 JUMPIFNOTEQ                      R0 R1 ; [+3]
        8 LOADN                            R1 10
        9 RETURN                           R1 1
       10 GETUPVAL                         R1 2
       11 JUMPIFEQ                         R0 R1 ; [+4]
       13 GETUPVAL                         R1 3
       14 JUMPIFNOTEQ                      R0 R1 ; [+3]
       16 LOADN                            R1 8
       17 RETURN                           R1 1
       18 GETUPVAL                         R1 4
       19 JUMPIFNOTEQ                      R0 R1 ; [+3]
       21 LOADN                            R1 2
       22 RETURN                           R1 1
       23 LOADN                            R1 0
       24 RETURN                           R1 1

PROTO_5:
        0 JUMPIFEQKN                       R0 K0 [15] ; [+3]
        2 JUMPIFNOTEQKN                    R0 K1 [14] ; [+3]
        4 GETUPVAL                         R1 0
        5 RETURN                           R1 1
        6 JUMPIFEQKN                       R0 K2 [13] ; [+7]
        8 JUMPIFEQKN                       R0 K3 [12] ; [+5]
       10 JUMPIFEQKN                       R0 K4 [11] ; [+3]
       12 JUMPIFNOTEQKN                    R0 K5 [10] ; [+3]
       14 GETUPVAL                         R1 1
       15 RETURN                           R1 1
       16 JUMPIFEQKN                       R0 K6 [9] ; [+11]
       18 JUMPIFEQKN                       R0 K7 [8] ; [+9]
       20 JUMPIFEQKN                       R0 K8 [7] ; [+7]
       22 JUMPIFEQKN                       R0 K9 [6] ; [+5]
       24 JUMPIFEQKN                       R0 K10 [4] ; [+3]
       26 JUMPIFNOTEQKN                    R0 K11 [5] ; [+3]
       28 GETUPVAL                         R1 2
       29 RETURN                           R1 1
       30 JUMPIFEQKN                       R0 K12 [3] ; [+5]
       32 JUMPIFEQKN                       R0 K13 [2] ; [+3]
       34 JUMPIFNOTEQKN                    R0 K14 [1] ; [+3]
       36 GETUPVAL                         R1 3
       37 RETURN                           R1 1
       38 JUMPIFNOTEQKN                    R0 K15 [0] ; [+3]
       40 GETUPVAL                         R1 4
       41 RETURN                           R1 1
       42 GETUPVAL                         R1 5
       43 LOADB                            R2 0
       44 LOADK                            R3 K16 ["Invalid update priority: %s. This is a bug in React."]
       45 MOVE                             R4 R0
       46 CALL                             R1 3 0
       47 GETIMPORT                        R1 K18 [error]
       49 LOADK                            R2 K19 ["unreachable"]
       50 CALL                             R1 1 0
       51 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["pendingLanes"]
        2 JUMPIFNOTEQKN                    R2 K1 [0] ; [+5]
        4 LOADN                            R3 0
        5 SETUPVAL                         R3 0
        6 LOADN                            R3 0
        7 RETURN                           R3 1
        8 LOADN                            R3 0
        9 LOADN                            R4 0
       10 GETTABLEKS                       R5 R0 K2 ["expiredLanes"]
       12 GETTABLEKS                       R6 R0 K3 ["suspendedLanes"]
       14 GETTABLEKS                       R7 R0 K4 ["pingedLanes"]
       16 JUMPIFEQKN                       R5 K1 [0] ; [+6]
       18 MOVE                             R3 R5
       19 LOADN                            R8 15
       20 SETUPVAL                         R8 0
       21 LOADN                            R4 15
       22 JUMP                             ; [+69]
       23 FASTCALL2K                       BIT32_BAND R2 K5 ; [+5]
       25 MOVE                             R9 R2
       26 LOADK                            R10 K5 [134217727]
       27 GETIMPORT                        R8 K8 [bit32.band]
       29 CALL                             R8 2 1
       30 JUMPIFEQKN                       R8 K1 [0] ; [+35]
       32 FASTCALL1                        BIT32_BNOT R6 ; [+3]
       33 MOVE                             R12 R6
       34 GETIMPORT                        R11 K10 [bit32.bnot]
       36 CALL                             R11 1 1
       37 FASTCALL2                        BIT32_BAND R8 R11 ; [+4]
       39 MOVE                             R10 R8
       40 GETIMPORT                        R9 K8 [bit32.band]
       42 CALL                             R9 2 1
       43 JUMPIFEQKN                       R9 K1 [0] ; [+7]
       45 GETUPVAL                         R10 1
       46 MOVE                             R11 R9
       47 CALL                             R10 1 1
       48 MOVE                             R3 R10
       49 GETUPVAL                         R4 0
       50 JUMP                             ; [+41]
       51 FASTCALL2                        BIT32_BAND R8 R7 ; [+5]
       53 MOVE                             R11 R8
       54 MOVE                             R12 R7
       55 GETIMPORT                        R10 K8 [bit32.band]
       57 CALL                             R10 2 1
       58 JUMPIFEQKN                       R10 K1 [0] ; [+33]
       60 GETUPVAL                         R11 1
       61 MOVE                             R12 R10
       62 CALL                             R11 1 1
       63 MOVE                             R3 R11
       64 GETUPVAL                         R4 0
       65 JUMP                             ; [+26]
       66 FASTCALL1                        BIT32_BNOT R6 ; [+3]
       67 MOVE                             R12 R6
       68 GETIMPORT                        R11 K10 [bit32.bnot]
       70 CALL                             R11 1 1
       71 FASTCALL2                        BIT32_BAND R2 R11 ; [+4]
       73 MOVE                             R10 R2
       74 GETIMPORT                        R9 K8 [bit32.band]
       76 CALL                             R9 2 1
       77 JUMPIFEQKN                       R9 K1 [0] ; [+7]
       79 GETUPVAL                         R10 1
       80 MOVE                             R11 R9
       81 CALL                             R10 1 1
       82 MOVE                             R3 R10
       83 GETUPVAL                         R4 0
       84 JUMP                             ; [+7]
       85 JUMPIFEQKN                       R7 K1 [0] ; [+6]
       87 GETUPVAL                         R10 1
       88 MOVE                             R11 R7
       89 CALL                             R10 1 1
       90 MOVE                             R3 R10
       91 GETUPVAL                         R4 0
       92 JUMPIFNOTEQKN                    R3 K1 [0] ; [+3]
       94 LOADN                            R8 0
       95 RETURN                           R8 1
       96 GETUPVAL                         R12 2
       97 MOVE                             R13 R3
       98 CALL                             R12 1 1
       99 FASTCALL2K                       BIT32_LSHIFT R12 K11 ; [+4]
      101 LOADK                            R13 K11 [1]
      102 GETIMPORT                        R11 K13 [bit32.lshift]
      104 CALL                             R11 2 1
      105 SUBK                             R10 R11 K11 [1]
      106 FASTCALL2                        BIT32_BAND R2 R10 ; [+4]
      108 MOVE                             R9 R2
      109 GETIMPORT                        R8 K8 [bit32.band]
      111 CALL                             R8 2 1
      112 MOVE                             R3 R8
      113 JUMPIFEQKN                       R1 K1 [0] ; [+20]
      115 JUMPIFEQ                         R1 R3 ; [+18]
      117 FASTCALL2                        BIT32_BAND R1 R6 ; [+5]
      119 MOVE                             R9 R1
      120 MOVE                             R10 R6
      121 GETIMPORT                        R8 K8 [bit32.band]
      123 CALL                             R8 2 1
      124 JUMPIFNOTEQKN                    R8 K1 [0] ; [+9]
      126 GETUPVAL                         R8 1
      127 MOVE                             R9 R1
      128 CALL                             R8 1 0
      129 GETUPVAL                         R8 0
      130 JUMPIFNOTLE                      R4 R8 ; [+2]
      132 RETURN                           R1 1
      133 SETUPVAL                         R4 0
      134 GETTABLEKS                       R8 R0 K14 ["entangledLanes"]
      136 JUMPIFEQKN                       R8 K1 [0] ; [+44]
      138 GETTABLEKS                       R9 R0 K15 ["entanglements"]
      140 FASTCALL2                        BIT32_BAND R3 R8 ; [+5]
      142 MOVE                             R11 R3
      143 MOVE                             R12 R8
      144 GETIMPORT                        R10 K8 [bit32.band]
      146 CALL                             R10 2 1
      147 LOADN                            R11 0
      148 JUMPIFNOTLT                      R11 R10 ; [+32]
      150 GETUPVAL                         R11 3
      151 MOVE                             R12 R10
      152 CALL                             R11 1 1
      153 LOADN                            R13 1
      154 FASTCALL2                        BIT32_LSHIFT R13 R11 ; [+4]
      156 MOVE                             R14 R11
      157 GETIMPORT                        R12 K13 [bit32.lshift]
      159 CALL                             R12 2 1
      160 GETTABLE                         R15 R9 R11
      161 FASTCALL2                        BIT32_BOR R3 R15 ; [+4]
      163 MOVE                             R14 R3
      164 GETIMPORT                        R13 K17 [bit32.bor]
      166 CALL                             R13 2 1
      167 MOVE                             R3 R13
      168 FASTCALL1                        BIT32_BNOT R12 ; [+3]
      169 MOVE                             R16 R12
      170 GETIMPORT                        R15 K10 [bit32.bnot]
      172 CALL                             R15 1 1
      173 FASTCALL2                        BIT32_BAND R10 R15 ; [+4]
      175 MOVE                             R14 R10
      176 GETIMPORT                        R13 K8 [bit32.band]
      178 CALL                             R13 2 1
      179 MOVE                             R10 R13
      180 JUMPBACK                         ; [-34]
      181 RETURN                           R3 1

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["eventTimes"]
        2 LOADN                            R3 255
        3 LOADN                            R4 0
        4 JUMPIFNOTLT                      R4 R1 ; [+28]
        6 GETUPVAL                         R4 0
        7 MOVE                             R5 R1
        8 CALL                             R4 1 1
        9 LOADN                            R6 1
       10 FASTCALL2                        BIT32_LSHIFT R6 R4 ; [+4]
       12 MOVE                             R7 R4
       13 GETIMPORT                        R5 K3 [bit32.lshift]
       15 CALL                             R5 2 1
       16 GETTABLE                         R6 R2 R4
       17 JUMPIFNOTLT                      R3 R6 ; [+2]
       19 MOVE                             R3 R6
       20 FASTCALL1                        BIT32_BNOT R5 ; [+3]
       21 MOVE                             R10 R5
       22 GETIMPORT                        R9 K5 [bit32.bnot]
       24 CALL                             R9 1 1
       25 FASTCALL2                        BIT32_BAND R1 R9 ; [+4]
       27 MOVE                             R8 R1
       28 GETIMPORT                        R7 K7 [bit32.band]
       30 CALL                             R7 2 1
       31 MOVE                             R1 R7
       32 JUMPBACK                         ; [-30]
       33 RETURN                           R3 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 0
        3 GETUPVAL                         R2 1
        4 LOADN                            R3 10
        5 JUMPIFNOTLE                      R3 R2 ; [+3]
        7 ADDK                             R3 R1 K0 [250]
        8 RETURN                           R3 1
        9 LOADN                            R3 6
       10 JUMPIFNOTLE                      R3 R2 ; [+3]
       12 ADDK                             R3 R1 K1 [5000]
       13 RETURN                           R3 1
       14 LOADN                            R3 255
       15 RETURN                           R3 1

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["pendingLanes"]
        2 GETTABLEKS                       R3 R0 K1 ["suspendedLanes"]
        4 GETTABLEKS                       R4 R0 K2 ["pingedLanes"]
        6 GETTABLEKS                       R5 R0 K3 ["expirationTimes"]
        8 MOVE                             R6 R2
        9 LOADN                            R7 0
       10 JUMPIFNOTLT                      R7 R6 ; [+74]
       12 GETUPVAL                         R7 0
       13 MOVE                             R8 R6
       14 CALL                             R7 1 1
       15 LOADN                            R9 1
       16 FASTCALL2                        BIT32_LSHIFT R9 R7 ; [+4]
       18 MOVE                             R10 R7
       19 GETIMPORT                        R8 K6 [bit32.lshift]
       21 CALL                             R8 2 1
       22 GETTABLE                         R9 R5 R7
       23 JUMPIFNOTEQKN                    R9 K7 [-1] ; [+36]
       25 FASTCALL2                        BIT32_BAND R8 R3 ; [+5]
       27 MOVE                             R11 R8
       28 MOVE                             R12 R3
       29 GETIMPORT                        R10 K9 [bit32.band]
       31 CALL                             R10 2 1
       32 JUMPIFEQKN                       R10 K10 [0] ; [+10]
       34 FASTCALL2                        BIT32_BAND R8 R4 ; [+5]
       36 MOVE                             R11 R8
       37 MOVE                             R12 R4
       38 GETIMPORT                        R10 K9 [bit32.band]
       40 CALL                             R10 2 1
       41 JUMPIFEQKN                       R10 K10 [0] ; [+30]
       43 GETUPVAL                         R11 1
       44 MOVE                             R12 R8
       45 CALL                             R11 1 0
       46 GETUPVAL                         R11 2
       47 LOADN                            R12 10
       48 JUMPIFNOTLE                      R12 R11 ; [+3]
       50 ADDK                             R10 R1 K11 [250]
       51 JUMP                             ; [+6]
       52 LOADN                            R12 6
       53 JUMPIFNOTLE                      R12 R11 ; [+3]
       55 ADDK                             R10 R1 K12 [5000]
       56 JUMP                             ; [+1]
       57 LOADN                            R10 255
       58 SETTABLE                         R10 R5 R7
       59 JUMP                             ; [+12]
       60 JUMPIFNOTLE                      R9 R1 ; [+11]
       62 GETTABLEKS                       R11 R0 K13 ["expiredLanes"]
       64 FASTCALL2                        BIT32_BOR R11 R8 ; [+4]
       66 MOVE                             R12 R8
       67 GETIMPORT                        R10 K15 [bit32.bor]
       69 CALL                             R10 2 1
       70 SETTABLEKS                       R10 R0 K13 ["expiredLanes"]
       72 FASTCALL1                        BIT32_BNOT R8 ; [+3]
       73 MOVE                             R13 R8
       74 GETIMPORT                        R12 K17 [bit32.bnot]
       76 CALL                             R12 1 1
       77 FASTCALL2                        BIT32_BAND R6 R12 ; [+4]
       79 MOVE                             R11 R6
       80 GETIMPORT                        R10 K9 [bit32.band]
       82 CALL                             R10 2 1
       83 MOVE                             R6 R10
       84 JUMPBACK                         ; [-76]
       85 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["pendingLanes"]
        3 CALL                             R1 1 1
        4 RETURN                           R1 1

PROTO_11:
        0 GETTABLEKS                       R2 R0 K0 ["pendingLanes"]
        2 FASTCALL2K                       BIT32_BAND R2 K1 ; [+4]
        4 LOADK                            R3 K1 [3221225471]
        5 GETIMPORT                        R1 K4 [bit32.band]
        7 CALL                             R1 2 1
        8 JUMPIFEQKN                       R1 K5 [0] ; [+2]
       10 RETURN                           R1 1
       11 FASTCALL2K                       BIT32_BAND R1 K6 ; [+5]
       13 MOVE                             R3 R1
       14 LOADK                            R4 K6 [1073741824]
       15 GETIMPORT                        R2 K4 [bit32.band]
       17 CALL                             R2 2 1
       18 JUMPIFEQKN                       R2 K5 [0] ; [+3]
       20 LOADK                            R2 K6 [1073741824]
       21 RETURN                           R2 1
       22 LOADN                            R2 0
       23 RETURN                           R2 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_13:
        0 FASTCALL2K                       BIT32_BAND R0 K0 ; [+5]
        2 MOVE                             R3 R0
        3 LOADK                            R4 K0 [134217727]
        4 GETIMPORT                        R2 K3 [bit32.band]
        6 CALL                             R2 2 1
        7 JUMPIFNOTEQKN                    R2 K4 [0] ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_14:
        0 FASTCALL2K                       BIT32_BAND R0 K0 ; [+5]
        2 MOVE                             R3 R0
        3 LOADK                            R4 K0 [62914560]
        4 GETIMPORT                        R2 K3 [bit32.band]
        6 CALL                             R2 2 1
        7 JUMPIFEQ                         R2 R0 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_15:
        0 FASTCALL2K                       BIT32_BAND R0 K0 ; [+5]
        2 MOVE                             R3 R0
        3 LOADK                            R4 K0 [4186112]
        4 GETIMPORT                        R2 K3 [bit32.band]
        6 CALL                             R2 2 1
        7 JUMPIFEQ                         R2 R0 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_16:
        0 JUMPIFNOTEQKN                    R0 K0 [0] ; [+2]
        2 JUMP                             ; [+119]
        3 JUMPIFNOTEQKN                    R0 K1 [15] ; [+3]
        5 LOADN                            R2 1
        6 RETURN                           R2 1
        7 JUMPIFNOTEQKN                    R0 K2 [14] ; [+3]
        9 LOADN                            R2 2
       10 RETURN                           R2 1
       11 JUMPIFNOTEQKN                    R0 K3 [12] ; [+22]
       13 GETUPVAL                         R2 0
       14 LOADN                            R4 24
       15 FASTCALL1                        BIT32_BNOT R1 ; [+3]
       16 MOVE                             R6 R1
       17 GETIMPORT                        R5 K6 [bit32.bnot]
       19 CALL                             R5 1 1
       20 FASTCALL2                        BIT32_BAND R4 R5 ; [+3]
       22 GETIMPORT                        R3 K8 [bit32.band]
       24 CALL                             R3 2 1
       25 CALL                             R2 1 1
       26 JUMPIFNOTEQKN                    R2 K0 [0] ; [+6]
       28 GETUPVAL                         R3 1
       29 LOADN                            R4 10
       30 MOVE                             R5 R1
       31 CALL                             R3 2 -1
       32 RETURN                           R3 -1
       33 RETURN                           R2 1
       34 JUMPIFNOTEQKN                    R0 K9 [10] ; [+22]
       36 GETUPVAL                         R2 0
       37 LOADN                            R4 192
       38 FASTCALL1                        BIT32_BNOT R1 ; [+3]
       39 MOVE                             R6 R1
       40 GETIMPORT                        R5 K6 [bit32.bnot]
       42 CALL                             R5 1 1
       43 FASTCALL2                        BIT32_BAND R4 R5 ; [+3]
       45 GETIMPORT                        R3 K8 [bit32.band]
       47 CALL                             R3 2 1
       48 CALL                             R2 1 1
       49 JUMPIFNOTEQKN                    R2 K0 [0] ; [+6]
       51 GETUPVAL                         R3 1
       52 LOADN                            R4 8
       53 MOVE                             R5 R1
       54 CALL                             R3 2 -1
       55 RETURN                           R3 -1
       56 RETURN                           R2 1
       57 JUMPIFNOTEQKN                    R0 K10 [8] ; [+37]
       59 GETUPVAL                         R2 0
       60 LOADN                            R4 0
       61 FASTCALL1                        BIT32_BNOT R1 ; [+3]
       62 MOVE                             R6 R1
       63 GETIMPORT                        R5 K6 [bit32.bnot]
       65 CALL                             R5 1 1
       66 FASTCALL2                        BIT32_BAND R4 R5 ; [+3]
       68 GETIMPORT                        R3 K8 [bit32.band]
       70 CALL                             R3 2 1
       71 CALL                             R2 1 1
       72 JUMPIFNOTEQKN                    R2 K0 [0] ; [+21]
       74 GETUPVAL                         R3 0
       75 LOADK                            R5 K11 [4186112]
       76 FASTCALL1                        BIT32_BNOT R1 ; [+3]
       77 MOVE                             R7 R1
       78 GETIMPORT                        R6 K6 [bit32.bnot]
       80 CALL                             R6 1 1
       81 FASTCALL2                        BIT32_BAND R5 R6 ; [+3]
       83 GETIMPORT                        R4 K8 [bit32.band]
       85 CALL                             R4 2 1
       86 CALL                             R3 1 1
       87 MOVE                             R2 R3
       88 JUMPIFNOTEQKN                    R2 K0 [0] ; [+5]
       90 GETUPVAL                         R3 0
       91 LOADN                            R4 0
       92 CALL                             R3 1 1
       93 MOVE                             R2 R3
       94 RETURN                           R2 1
       95 JUMPIFEQKN                       R0 K12 [6] ; [+26]
       97 JUMPIFNOTEQKN                    R0 K13 [5] ; [+2]
       99 JUMP                             ; [+22]
      100 JUMPIFNOTEQKN                    R0 K14 [2] ; [+21]
      102 GETUPVAL                         R2 0
      103 LOADK                            R4 K15 [805306368]
      104 FASTCALL1                        BIT32_BNOT R1 ; [+3]
      105 MOVE                             R6 R1
      106 GETIMPORT                        R5 K6 [bit32.bnot]
      108 CALL                             R5 1 1
      109 FASTCALL2                        BIT32_BAND R4 R5 ; [+3]
      111 GETIMPORT                        R3 K8 [bit32.band]
      113 CALL                             R3 2 1
      114 CALL                             R2 1 1
      115 JUMPIFNOTEQKN                    R2 K0 [0] ; [+5]
      117 GETUPVAL                         R3 0
      118 LOADK                            R4 K15 [805306368]
      119 CALL                             R3 1 1
      120 MOVE                             R2 R3
      121 RETURN                           R2 1
      122 GETUPVAL                         R2 2
      123 LOADB                            R3 0
      124 LOADK                            R4 K16 ["Invalid update priority: %s. This is a bug in React."]
      125 MOVE                             R5 R0
      126 CALL                             R2 3 0
      127 GETIMPORT                        R2 K18 [error]
      129 LOADK                            R3 K19 ["unreachable"]
      130 CALL                             R2 1 0
      131 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 [4186112]
        2 FASTCALL1                        BIT32_BNOT R1 ; [+3]
        3 MOVE                             R6 R1
        4 GETIMPORT                        R5 K3 [bit32.bnot]
        6 CALL                             R5 1 1
        7 FASTCALL2                        BIT32_BAND R4 R5 ; [+3]
        9 GETIMPORT                        R3 K5 [bit32.band]
       11 CALL                             R3 2 1
       12 CALL                             R2 1 1
       13 JUMPIFNOTEQKN                    R2 K6 [0] ; [+21]
       15 GETUPVAL                         R3 0
       16 LOADK                            R5 K0 [4186112]
       17 FASTCALL1                        BIT32_BNOT R0 ; [+3]
       18 MOVE                             R7 R0
       19 GETIMPORT                        R6 K3 [bit32.bnot]
       21 CALL                             R6 1 1
       22 FASTCALL2                        BIT32_BAND R5 R6 ; [+3]
       24 GETIMPORT                        R4 K5 [bit32.band]
       26 CALL                             R4 2 1
       27 CALL                             R3 1 1
       28 MOVE                             R2 R3
       29 JUMPIFNOTEQKN                    R2 K6 [0] ; [+5]
       31 GETUPVAL                         R3 0
       32 LOADK                            R4 K0 [4186112]
       33 CALL                             R3 1 1
       34 MOVE                             R2 R3
       35 RETURN                           R2 1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 [62914560]
        2 FASTCALL1                        BIT32_BNOT R0 ; [+3]
        3 MOVE                             R5 R0
        4 GETIMPORT                        R4 K3 [bit32.bnot]
        6 CALL                             R4 1 1
        7 FASTCALL2                        BIT32_BAND R3 R4 ; [+3]
        9 GETIMPORT                        R2 K5 [bit32.band]
       11 CALL                             R2 2 1
       12 CALL                             R1 1 1
       13 JUMPIFNOTEQKN                    R1 K6 [0] ; [+5]
       15 GETUPVAL                         R2 0
       16 LOADK                            R3 K0 [62914560]
       17 CALL                             R2 1 1
       18 MOVE                             R1 R2
       19 RETURN                           R1 1

PROTO_19:
        0 MINUS                            R3 R0
        1 FASTCALL2                        BIT32_BAND R0 R3 ; [+4]
        3 MOVE                             R2 R0
        4 GETIMPORT                        R1 K2 [bit32.band]
        6 CALL                             R1 2 1
        7 RETURN                           R1 1

PROTO_20:
        0 FASTCALL2K                       BIT32_RSHIFT R0 K1 ; [+4]
        2 MOVE                             R4 R0
        3 LOADK                            R5 K1 [0]
        4 GETUPVAL                         R3 0
        5 CALL                             R3 2 1
        6 JUMPIFNOTEQKN                    R3 K1 [0] ; [+3]
        8 LOADN                            R2 32
        9 JUMP                             ; [+9]
       10 FASTCALL1                        MATH_LOG R3 ; [+2]
       11 MOVE                             R7 R3
       12 GETUPVAL                         R6 1
       13 CALL                             R6 1 1
       14 DIVK                             R5 R6 K2 [0.693147180559945]
       15 FASTCALL1                        MATH_FLOOR R5 ; [+1]
       16 GETUPVAL                         R4 2
       17 CALL                             R4 1 1
       18 SUBRK                            R2 R0 K4 ["lshift"]
       19 SUBRK                            R1 R0 K2 [0.693147180559945]
       20 LOADN                            R2 0
       21 JUMPIFNOTLT                      R1 R2 ; [+3]
       23 LOADN                            R2 0
       24 RETURN                           R2 1
       25 LOADN                            R3 1
       26 FASTCALL2                        BIT32_LSHIFT R3 R1 ; [+4]
       28 MOVE                             R4 R1
       29 GETIMPORT                        R2 K5 [bit32.lshift]
       31 CALL                             R2 2 1
       32 RETURN                           R2 1

PROTO_21:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 CALL                             R3 1 1
        3 FASTCALL2K                       BIT32_LSHIFT R3 K0 ; [+4]
        5 LOADK                            R4 K0 [1]
        6 GETIMPORT                        R2 K3 [bit32.lshift]
        8 CALL                             R2 2 1
        9 SUBK                             R1 R2 K0 [1]
       10 RETURN                           R1 1

PROTO_22:
        0 MINUS                            R3 R0
        1 FASTCALL2                        BIT32_BAND R0 R3 ; [+4]
        3 MOVE                             R2 R0
        4 GETIMPORT                        R1 K2 [bit32.band]
        6 CALL                             R1 2 1
        7 RETURN                           R1 1

PROTO_23:
        0 FASTCALL2K                       BIT32_RSHIFT R0 K1 ; [+4]
        2 MOVE                             R4 R0
        3 LOADK                            R5 K1 [0]
        4 GETUPVAL                         R3 0
        5 CALL                             R3 2 1
        6 JUMPIFNOTEQKN                    R3 K1 [0] ; [+3]
        8 LOADN                            R2 32
        9 JUMP                             ; [+9]
       10 FASTCALL1                        MATH_LOG R3 ; [+2]
       11 MOVE                             R7 R3
       12 GETUPVAL                         R6 1
       13 CALL                             R6 1 1
       14 DIVK                             R5 R6 K2 [0.693147180559945]
       15 FASTCALL1                        MATH_FLOOR R5 ; [+1]
       16 GETUPVAL                         R4 2
       17 CALL                             R4 1 1
       18 SUBRK                            R2 R0 K4 [NULL]
       19 SUBRK                            R1 R0 K2 [0.693147180559945]
       20 RETURN                           R1 1

PROTO_24:
        0 FASTCALL2                        BIT32_BAND R0 R1 ; [+5]
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 GETIMPORT                        R3 K2 [bit32.band]
        6 CALL                             R3 2 1
        7 JUMPIFNOTEQKN                    R3 K3 [0] ; [+2]
        9 LOADB                            R2 0 +1
       10 LOADB                            R2 1
       11 RETURN                           R2 1

PROTO_25:
        0 FASTCALL2                        BIT32_BAND R0 R1 ; [+5]
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 GETIMPORT                        R3 K2 [bit32.band]
        6 CALL                             R3 2 1
        7 JUMPIFEQ                         R3 R1 ; [+2]
        9 LOADB                            R2 0 +1
       10 LOADB                            R2 1
       11 RETURN                           R2 1

PROTO_26:
        0 FASTCALL2                        BIT32_BOR R0 R1 ; [+5]
        2 MOVE                             R3 R0
        3 MOVE                             R4 R1
        4 GETIMPORT                        R2 K2 [bit32.bor]
        6 CALL                             R2 2 1
        7 RETURN                           R2 1

PROTO_27:
        0 FASTCALL1                        BIT32_BNOT R1 ; [+3]
        1 MOVE                             R5 R1
        2 GETIMPORT                        R4 K2 [bit32.bnot]
        4 CALL                             R4 1 1
        5 FASTCALL2                        BIT32_BAND R0 R4 ; [+4]
        7 MOVE                             R3 R0
        8 GETIMPORT                        R2 K4 [bit32.band]
       10 CALL                             R2 2 1
       11 RETURN                           R2 1

PROTO_28:
        0 RETURN                           R0 1

PROTO_29:
        0 JUMPIFEQKN                       R0 K0 [0] ; [+7]
        2 JUMPIFEQKN                       R1 K0 [0] ; [+5]
        4 JUMPIFNOTLT                      R0 R1 ; [+2]
        6 RETURN                           R0 1
        7 RETURN                           R1 1
        8 JUMPIFEQKN                       R0 K0 [0] ; [+2]
       10 RETURN                           R0 1
       11 RETURN                           R1 1

PROTO_30:
        0 JUMPIFEQKN                       R0 K0 [0] ; [+4]
        2 JUMPIFNOTLT                      R1 R0 ; [+2]
        4 RETURN                           R0 1
        5 RETURN                           R1 1

PROTO_31:
        0 NEWTABLE                         R1 32 0
        2 LOADN                            R2 0
        3 SETTABLE                         R0 R1 R2
        4 SETTABLEN                        R0 R1 1
        5 SETTABLEN                        R0 R1 2
        6 SETTABLEN                        R0 R1 3
        7 SETTABLEN                        R0 R1 4
        8 SETTABLEN                        R0 R1 5
        9 SETTABLEN                        R0 R1 6
       10 SETTABLEN                        R0 R1 7
       11 SETTABLEN                        R0 R1 8
       12 SETTABLEN                        R0 R1 9
       13 SETTABLEN                        R0 R1 10
       14 SETTABLEN                        R0 R1 11
       15 SETTABLEN                        R0 R1 12
       16 SETTABLEN                        R0 R1 13
       17 SETTABLEN                        R0 R1 14
       18 SETTABLEN                        R0 R1 15
       19 SETTABLEN                        R0 R1 16
       20 SETTABLEN                        R0 R1 17
       21 SETTABLEN                        R0 R1 18
       22 SETTABLEN                        R0 R1 19
       23 SETTABLEN                        R0 R1 20
       24 SETTABLEN                        R0 R1 21
       25 SETTABLEN                        R0 R1 22
       26 SETTABLEN                        R0 R1 23
       27 SETTABLEN                        R0 R1 24
       28 SETTABLEN                        R0 R1 25
       29 SETTABLEN                        R0 R1 26
       30 SETTABLEN                        R0 R1 27
       31 SETTABLEN                        R0 R1 28
       32 SETTABLEN                        R0 R1 29
       33 SETTABLEN                        R0 R1 30
       34 SETTABLEN                        R0 R1 31
       35 RETURN                           R1 1

PROTO_32:
        0 GETTABLEKS                       R4 R0 K0 ["pendingLanes"]
        2 FASTCALL2                        BIT32_BOR R4 R1 ; [+4]
        4 MOVE                             R5 R1
        5 GETIMPORT                        R3 K3 [bit32.bor]
        7 CALL                             R3 2 1
        8 SETTABLEKS                       R3 R0 K0 ["pendingLanes"]
       10 SUBK                             R3 R1 K4 [1]
       11 GETTABLEKS                       R5 R0 K5 ["suspendedLanes"]
       13 FASTCALL2                        BIT32_BAND R5 R3 ; [+4]
       15 MOVE                             R6 R3
       16 GETIMPORT                        R4 K7 [bit32.band]
       18 CALL                             R4 2 1
       19 SETTABLEKS                       R4 R0 K5 ["suspendedLanes"]
       21 GETTABLEKS                       R5 R0 K8 ["pingedLanes"]
       23 FASTCALL2                        BIT32_BAND R5 R3 ; [+4]
       25 MOVE                             R6 R3
       26 GETIMPORT                        R4 K7 [bit32.band]
       28 CALL                             R4 2 1
       29 SETTABLEKS                       R4 R0 K8 ["pingedLanes"]
       31 GETTABLEKS                       R4 R0 K9 ["eventTimes"]
       33 FASTCALL2K                       BIT32_RSHIFT R1 K11 ; [+4]
       35 MOVE                             R8 R1
       36 LOADK                            R9 K11 [0]
       37 GETUPVAL                         R7 0
       38 CALL                             R7 2 1
       39 JUMPIFNOTEQKN                    R7 K11 [0] ; [+3]
       41 LOADN                            R6 32
       42 JUMP                             ; [+9]
       43 FASTCALL1                        MATH_LOG R7 ; [+2]
       44 MOVE                             R11 R7
       45 GETUPVAL                         R10 1
       46 CALL                             R10 1 1
       47 DIVK                             R9 R10 K12 [0.693147180559945]
       48 FASTCALL1                        MATH_FLOOR R9 ; [+1]
       49 GETUPVAL                         R8 2
       50 CALL                             R8 1 1
       51 SUBRK                            R6 R10 K8 ["pingedLanes"]
       52 SUBRK                            R5 R10 K6 ["band"]
       53 SETTABLE                         R2 R4 R5
       54 RETURN                           R0 0

PROTO_33:
        0 GETTABLEKS                       R3 R0 K0 ["suspendedLanes"]
        2 FASTCALL2                        BIT32_BOR R3 R1 ; [+4]
        4 MOVE                             R4 R1
        5 GETIMPORT                        R2 K3 [bit32.bor]
        7 CALL                             R2 2 1
        8 SETTABLEKS                       R2 R0 K0 ["suspendedLanes"]
       10 GETTABLEKS                       R3 R0 K4 ["pingedLanes"]
       12 FASTCALL1                        BIT32_BNOT R1 ; [+3]
       13 MOVE                             R5 R1
       14 GETIMPORT                        R4 K6 [bit32.bnot]
       16 CALL                             R4 1 1
       17 FASTCALL2                        BIT32_BAND R3 R4 ; [+3]
       19 GETIMPORT                        R2 K8 [bit32.band]
       21 CALL                             R2 2 1
       22 SETTABLEKS                       R2 R0 K4 ["pingedLanes"]
       24 GETTABLEKS                       R2 R0 K9 ["expirationTimes"]
       26 MOVE                             R3 R1
       27 LOADN                            R4 0
       28 JUMPIFNOTLT                      R4 R3 ; [+26]
       30 GETUPVAL                         R4 0
       31 MOVE                             R5 R3
       32 CALL                             R4 1 1
       33 LOADN                            R6 1
       34 FASTCALL2                        BIT32_LSHIFT R6 R4 ; [+4]
       36 MOVE                             R7 R4
       37 GETIMPORT                        R5 K11 [bit32.lshift]
       39 CALL                             R5 2 1
       40 LOADN                            R6 255
       41 SETTABLE                         R6 R2 R4
       42 FASTCALL1                        BIT32_BNOT R5 ; [+3]
       43 MOVE                             R9 R5
       44 GETIMPORT                        R8 K6 [bit32.bnot]
       46 CALL                             R8 1 1
       47 FASTCALL2                        BIT32_BAND R3 R8 ; [+4]
       49 MOVE                             R7 R3
       50 GETIMPORT                        R6 K8 [bit32.band]
       52 CALL                             R6 2 1
       53 MOVE                             R3 R6
       54 JUMPBACK                         ; [-28]
       55 RETURN                           R0 0

PROTO_34:
        0 GETTABLEKS                       R4 R0 K0 ["pingedLanes"]
        2 GETTABLEKS                       R6 R0 K1 ["suspendedLanes"]
        4 FASTCALL2                        BIT32_BAND R6 R1 ; [+4]
        6 MOVE                             R7 R1
        7 GETIMPORT                        R5 K4 [bit32.band]
        9 CALL                             R5 2 1
       10 FASTCALL2                        BIT32_BOR R4 R5 ; [+3]
       12 GETIMPORT                        R3 K6 [bit32.bor]
       14 CALL                             R3 2 1
       15 SETTABLEKS                       R3 R0 K0 ["pingedLanes"]
       17 RETURN                           R0 0

PROTO_35:
        0 GETTABLEKS                       R3 R0 K0 ["expiredLanes"]
        2 GETTABLEKS                       R6 R0 K1 ["pendingLanes"]
        4 FASTCALL2                        BIT32_BAND R1 R6 ; [+4]
        6 MOVE                             R5 R1
        7 GETIMPORT                        R4 K4 [bit32.band]
        9 CALL                             R4 2 1
       10 FASTCALL2                        BIT32_BOR R3 R4 ; [+3]
       12 GETIMPORT                        R2 K6 [bit32.bor]
       14 CALL                             R2 2 1
       15 SETTABLEKS                       R2 R0 K0 ["expiredLanes"]
       17 RETURN                           R0 0

PROTO_36:
        0 GETTABLEKS                       R2 R0 K0 ["expiredLanes"]
        2 LOADN                            R4 24
        3 GETTABLEKS                       R5 R0 K1 ["pendingLanes"]
        5 FASTCALL2                        BIT32_BAND R4 R5 ; [+3]
        7 GETIMPORT                        R3 K4 [bit32.band]
        9 CALL                             R3 2 1
       10 FASTCALL2                        BIT32_BOR R2 R3 ; [+3]
       12 GETIMPORT                        R1 K6 [bit32.bor]
       14 CALL                             R1 2 1
       15 SETTABLEKS                       R1 R0 K0 ["expiredLanes"]
       17 RETURN                           R0 0

PROTO_37:
        0 FASTCALL2K                       BIT32_BAND R0 K0 ; [+5]
        2 MOVE                             R3 R0
        3 LOADK                            R4 K0 [24]
        4 GETIMPORT                        R2 K3 [bit32.band]
        6 CALL                             R2 2 1
        7 JUMPIFNOTEQKN                    R2 K4 [0] ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_38:
        0 GETTABLEKS                       R3 R0 K0 ["mutableReadLanes"]
        2 GETTABLEKS                       R6 R0 K1 ["pendingLanes"]
        4 FASTCALL2                        BIT32_BAND R1 R6 ; [+4]
        6 MOVE                             R5 R1
        7 GETIMPORT                        R4 K4 [bit32.band]
        9 CALL                             R4 2 1
       10 FASTCALL2                        BIT32_BOR R3 R4 ; [+3]
       12 GETIMPORT                        R2 K6 [bit32.bor]
       14 CALL                             R2 2 1
       15 SETTABLEKS                       R2 R0 K0 ["mutableReadLanes"]
       17 RETURN                           R0 0

PROTO_39:
        0 GETTABLEKS                       R3 R0 K0 ["pendingLanes"]
        2 FASTCALL1                        BIT32_BNOT R1 ; [+3]
        3 MOVE                             R5 R1
        4 GETIMPORT                        R4 K3 [bit32.bnot]
        6 CALL                             R4 1 1
        7 FASTCALL2                        BIT32_BAND R3 R4 ; [+3]
        9 GETIMPORT                        R2 K5 [bit32.band]
       11 CALL                             R2 2 1
       12 SETTABLEKS                       R1 R0 K0 ["pendingLanes"]
       14 LOADN                            R3 0
       15 SETTABLEKS                       R3 R0 K6 ["suspendedLanes"]
       17 LOADN                            R3 0
       18 SETTABLEKS                       R3 R0 K7 ["pingedLanes"]
       20 GETTABLEKS                       R4 R0 K8 ["expiredLanes"]
       22 FASTCALL2                        BIT32_BAND R4 R1 ; [+4]
       24 MOVE                             R5 R1
       25 GETIMPORT                        R3 K5 [bit32.band]
       27 CALL                             R3 2 1
       28 SETTABLEKS                       R3 R0 K8 ["expiredLanes"]
       30 GETTABLEKS                       R4 R0 K9 ["mutableReadLanes"]
       32 FASTCALL2                        BIT32_BAND R4 R1 ; [+4]
       34 MOVE                             R5 R1
       35 GETIMPORT                        R3 K5 [bit32.band]
       37 CALL                             R3 2 1
       38 SETTABLEKS                       R3 R0 K9 ["mutableReadLanes"]
       40 GETTABLEKS                       R4 R0 K10 ["entangledLanes"]
       42 FASTCALL2                        BIT32_BAND R4 R1 ; [+4]
       44 MOVE                             R5 R1
       45 GETIMPORT                        R3 K5 [bit32.band]
       47 CALL                             R3 2 1
       48 SETTABLEKS                       R3 R0 K10 ["entangledLanes"]
       50 GETTABLEKS                       R3 R0 K11 ["entanglements"]
       52 GETTABLEKS                       R4 R0 K12 ["eventTimes"]
       54 GETTABLEKS                       R5 R0 K13 ["expirationTimes"]
       56 MOVE                             R6 R2
       57 LOADN                            R7 0
       58 JUMPIFNOTLT                      R7 R6 ; [+30]
       60 GETUPVAL                         R7 0
       61 MOVE                             R8 R6
       62 CALL                             R7 1 1
       63 LOADN                            R9 1
       64 FASTCALL2                        BIT32_LSHIFT R9 R7 ; [+4]
       66 MOVE                             R10 R7
       67 GETIMPORT                        R8 K15 [bit32.lshift]
       69 CALL                             R8 2 1
       70 LOADN                            R9 0
       71 SETTABLE                         R9 R3 R7
       72 LOADN                            R9 255
       73 SETTABLE                         R9 R4 R7
       74 LOADN                            R9 255
       75 SETTABLE                         R9 R5 R7
       76 FASTCALL1                        BIT32_BNOT R8 ; [+3]
       77 MOVE                             R12 R8
       78 GETIMPORT                        R11 K3 [bit32.bnot]
       80 CALL                             R11 1 1
       81 FASTCALL2                        BIT32_BAND R6 R11 ; [+4]
       83 MOVE                             R10 R6
       84 GETIMPORT                        R9 K5 [bit32.band]
       86 CALL                             R9 2 1
       87 MOVE                             R6 R9
       88 JUMPBACK                         ; [-32]
       89 RETURN                           R0 0

PROTO_40:
        0 GETTABLEKS                       R3 R0 K0 ["entangledLanes"]
        2 FASTCALL2                        BIT32_BOR R3 R1 ; [+4]
        4 MOVE                             R4 R1
        5 GETIMPORT                        R2 K3 [bit32.bor]
        7 CALL                             R2 2 1
        8 SETTABLEKS                       R2 R0 K0 ["entangledLanes"]
       10 GETTABLEKS                       R2 R0 K4 ["entanglements"]
       12 MOVE                             R3 R1
       13 LOADN                            R4 0
       14 JUMPIFNOTLT                      R4 R3 ; [+32]
       16 GETUPVAL                         R4 0
       17 MOVE                             R5 R3
       18 CALL                             R4 1 1
       19 LOADN                            R6 1
       20 FASTCALL2                        BIT32_LSHIFT R6 R4 ; [+4]
       22 MOVE                             R7 R4
       23 GETIMPORT                        R5 K6 [bit32.lshift]
       25 CALL                             R5 2 1
       26 GETTABLE                         R7 R2 R4
       27 FASTCALL2                        BIT32_BOR R7 R1 ; [+4]
       29 MOVE                             R8 R1
       30 GETIMPORT                        R6 K3 [bit32.bor]
       32 CALL                             R6 2 1
       33 SETTABLE                         R6 R2 R4
       34 FASTCALL1                        BIT32_BNOT R5 ; [+3]
       35 MOVE                             R9 R5
       36 GETIMPORT                        R8 K8 [bit32.bnot]
       38 CALL                             R8 1 1
       39 FASTCALL2                        BIT32_BAND R3 R8 ; [+4]
       41 MOVE                             R7 R3
       42 GETIMPORT                        R6 K10 [bit32.band]
       44 CALL                             R6 2 1
       45 MOVE                             R3 R6
       46 JUMPBACK                         ; [-34]
       47 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 0
        3 GETUPVAL                         R2 1
        4 LOADNIL                          R3
        5 JUMPIFEQKN                       R2 K0 [15] ; [+3]
        7 JUMPIFNOTEQKN                    R2 K1 [14] ; [+3]
        9 LOADN                            R3 0
       10 JUMP                             ; [+53]
       11 JUMPIFEQKN                       R2 K2 [13] ; [+3]
       13 JUMPIFNOTEQKN                    R2 K3 [12] ; [+3]
       15 LOADN                            R3 4
       16 JUMP                             ; [+47]
       17 JUMPIFEQKN                       R2 K4 [11] ; [+3]
       19 JUMPIFNOTEQKN                    R2 K5 [10] ; [+3]
       21 LOADN                            R3 32
       22 JUMP                             ; [+41]
       23 JUMPIFEQKN                       R2 K6 [9] ; [+3]
       25 JUMPIFNOTEQKN                    R2 K7 [8] ; [+3]
       27 LOADN                            R3 0
       28 JUMP                             ; [+35]
       29 JUMPIFEQKN                       R2 K8 [7] ; [+3]
       31 JUMPIFNOTEQKN                    R2 K9 [6] ; [+3]
       33 LOADN                            R3 0
       34 JUMP                             ; [+29]
       35 JUMPIFNOTEQKN                    R2 K10 [5] ; [+3]
       37 LOADN                            R3 0
       38 JUMP                             ; [+25]
       39 JUMPIFNOTEQKN                    R2 K11 [4] ; [+3]
       41 LOADK                            R3 K12 [67108864]
       42 JUMP                             ; [+21]
       43 JUMPIFEQKN                       R2 K13 [3] ; [+3]
       45 JUMPIFNOTEQKN                    R2 K14 [2] ; [+3]
       47 LOADK                            R3 K15 [134217728]
       48 JUMP                             ; [+15]
       49 JUMPIFEQKN                       R2 K16 [1] ; [+3]
       51 JUMPIFNOTEQKN                    R2 K17 [0] ; [+3]
       53 LOADN                            R3 0
       54 JUMP                             ; [+9]
       55 GETUPVAL                         R4 2
       56 LOADB                            R5 0
       57 LOADK                            R6 K18 ["Invalid lane: %s. This is a bug in React."]
       58 FASTCALL1                        TOSTRING R3 ; [+3]
       59 MOVE                             R8 R3
       60 GETIMPORT                        R7 K20 [tostring]
       62 CALL                             R7 1 1
       63 CALL                             R4 3 0
       64 GETTABLEKS                       R7 R0 K21 ["suspendedLanes"]
       66 FASTCALL2                        BIT32_BOR R7 R1 ; [+4]
       68 MOVE                             R8 R1
       69 GETIMPORT                        R6 K24 [bit32.bor]
       71 CALL                             R6 2 1
       72 FASTCALL2                        BIT32_BAND R3 R6 ; [+4]
       74 MOVE                             R5 R3
       75 GETIMPORT                        R4 K26 [bit32.band]
       77 CALL                             R4 2 1
       78 JUMPIFEQKN                       R4 K17 [0] ; [+3]
       80 LOADN                            R4 0
       81 RETURN                           R4 1
       82 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K2 ["Parent"]
       13 GETTABLEKS                       R2 R2 K5 ["ReactInternalTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K8 [bit32.rshift]
       18 GETIMPORT                        R3 K11 [math.log]
       20 GETIMPORT                        R4 K13 [math.floor]
       22 DUPCLOSURE                       R5 K14 [PROTO_0]
       23 CAPTURE                          VAL R2
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R4
       26 GETIMPORT                        R6 K4 [require]
       28 GETTABLEKS                       R7 R0 K15 ["Shared"]
       30 CALL                             R6 1 1
       31 GETTABLEKS                       R6 R6 K16 ["console"]
       33 GETIMPORT                        R7 K4 [require]
       35 GETIMPORT                        R9 K1 [script]
       37 GETTABLEKS                       R9 R9 K2 ["Parent"]
       39 GETTABLEKS                       R8 R9 K17 ["ReactFiberSchedulerPriorities.roblox"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K4 [require]
       44 GETTABLEKS                       R9 R0 K15 ["Shared"]
       46 CALL                             R8 1 1
       47 GETTABLEKS                       R8 R8 K18 ["invariant"]
       49 GETTABLEKS                       R9 R7 K19 ["ImmediatePriority"]
       51 GETTABLEKS                       R10 R7 K20 ["UserBlockingPriority"]
       53 GETTABLEKS                       R11 R7 K21 ["NormalPriority"]
       55 GETTABLEKS                       R12 R7 K22 ["LowPriority"]
       57 GETTABLEKS                       R13 R7 K23 ["IdlePriority"]
       59 GETTABLEKS                       R14 R7 K24 ["NoPriority"]
       61 NEWTABLE                         R15 64 0
       63 LOADN                            R16 15
       64 SETTABLEKS                       R16 R15 K25 ["SyncLanePriority"]
       66 LOADN                            R16 14
       67 SETTABLEKS                       R16 R15 K26 ["SyncBatchedLanePriority"]
       69 LOADN                            R16 12
       70 SETTABLEKS                       R16 R15 K27 ["InputDiscreteLanePriority"]
       72 LOADN                            R16 10
       73 SETTABLEKS                       R16 R15 K28 ["InputContinuousLanePriority"]
       75 LOADN                            R16 8
       76 SETTABLEKS                       R16 R15 K29 ["DefaultLanePriority"]
       78 LOADN                            R16 6
       79 SETTABLEKS                       R16 R15 K30 ["TransitionPriority"]
       81 LOADN                            R16 0
       82 SETTABLEKS                       R16 R15 K31 ["NoLanePriority"]
       84 LOADN                            R16 0
       85 SETTABLEKS                       R16 R15 K32 ["NoLanes"]
       87 LOADN                            R16 0
       88 SETTABLEKS                       R16 R15 K33 ["NoLane"]
       90 LOADN                            R16 1
       91 SETTABLEKS                       R16 R15 K34 ["SyncLane"]
       93 LOADN                            R16 2
       94 SETTABLEKS                       R16 R15 K35 ["SyncBatchedLane"]
       96 LOADN                            R16 4
       97 SETTABLEKS                       R16 R15 K36 ["InputDiscreteHydrationLane"]
       99 LOADN                            R16 0
      100 SETTABLEKS                       R16 R15 K37 ["DefaultHydrationLane"]
      102 LOADN                            R16 0
      103 SETTABLEKS                       R16 R15 K38 ["DefaultLanes"]
      105 LOADK                            R16 K39 [62914560]
      106 SETTABLEKS                       R16 R15 K40 ["RetryLanes"]
      108 LOADK                            R16 K41 [33554432]
      109 SETTABLEKS                       R16 R15 K42 ["SomeRetryLane"]
      111 LOADK                            R16 K43 [67108864]
      112 SETTABLEKS                       R16 R15 K44 ["SelectiveHydrationLane"]
      114 LOADK                            R16 K45 [134217728]
      115 SETTABLEKS                       R16 R15 K46 ["IdleHydrationLane"]
      117 LOADK                            R16 K47 [1073741824]
      118 SETTABLEKS                       R16 R15 K48 ["OffscreenLane"]
      120 LOADN                            R16 255
      121 SETTABLEKS                       R16 R15 K49 ["NoTimestamp"]
      123 GETTABLEKS                       R16 R15 K31 ["NoLanePriority"]
      125 NEWCLOSURE                       R17 P1
      126 CAPTURE                          REF R16
      127 SETTABLEKS                       R17 R15 K50 ["getCurrentUpdateLanePriority"]
      129 NEWCLOSURE                       R17 P2
      130 CAPTURE                          REF R16
      131 SETTABLEKS                       R17 R15 K51 ["setCurrentUpdateLanePriority"]
      133 GETTABLEKS                       R17 R15 K29 ["DefaultLanePriority"]
      135 NEWCLOSURE                       R18 P3
      136 CAPTURE                          REF R17
      137 CAPTURE                          VAL R6
      138 DUPCLOSURE                       R19 K52 [PROTO_4]
      139 CAPTURE                          VAL R9
      140 CAPTURE                          VAL R10
      141 CAPTURE                          VAL R11
      142 CAPTURE                          VAL R12
      143 CAPTURE                          VAL R13
      144 SETTABLEKS                       R19 R15 K53 ["schedulerPriorityToLanePriority"]
      146 DUPCLOSURE                       R20 K54 [PROTO_5]
      147 CAPTURE                          VAL R9
      148 CAPTURE                          VAL R10
      149 CAPTURE                          VAL R11
      150 CAPTURE                          VAL R13
      151 CAPTURE                          VAL R14
      152 CAPTURE                          VAL R8
      153 SETTABLEKS                       R20 R15 K55 ["lanePriorityToSchedulerPriority"]
      155 LOADNIL                          R21
      156 LOADNIL                          R22
      157 LOADNIL                          R23
      158 NEWCLOSURE                       R24 P6
      159 CAPTURE                          REF R17
      160 CAPTURE                          VAL R18
      161 CAPTURE                          REF R22
      162 CAPTURE                          REF R21
      163 SETTABLEKS                       R24 R15 K56 ["getNextLanes"]
      165 NEWCLOSURE                       R25 P7
      166 CAPTURE                          REF R21
      167 SETTABLEKS                       R25 R15 K57 ["getMostRecentEventTime"]
      169 NEWCLOSURE                       R26 P8
      170 CAPTURE                          VAL R18
      171 CAPTURE                          REF R17
      172 SETTABLEKS                       R26 R15 K58 ["computeExpirationTime"]
      174 NEWCLOSURE                       R27 P9
      175 CAPTURE                          REF R21
      176 CAPTURE                          VAL R18
      177 CAPTURE                          REF R17
      178 SETTABLEKS                       R27 R15 K59 ["markStarvedLanesAsExpired"]
      180 DUPCLOSURE                       R28 K60 [PROTO_10]
      181 CAPTURE                          VAL R18
      182 SETTABLEKS                       R28 R15 K61 ["getHighestPriorityPendingLanes"]
      184 DUPCLOSURE                       R29 K62 [PROTO_11]
      185 SETTABLEKS                       R29 R15 K63 ["getLanesToRetrySynchronouslyOnError"]
      187 NEWCLOSURE                       R30 P12
      188 CAPTURE                          REF R17
      189 SETTABLEKS                       R30 R15 K64 ["returnNextLanesPriority"]
      191 DUPCLOSURE                       R31 K65 [PROTO_13]
      192 SETTABLEKS                       R31 R15 K66 ["includesNonIdleWork"]
      194 DUPCLOSURE                       R32 K67 [PROTO_14]
      195 SETTABLEKS                       R32 R15 K68 ["includesOnlyRetries"]
      197 DUPCLOSURE                       R33 K69 [PROTO_15]
      198 SETTABLEKS                       R33 R15 K70 ["includesOnlyTransitions"]
      200 LOADNIL                          R34
      201 NEWCLOSURE                       R35 P16
      202 CAPTURE                          REF R34
      203 CAPTURE                          VAL R35
      204 CAPTURE                          VAL R8
      205 SETTABLEKS                       R35 R15 K71 ["findUpdateLane"]
      207 NEWCLOSURE                       R36 P17
      208 CAPTURE                          REF R34
      209 SETTABLEKS                       R36 R15 K72 ["findTransitionLane"]
      211 NEWCLOSURE                       R37 P18
      212 CAPTURE                          REF R34
      213 SETTABLEKS                       R37 R15 K73 ["findRetryLane"]
      215 DUPCLOSURE                       R38 K74 [PROTO_19]
      216 DUPCLOSURE                       R22 K75 [PROTO_20]
      217 CAPTURE                          VAL R2
      218 CAPTURE                          VAL R3
      219 CAPTURE                          VAL R4
      220 NEWCLOSURE                       R23 P21
      221 CAPTURE                          REF R22
      222 DUPCLOSURE                       R34 K76 [PROTO_22]
      223 SETTABLEKS                       R34 R15 K77 ["pickArbitraryLane"]
      225 DUPCLOSURE                       R21 K78 [PROTO_23]
      226 CAPTURE                          VAL R2
      227 CAPTURE                          VAL R3
      228 CAPTURE                          VAL R4
      229 DUPCLOSURE                       R39 K79 [PROTO_24]
      230 SETTABLEKS                       R39 R15 K80 ["includesSomeLane"]
      232 DUPCLOSURE                       R40 K81 [PROTO_25]
      233 SETTABLEKS                       R40 R15 K82 ["isSubsetOfLanes"]
      235 DUPCLOSURE                       R41 K83 [PROTO_26]
      236 SETTABLEKS                       R41 R15 K84 ["mergeLanes"]
      238 DUPCLOSURE                       R42 K85 [PROTO_27]
      239 SETTABLEKS                       R42 R15 K86 ["removeLanes"]
      241 DUPCLOSURE                       R43 K87 [PROTO_28]
      242 SETTABLEKS                       R43 R15 K88 ["laneToLanes"]
      244 DUPCLOSURE                       R44 K89 [PROTO_29]
      245 SETTABLEKS                       R44 R15 K90 ["higherPriorityLane"]
      247 DUPCLOSURE                       R45 K91 [PROTO_30]
      248 SETTABLEKS                       R45 R15 K92 ["higherLanePriority"]
      250 DUPCLOSURE                       R46 K93 [PROTO_31]
      251 SETTABLEKS                       R46 R15 K94 ["createLaneMap"]
      253 DUPCLOSURE                       R47 K95 [PROTO_32]
      254 CAPTURE                          VAL R2
      255 CAPTURE                          VAL R3
      256 CAPTURE                          VAL R4
      257 SETTABLEKS                       R47 R15 K96 ["markRootUpdated"]
      259 NEWCLOSURE                       R48 P33
      260 CAPTURE                          REF R21
      261 SETTABLEKS                       R48 R15 K97 ["markRootSuspended"]
      263 DUPCLOSURE                       R49 K98 [PROTO_34]
      264 SETTABLEKS                       R49 R15 K99 ["markRootPinged"]
      266 DUPCLOSURE                       R50 K100 [PROTO_35]
      267 SETTABLEKS                       R50 R15 K101 ["markRootExpired"]
      269 DUPCLOSURE                       R51 K102 [PROTO_36]
      270 SETTABLEKS                       R51 R15 K103 ["markDiscreteUpdatesExpired"]
      272 DUPCLOSURE                       R52 K104 [PROTO_37]
      273 SETTABLEKS                       R52 R15 K105 ["hasDiscreteLanes"]
      275 DUPCLOSURE                       R53 K106 [PROTO_38]
      276 SETTABLEKS                       R53 R15 K107 ["markRootMutableRead"]
      278 NEWCLOSURE                       R54 P39
      279 CAPTURE                          REF R21
      280 SETTABLEKS                       R54 R15 K108 ["markRootFinished"]
      282 NEWCLOSURE                       R55 P40
      283 CAPTURE                          REF R21
      284 SETTABLEKS                       R55 R15 K109 ["markRootEntangled"]
      286 NEWCLOSURE                       R56 P41
      287 CAPTURE                          VAL R18
      288 CAPTURE                          REF R17
      289 CAPTURE                          VAL R8
      290 SETTABLEKS                       R56 R15 K110 ["getBumpedLaneForHydration"]
      292 CLOSEUPVALS                      R16
      293 RETURN                           R15 1
