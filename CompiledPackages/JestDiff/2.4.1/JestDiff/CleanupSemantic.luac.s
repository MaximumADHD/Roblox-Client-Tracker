PROTO_0:
        0 NEWTABLE                         R3 0 2
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 SETLIST                          R3 R4 2 [1]
        6 GETUPVAL                         R4 0
        7 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
        9 GETIMPORT                        R2 K1 [setmetatable]
       11 CALL                             R2 2 1
       12 RETURN                           R2 1

PROTO_1:
        0 LENGTH                           R2 R0
        1 JUMPIFEQKN                       R2 K0 [0] ; [+20]
        3 LENGTH                           R2 R1
        4 JUMPIFEQKN                       R2 K0 [0] ; [+17]
        6 LOADN                            R4 1
        7 LOADN                            R5 1
        8 FASTCALL3                        STRING_BYTE R0 R4 R5
       10 MOVE                             R3 R0
       11 GETUPVAL                         R2 0
       12 CALL                             R2 3 1
       13 LOADN                            R5 1
       14 LOADN                            R6 1
       15 FASTCALL3                        STRING_BYTE R1 R5 R6
       17 MOVE                             R4 R1
       18 GETUPVAL                         R3 0
       19 CALL                             R3 3 1
       20 JUMPIFEQ                         R2 R3 ; [+3]
       22 LOADN                            R2 0
       23 RETURN                           R2 1
       24 LOADN                            R2 1
       25 LENGTH                           R4 R0
       26 LENGTH                           R5 R1
       27 FASTCALL2                        MATH_MIN R4 R5 ; [+2]
       29 GETUPVAL                         R3 1
       30 CALL                             R3 2 1
       31 MOVE                             R4 R3
       32 LOADN                            R5 1
       33 JUMPIFNOTLT                      R2 R4 ; [+29]
       35 FASTCALL3                        STRING_SUB R0 R5 R4
       37 MOVE                             R7 R0
       38 MOVE                             R8 R5
       39 MOVE                             R9 R4
       40 GETUPVAL                         R6 2
       41 CALL                             R6 3 1
       42 FASTCALL3                        STRING_SUB R1 R5 R4
       44 MOVE                             R8 R1
       45 MOVE                             R9 R5
       46 MOVE                             R10 R4
       47 GETUPVAL                         R7 2
       48 CALL                             R7 3 1
       49 JUMPIFNOTEQ                      R6 R7 ; [+4]
       51 MOVE                             R2 R4
       52 MOVE                             R5 R2
       53 JUMP                             ; [+1]
       54 MOVE                             R3 R4
       55 SUB                              R9 R3 R2
       56 DIVK                             R8 R9 K1 [2]
       57 ADD                              R7 R2 R8
       58 FASTCALL1                        MATH_FLOOR R7 ; [+1]
       59 GETUPVAL                         R6 3
       60 CALL                             R6 1 1
       61 MOVE                             R4 R6
       62 JUMPBACK                         ; [-30]
       63 RETURN                           R4 1

PROTO_2:
        0 LENGTH                           R2 R0
        1 JUMPIFEQKN                       R2 K0 [0] ; [+18]
        3 LENGTH                           R2 R1
        4 JUMPIFEQKN                       R2 K0 [0] ; [+15]
        6 FASTCALL2K                       STRING_BYTE R0 K1 ; [+4]
        8 MOVE                             R3 R0
        9 LOADK                            R4 K1 [-1]
       10 GETUPVAL                         R2 0
       11 CALL                             R2 2 1
       12 FASTCALL2K                       STRING_BYTE R1 K1 ; [+4]
       14 MOVE                             R4 R1
       15 LOADK                            R5 K1 [-1]
       16 GETUPVAL                         R3 0
       17 CALL                             R3 2 1
       18 JUMPIFEQ                         R2 R3 ; [+3]
       20 LOADN                            R2 0
       21 RETURN                           R2 1
       22 LOADN                            R2 1
       23 LENGTH                           R4 R0
       24 LENGTH                           R5 R1
       25 FASTCALL2                        MATH_MIN R4 R5 ; [+2]
       27 GETUPVAL                         R3 1
       28 CALL                             R3 2 1
       29 MOVE                             R4 R3
       30 LOADN                            R5 1
       31 JUMPIFNOTLT                      R2 R4 ; [+29]
       33 MINUS                            R8 R4
       34 MINUS                            R9 R5
       35 FASTCALL3                        STRING_SUB R0 R8 R9
       37 MOVE                             R7 R0
       38 GETUPVAL                         R6 2
       39 CALL                             R6 3 1
       40 MINUS                            R9 R4
       41 MINUS                            R10 R5
       42 FASTCALL3                        STRING_SUB R1 R9 R10
       44 MOVE                             R8 R1
       45 GETUPVAL                         R7 2
       46 CALL                             R7 3 1
       47 JUMPIFNOTEQ                      R6 R7 ; [+4]
       49 MOVE                             R2 R4
       50 MOVE                             R5 R2
       51 JUMP                             ; [+1]
       52 MOVE                             R3 R4
       53 SUB                              R9 R3 R2
       54 DIVK                             R8 R9 K2 [2]
       55 ADD                              R7 R2 R8
       56 FASTCALL1                        MATH_FLOOR R7 ; [+1]
       57 GETUPVAL                         R6 3
       58 CALL                             R6 1 1
       59 MOVE                             R4 R6
       60 JUMPBACK                         ; [-30]
       61 RETURN                           R4 1

PROTO_3:
        0 LENGTH                           R2 R0
        1 LENGTH                           R3 R1
        2 JUMPIFEQKN                       R2 K0 [0] ; [+3]
        4 JUMPIFNOTEQKN                    R3 K0 [0] ; [+3]
        6 LOADN                            R4 0
        7 RETURN                           R4 1
        8 JUMPIFNOTLT                      R3 R2 ; [+10]
       10 SUB                              R7 R2 R3
       11 ADDK                             R6 R7 K1 [1]
       12 FASTCALL2                        STRING_SUB R0 R6 ; [+3]
       14 MOVE                             R5 R0
       15 GETUPVAL                         R4 0
       16 CALL                             R4 2 1
       17 MOVE                             R0 R4
       18 JUMP                             ; [+10]
       19 JUMPIFNOTLT                      R2 R3 ; [+9]
       21 LOADN                            R6 1
       22 FASTCALL3                        STRING_SUB R1 R6 R2
       24 MOVE                             R5 R1
       25 MOVE                             R7 R2
       26 GETUPVAL                         R4 0
       27 CALL                             R4 3 1
       28 MOVE                             R1 R4
       29 FASTCALL2                        MATH_MIN R2 R3 ; [+4]
       31 MOVE                             R5 R2
       32 MOVE                             R6 R3
       33 GETUPVAL                         R4 1
       34 CALL                             R4 2 1
       35 JUMPIFNOTEQ                      R0 R1 ; [+2]
       37 RETURN                           R4 1
       38 LOADN                            R5 0
       39 LOADN                            R6 1
       40 SUB                              R10 R4 R6
       41 ADDK                             R9 R10 K1 [1]
       42 FASTCALL2                        STRING_SUB R0 R9 ; [+3]
       44 MOVE                             R8 R0
       45 GETUPVAL                         R7 0
       46 CALL                             R7 2 1
       47 GETUPVAL                         R8 2
       48 MOVE                             R9 R1
       49 MOVE                             R10 R7
       50 LOADN                            R11 1
       51 LOADB                            R12 1
       52 CALL                             R8 4 1
       53 JUMPIFNOTEQKNIL                  R8 ; [+2]
       55 RETURN                           R5 1
       56 SUBK                             R9 R8 K1 [1]
       57 ADD                              R6 R6 R9
       58 JUMPIFEQKN                       R8 K1 [1] ; [+17]
       60 SUB                              R12 R4 R6
       61 ADDK                             R11 R12 K1 [1]
       62 FASTCALL2                        STRING_SUB R0 R11 ; [+3]
       64 MOVE                             R10 R0
       65 GETUPVAL                         R9 0
       66 CALL                             R9 2 1
       67 LOADN                            R12 1
       68 FASTCALL3                        STRING_SUB R1 R12 R6
       70 MOVE                             R11 R1
       71 MOVE                             R13 R6
       72 GETUPVAL                         R10 0
       73 CALL                             R10 3 1
       74 JUMPIFNOTEQ                      R9 R10 ; [+3]
       76 MOVE                             R5 R6
       77 ADDK                             R6 R6 K1 [1]
       78 JUMPBACK                         ; [-39]
       79 RETURN                           R5 1

PROTO_4:
        0 LOADB                            R1 0
        1 NEWTABLE                         R2 0 0
        3 LOADN                            R3 0
        4 LOADNIL                          R4
        5 LOADN                            R5 1
        6 LOADN                            R6 0
        7 LOADN                            R7 0
        8 LOADN                            R8 0
        9 LOADN                            R9 0
       10 GETTABLE                         R10 R0 R5
       11 JUMPIFNOT                        R10 ; [+78]
       12 GETTABLE                         R11 R0 R5
       13 GETTABLEN                        R10 R11 1
       14 JUMPIFNOTEQKN                    R10 K0 [0] ; [+10]
       16 ADDK                             R3 R3 K1 [1]
       17 SETTABLE                         R5 R2 R3
       18 MOVE                             R6 R8
       19 MOVE                             R7 R9
       20 LOADN                            R8 0
       21 LOADN                            R9 0
       22 GETTABLE                         R10 R0 R5
       23 GETTABLEN                        R4 R10 2
       24 JUMP                             ; [+63]
       25 GETTABLE                         R11 R0 R5
       26 GETTABLEN                        R10 R11 1
       27 JUMPIFNOTEQKN                    R10 K1 [1] ; [+6]
       29 GETTABLE                         R12 R0 R5
       30 GETTABLEN                        R11 R12 2
       31 LENGTH                           R10 R11
       32 ADD                              R8 R8 R10
       33 JUMP                             ; [+4]
       34 GETTABLE                         R12 R0 R5
       35 GETTABLEN                        R11 R12 2
       36 LENGTH                           R10 R11
       37 ADD                              R9 R9 R10
       38 JUMPIFNOT                        R4 ; [+49]
       39 LENGTH                           R10 R4
       40 FASTCALL2                        MATH_MAX R6 R7 ; [+4]
       42 MOVE                             R12 R6
       43 MOVE                             R13 R7
       44 GETUPVAL                         R11 0
       45 CALL                             R11 2 1
       46 JUMPIFNOTLE                      R10 R11 ; [+41]
       48 LENGTH                           R10 R4
       49 FASTCALL2                        MATH_MAX R8 R9 ; [+4]
       51 MOVE                             R12 R8
       52 MOVE                             R13 R9
       53 GETUPVAL                         R11 0
       54 CALL                             R11 2 1
       55 JUMPIFNOTLE                      R10 R11 ; [+32]
       57 MOVE                             R11 R0
       58 GETTABLE                         R12 R2 R3
       59 GETUPVAL                         R14 1
       60 GETTABLEKS                       R13 R14 K2 ["new"]
       62 LOADN                            R14 255
       63 MOVE                             R15 R4
       64 CALL                             R13 2 -1
       65 FASTCALL                         TABLE_INSERT ; [+1]
       66 GETUPVAL                         R10 2
       67 CALL                             R10 -1 0
       68 GETTABLE                         R12 R2 R3
       69 ADDK                             R11 R12 K1 [1]
       70 GETTABLE                         R10 R0 R11
       71 LOADN                            R11 1
       72 SETTABLEN                        R11 R10 1
       73 SUBK                             R3 R3 K1 [1]
       74 SUBK                             R3 R3 K1 [1]
       75 LOADN                            R11 0
       76 JUMPIFNOTLT                      R11 R3 ; [+3]
       78 GETTABLE                         R10 R2 R3
       79 JUMPIF                           R10 ; [+1]
       80 LOADN                            R10 0
       81 MOVE                             R5 R10
       82 LOADN                            R6 0
       83 LOADN                            R7 0
       84 LOADN                            R8 0
       85 LOADN                            R9 0
       86 LOADNIL                          R4
       87 LOADB                            R1 1
       88 ADDK                             R5 R5 K1 [1]
       89 JUMPBACK                         ; [-80]
       90 JUMPIFNOT                        R1 ; [+3]
       91 GETUPVAL                         R10 3
       92 MOVE                             R11 R0
       93 CALL                             R10 1 0
       94 GETUPVAL                         R10 4
       95 MOVE                             R11 R0
       96 CALL                             R10 1 0
       97 LOADN                            R5 2
       98 GETTABLE                         R10 R0 R5
       99 JUMPIFNOT                        R10 ; [+128]
      100 SUBK                             R12 R5 K1 [1]
      101 GETTABLE                         R11 R0 R12
      102 GETTABLEN                        R10 R11 1
      103 JUMPIFNOTEQKN                    R10 K3 [-1] ; [+122]
      105 GETTABLE                         R11 R0 R5
      106 GETTABLEN                        R10 R11 1
      107 JUMPIFNOTEQKN                    R10 K1 [1] ; [+118]
      109 SUBK                             R12 R5 K1 [1]
      110 GETTABLE                         R11 R0 R12
      111 GETTABLEN                        R10 R11 2
      112 GETTABLE                         R12 R0 R5
      113 GETTABLEN                        R11 R12 2
      114 GETUPVAL                         R12 5
      115 MOVE                             R13 R10
      116 MOVE                             R14 R11
      117 CALL                             R12 2 1
      118 GETUPVAL                         R13 5
      119 MOVE                             R14 R11
      120 MOVE                             R15 R10
      121 CALL                             R13 2 1
      122 JUMPIFNOTLE                      R13 R12 ; [+48]
      124 LENGTH                           R15 R10
      125 DIVK                             R14 R15 K4 [2]
      126 JUMPIFLE                         R14 R12 ; [+5]
      128 LENGTH                           R15 R11
      129 DIVK                             R14 R15 K4 [2]
      130 JUMPIFNOTLE                      R14 R12 ; [+94]
      132 MOVE                             R15 R0
      133 MOVE                             R16 R5
      134 GETUPVAL                         R18 1
      135 GETTABLEKS                       R17 R18 K2 ["new"]
      137 LOADN                            R18 0
      138 LOADN                            R21 1
      139 FASTCALL3                        STRING_SUB R11 R21 R12
      141 MOVE                             R20 R11
      142 MOVE                             R22 R12
      143 GETUPVAL                         R19 6
      144 CALL                             R19 3 1
      145 CALL                             R17 2 -1
      146 FASTCALL                         TABLE_INSERT ; [+1]
      147 GETUPVAL                         R14 2
      148 CALL                             R14 -1 0
      149 SUBK                             R15 R5 K1 [1]
      150 GETTABLE                         R14 R0 R15
      151 LOADN                            R17 1
      152 LENGTH                           R19 R10
      153 SUB                              R18 R19 R12
      154 FASTCALL3                        STRING_SUB R10 R17 R18
      156 MOVE                             R16 R10
      157 GETUPVAL                         R15 6
      158 CALL                             R15 3 1
      159 SETTABLEN                        R15 R14 2
      160 ADDK                             R15 R5 K1 [1]
      161 GETTABLE                         R14 R0 R15
      162 ADDK                             R17 R12 K1 [1]
      163 FASTCALL2                        STRING_SUB R11 R17 ; [+3]
      165 MOVE                             R16 R11
      166 GETUPVAL                         R15 6
      167 CALL                             R15 2 1
      168 SETTABLEN                        R15 R14 2
      169 ADDK                             R5 R5 K1 [1]
      170 JUMP                             ; [+54]
      171 LENGTH                           R15 R10
      172 DIVK                             R14 R15 K4 [2]
      173 JUMPIFLE                         R14 R13 ; [+5]
      175 LENGTH                           R15 R11
      176 DIVK                             R14 R15 K4 [2]
      177 JUMPIFNOTLE                      R14 R13 ; [+47]
      179 MOVE                             R15 R0
      180 MOVE                             R16 R5
      181 GETUPVAL                         R18 1
      182 GETTABLEKS                       R17 R18 K2 ["new"]
      184 LOADN                            R18 0
      185 LOADN                            R21 1
      186 FASTCALL3                        STRING_SUB R10 R21 R13
      188 MOVE                             R20 R10
      189 MOVE                             R22 R13
      190 GETUPVAL                         R19 6
      191 CALL                             R19 3 1
      192 CALL                             R17 2 -1
      193 FASTCALL                         TABLE_INSERT ; [+1]
      194 GETUPVAL                         R14 2
      195 CALL                             R14 -1 0
      196 SUBK                             R14 R5 K1 [1]
      197 NEWTABLE                         R15 0 2
      199 LOADN                            R16 1
      200 LOADN                            R19 1
      201 LENGTH                           R21 R11
      202 SUB                              R20 R21 R13
      203 FASTCALL3                        STRING_SUB R11 R19 R20
      205 MOVE                             R18 R11
      206 GETUPVAL                         R17 6
      207 CALL                             R17 3 1
      208 SETLIST                          R15 R16 2 [1]
      210 SETTABLE                         R15 R0 R14
      211 ADDK                             R14 R5 K1 [1]
      212 NEWTABLE                         R15 0 2
      214 LOADN                            R16 255
      215 ADDK                             R19 R13 K1 [1]
      216 FASTCALL2                        STRING_SUB R10 R19 ; [+3]
      218 MOVE                             R18 R10
      219 GETUPVAL                         R17 6
      220 CALL                             R17 2 1
      221 SETLIST                          R15 R16 2 [1]
      223 SETTABLE                         R15 R0 R14
      224 ADDK                             R5 R5 K1 [1]
      225 ADDK                             R5 R5 K1 [1]
      226 ADDK                             R5 R5 K1 [1]
      227 JUMPBACK                         ; [-130]
      228 RETURN                           R0 0

PROTO_5:
        0 LENGTH                           R2 R0
        1 JUMPIFEQKN                       R2 K0 [0] ; [+4]
        3 LENGTH                           R2 R1
        4 JUMPIFNOTEQKN                    R2 K0 [0] ; [+3]
        6 LOADN                            R2 6
        7 RETURN                           R2 1
        8 FASTCALL2K                       STRING_SUB R0 K1 ; [+4]
       10 MOVE                             R3 R0
       11 LOADK                            R4 K1 [-1]
       12 GETUPVAL                         R2 0
       13 CALL                             R2 2 1
       14 LOADN                            R5 1
       15 LOADN                            R6 1
       16 FASTCALL3                        STRING_SUB R1 R5 R6
       18 MOVE                             R4 R1
       19 GETUPVAL                         R3 0
       20 CALL                             R3 3 1
       21 GETUPVAL                         R4 1
       22 MOVE                             R5 R2
       23 LOADK                            R6 K2 ["%W"]
       24 CALL                             R4 2 1
       25 GETUPVAL                         R5 1
       26 MOVE                             R6 R3
       27 LOADK                            R7 K2 ["%W"]
       28 CALL                             R5 2 1
       29 MOVE                             R6 R4
       30 JUMPIFNOT                        R6 ; [+4]
       31 GETUPVAL                         R6 1
       32 MOVE                             R7 R2
       33 LOADK                            R8 K3 ["%s"]
       34 CALL                             R6 2 1
       35 MOVE                             R7 R5
       36 JUMPIFNOT                        R7 ; [+4]
       37 GETUPVAL                         R7 1
       38 MOVE                             R8 R3
       39 LOADK                            R9 K3 ["%s"]
       40 CALL                             R7 2 1
       41 MOVE                             R8 R6
       42 JUMPIFNOT                        R8 ; [+4]
       43 GETUPVAL                         R8 1
       44 MOVE                             R9 R2
       45 LOADK                            R10 K4 ["%c"]
       46 CALL                             R8 2 1
       47 MOVE                             R9 R7
       48 JUMPIFNOT                        R9 ; [+4]
       49 GETUPVAL                         R9 1
       50 MOVE                             R10 R3
       51 LOADK                            R11 K4 ["%c"]
       52 CALL                             R9 2 1
       53 MOVE                             R10 R8
       54 JUMPIFNOT                        R10 ; [+4]
       55 GETUPVAL                         R10 1
       56 MOVE                             R11 R0
       57 LOADK                            R12 K5 ["\n\r?\n$"]
       58 CALL                             R10 2 1
       59 MOVE                             R11 R9
       60 JUMPIFNOT                        R11 ; [+4]
       61 GETUPVAL                         R11 1
       62 MOVE                             R12 R1
       63 LOADK                            R13 K6 ["^\r?\n\r?\n"]
       64 CALL                             R11 2 1
       65 JUMPIF                           R10 ; [+1]
       66 JUMPIFNOT                        R11 ; [+2]
       67 LOADN                            R12 5
       68 RETURN                           R12 1
       69 JUMPIF                           R8 ; [+1]
       70 JUMPIFNOT                        R9 ; [+2]
       71 LOADN                            R12 4
       72 RETURN                           R12 1
       73 JUMPIFNOT                        R4 ; [+4]
       74 JUMPIF                           R6 ; [+3]
       75 JUMPIFNOT                        R7 ; [+2]
       76 LOADN                            R12 3
       77 RETURN                           R12 1
       78 JUMPIF                           R6 ; [+1]
       79 JUMPIFNOT                        R7 ; [+2]
       80 LOADN                            R12 2
       81 RETURN                           R12 1
       82 JUMPIF                           R4 ; [+1]
       83 JUMPIFNOT                        R5 ; [+2]
       84 LOADN                            R12 1
       85 RETURN                           R12 1
       86 LOADN                            R12 0
       87 RETURN                           R12 1

PROTO_6:
        0 LOADN                            R1 2
        1 ADDK                             R3 R1 K0 [1]
        2 GETTABLE                         R2 R0 R3
        3 JUMPIFNOT                        R2 ; [+155]
        4 SUBK                             R4 R1 K0 [1]
        5 GETTABLE                         R2 R0 R4
        6 ADDK                             R4 R1 K0 [1]
        7 GETTABLE                         R3 R0 R4
        8 GETTABLEN                        R4 R2 1
        9 JUMPIFNOTEQKN                    R4 K1 [0] ; [+147]
       11 GETTABLEN                        R4 R3 1
       12 JUMPIFNOTEQKN                    R4 K1 [0] ; [+144]
       14 GETTABLE                         R4 R0 R1
       15 GETTABLEN                        R5 R2 2
       16 GETTABLEN                        R6 R4 2
       17 GETTABLEN                        R7 R3 2
       18 GETUPVAL                         R8 0
       19 MOVE                             R9 R5
       20 MOVE                             R10 R6
       21 CALL                             R8 2 1
       22 LOADN                            R9 0
       23 JUMPIFNOTLT                      R9 R8 ; [+29]
       25 MINUS                            R11 R8
       26 FASTCALL2                        STRING_SUB R6 R11 ; [+3]
       28 MOVE                             R10 R6
       29 GETUPVAL                         R9 1
       30 CALL                             R9 2 1
       31 LOADN                            R12 1
       32 MINUS                            R14 R8
       33 SUBK                             R13 R14 K0 [1]
       34 FASTCALL3                        STRING_SUB R5 R12 R13
       36 MOVE                             R11 R5
       37 GETUPVAL                         R10 1
       38 CALL                             R10 3 1
       39 MOVE                             R5 R10
       40 MOVE                             R10 R9
       41 LOADN                            R13 1
       42 MINUS                            R15 R8
       43 SUBK                             R14 R15 K0 [1]
       44 FASTCALL3                        STRING_SUB R6 R13 R14
       46 MOVE                             R12 R6
       47 GETUPVAL                         R11 1
       48 CALL                             R11 3 1
       49 CONCAT                           R6 R10 R11
       50 MOVE                             R10 R9
       51 MOVE                             R11 R7
       52 CONCAT                           R7 R10 R11
       53 MOVE                             R9 R5
       54 MOVE                             R10 R6
       55 MOVE                             R11 R7
       56 GETUPVAL                         R13 2
       57 MOVE                             R14 R5
       58 MOVE                             R15 R6
       59 CALL                             R13 2 1
       60 GETUPVAL                         R14 2
       61 MOVE                             R15 R6
       62 MOVE                             R16 R7
       63 CALL                             R14 2 1
       64 ADD                              R12 R13 R14
       65 FASTCALL2K                       STRING_BYTE R6 K0 ; [+4]
       67 MOVE                             R14 R6
       68 LOADK                            R15 K0 [1]
       69 GETUPVAL                         R13 3
       70 CALL                             R13 2 1
       71 FASTCALL2K                       STRING_BYTE R7 K0 ; [+4]
       73 MOVE                             R15 R7
       74 LOADK                            R16 K0 [1]
       75 GETUPVAL                         R14 3
       76 CALL                             R14 2 1
       77 JUMPIFNOTEQ                      R13 R14 ; [+48]
       79 MOVE                             R13 R5
       80 LOADN                            R16 1
       81 LOADN                            R17 1
       82 FASTCALL3                        STRING_SUB R6 R16 R17
       84 MOVE                             R15 R6
       85 GETUPVAL                         R14 1
       86 CALL                             R14 3 1
       87 CONCAT                           R5 R13 R14
       88 FASTCALL2K                       STRING_SUB R6 K2 ; [+4]
       90 MOVE                             R16 R6
       91 LOADK                            R17 K2 [2]
       92 GETUPVAL                         R15 1
       93 CALL                             R15 2 1
       94 MOVE                             R13 R15
       95 LOADN                            R16 1
       96 LOADN                            R17 1
       97 FASTCALL3                        STRING_SUB R7 R16 R17
       99 MOVE                             R15 R7
      100 GETUPVAL                         R14 1
      101 CALL                             R14 3 1
      102 CONCAT                           R6 R13 R14
      103 FASTCALL2K                       STRING_SUB R7 K2 ; [+4]
      105 MOVE                             R14 R7
      106 LOADK                            R15 K2 [2]
      107 GETUPVAL                         R13 1
      108 CALL                             R13 2 1
      109 MOVE                             R7 R13
      110 GETUPVAL                         R14 2
      111 MOVE                             R15 R5
      112 MOVE                             R16 R6
      113 CALL                             R14 2 1
      114 GETUPVAL                         R15 2
      115 MOVE                             R16 R6
      116 MOVE                             R17 R7
      117 CALL                             R15 2 1
      118 ADD                              R13 R14 R15
      119 JUMPIFNOTLE                      R12 R13 ; [+5]
      121 MOVE                             R12 R13
      122 MOVE                             R9 R5
      123 MOVE                             R10 R6
      124 MOVE                             R11 R7
      125 JUMPBACK                         ; [-61]
      126 GETTABLEN                        R13 R2 2
      127 JUMPIFEQ                         R13 R9 ; [+29]
      129 LENGTH                           R13 R9
      130 LOADN                            R14 0
      131 JUMPIFNOTLT                      R14 R13 ; [+5]
      133 SUBK                             R14 R1 K0 [1]
      134 GETTABLE                         R13 R0 R14
      135 SETTABLEN                        R9 R13 2
      136 JUMP                             ; [+5]
      137 GETUPVAL                         R13 4
      138 MOVE                             R14 R0
      139 SUBK                             R15 R1 K0 [1]
      140 CALL                             R13 2 0
      141 SUBK                             R1 R1 K0 [1]
      142 GETTABLE                         R13 R0 R1
      143 SETTABLEN                        R10 R13 2
      144 LENGTH                           R13 R11
      145 LOADN                            R14 0
      146 JUMPIFNOTLT                      R14 R13 ; [+5]
      148 ADDK                             R14 R1 K0 [1]
      149 GETTABLE                         R13 R0 R14
      150 SETTABLEN                        R11 R13 2
      151 JUMP                             ; [+5]
      152 GETUPVAL                         R13 4
      153 MOVE                             R14 R0
      154 ADDK                             R15 R1 K0 [1]
      155 CALL                             R13 2 0
      156 SUBK                             R1 R1 K0 [1]
      157 ADDK                             R1 R1 K0 [1]
      158 JUMPBACK                         ; [-158]
      159 RETURN                           R0 0

PROTO_7:
        0 LENGTH                           R2 R0
        1 ADDK                             R1 R2 K0 [1]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["new"]
        5 LOADN                            R3 0
        6 LOADK                            R4 K2 [""]
        7 CALL                             R2 2 1
        8 SETTABLE                         R2 R0 R1
        9 LOADN                            R1 1
       10 LOADN                            R2 0
       11 LOADN                            R3 0
       12 LOADK                            R4 K2 [""]
       13 LOADK                            R5 K2 [""]
       14 LOADNIL                          R6
       15 GETTABLE                         R7 R0 R1
       16 JUMPIFNOT                        R7 ; [+207]
       17 GETTABLE                         R8 R0 R1
       18 GETTABLEN                        R7 R8 1
       19 JUMPIFNOTEQKN                    R7 K0 [1] ; [+8]
       21 ADDK                             R3 R3 K0 [1]
       22 MOVE                             R8 R5
       23 GETTABLE                         R10 R0 R1
       24 GETTABLEN                        R9 R10 2
       25 CONCAT                           R5 R8 R9
       26 ADDK                             R1 R1 K0 [1]
       27 JUMP                             ; [+195]
       28 JUMPIFNOTEQKN                    R7 K3 [-1] ; [+8]
       30 ADDK                             R2 R2 K0 [1]
       31 MOVE                             R8 R4
       32 GETTABLE                         R10 R0 R1
       33 GETTABLEN                        R9 R10 2
       34 CONCAT                           R4 R8 R9
       35 ADDK                             R1 R1 K0 [1]
       36 JUMP                             ; [+186]
       37 JUMPIFNOTEQKN                    R7 K4 [0] ; [+185]
       39 ADD                              R8 R2 R3
       40 LOADN                            R9 1
       41 JUMPIFNOTLT                      R9 R8 ; [+154]
       43 LOADN                            R8 0
       44 JUMPIFNOTLT                      R8 R2 ; [+106]
       46 LOADN                            R8 0
       47 JUMPIFNOTLT                      R8 R3 ; [+103]
       49 GETUPVAL                         R8 1
       50 MOVE                             R9 R5
       51 MOVE                             R10 R4
       52 CALL                             R8 2 1
       53 MOVE                             R6 R8
       54 LOADN                            R8 0
       55 JUMPIFNOTLT                      R8 R6 ; [+58]
       57 SUB                              R9 R1 R2
       58 SUB                              R8 R9 R3
       59 LOADN                            R9 1
       60 JUMPIFNOTLT                      R9 R8 ; [+21]
       62 SUBK                             R11 R8 K0 [1]
       63 GETTABLE                         R10 R0 R11
       64 GETTABLEN                        R9 R10 1
       65 JUMPIFNOTEQKN                    R9 K4 [0] ; [+16]
       67 SUBK                             R10 R8 K0 [1]
       68 GETTABLE                         R9 R0 R10
       69 SUBK                             R14 R8 K0 [1]
       70 GETTABLE                         R13 R0 R14
       71 GETTABLEN                        R11 R13 2
       72 LOADN                            R14 1
       73 FASTCALL3                        STRING_SUB R5 R14 R6
       75 MOVE                             R13 R5
       76 MOVE                             R15 R6
       77 GETUPVAL                         R12 2
       78 CALL                             R12 3 1
       79 CONCAT                           R10 R11 R12
       80 SETTABLEN                        R10 R9 2
       81 JUMP                             ; [+18]
       82 MOVE                             R10 R0
       83 LOADN                            R11 1
       84 GETUPVAL                         R13 0
       85 GETTABLEKS                       R12 R13 K1 ["new"]
       87 LOADN                            R13 0
       88 LOADN                            R16 1
       89 FASTCALL3                        STRING_SUB R5 R16 R6
       91 MOVE                             R15 R5
       92 MOVE                             R17 R6
       93 GETUPVAL                         R14 2
       94 CALL                             R14 3 1
       95 CALL                             R12 2 -1
       96 FASTCALL                         TABLE_INSERT ; [+1]
       97 GETUPVAL                         R9 3
       98 CALL                             R9 -1 0
       99 ADDK                             R1 R1 K0 [1]
      100 ADDK                             R11 R6 K0 [1]
      101 FASTCALL2                        STRING_SUB R5 R11 ; [+3]
      103 MOVE                             R10 R5
      104 GETUPVAL                         R9 2
      105 CALL                             R9 2 1
      106 MOVE                             R5 R9
      107 ADDK                             R11 R6 K0 [1]
      108 FASTCALL2                        STRING_SUB R4 R11 ; [+3]
      110 MOVE                             R10 R4
      111 GETUPVAL                         R9 2
      112 CALL                             R9 2 1
      113 MOVE                             R4 R9
      114 GETUPVAL                         R8 4
      115 MOVE                             R9 R5
      116 MOVE                             R10 R4
      117 CALL                             R8 2 1
      118 MOVE                             R6 R8
      119 JUMPIFEQKN                       R6 K4 [0] ; [+31]
      121 GETTABLE                         R8 R0 R1
      122 MINUS                            R14 R6
      123 FASTCALL2                        STRING_SUB R5 R14 ; [+3]
      125 MOVE                             R13 R5
      126 GETUPVAL                         R12 2
      127 CALL                             R12 2 1
      128 MOVE                             R10 R12
      129 GETTABLE                         R12 R0 R1
      130 GETTABLEN                        R11 R12 2
      131 CONCAT                           R9 R10 R11
      132 SETTABLEN                        R9 R8 2
      133 LOADN                            R10 1
      134 MINUS                            R12 R6
      135 SUBK                             R11 R12 K0 [1]
      136 FASTCALL3                        STRING_SUB R5 R10 R11
      138 MOVE                             R9 R5
      139 GETUPVAL                         R8 2
      140 CALL                             R8 3 1
      141 MOVE                             R5 R8
      142 LOADN                            R10 1
      143 MINUS                            R12 R6
      144 SUBK                             R11 R12 K0 [1]
      145 FASTCALL3                        STRING_SUB R4 R10 R11
      147 MOVE                             R9 R4
      148 GETUPVAL                         R8 2
      149 CALL                             R8 3 1
      150 MOVE                             R4 R8
      151 SUB                              R8 R1 R2
      152 SUB                              R1 R8 R3
      153 LOADN                            R10 1
      154 ADD                              R8 R2 R3
      155 LOADN                            R9 1
      156 FORNPREP                         R8
      157 GETUPVAL                         R11 5
      158 MOVE                             R12 R0
      159 MOVE                             R13 R1
      160 CALL                             R11 2 0
      161 FORNLOOP                         R8
      162 LENGTH                           R8 R4
      163 LOADN                            R9 0
      164 JUMPIFNOTLT                      R9 R8 ; [+13]
      166 MOVE                             R9 R0
      167 MOVE                             R10 R1
      168 GETUPVAL                         R12 0
      169 GETTABLEKS                       R11 R12 K1 ["new"]
      171 LOADN                            R12 255
      172 MOVE                             R13 R4
      173 CALL                             R11 2 -1
      174 FASTCALL                         TABLE_INSERT ; [+1]
      175 GETUPVAL                         R8 3
      176 CALL                             R8 -1 0
      177 ADDK                             R1 R1 K0 [1]
      178 LENGTH                           R8 R5
      179 LOADN                            R9 0
      180 JUMPIFNOTLT                      R9 R8 ; [+13]
      182 MOVE                             R9 R0
      183 MOVE                             R10 R1
      184 GETUPVAL                         R12 0
      185 GETTABLEKS                       R11 R12 K1 ["new"]
      187 LOADN                            R12 1
      188 MOVE                             R13 R5
      189 CALL                             R11 2 -1
      190 FASTCALL                         TABLE_INSERT ; [+1]
      191 GETUPVAL                         R8 3
      192 CALL                             R8 -1 0
      193 ADDK                             R1 R1 K0 [1]
      194 ADDK                             R1 R1 K0 [1]
      195 JUMP                             ; [+23]
      196 LOADN                            R8 1
      197 JUMPIFNOTLT                      R8 R1 ; [+20]
      199 SUBK                             R10 R1 K0 [1]
      200 GETTABLE                         R9 R0 R10
      201 GETTABLEN                        R8 R9 1
      202 JUMPIFNOTEQKN                    R8 K4 [0] ; [+15]
      204 SUBK                             R9 R1 K0 [1]
      205 GETTABLE                         R8 R0 R9
      206 SUBK                             R13 R1 K0 [1]
      207 GETTABLE                         R12 R0 R13
      208 GETTABLEN                        R10 R12 2
      209 GETTABLE                         R12 R0 R1
      210 GETTABLEN                        R11 R12 2
      211 CONCAT                           R9 R10 R11
      212 SETTABLEN                        R9 R8 2
      213 GETUPVAL                         R8 5
      214 MOVE                             R9 R0
      215 MOVE                             R10 R1
      216 CALL                             R8 2 0
      217 JUMP                             ; [+1]
      218 ADDK                             R1 R1 K0 [1]
      219 LOADN                            R3 0
      220 LOADN                            R2 0
      221 LOADK                            R4 K2 [""]
      222 LOADK                            R5 K2 [""]
      223 JUMPBACK                         ; [-209]
      224 LENGTH                           R9 R0
      225 GETTABLE                         R8 R0 R9
      226 GETTABLEN                        R7 R8 2
      227 JUMPIFNOTEQKS                    R7 K2 [""] ; [+4]
      229 LENGTH                           R7 R0
      230 LOADNIL                          R8
      231 SETTABLE                         R8 R0 R7
      232 LOADB                            R7 0
      233 LOADN                            R1 2
      234 LENGTH                           R8 R0
      235 JUMPIFNOTLT                      R1 R8 ; [+86]
      237 SUBK                             R10 R1 K0 [1]
      238 GETTABLE                         R8 R0 R10
      239 ADDK                             R10 R1 K0 [1]
      240 GETTABLE                         R9 R0 R10
      241 GETTABLEN                        R10 R8 1
      242 JUMPIFNOTEQKN                    R10 K4 [0] ; [+77]
      244 GETTABLEN                        R10 R9 1
      245 JUMPIFNOTEQKN                    R10 K4 [0] ; [+74]
      247 GETTABLE                         R10 R0 R1
      248 GETTABLEN                        R11 R10 2
      249 GETTABLEN                        R12 R8 2
      250 GETTABLEN                        R13 R9 2
      251 LENGTH                           R14 R12
      252 JUMPIFNOTEQKN                    R14 K4 [0] ; [+7]
      254 GETUPVAL                         R14 5
      255 MOVE                             R15 R0
      256 SUBK                             R16 R1 K0 [1]
      257 CALL                             R14 2 0
      258 LOADB                            R7 1
      259 JUMP                             ; [+60]
      260 LENGTH                           R17 R12
      261 MINUS                            R16 R17
      262 FASTCALL2                        STRING_SUB R11 R16 ; [+3]
      264 MOVE                             R15 R11
      265 GETUPVAL                         R14 2
      266 CALL                             R14 2 1
      267 JUMPIFNOTEQ                      R14 R12 ; [+23]
      269 MOVE                             R15 R12
      270 LOADN                            R18 1
      271 LENGTH                           R21 R12
      272 MINUS                            R20 R21
      273 SUBK                             R19 R20 K0 [1]
      274 FASTCALL3                        STRING_SUB R11 R18 R19
      276 MOVE                             R17 R11
      277 GETUPVAL                         R16 2
      278 CALL                             R16 3 1
      279 CONCAT                           R14 R15 R16
      280 SETTABLEN                        R14 R10 2
      281 MOVE                             R15 R12
      282 GETTABLEN                        R16 R9 2
      283 CONCAT                           R14 R15 R16
      284 SETTABLEN                        R14 R9 2
      285 GETUPVAL                         R14 5
      286 MOVE                             R15 R0
      287 SUBK                             R16 R1 K0 [1]
      288 CALL                             R14 2 0
      289 LOADB                            R7 1
      290 JUMP                             ; [+29]
      291 LOADN                            R16 1
      292 LENGTH                           R17 R13
      293 FASTCALL3                        STRING_SUB R11 R16 R17
      295 MOVE                             R15 R11
      296 GETUPVAL                         R14 2
      297 CALL                             R14 3 1
      298 JUMPIFNOTEQ                      R14 R13 ; [+21]
      300 MOVE                             R15 R12
      301 MOVE                             R16 R13
      302 CONCAT                           R14 R15 R16
      303 SETTABLEN                        R14 R8 2
      304 LENGTH                           R20 R13
      305 ADDK                             R19 R20 K0 [1]
      306 FASTCALL2                        STRING_SUB R11 R19 ; [+3]
      308 MOVE                             R18 R11
      309 GETUPVAL                         R17 2
      310 CALL                             R17 2 1
      311 MOVE                             R15 R17
      312 MOVE                             R16 R13
      313 CONCAT                           R14 R15 R16
      314 SETTABLEN                        R14 R10 2
      315 GETUPVAL                         R14 5
      316 MOVE                             R15 R0
      317 ADDK                             R16 R1 K0 [1]
      318 CALL                             R14 2 0
      319 LOADB                            R7 1
      320 ADDK                             R1 R1 K0 [1]
      321 JUMPBACK                         ; [-88]
      322 JUMPIFNOT                        R7 ; [+4]
      323 GETUPVAL                         R8 6
      324 MOVE                             R9 R0
      325 CALL                             R8 1 -1
      326 RETURN                           R8 -1
      327 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       11 CALL                             R2 1 1
       12 LOADNIL                          R3
       13 LOADNIL                          R4
       14 GETIMPORT                        R5 K8 [string.sub]
       16 GETIMPORT                        R6 K10 [string.byte]
       18 GETIMPORT                        R7 K12 [string.match]
       20 GETIMPORT                        R8 K14 [string.find]
       22 GETIMPORT                        R9 K17 [math.max]
       24 GETIMPORT                        R10 K19 [math.min]
       26 GETIMPORT                        R11 K21 [math.floor]
       28 GETIMPORT                        R12 K24 [table.insert]
       30 GETIMPORT                        R13 K26 [table.remove]
       32 NEWTABLE                         R14 2 0
       34 SETTABLEKS                       R14 R14 K27 ["__index"]
       36 DUPCLOSURE                       R15 K28 [PROTO_0]
       37 CAPTURE                          VAL R14
       38 SETTABLEKS                       R15 R14 K29 ["new"]
       40 DUPCLOSURE                       R15 K30 [PROTO_1]
       41 CAPTURE                          VAL R6
       42 CAPTURE                          VAL R10
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R11
       45 DUPCLOSURE                       R16 K31 [PROTO_2]
       46 CAPTURE                          VAL R6
       47 CAPTURE                          VAL R10
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R11
       50 DUPCLOSURE                       R17 K32 [PROTO_3]
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R10
       53 CAPTURE                          VAL R8
       54 NEWCLOSURE                       R18 P4
       55 CAPTURE                          VAL R9
       56 CAPTURE                          VAL R14
       57 CAPTURE                          VAL R12
       58 CAPTURE                          REF R4
       59 CAPTURE                          REF R3
       60 CAPTURE                          VAL R17
       61 CAPTURE                          VAL R5
       62 DUPCLOSURE                       R19 K33 [PROTO_5]
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R7
       65 DUPCLOSURE                       R3 K34 [PROTO_6]
       66 CAPTURE                          VAL R16
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R19
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R13
       71 NEWCLOSURE                       R4 P7
       72 CAPTURE                          VAL R14
       73 CAPTURE                          VAL R15
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R12
       76 CAPTURE                          VAL R16
       77 CAPTURE                          VAL R13
       78 CAPTURE                          REF R4
       79 DUPTABLE                         R20 K45 [{"Diff", "DIFF_EQUAL", "DIFF_DELETE", "DIFF_INSERT", "cleanupSemantic", "_diff_commonPrefix", "_diff_commonSuffix", "_diff_commonOverlap", "_diff_cleanupMerge", "_diff_cleanupSemanticLossless"}]
       80 SETTABLEKS                       R14 R20 K35 ["Diff"]
       82 LOADN                            R21 0
       83 SETTABLEKS                       R21 R20 K36 ["DIFF_EQUAL"]
       85 LOADN                            R21 255
       86 SETTABLEKS                       R21 R20 K37 ["DIFF_DELETE"]
       88 LOADN                            R21 1
       89 SETTABLEKS                       R21 R20 K38 ["DIFF_INSERT"]
       91 SETTABLEKS                       R18 R20 K39 ["cleanupSemantic"]
       93 SETTABLEKS                       R15 R20 K40 ["_diff_commonPrefix"]
       95 SETTABLEKS                       R16 R20 K41 ["_diff_commonSuffix"]
       97 SETTABLEKS                       R17 R20 K42 ["_diff_commonOverlap"]
       99 SETTABLEKS                       R4 R20 K43 ["_diff_cleanupMerge"]
      101 SETTABLEKS                       R3 R20 K44 ["_diff_cleanupSemanticLossless"]
      103 CLOSEUPVALS                      R3
      104 RETURN                           R20 1
