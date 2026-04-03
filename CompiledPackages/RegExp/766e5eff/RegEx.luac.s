PROTO_0:
        0 JUMPIFNOT                        R1 ; [+11]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R4 K2 [utf8.offset]
        4 MOVE                             R5 R0
        5 MOVE                             R6 R1
        6 CALL                             R4 2 -1
        7 FASTCALL                         STRING_SUB ; [+2]
        8 GETIMPORT                        R2 K5 [string.sub]
       10 CALL                             R2 -1 1
       11 MOVE                             R0 R2
       12 GETIMPORT                        R2 K7 [utf8.len]
       14 MOVE                             R3 R0
       15 CALL                             R2 1 1
       16 LOADN                            R3 207
       17 JUMPIFNOTLE                      R2 R3 ; [+16]
       19 NEWTABLE                         R3 2 1
       21 SETTABLEKS                       R2 R3 K8 ["n"]
       23 SETTABLEKS                       R0 R3 K9 ["s"]
       25 GETIMPORT                        R4 K11 [utf8.codepoint]
       27 MOVE                             R5 R0
       28 LOADN                            R6 1
       29 LENGTH                           R7 R0
       30 CALL                             R4 3 -1
       31 SETLIST                          R3 R4 -1 [1]
       33 RETURN                           R3 1
       34 DIVK                             R4 R2 K12 [1999]
       35 FASTCALL1                        MATH_CEIL R4 ; [+2]
       36 GETIMPORT                        R3 K15 [math.ceil]
       38 CALL                             R3 1 1
       39 GETIMPORT                        R4 K18 [table.create]
       41 MOVE                             R5 R2
       42 CALL                             R4 1 1
       43 LOADN                            R5 1
       44 LOADN                            R8 1
       45 MOVE                             R6 R3
       46 LOADN                            R7 1
       47 FORNPREP                         R6
       48 GETIMPORT                        R9 K20 [table.pack]
       50 GETIMPORT                        R10 K11 [utf8.codepoint]
       52 MOVE                             R11 R0
       53 GETIMPORT                        R12 K2 [utf8.offset]
       55 MOVE                             R13 R0
       56 MULK                             R15 R8 K12 [1999]
       57 SUBK                             R14 R15 K21 [1998]
       58 CALL                             R12 2 1
       59 GETIMPORT                        R14 K2 [utf8.offset]
       61 MOVE                             R15 R0
       62 MULK                             R17 R8 K12 [1999]
       63 JUMPIFNOTEQ                      R8 R3 ; [+6]
       65 SUBK                             R21 R2 K22 [1]
       66 MODK                             R20 R21 K12 [1999]
       67 ADDK                             R19 R20 K22 [1]
       68 SUBRK                            R18 R21 K19 ["pack"]
       69 JUMPIF                           R18 ; [+1]
       70 LOADN                            R18 255
       71 SUB                              R16 R17 R18
       72 CALL                             R14 2 1
       73 SUBK                             R13 R14 K22 [1]
       74 CALL                             R10 3 -1
       75 CALL                             R9 -1 1
       76 GETIMPORT                        R10 K24 [table.move]
       78 MOVE                             R11 R9
       79 LOADN                            R12 1
       80 GETTABLEKS                       R13 R9 K8 ["n"]
       82 MOVE                             R14 R5
       83 MOVE                             R15 R4
       84 CALL                             R10 5 0
       85 GETTABLEKS                       R10 R9 K8 ["n"]
       87 ADD                              R5 R5 R10
       88 FORNLOOP                         R6
       89 SETTABLEKS                       R0 R4 K9 ["s"]
       91 SETTABLEKS                       R2 R4 K8 ["n"]
       93 RETURN                           R4 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["n"]
        2 JUMPIF                           R1 ; [+1]
        3 LENGTH                           R1 R0
        4 LOADN                            R2 61
        5 JUMPIFNOTLE                      R1 R2 ; [+10]
        7 GETIMPORT                        R2 K3 [utf8.char]
        9 FASTCALL1                        TABLE_UNPACK R0 ; [+3]
       10 MOVE                             R4 R0
       11 GETIMPORT                        R3 K6 [table.unpack]
       13 CALL                             R3 1 -1
       14 CALL                             R2 -1 -1
       15 RETURN                           R2 -1
       16 DIVK                             R3 R1 K7 [7997]
       17 FASTCALL1                        MATH_CEIL R3 ; [+2]
       18 GETIMPORT                        R2 K10 [math.ceil]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K12 [table.create]
       23 MOVE                             R4 R2
       24 CALL                             R3 1 1
       25 LOADN                            R6 1
       26 MOVE                             R4 R2
       27 LOADN                            R5 1
       28 FORNPREP                         R4
       29 GETIMPORT                        R7 K3 [utf8.char]
       31 MULK                             R11 R6 K7 [7997]
       32 SUBK                             R10 R11 K13 [7996]
       33 MULK                             R12 R6 K7 [7997]
       34 JUMPIFNOTEQ                      R6 R2 ; [+6]
       36 SUBK                             R16 R1 K14 [1]
       37 MODK                             R15 R16 K7 [7997]
       38 ADDK                             R14 R15 K14 [1]
       39 SUBRK                            R13 R7 K14 [1]
       40 JUMPIF                           R13 ; [+1]
       41 LOADN                            R13 0
       42 SUB                              R11 R12 R13
       43 FASTCALL3                        TABLE_UNPACK R0 R10 R11
       45 MOVE                             R9 R0
       46 GETIMPORT                        R8 K6 [table.unpack]
       48 CALL                             R8 3 -1
       49 CALL                             R7 -1 1
       50 SETTABLE                         R7 R3 R6
       51 FORNLOOP                         R4
       52 GETIMPORT                        R4 K16 [table.concat]
       54 MOVE                             R5 R3
       55 CALL                             R4 1 -1
       56 RETURN                           R4 -1

PROTO_2:
        0 GETIMPORT                        R3 K2 [utf8.offset]
        2 MOVE                             R4 R0
        3 MOVE                             R5 R2
        4 CALL                             R3 2 1
        5 MOVE                             R2 R3
        6 GETIMPORT                        R5 K2 [utf8.offset]
        8 MOVE                             R6 R0
        9 MOVE                             R7 R1
       10 CALL                             R5 2 1
       11 MOVE                             R6 R2
       12 JUMPIFNOT                        R6 ; [+1]
       13 SUBK                             R6 R2 K3 [1]
       14 FASTCALL3                        STRING_SUB R0 R5 R6
       16 MOVE                             R4 R0
       17 GETIMPORT                        R3 K6 [string.sub]
       19 CALL                             R3 3 1
       20 RETURN                           R3 1

PROTO_3:
        0 PREPVARARGS                      0
        1 LOADK                            R1 K0 ["#"]
        2 FASTCALL1                        SELECT_VARARG R1 ; [+3]
        3 GETIMPORT                        R0 K2 [select]
        5 GETVARARGS                       R2 -1
        6 CALL                             R0 -1 1
        7 LOADN                            R1 1
        8 JUMPIFNOTLT                      R0 R1 ; [+6]
       10 GETIMPORT                        R1 K4 [error]
       12 LOADK                            R2 K5 ["missing argument #1 (Match expected)"]
       13 LOADN                            R3 2
       14 CALL                             R1 2 0
       15 GETVARARGS                       R1 2
       16 GETUPVAL                         R4 0
       17 GETTABLE                         R3 R4 R1
       18 JUMPIFNOT                        R3 ; [+6]
       19 GETUPVAL                         R5 0
       20 GETTABLE                         R4 R5 R1
       21 GETTABLEKS                       R3 R4 K6 ["name"]
       23 JUMPIFEQKS                       R3 K7 ["Match"] ; [+16]
       25 GETIMPORT                        R3 K4 [error]
       27 GETIMPORT                        R4 K10 [string.format]
       29 LOADK                            R5 K11 ["invalid argument #1 to %q (Match expected, got %s)"]
       30 GETUPVAL                         R6 1
       31 FASTCALL1                        TYPEOF R1 ; [+3]
       32 MOVE                             R8 R1
       33 GETIMPORT                        R7 K13 [typeof]
       35 CALL                             R7 1 1
       36 CALL                             R4 3 1
       37 LOADN                            R5 2
       38 CALL                             R3 2 0
       39 JUMP                             ; [+2]
       40 GETUPVAL                         R3 0
       41 GETTABLE                         R1 R3 R1
       42 GETUPVAL                         R3 1
       43 JUMPIFEQKS                       R3 K14 ["group"] ; [+4]
       45 GETUPVAL                         R3 1
       46 JUMPIFNOTEQKS                    R3 K15 ["span"] ; [+4]
       48 JUMPIFNOTEQKNIL                  R2 ; [+2]
       50 LOADN                            R2 0
       51 GETUPVAL                         R3 2
       52 MOVE                             R4 R1
       53 MOVE                             R5 R2
       54 CALL                             R3 2 -1
       55 RETURN                           R3 -1

PROTO_4:
        0 PREPVARARGS                      0
        1 LOADK                            R1 K0 ["#"]
        2 FASTCALL1                        SELECT_VARARG R1 ; [+3]
        3 GETIMPORT                        R0 K2 [select]
        5 GETVARARGS                       R2 -1
        6 CALL                             R0 -1 1
        7 LOADN                            R1 1
        8 JUMPIFNOTLT                      R0 R1 ; [+7]
       10 GETIMPORT                        R1 K4 [error]
       12 LOADK                            R2 K5 ["missing argument #1 (RegEx expected)"]
       13 LOADN                            R3 2
       14 CALL                             R1 2 0
       15 JUMP                             ; [+8]
       16 LOADN                            R1 2
       17 JUMPIFNOTLT                      R0 R1 ; [+6]
       19 GETIMPORT                        R1 K4 [error]
       21 LOADK                            R2 K6 ["missing argument #2 (string expected)"]
       22 LOADN                            R3 2
       23 CALL                             R1 2 0
       24 GETVARARGS                       R1 6
       25 GETUPVAL                         R8 0
       26 GETTABLE                         R7 R8 R1
       27 JUMPIFNOT                        R7 ; [+6]
       28 GETUPVAL                         R9 0
       29 GETTABLE                         R8 R9 R1
       30 GETTABLEKS                       R7 R8 K7 ["name"]
       32 JUMPIFEQKS                       R7 K8 ["RegEx"] ; [+36]
       34 FASTCALL1                        TYPE R1 ; [+3]
       35 MOVE                             R8 R1
       36 GETIMPORT                        R7 K10 [type]
       38 CALL                             R7 1 1
       39 JUMPIFEQKS                       R7 K11 ["string"] ; [+22]
       41 FASTCALL1                        TYPE R1 ; [+3]
       42 MOVE                             R8 R1
       43 GETIMPORT                        R7 K10 [type]
       45 CALL                             R7 1 1
       46 JUMPIFEQKS                       R7 K12 ["number"] ; [+15]
       48 GETIMPORT                        R7 K4 [error]
       50 GETIMPORT                        R8 K14 [string.format]
       52 LOADK                            R9 K15 ["invalid argument #1 to %q (RegEx expected, got %s)"]
       53 GETUPVAL                         R10 1
       54 FASTCALL1                        TYPEOF R1 ; [+3]
       55 MOVE                             R12 R1
       56 GETIMPORT                        R11 K17 [typeof]
       58 CALL                             R11 1 1
       59 CALL                             R8 3 1
       60 LOADN                            R9 2
       61 CALL                             R7 2 0
       62 GETUPVAL                         R8 2
       63 GETTABLEKS                       R7 R8 K18 ["fromstring"]
       65 MOVE                             R8 R1
       66 CALL                             R7 1 1
       67 MOVE                             R1 R7
       68 JUMP                             ; [+67]
       69 GETUPVAL                         R7 1
       70 JUMPIFNOTEQKS                    R7 K19 ["sub"] ; [+33]
       72 FASTCALL1                        TYPE R3 ; [+3]
       73 MOVE                             R8 R3
       74 GETIMPORT                        R7 K10 [type]
       76 CALL                             R7 1 1
       77 JUMPIFNOTEQKS                    R7 K12 ["number"] ; [+5]
       79 MOVE                             R7 R3
       80 LOADK                            R8 K20 [""]
       81 CONCAT                           R3 R7 R8
       82 JUMP                             ; [+53]
       83 FASTCALL1                        TYPE R3 ; [+3]
       84 MOVE                             R8 R3
       85 GETIMPORT                        R7 K10 [type]
       87 CALL                             R7 1 1
       88 JUMPIFEQKS                       R7 K11 ["string"] ; [+47]
       90 GETIMPORT                        R7 K4 [error]
       92 GETIMPORT                        R8 K14 [string.format]
       94 LOADK                            R9 K21 ["invalid argument #3 to 'sub' (string expected, got %s)"]
       95 FASTCALL1                        TYPEOF R3 ; [+3]
       96 MOVE                             R11 R3
       97 GETIMPORT                        R10 K17 [typeof]
       99 CALL                             R10 1 1
      100 CALL                             R8 2 1
      101 LOADN                            R9 2
      102 CALL                             R7 2 0
      103 JUMP                             ; [+32]
      104 FASTCALL1                        TYPE R2 ; [+3]
      105 MOVE                             R8 R2
      106 GETIMPORT                        R7 K10 [type]
      108 CALL                             R7 1 1
      109 JUMPIFNOTEQKS                    R7 K12 ["number"] ; [+5]
      111 MOVE                             R7 R2
      112 LOADK                            R8 K20 [""]
      113 CONCAT                           R2 R7 R8
      114 JUMP                             ; [+21]
      115 FASTCALL1                        TYPE R2 ; [+3]
      116 MOVE                             R8 R2
      117 GETIMPORT                        R7 K10 [type]
      119 CALL                             R7 1 1
      120 JUMPIFEQKS                       R7 K11 ["string"] ; [+15]
      122 GETIMPORT                        R7 K4 [error]
      124 GETIMPORT                        R8 K14 [string.format]
      126 LOADK                            R9 K22 ["invalid argument #2 to %q (string expected, got %s)"]
      127 GETUPVAL                         R10 1
      128 FASTCALL1                        TYPEOF R2 ; [+3]
      129 MOVE                             R12 R2
      130 GETIMPORT                        R11 K17 [typeof]
      132 CALL                             R11 1 1
      133 CALL                             R8 3 1
      134 LOADN                            R9 2
      135 CALL                             R7 2 0
      136 GETUPVAL                         R7 1
      137 JUMPIFEQKS                       R7 K19 ["sub"] ; [+53]
      139 GETUPVAL                         R7 1
      140 JUMPIFEQKS                       R7 K23 ["split"] ; [+50]
      142 FASTCALL1                        TYPEOF R3 ; [+3]
      143 MOVE                             R8 R3
      144 GETIMPORT                        R7 K17 [typeof]
      146 CALL                             R7 1 1
      147 JUMPIFEQKS                       R7 K24 ["nil"] ; [+43]
      149 FASTCALL1                        TONUMBER R3 ; [+3]
      150 MOVE                             R9 R3
      151 GETIMPORT                        R8 K26 [tonumber]
      153 CALL                             R8 1 1
      154 MOVE                             R3 R8
      155 JUMPIF                           R3 ; [+11]
      156 GETIMPORT                        R8 K4 [error]
      158 GETIMPORT                        R9 K14 [string.format]
      160 LOADK                            R10 K27 ["invalid argument #3 to %q (number expected, got %s)"]
      161 GETUPVAL                         R11 1
      162 MOVE                             R12 R7
      163 CALL                             R9 3 1
      164 LOADN                            R10 2
      165 CALL                             R8 2 0
      166 JUMP                             ; [+24]
      167 LOADN                            R8 0
      168 JUMPIFNOTLT                      R3 R8 ; [+10]
      170 LENGTH                           R9 R2
      171 ADDK                             R11 R3 K29 [0.5]
      172 FASTCALL1                        MATH_FLOOR R11 ; [+2]
      173 GETIMPORT                        R10 K32 [math.floor]
      175 CALL                             R10 1 1
      176 ADD                              R8 R9 R10
      177 ADDK                             R3 R8 K28 [1]
      178 JUMP                             ; [+12]
      179 ADDK                             R10 R3 K29 [0.5]
      180 FASTCALL1                        MATH_FLOOR R10 ; [+2]
      181 GETIMPORT                        R9 K32 [math.floor]
      183 CALL                             R9 1 1
      184 FASTCALL2K                       MATH_MAX R9 K28 ; [+4]
      186 LOADK                            R10 K28 [1]
      187 GETIMPORT                        R8 K34 [math.max]
      189 CALL                             R8 2 1
      190 MOVE                             R3 R8
      191 GETUPVAL                         R7 0
      192 GETTABLE                         R1 R7 R1
      193 GETUPVAL                         R7 1
      194 JUMPIFEQKS                       R7 K35 ["match"] ; [+4]
      196 GETUPVAL                         R7 1
      197 JUMPIFNOTEQKS                    R7 K36 ["matchiter"] ; [+3]
      199 GETVARARGS                       R4 1
      200 JUMP                             ; [+4]
      201 GETUPVAL                         R7 1
      202 JUMPIFNOTEQKS                    R7 K19 ["sub"] ; [+2]
      204 GETVARARGS                       R6 1
      205 GETUPVAL                         R7 3
      206 MOVE                             R8 R1
      207 MOVE                             R9 R2
      208 MOVE                             R10 R3
      209 MOVE                             R11 R4
      210 MOVE                             R12 R5
      211 MOVE                             R13 R6
      212 CALL                             R7 6 -1
      213 RETURN                           R7 -1

PROTO_5:
        0 JUMPIFNOTEQKS                    R0 K0 ["Match"] ; [+6]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R2
        6 RETURN                           R3 1
        7 NEWCLOSURE                       R3 P1
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          VAL R1
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R2
       12 RETURN                           R3 1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 GETTABLEKS                       R1 R2 K0 ["spans"]
        4 LOADN                            R5 0
        5 GETTABLE                         R4 R1 R5
        6 GETTABLEN                        R2 R4 1
        7 LOADN                            R5 0
        8 GETTABLE                         R4 R1 R5
        9 GETTABLEN                        R3 R4 2
       10 JUMPIFNOTLE                      R3 R2 ; [+8]
       12 GETIMPORT                        R4 K3 [string.format]
       14 LOADK                            R5 K4 ["Match (%d..%d, empty)"]
       15 MOVE                             R6 R2
       16 SUBK                             R7 R3 K5 [1]
       17 CALL                             R4 3 -1
       18 RETURN                           R4 -1
       19 GETIMPORT                        R4 K3 [string.format]
       21 LOADK                            R5 K6 ["Match (%d..%d): %s"]
       22 MOVE                             R6 R2
       23 SUBK                             R7 R3 K5 [1]
       24 GETTABLEKS                       R9 R1 K7 ["input"]
       26 MOVE                             R10 R3
       27 GETIMPORT                        R11 K10 [utf8.offset]
       29 MOVE                             R12 R9
       30 MOVE                             R13 R10
       31 CALL                             R11 2 1
       32 MOVE                             R10 R11
       33 GETIMPORT                        R13 K10 [utf8.offset]
       35 MOVE                             R14 R9
       36 MOVE                             R15 R2
       37 CALL                             R13 2 1
       38 MOVE                             R14 R10
       39 JUMPIFNOT                        R14 ; [+1]
       40 SUBK                             R14 R10 K5 [1]
       41 FASTCALL3                        STRING_SUB R9 R13 R14
       43 MOVE                             R12 R9
       44 GETIMPORT                        R11 K12 [string.sub]
       46 CALL                             R11 3 1
       47 MOVE                             R8 R11
       48 CALL                             R4 4 -1
       49 RETURN                           R4 -1

PROTO_7:
        0 SETTABLEKS                       R2 R0 K0 ["source"]
        2 SETTABLEKS                       R3 R0 K1 ["input"]
        4 GETIMPORT                        R4 K3 [newproxy]
        6 LOADB                            R5 1
        7 CALL                             R4 1 1
        8 FASTCALL1                        GETMETATABLE R4 ; [+3]
        9 MOVE                             R6 R4
       10 GETIMPORT                        R5 K5 [getmetatable]
       12 CALL                             R5 1 1
       13 GETUPVAL                         R6 0
       14 SETTABLEKS                       R6 R5 K6 ["__metatable"]
       16 GETUPVAL                         R8 1
       17 FASTCALL2                        SETMETATABLE R0 R8 ; [+4]
       19 MOVE                             R7 R0
       20 GETIMPORT                        R6 K8 [setmetatable]
       22 CALL                             R6 2 1
       23 SETTABLEKS                       R6 R5 K9 ["__index"]
       25 GETUPVAL                         R6 2
       26 SETTABLEKS                       R6 R5 K10 ["__tostring"]
       28 GETUPVAL                         R6 3
       29 DUPTABLE                         R7 K14 [{"name", "spans", "group_id"}]
       30 LOADK                            R8 K15 ["Match"]
       31 SETTABLEKS                       R8 R7 K11 ["name"]
       33 SETTABLEKS                       R0 R7 K12 ["spans"]
       35 SETTABLEKS                       R1 R7 K13 ["group_id"]
       37 SETTABLE                         R7 R6 R4
       38 RETURN                           R4 1

PROTO_8:
        0 GETTABLEKS                       R3 R0 K0 ["spans"]
        2 FASTCALL1                        TYPE R1 ; [+3]
        3 MOVE                             R6 R1
        4 GETIMPORT                        R5 K2 [type]
        6 CALL                             R5 1 1
        7 JUMPIFNOTEQKS                    R5 K3 ["number"] ; [+3]
        9 MOVE                             R4 R1
       10 JUMPIF                           R4 ; [+3]
       11 GETTABLEKS                       R5 R0 K4 ["group_id"]
       13 GETTABLE                         R4 R5 R1
       14 GETTABLE                         R2 R3 R4
       15 JUMPIF                           R2 ; [+2]
       16 LOADNIL                          R3
       17 RETURN                           R3 1
       18 GETTABLEKS                       R5 R0 K0 ["spans"]
       20 GETTABLEKS                       R4 R5 K5 ["input"]
       22 GETTABLEN                        R5 R2 1
       23 GETTABLEN                        R6 R2 2
       24 GETIMPORT                        R7 K8 [utf8.offset]
       26 MOVE                             R8 R4
       27 MOVE                             R9 R6
       28 CALL                             R7 2 1
       29 MOVE                             R6 R7
       30 GETIMPORT                        R9 K8 [utf8.offset]
       32 MOVE                             R10 R4
       33 MOVE                             R11 R5
       34 CALL                             R9 2 1
       35 MOVE                             R10 R6
       36 JUMPIFNOT                        R10 ; [+1]
       37 SUBK                             R10 R6 K9 [1]
       38 FASTCALL3                        STRING_SUB R4 R9 R10
       40 MOVE                             R8 R4
       41 GETIMPORT                        R7 K12 [string.sub]
       43 CALL                             R7 3 1
       44 MOVE                             R3 R7
       45 RETURN                           R3 1

PROTO_9:
        0 GETTABLEKS                       R3 R0 K0 ["spans"]
        2 FASTCALL1                        TYPE R1 ; [+3]
        3 MOVE                             R6 R1
        4 GETIMPORT                        R5 K2 [type]
        6 CALL                             R5 1 1
        7 JUMPIFNOTEQKS                    R5 K3 ["number"] ; [+3]
        9 MOVE                             R4 R1
       10 JUMPIF                           R4 ; [+3]
       11 GETTABLEKS                       R5 R0 K4 ["group_id"]
       13 GETTABLE                         R4 R5 R1
       14 GETTABLE                         R2 R3 R4
       15 JUMPIF                           R2 ; [+2]
       16 LOADNIL                          R3
       17 RETURN                           R3 1
       18 GETTABLEN                        R3 R2 1
       19 GETTABLEN                        R5 R2 2
       20 SUBK                             R4 R5 K5 [1]
       21 RETURN                           R3 2

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["spans"]
        2 GETTABLEKS                       R2 R1 K1 ["n"]
        4 LOADN                            R3 0
        5 JUMPIFNOTLT                      R3 R2 ; [+50]
        7 GETIMPORT                        R2 K4 [table.create]
        9 GETTABLEKS                       R3 R1 K1 ["n"]
       11 CALL                             R2 1 1
       12 LOADN                            R5 0
       13 GETTABLEKS                       R3 R1 K1 ["n"]
       15 LOADN                            R4 1
       16 FORNPREP                         R3
       17 GETTABLE                         R6 R1 R5
       18 JUMPIFNOT                        R6 ; [+26]
       19 GETTABLEKS                       R8 R1 K5 ["input"]
       21 GETTABLEN                        R9 R6 1
       22 GETTABLEN                        R10 R6 2
       23 GETIMPORT                        R11 K8 [utf8.offset]
       25 MOVE                             R12 R8
       26 MOVE                             R13 R10
       27 CALL                             R11 2 1
       28 MOVE                             R10 R11
       29 GETIMPORT                        R13 K8 [utf8.offset]
       31 MOVE                             R14 R8
       32 MOVE                             R15 R9
       33 CALL                             R13 2 1
       34 MOVE                             R14 R10
       35 JUMPIFNOT                        R14 ; [+1]
       36 SUBK                             R14 R10 K9 [1]
       37 FASTCALL3                        STRING_SUB R8 R13 R14
       39 MOVE                             R12 R8
       40 GETIMPORT                        R11 K12 [string.sub]
       42 CALL                             R11 3 1
       43 MOVE                             R7 R11
       44 SETTABLE                         R7 R2 R5
       45 FORNLOOP                         R3
       46 LOADN                            R5 1
       47 GETTABLEKS                       R6 R1 K1 ["n"]
       49 FASTCALL3                        TABLE_UNPACK R2 R5 R6
       51 MOVE                             R4 R2
       52 GETIMPORT                        R3 K14 [table.unpack]
       54 CALL                             R3 3 -1
       55 RETURN                           R3 -1
       56 GETTABLEKS                       R3 R1 K5 ["input"]
       58 LOADN                            R6 0
       59 GETTABLE                         R5 R1 R6
       60 GETTABLEN                        R4 R5 1
       61 LOADN                            R7 0
       62 GETTABLE                         R6 R1 R7
       63 GETTABLEN                        R5 R6 2
       64 GETIMPORT                        R6 K8 [utf8.offset]
       66 MOVE                             R7 R3
       67 MOVE                             R8 R5
       68 CALL                             R6 2 1
       69 MOVE                             R5 R6
       70 GETIMPORT                        R8 K8 [utf8.offset]
       72 MOVE                             R9 R3
       73 MOVE                             R10 R4
       74 CALL                             R8 2 1
       75 MOVE                             R9 R5
       76 JUMPIFNOT                        R9 ; [+1]
       77 SUBK                             R9 R5 K9 [1]
       78 FASTCALL3                        STRING_SUB R3 R8 R9
       80 MOVE                             R7 R3
       81 GETIMPORT                        R6 K12 [string.sub]
       83 CALL                             R6 3 1
       84 MOVE                             R2 R6
       85 RETURN                           R2 1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["spans"]
        2 NEWTABLE                         R2 0 0
        4 GETIMPORT                        R3 K2 [pairs]
        6 GETTABLEKS                       R4 R0 K3 ["group_id"]
        8 CALL                             R3 1 3
        9 FORGPREP_NEXT                    R3
       10 GETTABLE                         R7 R1 R7
       11 JUMPIFNOT                        R7 ; [+26]
       12 GETTABLEKS                       R9 R1 K4 ["input"]
       14 GETTABLEN                        R10 R7 1
       15 GETTABLEN                        R11 R7 2
       16 GETIMPORT                        R12 K7 [utf8.offset]
       18 MOVE                             R13 R9
       19 MOVE                             R14 R11
       20 CALL                             R12 2 1
       21 MOVE                             R11 R12
       22 GETIMPORT                        R14 K7 [utf8.offset]
       24 MOVE                             R15 R9
       25 MOVE                             R16 R10
       26 CALL                             R14 2 1
       27 MOVE                             R15 R11
       28 JUMPIFNOT                        R15 ; [+1]
       29 SUBK                             R15 R11 K8 [1]
       30 FASTCALL3                        STRING_SUB R9 R14 R15
       32 MOVE                             R13 R9
       33 GETIMPORT                        R12 K11 [string.sub]
       35 CALL                             R12 3 1
       36 MOVE                             R8 R12
       37 SETTABLE                         R8 R2 R6
       38 FORGLOOP                         R3 2 ; [-29]
       40 RETURN                           R2 1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["spans"]
        2 GETIMPORT                        R2 K3 [table.create]
        4 GETTABLEKS                       R3 R1 K4 ["n"]
        6 CALL                             R2 1 1
        7 LOADN                            R5 0
        8 GETTABLEKS                       R3 R1 K4 ["n"]
       10 LOADN                            R4 1
       11 FORNPREP                         R3
       12 GETTABLE                         R6 R1 R5
       13 JUMPIFNOT                        R6 ; [+26]
       14 GETTABLEKS                       R8 R1 K5 ["input"]
       16 GETTABLEN                        R9 R6 1
       17 GETTABLEN                        R10 R6 2
       18 GETIMPORT                        R11 K8 [utf8.offset]
       20 MOVE                             R12 R8
       21 MOVE                             R13 R10
       22 CALL                             R11 2 1
       23 MOVE                             R10 R11
       24 GETIMPORT                        R13 K8 [utf8.offset]
       26 MOVE                             R14 R8
       27 MOVE                             R15 R9
       28 CALL                             R13 2 1
       29 MOVE                             R14 R10
       30 JUMPIFNOT                        R14 ; [+1]
       31 SUBK                             R14 R10 K9 [1]
       32 FASTCALL3                        STRING_SUB R8 R13 R14
       34 MOVE                             R12 R8
       35 GETIMPORT                        R11 K12 [string.sub]
       37 CALL                             R11 3 1
       38 MOVE                             R7 R11
       39 SETTABLE                         R7 R2 R5
       40 FORNLOOP                         R3
       41 GETTABLEKS                       R3 R1 K4 ["n"]
       43 SETTABLEKS                       R3 R2 K4 ["n"]
       45 RETURN                           R2 1

PROTO_13:
        0 GETTABLEKS                       R3 R2 K0 ["newline"]
        2 GETTABLE                         R4 R0 R1
        3 JUMPIFNOTEQKN                    R3 K1 [0] ; [+6]
        5 JUMPIFEQKN                       R4 K2 [13] ; [+2]
        7 LOADB                            R5 0 +1
        8 LOADB                            R5 1
        9 RETURN                           R5 1
       10 JUMPIFNOTEQKN                    R3 K3 [2] ; [+11]
       12 LOADB                            R5 0
       13 JUMPIFNOTEQKN                    R4 K4 [10] ; [+7]
       15 SUBK                             R7 R1 K5 [1]
       16 GETTABLE                         R6 R0 R7
       17 JUMPIFEQKN                       R6 K6 [32] ; [+2]
       19 LOADB                            R5 0 +1
       20 LOADB                            R5 1
       21 RETURN                           R5 1
       22 JUMPIFNOTEQKN                    R3 K7 [3] ; [+9]
       24 LOADB                            R5 1
       25 JUMPIFEQKN                       R4 K4 [10] ; [+5]
       27 JUMPIFEQKN                       R4 K2 [13] ; [+2]
       29 LOADB                            R5 0 +1
       30 LOADB                            R5 1
       31 RETURN                           R5 1
       32 JUMPIFNOTEQKN                    R3 K8 [4] ; [+24]
       34 LOADB                            R5 1
       35 JUMPIFEQKN                       R4 K4 [10] ; [+20]
       37 LOADB                            R5 1
       38 JUMPIFEQKN                       R4 K9 [11] ; [+17]
       40 LOADB                            R5 1
       41 JUMPIFEQKN                       R4 K10 [12] ; [+14]
       43 LOADB                            R5 1
       44 JUMPIFEQKN                       R4 K2 [13] ; [+11]
       46 LOADB                            R5 1
       47 JUMPIFEQKN                       R4 K11 [133] ; [+8]
       49 LOADB                            R5 1
       50 JUMPIFEQKN                       R4 K12 [8232] ; [+5]
       52 JUMPIFEQKN                       R4 K13 [8233] ; [+2]
       54 LOADB                            R5 0 +1
       55 LOADB                            R5 1
       56 RETURN                           R5 1
       57 JUMPIFNOTEQKN                    R3 K14 [5] ; [+6]
       59 JUMPIFEQKN                       R4 K1 [0] ; [+2]
       61 LOADB                            R5 0 +1
       62 LOADB                            R5 1
       63 RETURN                           R5 1
       64 JUMPIFEQKN                       R4 K4 [10] ; [+2]
       66 LOADB                            R5 0 +1
       67 LOADB                            R5 1
       68 RETURN                           R5 1

PROTO_14:
        0 GETTABLE                         R5 R1 R2
        1 JUMPIF                           R5 ; [+2]
        2 LOADB                            R6 0
        3 RETURN                           R6 1
        4 GETTABLEKS                       R6 R3 K0 ["ignoreCase"]
        6 JUMPIFNOT                        R6 ; [+7]
        7 LOADN                            R6 97
        8 JUMPIFNOTLE                      R6 R5 ; [+5]
       10 LOADN                            R6 122
       11 JUMPIFNOTLE                      R5 R6 ; [+2]
       13 SUBK                             R5 R5 K1 [32]
       14 FASTCALL1                        TYPE R0 ; [+3]
       15 MOVE                             R7 R0
       16 GETIMPORT                        R6 K3 [type]
       18 CALL                             R6 1 1
       19 JUMPIFNOTEQKS                    R6 K4 ["number"] ; [+6]
       21 JUMPIFEQ                         R0 R5 ; [+2]
       23 LOADB                            R6 0 +1
       24 LOADB                            R6 1
       25 RETURN                           R6 1
       26 GETTABLEN                        R6 R0 1
       27 JUMPIFNOTEQKS                    R6 K5 ["charset"] ; [+21]
       29 GETIMPORT                        R6 K7 [ipairs]
       31 GETTABLEN                        R7 R0 3
       32 CALL                             R6 1 3
       33 FORGPREP_INEXT                   R6
       34 GETUPVAL                         R11 0
       35 MOVE                             R12 R10
       36 MOVE                             R13 R1
       37 MOVE                             R14 R2
       38 MOVE                             R15 R3
       39 MOVE                             R16 R4
       40 CALL                             R11 5 1
       41 JUMPIFNOT                        R11 ; [+3]
       42 GETTABLEN                        R12 R0 2
       43 NOT                              R11 R12
       44 RETURN                           R11 1
       45 FORGLOOP                         R6 2 [inext] ; [-12]
       47 GETTABLEN                        R6 R0 2
       48 RETURN                           R6 1
       49 GETTABLEN                        R6 R0 1
       50 JUMPIFNOTEQKS                    R6 K8 ["range"] ; [+31]
       52 GETTABLEN                        R7 R0 2
       53 JUMPIFNOTLE                      R7 R5 ; [+5]
       55 LOADB                            R6 1
       56 GETTABLEN                        R7 R0 3
       57 JUMPIFLE                         R5 R7 ; [+23]
       59 GETTABLEKS                       R6 R3 K0 ["ignoreCase"]
       61 JUMPIFNOT                        R6 ; [+19]
       62 LOADB                            R6 0
       63 LOADN                            R7 65
       64 JUMPIFNOTLE                      R7 R5 ; [+16]
       66 LOADB                            R6 0
       67 LOADN                            R7 90
       68 JUMPIFNOTLE                      R5 R7 ; [+12]
       70 LOADB                            R6 0
       71 ADDK                             R7 R5 K1 [32]
       72 GETTABLEN                        R8 R0 2
       73 JUMPIFNOTLE                      R8 R7 ; [+7]
       75 ADDK                             R7 R5 K1 [32]
       76 GETTABLEN                        R8 R0 3
       77 JUMPIFLE                         R7 R8 ; [+2]
       79 LOADB                            R6 0 +1
       80 LOADB                            R6 1
       81 RETURN                           R6 1
       82 GETTABLEN                        R6 R0 1
       83 JUMPIFNOTEQKS                    R6 K9 ["class"] ; [+377]
       85 GETTABLEN                        R6 R0 2
       86 GETTABLEN                        R7 R0 3
       87 LOADB                            R8 0
       88 JUMPIFNOTEQKS                    R6 K10 ["xdigit"] ; [+26]
       90 LOADN                            R10 48
       91 JUMPIFNOTLE                      R10 R5 ; [+5]
       93 LOADB                            R9 1
       94 LOADN                            R10 57
       95 JUMPIFLE                         R5 R10 ; [+17]
       97 LOADN                            R10 65
       98 JUMPIFNOTLE                      R10 R5 ; [+5]
      100 LOADB                            R9 1
      101 LOADN                            R10 70
      102 JUMPIFLE                         R5 R10 ; [+10]
      104 LOADB                            R9 0
      105 LOADN                            R10 97
      106 JUMPIFNOTLE                      R10 R5 ; [+6]
      108 LOADN                            R10 102
      109 JUMPIFLE                         R5 R10 ; [+2]
      111 LOADB                            R9 0 +1
      112 LOADB                            R9 1
      113 MOVE                             R8 R9
      114 JUMP                             ; [+342]
      115 JUMPIFNOTEQKS                    R6 K11 ["ascii"] ; [+7]
      117 LOADN                            R9 127
      118 JUMPIFLE                         R5 R9 ; [+2]
      120 LOADB                            R8 0 +1
      121 LOADB                            R8 1
      122 JUMP                             ; [+334]
      123 JUMPIFNOTEQKS                    R6 K12 ["vertical_tab"] ; [+17]
      125 LOADN                            R10 10
      126 JUMPIFNOTLE                      R10 R5 ; [+5]
      128 LOADB                            R9 1
      129 LOADN                            R10 13
      130 JUMPIFLE                         R5 R10 ; [+8]
      132 LOADB                            R9 1
      133 JUMPIFEQKN                       R5 K13 [8232] ; [+5]
      135 JUMPIFEQKN                       R5 K14 [8233] ; [+2]
      137 LOADB                            R9 0 +1
      138 LOADB                            R9 1
      139 MOVE                             R8 R9
      140 JUMP                             ; [+316]
      141 GETTABLEKS                       R9 R3 K15 ["unicode"]
      143 JUMPIFNOT                        R9 ; [+130]
      144 GETUPVAL                         R11 1
      145 GETTABLE                         R10 R11 R5
      146 ORK                              R9 R10 K16 ["Cn"]
      147 LOADN                            R12 1
      148 LOADN                            R13 1
      149 NAMECALL                         R10 R9 K17 ["sub"]
      151 CALL                             R10 3 1
      152 JUMPIFNOTEQKS                    R6 K18 ["alnum"] ; [+13]
      154 LOADB                            R11 1
      155 JUMPIFEQKS                       R10 K19 ["L"] ; [+8]
      157 LOADB                            R11 1
      158 JUMPIFEQKS                       R9 K20 ["Nl"] ; [+5]
      160 JUMPIFEQKS                       R9 K21 ["Nd"] ; [+2]
      162 LOADB                            R11 0 +1
      163 LOADB                            R11 1
      164 MOVE                             R8 R11
      165 JUMP                             ; [+291]
      166 JUMPIFNOTEQKS                    R6 K22 ["alpha"] ; [+10]
      168 LOADB                            R11 1
      169 JUMPIFEQKS                       R10 K19 ["L"] ; [+5]
      171 JUMPIFEQKS                       R9 K20 ["Nl"] ; [+2]
      173 LOADB                            R11 0 +1
      174 LOADB                            R11 1
      175 MOVE                             R8 R11
      176 JUMP                             ; [+280]
      177 JUMPIFNOTEQKS                    R6 K23 ["blank"] ; [+10]
      179 LOADB                            R11 1
      180 JUMPIFEQKS                       R9 K24 ["Zs"] ; [+5]
      182 JUMPIFEQKN                       R5 K25 [9] ; [+2]
      184 LOADB                            R11 0 +1
      185 LOADB                            R11 1
      186 MOVE                             R8 R11
      187 JUMP                             ; [+269]
      188 JUMPIFNOTEQKS                    R6 K26 ["cntrl"] ; [+6]
      190 JUMPIFEQKS                       R9 K27 ["Cc"] ; [+2]
      192 LOADB                            R8 0 +1
      193 LOADB                            R8 1
      194 JUMP                             ; [+262]
      195 JUMPIFNOTEQKS                    R6 K28 ["digit"] ; [+6]
      197 JUMPIFEQKS                       R9 K21 ["Nd"] ; [+2]
      199 LOADB                            R8 0 +1
      200 LOADB                            R8 1
      201 JUMP                             ; [+255]
      202 JUMPIFNOTEQKS                    R6 K29 ["graph"] ; [+10]
      204 LOADB                            R11 0
      205 JUMPIFEQKS                       R10 K30 ["P"] ; [+5]
      207 JUMPIFNOTEQKS                    R10 K31 ["C"] ; [+2]
      209 LOADB                            R11 0 +1
      210 LOADB                            R11 1
      211 MOVE                             R8 R11
      212 JUMP                             ; [+244]
      213 JUMPIFNOTEQKS                    R6 K32 ["lower"] ; [+6]
      215 JUMPIFEQKS                       R9 K33 ["Ll"] ; [+2]
      217 LOADB                            R8 0 +1
      218 LOADB                            R8 1
      219 JUMP                             ; [+237]
      220 JUMPIFNOTEQKS                    R6 K34 ["print"] ; [+6]
      222 JUMPIFNOTEQKS                    R10 K31 ["C"] ; [+2]
      224 LOADB                            R8 0 +1
      225 LOADB                            R8 1
      226 JUMP                             ; [+230]
      227 JUMPIFNOTEQKS                    R6 K35 ["punct"] ; [+6]
      229 JUMPIFEQKS                       R10 K30 ["P"] ; [+2]
      231 LOADB                            R8 0 +1
      232 LOADB                            R8 1
      233 JUMP                             ; [+223]
      234 JUMPIFNOTEQKS                    R6 K36 ["space"] ; [+15]
      236 LOADB                            R11 1
      237 JUMPIFEQKS                       R10 K37 ["Z"] ; [+10]
      239 LOADB                            R11 0
      240 LOADN                            R12 9
      241 JUMPIFNOTLE                      R12 R5 ; [+6]
      243 LOADN                            R12 13
      244 JUMPIFLE                         R5 R12 ; [+2]
      246 LOADB                            R11 0 +1
      247 LOADB                            R11 1
      248 MOVE                             R8 R11
      249 JUMP                             ; [+207]
      250 JUMPIFNOTEQKS                    R6 K38 ["upper"] ; [+6]
      252 JUMPIFEQKS                       R9 K39 ["Lu"] ; [+2]
      254 LOADB                            R8 0 +1
      255 LOADB                            R8 1
      256 JUMP                             ; [+200]
      257 JUMPIFNOTEQKS                    R6 K40 ["word"] ; [+199]
      259 LOADB                            R11 1
      260 JUMPIFEQKS                       R10 K19 ["L"] ; [+11]
      262 LOADB                            R11 1
      263 JUMPIFEQKS                       R9 K20 ["Nl"] ; [+8]
      265 LOADB                            R11 1
      266 JUMPIFEQKS                       R9 K21 ["Nd"] ; [+5]
      268 JUMPIFEQKS                       R9 K41 ["Pc"] ; [+2]
      270 LOADB                            R11 0 +1
      271 LOADB                            R11 1
      272 MOVE                             R8 R11
      273 JUMP                             ; [+183]
      274 JUMPIFNOTEQKS                    R6 K18 ["alnum"] ; [+26]
      276 LOADN                            R10 48
      277 JUMPIFNOTLE                      R10 R5 ; [+5]
      279 LOADB                            R9 1
      280 LOADN                            R10 57
      281 JUMPIFLE                         R5 R10 ; [+17]
      283 LOADN                            R10 65
      284 JUMPIFNOTLE                      R10 R5 ; [+5]
      286 LOADB                            R9 1
      287 LOADN                            R10 90
      288 JUMPIFLE                         R5 R10 ; [+10]
      290 LOADB                            R9 0
      291 LOADN                            R10 97
      292 JUMPIFNOTLE                      R10 R5 ; [+6]
      294 LOADN                            R10 122
      295 JUMPIFLE                         R5 R10 ; [+2]
      297 LOADB                            R9 0 +1
      298 LOADB                            R9 1
      299 MOVE                             R8 R9
      300 JUMP                             ; [+156]
      301 JUMPIFNOTEQKS                    R6 K22 ["alpha"] ; [+19]
      303 LOADN                            R10 65
      304 JUMPIFNOTLE                      R10 R5 ; [+5]
      306 LOADB                            R9 1
      307 LOADN                            R10 90
      308 JUMPIFLE                         R5 R10 ; [+10]
      310 LOADB                            R9 0
      311 LOADN                            R10 97
      312 JUMPIFNOTLE                      R10 R5 ; [+6]
      314 LOADN                            R10 122
      315 JUMPIFLE                         R5 R10 ; [+2]
      317 LOADB                            R9 0 +1
      318 LOADB                            R9 1
      319 MOVE                             R8 R9
      320 JUMP                             ; [+136]
      321 JUMPIFNOTEQKS                    R6 K23 ["blank"] ; [+10]
      323 LOADB                            R9 1
      324 JUMPIFEQKN                       R5 K25 [9] ; [+5]
      326 JUMPIFEQKN                       R5 K1 [32] ; [+2]
      328 LOADB                            R9 0 +1
      329 LOADB                            R9 1
      330 MOVE                             R8 R9
      331 JUMP                             ; [+125]
      332 JUMPIFNOTEQKS                    R6 K26 ["cntrl"] ; [+11]
      334 LOADB                            R9 1
      335 LOADN                            R10 31
      336 JUMPIFLE                         R5 R10 ; [+5]
      338 JUMPIFEQKN                       R5 K42 [127] ; [+2]
      340 LOADB                            R9 0 +1
      341 LOADB                            R9 1
      342 MOVE                             R8 R9
      343 JUMP                             ; [+113]
      344 JUMPIFNOTEQKS                    R6 K28 ["digit"] ; [+12]
      346 LOADB                            R9 0
      347 LOADN                            R10 48
      348 JUMPIFNOTLE                      R10 R5 ; [+6]
      350 LOADN                            R10 57
      351 JUMPIFLE                         R5 R10 ; [+2]
      353 LOADB                            R9 0 +1
      354 LOADB                            R9 1
      355 MOVE                             R8 R9
      356 JUMP                             ; [+100]
      357 JUMPIFNOTEQKS                    R6 K29 ["graph"] ; [+12]
      359 LOADB                            R9 0
      360 LOADN                            R10 33
      361 JUMPIFNOTLE                      R10 R5 ; [+6]
      363 LOADN                            R10 126
      364 JUMPIFLE                         R5 R10 ; [+2]
      366 LOADB                            R9 0 +1
      367 LOADB                            R9 1
      368 MOVE                             R8 R9
      369 JUMP                             ; [+87]
      370 JUMPIFNOTEQKS                    R6 K32 ["lower"] ; [+12]
      372 LOADB                            R9 0
      373 LOADN                            R10 97
      374 JUMPIFNOTLE                      R10 R5 ; [+6]
      376 LOADN                            R10 122
      377 JUMPIFLE                         R5 R10 ; [+2]
      379 LOADB                            R9 0 +1
      380 LOADB                            R9 1
      381 MOVE                             R8 R9
      382 JUMP                             ; [+74]
      383 JUMPIFNOTEQKS                    R6 K34 ["print"] ; [+12]
      385 LOADB                            R9 0
      386 LOADN                            R10 32
      387 JUMPIFNOTLE                      R10 R5 ; [+6]
      389 LOADN                            R10 126
      390 JUMPIFLE                         R5 R10 ; [+2]
      392 LOADB                            R9 0 +1
      393 LOADB                            R9 1
      394 MOVE                             R8 R9
      395 JUMP                             ; [+61]
      396 JUMPIFNOTEQKS                    R6 K35 ["punct"] ; [+4]
      398 GETUPVAL                         R9 2
      399 GETTABLE                         R8 R9 R5
      400 JUMP                             ; [+56]
      401 JUMPIFNOTEQKS                    R6 K36 ["space"] ; [+14]
      403 LOADN                            R10 9
      404 JUMPIFNOTLE                      R10 R5 ; [+5]
      406 LOADB                            R9 1
      407 LOADN                            R10 13
      408 JUMPIFLE                         R5 R10 ; [+5]
      410 JUMPIFEQKN                       R5 K1 [32] ; [+2]
      412 LOADB                            R9 0 +1
      413 LOADB                            R9 1
      414 MOVE                             R8 R9
      415 JUMP                             ; [+41]
      416 JUMPIFNOTEQKS                    R6 K38 ["upper"] ; [+12]
      418 LOADB                            R9 0
      419 LOADN                            R10 65
      420 JUMPIFNOTLE                      R10 R5 ; [+6]
      422 LOADN                            R10 90
      423 JUMPIFLE                         R5 R10 ; [+2]
      425 LOADB                            R9 0 +1
      426 LOADB                            R9 1
      427 MOVE                             R8 R9
      428 JUMP                             ; [+28]
      429 JUMPIFNOTEQKS                    R6 K40 ["word"] ; [+27]
      431 LOADN                            R10 48
      432 JUMPIFNOTLE                      R10 R5 ; [+5]
      434 LOADB                            R9 1
      435 LOADN                            R10 57
      436 JUMPIFLE                         R5 R10 ; [+19]
      438 LOADN                            R10 65
      439 JUMPIFNOTLE                      R10 R5 ; [+5]
      441 LOADB                            R9 1
      442 LOADN                            R10 90
      443 JUMPIFLE                         R5 R10 ; [+12]
      445 LOADN                            R10 97
      446 JUMPIFNOTLE                      R10 R5 ; [+5]
      448 LOADB                            R9 1
      449 LOADN                            R10 122
      450 JUMPIFLE                         R5 R10 ; [+5]
      452 JUMPIFEQKN                       R5 K43 [95] ; [+2]
      454 LOADB                            R9 0 +1
      455 LOADB                            R9 1
      456 MOVE                             R8 R9
      457 JUMPIFNOT                        R7 ; [+2]
      458 NOT                              R9 R8
      459 RETURN                           R9 1
      460 RETURN                           R8 1
      461 GETTABLEN                        R6 R0 1
      462 JUMPIFNOTEQKS                    R6 K44 ["category"] ; [+77]
      464 GETUPVAL                         R8 1
      465 GETTABLE                         R7 R8 R5
      466 ORK                              R6 R7 K16 ["Cn"]
      467 GETTABLEN                        R7 R0 3
      468 LENGTH                           R8 R7
      469 JUMPIFNOTEQKN                    R8 K45 [3] ; [+58]
      471 LOADB                            R9 0
      472 JUMPIFEQKS                       R7 K46 ["Xan"] ; [+3]
      474 JUMPIFNOTEQKS                    R7 K47 ["Xwd"] ; [+15]
      476 LOADK                            R12 K48 ["^[LN]"]
      477 NAMECALL                         R10 R6 K49 ["find"]
      479 CALL                             R10 2 1
      480 JUMPIF                           R10 ; [+7]
      481 LOADB                            R10 0
      482 JUMPIFNOTEQKS                    R7 K47 ["Xwd"] ; [+5]
      484 JUMPIFEQKN                       R5 K43 [95] ; [+2]
      486 LOADB                            R10 0 +1
      487 LOADB                            R10 1
      488 MOVE                             R9 R10
      489 JUMP                             ; [+33]
      490 JUMPIFEQKS                       R7 K50 ["Xps"] ; [+3]
      492 JUMPIFNOTEQKS                    R7 K51 ["Xsp"] ; [+20]
      494 LOADB                            R10 1
      495 LOADN                            R13 1
      496 LOADN                            R14 1
      497 NAMECALL                         R11 R6 K17 ["sub"]
      499 CALL                             R11 3 1
      500 JUMPIFEQKS                       R11 K37 ["Z"] ; [+10]
      502 LOADB                            R10 0
      503 LOADN                            R11 9
      504 JUMPIFNOTLE                      R11 R5 ; [+6]
      506 LOADN                            R11 13
      507 JUMPIFLE                         R5 R11 ; [+2]
      509 LOADB                            R10 0 +1
      510 LOADB                            R10 1
      511 MOVE                             R9 R10
      512 JUMP                             ; [+10]
      513 JUMPIFNOTEQKS                    R7 K52 ["Xuc"] ; [+9]
      515 GETUPVAL                         R10 0
      516 GETUPVAL                         R11 3
      517 MOVE                             R12 R1
      518 MOVE                             R13 R2
      519 MOVE                             R14 R3
      520 MOVE                             R15 R4
      521 CALL                             R10 5 1
      522 MOVE                             R9 R10
      523 GETTABLEN                        R10 R0 2
      524 JUMPIFNOT                        R10 ; [+2]
      525 NOT                              R10 R9
      526 RETURN                           R10 1
      527 RETURN                           R9 1
      528 LOADN                            R11 1
      529 MOVE                             R12 R8
      530 NAMECALL                         R9 R6 K17 ["sub"]
      532 CALL                             R9 3 1
      533 JUMPIFNOTEQ                      R9 R7 ; [+4]
      535 GETTABLEN                        R10 R0 2
      536 NOT                              R9 R10
      537 RETURN                           R9 1
      538 GETTABLEN                        R9 R0 2
      539 RETURN                           R9 1
      540 GETTABLEN                        R6 R0 1
      541 JUMPIFNOTEQKN                    R6 K53 [46] ; [+11]
      543 GETTABLEKS                       R6 R3 K54 ["dotAll"]
      545 JUMPIF                           R6 ; [+6]
      546 GETUPVAL                         R7 4
      547 MOVE                             R8 R1
      548 MOVE                             R9 R2
      549 MOVE                             R10 R4
      550 CALL                             R7 3 1
      551 NOT                              R6 R7
      552 RETURN                           R6 1
      553 GETTABLEN                        R6 R0 1
      554 JUMPIFNOTEQKN                    R6 K55 [78] ; [+8]
      556 GETUPVAL                         R7 4
      557 MOVE                             R8 R1
      558 MOVE                             R9 R2
      559 MOVE                             R10 R4
      560 CALL                             R7 3 1
      561 NOT                              R6 R7
      562 RETURN                           R6 1
      563 GETTABLEN                        R6 R0 1
      564 JUMPIFNOTEQKN                    R6 K56 [82] ; [+36]
      566 GETTABLEKS                       R6 R4 K57 ["newline_seq"]
      568 JUMPIFNOTEQKN                    R6 K58 [0] ; [+9]
      570 LOADB                            R6 1
      571 JUMPIFEQKN                       R5 K59 [10] ; [+5]
      573 JUMPIFEQKN                       R5 K60 [13] ; [+2]
      575 LOADB                            R6 0 +1
      576 LOADB                            R6 1
      577 RETURN                           R6 1
      578 LOADB                            R6 1
      579 JUMPIFEQKN                       R5 K59 [10] ; [+20]
      581 LOADB                            R6 1
      582 JUMPIFEQKN                       R5 K61 [11] ; [+17]
      584 LOADB                            R6 1
      585 JUMPIFEQKN                       R5 K62 [12] ; [+14]
      587 LOADB                            R6 1
      588 JUMPIFEQKN                       R5 K60 [13] ; [+11]
      590 LOADB                            R6 1
      591 JUMPIFEQKN                       R5 K63 [133] ; [+8]
      593 LOADB                            R6 1
      594 JUMPIFEQKN                       R5 K13 [8232] ; [+5]
      596 JUMPIFEQKN                       R5 K14 [8233] ; [+2]
      598 LOADB                            R6 0 +1
      599 LOADB                            R6 1
      600 RETURN                           R6 1
      601 LOADB                            R6 0
      602 RETURN                           R6 1

PROTO_15:
        0 GETTABLE                         R3 R0 R1
        1 FASTCALL1                        TYPE R3 ; [+3]
        2 MOVE                             R6 R3
        3 GETIMPORT                        R5 K1 [type]
        5 CALL                             R5 1 1
        6 JUMPIFEQKS                       R5 K2 ["table"] ; [+2]
        8 LOADB                            R4 0 +1
        9 LOADB                            R4 1
       10 GETUPVAL                         R5 0
       11 JUMPIFNOTEQ                      R3 R5 ; [+2]
       13 RETURN                           R1 2
       14 JUMPIFNOT                        R4 ; [+9]
       15 GETTABLEN                        R5 R3 1
       16 JUMPIFNOTEQKN                    R5 K3 [40] ; [+7]
       18 JUMPIFNOT                        R2 ; [+3]
       19 GETTABLEKS                       R5 R3 K4 ["count"]
       21 ADD                              R2 R2 R5
       22 GETTABLEN                        R1 R3 3
       23 JUMP                             ; [+40]
       24 JUMPIFNOT                        R4 ; [+22]
       25 GETTABLEN                        R5 R3 1
       26 JUMPIFNOTEQKS                    R5 K5 ["quantifier"] ; [+20]
       28 GETTABLEN                        R6 R3 5
       29 FASTCALL1                        TYPE R6 ; [+2]
       30 GETIMPORT                        R5 K1 [type]
       32 CALL                             R5 1 1
       33 JUMPIFNOTEQKS                    R5 K2 ["table"] ; [+13]
       35 GETTABLEN                        R6 R3 5
       36 GETTABLEN                        R5 R6 1
       37 JUMPIFNOTEQKN                    R5 K3 [40] ; [+9]
       39 JUMPIFNOT                        R2 ; [+4]
       40 GETTABLEN                        R6 R3 5
       41 GETTABLEKS                       R5 R6 K4 ["count"]
       43 ADD                              R2 R2 R5
       44 GETTABLEN                        R5 R3 5
       45 GETTABLEN                        R1 R5 3
       46 JUMP                             ; [+17]
       47 JUMPIFNOT                        R3 ; [+4]
       48 JUMPIFNOT                        R4 ; [+6]
       49 GETTABLEN                        R5 R3 1
       50 JUMPIFNOTEQKN                    R5 K6 [41] ; [+4]
       52 LOADNIL                          R5
       53 MOVE                             R6 R2
       54 RETURN                           R5 2
       55 JUMPIFNOT                        R2 ; [+8]
       56 JUMPIFNOT                        R4 ; [+6]
       57 GETTABLEN                        R5 R3 1
       58 JUMPIFNOTEQKS                    R5 K5 ["quantifier"] ; [+4]
       60 GETTABLEN                        R5 R3 3
       61 ADD                              R2 R2 R5
       62 JUMP                             ; [+1]
       63 ADDK                             R2 R2 K7 [1]
       64 ADDK                             R1 R1 K7 [1]
       65 JUMPBACK                         ; [-66]
       66 RETURN                           R0 0

PROTO_16:
        0 LOADN                            R6 0
        1 MOVE                             R7 R2
        2 MOVE                             R8 R2
        3 NEWTABLE                         R9 0 0
        5 JUMPIFNOT                        R6 ; [+1074]
        6 JUMPIFNOTEQKN                    R6 K0 [0] ; [+22]
        8 ADDK                             R6 R6 K1 [1]
        9 GETUPVAL                         R10 0
       10 MOVE                             R11 R0
       11 MOVE                             R12 R6
       12 CALL                             R10 2 1
       13 JUMPIFNOT                        R10 ; [+1065]
       14 LOADN                            R13 1
       15 NEWTABLE                         R14 0 3
       17 LOADK                            R15 K2 ["alternation"]
       18 MOVE                             R16 R10
       19 MOVE                             R17 R7
       20 SETLIST                          R14 R15 3 [1]
       22 FASTCALL3                        TABLE_INSERT R9 R13 R14
       24 MOVE                             R12 R9
       25 GETIMPORT                        R11 K5 [table.insert]
       27 CALL                             R11 3 0
       28 JUMP                             ; [+1050]
       29 GETTABLE                         R10 R0 R6
       30 LOADB                            R11 0
       31 FASTCALL1                        TYPE R10 ; [+3]
       32 MOVE                             R13 R10
       33 GETIMPORT                        R12 K7 [type]
       35 CALL                             R12 1 1
       36 JUMPIFNOTEQKS                    R12 K3 ["table"] ; [+2]
       38 GETTABLEN                        R11 R10 1
       39 JUMPIF                           R10 ; [+1]
       40 JUMP                             ; [+1039]
       41 JUMPIFNOTEQKS                    R10 K8 ["ACCEPT"] ; [+58]
       43 LOADB                            R12 1
       44 MOVE                             R13 R6
       45 ADDK                             R13 R13 K1 [1]
       46 GETTABLE                         R16 R0 R13
       47 FASTCALL1                        TYPE R16 ; [+2]
       48 GETIMPORT                        R15 K7 [type]
       50 CALL                             R15 1 1
       51 JUMPIFEQKS                       R15 K3 ["table"] ; [+2]
       53 LOADB                            R14 0 +1
       54 LOADB                            R14 1
       55 GETTABLE                         R15 R0 R13
       56 JUMPIFNOT                        R14 ; [+26]
       57 GETTABLEN                        R16 R15 1
       58 JUMPIFEQKN                       R16 K9 [40] ; [+15]
       60 GETTABLEN                        R16 R15 1
       61 JUMPIFNOTEQKS                    R16 K10 ["quantifier"] ; [+21]
       63 GETTABLEN                        R17 R15 5
       64 FASTCALL1                        TYPE R17 ; [+2]
       65 GETIMPORT                        R16 K7 [type]
       67 CALL                             R16 1 1
       68 JUMPIFNOTEQKS                    R16 K3 ["table"] ; [+14]
       70 GETTABLEN                        R17 R15 5
       71 GETTABLEN                        R16 R17 1
       72 JUMPIFNOTEQKN                    R16 K9 [40] ; [+10]
       74 GETTABLEN                        R17 R15 1
       75 JUMPIFNOTEQKS                    R17 K10 ["quantifier"] ; [+4]
       77 GETTABLEN                        R17 R15 5
       78 GETTABLEN                        R16 R17 3
       79 JUMPIF                           R16 ; [+1]
       80 GETTABLEN                        R16 R15 3
       81 MOVE                             R13 R16
       82 JUMP                             ; [+13]
       83 JUMPIFNOT                        R14 ; [+12]
       84 GETTABLEN                        R16 R15 1
       85 JUMPIFNOTEQKN                    R16 K11 [41] ; [+10]
       87 GETTABLEN                        R16 R15 4
       88 JUMPIFEQKN                       R16 K12 [33] ; [+4]
       90 GETTABLEN                        R16 R15 4
       91 JUMPIFNOTEQKN                    R16 K13 [61] ; [+4]
       93 LOADB                            R12 0
       94 MOVE                             R6 R13
       95 JUMP                             ; [+2]
       96 JUMPIFNOT                        R15 ; [+1]
       97 JUMPBACK                         ; [-53]
       98 JUMPIF                           R12 ; [+981]
       99 JUMP                             ; [+979]
      100 JUMPIFEQKS                       R10 K14 ["PRUNE"] ; [+3]
      102 JUMPIFNOTEQKS                    R10 K15 ["SKIP"] ; [+16]
      104 LOADN                            R14 1
      105 NEWTABLE                         R15 0 2
      107 MOVE                             R16 R10
      108 MOVE                             R17 R7
      109 SETLIST                          R15 R16 2 [1]
      111 FASTCALL3                        TABLE_INSERT R9 R14 R15
      113 MOVE                             R13 R9
      114 GETIMPORT                        R12 K5 [table.insert]
      116 CALL                             R12 3 0
      117 ADDK                             R6 R6 K1 [1]
      118 JUMP                             ; [+960]
      119 JUMPIFNOTEQKN                    R11 K9 [40] ; [+52]
      121 LOADN                            R14 1
      122 NEWTABLE                         R15 0 7
      124 LOADK                            R16 K16 ["group"]
      125 MOVE                             R17 R6
      126 MOVE                             R18 R7
      127 LOADNIL                          R19
      128 GETTABLEN                        R20 R10 2
      129 GETTABLEN                        R21 R10 3
      130 GETTABLEN                        R22 R10 4
      131 SETLIST                          R15 R16 7 [1]
      133 FASTCALL3                        TABLE_INSERT R9 R14 R15
      135 MOVE                             R13 R9
      136 GETIMPORT                        R12 K5 [table.insert]
      138 CALL                             R12 3 0
      139 ADDK                             R6 R6 K1 [1]
      140 GETUPVAL                         R12 0
      141 MOVE                             R13 R0
      142 MOVE                             R14 R6
      143 GETTABLEN                        R16 R10 4
      144 JUMPIFEQKN                       R16 K12 [33] ; [+5]
      146 LOADB                            R15 0
      147 GETTABLEN                        R16 R10 4
      148 JUMPIFNOTEQKN                    R16 K13 [61] ; [+4]
      150 GETTABLEN                        R15 R10 5
      151 JUMPIFNOT                        R15 ; [+1]
      152 LOADN                            R15 0
      153 CALL                             R12 3 2
      154 JUMPIFNOT                        R12 ; [+14]
      155 LOADN                            R16 1
      156 NEWTABLE                         R17 0 3
      158 LOADK                            R18 K2 ["alternation"]
      159 MOVE                             R19 R12
      160 MOVE                             R20 R7
      161 SETLIST                          R17 R18 3 [1]
      163 FASTCALL3                        TABLE_INSERT R9 R16 R17
      165 MOVE                             R15 R9
      166 GETIMPORT                        R14 K5 [table.insert]
      168 CALL                             R14 3 0
      169 JUMPIFNOT                        R13 ; [+909]
      170 SUB                              R7 R7 R13
      171 JUMP                             ; [+907]
      172 JUMPIFNOTEQKN                    R11 K11 [41] ; [+157]
      174 GETTABLEN                        R12 R10 4
      175 JUMPIFEQKN                       R12 K12 [33] ; [+154]
      177 GETTABLEN                        R12 R10 4
      178 JUMPIFEQKN                       R12 K12 [33] ; [+4]
      180 GETTABLEN                        R12 R10 4
      181 JUMPIFNOTEQKN                    R12 K13 [61] ; [+43]
      183 LOADNIL                          R12
      184 GETIMPORT                        R13 K18 [table.remove]
      186 MOVE                             R14 R9
      187 LOADN                            R15 1
      188 CALL                             R13 2 1
      189 GETTABLEN                        R14 R13 1
      190 JUMPIFNOTEQKS                    R14 K16 ["group"] ; [+24]
      192 GETTABLEN                        R14 R13 2
      193 GETTABLEN                        R15 R10 3
      194 JUMPIFNOTEQ                      R14 R15 ; [+20]
      196 GETTABLEN                        R14 R10 4
      197 JUMPIFEQKN                       R14 K12 [33] ; [+4]
      199 GETTABLEN                        R14 R10 4
      200 JUMPIFNOTEQKN                    R14 K13 [61] ; [+4]
      202 GETTABLEN                        R14 R10 5
      203 JUMPIF                           R14 ; [+1]
      204 GETTABLEN                        R7 R13 3
      205 JUMPIFNOT                        R12 ; [+122]
      206 LOADN                            R16 1
      207 FASTCALL3                        TABLE_INSERT R9 R16 R12
      209 MOVE                             R15 R9
      210 MOVE                             R17 R12
      211 GETIMPORT                        R14 K5 [table.insert]
      213 CALL                             R14 3 0
      214 JUMP                             ; [+113]
      215 GETTABLEN                        R14 R13 1
      216 JUMPIFNOTEQKS                    R14 K19 ["matchStart"] ; [+6]
      218 JUMPIF                           R12 ; [+4]
      219 GETTABLEN                        R14 R10 4
      220 JUMPIFNOTEQKN                    R14 K13 [61] ; [+2]
      222 MOVE                             R12 R13
      223 JUMPBACK                         ; [-41]
      224 JUMP                             ; [+103]
      225 GETTABLEN                        R12 R10 4
      226 JUMPIFNOTEQKN                    R12 K20 [62] ; [+16]
      228 GETIMPORT                        R12 K18 [table.remove]
      230 MOVE                             R13 R9
      231 LOADN                            R14 1
      232 CALL                             R12 2 1
      233 JUMPIFNOT                        R12 ; [+94]
      234 GETTABLEN                        R13 R12 1
      235 JUMPIFNOTEQKS                    R13 K16 ["group"] ; [+5]
      237 GETTABLEN                        R13 R12 2
      238 GETTABLEN                        R14 R10 3
      239 JUMPIFEQ                         R13 R14 ; [+88]
      241 JUMPBACK                         ; [-14]
      242 JUMP                             ; [+85]
      243 GETIMPORT                        R12 K22 [ipairs]
      245 MOVE                             R13 R9
      246 CALL                             R12 1 3
      247 FORGPREP_INEXT                   R12
      248 GETTABLEN                        R17 R16 1
      249 JUMPIFNOTEQKS                    R17 K16 ["group"] ; [+76]
      251 GETTABLEN                        R17 R16 2
      252 GETTABLEN                        R18 R10 3
      253 JUMPIFNOTEQ                      R17 R18 ; [+72]
      255 GETTABLEKS                       R17 R16 K23 ["jmp"]
      257 JUMPIFNOT                        R17 ; [+2]
      258 GETTABLEKS                       R6 R16 K23 ["jmp"]
      260 SETTABLEN                        R7 R16 4
      261 GETTABLEN                        R17 R16 7
      262 JUMPIFNOTEQKS                    R17 K10 ["quantifier"] ; [+65]
      264 GETTABLEN                        R18 R16 10
      265 ADDK                             R17 R18 K1 [1]
      266 GETTABLEN                        R18 R16 9
      267 JUMPIFNOTLT                      R17 R18 ; [+60]
      269 GETTABLEN                        R19 R10 3
      270 GETTABLE                         R18 R0 R19
      271 GETTABLEN                        R17 R18 4
      272 JUMPIFNOTEQKS                    R17 K24 ["lazy"] ; [+6]
      274 GETTABLEN                        R18 R16 10
      275 ADDK                             R17 R18 K1 [1]
      276 GETTABLEN                        R18 R16 8
      277 JUMPIFNOTLT                      R17 R18 ; [+2]
      279 GETTABLEN                        R6 R10 3
      280 GETTABLEN                        R18 R10 3
      281 GETTABLE                         R17 R0 R18
      282 NEWTABLE                         R18 0 12
      284 LOADK                            R19 K16 ["group"]
      285 GETTABLEN                        R20 R16 2
      286 MOVE                             R21 R7
      287 LOADNIL                          R22
      288 GETTABLEN                        R24 R17 5
      289 GETTABLEN                        R23 R24 2
      290 GETTABLEN                        R25 R17 5
      291 GETTABLEN                        R24 R25 3
      292 LOADK                            R25 K10 ["quantifier"]
      293 GETTABLEN                        R26 R17 2
      294 GETTABLEN                        R27 R17 3
      295 GETTABLEN                        R29 R16 10
      296 ADDK                             R28 R29 K1 [1]
      297 GETTABLEN                        R29 R16 11
      298 GETTABLEN                        R30 R17 4
      299 SETLIST                          R18 R19 12 [1]
      301 LOADN                            R21 1
      302 FASTCALL3                        TABLE_INSERT R9 R21 R18
      304 MOVE                             R20 R9
      305 MOVE                             R22 R18
      306 GETIMPORT                        R19 K5 [table.insert]
      308 CALL                             R19 3 0
      309 GETTABLEN                        R19 R16 11
      310 JUMPIFNOT                        R19 ; [+17]
      311 LOADN                            R21 1
      312 NEWTABLE                         R22 0 3
      314 LOADK                            R23 K2 ["alternation"]
      315 GETTABLEN                        R24 R16 11
      316 MOVE                             R25 R7
      317 SETLIST                          R22 R23 3 [1]
      319 FASTCALL3                        TABLE_INSERT R9 R21 R22
      321 MOVE                             R20 R9
      322 GETIMPORT                        R19 K5 [table.insert]
      324 CALL                             R19 3 0
      325 JUMP                             ; [+2]
      326 FORGLOOP                         R12 2 [inext] ; [-79]
      328 ADDK                             R6 R6 K1 [1]
      329 JUMP                             ; [+749]
      330 JUMPIFNOTEQKN                    R11 K25 [75] ; [+16]
      332 LOADN                            R14 1
      333 NEWTABLE                         R15 0 2
      335 LOADK                            R16 K19 ["matchStart"]
      336 MOVE                             R17 R7
      337 SETLIST                          R15 R16 2 [1]
      339 FASTCALL3                        TABLE_INSERT R9 R14 R15
      341 MOVE                             R13 R9
      342 GETIMPORT                        R12 K5 [table.insert]
      344 CALL                             R12 3 0
      345 ADDK                             R6 R6 K1 [1]
      346 JUMP                             ; [+732]
      347 JUMPIFNOTEQKN                    R11 K26 [124] ; [+65]
      349 MOVE                             R12 R6
      350 ADDK                             R12 R12 K1 [1]
      351 GETTABLE                         R15 R0 R12
      352 FASTCALL1                        TYPE R15 ; [+2]
      353 GETIMPORT                        R14 K7 [type]
      355 CALL                             R14 1 1
      356 JUMPIFEQKS                       R14 K3 ["table"] ; [+2]
      358 LOADB                            R13 0 +1
      359 LOADB                            R13 1
      360 GETTABLE                         R14 R0 R12
      361 JUMPIFNOT                        R13 ; [+25]
      362 GETTABLEN                        R15 R14 1
      363 JUMPIFEQKN                       R15 K9 [40] ; [+15]
      365 GETTABLEN                        R15 R14 1
      366 JUMPIFNOTEQKS                    R15 K10 ["quantifier"] ; [+20]
      368 GETTABLEN                        R16 R14 5
      369 FASTCALL1                        TYPE R16 ; [+2]
      370 GETIMPORT                        R15 K7 [type]
      372 CALL                             R15 1 1
      373 JUMPIFNOTEQKS                    R15 K3 ["table"] ; [+13]
      375 GETTABLEN                        R16 R14 5
      376 GETTABLEN                        R15 R16 1
      377 JUMPIFNOTEQKN                    R15 K9 [40] ; [+9]
      379 GETTABLEN                        R16 R14 1
      380 JUMPIFNOTEQKS                    R16 K10 ["quantifier"] ; [+4]
      382 GETTABLEN                        R16 R14 5
      383 GETTABLEN                        R15 R16 3
      384 JUMPIF                           R15 ; [+1]
      385 GETTABLEN                        R15 R14 3
      386 MOVE                             R12 R15
      387 JUMPIFNOT                        R13 ; [+3]
      388 GETTABLEN                        R15 R14 1
      389 JUMPIFEQKN                       R15 K11 [41] ; [+3]
      391 JUMPIFNOT                        R14 ; [+1]
      392 JUMPBACK                         ; [-43]
      393 GETTABLE                         R13 R0 R12
      394 JUMPIFNOT                        R13 ; [+16]
      395 GETIMPORT                        R13 K22 [ipairs]
      397 MOVE                             R14 R9
      398 CALL                             R13 1 3
      399 FORGPREP_INEXT                   R13
      400 GETTABLEN                        R18 R17 1
      401 JUMPIFNOTEQKS                    R18 K16 ["group"] ; [+6]
      403 GETTABLEN                        R18 R17 6
      404 JUMPIFNOTEQ                      R18 R12 ; [+3]
      406 GETTABLEN                        R6 R17 6
      407 JUMP                             ; [+671]
      408 FORGLOOP                         R13 2 [inext] ; [-9]
      410 JUMP                             ; [+668]
      411 MOVE                             R6 R12
      412 JUMP                             ; [+666]
      413 JUMPIFNOTEQKS                    R11 K27 ["recurmatch"] ; [+45]
      415 LOADN                            R14 1
      416 NEWTABLE                         R15 1 7
      418 LOADK                            R16 K16 ["group"]
      419 GETTABLEN                        R17 R10 3
      420 MOVE                             R18 R7
      421 LOADNIL                          R19
      422 LOADNIL                          R20
      423 GETTABLEN                        R23 R10 3
      424 GETTABLE                         R22 R0 R23
      425 GETTABLEN                        R21 R22 3
      426 LOADNIL                          R22
      427 SETLIST                          R15 R16 7 [1]
      429 SETTABLEKS                       R6 R15 K23 ["jmp"]
      431 FASTCALL3                        TABLE_INSERT R9 R14 R15
      433 MOVE                             R13 R9
      434 GETIMPORT                        R12 K5 [table.insert]
      436 CALL                             R12 3 0
      437 GETTABLEN                        R12 R10 3
      438 ADDK                             R6 R12 K1 [1]
      439 GETUPVAL                         R12 0
      440 MOVE                             R13 R0
      441 MOVE                             R14 R6
      442 CALL                             R12 2 2
      443 JUMPIFNOT                        R12 ; [+635]
      444 LOADN                            R16 1
      445 NEWTABLE                         R17 0 3
      447 LOADK                            R18 K2 ["alternation"]
      448 MOVE                             R19 R12
      449 MOVE                             R20 R7
      450 SETLIST                          R17 R18 3 [1]
      452 FASTCALL3                        TABLE_INSERT R9 R16 R17
      454 MOVE                             R15 R9
      455 GETIMPORT                        R14 K5 [table.insert]
      457 CALL                             R14 3 0
      458 JUMP                             ; [+620]
      459 LOADNIL                          R12
      460 JUMPIFNOTEQKS                    R10 K28 ["FAIL"] ; [+3]
      462 LOADB                            R12 0
      463 JUMP                             ; [+474]
      464 JUMPIFNOTEQKN                    R11 K11 [41] ; [+15]
      466 GETIMPORT                        R13 K18 [table.remove]
      468 MOVE                             R14 R9
      469 LOADN                            R15 1
      470 CALL                             R13 2 1
      471 GETTABLEN                        R14 R13 1
      472 JUMPIFNOTEQKS                    R14 K16 ["group"] ; [+5]
      474 GETTABLEN                        R14 R13 2
      475 GETTABLEN                        R15 R10 3
      476 JUMPIFEQ                         R14 R15 ; [+461]
      478 JUMPBACK                         ; [-13]
      479 JUMP                             ; [+458]
      480 JUMPIFNOTEQKS                    R11 K10 ["quantifier"] ; [+229]
      482 GETTABLEN                        R14 R10 5
      483 FASTCALL1                        TYPE R14 ; [+2]
      484 GETIMPORT                        R13 K7 [type]
      486 CALL                             R13 1 1
      487 JUMPIFNOTEQKS                    R13 K3 ["table"] ; [+62]
      489 GETTABLEN                        R14 R10 5
      490 GETTABLEN                        R13 R14 1
      491 JUMPIFNOTEQKN                    R13 K9 [40] ; [+58]
      493 GETUPVAL                         R13 0
      494 MOVE                             R14 R0
      495 ADDK                             R15 R6 K1 [1]
      496 CALL                             R13 2 1
      497 JUMPIFNOT                        R13 ; [+14]
      498 LOADN                            R16 1
      499 NEWTABLE                         R17 0 3
      501 LOADK                            R18 K2 ["alternation"]
      502 MOVE                             R19 R13
      503 MOVE                             R20 R7
      504 SETLIST                          R17 R18 3 [1]
      506 FASTCALL3                        TABLE_INSERT R9 R16 R17
      508 MOVE                             R15 R9
      509 GETIMPORT                        R14 K5 [table.insert]
      511 CALL                             R14 3 0
      512 JUMPIFNOT                        R13 ; [+2]
      513 LOADN                            R16 2
      514 JUMP                             ; [+1]
      515 LOADN                            R16 1
      516 NEWTABLE                         R17 0 12
      518 LOADK                            R18 K16 ["group"]
      519 MOVE                             R19 R6
      520 MOVE                             R20 R7
      521 LOADNIL                          R21
      522 GETTABLEN                        R23 R10 5
      523 GETTABLEN                        R22 R23 2
      524 GETTABLEN                        R24 R10 5
      525 GETTABLEN                        R23 R24 3
      526 LOADK                            R24 K10 ["quantifier"]
      527 GETTABLEN                        R25 R10 2
      528 GETTABLEN                        R26 R10 3
      529 LOADN                            R27 0
      530 MOVE                             R28 R13
      531 GETTABLEN                        R29 R10 4
      532 SETLIST                          R17 R18 12 [1]
      534 FASTCALL3                        TABLE_INSERT R9 R16 R17
      536 MOVE                             R15 R9
      537 GETIMPORT                        R14 K5 [table.insert]
      539 CALL                             R14 3 0
      540 GETTABLEN                        R14 R10 4
      541 JUMPIFNOTEQKS                    R14 K24 ["lazy"] ; [+6]
      543 GETTABLEN                        R14 R10 2
      544 JUMPIFNOTEQKN                    R14 K0 [0] ; [+3]
      546 GETTABLEN                        R14 R10 5
      547 GETTABLEN                        R6 R14 3
      548 LOADB                            R12 1
      549 JUMP                             ; [+388]
      550 LOADNIL                          R13
      551 LOADNIL                          R14
      552 LOADN                            R15 1
      553 LOADB                            R16 0
      554 GETTABLEN                        R18 R10 5
      555 FASTCALL1                        TYPE R18 ; [+2]
      556 GETIMPORT                        R17 K7 [type]
      558 CALL                             R17 1 1
      559 JUMPIFNOTEQKS                    R17 K3 ["table"] ; [+7]
      561 GETTABLEN                        R18 R10 5
      562 GETTABLEN                        R17 R18 1
      563 JUMPIFEQKS                       R17 K29 ["backref"] ; [+2]
      565 LOADB                            R16 0 +1
      566 LOADB                            R16 1
      567 JUMPIFNOT                        R16 ; [+20]
      568 LOADN                            R15 0
      569 GETTABLEN                        R18 R10 5
      570 GETTABLEN                        R17 R18 2
      571 GETIMPORT                        R18 K22 [ipairs]
      573 MOVE                             R19 R9
      574 CALL                             R18 1 3
      575 FORGPREP_INEXT                   R18
      576 GETTABLEN                        R23 R22 1
      577 JUMPIFNOTEQKS                    R23 K16 ["group"] ; [+8]
      579 GETTABLEN                        R23 R22 5
      580 JUMPIFNOTEQ                      R23 R17 ; [+5]
      582 GETTABLEN                        R13 R22 3
      583 GETTABLEN                        R14 R22 4
      584 SUB                              R15 R14 R13
      585 JUMP                             ; [+2]
      586 FORGLOOP                         R18 2 [inext] ; [-11]
      588 GETTABLEN                        R19 R10 2
      589 MUL                              R18 R19 R15
      590 ADD                              R17 R7 R18
      591 LOADN                            R18 0
      592 GETTABLEN                        R19 R10 3
      593 JUMPIFNOTLT                      R18 R19 ; [+70]
      595 JUMPIFNOT                        R16 ; [+57]
      596 JUMPIFNOT                        R13 ; [+67]
      597 JUMPIFNOT                        R14 ; [+66]
      598 MOVE                             R19 R7
      599 GETTABLEKS                       R21 R1 K30 ["s"]
      601 MOVE                             R22 R13
      602 MOVE                             R23 R14
      603 GETIMPORT                        R24 K33 [utf8.offset]
      605 MOVE                             R25 R21
      606 MOVE                             R26 R23
      607 CALL                             R24 2 1
      608 MOVE                             R23 R24
      609 GETIMPORT                        R26 K33 [utf8.offset]
      611 MOVE                             R27 R21
      612 MOVE                             R28 R22
      613 CALL                             R26 2 1
      614 MOVE                             R27 R23
      615 JUMPIFNOT                        R27 ; [+1]
      616 SUBK                             R27 R23 K1 [1]
      617 FASTCALL3                        STRING_SUB R21 R26 R27
      619 MOVE                             R25 R21
      620 GETIMPORT                        R24 K36 [string.sub]
      622 CALL                             R24 3 1
      623 MOVE                             R20 R24
      624 GETTABLEKS                       R22 R1 K30 ["s"]
      626 ADD                              R23 R7 R15
      627 GETIMPORT                        R24 K33 [utf8.offset]
      629 MOVE                             R25 R22
      630 MOVE                             R26 R23
      631 CALL                             R24 2 1
      632 MOVE                             R23 R24
      633 GETIMPORT                        R26 K33 [utf8.offset]
      635 MOVE                             R27 R22
      636 MOVE                             R28 R19
      637 CALL                             R26 2 1
      638 MOVE                             R27 R23
      639 JUMPIFNOT                        R27 ; [+1]
      640 SUBK                             R27 R23 K1 [1]
      641 FASTCALL3                        STRING_SUB R22 R26 R27
      643 MOVE                             R25 R22
      644 GETIMPORT                        R24 K36 [string.sub]
      646 CALL                             R24 3 1
      647 MOVE                             R21 R24
      648 JUMPIFNOTEQ                      R20 R21 ; [+15]
      650 JUMP                             ; [+10]
      651 JUMP                             ; [+12]
      652 JUMP                             ; [+8]
      653 GETUPVAL                         R19 1
      654 GETTABLEN                        R20 R10 5
      655 MOVE                             R21 R1
      656 MOVE                             R22 R7
      657 MOVE                             R23 R3
      658 MOVE                             R24 R4
      659 CALL                             R19 5 1
      660 JUMPIFNOT                        R19 ; [+3]
      661 ADD                              R7 R7 R15
      662 ADDK                             R18 R18 K1 [1]
      663 JUMPBACK                         ; [-72]
      664 GETTABLEN                        R19 R10 2
      665 JUMPIFLE                         R19 R18 ; [+2]
      667 LOADB                            R12 0 +1
      668 LOADB                            R12 1
      669 JUMPIFNOT                        R12 ; [+268]
      670 GETTABLEN                        R19 R10 4
      671 JUMPIFEQKS                       R19 K37 ["possessive"] ; [+266]
      673 GETTABLEN                        R19 R10 4
      674 JUMPIFNOTEQKS                    R19 K24 ["lazy"] ; [+4]
      676 MOVE                             R19 R7
      677 MOVE                             R7 R17
      678 MOVE                             R17 R19
      679 LOADN                            R21 1
      680 NEWTABLE                         R22 0 5
      682 LOADK                            R23 K10 ["quantifier"]
      683 MOVE                             R24 R6
      684 MOVE                             R25 R7
      685 GETTABLEKS                       R29 R1 K38 ["n"]
      687 ADDK                             R28 R29 K1 [1]
      688 FASTCALL2                        MATH_MIN R17 R28 ; [+4]
      690 MOVE                             R27 R17
      691 GETIMPORT                        R26 K41 [math.min]
      693 CALL                             R26 2 1
      694 GETTABLEN                        R29 R10 4
      695 JUMPIFNOTEQKS                    R29 K24 ["lazy"] ; [+3]
      697 LOADN                            R28 1
      698 JUMP                             ; [+1]
      699 LOADN                            R28 255
      700 MUL                              R27 R28 R15
      701 SETLIST                          R22 R23 5 [1]
      703 FASTCALL3                        TABLE_INSERT R9 R21 R22
      705 MOVE                             R20 R9
      706 GETIMPORT                        R19 K5 [table.insert]
      708 CALL                             R19 3 0
      709 JUMP                             ; [+228]
      710 JUMPIFNOTEQKS                    R11 K29 ["backref"] ; [+79]
      712 LOADNIL                          R13
      713 LOADNIL                          R14
      714 GETTABLEN                        R15 R10 2
      715 GETIMPORT                        R16 K22 [ipairs]
      717 MOVE                             R17 R9
      718 CALL                             R16 1 3
      719 FORGPREP_INEXT                   R16
      720 GETTABLEN                        R21 R20 1
      721 JUMPIFNOTEQKS                    R21 K16 ["group"] ; [+7]
      723 GETTABLEN                        R21 R20 5
      724 JUMPIFNOTEQ                      R21 R15 ; [+4]
      726 GETTABLEN                        R13 R20 3
      727 GETTABLEN                        R14 R20 4
      728 JUMP                             ; [+2]
      729 FORGLOOP                         R16 2 [inext] ; [-10]
      731 JUMPIFNOT                        R13 ; [+206]
      732 JUMPIFNOT                        R14 ; [+205]
      733 MOVE                             R16 R7
      734 SUB                              R17 R14 R13
      735 ADD                              R7 R7 R17
      736 GETTABLEKS                       R18 R1 K30 ["s"]
      738 MOVE                             R19 R13
      739 MOVE                             R20 R14
      740 GETIMPORT                        R21 K33 [utf8.offset]
      742 MOVE                             R22 R18
      743 MOVE                             R23 R20
      744 CALL                             R21 2 1
      745 MOVE                             R20 R21
      746 GETIMPORT                        R23 K33 [utf8.offset]
      748 MOVE                             R24 R18
      749 MOVE                             R25 R19
      750 CALL                             R23 2 1
      751 MOVE                             R24 R20
      752 JUMPIFNOT                        R24 ; [+1]
      753 SUBK                             R24 R20 K1 [1]
      754 FASTCALL3                        STRING_SUB R18 R23 R24
      756 MOVE                             R22 R18
      757 GETIMPORT                        R21 K36 [string.sub]
      759 CALL                             R21 3 1
      760 MOVE                             R17 R21
      761 GETTABLEKS                       R19 R1 K30 ["s"]
      763 MOVE                             R20 R7
      764 GETIMPORT                        R21 K33 [utf8.offset]
      766 MOVE                             R22 R19
      767 MOVE                             R23 R20
      768 CALL                             R21 2 1
      769 MOVE                             R20 R21
      770 GETIMPORT                        R23 K33 [utf8.offset]
      772 MOVE                             R24 R19
      773 MOVE                             R25 R16
      774 CALL                             R23 2 1
      775 MOVE                             R24 R20
      776 JUMPIFNOT                        R24 ; [+1]
      777 SUBK                             R24 R20 K1 [1]
      778 FASTCALL3                        STRING_SUB R19 R23 R24
      780 MOVE                             R22 R19
      781 GETIMPORT                        R21 K36 [string.sub]
      783 CALL                             R21 3 1
      784 MOVE                             R18 R21
      785 JUMPIFEQ                         R17 R18 ; [+2]
      787 LOADB                            R12 0 +1
      788 LOADB                            R12 1
      789 JUMP                             ; [+148]
      790 GETTABLE                         R13 R1 R7
      791 JUMPIFEQKN                       R11 K42 [36] ; [+5]
      793 JUMPIFEQKN                       R11 K43 [90] ; [+3]
      795 JUMPIFNOTEQKN                    R11 K44 [122] ; [+33]
      797 LOADB                            R14 1
      798 GETTABLEKS                       R16 R1 K38 ["n"]
      800 ADDK                             R15 R16 K1 [1]
      801 JUMPIFEQ                         R7 R15 ; [+25]
      803 JUMPIFNOTEQKN                    R11 K42 [36] ; [+10]
      805 GETTABLEKS                       R15 R3 K45 ["multiline"]
      807 JUMPIFNOT                        R15 ; [+6]
      808 GETUPVAL                         R14 2
      809 MOVE                             R15 R1
      810 ADDK                             R16 R7 K1 [1]
      811 MOVE                             R17 R4
      812 CALL                             R14 3 1
      813 JUMPIF                           R14 ; [+13]
      814 LOADB                            R14 0
      815 JUMPIFNOTEQKN                    R11 K43 [90] ; [+11]
      817 LOADB                            R14 0
      818 GETTABLEKS                       R15 R1 K38 ["n"]
      820 JUMPIFNOTEQ                      R7 R15 ; [+6]
      822 GETUPVAL                         R14 2
      823 MOVE                             R15 R1
      824 MOVE                             R16 R7
      825 MOVE                             R17 R4
      826 CALL                             R14 3 1
      827 MOVE                             R12 R14
      828 JUMP                             ; [+109]
      829 JUMPIFEQKN                       R11 K46 [94] ; [+5]
      831 JUMPIFEQKN                       R11 K47 [65] ; [+3]
      833 JUMPIFNOTEQKN                    R11 K48 [71] ; [+24]
      835 LOADB                            R14 1
      836 JUMPIFEQKN                       R7 K1 [1] ; [+19]
      838 JUMPIFNOTEQKN                    R11 K46 [94] ; [+10]
      840 GETTABLEKS                       R15 R3 K45 ["multiline"]
      842 JUMPIFNOT                        R15 ; [+6]
      843 GETUPVAL                         R14 2
      844 MOVE                             R15 R1
      845 SUBK                             R16 R7 K1 [1]
      846 MOVE                             R17 R4
      847 CALL                             R14 3 1
      848 JUMPIF                           R14 ; [+7]
      849 LOADB                            R14 0
      850 JUMPIFNOTEQKN                    R11 K48 [71] ; [+5]
      852 JUMPIFEQ                         R7 R2 ; [+2]
      854 LOADB                            R14 0 +1
      855 LOADB                            R14 1
      856 MOVE                             R12 R14
      857 JUMP                             ; [+80]
      858 JUMPIFEQKN                       R11 K49 [66] ; [+3]
      860 JUMPIFNOTEQKN                    R11 K50 [98] ; [+68]
      862 LOADB                            R14 1
      863 JUMPIFEQKN                       R7 K1 [1] ; [+9]
      865 GETTABLEKS                       R14 R3 K45 ["multiline"]
      867 JUMPIFNOT                        R14 ; [+5]
      868 GETUPVAL                         R14 2
      869 MOVE                             R15 R1
      870 SUBK                             R16 R7 K1 [1]
      871 MOVE                             R17 R4
      872 CALL                             R14 3 1
      873 LOADB                            R15 1
      874 GETTABLEKS                       R17 R1 K38 ["n"]
      876 ADDK                             R16 R17 K1 [1]
      877 JUMPIFEQ                         R7 R16 ; [+9]
      879 GETTABLEKS                       R15 R3 K45 ["multiline"]
      881 JUMPIFNOT                        R15 ; [+5]
      882 GETUPVAL                         R15 2
      883 MOVE                             R16 R1
      884 MOVE                             R17 R7
      885 MOVE                             R18 R4
      886 CALL                             R15 3 1
      887 GETUPVAL                         R17 1
      888 GETTABLEN                        R18 R10 2
      889 SUBK                             R20 R7 K1 [1]
      890 GETTABLE                         R19 R1 R20
      891 MOVE                             R20 R3
      892 CALL                             R17 3 1
      893 JUMPIFNOT                        R17 ; [+2]
      894 LOADN                            R16 0
      895 JUMP                             ; [+6]
      896 GETUPVAL                         R17 1
      897 GETTABLEN                        R18 R10 2
      898 MOVE                             R19 R13
      899 MOVE                             R20 R3
      900 CALL                             R17 3 1
      901 ANDK                             R16 R17 K1 [1]
      902 JUMPIFNOTEQKN                    R16 K0 [0] ; [+11]
      904 MOVE                             R17 R15
      905 JUMPIF                           R17 ; [+6]
      906 GETUPVAL                         R18 1
      907 GETTABLEN                        R19 R10 2
      908 MOVE                             R20 R13
      909 MOVE                             R21 R3
      910 CALL                             R18 3 1
      911 NOT                              R17 R18
      912 MOVE                             R12 R17
      913 JUMP                             ; [+11]
      914 JUMPIFNOT                        R16 ; [+10]
      915 MOVE                             R17 R14
      916 JUMPIF                           R17 ; [+7]
      917 GETUPVAL                         R18 1
      918 GETTABLEN                        R19 R10 2
      919 SUBK                             R21 R7 K1 [1]
      920 GETTABLE                         R20 R1 R21
      921 MOVE                             R21 R3
      922 CALL                             R18 3 1
      923 NOT                              R17 R18
      924 MOVE                             R12 R17
      925 JUMPIFNOTEQKN                    R11 K49 [66] ; [+12]
      927 NOT                              R12 R12
      928 JUMP                             ; [+9]
      929 GETUPVAL                         R14 1
      930 MOVE                             R15 R10
      931 MOVE                             R16 R1
      932 MOVE                             R17 R7
      933 MOVE                             R18 R3
      934 MOVE                             R19 R4
      935 CALL                             R14 5 1
      936 MOVE                             R12 R14
      937 ADDK                             R7 R7 K1 [1]
      938 JUMPIF                           R12 ; [+139]
      939 GETTABLEN                        R13 R9 1
      940 JUMPIFNOT                        R13 ; [+2]
      941 GETTABLEN                        R15 R9 1
      942 GETTABLEN                        R13 R15 1
      943 GETTABLEN                        R14 R9 1
      944 JUMPIFNOT                        R13 ; [+4]
      945 JUMPIFEQKS                       R13 K14 ["PRUNE"] ; [+3]
      947 JUMPIFNOTEQKS                    R13 K15 ["SKIP"] ; [+24]
      949 JUMPIFNOT                        R13 ; [+4]
      950 GETIMPORT                        R15 K52 [table.clear]
      952 MOVE                             R16 R9
      953 CALL                             R15 1 0
      954 GETTABLEKS                       R15 R1 K38 ["n"]
      956 JUMPIFNOTLT                      R15 R8 ; [+6]
      958 JUMPIFNOT                        R5 ; [+2]
      959 LOADB                            R15 0
      960 RETURN                           R15 1
      961 LOADNIL                          R15
      962 RETURN                           R15 1
      963 JUMPIFNOTEQKS                    R13 K15 ["SKIP"] ; [+3]
      965 GETTABLEN                        R15 R14 2
      966 JUMPIF                           R15 ; [+1]
      967 ADDK                             R15 R8 K1 [1]
      968 MOVE                             R8 R15
      969 LOADN                            R6 0
      970 MOVE                             R7 R8
      971 JUMP                             ; [+106]
      972 JUMPIFNOTEQKS                    R13 K2 ["alternation"] ; [+18]
      974 GETTABLEN                        R6 R14 2
      975 GETTABLEN                        R7 R14 3
      976 GETUPVAL                         R15 0
      977 MOVE                             R16 R0
      978 ADDK                             R17 R6 K1 [1]
      979 CALL                             R15 2 2
      980 JUMPIFNOT                        R15 ; [+2]
      981 SETTABLEN                        R15 R14 2
      982 JUMP                             ; [+5]
      983 GETIMPORT                        R17 K18 [table.remove]
      985 MOVE                             R18 R9
      986 LOADN                            R19 1
      987 CALL                             R17 2 0
      988 JUMPIFNOT                        R16 ; [+89]
      989 SUB                              R7 R7 R16
      990 JUMP                             ; [+87]
      991 JUMPIFNOTEQKS                    R13 K16 ["group"] ; [+57]
      993 GETTABLEN                        R15 R14 7
      994 JUMPIFNOTEQKS                    R15 K10 ["quantifier"] ; [+42]
      996 GETTABLEN                        R15 R14 12
      997 JUMPIFNOTEQKS                    R15 K53 ["greedy"] ; [+5]
      999 GETTABLEN                        R15 R14 10
     1000 GETTABLEN                        R16 R14 8
     1001 JUMPIFLE                         R16 R15 ; [+10]
     1003 GETTABLEN                        R15 R14 12
     1004 JUMPIFNOTEQKS                    R15 K24 ["lazy"] ; [+67]
     1006 GETTABLEN                        R15 R14 10
     1007 GETTABLEN                        R16 R14 9
     1008 JUMPIFNOTLT                      R15 R16 ; [+63]
     1010 GETTABLEN                        R15 R14 13
     1011 JUMPIF                           R15 ; [+60]
     1012 GETTABLEN                        R16 R14 12
     1013 JUMPIFNOTEQKS                    R16 K53 ["greedy"] ; [+3]
     1015 GETTABLEN                        R15 R14 6
     1016 JUMPIF                           R15 ; [+1]
     1017 GETTABLEN                        R15 R14 2
     1018 MOVE                             R6 R15
     1019 GETTABLEN                        R7 R14 3
     1020 GETTABLEN                        R15 R14 12
     1021 JUMPIFNOTEQKS                    R15 K53 ["greedy"] ; [+7]
     1023 GETIMPORT                        R15 K18 [table.remove]
     1025 MOVE                             R16 R9
     1026 LOADN                            R17 1
     1027 CALL                             R15 2 0
     1028 JUMP                             ; [+49]
     1029 GETTABLEN                        R15 R14 10
     1030 GETTABLEN                        R16 R14 8
     1031 JUMPIFNOTLE                      R16 R15 ; [+40]
     1033 LOADB                            R15 1
     1034 SETTABLEN                        R15 R14 13
     1035 JUMP                             ; [+42]
     1036 JUMP                             ; [+35]
     1037 GETTABLEN                        R15 R14 7
     1038 JUMPIFNOTEQKN                    R15 K12 [33] ; [+33]
     1040 GETIMPORT                        R15 K18 [table.remove]
     1042 MOVE                             R16 R9
     1043 LOADN                            R17 1
     1044 CALL                             R15 2 0
     1045 GETTABLEN                        R6 R14 6
     1046 GETTABLEN                        R7 R14 3
     1047 JUMP                             ; [+30]
     1048 JUMP                             ; [+23]
     1049 JUMPIFNOTEQKS                    R13 K10 ["quantifier"] ; [+22]
     1051 GETTABLEN                        R17 R14 4
     1052 GETTABLEN                        R18 R14 3
     1053 SUB                              R16 R17 R18
     1054 FASTCALL1                        MATH_SIGN R16 ; [+2]
     1055 GETIMPORT                        R15 K55 [math.sign]
     1057 CALL                             R15 1 1
     1058 GETTABLEN                        R17 R14 5
     1059 FASTCALL1                        MATH_SIGN R17 ; [+2]
     1060 GETIMPORT                        R16 K55 [math.sign]
     1062 CALL                             R16 1 1
     1063 JUMPIFNOTEQ                      R15 R16 ; [+8]
     1065 GETTABLEN                        R15 R14 3
     1066 GETTABLEN                        R16 R14 5
     1067 ADD                              R15 R15 R16
     1068 SETTABLEN                        R15 R14 3
     1069 GETTABLEN                        R6 R14 2
     1070 GETTABLEN                        R7 R14 3
     1071 JUMP                             ; [+6]
     1072 GETIMPORT                        R15 K18 [table.remove]
     1074 MOVE                             R16 R9
     1075 LOADN                            R17 1
     1076 CALL                             R15 2 0
     1077 JUMPBACK                         ; [-139]
     1078 ADDK                             R6 R6 K1 [1]
     1079 JUMPBACK                         ; [-1075]
     1080 JUMPIFNOT                        R5 ; [+2]
     1081 LOADB                            R10 1
     1082 RETURN                           R10 1
     1083 LOADB                            R10 0
     1084 GETIMPORT                        R11 K57 [table.create]
     1086 GETTABLEKS                       R12 R0 K58 ["group_n"]
     1088 CALL                             R11 1 1
     1089 LOADN                            R12 0
     1090 NEWTABLE                         R13 0 2
     1092 MOVE                             R14 R8
     1093 MOVE                             R15 R7
     1094 SETLIST                          R13 R14 2 [1]
     1096 GETTABLEKS                       R14 R0 K58 ["group_n"]
     1098 SETTABLE                         R13 R11 R12
     1099 SETTABLEKS                       R14 R11 K38 ["n"]
     1101 GETIMPORT                        R12 K22 [ipairs]
     1103 MOVE                             R13 R9
     1104 CALL                             R12 1 3
     1105 FORGPREP_INEXT                   R12
     1106 GETTABLEN                        R17 R16 1
     1107 JUMPIFNOTEQKS                    R17 K19 ["matchStart"] ; [+8]
     1109 JUMPIF                           R10 ; [+6]
     1110 LOADN                            R18 0
     1111 GETTABLE                         R17 R11 R18
     1112 GETTABLEN                        R18 R16 2
     1113 LOADB                            R10 1
     1114 SETTABLEN                        R18 R17 1
     1115 JUMP                             ; [+16]
     1116 GETTABLEN                        R17 R16 1
     1117 JUMPIFNOTEQKS                    R17 K16 ["group"] ; [+14]
     1119 GETTABLEN                        R17 R16 5
     1120 JUMPIFNOT                        R17 ; [+11]
     1121 GETTABLEN                        R18 R16 5
     1122 GETTABLE                         R17 R11 R18
     1123 JUMPIF                           R17 ; [+8]
     1124 GETTABLEN                        R17 R16 5
     1125 NEWTABLE                         R18 0 2
     1127 GETTABLEN                        R19 R16 3
     1128 GETTABLEN                        R20 R16 4
     1129 SETLIST                          R18 R19 2 [1]
     1131 SETTABLE                         R18 R11 R17
     1132 FORGLOOP                         R12 2 [inext] ; [-27]
     1134 RETURN                           R11 1

PROTO_17:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R4 R0 K0 ["token"]
        3 GETUPVAL                         R5 1
        4 MOVE                             R6 R1
        5 MOVE                             R7 R2
        6 CALL                             R5 2 1
        7 LOADN                            R6 1
        8 GETTABLEKS                       R7 R0 K1 ["flags"]
       10 GETTABLEKS                       R8 R0 K2 ["verb_flags"]
       12 LOADB                            R9 1
       13 CALL                             R3 6 1
       14 RETURN                           R3 1

PROTO_18:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R5 R0 K0 ["token"]
        3 GETUPVAL                         R6 1
        4 MOVE                             R7 R1
        5 MOVE                             R8 R2
        6 CALL                             R6 2 1
        7 LOADN                            R7 1
        8 GETTABLEKS                       R8 R0 K1 ["flags"]
       10 GETTABLEKS                       R9 R0 K2 ["verb_flags"]
       12 LOADB                            R10 0
       13 CALL                             R4 6 1
       14 JUMPIF                           R4 ; [+2]
       15 LOADNIL                          R5
       16 RETURN                           R5 1
       17 GETUPVAL                         R5 2
       18 MOVE                             R6 R4
       19 GETTABLEKS                       R7 R0 K3 ["group_id"]
       21 MOVE                             R8 R3
       22 MOVE                             R9 R1
       23 CALL                             R5 4 1
       24 RETURN                           R5 1

PROTO_19:
        0 LOADB                            R0 0
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K1 ["n"]
        5 ADDK                             R2 R3 K0 [1]
        6 JUMPIFNOTLE                      R1 R2 ; [+15]
        8 GETUPVAL                         R0 2
        9 GETUPVAL                         R2 3
       10 GETTABLEKS                       R1 R2 K2 ["token"]
       12 GETUPVAL                         R2 1
       13 GETUPVAL                         R3 0
       14 GETUPVAL                         R5 3
       15 GETTABLEKS                       R4 R5 K3 ["flags"]
       17 GETUPVAL                         R6 3
       18 GETTABLEKS                       R5 R6 K4 ["verb_flags"]
       20 LOADB                            R6 0
       21 CALL                             R0 6 1
       22 JUMPIF                           R0 ; [+2]
       23 LOADNIL                          R1
       24 RETURN                           R1 1
       25 LOADN                            R4 0
       26 GETTABLE                         R3 R0 R4
       27 GETTABLEN                        R2 R3 2
       28 LOADN                            R6 0
       29 GETTABLE                         R5 R0 R6
       30 GETTABLEN                        R4 R5 1
       31 LOADN                            R7 0
       32 GETTABLE                         R6 R0 R7
       33 GETTABLEN                        R5 R6 2
       34 JUMPIFNOTLE                      R5 R4 ; [+3]
       36 LOADN                            R3 1
       37 JUMP                             ; [+1]
       38 LOADN                            R3 0
       39 ADD                              R1 R2 R3
       40 SETUPVAL                         R1 0
       41 GETUPVAL                         R1 4
       42 MOVE                             R2 R0
       43 GETUPVAL                         R4 3
       44 GETTABLEKS                       R3 R4 K5 ["group_id"]
       46 GETUPVAL                         R4 5
       47 GETUPVAL                         R6 1
       48 GETTABLEKS                       R5 R6 K6 ["s"]
       50 CALL                             R1 4 1
       51 RETURN                           R1 1

PROTO_20:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R1
        2 MOVE                             R6 R2
        3 CALL                             R4 2 1
        4 MOVE                             R1 R4
        5 LOADN                            R4 1
        6 NEWCLOSURE                       R5 P0
        7 CAPTURE                          REF R4
        8 CAPTURE                          REF R1
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          VAL R3
       13 CLOSEUPVALS                      R1
       14 RETURN                           R5 1

PROTO_21:
        0 GETIMPORT                        R4 K1 [ipairs]
        2 MOVE                             R5 R3
        3 CALL                             R4 1 3
        4 FORGPREP_INEXT                   R4
        5 FASTCALL1                        TYPE R8 ; [+3]
        6 MOVE                             R10 R8
        7 GETIMPORT                        R9 K3 [type]
        9 CALL                             R9 1 1
       10 JUMPIFNOTEQKS                    R9 K4 ["table"] ; [+50]
       12 GETTABLEN                        R9 R8 1
       13 JUMPIFNOTEQKS                    R9 K5 ["condition"] ; [+37]
       15 GETTABLEN                        R10 R8 2
       16 GETTABLE                         R9 R2 R10
       17 JUMPIFNOT                        R9 ; [+24]
       18 GETTABLEN                        R9 R8 3
       19 JUMPIFNOT                        R9 ; [+7]
       20 GETUPVAL                         R9 0
       21 MOVE                             R10 R0
       22 MOVE                             R11 R1
       23 MOVE                             R12 R2
       24 GETTABLEN                        R13 R8 3
       25 CALL                             R9 4 0
       26 JUMP                             ; [+48]
       27 GETIMPORT                        R9 K7 [table.move]
       29 MOVE                             R10 R1
       30 GETTABLEN                        R13 R8 2
       31 GETTABLE                         R12 R2 R13
       32 GETTABLEN                        R11 R12 1
       33 GETTABLEN                        R15 R8 2
       34 GETTABLE                         R14 R2 R15
       35 GETTABLEN                        R13 R14 2
       36 SUBK                             R12 R13 K8 [1]
       37 LENGTH                           R14 R0
       38 ADDK                             R13 R14 K8 [1]
       39 MOVE                             R14 R0
       40 CALL                             R9 5 0
       41 JUMP                             ; [+33]
       42 GETTABLEN                        R9 R8 4
       43 JUMPIFNOT                        R9 ; [+31]
       44 GETUPVAL                         R9 0
       45 MOVE                             R10 R0
       46 MOVE                             R11 R1
       47 MOVE                             R12 R2
       48 GETTABLEN                        R13 R8 4
       49 CALL                             R9 4 0
       50 JUMP                             ; [+24]
       51 GETIMPORT                        R9 K7 [table.move]
       53 MOVE                             R10 R8
       54 LOADN                            R11 1
       55 LENGTH                           R12 R8
       56 LENGTH                           R14 R0
       57 ADDK                             R13 R14 K8 [1]
       58 MOVE                             R14 R0
       59 CALL                             R9 5 0
       60 JUMP                             ; [+14]
       61 GETTABLE                         R9 R2 R8
       62 JUMPIFNOT                        R9 ; [+12]
       63 GETIMPORT                        R9 K7 [table.move]
       65 MOVE                             R10 R1
       66 GETTABLE                         R12 R2 R8
       67 GETTABLEN                        R11 R12 1
       68 GETTABLE                         R14 R2 R8
       69 GETTABLEN                        R13 R14 2
       70 SUBK                             R12 R13 K8 [1]
       71 LENGTH                           R14 R0
       72 ADDK                             R13 R14 K8 [1]
       73 MOVE                             R14 R0
       74 CALL                             R9 5 0
       75 FORGLOOP                         R4 2 [inext] ; [-71]
       77 LENGTH                           R4 R0
       78 SETTABLEKS                       R4 R0 K9 ["n"]
       80 RETURN                           R0 1

PROTO_22:
        0 JUMPIFEQKNIL                     R4 ; [+28]
        2 FASTCALL1                        TYPE R4 ; [+3]
        3 MOVE                             R7 R4
        4 GETIMPORT                        R6 K1 [type]
        6 CALL                             R6 1 1
        7 JUMPIFEQKS                       R6 K2 ["number"] ; [+21]
        9 FASTCALL1                        TYPE R4 ; [+3]
       10 MOVE                             R7 R4
       11 GETIMPORT                        R6 K1 [type]
       13 CALL                             R6 1 1
       14 JUMPIFEQKS                       R6 K3 ["string"] ; [+14]
       16 GETIMPORT                        R6 K5 [error]
       18 GETIMPORT                        R7 K7 [string.format]
       20 LOADK                            R8 K8 ["invalid argument #5 to 'sub' (string expected, got %s)"]
       21 FASTCALL1                        TYPEOF R4 ; [+3]
       22 MOVE                             R10 R4
       23 GETIMPORT                        R9 K10 [typeof]
       25 CALL                             R9 1 1
       26 CALL                             R7 2 1
       27 LOADN                            R8 3
       28 CALL                             R6 2 0
       29 DUPTABLE                         R6 K14 [{"l", "o", "u"}]
       30 LOADB                            R7 0
       31 SETTABLEKS                       R7 R6 K11 ["l"]
       33 LOADB                            R7 0
       34 SETTABLEKS                       R7 R6 K12 ["o"]
       36 LOADB                            R7 0
       37 SETTABLEKS                       R7 R6 K13 ["u"]
       39 GETIMPORT                        R7 K16 [string.gmatch]
       41 ORK                              R8 R4 K17 [""]
       42 GETIMPORT                        R9 K20 [utf8.charpattern]
       44 CALL                             R7 2 3
       45 FORGPREP                         R7
       46 GETTABLE                         R12 R6 R10
       47 JUMPIFEQKB                       R12 FALSE ; [+8]
       49 GETIMPORT                        R12 K5 [error]
       51 LOADK                            R14 K21 ["invalid regular expression substitution flag "]
       52 MOVE                             R15 R10
       53 CONCAT                           R13 R14 R15
       54 LOADN                            R14 3
       55 CALL                             R12 2 0
       56 LOADB                            R12 1
       57 SETTABLE                         R12 R6 R10
       58 FORGLOOP                         R7 1 ; [-13]
       60 FASTCALL1                        TYPE R1 ; [+3]
       61 MOVE                             R8 R1
       62 GETIMPORT                        R7 K1 [type]
       64 CALL                             R7 1 1
       65 JUMPIFNOTEQKS                    R7 K2 ["number"] ; [+5]
       67 MOVE                             R8 R1
       68 LOADK                            R9 K17 [""]
       69 CONCAT                           R1 R8 R9
       70 JUMP                             ; [+28]
       71 JUMPIFEQKS                       R7 K3 ["string"] ; [+27]
       73 JUMPIFEQKS                       R7 K22 ["function"] ; [+25]
       75 GETTABLEKS                       R8 R6 K12 ["o"]
       77 JUMPIFNOT                        R8 ; [+2]
       78 JUMPIFEQKS                       R7 K23 ["table"] ; [+20]
       80 GETIMPORT                        R8 K5 [error]
       82 GETIMPORT                        R9 K7 [string.format]
       84 LOADK                            R10 K24 ["invalid argument #2 to 'sub' (string/function%s expected, got %s)"]
       85 GETTABLEKS                       R12 R6 K12 ["o"]
       87 JUMPIFNOT                        R12 ; [+2]
       88 LOADK                            R11 K25 ["/table"]
       89 JUMP                             ; [+1]
       90 LOADK                            R11 K17 [""]
       91 FASTCALL1                        TYPEOF R1 ; [+3]
       92 MOVE                             R13 R1
       93 GETIMPORT                        R12 K10 [typeof]
       95 CALL                             R12 1 1
       96 CALL                             R9 3 1
       97 LOADN                            R10 3
       98 CALL                             R8 2 0
       99 FASTCALL1                        TONUMBER R3 ; [+3]
      100 MOVE                             R9 R3
      101 GETIMPORT                        R8 K27 [tonumber]
      103 CALL                             R8 1 1
      104 JUMPIFNOT                        R8 ; [+13]
      105 FASTCALL1                        TONUMBER R3 ; [+3]
      106 MOVE                             R9 R3
      107 GETIMPORT                        R8 K27 [tonumber]
      109 CALL                             R8 1 1
      110 MOVE                             R3 R8
      111 LOADN                            R8 255
      112 JUMPIFLE                         R3 R8 ; [+3]
      114 JUMPIFEQ                         R3 R3 ; [+20]
      116 LOADK                            R3 K28 [∞]
      117 JUMP                             ; [+17]
      118 JUMPIFEQKNIL                     R3 ; [+15]
      120 GETIMPORT                        R8 K5 [error]
      122 GETIMPORT                        R9 K7 [string.format]
      124 LOADK                            R10 K29 ["invalid argument #4 to 'sub' (number expected, got %s)"]
      125 FASTCALL1                        TYPEOF R3 ; [+3]
      126 MOVE                             R12 R3
      127 GETIMPORT                        R11 K10 [typeof]
      129 CALL                             R11 1 1
      130 CALL                             R9 2 1
      131 LOADN                            R10 3
      132 CALL                             R8 2 0
      133 JUMP                             ; [+1]
      134 LOADK                            R3 K28 [∞]
      135 LOADN                            R8 1
      136 JUMPIFNOTLT                      R3 R8 ; [+4]
      138 MOVE                             R8 R2
      139 LOADN                            R9 0
      140 RETURN                           R8 2
      141 LOADN                            R8 0
      142 JUMPIFNOTEQKS                    R7 K3 ["string"] ; [+560]
      144 GETUPVAL                         R9 0
      145 MOVE                             R10 R1
      146 CALL                             R9 1 1
      147 MOVE                             R1 R9
      148 GETTABLEKS                       R9 R6 K11 ["l"]
      150 JUMPIF                           R9 ; [+552]
      151 LOADN                            R9 0
      152 GETIMPORT                        R10 K31 [table.create]
      154 LOADN                            R11 3
      155 CALL                             R10 1 1
      156 GETTABLEKS                       R12 R0 K32 ["token"]
      158 GETTABLEKS                       R11 R12 K33 ["group_n"]
      160 NEWTABLE                         R12 0 0
      162 GETTABLEKS                       R13 R1 K34 ["n"]
      164 JUMPIFNOTLT                      R9 R13 ; [+509]
      166 MOVE                             R13 R9
      167 ADDK                             R13 R13 K35 [1]
      168 GETTABLE                         R14 R1 R13
      169 JUMPIFNOT                        R14 ; [+15]
      170 GETTABLE                         R14 R1 R13
      171 JUMPIFEQKN                       R14 K36 [36] ; [+13]
      173 GETTABLE                         R14 R1 R13
      174 JUMPIFEQKN                       R14 K37 [92] ; [+10]
      176 GETTABLE                         R14 R1 R13
      177 JUMPIFEQKN                       R14 K38 [58] ; [+4]
      179 GETTABLE                         R14 R1 R13
      180 JUMPIFNOTEQKN                    R14 K39 [125] ; [+3]
      182 GETTABLEN                        R14 R12 1
      183 JUMPIF                           R14 ; [+1]
      184 JUMPBACK                         ; [-18]
      185 SUB                              R15 R13 R9
      186 SUBK                             R14 R15 K35 [1]
      187 ADD                              R8 R8 R14
      188 SUB                              R14 R13 R9
      189 LOADN                            R15 1
      190 JUMPIFNOTLT                      R15 R14 ; [+18]
      192 MOVE                             R15 R10
      193 GETIMPORT                        R16 K41 [table.move]
      195 MOVE                             R17 R1
      196 ADDK                             R18 R9 K35 [1]
      197 SUBK                             R19 R13 K35 [1]
      198 LOADN                            R20 1
      199 GETIMPORT                        R21 K31 [table.create]
      201 SUB                              R23 R13 R9
      202 SUBK                             R22 R23 K35 [1]
      203 CALL                             R21 1 -1
      204 CALL                             R16 -1 -1
      205 FASTCALL                         TABLE_INSERT ; [+2]
      206 GETIMPORT                        R14 K43 [table.insert]
      208 CALL                             R14 -1 0
      209 GETTABLE                         R14 R1 R13
      210 JUMPIFNOTEQKN                    R14 K38 [58] ; [+32]
      212 GETTABLEN                        R14 R12 1
      213 GETTABLEN                        R15 R14 2
      214 JUMPIFNOT                        R15 ; [+5]
      215 GETIMPORT                        R15 K5 [error]
      217 LOADK                            R16 K44 ["malformed substitution pattern"]
      218 LOADN                            R17 3
      219 CALL                             R15 2 0
      220 GETIMPORT                        R15 K41 [table.move]
      222 MOVE                             R16 R10
      223 GETTABLEN                        R17 R14 3
      224 LENGTH                           R18 R10
      225 LOADN                            R19 1
      226 GETIMPORT                        R20 K31 [table.create]
      228 LENGTH                           R23 R10
      229 ADDK                             R22 R23 K35 [1]
      230 GETTABLEN                        R23 R14 3
      231 SUB                              R21 R22 R23
      232 CALL                             R20 1 -1
      233 CALL                             R15 -1 1
      234 SETTABLEN                        R15 R14 2
      235 LENGTH                           R17 R10
      236 GETTABLEN                        R15 R14 3
      237 LOADN                            R16 255
      238 FORNPREP                         R15
      239 LOADNIL                          R18
      240 SETTABLE                         R18 R10 R17
      241 FORNLOOP                         R15
      242 JUMP                             ; [+429]
      243 GETTABLE                         R14 R1 R13
      244 JUMPIFNOTEQKN                    R14 K39 [125] ; [+48]
      246 GETIMPORT                        R14 K46 [table.remove]
      248 MOVE                             R15 R12
      249 LOADN                            R16 1
      250 CALL                             R14 2 1
      251 GETIMPORT                        R15 K41 [table.move]
      253 MOVE                             R16 R10
      254 GETTABLEN                        R17 R14 3
      255 LENGTH                           R18 R10
      256 LOADN                            R19 1
      257 GETIMPORT                        R20 K31 [table.create]
      259 LENGTH                           R23 R10
      260 ADDK                             R22 R23 K35 [1]
      261 GETTABLEN                        R23 R14 3
      262 SUB                              R21 R22 R23
      263 CALL                             R20 1 -1
      264 CALL                             R15 -1 1
      265 LENGTH                           R18 R10
      266 GETTABLEN                        R16 R14 3
      267 LOADN                            R17 255
      268 FORNPREP                         R16
      269 LOADNIL                          R19
      270 SETTABLE                         R19 R10 R18
      271 FORNLOOP                         R16
      272 NEWTABLE                         R18 0 4
      274 LOADK                            R19 K47 ["condition"]
      275 GETTABLEN                        R20 R14 1
      276 LOADB                            R21 0
      277 GETTABLEN                        R22 R14 2
      278 JUMPIFEQKB                       R22 TRUE ; [+3]
      280 GETTABLEN                        R22 R14 2
      281 OR                               R21 R22 R15
      282 GETTABLEN                        R23 R14 2
      283 AND                              R22 R23 R15
      284 SETLIST                          R18 R19 4 [1]
      286 FASTCALL2                        TABLE_INSERT R10 R18 ; [+4]
      288 MOVE                             R17 R10
      289 GETIMPORT                        R16 K43 [table.insert]
      291 CALL                             R16 2 0
      292 JUMP                             ; [+379]
      293 GETTABLE                         R14 R1 R13
      294 JUMPIFNOT                        R14 ; [+377]
      295 ADDK                             R13 R13 K35 [1]
      296 GETTABLE                         R14 R1 R13
      297 JUMPIF                           R14 ; [+40]
      298 SUBK                             R16 R13 K35 [1]
      299 GETTABLE                         R15 R1 R16
      300 JUMPIFNOTEQKN                    R15 K37 [92] ; [+6]
      302 GETIMPORT                        R15 K5 [error]
      304 LOADK                            R16 K48 ["replacement string must not end with a trailing backslash"]
      305 LOADN                            R17 3
      306 CALL                             R15 2 0
      307 LENGTH                           R16 R10
      308 GETTABLE                         R15 R10 R16
      309 FASTCALL1                        TYPE R15 ; [+3]
      310 MOVE                             R17 R15
      311 GETIMPORT                        R16 K1 [type]
      313 CALL                             R16 1 1
      314 JUMPIFNOTEQKS                    R16 K23 ["table"] ; [+10]
      316 SUBK                             R19 R13 K35 [1]
      317 GETTABLE                         R18 R1 R19
      318 FASTCALL2                        TABLE_INSERT R15 R18 ; [+4]
      320 MOVE                             R17 R15
      321 GETIMPORT                        R16 K43 [table.insert]
      323 CALL                             R16 2 0
      324 JUMP                             ; [+347]
      325 NEWTABLE                         R18 0 1
      327 SUBK                             R20 R13 K35 [1]
      328 GETTABLE                         R19 R1 R20
      329 SETLIST                          R18 R19 1 [1]
      331 FASTCALL2                        TABLE_INSERT R10 R18 ; [+4]
      333 MOVE                             R17 R10
      334 GETIMPORT                        R16 K43 [table.insert]
      336 CALL                             R16 2 0
      337 JUMP                             ; [+334]
      338 JUMPIFNOTEQKN                    R14 K37 [92] ; [+36]
      340 SUBK                             R16 R13 K35 [1]
      341 GETTABLE                         R15 R1 R16
      342 JUMPIFNOTEQKN                    R15 K36 [36] ; [+32]
      344 LENGTH                           R16 R10
      345 GETTABLE                         R15 R10 R16
      346 FASTCALL1                        TYPE R15 ; [+3]
      347 MOVE                             R17 R15
      348 GETIMPORT                        R16 K1 [type]
      350 CALL                             R16 1 1
      351 JUMPIFNOTEQKS                    R16 K23 ["table"] ; [+9]
      353 FASTCALL2K                       TABLE_INSERT R15 K36 ; [+5]
      355 MOVE                             R17 R15
      356 LOADK                            R18 K36 [36]
      357 GETIMPORT                        R16 K43 [table.insert]
      359 CALL                             R16 2 0
      360 JUMP                             ; [+11]
      361 NEWTABLE                         R18 0 1
      363 LOADN                            R19 36
      364 SETLIST                          R18 R19 1 [1]
      366 FASTCALL2                        TABLE_INSERT R10 R18 ; [+4]
      368 MOVE                             R17 R10
      369 GETIMPORT                        R16 K43 [table.insert]
      371 CALL                             R16 2 0
      372 SUBK                             R13 R13 K35 [1]
      373 ADDK                             R8 R8 K35 [1]
      374 JUMP                             ; [+297]
      375 JUMPIFNOTEQKN                    R14 K49 [48] ; [+9]
      377 FASTCALL2K                       TABLE_INSERT R10 K50 ; [+5]
      379 MOVE                             R16 R10
      380 LOADK                            R17 K50 [0]
      381 GETIMPORT                        R15 K43 [table.insert]
      383 CALL                             R15 2 0
      384 JUMP                             ; [+287]
      385 LOADN                            R15 48
      386 JUMPIFNOTLT                      R15 R14 ; [+50]
      388 LOADN                            R15 57
      389 JUMPIFNOTLE                      R14 R15 ; [+47]
      391 MOVE                             R15 R13
      392 SUBK                             R16 R14 K49 [48]
      393 ADDK                             R18 R13 K35 [1]
      394 GETTABLE                         R17 R1 R18
      395 JUMPIFNOT                        R17 ; [+17]
      396 ADDK                             R18 R13 K35 [1]
      397 GETTABLE                         R17 R1 R18
      398 LOADN                            R18 48
      399 JUMPIFNOTLE                      R18 R17 ; [+13]
      401 ADDK                             R18 R13 K35 [1]
      402 GETTABLE                         R17 R1 R18
      403 LOADN                            R18 57
      404 JUMPIFNOTLE                      R17 R18 ; [+8]
      406 MOVE                             R17 R16
      407 ADDK                             R20 R13 K35 [1]
      408 GETTABLE                         R19 R1 R20
      409 SUBK                             R18 R19 K49 [48]
      410 CONCAT                           R16 R17 R18
      411 ADDK                             R13 R13 K35 [1]
      412 JUMPBACK                         ; [-20]
      413 FASTCALL1                        TONUMBER R16 ; [+3]
      414 MOVE                             R18 R16
      415 GETIMPORT                        R17 K27 [tonumber]
      417 CALL                             R17 1 1
      418 MOVE                             R16 R17
      419 GETTABLEKS                       R17 R6 K13 ["u"]
      421 JUMPIF                           R17 ; [+7]
      422 JUMPIFNOTLT                      R11 R16 ; [+6]
      424 GETIMPORT                        R17 K5 [error]
      426 LOADK                            R18 K51 ["reference to non-existent subpattern"]
      427 LOADN                            R19 3
      428 CALL                             R17 2 0
      429 FASTCALL2                        TABLE_INSERT R10 R16 ; [+5]
      431 MOVE                             R18 R10
      432 MOVE                             R19 R16
      433 GETIMPORT                        R17 K43 [table.insert]
      435 CALL                             R17 2 0
      436 JUMP                             ; [+235]
      437 JUMPIFNOTEQKN                    R14 K52 [123] ; [+154]
      439 SUBK                             R16 R13 K35 [1]
      440 GETTABLE                         R15 R1 R16
      441 JUMPIFNOTEQKN                    R15 K36 [36] ; [+150]
      443 ADDK                             R13 R13 K35 [1]
      444 MOVE                             R15 R13
      445 GETTABLE                         R16 R1 R13
      446 JUMPIFNOT                        R16 ; [+29]
      447 GETTABLE                         R16 R1 R13
      448 LOADN                            R17 48
      449 JUMPIFNOTLE                      R17 R16 ; [+5]
      451 GETTABLE                         R16 R1 R13
      452 LOADN                            R17 57
      453 JUMPIFLE                         R16 R17 ; [+20]
      455 GETTABLE                         R16 R1 R13
      456 LOADN                            R17 65
      457 JUMPIFNOTLE                      R17 R16 ; [+5]
      459 GETTABLE                         R16 R1 R13
      460 LOADN                            R17 90
      461 JUMPIFLE                         R16 R17 ; [+12]
      463 GETTABLE                         R16 R1 R13
      464 LOADN                            R17 97
      465 JUMPIFNOTLE                      R17 R16 ; [+5]
      467 GETTABLE                         R16 R1 R13
      468 LOADN                            R17 122
      469 JUMPIFLE                         R16 R17 ; [+4]
      471 GETTABLE                         R16 R1 R13
      472 JUMPIFNOTEQKN                    R16 K53 [95] ; [+3]
      474 ADDK                             R13 R13 K35 [1]
      475 JUMPBACK                         ; [-31]
      476 GETTABLE                         R16 R1 R13
      477 JUMPIFEQKN                       R16 K39 [125] ; [+12]
      479 GETTABLE                         R16 R1 R13
      480 JUMPIFNOTEQKN                    R16 K38 [58] ; [+105]
      482 ADDK                             R17 R13 K35 [1]
      483 GETTABLE                         R16 R1 R17
      484 JUMPIFEQKN                       R16 K54 [43] ; [+5]
      486 ADDK                             R17 R13 K35 [1]
      487 GETTABLE                         R16 R1 R17
      488 JUMPIFNOTEQKN                    R16 K55 [45] ; [+97]
      490 JUMPIFEQ                         R13 R15 ; [+95]
      492 GETTABLEKS                       R17 R1 K56 ["s"]
      494 MOVE                             R18 R13
      495 GETIMPORT                        R19 K58 [utf8.offset]
      497 MOVE                             R20 R17
      498 MOVE                             R21 R18
      499 CALL                             R19 2 1
      500 MOVE                             R18 R19
      501 GETIMPORT                        R21 K58 [utf8.offset]
      503 MOVE                             R22 R17
      504 MOVE                             R23 R15
      505 CALL                             R21 2 1
      506 MOVE                             R22 R18
      507 JUMPIFNOT                        R22 ; [+1]
      508 SUBK                             R22 R18 K35 [1]
      509 FASTCALL3                        STRING_SUB R17 R21 R22
      511 MOVE                             R20 R17
      512 GETIMPORT                        R19 K60 [string.sub]
      514 CALL                             R19 3 1
      515 MOVE                             R16 R19
      516 GETTABLE                         R17 R1 R15
      517 LOADN                            R18 48
      518 JUMPIFNOTLE                      R18 R17 ; [+22]
      520 GETTABLE                         R17 R1 R15
      521 LOADN                            R18 57
      522 JUMPIFNOTLE                      R17 R18 ; [+18]
      524 FASTCALL1                        TONUMBER R16 ; [+3]
      525 MOVE                             R18 R16
      526 GETIMPORT                        R17 K27 [tonumber]
      528 CALL                             R17 1 1
      529 MOVE                             R16 R17
      530 GETTABLEKS                       R17 R6 K13 ["u"]
      532 JUMPIF                           R17 ; [+22]
      533 JUMPIFNOTLT                      R11 R16 ; [+21]
      535 GETIMPORT                        R17 K5 [error]
      537 LOADK                            R18 K51 ["reference to non-existent subpattern"]
      538 LOADN                            R19 3
      539 CALL                             R17 2 0
      540 JUMP                             ; [+14]
      541 GETTABLEKS                       R17 R0 K61 ["group_id"]
      543 GETTABLE                         R16 R17 R16
      544 GETTABLEKS                       R17 R6 K13 ["u"]
      546 JUMPIF                           R17 ; [+8]
      547 JUMPIFNOT                        R16 ; [+2]
      548 JUMPIFNOTLT                      R11 R16 ; [+6]
      550 GETIMPORT                        R17 K5 [error]
      552 LOADK                            R18 K51 ["reference to non-existent subpattern"]
      553 LOADN                            R19 3
      554 CALL                             R17 2 0
      555 GETTABLE                         R17 R1 R13
      556 JUMPIFNOTEQKN                    R17 K38 [58] ; [+21]
      558 ADDK                             R13 R13 K35 [1]
      559 NEWTABLE                         R19 0 3
      561 MOVE                             R20 R16
      562 GETTABLE                         R22 R1 R13
      563 JUMPIFEQKN                       R22 K55 [45] ; [+2]
      565 LOADB                            R21 0 +1
      566 LOADB                            R21 1
      567 LENGTH                           R23 R10
      568 ADDK                             R22 R23 K35 [1]
      569 SETLIST                          R19 R20 3 [1]
      571 FASTCALL2                        TABLE_INSERT R12 R19 ; [+4]
      573 MOVE                             R18 R12
      574 GETIMPORT                        R17 K43 [table.insert]
      576 CALL                             R17 2 0
      577 JUMP                             ; [+94]
      578 FASTCALL2                        TABLE_INSERT R10 R16 ; [+5]
      580 MOVE                             R18 R10
      581 MOVE                             R19 R16
      582 GETIMPORT                        R17 K43 [table.insert]
      584 CALL                             R17 2 0
      585 JUMP                             ; [+86]
      586 GETIMPORT                        R16 K5 [error]
      588 LOADK                            R17 K44 ["malformed substitution pattern"]
      589 LOADN                            R18 3
      590 CALL                             R16 2 0
      591 JUMP                             ; [+80]
      592 LOADNIL                          R15
      593 SUBK                             R17 R13 K35 [1]
      594 GETTABLE                         R16 R1 R17
      595 JUMPIFNOTEQKN                    R16 K36 [36] ; [+32]
      597 JUMPIFEQKN                       R14 K36 [36] ; [+41]
      599 LENGTH                           R17 R10
      600 GETTABLE                         R16 R10 R17
      601 FASTCALL1                        TYPE R16 ; [+3]
      602 MOVE                             R18 R16
      603 GETIMPORT                        R17 K1 [type]
      605 CALL                             R17 1 1
      606 JUMPIFNOTEQKS                    R17 K23 ["table"] ; [+9]
      608 FASTCALL2K                       TABLE_INSERT R16 K36 ; [+5]
      610 MOVE                             R18 R16
      611 LOADK                            R19 K36 [36]
      612 GETIMPORT                        R17 K43 [table.insert]
      614 CALL                             R17 2 0
      615 JUMP                             ; [+23]
      616 NEWTABLE                         R19 0 1
      618 LOADN                            R20 36
      619 SETLIST                          R19 R20 1 [1]
      621 FASTCALL2                        TABLE_INSERT R10 R19 ; [+4]
      623 MOVE                             R18 R10
      624 GETIMPORT                        R17 K43 [table.insert]
      626 CALL                             R17 2 0
      627 JUMP                             ; [+11]
      628 GETUPVAL                         R16 1
      629 GETTABLE                         R17 R1 R13
      630 GETTABLE                         R15 R16 R17
      631 FASTCALL1                        TYPE R15 ; [+3]
      632 MOVE                             R17 R15
      633 GETIMPORT                        R16 K1 [type]
      635 CALL                             R16 1 1
      636 JUMPIFEQKS                       R16 K2 ["number"] ; [+2]
      638 LOADNIL                          R15
      639 LENGTH                           R17 R10
      640 GETTABLE                         R16 R10 R17
      641 FASTCALL1                        TYPE R16 ; [+3]
      642 MOVE                             R18 R16
      643 GETIMPORT                        R17 K1 [type]
      645 CALL                             R17 1 1
      646 JUMPIFNOTEQKS                    R17 K23 ["table"] ; [+11]
      648 MOVE                             R19 R15
      649 JUMPIF                           R19 ; [+1]
      650 GETTABLE                         R19 R1 R13
      651 FASTCALL2                        TABLE_INSERT R16 R19 ; [+4]
      653 MOVE                             R18 R16
      654 GETIMPORT                        R17 K43 [table.insert]
      656 CALL                             R17 2 0
      657 JUMP                             ; [+13]
      658 NEWTABLE                         R19 0 1
      660 MOVE                             R20 R15
      661 JUMPIF                           R20 ; [+1]
      662 GETTABLE                         R20 R1 R13
      663 SETLIST                          R19 R20 1 [1]
      665 FASTCALL2                        TABLE_INSERT R10 R19 ; [+4]
      667 MOVE                             R18 R10
      668 GETIMPORT                        R17 K43 [table.insert]
      670 CALL                             R17 2 0
      671 ADDK                             R8 R8 K35 [1]
      672 MOVE                             R9 R13
      673 JUMPBACK                         ; [-512]
      674 GETTABLEN                        R13 R12 1
      675 JUMPIFNOT                        R13 ; [+5]
      676 GETIMPORT                        R13 K5 [error]
      678 LOADK                            R14 K44 ["malformed substitution pattern"]
      679 LOADN                            R15 3
      680 CALL                             R13 2 0
      681 GETTABLEN                        R13 R10 2
      682 JUMPIF                           R13 ; [+18]
      683 GETTABLEN                        R14 R10 1
      684 FASTCALL1                        TYPE R14 ; [+2]
      685 GETIMPORT                        R13 K1 [type]
      687 CALL                             R13 1 1
      688 JUMPIFNOTEQKS                    R13 K23 ["table"] ; [+12]
      690 GETTABLEN                        R14 R10 1
      691 GETTABLEN                        R13 R14 1
      692 JUMPIFEQKS                       R13 K47 ["condition"] ; [+8]
      694 GETTABLEN                        R13 R10 1
      695 GETTABLEN                        R15 R10 1
      696 LENGTH                           R14 R15
      697 SETTABLEKS                       R14 R1 K34 ["n"]
      699 MOVE                             R1 R13
      700 JUMP                             ; [+2]
      701 MOVE                             R1 R10
      702 LOADK                            R7 K62 ["subst_string"]
      703 GETUPVAL                         R9 0
      704 MOVE                             R10 R2
      705 CALL                             R9 1 1
      706 MOVE                             R2 R9
      707 LOADN                            R9 0
      708 LOADN                            R10 1
      709 LOADN                            R11 0
      710 GETTABLEKS                       R14 R2 K34 ["n"]
      712 ADD                              R13 R14 R9
      713 ADDK                             R12 R13 K35 [1]
      714 JUMPIFNOTLE                      R10 R12 ; [+245]
      716 GETUPVAL                         R12 2
      717 GETTABLEKS                       R13 R0 K32 ["token"]
      719 MOVE                             R14 R2
      720 MOVE                             R15 R10
      721 GETTABLEKS                       R16 R0 K63 ["flags"]
      723 GETTABLEKS                       R17 R0 K64 ["verb_flags"]
      725 LOADB                            R18 0
      726 CALL                             R12 6 1
      727 JUMPIFNOT                        R12 ; [+232]
      728 LOADNIL                          R13
      729 JUMPIFNOTEQKS                    R7 K3 ["string"] ; [+3]
      731 MOVE                             R13 R1
      732 JUMP                             ; [+142]
      733 JUMPIFNOTEQKS                    R7 K62 ["subst_string"] ; [+12]
      735 GETUPVAL                         R14 3
      736 GETIMPORT                        R15 K31 [table.create]
      738 MOVE                             R16 R8
      739 CALL                             R15 1 1
      740 MOVE                             R16 R2
      741 MOVE                             R17 R12
      742 MOVE                             R18 R1
      743 CALL                             R14 4 1
      744 MOVE                             R13 R14
      745 JUMP                             ; [+129]
      746 LOADNIL                          R14
      747 LOADNIL                          R15
      748 JUMPIFNOTEQKS                    R7 K23 ["table"] ; [+32]
      750 GETTABLEKS                       R16 R2 K56 ["s"]
      752 LOADN                            R19 0
      753 GETTABLE                         R18 R12 R19
      754 GETTABLEN                        R17 R18 1
      755 LOADN                            R20 0
      756 GETTABLE                         R19 R12 R20
      757 GETTABLEN                        R18 R19 2
      758 GETIMPORT                        R19 K58 [utf8.offset]
      760 MOVE                             R20 R16
      761 MOVE                             R21 R18
      762 CALL                             R19 2 1
      763 MOVE                             R18 R19
      764 GETIMPORT                        R21 K58 [utf8.offset]
      766 MOVE                             R22 R16
      767 MOVE                             R23 R17
      768 CALL                             R21 2 1
      769 MOVE                             R22 R18
      770 JUMPIFNOT                        R22 ; [+1]
      771 SUBK                             R22 R18 K35 [1]
      772 FASTCALL3                        STRING_SUB R16 R21 R22
      774 MOVE                             R20 R16
      775 GETIMPORT                        R19 K60 [string.sub]
      777 CALL                             R19 3 1
      778 MOVE                             R14 R19
      779 GETTABLE                         R15 R1 R14
      780 JUMP                             ; [+13]
      781 GETUPVAL                         R16 4
      782 MOVE                             R17 R12
      783 GETTABLEKS                       R18 R0 K61 ["group_id"]
      785 MOVE                             R19 R5
      786 GETTABLEKS                       R20 R2 K56 ["s"]
      788 CALL                             R16 4 1
      789 MOVE                             R14 R16
      790 MOVE                             R16 R1
      791 MOVE                             R17 R14
      792 CALL                             R16 1 1
      793 MOVE                             R15 R16
      794 JUMPIFEQ                         R15 R14 ; [+5]
      796 GETTABLEKS                       R16 R6 K12 ["o"]
      798 JUMPIFNOT                        R16 ; [+28]
      799 JUMPIF                           R15 ; [+27]
      800 LOADN                            R19 0
      801 GETTABLE                         R18 R12 R19
      802 GETTABLEN                        R17 R18 2
      803 LOADN                            R20 0
      804 GETTABLE                         R19 R12 R20
      805 GETTABLEN                        R18 R19 1
      806 SUB                              R16 R17 R18
      807 GETIMPORT                        R17 K41 [table.move]
      809 MOVE                             R18 R2
      810 LOADN                            R21 0
      811 GETTABLE                         R20 R12 R21
      812 GETTABLEN                        R19 R20 1
      813 LOADN                            R23 0
      814 GETTABLE                         R22 R12 R23
      815 GETTABLEN                        R21 R22 2
      816 SUBK                             R20 R21 K35 [1]
      817 LOADN                            R21 1
      818 GETIMPORT                        R22 K31 [table.create]
      820 MOVE                             R23 R16
      821 CALL                             R22 1 -1
      822 CALL                             R17 -1 1
      823 MOVE                             R13 R17
      824 SETTABLEKS                       R16 R13 K34 ["n"]
      826 JUMP                             ; [+48]
      827 FASTCALL1                        TYPE R15 ; [+3]
      828 MOVE                             R17 R15
      829 GETIMPORT                        R16 K1 [type]
      831 CALL                             R16 1 1
      832 JUMPIFNOTEQKS                    R16 K3 ["string"] ; [+6]
      834 GETUPVAL                         R16 0
      835 MOVE                             R17 R15
      836 CALL                             R16 1 1
      837 MOVE                             R13 R16
      838 JUMP                             ; [+36]
      839 FASTCALL1                        TYPE R15 ; [+3]
      840 MOVE                             R17 R15
      841 GETIMPORT                        R16 K1 [type]
      843 CALL                             R16 1 1
      844 JUMPIFNOTEQKS                    R16 K2 ["number"] ; [+8]
      846 GETUPVAL                         R16 0
      847 MOVE                             R18 R15
      848 LOADK                            R19 K17 [""]
      849 CONCAT                           R17 R18 R19
      850 CALL                             R16 1 1
      851 MOVE                             R13 R16
      852 JUMP                             ; [+22]
      853 GETTABLEKS                       R16 R6 K12 ["o"]
      855 JUMPIFNOT                        R16 ; [+14]
      856 GETIMPORT                        R16 K5 [error]
      858 GETIMPORT                        R17 K7 [string.format]
      860 LOADK                            R18 K65 ["invalid replacement value (a %s)"]
      861 FASTCALL1                        TYPE R15 ; [+3]
      862 MOVE                             R20 R15
      863 GETIMPORT                        R19 K1 [type]
      865 CALL                             R19 1 1
      866 CALL                             R17 2 1
      867 LOADN                            R18 3
      868 CALL                             R16 2 0
      869 JUMP                             ; [+5]
      870 DUPTABLE                         R16 K66 [{"n"}]
      871 LOADN                            R17 0
      872 SETTABLEKS                       R17 R16 K34 ["n"]
      874 MOVE                             R13 R16
      875 LOADN                            R17 0
      876 GETTABLE                         R16 R12 R17
      877 GETTABLEN                        R15 R16 2
      878 LOADN                            R18 0
      879 GETTABLE                         R17 R12 R18
      880 GETTABLEN                        R16 R17 1
      881 SUB                              R14 R15 R16
      882 GETTABLEKS                       R16 R13 K34 ["n"]
      884 FASTCALL2                        MATH_MIN R16 R14 ; [+4]
      886 MOVE                             R17 R14
      887 GETIMPORT                        R15 K69 [math.min]
      889 CALL                             R15 2 1
      890 LOADN                            R18 0
      891 SUBK                             R16 R15 K35 [1]
      892 LOADN                            R17 1
      893 FORNPREP                         R16
      894 LOADN                            R22 0
      895 GETTABLE                         R21 R12 R22
      896 GETTABLEN                        R20 R21 1
      897 ADD                              R19 R20 R18
      898 ADDK                             R21 R18 K35 [1]
      899 GETTABLE                         R20 R13 R21
      900 SETTABLE                         R20 R2 R19
      901 FORNLOOP                         R16
      902 LOADN                            R19 0
      903 GETTABLE                         R18 R12 R19
      904 GETTABLEN                        R17 R18 1
      905 ADD                              R16 R17 R15
      906 LOADN                            R18 0
      907 GETTABLE                         R17 R12 R18
      908 GETTABLEN                        R10 R17 2
      909 GETTABLEKS                       R17 R13 K34 ["n"]
      911 JUMPIFNOTLT                      R17 R14 ; [+16]
      913 LOADN                            R19 1
      914 GETTABLEKS                       R20 R13 K34 ["n"]
      916 SUB                              R17 R14 R20
      917 LOADN                            R18 1
      918 FORNPREP                         R17
      919 GETIMPORT                        R20 K46 [table.remove]
      921 MOVE                             R21 R2
      922 MOVE                             R22 R16
      923 CALL                             R20 2 0
      924 SUBK                             R9 R9 K35 [1]
      925 SUBK                             R10 R10 K35 [1]
      926 FORNLOOP                         R17
      927 JUMP                             ; [+23]
      928 GETTABLEKS                       R17 R13 K34 ["n"]
      930 JUMPIFNOTLT                      R14 R17 ; [+20]
      932 LOADN                            R19 1
      933 GETTABLEKS                       R20 R13 K34 ["n"]
      935 SUB                              R17 R20 R14
      936 LOADN                            R18 1
      937 FORNPREP                         R17
      938 ADD                              R23 R16 R19
      939 SUBK                             R22 R23 K35 [1]
      940 ADD                              R24 R15 R19
      941 GETTABLE                         R23 R13 R24
      942 FASTCALL3                        TABLE_INSERT R2 R22 R23
      944 MOVE                             R21 R2
      945 GETIMPORT                        R20 K43 [table.insert]
      947 CALL                             R20 3 0
      948 ADDK                             R9 R9 K35 [1]
      949 ADDK                             R10 R10 K35 [1]
      950 FORNLOOP                         R17
      951 LOADN                            R17 0
      952 JUMPIFNOTLE                      R14 R17 ; [+2]
      954 ADDK                             R10 R10 K35 [1]
      955 ADDK                             R11 R11 K35 [1]
      956 ADDK                             R17 R11 K35 [1]
      957 JUMPIFLT                         R3 R17 ; [+2]
      959 JUMPBACK                         ; [-250]
      960 GETUPVAL                         R12 5
      961 MOVE                             R13 R2
      962 CALL                             R12 1 1
      963 MOVE                             R13 R11
      964 RETURN                           R12 2

PROTO_23:
        0 FASTCALL1                        TONUMBER R2 ; [+3]
        1 MOVE                             R4 R2
        2 GETIMPORT                        R3 K1 [tonumber]
        4 CALL                             R3 1 1
        5 JUMPIFNOT                        R3 ; [+13]
        6 FASTCALL1                        TONUMBER R2 ; [+3]
        7 MOVE                             R4 R2
        8 GETIMPORT                        R3 K1 [tonumber]
       10 CALL                             R3 1 1
       11 MOVE                             R2 R3
       12 LOADN                            R3 255
       13 JUMPIFLE                         R2 R3 ; [+3]
       15 JUMPIFEQ                         R2 R2 ; [+20]
       17 LOADK                            R2 K2 [∞]
       18 JUMP                             ; [+17]
       19 JUMPIFEQKNIL                     R2 ; [+15]
       21 GETIMPORT                        R3 K4 [error]
       23 GETIMPORT                        R4 K7 [string.format]
       25 LOADK                            R5 K8 ["invalid argument #3 to 'split' (number expected, got %s)"]
       26 FASTCALL1                        TYPEOF R2 ; [+3]
       27 MOVE                             R7 R2
       28 GETIMPORT                        R6 K10 [typeof]
       30 CALL                             R6 1 1
       31 CALL                             R4 2 1
       32 LOADN                            R5 3
       33 CALL                             R3 2 0
       34 JUMP                             ; [+1]
       35 LOADK                            R2 K2 [∞]
       36 GETUPVAL                         R3 0
       37 MOVE                             R4 R1
       38 CALL                             R3 1 1
       39 MOVE                             R1 R3
       40 LOADN                            R3 1
       41 LOADN                            R4 0
       42 NEWTABLE                         R5 0 0
       44 LOADN                            R6 0
       45 GETTABLEKS                       R8 R1 K12 ["n"]
       47 ADDK                             R7 R8 K11 [1]
       48 JUMPIFNOTLE                      R3 R7 ; [+67]
       50 ADDK                             R4 R4 K11 [1]
       51 LOADB                            R7 0
       52 JUMPIFNOTLE                      R4 R2 ; [+12]
       54 GETUPVAL                         R7 1
       55 GETTABLEKS                       R8 R0 K13 ["token"]
       57 MOVE                             R9 R1
       58 MOVE                             R10 R3
       59 GETTABLEKS                       R11 R0 K14 ["flags"]
       61 GETTABLEKS                       R12 R0 K15 ["verb_flags"]
       63 LOADB                            R13 0
       64 CALL                             R7 6 1
       65 JUMPIFNOT                        R7 ; [+50]
       66 GETTABLEKS                       R11 R1 K16 ["s"]
       68 SUB                              R12 R3 R6
       69 LOADN                            R15 0
       70 GETTABLE                         R14 R7 R15
       71 GETTABLEN                        R13 R14 1
       72 GETIMPORT                        R14 K19 [utf8.offset]
       74 MOVE                             R15 R11
       75 MOVE                             R16 R13
       76 CALL                             R14 2 1
       77 MOVE                             R13 R14
       78 GETIMPORT                        R16 K19 [utf8.offset]
       80 MOVE                             R17 R11
       81 MOVE                             R18 R12
       82 CALL                             R16 2 1
       83 MOVE                             R17 R13
       84 JUMPIFNOT                        R17 ; [+1]
       85 SUBK                             R17 R13 K11 [1]
       86 FASTCALL3                        STRING_SUB R11 R16 R17
       88 MOVE                             R15 R11
       89 GETIMPORT                        R14 K21 [string.sub]
       91 CALL                             R14 3 1
       92 MOVE                             R10 R14
       93 FASTCALL2                        TABLE_INSERT R5 R10 ; [+4]
       95 MOVE                             R9 R5
       96 GETIMPORT                        R8 K24 [table.insert]
       98 CALL                             R8 2 0
       99 LOADN                            R11 0
      100 GETTABLE                         R10 R7 R11
      101 GETTABLEN                        R9 R10 1
      102 LOADN                            R12 0
      103 GETTABLE                         R11 R7 R12
      104 GETTABLEN                        R10 R11 2
      105 JUMPIFNOTLE                      R10 R9 ; [+3]
      107 LOADN                            R8 1
      108 JUMP                             ; [+1]
      109 LOADN                            R8 0
      110 MOVE                             R6 R8
      111 LOADN                            R10 0
      112 GETTABLE                         R9 R7 R10
      113 GETTABLEN                        R8 R9 2
      114 ADD                              R3 R8 R6
      115 JUMPBACK                         ; [-71]
      116 GETTABLEKS                       R10 R1 K16 ["s"]
      118 GETIMPORT                        R11 K19 [utf8.offset]
      120 GETTABLEKS                       R12 R1 K16 ["s"]
      122 SUB                              R13 R3 R6
      123 CALL                             R11 2 -1
      124 FASTCALL                         STRING_SUB ; [+2]
      125 GETIMPORT                        R9 K21 [string.sub]
      127 CALL                             R9 -1 1
      128 FASTCALL2                        TABLE_INSERT R5 R9 ; [+4]
      130 MOVE                             R8 R5
      131 GETIMPORT                        R7 K24 [table.insert]
      133 CALL                             R7 2 0
      134 RETURN                           R5 1

PROTO_24:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 JUMPIF                           R2 ; [+5]
        3 GETUPVAL                         R5 1
        4 GETTABLE                         R4 R5 R0
        5 GETTABLEKS                       R3 R4 K0 ["flags"]
        7 GETTABLE                         R2 R3 R1
        8 RETURN                           R2 1

PROTO_25:
        0 GETUPVAL                         R5 0
        1 GETTABLE                         R4 R5 R0
        2 GETTABLEKS                       R2 R4 K0 ["pattern_repr"]
        4 GETUPVAL                         R5 0
        5 GETTABLE                         R4 R5 R0
        6 GETTABLEKS                       R3 R4 K1 ["flag_repr"]
        8 CONCAT                           R1 R2 R3
        9 RETURN                           R1 1

PROTO_26:
        0 GETTABLEKS                       R2 R1 K0 ["unicode"]
        2 JUMPIFNOT                        R2 ; [+6]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["unicodeData"]
        6 JUMPIF                           R2 ; [+2]
        7 LOADK                            R2 K2 ["options.unicodeData cannot be turned off while having unicode flag"]
        8 RETURN                           R2 1
        9 LOADN                            R2 1
       10 GETTABLEKS                       R3 R0 K3 ["n"]
       12 LOADN                            R4 0
       13 NEWTABLE                         R5 0 0
       15 NEWTABLE                         R6 0 0
       17 DUPTABLE                         R7 K7 [{"newline", "newline_seq", "not_empty"}]
       18 LOADN                            R8 1
       19 SETTABLEKS                       R8 R7 K4 ["newline"]
       21 LOADN                            R8 1
       22 SETTABLEKS                       R8 R7 K5 ["newline_seq"]
       24 LOADN                            R8 0
       25 SETTABLEKS                       R8 R7 K6 ["not_empty"]
       27 JUMPIFNOTLE                      R2 R3 ; [+3111]
       29 GETTABLE                         R8 R0 R2
       30 JUMPIFNOTEQKN                    R8 K8 [40] ; [+573]
       32 LOADNIL                          R9
       33 ADDK                             R11 R2 K9 [1]
       34 GETTABLE                         R10 R0 R11
       35 JUMPIFNOTEQKN                    R10 K10 [42] ; [+174]
       37 ADDK                             R2 R2 K11 [2]
       38 MOVE                             R10 R2
       39 GETTABLE                         R11 R0 R2
       40 JUMPIFNOT                        R11 ; [+32]
       41 GETTABLE                         R11 R0 R2
       42 LOADN                            R12 48
       43 JUMPIFNOTLE                      R12 R11 ; [+5]
       45 GETTABLE                         R11 R0 R2
       46 LOADN                            R12 57
       47 JUMPIFLE                         R11 R12 ; [+23]
       49 GETTABLE                         R11 R0 R2
       50 LOADN                            R12 65
       51 JUMPIFNOTLE                      R12 R11 ; [+5]
       53 GETTABLE                         R11 R0 R2
       54 LOADN                            R12 90
       55 JUMPIFLE                         R11 R12 ; [+15]
       57 GETTABLE                         R11 R0 R2
       58 LOADN                            R12 97
       59 JUMPIFNOTLE                      R12 R11 ; [+5]
       61 GETTABLE                         R11 R0 R2
       62 LOADN                            R12 122
       63 JUMPIFLE                         R11 R12 ; [+7]
       65 GETTABLE                         R11 R0 R2
       66 JUMPIFEQKN                       R11 K12 [95] ; [+4]
       68 GETTABLE                         R11 R0 R2
       69 JUMPIFNOTEQKN                    R11 K13 [58] ; [+3]
       71 ADDK                             R2 R2 K9 [1]
       72 JUMPBACK                         ; [-34]
       73 GETTABLE                         R11 R0 R2
       74 JUMPIFEQKN                       R11 K14 [41] ; [+7]
       76 SUBK                             R12 R2 K9 [1]
       77 GETTABLE                         R11 R0 R12
       78 JUMPIFEQKN                       R11 K13 [58] ; [+3]
       80 LOADK                            R11 K15 ["quantifier doesn't follow a repeatable pattern"]
       81 RETURN                           R11 1
       82 GETTABLEKS                       R12 R0 K16 ["s"]
       84 MOVE                             R13 R2
       85 GETIMPORT                        R14 K19 [utf8.offset]
       87 MOVE                             R15 R12
       88 MOVE                             R16 R13
       89 CALL                             R14 2 1
       90 MOVE                             R13 R14
       91 GETIMPORT                        R16 K19 [utf8.offset]
       93 MOVE                             R17 R12
       94 MOVE                             R18 R10
       95 CALL                             R16 2 1
       96 MOVE                             R17 R13
       97 JUMPIFNOT                        R17 ; [+1]
       98 SUBK                             R17 R13 K9 [1]
       99 FASTCALL3                        STRING_SUB R12 R16 R17
      101 MOVE                             R15 R12
      102 GETIMPORT                        R14 K22 [string.sub]
      104 CALL                             R14 3 1
      105 MOVE                             R11 R14
      106 JUMPIFEQKS                       R11 K23 ["positive_lookahead:"] ; [+12]
      108 JUMPIFEQKS                       R11 K24 ["negative_lookhead:"] ; [+10]
      110 JUMPIFEQKS                       R11 K25 ["positive_lookbehind:"] ; [+8]
      112 JUMPIFEQKS                       R11 K26 ["negative_lookbehind:"] ; [+6]
      114 LOADK                            R14 K27 ["^[pn]l[ab]:$"]
      115 NAMECALL                         R12 R11 K28 ["find"]
      117 CALL                             R12 2 1
      118 JUMPIFNOT                        R12 ; [+24]
      119 NEWTABLE                         R12 0 5
      121 LOADN                            R13 40
      122 LOADNIL                          R14
      123 LOADNIL                          R15
      124 LOADK                            R19 K29 ["^n"]
      125 NAMECALL                         R17 R11 K28 ["find"]
      127 CALL                             R17 2 1
      128 JUMPIFNOT                        R17 ; [+2]
      129 LOADN                            R16 33
      130 JUMP                             ; [+1]
      131 LOADN                            R16 61
      132 LOADK                            R20 K30 ["b"]
      133 LOADN                            R21 3
      134 LOADB                            R22 1
      135 NAMECALL                         R18 R11 K28 ["find"]
      137 CALL                             R18 4 1
      138 ANDK                             R17 R18 K9 [1]
      139 SETLIST                          R12 R13 5 [1]
      141 MOVE                             R9 R12
      142 JUMP                             ; [+452]
      143 JUMPIFNOTEQKS                    R11 K31 ["atomic:"] ; [+12]
      145 NEWTABLE                         R12 0 5
      147 LOADN                            R13 40
      148 LOADNIL                          R14
      149 LOADNIL                          R15
      150 LOADN                            R16 62
      151 LOADNIL                          R17
      152 SETLIST                          R12 R13 5 [1]
      154 MOVE                             R9 R12
      155 JUMP                             ; [+439]
      156 JUMPIFEQKS                       R11 K32 ["ACCEPT"] ; [+9]
      158 JUMPIFEQKS                       R11 K33 ["FAIL"] ; [+7]
      160 JUMPIFEQKS                       R11 K34 ["F"] ; [+5]
      162 JUMPIFEQKS                       R11 K35 ["PRUNE"] ; [+3]
      164 JUMPIFNOTEQKS                    R11 K36 ["SKIP"] ; [+8]
      166 JUMPIFNOTEQKS                    R11 K34 ["F"] ; [+3]
      168 LOADK                            R12 K33 ["FAIL"]
      169 JUMP                             ; [+1]
      170 MOVE                             R12 R11
      171 MOVE                             R9 R12
      172 JUMP                             ; [+422]
      173 GETUPVAL                         R13 1
      174 GETTABLE                         R12 R13 R11
      175 JUMPIFNOT                        R12 ; [+3]
      176 SETTABLEKS                       R11 R7 K4 ["newline"]
      178 JUMP                             ; [+26]
      179 JUMPIFEQKS                       R11 K37 ["BSR_ANYCRLF"] ; [+3]
      181 JUMPIFNOTEQKS                    R11 K38 ["BSR_UNICODE"] ; [+9]
      183 JUMPIFNOTEQKS                    R11 K38 ["BSR_UNICODE"] ; [+3]
      185 LOADN                            R12 1
      186 JUMP                             ; [+1]
      187 LOADN                            R12 0
      188 SETTABLEKS                       R12 R7 K5 ["newline_seq"]
      190 JUMP                             ; [+14]
      191 JUMPIFEQKS                       R11 K39 ["NOTEMPTY"] ; [+3]
      193 JUMPIFNOTEQKS                    R11 K40 ["NOTEMPTY_ATSTART"] ; [+9]
      195 JUMPIFNOTEQKS                    R11 K39 ["NOTEMPTY"] ; [+3]
      197 LOADN                            R12 1
      198 JUMP                             ; [+1]
      199 LOADN                            R12 2
      200 SETTABLEKS                       R12 R7 K6 ["not_empty"]
      202 JUMP                             ; [+2]
      203 LOADK                            R12 K41 ["unknown or malformed verb"]
      204 RETURN                           R12 1
      205 GETTABLEN                        R12 R5 1
      206 JUMPIFNOT                        R12 ; [+388]
      207 LOADK                            R12 K42 ["this verb must be placed at the beginning of the regex"]
      208 RETURN                           R12 1
      209 JUMP                             ; [+385]
      210 ADDK                             R11 R2 K9 [1]
      211 GETTABLE                         R10 R0 R11
      212 JUMPIFNOTEQKN                    R10 K43 [63] ; [+372]
      214 ADDK                             R2 R2 K11 [2]
      215 GETTABLE                         R10 R0 R2
      216 JUMPIFNOTEQKN                    R10 K44 [35] ; [+13]
      218 GETIMPORT                        R10 K46 [table.find]
      220 MOVE                             R11 R0
      221 LOADN                            R12 41
      222 MOVE                             R13 R2
      223 CALL                             R10 3 1
      224 MOVE                             R2 R10
      225 JUMPIF                           R2 ; [+2]
      226 LOADK                            R10 K47 ["unterminated parenthetical"]
      227 RETURN                           R10 1
      228 ADDK                             R2 R2 K9 [1]
      229 JUMP                             ; [+2908]
      230 GETTABLE                         R10 R0 R2
      231 JUMPIF                           R10 ; [+2]
      232 LOADK                            R10 K47 ["unterminated parenthetical"]
      233 RETURN                           R10 1
      234 NEWTABLE                         R10 0 5
      236 LOADN                            R11 40
      237 LOADNIL                          R12
      238 LOADNIL                          R13
      239 GETTABLE                         R14 R0 R2
      240 LOADNIL                          R15
      241 SETLIST                          R10 R11 5 [1]
      243 MOVE                             R9 R10
      244 GETTABLE                         R10 R0 R2
      245 JUMPIFNOTEQKN                    R10 K48 [48] ; [+14]
      247 ADDK                             R11 R2 K9 [1]
      248 GETTABLE                         R10 R0 R11
      249 JUMPIFNOTEQKN                    R10 K14 [41] ; [+10]
      251 LOADK                            R10 K49 ["recurmatch"]
      252 LOADN                            R11 0
      253 LOADN                            R12 0
      254 LOADNIL                          R13
      255 SETTABLEN                        R10 R9 1
      256 SETTABLEN                        R11 R9 2
      257 SETTABLEN                        R12 R9 3
      258 SETTABLEN                        R13 R9 5
      259 JUMP                             ; [+335]
      260 GETTABLE                         R10 R0 R2
      261 LOADN                            R11 48
      262 JUMPIFNOTLT                      R11 R10 ; [+56]
      264 GETTABLE                         R10 R0 R2
      265 LOADN                            R11 57
      266 JUMPIFNOTLE                      R10 R11 ; [+52]
      268 MOVE                             R10 R2
      269 ADDK                             R2 R2 K9 [1]
      270 GETTABLE                         R11 R0 R2
      271 LOADN                            R12 48
      272 JUMPIFNOTLE                      R12 R11 ; [+7]
      274 GETTABLE                         R11 R0 R2
      275 LOADN                            R12 48
      276 JUMPIFNOTLE                      R11 R12 ; [+3]
      278 ADDK                             R2 R2 K9 [1]
      279 JUMPBACK                         ; [-10]
      280 GETTABLE                         R11 R0 R2
      281 JUMPIFEQKN                       R11 K14 [41] ; [+3]
      283 LOADK                            R11 K50 ["invalid group structure"]
      284 RETURN                           R11 1
      285 LOADK                            R11 K49 ["recurmatch"]
      286 GETTABLEKS                       R14 R0 K16 ["s"]
      288 MOVE                             R15 R2
      289 GETIMPORT                        R16 K19 [utf8.offset]
      291 MOVE                             R17 R14
      292 MOVE                             R18 R15
      293 CALL                             R16 2 1
      294 MOVE                             R15 R16
      295 GETIMPORT                        R18 K19 [utf8.offset]
      297 MOVE                             R19 R14
      298 MOVE                             R20 R10
      299 CALL                             R18 2 1
      300 MOVE                             R19 R15
      301 JUMPIFNOT                        R19 ; [+1]
      302 SUBK                             R19 R15 K9 [1]
      303 FASTCALL3                        STRING_SUB R14 R18 R19
      305 MOVE                             R17 R14
      306 GETIMPORT                        R16 K22 [string.sub]
      308 CALL                             R16 3 1
      309 MOVE                             R13 R16
      310 FASTCALL1                        TONUMBER R13 ; [+2]
      311 GETIMPORT                        R12 K52 [tonumber]
      313 CALL                             R12 1 1
      314 LOADNIL                          R13
      315 SETTABLEN                        R11 R9 1
      316 SETTABLEN                        R12 R9 2
      317 SETTABLEN                        R13 R9 4
      318 JUMP                             ; [+276]
      319 GETTABLE                         R10 R0 R2
      320 JUMPIFNOTEQKN                    R10 K53 [60] ; [+5]
      322 ADDK                             R11 R2 K9 [1]
      323 GETTABLE                         R10 R0 R11
      324 JUMPIFEQKN                       R10 K54 [33] ; [+5]
      326 ADDK                             R11 R2 K9 [1]
      327 GETTABLE                         R10 R0 R11
      328 JUMPIFNOTEQKN                    R10 K55 [61] ; [+7]
      330 ADDK                             R2 R2 K9 [1]
      331 GETTABLE                         R10 R0 R2
      332 LOADN                            R11 1
      333 SETTABLEN                        R10 R9 4
      334 SETTABLEN                        R11 R9 5
      335 JUMP                             ; [+259]
      336 GETTABLE                         R10 R0 R2
      337 JUMPIFNOTEQKN                    R10 K56 [124] ; [+3]
      339 SETTABLEN                        R4 R9 5
      340 JUMP                             ; [+254]
      341 GETTABLE                         R10 R0 R2
      342 JUMPIFEQKN                       R10 K57 [80] ; [+7]
      344 GETTABLE                         R10 R0 R2
      345 JUMPIFEQKN                       R10 K53 [60] ; [+4]
      347 GETTABLE                         R10 R0 R2
      348 JUMPIFNOTEQKN                    R10 K58 [39] ; [+229]
      350 GETTABLE                         R10 R0 R2
      351 JUMPIFNOTEQKN                    R10 K57 [80] ; [+2]
      353 ADDK                             R2 R2 K9 [1]
      354 GETTABLE                         R10 R0 R2
      355 JUMPIFNOTEQKN                    R10 K55 [61] ; [+75]
      357 ADDK                             R10 R2 K9 [1]
      358 GETTABLE                         R11 R0 R2
      359 JUMPIFNOT                        R11 ; [+29]
      360 GETTABLE                         R11 R0 R2
      361 LOADN                            R12 48
      362 JUMPIFNOTLE                      R12 R11 ; [+5]
      364 GETTABLE                         R11 R0 R2
      365 LOADN                            R12 57
      366 JUMPIFLE                         R11 R12 ; [+20]
      368 GETTABLE                         R11 R0 R2
      369 LOADN                            R12 65
      370 JUMPIFNOTLE                      R12 R11 ; [+5]
      372 GETTABLE                         R11 R0 R2
      373 LOADN                            R12 90
      374 JUMPIFLE                         R11 R12 ; [+12]
      376 GETTABLE                         R11 R0 R2
      377 LOADN                            R12 97
      378 JUMPIFNOTLE                      R12 R11 ; [+5]
      380 GETTABLE                         R11 R0 R2
      381 LOADN                            R12 122
      382 JUMPIFLE                         R11 R12 ; [+4]
      384 GETTABLE                         R11 R0 R2
      385 JUMPIFNOTEQKN                    R11 K12 [95] ; [+3]
      387 ADDK                             R2 R2 K9 [1]
      388 JUMPBACK                         ; [-31]
      389 GETTABLE                         R11 R0 R2
      390 JUMPIF                           R11 ; [+2]
      391 LOADK                            R11 K47 ["unterminated parenthetical"]
      392 RETURN                           R11 1
      393 GETTABLE                         R11 R0 R2
      394 JUMPIFNOTEQKN                    R11 K14 [41] ; [+3]
      396 JUMPIFNOTEQ                      R2 R10 ; [+3]
      398 LOADK                            R11 K50 ["invalid group structure"]
      399 RETURN                           R11 1
      400 NEWTABLE                         R11 0 2
      402 LOADK                            R12 K59 ["backref"]
      403 GETTABLEKS                       R14 R0 K16 ["s"]
      405 MOVE                             R15 R2
      406 GETIMPORT                        R16 K19 [utf8.offset]
      408 MOVE                             R17 R14
      409 MOVE                             R18 R15
      410 CALL                             R16 2 1
      411 MOVE                             R15 R16
      412 GETIMPORT                        R18 K19 [utf8.offset]
      414 MOVE                             R19 R14
      415 MOVE                             R20 R10
      416 CALL                             R18 2 1
      417 MOVE                             R19 R15
      418 JUMPIFNOT                        R19 ; [+1]
      419 SUBK                             R19 R15 K9 [1]
      420 FASTCALL3                        STRING_SUB R14 R18 R19
      422 MOVE                             R17 R14
      423 GETIMPORT                        R16 K22 [string.sub]
      425 CALL                             R16 3 1
      426 MOVE                             R13 R16
      427 SETLIST                          R11 R12 2 [1]
      429 MOVE                             R9 R11
      430 JUMP                             ; [+164]
      431 GETTABLE                         R10 R0 R2
      432 JUMPIFEQKN                       R10 K53 [60] ; [+8]
      434 SUBK                             R11 R2 K9 [1]
      435 GETTABLE                         R10 R0 R11
      436 JUMPIFEQKN                       R10 K57 [80] ; [+138]
      438 GETTABLE                         R10 R0 R2
      439 JUMPIFNOTEQKN                    R10 K58 [39] ; [+135]
      441 GETTABLE                         R11 R0 R2
      442 JUMPIFNOTEQKN                    R11 K58 [39] ; [+3]
      444 LOADN                            R10 39
      445 JUMP                             ; [+1]
      446 LOADN                            R10 62
      447 ADDK                             R11 R2 K9 [1]
      448 ADDK                             R2 R2 K9 [1]
      449 GETTABLE                         R12 R0 R2
      450 JUMPIFNOTEQKN                    R12 K14 [41] ; [+3]
      452 LOADK                            R12 K60 ["missing character in subpattern"]
      453 RETURN                           R12 1
      454 GETTABLE                         R12 R0 R2
      455 LOADN                            R13 48
      456 JUMPIFNOTLE                      R13 R12 ; [+7]
      458 GETTABLE                         R12 R0 R2
      459 LOADN                            R13 57
      460 JUMPIFNOTLE                      R12 R13 ; [+3]
      462 LOADK                            R12 K61 ["subpattern name must not begin with a digit"]
      463 RETURN                           R12 1
      464 GETTABLE                         R12 R0 R2
      465 LOADN                            R13 65
      466 JUMPIFNOTLE                      R13 R12 ; [+5]
      468 GETTABLE                         R12 R0 R2
      469 LOADN                            R13 90
      470 JUMPIFLE                         R12 R13 ; [+14]
      472 GETTABLE                         R12 R0 R2
      473 LOADN                            R13 97
      474 JUMPIFNOTLE                      R13 R12 ; [+5]
      476 GETTABLE                         R12 R0 R2
      477 LOADN                            R13 122
      478 JUMPIFLE                         R12 R13 ; [+6]
      480 GETTABLE                         R12 R0 R2
      481 JUMPIFEQKN                       R12 K12 [95] ; [+3]
      483 LOADK                            R12 K62 ["invalid character in subpattern"]
      484 RETURN                           R12 1
      485 ADDK                             R2 R2 K9 [1]
      486 GETTABLE                         R12 R0 R2
      487 JUMPIFNOT                        R12 ; [+29]
      488 GETTABLE                         R12 R0 R2
      489 LOADN                            R13 48
      490 JUMPIFNOTLE                      R13 R12 ; [+5]
      492 GETTABLE                         R12 R0 R2
      493 LOADN                            R13 57
      494 JUMPIFLE                         R12 R13 ; [+20]
      496 GETTABLE                         R12 R0 R2
      497 LOADN                            R13 65
      498 JUMPIFNOTLE                      R13 R12 ; [+5]
      500 GETTABLE                         R12 R0 R2
      501 LOADN                            R13 90
      502 JUMPIFLE                         R12 R13 ; [+12]
      504 GETTABLE                         R12 R0 R2
      505 LOADN                            R13 97
      506 JUMPIFNOTLE                      R13 R12 ; [+5]
      508 GETTABLE                         R12 R0 R2
      509 LOADN                            R13 122
      510 JUMPIFLE                         R12 R13 ; [+4]
      512 GETTABLE                         R12 R0 R2
      513 JUMPIFNOTEQKN                    R12 K12 [95] ; [+3]
      515 ADDK                             R2 R2 K9 [1]
      516 JUMPBACK                         ; [-31]
      517 GETTABLE                         R12 R0 R2
      518 JUMPIF                           R12 ; [+2]
      519 LOADK                            R12 K47 ["unterminated parenthetical"]
      520 RETURN                           R12 1
      521 GETTABLE                         R12 R0 R2
      522 JUMPIFEQ                         R12 R10 ; [+3]
      524 LOADK                            R12 K62 ["invalid character in subpattern"]
      525 RETURN                           R12 1
      526 GETTABLEKS                       R13 R0 K16 ["s"]
      528 MOVE                             R14 R2
      529 GETIMPORT                        R15 K19 [utf8.offset]
      531 MOVE                             R16 R13
      532 MOVE                             R17 R14
      533 CALL                             R15 2 1
      534 MOVE                             R14 R15
      535 GETIMPORT                        R17 K19 [utf8.offset]
      537 MOVE                             R18 R13
      538 MOVE                             R19 R11
      539 CALL                             R17 2 1
      540 MOVE                             R18 R14
      541 JUMPIFNOT                        R18 ; [+1]
      542 SUBK                             R18 R14 K9 [1]
      543 FASTCALL3                        STRING_SUB R13 R17 R18
      545 MOVE                             R16 R13
      546 GETIMPORT                        R15 K22 [string.sub]
      548 CALL                             R15 3 1
      549 MOVE                             R12 R15
      550 ADDK                             R4 R4 K9 [1]
      551 GETTABLE                         R14 R6 R12
      552 OR                               R13 R14 R4
      553 JUMPIFEQ                         R13 R4 ; [+3]
      555 LOADK                            R13 K63 ["subpattern name already exists"]
      556 RETURN                           R13 1
      557 GETIMPORT                        R13 K65 [pairs]
      559 MOVE                             R14 R6
      560 CALL                             R13 1 3
      561 FORGPREP_NEXT                    R13
      562 JUMPIFEQ                         R12 R16 ; [+5]
      564 JUMPIFNOTEQ                      R4 R17 ; [+3]
      566 LOADK                            R18 K66 ["different names for subpatterns of the same number aren't permitted"]
      567 RETURN                           R18 1
      568 FORGLOOP                         R13 2 ; [-7]
      570 SETTABLE                         R4 R6 R12
      571 LOADNIL                          R13
      572 SETTABLEN                        R4 R9 2
      573 SETTABLEN                        R13 R9 4
      574 JUMP                             ; [+20]
      575 LOADK                            R10 K50 ["invalid group structure"]
      576 RETURN                           R10 1
      577 JUMP                             ; [+17]
      578 GETUPVAL                         R11 2
      579 GETTABLE                         R12 R0 R2
      580 GETTABLE                         R10 R11 R12
      581 JUMPIF                           R10 ; [+13]
      582 LOADK                            R10 K50 ["invalid group structure"]
      583 RETURN                           R10 1
      584 JUMP                             ; [+10]
      585 ADDK                             R4 R4 K9 [1]
      586 NEWTABLE                         R10 0 4
      588 LOADN                            R11 40
      589 MOVE                             R12 R4
      590 LOADNIL                          R13
      591 LOADNIL                          R14
      592 SETLIST                          R10 R11 4 [1]
      594 MOVE                             R9 R10
      595 JUMPIFNOT                        R9 ; [+2541]
      596 FASTCALL2                        TABLE_INSERT R5 R9 ; [+5]
      598 MOVE                             R11 R5
      599 MOVE                             R12 R9
      600 GETIMPORT                        R10 K68 [table.insert]
      602 CALL                             R10 2 0
      603 JUMP                             ; [+2533]
      604 JUMPIFNOTEQKN                    R8 K14 [41] ; [+133]
      606 LENGTH                           R10 R5
      607 ADDK                             R9 R10 K9 [1]
      608 LOADN                            R10 255
      609 LOADN                            R11 0
      610 LOADN                            R12 0
      611 LOADN                            R13 0
      612 SUBK                             R9 R9 K9 [1]
      613 GETTABLE                         R14 R5 R9
      614 GETTABLE                         R17 R5 R9
      615 FASTCALL1                        TYPE R17 ; [+2]
      616 GETIMPORT                        R16 K70 [type]
      618 CALL                             R16 1 1
      619 JUMPIFEQKS                       R16 K45 ["table"] ; [+2]
      621 LOADB                            R15 0 +1
      622 LOADB                            R15 1
      623 JUMPIFNOT                        R15 ; [+34]
      624 GETTABLEN                        R16 R14 1
      625 JUMPIFNOTEQKN                    R16 K8 [40] ; [+32]
      627 ADDK                             R13 R13 K9 [1]
      628 JUMPIFNOT                        R11 ; [+6]
      629 GETTABLEKS                       R16 R14 K71 ["count"]
      631 JUMPIFNOT                        R16 ; [+3]
      632 GETTABLEKS                       R16 R14 K71 ["count"]
      634 ADD                              R11 R11 R16
      635 GETTABLEN                        R16 R14 3
      636 JUMPIF                           R16 ; [+58]
      637 GETTABLEN                        R16 R14 4
      638 JUMPIFNOTEQKN                    R16 K56 [124] ; [+10]
      640 GETTABLEN                        R16 R14 5
      641 FASTCALL2                        MATH_MAX R12 R13 ; [+5]
      643 MOVE                             R18 R12
      644 MOVE                             R19 R13
      645 GETIMPORT                        R17 K74 [math.max]
      647 CALL                             R17 2 1
      648 ADD                              R4 R16 R17
      649 JUMPIFEQ                         R11 R10 ; [+5]
      651 JUMPIFEQKN                       R10 K75 [-1] ; [+3]
      653 LOADNIL                          R10
      654 JUMP                             ; [+44]
      655 MOVE                             R10 R11
      656 JUMP                             ; [+42]
      657 JUMP                             ; [+37]
      658 GETUPVAL                         R16 3
      659 JUMPIFNOTEQ                      R14 R16 ; [+20]
      661 JUMPIFEQ                         R11 R10 ; [+6]
      663 JUMPIFEQKN                       R10 K75 [-1] ; [+4]
      665 LOADNIL                          R10
      666 LOADNIL                          R11
      667 JUMP                             ; [+2]
      668 MOVE                             R10 R11
      669 LOADN                            R11 0
      670 FASTCALL2                        MATH_MAX R12 R13 ; [+5]
      672 MOVE                             R17 R12
      673 MOVE                             R18 R13
      674 GETIMPORT                        R16 K74 [math.max]
      676 CALL                             R16 2 1
      677 MOVE                             R12 R16
      678 LOADN                            R13 0
      679 JUMP                             ; [+15]
      680 JUMPIFNOT                        R11 ; [+14]
      681 JUMPIFNOT                        R15 ; [+12]
      682 GETTABLEN                        R16 R14 1
      683 JUMPIFNOTEQKS                    R16 K76 ["quantifier"] ; [+10]
      685 GETTABLEN                        R16 R14 2
      686 GETTABLEN                        R17 R14 3
      687 JUMPIFNOTEQ                      R16 R17 ; [+4]
      689 GETTABLEN                        R16 R14 2
      690 ADD                              R11 R11 R16
      691 JUMP                             ; [+3]
      692 LOADNIL                          R11
      693 JUMP                             ; [+1]
      694 ADDK                             R11 R11 K9 [1]
      695 LOADN                            R16 1
      696 JUMPIFLT                         R9 R16 ; [+2]
      698 JUMPBACK                         ; [-87]
      699 LOADN                            R14 1
      700 JUMPIFNOTLT                      R9 R14 ; [+3]
      702 LOADK                            R14 K77 ["unmatched ) in regular expression"]
      703 RETURN                           R14 1
      704 GETTABLE                         R14 R5 R9
      705 LENGTH                           R16 R5
      706 ADDK                             R15 R16 K9 [1]
      707 NEWTABLE                         R16 1 5
      709 LOADN                            R17 41
      710 GETTABLEN                        R18 R14 2
      711 MOVE                             R19 R9
      712 GETTABLEN                        R20 R14 4
      713 GETTABLEN                        R21 R14 5
      714 SETLIST                          R16 R17 5 [1]
      716 SETTABLEKS                       R10 R16 K71 ["count"]
      718 GETTABLEN                        R17 R14 4
      719 JUMPIFEQKN                       R17 K54 [33] ; [+4]
      721 GETTABLEN                        R17 R14 4
      722 JUMPIFNOTEQKN                    R17 K55 [61] ; [+6]
      724 GETTABLEN                        R17 R14 5
      725 JUMPIFNOT                        R17 ; [+3]
      726 JUMPIF                           R10 ; [+2]
      727 LOADK                            R17 K78 ["lookbehind assertion is not fixed width"]
      728 RETURN                           R17 1
      729 SETTABLEN                        R15 R14 3
      730 FASTCALL2                        TABLE_INSERT R5 R16 ; [+5]
      732 MOVE                             R18 R5
      733 MOVE                             R19 R16
      734 GETIMPORT                        R17 K68 [table.insert]
      736 CALL                             R17 2 0
      737 JUMP                             ; [+2399]
      738 JUMPIFNOTEQKN                    R8 K79 [46] ; [+9]
      740 GETUPVAL                         R11 4
      741 FASTCALL2                        TABLE_INSERT R5 R11 ; [+4]
      743 MOVE                             R10 R5
      744 GETIMPORT                        R9 K68 [table.insert]
      746 CALL                             R9 2 0
      747 JUMP                             ; [+2389]
      748 JUMPIFNOTEQKN                    R8 K80 [91] ; [+1195]
      750 LOADB                            R9 0
      751 LOADNIL                          R10
      752 ADDK                             R2 R2 K9 [1]
      753 MOVE                             R11 R2
      754 GETTABLE                         R12 R0 R2
      755 JUMPIFNOTEQKN                    R12 K81 [94] ; [+4]
      757 LOADB                            R9 1
      758 ADDK                             R2 R2 K9 [1]
      759 JUMP                             ; [+10]
      760 GETTABLE                         R12 R0 R2
      761 JUMPIFEQKN                       R12 K79 [46] ; [+7]
      763 GETTABLE                         R12 R0 R2
      764 JUMPIFEQKN                       R12 K13 [58] ; [+4]
      766 GETTABLE                         R12 R0 R2
      767 JUMPIFNOTEQKN                    R12 K55 [61] ; [+2]
      769 GETTABLE                         R10 R0 R2
      770 LOADNIL                          R12
      771 GETTABLE                         R13 R0 R2
      772 JUMPIFEQKN                       R13 K80 [91] ; [+4]
      774 GETTABLE                         R13 R0 R2
      775 JUMPIFNOTEQKN                    R13 K82 [92] ; [+4]
      777 NEWTABLE                         R12 0 0
      779 JUMP                             ; [+7]
      780 NEWTABLE                         R13 0 1
      782 GETTABLE                         R14 R0 R2
      783 SETLIST                          R13 R14 1 [1]
      785 MOVE                             R12 R13
      786 ADDK                             R2 R2 K9 [1]
      787 GETTABLE                         R13 R0 R2
      788 JUMPIFEQKN                       R13 K83 [93] ; [+1117]
      790 GETTABLE                         R13 R0 R2
      791 JUMPIF                           R13 ; [+2]
      792 LOADK                            R13 K84 ["unterminated character class"]
      793 RETURN                           R13 1
      794 GETTABLE                         R13 R0 R2
      795 JUMPIFNOTEQKN                    R13 K85 [45] ; [+286]
      797 GETTABLEN                        R13 R12 1
      798 JUMPIFNOT                        R13 ; [+283]
      799 GETTABLEN                        R14 R12 1
      800 FASTCALL1                        TYPE R14 ; [+2]
      801 GETIMPORT                        R13 K70 [type]
      803 CALL                             R13 1 1
      804 JUMPIFNOTEQKS                    R13 K86 ["number"] ; [+277]
      806 ADDK                             R14 R2 K9 [1]
      807 GETTABLE                         R13 R0 R14
      808 JUMPIFNOTEQKN                    R13 K83 [93] ; [+10]
      810 LOADN                            R15 1
      811 LOADN                            R16 45
      812 FASTCALL3                        TABLE_INSERT R12 R15 R16
      814 MOVE                             R14 R12
      815 GETIMPORT                        R13 K68 [table.insert]
      817 CALL                             R13 3 0
      818 JUMP                             ; [+1085]
      819 ADDK                             R2 R2 K9 [1]
      820 GETTABLE                         R13 R0 R2
      821 JUMPIFNOTEQKN                    R13 K80 [91] ; [+49]
      823 ADDK                             R15 R2 K9 [1]
      824 GETTABLE                         R14 R0 R15
      825 JUMPIFEQKN                       R14 K79 [46] ; [+9]
      827 ADDK                             R15 R2 K9 [1]
      828 GETTABLE                         R14 R0 R15
      829 JUMPIFEQKN                       R14 K13 [58] ; [+5]
      831 ADDK                             R15 R2 K9 [1]
      832 GETTABLE                         R14 R0 R15
      833 JUMPIFNOTEQKN                    R14 K55 [61] ; [+30]
      835 ADDK                             R14 R2 K11 [2]
      836 GETIMPORT                        R15 K46 [table.find]
      838 MOVE                             R16 R0
      839 LOADN                            R17 93
      840 MOVE                             R18 R14
      841 CALL                             R15 3 1
      842 MOVE                             R14 R15
      843 JUMPIFNOT                        R14 ; [+5]
      844 SUBK                             R16 R14 K9 [1]
      845 GETTABLE                         R15 R0 R16
      846 JUMPIFNOTEQKN                    R15 K82 [92] ; [+2]
      848 JUMPBACK                         ; [-13]
      849 JUMPIF                           R14 ; [+2]
      850 LOADK                            R15 K84 ["unterminated character class"]
      851 RETURN                           R15 1
      852 SUBK                             R16 R14 K9 [1]
      853 GETTABLE                         R15 R0 R16
      854 ADDK                             R17 R2 K9 [1]
      855 GETTABLE                         R16 R0 R17
      856 JUMPIFNOTEQ                      R15 R16 ; [+7]
      858 SUBK                             R15 R14 K9 [1]
      859 ADDK                             R16 R2 K9 [1]
      860 JUMPIFEQ                         R15 R16 ; [+3]
      862 LOADK                            R15 K87 ["invalid range in character class"]
      863 RETURN                           R15 1
      864 GETTABLEN                        R14 R12 1
      865 LOADN                            R15 91
      866 JUMPIFNOTLT                      R15 R14 ; [+206]
      868 LOADK                            R14 K87 ["invalid range in character class"]
      869 RETURN                           R14 1
      870 JUMP                             ; [+202]
      871 JUMPIFNOTEQKN                    R13 K82 [92] ; [+196]
      873 ADDK                             R2 R2 K9 [1]
      874 GETTABLE                         R14 R0 R2
      875 JUMPIFNOTEQKN                    R14 K88 [120] ; [+118]
      877 LOADNIL                          R14
      878 LOADNIL                          R15
      879 ADDK                             R2 R2 K9 [1]
      880 GETTABLE                         R16 R0 R2
      881 JUMPIFNOT                        R16 ; [+8]
      882 GETTABLE                         R16 R0 R2
      883 LOADN                            R17 48
      884 JUMPIFNOTLE                      R17 R16 ; [+5]
      886 GETTABLE                         R16 R0 R2
      887 LOADN                            R17 57
      888 JUMPIFLE                         R16 R17 ; [+17]
      890 GETTABLE                         R16 R0 R2
      891 LOADN                            R17 65
      892 JUMPIFNOTLE                      R17 R16 ; [+5]
      894 GETTABLE                         R16 R0 R2
      895 LOADN                            R17 70
      896 JUMPIFLE                         R16 R17 ; [+9]
      898 GETTABLE                         R16 R0 R2
      899 LOADN                            R17 97
      900 JUMPIFNOTLE                      R17 R16 ; [+81]
      902 GETTABLE                         R16 R0 R2
      903 LOADN                            R17 102
      904 JUMPIFNOTLE                      R16 R17 ; [+77]
      906 GETTABLE                         R16 R0 R2
      907 GETTABLE                         R18 R0 R2
      908 LOADN                            R19 65
      909 JUMPIFNOTLE                      R19 R18 ; [+7]
      911 GETTABLE                         R18 R0 R2
      912 LOADN                            R19 90
      913 JUMPIFNOTLE                      R18 R19 ; [+3]
      915 LOADN                            R17 55
      916 JUMP                             ; [+11]
      917 GETTABLE                         R18 R0 R2
      918 LOADN                            R19 97
      919 JUMPIFNOTLE                      R19 R18 ; [+7]
      921 GETTABLE                         R18 R0 R2
      922 LOADN                            R19 122
      923 JUMPIFNOTLE                      R18 R19 ; [+3]
      925 LOADN                            R17 87
      926 JUMP                             ; [+1]
      927 LOADN                            R17 48
      928 SUB                              R14 R16 R17
      929 ADDK                             R2 R2 K9 [1]
      930 GETTABLE                         R16 R0 R2
      931 JUMPIFNOT                        R16 ; [+8]
      932 GETTABLE                         R16 R0 R2
      933 LOADN                            R17 48
      934 JUMPIFNOTLE                      R17 R16 ; [+5]
      936 GETTABLE                         R16 R0 R2
      937 LOADN                            R17 57
      938 JUMPIFLE                         R16 R17 ; [+17]
      940 GETTABLE                         R16 R0 R2
      941 LOADN                            R17 65
      942 JUMPIFNOTLE                      R17 R16 ; [+5]
      944 GETTABLE                         R16 R0 R2
      945 LOADN                            R17 70
      946 JUMPIFLE                         R16 R17 ; [+9]
      948 GETTABLE                         R16 R0 R2
      949 LOADN                            R17 97
      950 JUMPIFNOTLE                      R17 R16 ; [+29]
      952 GETTABLE                         R16 R0 R2
      953 LOADN                            R17 102
      954 JUMPIFNOTLE                      R16 R17 ; [+25]
      956 GETTABLE                         R16 R0 R2
      957 GETTABLE                         R18 R0 R2
      958 LOADN                            R19 65
      959 JUMPIFNOTLE                      R19 R18 ; [+7]
      961 GETTABLE                         R18 R0 R2
      962 LOADN                            R19 90
      963 JUMPIFNOTLE                      R18 R19 ; [+3]
      965 LOADN                            R17 55
      966 JUMP                             ; [+11]
      967 GETTABLE                         R18 R0 R2
      968 LOADN                            R19 97
      969 JUMPIFNOTLE                      R19 R18 ; [+7]
      971 GETTABLE                         R18 R0 R2
      972 LOADN                            R19 122
      973 JUMPIFNOTLE                      R18 R19 ; [+3]
      975 LOADN                            R17 87
      976 JUMP                             ; [+1]
      977 LOADN                            R17 48
      978 SUB                              R15 R16 R17
      979 JUMP                             ; [+3]
      980 SUBK                             R2 R2 K9 [1]
      981 JUMP                             ; [+1]
      982 SUBK                             R2 R2 K9 [1]
      983 JUMPIFNOT                        R14 ; [+7]
      984 JUMPIFNOT                        R15 ; [+4]
      985 LOADN                            R18 16
      986 MUL                              R17 R18 R14
      987 ADD                              R16 R17 R15
      988 JUMPIF                           R16 ; [+3]
      989 MOVE                             R16 R14
      990 JUMPIF                           R16 ; [+1]
      991 LOADN                            R16 0
      992 MOVE                             R13 R16
      993 JUMP                             ; [+79]
      994 GETTABLE                         R14 R0 R2
      995 LOADN                            R15 48
      996 JUMPIFNOTLE                      R15 R14 ; [+55]
      998 GETTABLE                         R14 R0 R2
      999 LOADN                            R15 55
     1000 JUMPIFNOTLE                      R14 R15 ; [+51]
     1002 GETTABLE                         R17 R0 R2
     1003 SUBK                             R14 R17 K48 [48]
     1004 LOADNIL                          R15
     1005 LOADNIL                          R16
     1006 ADDK                             R2 R2 K9 [1]
     1007 GETTABLE                         R17 R0 R2
     1008 JUMPIFNOT                        R17 ; [+26]
     1009 GETTABLE                         R17 R0 R2
     1010 LOADN                            R18 48
     1011 JUMPIFNOTLE                      R18 R17 ; [+23]
     1013 GETTABLE                         R17 R0 R2
     1014 LOADN                            R18 55
     1015 JUMPIFNOTLE                      R17 R18 ; [+19]
     1017 GETTABLE                         R17 R0 R2
     1018 SUBK                             R15 R17 K48 [48]
     1019 ADDK                             R2 R2 K9 [1]
     1020 GETTABLE                         R17 R0 R2
     1021 JUMPIFNOT                        R17 ; [+11]
     1022 GETTABLE                         R17 R0 R2
     1023 LOADN                            R18 48
     1024 JUMPIFNOTLE                      R18 R17 ; [+8]
     1026 GETTABLE                         R17 R0 R2
     1027 LOADN                            R18 55
     1028 JUMPIFNOTLE                      R17 R18 ; [+4]
     1030 GETTABLE                         R17 R0 R2
     1031 SUBK                             R16 R17 K48 [48]
     1032 JUMP                             ; [+3]
     1033 SUBK                             R2 R2 K9 [1]
     1034 JUMP                             ; [+1]
     1035 SUBK                             R2 R2 K9 [1]
     1036 JUMPIFNOT                        R15 ; [+12]
     1037 JUMPIFNOT                        R16 ; [+7]
     1038 LOADN                            R20 64
     1039 MUL                              R19 R20 R14
     1040 LOADN                            R21 8
     1041 MUL                              R20 R21 R15
     1042 ADD                              R18 R19 R20
     1043 ADD                              R17 R18 R16
     1044 JUMPIF                           R17 ; [+5]
     1045 LOADN                            R19 8
     1046 MUL                              R18 R19 R14
     1047 ADD                              R17 R18 R15
     1048 JUMPIF                           R17 ; [+1]
     1049 MOVE                             R17 R14
     1050 MOVE                             R13 R17
     1051 JUMP                             ; [+21]
     1052 GETUPVAL                         R15 5
     1053 GETTABLE                         R16 R0 R2
     1054 GETTABLE                         R14 R15 R16
     1055 JUMPIF                           R14 ; [+1]
     1056 GETTABLE                         R14 R0 R2
     1057 MOVE                             R13 R14
     1058 FASTCALL1                        TYPE R13 ; [+3]
     1059 MOVE                             R15 R13
     1060 GETIMPORT                        R14 K70 [type]
     1062 CALL                             R14 1 1
     1063 JUMPIFEQKS                       R14 K86 ["number"] ; [+9]
     1065 LOADK                            R14 K87 ["invalid range in character class"]
     1066 RETURN                           R14 1
     1067 JUMP                             ; [+5]
     1068 GETTABLEN                        R14 R12 1
     1069 JUMPIFNOTLT                      R13 R14 ; [+3]
     1071 LOADK                            R14 K87 ["invalid range in character class"]
     1072 RETURN                           R14 1
     1073 NEWTABLE                         R14 0 3
     1075 LOADK                            R15 K89 ["range"]
     1076 GETTABLEN                        R16 R12 1
     1077 MOVE                             R17 R13
     1078 SETLIST                          R14 R15 3 [1]
     1080 SETTABLEN                        R14 R12 1
     1081 JUMP                             ; [+822]
     1082 GETTABLE                         R13 R0 R2
     1083 JUMPIFNOTEQKN                    R13 K80 [91] ; [+128]
     1085 ADDK                             R14 R2 K9 [1]
     1086 GETTABLE                         R13 R0 R14
     1087 JUMPIFEQKN                       R13 K79 [46] ; [+9]
     1089 ADDK                             R14 R2 K9 [1]
     1090 GETTABLE                         R13 R0 R14
     1091 JUMPIFEQKN                       R13 K13 [58] ; [+5]
     1093 ADDK                             R14 R2 K9 [1]
     1094 GETTABLE                         R13 R0 R14
     1095 JUMPIFNOTEQKN                    R13 K55 [61] ; [+107]
     1097 ADDK                             R13 R2 K11 [2]
     1098 GETIMPORT                        R14 K46 [table.find]
     1100 MOVE                             R15 R0
     1101 LOADN                            R16 93
     1102 MOVE                             R17 R13
     1103 CALL                             R14 3 1
     1104 MOVE                             R13 R14
     1105 JUMPIFNOT                        R13 ; [+5]
     1106 SUBK                             R15 R13 K9 [1]
     1107 GETTABLE                         R14 R0 R15
     1108 JUMPIFNOTEQKN                    R14 K82 [92] ; [+2]
     1110 JUMPBACK                         ; [-13]
     1111 JUMPIF                           R13 ; [+2]
     1112 LOADK                            R14 K84 ["unterminated character class"]
     1113 RETURN                           R14 1
     1114 SUBK                             R15 R13 K9 [1]
     1115 GETTABLE                         R14 R0 R15
     1116 ADDK                             R16 R2 K9 [1]
     1117 GETTABLE                         R15 R0 R16
     1118 JUMPIFNOTEQ                      R14 R15 ; [+5]
     1120 SUBK                             R14 R13 K9 [1]
     1121 ADDK                             R15 R2 K9 [1]
     1122 JUMPIFNOTEQ                      R14 R15 ; [+10]
     1124 LOADN                            R16 1
     1125 LOADN                            R17 91
     1126 FASTCALL3                        TABLE_INSERT R12 R16 R17
     1128 MOVE                             R15 R12
     1129 GETIMPORT                        R14 K68 [table.insert]
     1131 CALL                             R14 3 0
     1132 JUMP                             ; [+771]
     1133 SUBK                             R15 R13 K9 [1]
     1134 GETTABLE                         R14 R0 R15
     1135 JUMPIFEQKN                       R14 K79 [46] ; [+5]
     1137 SUBK                             R15 R13 K9 [1]
     1138 GETTABLE                         R14 R0 R15
     1139 JUMPIFNOTEQKN                    R14 K55 [61] ; [+3]
     1141 LOADK                            R14 K90 ["POSIX collating elements aren't supported"]
     1142 RETURN                           R14 1
     1143 SUBK                             R15 R13 K9 [1]
     1144 GETTABLE                         R14 R0 R15
     1145 JUMPIFNOTEQKN                    R14 K13 [58] ; [+758]
     1147 ADDK                             R16 R2 K91 [3]
     1148 GETTABLE                         R15 R0 R16
     1149 JUMPIFEQKN                       R15 K81 [94] ; [+2]
     1151 LOADB                            R14 0 +1
     1152 LOADB                            R14 1
     1153 GETTABLEKS                       R16 R0 K16 ["s"]
     1155 JUMPIFNOT                        R14 ; [+2]
     1156 LOADN                            R18 3
     1157 JUMP                             ; [+1]
     1158 LOADN                            R18 2
     1159 ADD                              R17 R2 R18
     1160 SUBK                             R18 R13 K9 [1]
     1161 GETIMPORT                        R19 K19 [utf8.offset]
     1163 MOVE                             R20 R16
     1164 MOVE                             R21 R18
     1165 CALL                             R19 2 1
     1166 MOVE                             R18 R19
     1167 GETIMPORT                        R21 K19 [utf8.offset]
     1169 MOVE                             R22 R16
     1170 MOVE                             R23 R17
     1171 CALL                             R21 2 1
     1172 MOVE                             R22 R18
     1173 JUMPIFNOT                        R22 ; [+1]
     1174 SUBK                             R22 R18 K9 [1]
     1175 FASTCALL3                        STRING_SUB R16 R21 R22
     1177 MOVE                             R20 R16
     1178 GETIMPORT                        R19 K22 [string.sub]
     1180 CALL                             R19 3 1
     1181 MOVE                             R15 R19
     1182 GETUPVAL                         R17 6
     1183 GETTABLE                         R16 R17 R15
     1184 JUMPIF                           R16 ; [+2]
     1185 LOADK                            R16 K92 ["unknown POSIX class name"]
     1186 RETURN                           R16 1
     1187 LOADN                            R18 1
     1188 NEWTABLE                         R19 0 3
     1190 LOADK                            R20 K93 ["class"]
     1191 MOVE                             R21 R15
     1192 MOVE                             R22 R14
     1193 SETLIST                          R19 R20 3 [1]
     1195 FASTCALL3                        TABLE_INSERT R12 R18 R19
     1197 MOVE                             R17 R12
     1198 GETIMPORT                        R16 K68 [table.insert]
     1200 CALL                             R16 3 0
     1201 MOVE                             R2 R13
     1202 JUMP                             ; [+701]
     1203 LOADN                            R15 1
     1204 LOADN                            R16 91
     1205 FASTCALL3                        TABLE_INSERT R12 R15 R16
     1207 MOVE                             R14 R12
     1208 GETIMPORT                        R13 K68 [table.insert]
     1210 CALL                             R13 3 0
     1211 JUMP                             ; [+692]
     1212 GETTABLE                         R13 R0 R2
     1213 JUMPIFNOTEQKN                    R13 K82 [92] ; [+661]
     1215 ADDK                             R2 R2 K9 [1]
     1216 GETTABLE                         R13 R0 R2
     1217 JUMPIFNOTEQKN                    R13 K88 [120] ; [+208]
     1219 LOADNIL                          R13
     1220 LOADNIL                          R14
     1221 ADDK                             R2 R2 K9 [1]
     1222 GETTABLE                         R15 R0 R2
     1223 JUMPIFNOTEQKN                    R15 K94 [123] ; [+82]
     1225 ADDK                             R2 R2 K9 [1]
     1226 MOVE                             R15 R2
     1227 GETTABLE                         R16 R0 R2
     1228 JUMPIFNOT                        R16 ; [+26]
     1229 GETTABLE                         R16 R0 R2
     1230 LOADN                            R17 48
     1231 JUMPIFNOTLE                      R17 R16 ; [+5]
     1233 GETTABLE                         R16 R0 R2
     1234 LOADN                            R17 57
     1235 JUMPIFLE                         R16 R17 ; [+17]
     1237 GETTABLE                         R16 R0 R2
     1238 LOADN                            R17 65
     1239 JUMPIFNOTLE                      R17 R16 ; [+5]
     1241 GETTABLE                         R16 R0 R2
     1242 LOADN                            R17 70
     1243 JUMPIFLE                         R16 R17 ; [+9]
     1245 GETTABLE                         R16 R0 R2
     1246 LOADN                            R17 97
     1247 JUMPIFNOTLE                      R17 R16 ; [+7]
     1249 GETTABLE                         R16 R0 R2
     1250 LOADN                            R17 102
     1251 JUMPIFNOTLE                      R16 R17 ; [+3]
     1253 ADDK                             R2 R2 K9 [1]
     1254 JUMPBACK                         ; [-28]
     1255 GETTABLE                         R16 R0 R2
     1256 JUMPIFNOTEQKN                    R16 K95 [125] ; [+3]
     1258 JUMPIFNOTEQ                      R2 R15 ; [+3]
     1260 LOADK                            R16 K96 ["malformed hexadecimal character"]
     1261 RETURN                           R16 1
     1262 SUB                              R16 R2 R15
     1263 LOADN                            R17 4
     1264 JUMPIFNOTLT                      R17 R16 ; [+3]
     1266 LOADK                            R16 K97 ["character offset too large"]
     1267 RETURN                           R16 1
     1268 LOADN                            R18 1
     1269 GETTABLEKS                       R21 R0 K16 ["s"]
     1271 MOVE                             R22 R2
     1272 GETIMPORT                        R23 K19 [utf8.offset]
     1274 MOVE                             R24 R21
     1275 MOVE                             R25 R22
     1276 CALL                             R23 2 1
     1277 MOVE                             R22 R23
     1278 GETIMPORT                        R25 K19 [utf8.offset]
     1280 MOVE                             R26 R21
     1281 MOVE                             R27 R15
     1282 CALL                             R25 2 1
     1283 MOVE                             R26 R22
     1284 JUMPIFNOT                        R26 ; [+1]
     1285 SUBK                             R26 R22 K9 [1]
     1286 FASTCALL3                        STRING_SUB R21 R25 R26
     1288 MOVE                             R24 R21
     1289 GETIMPORT                        R23 K22 [string.sub]
     1291 CALL                             R23 3 1
     1292 MOVE                             R20 R23
     1293 FASTCALL2K                       TONUMBER R20 K98 ; [+4]
     1295 LOADK                            R21 K98 [16]
     1296 GETIMPORT                        R19 K52 [tonumber]
     1298 CALL                             R19 2 1
     1299 FASTCALL3                        TABLE_INSERT R12 R18 R19
     1301 MOVE                             R17 R12
     1302 GETIMPORT                        R16 K68 [table.insert]
     1304 CALL                             R16 3 0
     1305 JUMP                             ; [+598]
     1306 GETTABLE                         R15 R0 R2
     1307 JUMPIFNOT                        R15 ; [+8]
     1308 GETTABLE                         R15 R0 R2
     1309 LOADN                            R16 48
     1310 JUMPIFNOTLE                      R16 R15 ; [+5]
     1312 GETTABLE                         R15 R0 R2
     1313 LOADN                            R16 57
     1314 JUMPIFLE                         R15 R16 ; [+17]
     1316 GETTABLE                         R15 R0 R2
     1317 LOADN                            R16 65
     1318 JUMPIFNOTLE                      R16 R15 ; [+5]
     1320 GETTABLE                         R15 R0 R2
     1321 LOADN                            R16 70
     1322 JUMPIFLE                         R15 R16 ; [+9]
     1324 GETTABLE                         R15 R0 R2
     1325 LOADN                            R16 97
     1326 JUMPIFNOTLE                      R16 R15 ; [+81]
     1328 GETTABLE                         R15 R0 R2
     1329 LOADN                            R16 102
     1330 JUMPIFNOTLE                      R15 R16 ; [+77]
     1332 GETTABLE                         R15 R0 R2
     1333 GETTABLE                         R17 R0 R2
     1334 LOADN                            R18 65
     1335 JUMPIFNOTLE                      R18 R17 ; [+7]
     1337 GETTABLE                         R17 R0 R2
     1338 LOADN                            R18 90
     1339 JUMPIFNOTLE                      R17 R18 ; [+3]
     1341 LOADN                            R16 55
     1342 JUMP                             ; [+11]
     1343 GETTABLE                         R17 R0 R2
     1344 LOADN                            R18 97
     1345 JUMPIFNOTLE                      R18 R17 ; [+7]
     1347 GETTABLE                         R17 R0 R2
     1348 LOADN                            R18 122
     1349 JUMPIFNOTLE                      R17 R18 ; [+3]
     1351 LOADN                            R16 87
     1352 JUMP                             ; [+1]
     1353 LOADN                            R16 48
     1354 SUB                              R13 R15 R16
     1355 ADDK                             R2 R2 K9 [1]
     1356 GETTABLE                         R15 R0 R2
     1357 JUMPIFNOT                        R15 ; [+8]
     1358 GETTABLE                         R15 R0 R2
     1359 LOADN                            R16 48
     1360 JUMPIFNOTLE                      R16 R15 ; [+5]
     1362 GETTABLE                         R15 R0 R2
     1363 LOADN                            R16 57
     1364 JUMPIFLE                         R15 R16 ; [+17]
     1366 GETTABLE                         R15 R0 R2
     1367 LOADN                            R16 65
     1368 JUMPIFNOTLE                      R16 R15 ; [+5]
     1370 GETTABLE                         R15 R0 R2
     1371 LOADN                            R16 70
     1372 JUMPIFLE                         R15 R16 ; [+9]
     1374 GETTABLE                         R15 R0 R2
     1375 LOADN                            R16 97
     1376 JUMPIFNOTLE                      R16 R15 ; [+29]
     1378 GETTABLE                         R15 R0 R2
     1379 LOADN                            R16 102
     1380 JUMPIFNOTLE                      R15 R16 ; [+25]
     1382 GETTABLE                         R15 R0 R2
     1383 GETTABLE                         R17 R0 R2
     1384 LOADN                            R18 65
     1385 JUMPIFNOTLE                      R18 R17 ; [+7]
     1387 GETTABLE                         R17 R0 R2
     1388 LOADN                            R18 90
     1389 JUMPIFNOTLE                      R17 R18 ; [+3]
     1391 LOADN                            R16 55
     1392 JUMP                             ; [+11]
     1393 GETTABLE                         R17 R0 R2
     1394 LOADN                            R18 97
     1395 JUMPIFNOTLE                      R18 R17 ; [+7]
     1397 GETTABLE                         R17 R0 R2
     1398 LOADN                            R18 122
     1399 JUMPIFNOTLE                      R17 R18 ; [+3]
     1401 LOADN                            R16 87
     1402 JUMP                             ; [+1]
     1403 LOADN                            R16 48
     1404 SUB                              R14 R15 R16
     1405 JUMP                             ; [+3]
     1406 SUBK                             R2 R2 K9 [1]
     1407 JUMP                             ; [+1]
     1408 SUBK                             R2 R2 K9 [1]
     1409 LOADN                            R17 1
     1410 JUMPIFNOT                        R13 ; [+7]
     1411 JUMPIFNOT                        R14 ; [+4]
     1412 LOADN                            R20 16
     1413 MUL                              R19 R20 R13
     1414 ADD                              R18 R19 R14
     1415 JUMPIF                           R18 ; [+3]
     1416 MOVE                             R18 R13
     1417 JUMPIF                           R18 ; [+1]
     1418 LOADN                            R18 0
     1419 FASTCALL3                        TABLE_INSERT R12 R17 R18
     1421 MOVE                             R16 R12
     1422 GETIMPORT                        R15 K68 [table.insert]
     1424 CALL                             R15 3 0
     1425 JUMP                             ; [+478]
     1426 GETTABLE                         R13 R0 R2
     1427 LOADN                            R14 48
     1428 JUMPIFNOTLE                      R14 R13 ; [+61]
     1430 GETTABLE                         R13 R0 R2
     1431 LOADN                            R14 55
     1432 JUMPIFNOTLE                      R13 R14 ; [+57]
     1434 GETTABLE                         R16 R0 R2
     1435 SUBK                             R13 R16 K48 [48]
     1436 LOADNIL                          R14
     1437 LOADNIL                          R15
     1438 ADDK                             R2 R2 K9 [1]
     1439 GETTABLE                         R16 R0 R2
     1440 JUMPIFNOT                        R16 ; [+26]
     1441 GETTABLE                         R16 R0 R2
     1442 LOADN                            R17 48
     1443 JUMPIFNOTLE                      R17 R16 ; [+23]
     1445 GETTABLE                         R16 R0 R2
     1446 LOADN                            R17 55
     1447 JUMPIFNOTLE                      R16 R17 ; [+19]
     1449 GETTABLE                         R16 R0 R2
     1450 SUBK                             R14 R16 K48 [48]
     1451 ADDK                             R2 R2 K9 [1]
     1452 GETTABLE                         R16 R0 R2
     1453 JUMPIFNOT                        R16 ; [+11]
     1454 GETTABLE                         R16 R0 R2
     1455 LOADN                            R17 48
     1456 JUMPIFNOTLE                      R17 R16 ; [+8]
     1458 GETTABLE                         R16 R0 R2
     1459 LOADN                            R17 55
     1460 JUMPIFNOTLE                      R16 R17 ; [+4]
     1462 GETTABLE                         R16 R0 R2
     1463 SUBK                             R15 R16 K48 [48]
     1464 JUMP                             ; [+3]
     1465 SUBK                             R2 R2 K9 [1]
     1466 JUMP                             ; [+1]
     1467 SUBK                             R2 R2 K9 [1]
     1468 LOADN                            R18 1
     1469 JUMPIFNOT                        R14 ; [+12]
     1470 JUMPIFNOT                        R15 ; [+7]
     1471 LOADN                            R22 64
     1472 MUL                              R21 R22 R13
     1473 LOADN                            R23 8
     1474 MUL                              R22 R23 R14
     1475 ADD                              R20 R21 R22
     1476 ADD                              R19 R20 R15
     1477 JUMPIF                           R19 ; [+5]
     1478 LOADN                            R21 8
     1479 MUL                              R20 R21 R13
     1480 ADD                              R19 R20 R14
     1481 JUMPIF                           R19 ; [+1]
     1482 MOVE                             R19 R13
     1483 FASTCALL3                        TABLE_INSERT R12 R18 R19
     1485 MOVE                             R17 R12
     1486 GETIMPORT                        R16 K68 [table.insert]
     1488 CALL                             R16 3 0
     1489 JUMP                             ; [+414]
     1490 GETTABLE                         R13 R0 R2
     1491 JUMPIFNOTEQKN                    R13 K99 [69] ; [+2]
     1493 JUMP                             ; [+410]
     1494 GETTABLE                         R13 R0 R2
     1495 JUMPIFNOTEQKN                    R13 K100 [81] ; [+30]
     1497 ADDK                             R13 R2 K9 [1]
     1498 GETIMPORT                        R14 K46 [table.find]
     1500 MOVE                             R15 R0
     1501 LOADN                            R16 92
     1502 ADDK                             R17 R2 K9 [1]
     1503 CALL                             R14 3 1
     1504 MOVE                             R2 R14
     1505 JUMPIFNOT                        R2 ; [+5]
     1506 ADDK                             R15 R2 K9 [1]
     1507 GETTABLE                         R14 R0 R15
     1508 JUMPIFEQKN                       R14 K99 [69] ; [+2]
     1510 JUMPBACK                         ; [-13]
     1511 GETIMPORT                        R14 K102 [table.move]
     1513 MOVE                             R15 R0
     1514 MOVE                             R16 R13
     1515 JUMPIFNOT                        R2 ; [+2]
     1516 SUBK                             R17 R2 K9 [1]
     1517 JUMPIF                           R17 ; [+1]
     1518 LENGTH                           R17 R0
     1519 LENGTH                           R19 R5
     1520 ADDK                             R18 R19 K9 [1]
     1521 MOVE                             R19 R5
     1522 CALL                             R14 5 0
     1523 JUMPIFNOT                        R2 ; [+382]
     1524 ADDK                             R2 R2 K9 [1]
     1525 JUMP                             ; [+378]
     1526 GETTABLE                         R13 R0 R2
     1527 JUMPIFNOTEQKN                    R13 K103 [78] ; [+93]
     1529 ADDK                             R14 R2 K9 [1]
     1530 GETTABLE                         R13 R0 R14
     1531 JUMPIFNOTEQKN                    R13 K94 [123] ; [+86]
     1533 ADDK                             R14 R2 K11 [2]
     1534 GETTABLE                         R13 R0 R14
     1535 JUMPIFNOTEQKN                    R13 K104 [85] ; [+82]
     1537 ADDK                             R14 R2 K91 [3]
     1538 GETTABLE                         R13 R0 R14
     1539 JUMPIFNOTEQKN                    R13 K105 [43] ; [+78]
     1541 GETTABLEKS                       R13 R1 K0 ["unicode"]
     1543 JUMPIFNOT                        R13 ; [+74]
     1544 ADDK                             R2 R2 K106 [4]
     1545 MOVE                             R13 R2
     1546 GETTABLE                         R14 R0 R2
     1547 JUMPIFNOT                        R14 ; [+26]
     1548 GETTABLE                         R14 R0 R2
     1549 LOADN                            R15 48
     1550 JUMPIFNOTLE                      R15 R14 ; [+5]
     1552 GETTABLE                         R14 R0 R2
     1553 LOADN                            R15 57
     1554 JUMPIFLE                         R14 R15 ; [+17]
     1556 GETTABLE                         R14 R0 R2
     1557 LOADN                            R15 65
     1558 JUMPIFNOTLE                      R15 R14 ; [+5]
     1560 GETTABLE                         R14 R0 R2
     1561 LOADN                            R15 70
     1562 JUMPIFLE                         R14 R15 ; [+9]
     1564 GETTABLE                         R14 R0 R2
     1565 LOADN                            R15 97
     1566 JUMPIFNOTLE                      R15 R14 ; [+7]
     1568 GETTABLE                         R14 R0 R2
     1569 LOADN                            R15 102
     1570 JUMPIFNOTLE                      R14 R15 ; [+3]
     1572 ADDK                             R2 R2 K9 [1]
     1573 JUMPBACK                         ; [-28]
     1574 GETTABLE                         R14 R0 R2
     1575 JUMPIFNOTEQKN                    R14 K95 [125] ; [+3]
     1577 JUMPIFNOTEQ                      R2 R13 ; [+3]
     1579 LOADK                            R14 K107 ["malformed Unicode code point"]
     1580 RETURN                           R14 1
     1581 GETTABLEKS                       R16 R0 K16 ["s"]
     1583 MOVE                             R17 R2
     1584 GETIMPORT                        R18 K19 [utf8.offset]
     1586 MOVE                             R19 R16
     1587 MOVE                             R20 R17
     1588 CALL                             R18 2 1
     1589 MOVE                             R17 R18
     1590 GETIMPORT                        R20 K19 [utf8.offset]
     1592 MOVE                             R21 R16
     1593 MOVE                             R22 R13
     1594 CALL                             R20 2 1
     1595 MOVE                             R21 R17
     1596 JUMPIFNOT                        R21 ; [+1]
     1597 SUBK                             R21 R17 K9 [1]
     1598 FASTCALL3                        STRING_SUB R16 R20 R21
     1600 MOVE                             R19 R16
     1601 GETIMPORT                        R18 K22 [string.sub]
     1603 CALL                             R18 3 1
     1604 MOVE                             R15 R18
     1605 FASTCALL1                        TONUMBER R15 ; [+2]
     1606 GETIMPORT                        R14 K52 [tonumber]
     1608 CALL                             R14 1 1
     1609 LOADN                            R17 1
     1610 FASTCALL3                        TABLE_INSERT R12 R17 R14
     1612 MOVE                             R16 R12
     1613 MOVE                             R18 R14
     1614 GETIMPORT                        R15 K68 [table.insert]
     1616 CALL                             R15 3 0
     1617 JUMP                             ; [+286]
     1618 LOADK                            R13 K108 ["invalid escape sequence"]
     1619 RETURN                           R13 1
     1620 JUMP                             ; [+283]
     1621 GETTABLE                         R13 R0 R2
     1622 JUMPIFEQKN                       R13 K57 [80] ; [+4]
     1624 GETTABLE                         R13 R0 R2
     1625 JUMPIFNOTEQKN                    R13 K109 [112] ; [+146]
     1627 GETUPVAL                         R14 0
     1628 GETTABLEKS                       R13 R14 K1 ["unicodeData"]
     1630 JUMPIF                           R13 ; [+2]
     1631 LOADK                            R13 K110 ["options.unicodeData cannot be turned off when using \\p"]
     1632 RETURN                           R13 1
     1633 ADDK                             R2 R2 K9 [1]
     1634 GETTABLE                         R13 R0 R2
     1635 JUMPIFEQKN                       R13 K94 [123] ; [+26]
     1637 GETIMPORT                        R13 K112 [utf8.char]
     1639 GETTABLE                         R15 R0 R2
     1640 ORK                              R14 R15 K113 [0]
     1641 CALL                             R13 1 1
     1642 GETUPVAL                         R15 7
     1643 GETTABLE                         R14 R15 R13
     1644 JUMPIF                           R14 ; [+2]
     1645 LOADK                            R14 K114 ["unknown or malformed script name"]
     1646 RETURN                           R14 1
     1647 LOADN                            R16 1
     1648 NEWTABLE                         R17 0 3
     1650 LOADK                            R18 K115 ["category"]
     1651 LOADB                            R19 0
     1652 MOVE                             R20 R13
     1653 SETLIST                          R17 R18 3 [1]
     1655 FASTCALL3                        TABLE_INSERT R12 R16 R17
     1657 MOVE                             R15 R12
     1658 GETIMPORT                        R14 K68 [table.insert]
     1660 CALL                             R14 3 0
     1661 JUMP                             ; [+242]
     1662 GETTABLE                         R14 R0 R2
     1663 JUMPIFEQKN                       R14 K57 [80] ; [+2]
     1665 LOADB                            R13 0 +1
     1666 LOADB                            R13 1
     1667 ADDK                             R2 R2 K9 [1]
     1668 GETTABLE                         R14 R0 R2
     1669 JUMPIFNOTEQKN                    R14 K81 [94] ; [+3]
     1671 ADDK                             R2 R2 K9 [1]
     1672 NOT                              R13 R13
     1673 MOVE                             R14 R2
     1674 GETTABLE                         R15 R0 R2
     1675 JUMPIFNOT                        R15 ; [+29]
     1676 GETTABLE                         R15 R0 R2
     1677 LOADN                            R16 48
     1678 JUMPIFNOTLE                      R16 R15 ; [+5]
     1680 GETTABLE                         R15 R0 R2
     1681 LOADN                            R16 57
     1682 JUMPIFLE                         R15 R16 ; [+20]
     1684 GETTABLE                         R15 R0 R2
     1685 LOADN                            R16 65
     1686 JUMPIFNOTLE                      R16 R15 ; [+5]
     1688 GETTABLE                         R15 R0 R2
     1689 LOADN                            R16 90
     1690 JUMPIFLE                         R15 R16 ; [+12]
     1692 GETTABLE                         R15 R0 R2
     1693 LOADN                            R16 97
     1694 JUMPIFNOTLE                      R16 R15 ; [+5]
     1696 GETTABLE                         R15 R0 R2
     1697 LOADN                            R16 122
     1698 JUMPIFLE                         R15 R16 ; [+4]
     1700 GETTABLE                         R15 R0 R2
     1701 JUMPIFNOTEQKN                    R15 K12 [95] ; [+3]
     1703 ADDK                             R2 R2 K9 [1]
     1704 JUMPBACK                         ; [-31]
     1705 GETTABLE                         R15 R0 R2
     1706 JUMPIFEQKN                       R15 K95 [125] ; [+3]
     1708 LOADK                            R15 K114 ["unknown or malformed script name"]
     1709 RETURN                           R15 1
     1710 GETTABLEKS                       R16 R0 K16 ["s"]
     1712 MOVE                             R17 R2
     1713 GETIMPORT                        R18 K19 [utf8.offset]
     1715 MOVE                             R19 R16
     1716 MOVE                             R20 R17
     1717 CALL                             R18 2 1
     1718 MOVE                             R17 R18
     1719 GETIMPORT                        R20 K19 [utf8.offset]
     1721 MOVE                             R21 R16
     1722 MOVE                             R22 R14
     1723 CALL                             R20 2 1
     1724 MOVE                             R21 R17
     1725 JUMPIFNOT                        R21 ; [+1]
     1726 SUBK                             R21 R17 K9 [1]
     1727 FASTCALL3                        STRING_SUB R16 R20 R21
     1729 MOVE                             R19 R16
     1730 GETIMPORT                        R18 K22 [string.sub]
     1732 CALL                             R18 3 1
     1733 MOVE                             R15 R18
     1734 GETUPVAL                         R17 8
     1735 GETTABLE                         R16 R17 R15
     1736 JUMPIFNOT                        R16 ; [+15]
     1737 LOADN                            R19 1
     1738 NEWTABLE                         R20 0 3
     1740 LOADK                            R21 K116 ["charset"]
     1741 MOVE                             R22 R13
     1742 MOVE                             R23 R16
     1743 SETLIST                          R20 R21 3 [1]
     1745 FASTCALL3                        TABLE_INSERT R12 R19 R20
     1747 MOVE                             R18 R12
     1748 GETIMPORT                        R17 K68 [table.insert]
     1750 CALL                             R17 3 0
     1751 JUMP                             ; [+152]
     1752 GETUPVAL                         R18 7
     1753 GETTABLE                         R17 R18 R15
     1754 JUMPIF                           R17 ; [+2]
     1755 LOADK                            R17 K114 ["unknown or malformed script name"]
     1756 RETURN                           R17 1
     1757 LOADN                            R19 1
     1758 NEWTABLE                         R20 0 3
     1760 LOADK                            R21 K115 ["category"]
     1761 MOVE                             R22 R13
     1762 MOVE                             R23 R15
     1763 SETLIST                          R20 R21 3 [1]
     1765 FASTCALL3                        TABLE_INSERT R12 R19 R20
     1767 MOVE                             R18 R12
     1768 GETIMPORT                        R17 K68 [table.insert]
     1770 CALL                             R17 3 0
     1771 JUMP                             ; [+132]
     1772 GETTABLE                         R13 R0 R2
     1773 JUMPIFNOTEQKN                    R13 K117 [111] ; [+72]
     1775 ADDK                             R2 R2 K9 [1]
     1776 GETTABLE                         R13 R0 R2
     1777 JUMPIFEQKN                       R13 K94 [123] ; [+3]
     1779 LOADK                            R13 K118 ["malformed octal code"]
     1780 RETURN                           R13 1
     1781 ADDK                             R2 R2 K9 [1]
     1782 MOVE                             R13 R2
     1783 GETTABLE                         R14 R0 R2
     1784 JUMPIFNOT                        R14 ; [+10]
     1785 GETTABLE                         R14 R0 R2
     1786 LOADN                            R15 48
     1787 JUMPIFNOTLE                      R15 R14 ; [+7]
     1789 GETTABLE                         R14 R0 R2
     1790 LOADN                            R15 55
     1791 JUMPIFNOTLE                      R14 R15 ; [+3]
     1793 ADDK                             R2 R2 K9 [1]
     1794 JUMPBACK                         ; [-12]
     1795 GETTABLE                         R14 R0 R2
     1796 JUMPIFNOTEQKN                    R14 K95 [125] ; [+3]
     1798 JUMPIFNOTEQ                      R2 R13 ; [+3]
     1800 LOADK                            R14 K118 ["malformed octal code"]
     1801 RETURN                           R14 1
     1802 GETTABLEKS                       R16 R0 K16 ["s"]
     1804 MOVE                             R17 R2
     1805 GETIMPORT                        R18 K19 [utf8.offset]
     1807 MOVE                             R19 R16
     1808 MOVE                             R20 R17
     1809 CALL                             R18 2 1
     1810 MOVE                             R17 R18
     1811 GETIMPORT                        R20 K19 [utf8.offset]
     1813 MOVE                             R21 R16
     1814 MOVE                             R22 R13
     1815 CALL                             R20 2 1
     1816 MOVE                             R21 R17
     1817 JUMPIFNOT                        R21 ; [+1]
     1818 SUBK                             R21 R17 K9 [1]
     1819 FASTCALL3                        STRING_SUB R16 R20 R21
     1821 MOVE                             R19 R16
     1822 GETIMPORT                        R18 K22 [string.sub]
     1824 CALL                             R18 3 1
     1825 MOVE                             R15 R18
     1826 FASTCALL2K                       TONUMBER R15 K119 ; [+4]
     1828 LOADK                            R16 K119 [8]
     1829 GETIMPORT                        R14 K52 [tonumber]
     1831 CALL                             R14 2 1
     1832 LOADK                            R15 K120 [65535]
     1833 JUMPIFNOTLT                      R15 R14 ; [+3]
     1835 LOADK                            R15 K97 ["character offset too large"]
     1836 RETURN                           R15 1
     1837 LOADN                            R17 1
     1838 FASTCALL3                        TABLE_INSERT R12 R17 R14
     1840 MOVE                             R16 R12
     1841 MOVE                             R18 R14
     1842 GETIMPORT                        R15 K68 [table.insert]
     1844 CALL                             R15 3 0
     1845 JUMP                             ; [+58]
     1846 GETUPVAL                         R14 5
     1847 GETTABLE                         R15 R0 R2
     1848 GETTABLE                         R13 R14 R15
     1849 LOADN                            R16 1
     1850 FASTCALL1                        TYPE R13 ; [+3]
     1851 MOVE                             R19 R13
     1852 GETIMPORT                        R18 K70 [type]
     1854 CALL                             R18 1 1
     1855 JUMPIFNOTEQKS                    R18 K20 ["string"] ; [+9]
     1857 NEWTABLE                         R17 0 3
     1859 LOADK                            R18 K93 ["class"]
     1860 MOVE                             R19 R13
     1861 LOADB                            R20 0
     1862 SETLIST                          R17 R18 3 [1]
     1864 JUMPIF                           R17 ; [+3]
     1865 MOVE                             R17 R13
     1866 JUMPIF                           R17 ; [+1]
     1867 GETTABLE                         R17 R0 R2
     1868 FASTCALL3                        TABLE_INSERT R12 R16 R17
     1870 MOVE                             R15 R12
     1871 GETIMPORT                        R14 K68 [table.insert]
     1873 CALL                             R14 3 0
     1874 JUMP                             ; [+29]
     1875 GETTABLEKS                       R13 R1 K121 ["ignoreCase"]
     1877 JUMPIFNOT                        R13 ; [+18]
     1878 GETTABLE                         R13 R0 R2
     1879 LOADN                            R14 97
     1880 JUMPIFNOTLE                      R14 R13 ; [+15]
     1882 GETTABLE                         R13 R0 R2
     1883 LOADN                            R14 122
     1884 JUMPIFNOTLE                      R13 R14 ; [+11]
     1886 LOADN                            R15 1
     1887 GETTABLE                         R17 R0 R2
     1888 SUBK                             R16 R17 K122 [32]
     1889 FASTCALL3                        TABLE_INSERT R12 R15 R16
     1891 MOVE                             R14 R12
     1892 GETIMPORT                        R13 K68 [table.insert]
     1894 CALL                             R13 3 0
     1895 JUMP                             ; [+8]
     1896 LOADN                            R15 1
     1897 GETTABLE                         R16 R0 R2
     1898 FASTCALL3                        TABLE_INSERT R12 R15 R16
     1900 MOVE                             R14 R12
     1901 GETIMPORT                        R13 K68 [table.insert]
     1903 CALL                             R13 3 0
     1904 ADDK                             R2 R2 K9 [1]
     1905 JUMPBACK                         ; [-1119]
     1906 SUBK                             R14 R2 K9 [1]
     1907 GETTABLE                         R13 R0 R14
     1908 JUMPIFNOTEQ                      R13 R10 ; [+10]
     1910 SUBK                             R13 R2 K9 [1]
     1911 JUMPIFEQ                         R13 R11 ; [+7]
     1913 JUMPIFNOTEQKN                    R10 K13 [58] ; [+3]
     1915 LOADK                            R13 K123 ["POSIX named classes are only support within a character set"]
     1916 RETURN                           R13 1
     1917 LOADK                            R13 K90 ["POSIX collating elements aren't supported"]
     1918 RETURN                           R13 1
     1919 GETTABLEN                        R13 R12 2
     1920 JUMPIF                           R13 ; [+9]
     1921 JUMPIF                           R9 ; [+8]
     1922 GETTABLEN                        R15 R12 1
     1923 FASTCALL2                        TABLE_INSERT R5 R15 ; [+4]
     1925 MOVE                             R14 R5
     1926 GETIMPORT                        R13 K68 [table.insert]
     1928 CALL                             R13 2 0
     1929 JUMP                             ; [+1207]
     1930 NEWTABLE                         R15 0 3
     1932 LOADK                            R16 K116 ["charset"]
     1933 MOVE                             R17 R9
     1934 MOVE                             R18 R12
     1935 SETLIST                          R15 R16 3 [1]
     1937 FASTCALL2                        TABLE_INSERT R5 R15 ; [+4]
     1939 MOVE                             R14 R5
     1940 GETIMPORT                        R13 K68 [table.insert]
     1942 CALL                             R13 2 0
     1943 JUMP                             ; [+1193]
     1944 JUMPIFNOTEQKN                    R8 K82 [92] ; [+824]
     1946 ADDK                             R2 R2 K9 [1]
     1947 GETTABLE                         R9 R0 R2
     1948 JUMPIF                           R9 ; [+2]
     1949 LOADK                            R10 K124 ["pattern may not end with a trailing backslash"]
     1950 RETURN                           R10 1
     1951 LOADN                            R10 48
     1952 JUMPIFNOTLE                      R10 R9 ; [+129]
     1954 LOADN                            R10 57
     1955 JUMPIFNOTLE                      R9 R10 ; [+126]
     1957 MOVE                             R10 R2
     1958 ADDK                             R12 R2 K9 [1]
     1959 GETTABLE                         R11 R0 R12
     1960 JUMPIFNOT                        R11 ; [+12]
     1961 ADDK                             R12 R2 K9 [1]
     1962 GETTABLE                         R11 R0 R12
     1963 LOADN                            R12 48
     1964 JUMPIFNOTLE                      R12 R11 ; [+8]
     1966 ADDK                             R12 R2 K9 [1]
     1967 GETTABLE                         R11 R0 R12
     1968 LOADN                            R12 57
     1969 JUMPIFNOTLE                      R11 R12 ; [+3]
     1971 ADDK                             R2 R2 K9 [1]
     1972 JUMPBACK                         ; [-15]
     1973 GETTABLEKS                       R13 R0 K16 ["s"]
     1975 ADDK                             R14 R2 K9 [1]
     1976 GETIMPORT                        R15 K19 [utf8.offset]
     1978 MOVE                             R16 R13
     1979 MOVE                             R17 R14
     1980 CALL                             R15 2 1
     1981 MOVE                             R14 R15
     1982 GETIMPORT                        R17 K19 [utf8.offset]
     1984 MOVE                             R18 R13
     1985 MOVE                             R19 R10
     1986 CALL                             R17 2 1
     1987 MOVE                             R18 R14
     1988 JUMPIFNOT                        R18 ; [+1]
     1989 SUBK                             R18 R14 K9 [1]
     1990 FASTCALL3                        STRING_SUB R13 R17 R18
     1992 MOVE                             R16 R13
     1993 GETIMPORT                        R15 K22 [string.sub]
     1995 CALL                             R15 3 1
     1996 MOVE                             R12 R15
     1997 FASTCALL1                        TONUMBER R12 ; [+2]
     1998 GETIMPORT                        R11 K52 [tonumber]
     2000 CALL                             R11 1 1
     2001 JUMPIFNOTLT                      R4 R11 ; [+67]
     2003 JUMPIFEQ                         R2 R10 ; [+65]
     2005 MOVE                             R2 R10
     2006 LOADNIL                          R12
     2007 LOADNIL                          R13
     2008 LOADNIL                          R14
     2009 GETTABLE                         R15 R0 R2
     2010 LOADN                            R16 55
     2011 JUMPIFNOTLE                      R15 R16 ; [+33]
     2013 GETTABLE                         R15 R0 R2
     2014 SUBK                             R12 R15 K48 [48]
     2015 ADDK                             R2 R2 K9 [1]
     2016 GETTABLE                         R15 R0 R2
     2017 JUMPIFNOT                        R15 ; [+26]
     2018 GETTABLE                         R15 R0 R2
     2019 LOADN                            R16 48
     2020 JUMPIFNOTLE                      R16 R15 ; [+23]
     2022 GETTABLE                         R15 R0 R2
     2023 LOADN                            R16 55
     2024 JUMPIFNOTLE                      R15 R16 ; [+19]
     2026 GETTABLE                         R15 R0 R2
     2027 SUBK                             R13 R15 K48 [48]
     2028 ADDK                             R2 R2 K9 [1]
     2029 GETTABLE                         R15 R0 R2
     2030 JUMPIFNOT                        R15 ; [+11]
     2031 GETTABLE                         R15 R0 R2
     2032 LOADN                            R16 48
     2033 JUMPIFNOTLE                      R16 R15 ; [+8]
     2035 GETTABLE                         R15 R0 R2
     2036 LOADN                            R16 55
     2037 JUMPIFNOTLE                      R15 R16 ; [+4]
     2039 GETTABLE                         R15 R0 R2
     2040 SUBK                             R14 R15 K48 [48]
     2041 JUMP                             ; [+3]
     2042 SUBK                             R2 R2 K9 [1]
     2043 JUMP                             ; [+1]
     2044 SUBK                             R2 R2 K9 [1]
     2045 JUMPIFNOT                        R12 ; [+15]
     2046 JUMPIFNOT                        R13 ; [+12]
     2047 JUMPIFNOT                        R14 ; [+7]
     2048 LOADN                            R20 64
     2049 MUL                              R19 R20 R12
     2050 LOADN                            R21 8
     2051 MUL                              R20 R21 R13
     2052 ADD                              R18 R19 R20
     2053 ADD                              R17 R18 R14
     2054 JUMPIF                           R17 ; [+7]
     2055 LOADN                            R19 8
     2056 MUL                              R18 R19 R12
     2057 ADD                              R17 R18 R13
     2058 JUMPIF                           R17 ; [+3]
     2059 MOVE                             R17 R12
     2060 JUMPIF                           R17 ; [+1]
     2061 GETTABLE                         R17 R0 R10
     2062 FASTCALL2                        TABLE_INSERT R5 R17 ; [+4]
     2064 MOVE                             R16 R5
     2065 GETIMPORT                        R15 K68 [table.insert]
     2067 CALL                             R15 2 0
     2068 JUMP                             ; [+1068]
     2069 NEWTABLE                         R14 0 2
     2071 LOADK                            R15 K59 ["backref"]
     2072 MOVE                             R16 R11
     2073 SETLIST                          R14 R15 2 [1]
     2075 FASTCALL2                        TABLE_INSERT R5 R14 ; [+4]
     2077 MOVE                             R13 R5
     2078 GETIMPORT                        R12 K68 [table.insert]
     2080 CALL                             R12 2 0
     2081 JUMP                             ; [+1055]
     2082 JUMPIFNOTEQKN                    R9 K99 [69] ; [+2]
     2084 JUMP                             ; [+1052]
     2085 JUMPIFNOTEQKN                    R9 K100 [81] ; [+30]
     2087 ADDK                             R10 R2 K9 [1]
     2088 GETIMPORT                        R11 K46 [table.find]
     2090 MOVE                             R12 R0
     2091 LOADN                            R13 92
     2092 ADDK                             R14 R2 K9 [1]
     2093 CALL                             R11 3 1
     2094 MOVE                             R2 R11
     2095 JUMPIFNOT                        R2 ; [+5]
     2096 ADDK                             R12 R2 K9 [1]
     2097 GETTABLE                         R11 R0 R12
     2098 JUMPIFEQKN                       R11 K99 [69] ; [+2]
     2100 JUMPBACK                         ; [-13]
     2101 GETIMPORT                        R11 K102 [table.move]
     2103 MOVE                             R12 R0
     2104 MOVE                             R13 R10
     2105 JUMPIFNOT                        R2 ; [+2]
     2106 SUBK                             R14 R2 K9 [1]
     2107 JUMPIF                           R14 ; [+1]
     2108 LENGTH                           R14 R0
     2109 LENGTH                           R16 R5
     2110 ADDK                             R15 R16 K9 [1]
     2111 MOVE                             R16 R5
     2112 CALL                             R11 5 0
     2113 JUMPIFNOT                        R2 ; [+1025]
     2114 ADDK                             R2 R2 K9 [1]
     2115 JUMP                             ; [+1021]
     2116 JUMPIFNOTEQKN                    R9 K103 [78] ; [+98]
     2118 ADDK                             R11 R2 K9 [1]
     2119 GETTABLE                         R10 R0 R11
     2120 JUMPIFNOTEQKN                    R10 K94 [123] ; [+85]
     2122 ADDK                             R11 R2 K11 [2]
     2123 GETTABLE                         R10 R0 R11
     2124 JUMPIFNOTEQKN                    R10 K104 [85] ; [+81]
     2126 ADDK                             R11 R2 K91 [3]
     2127 GETTABLE                         R10 R0 R11
     2128 JUMPIFNOTEQKN                    R10 K105 [43] ; [+77]
     2130 GETTABLEKS                       R10 R1 K0 ["unicode"]
     2132 JUMPIFNOT                        R10 ; [+73]
     2133 ADDK                             R2 R2 K106 [4]
     2134 MOVE                             R10 R2
     2135 GETTABLE                         R11 R0 R2
     2136 JUMPIFNOT                        R11 ; [+26]
     2137 GETTABLE                         R11 R0 R2
     2138 LOADN                            R12 48
     2139 JUMPIFNOTLE                      R12 R11 ; [+5]
     2141 GETTABLE                         R11 R0 R2
     2142 LOADN                            R12 57
     2143 JUMPIFLE                         R11 R12 ; [+17]
     2145 GETTABLE                         R11 R0 R2
     2146 LOADN                            R12 65
     2147 JUMPIFNOTLE                      R12 R11 ; [+5]
     2149 GETTABLE                         R11 R0 R2
     2150 LOADN                            R12 70
     2151 JUMPIFLE                         R11 R12 ; [+9]
     2153 GETTABLE                         R11 R0 R2
     2154 LOADN                            R12 97
     2155 JUMPIFNOTLE                      R12 R11 ; [+7]
     2157 GETTABLE                         R11 R0 R2
     2158 LOADN                            R12 102
     2159 JUMPIFNOTLE                      R11 R12 ; [+3]
     2161 ADDK                             R2 R2 K9 [1]
     2162 JUMPBACK                         ; [-28]
     2163 GETTABLE                         R11 R0 R2
     2164 JUMPIFNOTEQKN                    R11 K95 [125] ; [+3]
     2166 JUMPIFNOTEQ                      R2 R10 ; [+3]
     2168 LOADK                            R11 K107 ["malformed Unicode code point"]
     2169 RETURN                           R11 1
     2170 GETTABLEKS                       R13 R0 K16 ["s"]
     2172 MOVE                             R14 R2
     2173 GETIMPORT                        R15 K19 [utf8.offset]
     2175 MOVE                             R16 R13
     2176 MOVE                             R17 R14
     2177 CALL                             R15 2 1
     2178 MOVE                             R14 R15
     2179 GETIMPORT                        R17 K19 [utf8.offset]
     2181 MOVE                             R18 R13
     2182 MOVE                             R19 R10
     2183 CALL                             R17 2 1
     2184 MOVE                             R18 R14
     2185 JUMPIFNOT                        R18 ; [+1]
     2186 SUBK                             R18 R14 K9 [1]
     2187 FASTCALL3                        STRING_SUB R13 R17 R18
     2189 MOVE                             R16 R13
     2190 GETIMPORT                        R15 K22 [string.sub]
     2192 CALL                             R15 3 1
     2193 MOVE                             R12 R15
     2194 FASTCALL1                        TONUMBER R12 ; [+2]
     2195 GETIMPORT                        R11 K52 [tonumber]
     2197 CALL                             R11 1 1
     2198 FASTCALL2                        TABLE_INSERT R5 R11 ; [+5]
     2200 MOVE                             R13 R5
     2201 MOVE                             R14 R11
     2202 GETIMPORT                        R12 K68 [table.insert]
     2204 CALL                             R12 2 0
     2205 JUMP                             ; [+931]
     2206 GETUPVAL                         R13 5
     2207 GETTABLEN                        R12 R13 78
     2208 FASTCALL2                        TABLE_INSERT R5 R12 ; [+4]
     2210 MOVE                             R11 R5
     2211 GETIMPORT                        R10 K68 [table.insert]
     2213 CALL                             R10 2 0
     2214 JUMP                             ; [+922]
     2215 JUMPIFEQKN                       R9 K57 [80] ; [+3]
     2217 JUMPIFNOTEQKN                    R9 K109 [112] ; [+142]
     2219 GETUPVAL                         R11 0
     2220 GETTABLEKS                       R10 R11 K1 ["unicodeData"]
     2222 JUMPIF                           R10 ; [+2]
     2223 LOADK                            R10 K110 ["options.unicodeData cannot be turned off when using \\p"]
     2224 RETURN                           R10 1
     2225 ADDK                             R2 R2 K9 [1]
     2226 GETTABLE                         R10 R0 R2
     2227 JUMPIFEQKN                       R10 K94 [123] ; [+25]
     2229 GETIMPORT                        R10 K112 [utf8.char]
     2231 GETTABLE                         R12 R0 R2
     2232 ORK                              R11 R12 K113 [0]
     2233 CALL                             R10 1 1
     2234 GETUPVAL                         R12 7
     2235 GETTABLE                         R11 R12 R10
     2236 JUMPIF                           R11 ; [+2]
     2237 LOADK                            R11 K114 ["unknown or malformed script name"]
     2238 RETURN                           R11 1
     2239 NEWTABLE                         R13 0 3
     2241 LOADK                            R14 K115 ["category"]
     2242 LOADB                            R15 0
     2243 MOVE                             R16 R10
     2244 SETLIST                          R13 R14 3 [1]
     2246 FASTCALL2                        TABLE_INSERT R5 R13 ; [+4]
     2248 MOVE                             R12 R5
     2249 GETIMPORT                        R11 K68 [table.insert]
     2251 CALL                             R11 2 0
     2252 JUMP                             ; [+884]
     2253 JUMPIFEQKN                       R9 K57 [80] ; [+2]
     2255 LOADB                            R10 0 +1
     2256 LOADB                            R10 1
     2257 ADDK                             R2 R2 K9 [1]
     2258 GETTABLE                         R11 R0 R2
     2259 JUMPIFNOTEQKN                    R11 K81 [94] ; [+3]
     2261 ADDK                             R2 R2 K9 [1]
     2262 NOT                              R10 R10
     2263 MOVE                             R11 R2
     2264 GETTABLE                         R12 R0 R2
     2265 JUMPIFNOT                        R12 ; [+29]
     2266 GETTABLE                         R12 R0 R2
     2267 LOADN                            R13 48
     2268 JUMPIFNOTLE                      R13 R12 ; [+5]
     2270 GETTABLE                         R12 R0 R2
     2271 LOADN                            R13 57
     2272 JUMPIFLE                         R12 R13 ; [+20]
     2274 GETTABLE                         R12 R0 R2
     2275 LOADN                            R13 65
     2276 JUMPIFNOTLE                      R13 R12 ; [+5]
     2278 GETTABLE                         R12 R0 R2
     2279 LOADN                            R13 90
     2280 JUMPIFLE                         R12 R13 ; [+12]
     2282 GETTABLE                         R12 R0 R2
     2283 LOADN                            R13 97
     2284 JUMPIFNOTLE                      R13 R12 ; [+5]
     2286 GETTABLE                         R12 R0 R2
     2287 LOADN                            R13 122
     2288 JUMPIFLE                         R12 R13 ; [+4]
     2290 GETTABLE                         R12 R0 R2
     2291 JUMPIFNOTEQKN                    R12 K12 [95] ; [+3]
     2293 ADDK                             R2 R2 K9 [1]
     2294 JUMPBACK                         ; [-31]
     2295 GETTABLE                         R12 R0 R2
     2296 JUMPIFEQKN                       R12 K95 [125] ; [+3]
     2298 LOADK                            R12 K114 ["unknown or malformed script name"]
     2299 RETURN                           R12 1
     2300 GETTABLEKS                       R13 R0 K16 ["s"]
     2302 MOVE                             R14 R2
     2303 GETIMPORT                        R15 K19 [utf8.offset]
     2305 MOVE                             R16 R13
     2306 MOVE                             R17 R14
     2307 CALL                             R15 2 1
     2308 MOVE                             R14 R15
     2309 GETIMPORT                        R17 K19 [utf8.offset]
     2311 MOVE                             R18 R13
     2312 MOVE                             R19 R11
     2313 CALL                             R17 2 1
     2314 MOVE                             R18 R14
     2315 JUMPIFNOT                        R18 ; [+1]
     2316 SUBK                             R18 R14 K9 [1]
     2317 FASTCALL3                        STRING_SUB R13 R17 R18
     2319 MOVE                             R16 R13
     2320 GETIMPORT                        R15 K22 [string.sub]
     2322 CALL                             R15 3 1
     2323 MOVE                             R12 R15
     2324 GETUPVAL                         R14 8
     2325 GETTABLE                         R13 R14 R12
     2326 JUMPIFNOT                        R13 ; [+14]
     2327 NEWTABLE                         R16 0 3
     2329 LOADK                            R17 K116 ["charset"]
     2330 MOVE                             R18 R10
     2331 MOVE                             R19 R13
     2332 SETLIST                          R16 R17 3 [1]
     2334 FASTCALL2                        TABLE_INSERT R5 R16 ; [+4]
     2336 MOVE                             R15 R5
     2337 GETIMPORT                        R14 K68 [table.insert]
     2339 CALL                             R14 2 0
     2340 JUMP                             ; [+796]
     2341 GETUPVAL                         R15 7
     2342 GETTABLE                         R14 R15 R12
     2343 JUMPIF                           R14 ; [+2]
     2344 LOADK                            R14 K114 ["unknown or malformed script name"]
     2345 RETURN                           R14 1
     2346 NEWTABLE                         R16 0 3
     2348 LOADK                            R17 K115 ["category"]
     2349 MOVE                             R18 R10
     2350 MOVE                             R19 R12
     2351 SETLIST                          R16 R17 3 [1]
     2353 FASTCALL2                        TABLE_INSERT R5 R16 ; [+4]
     2355 MOVE                             R15 R5
     2356 GETIMPORT                        R14 K68 [table.insert]
     2358 CALL                             R14 2 0
     2359 JUMP                             ; [+777]
     2360 JUMPIFNOTEQKN                    R9 K125 [103] ; [+115]
     2362 ADDK                             R11 R2 K9 [1]
     2363 GETTABLE                         R10 R0 R11
     2364 JUMPIFEQKN                       R10 K94 [123] ; [+11]
     2366 ADDK                             R11 R2 K9 [1]
     2367 GETTABLE                         R10 R0 R11
     2368 LOADN                            R11 48
     2369 JUMPIFNOTLE                      R11 R10 ; [+106]
     2371 ADDK                             R11 R2 K9 [1]
     2372 GETTABLE                         R10 R0 R11
     2373 LOADN                            R11 57
     2374 JUMPIFNOTLE                      R10 R11 ; [+101]
     2376 LOADB                            R10 0
     2377 ADDK                             R2 R2 K9 [1]
     2378 GETTABLE                         R11 R0 R2
     2379 JUMPIFNOTEQKN                    R11 K94 [123] ; [+4]
     2381 ADDK                             R2 R2 K9 [1]
     2382 LOADB                            R10 1
     2383 JUMP                             ; [+10]
     2384 GETTABLE                         R11 R0 R2
     2385 LOADN                            R12 48
     2386 JUMPIFLT                         R11 R12 ; [+5]
     2388 GETTABLE                         R11 R0 R2
     2389 LOADN                            R12 57
     2390 JUMPIFNOTLT                      R12 R11 ; [+3]
     2392 LOADK                            R11 K126 ["malformed reference code"]
     2393 RETURN                           R11 1
     2394 MOVE                             R11 R2
     2395 GETTABLE                         R12 R0 R2
     2396 JUMPIFNOT                        R12 ; [+26]
     2397 GETTABLE                         R12 R0 R2
     2398 LOADN                            R13 48
     2399 JUMPIFNOTLE                      R13 R12 ; [+5]
     2401 GETTABLE                         R12 R0 R2
     2402 LOADN                            R13 57
     2403 JUMPIFLE                         R12 R13 ; [+17]
     2405 GETTABLE                         R12 R0 R2
     2406 LOADN                            R13 65
     2407 JUMPIFNOTLE                      R13 R12 ; [+5]
     2409 GETTABLE                         R12 R0 R2
     2410 LOADN                            R13 70
     2411 JUMPIFLE                         R12 R13 ; [+9]
     2413 GETTABLE                         R12 R0 R2
     2414 LOADN                            R13 97
     2415 JUMPIFNOTLE                      R13 R12 ; [+7]
     2417 GETTABLE                         R12 R0 R2
     2418 LOADN                            R13 102
     2419 JUMPIFNOTLE                      R12 R13 ; [+3]
     2421 ADDK                             R2 R2 K9 [1]
     2422 JUMPBACK                         ; [-28]
     2423 JUMPIFNOT                        R10 ; [+5]
     2424 GETTABLE                         R12 R0 R2
     2425 JUMPIFEQKN                       R12 K95 [125] ; [+3]
     2427 LOADK                            R12 K126 ["malformed reference code"]
     2428 RETURN                           R12 1
     2429 GETTABLEKS                       R14 R0 K16 ["s"]
     2431 JUMPIFNOT                        R10 ; [+2]
     2432 LOADN                            R16 0
     2433 JUMP                             ; [+1]
     2434 LOADN                            R16 1
     2435 ADD                              R15 R2 R16
     2436 GETIMPORT                        R16 K19 [utf8.offset]
     2438 MOVE                             R17 R14
     2439 MOVE                             R18 R15
     2440 CALL                             R16 2 1
     2441 MOVE                             R15 R16
     2442 GETIMPORT                        R18 K19 [utf8.offset]
     2444 MOVE                             R19 R14
     2445 MOVE                             R20 R11
     2446 CALL                             R18 2 1
     2447 MOVE                             R19 R15
     2448 JUMPIFNOT                        R19 ; [+1]
     2449 SUBK                             R19 R15 K9 [1]
     2450 FASTCALL3                        STRING_SUB R14 R18 R19
     2452 MOVE                             R17 R14
     2453 GETIMPORT                        R16 K22 [string.sub]
     2455 CALL                             R16 3 1
     2456 MOVE                             R13 R16
     2457 FASTCALL1                        TONUMBER R13 ; [+2]
     2458 GETIMPORT                        R12 K52 [tonumber]
     2460 CALL                             R12 1 1
     2461 NEWTABLE                         R15 0 2
     2463 LOADK                            R16 K59 ["backref"]
     2464 MOVE                             R17 R12
     2465 SETLIST                          R15 R16 2 [1]
     2467 FASTCALL2                        TABLE_INSERT R5 R15 ; [+4]
     2469 MOVE                             R14 R5
     2470 GETIMPORT                        R13 K68 [table.insert]
     2472 CALL                             R13 2 0
     2473 JUMPIF                           R10 ; [+663]
     2474 SUBK                             R2 R2 K9 [1]
     2475 JUMP                             ; [+661]
     2476 JUMPIFNOTEQKN                    R9 K117 [111] ; [+72]
     2478 ADDK                             R2 R2 K9 [1]
     2479 ADDK                             R11 R2 K9 [1]
     2480 GETTABLE                         R10 R0 R11
     2481 JUMPIFEQKN                       R10 K94 [123] ; [+3]
     2483 LOADK                            R10 K118 ["malformed octal code"]
     2484 RETURN                           R10 1
     2485 ADDK                             R2 R2 K9 [1]
     2486 MOVE                             R10 R2
     2487 GETTABLE                         R11 R0 R2
     2488 JUMPIFNOT                        R11 ; [+10]
     2489 GETTABLE                         R11 R0 R2
     2490 LOADN                            R12 48
     2491 JUMPIFNOTLE                      R12 R11 ; [+7]
     2493 GETTABLE                         R11 R0 R2
     2494 LOADN                            R12 55
     2495 JUMPIFNOTLE                      R11 R12 ; [+3]
     2497 ADDK                             R2 R2 K9 [1]
     2498 JUMPBACK                         ; [-12]
     2499 GETTABLE                         R11 R0 R2
     2500 JUMPIFNOTEQKN                    R11 K95 [125] ; [+3]
     2502 JUMPIFNOTEQ                      R2 R10 ; [+3]
     2504 LOADK                            R11 K118 ["malformed octal code"]
     2505 RETURN                           R11 1
     2506 GETTABLEKS                       R13 R0 K16 ["s"]
     2508 MOVE                             R14 R2
     2509 GETIMPORT                        R15 K19 [utf8.offset]
     2511 MOVE                             R16 R13
     2512 MOVE                             R17 R14
     2513 CALL                             R15 2 1
     2514 MOVE                             R14 R15
     2515 GETIMPORT                        R17 K19 [utf8.offset]
     2517 MOVE                             R18 R13
     2518 MOVE                             R19 R10
     2519 CALL                             R17 2 1
     2520 MOVE                             R18 R14
     2521 JUMPIFNOT                        R18 ; [+1]
     2522 SUBK                             R18 R14 K9 [1]
     2523 FASTCALL3                        STRING_SUB R13 R17 R18
     2525 MOVE                             R16 R13
     2526 GETIMPORT                        R15 K22 [string.sub]
     2528 CALL                             R15 3 1
     2529 MOVE                             R12 R15
     2530 FASTCALL2K                       TONUMBER R12 K119 ; [+4]
     2532 LOADK                            R13 K119 [8]
     2533 GETIMPORT                        R11 K52 [tonumber]
     2535 CALL                             R11 2 1
     2536 LOADK                            R12 K120 [65535]
     2537 JUMPIFNOTLT                      R12 R11 ; [+3]
     2539 LOADK                            R12 K97 ["character offset too large"]
     2540 RETURN                           R12 1
     2541 FASTCALL2                        TABLE_INSERT R5 R11 ; [+5]
     2543 MOVE                             R13 R5
     2544 MOVE                             R14 R11
     2545 GETIMPORT                        R12 K68 [table.insert]
     2547 CALL                             R12 2 0
     2548 JUMP                             ; [+588]
     2549 JUMPIFNOTEQKN                    R9 K88 [120] ; [+206]
     2551 LOADNIL                          R10
     2552 LOADNIL                          R11
     2553 ADDK                             R2 R2 K9 [1]
     2554 GETTABLE                         R12 R0 R2
     2555 JUMPIFNOTEQKN                    R12 K94 [123] ; [+81]
     2557 ADDK                             R2 R2 K9 [1]
     2558 MOVE                             R12 R2
     2559 GETTABLE                         R13 R0 R2
     2560 JUMPIFNOT                        R13 ; [+26]
     2561 GETTABLE                         R13 R0 R2
     2562 LOADN                            R14 48
     2563 JUMPIFNOTLE                      R14 R13 ; [+5]
     2565 GETTABLE                         R13 R0 R2
     2566 LOADN                            R14 57
     2567 JUMPIFLE                         R13 R14 ; [+17]
     2569 GETTABLE                         R13 R0 R2
     2570 LOADN                            R14 65
     2571 JUMPIFNOTLE                      R14 R13 ; [+5]
     2573 GETTABLE                         R13 R0 R2
     2574 LOADN                            R14 70
     2575 JUMPIFLE                         R13 R14 ; [+9]
     2577 GETTABLE                         R13 R0 R2
     2578 LOADN                            R14 97
     2579 JUMPIFNOTLE                      R14 R13 ; [+7]
     2581 GETTABLE                         R13 R0 R2
     2582 LOADN                            R14 102
     2583 JUMPIFNOTLE                      R13 R14 ; [+3]
     2585 ADDK                             R2 R2 K9 [1]
     2586 JUMPBACK                         ; [-28]
     2587 GETTABLE                         R13 R0 R2
     2588 JUMPIFNOTEQKN                    R13 K95 [125] ; [+3]
     2590 JUMPIFNOTEQ                      R2 R12 ; [+3]
     2592 LOADK                            R13 K127 ["malformed hexadecimal code"]
     2593 RETURN                           R13 1
     2594 SUB                              R13 R2 R12
     2595 LOADN                            R14 4
     2596 JUMPIFNOTLT                      R14 R13 ; [+3]
     2598 LOADK                            R13 K97 ["character offset too large"]
     2599 RETURN                           R13 1
     2600 GETTABLEKS                       R17 R0 K16 ["s"]
     2602 MOVE                             R18 R2
     2603 GETIMPORT                        R19 K19 [utf8.offset]
     2605 MOVE                             R20 R17
     2606 MOVE                             R21 R18
     2607 CALL                             R19 2 1
     2608 MOVE                             R18 R19
     2609 GETIMPORT                        R21 K19 [utf8.offset]
     2611 MOVE                             R22 R17
     2612 MOVE                             R23 R12
     2613 CALL                             R21 2 1
     2614 MOVE                             R22 R18
     2615 JUMPIFNOT                        R22 ; [+1]
     2616 SUBK                             R22 R18 K9 [1]
     2617 FASTCALL3                        STRING_SUB R17 R21 R22
     2619 MOVE                             R20 R17
     2620 GETIMPORT                        R19 K22 [string.sub]
     2622 CALL                             R19 3 1
     2623 MOVE                             R16 R19
     2624 FASTCALL2K                       TONUMBER R16 K98 ; [+4]
     2626 LOADK                            R17 K98 [16]
     2627 GETIMPORT                        R15 K52 [tonumber]
     2629 CALL                             R15 2 1
     2630 FASTCALL2                        TABLE_INSERT R5 R15 ; [+4]
     2632 MOVE                             R14 R5
     2633 GETIMPORT                        R13 K68 [table.insert]
     2635 CALL                             R13 2 0
     2636 JUMP                             ; [+500]
     2637 GETTABLE                         R12 R0 R2
     2638 JUMPIFNOT                        R12 ; [+100]
     2639 GETTABLE                         R12 R0 R2
     2640 LOADN                            R13 48
     2641 JUMPIFNOTLE                      R13 R12 ; [+5]
     2643 GETTABLE                         R12 R0 R2
     2644 LOADN                            R13 57
     2645 JUMPIFLE                         R12 R13 ; [+17]
     2647 GETTABLE                         R12 R0 R2
     2648 LOADN                            R13 65
     2649 JUMPIFNOTLE                      R13 R12 ; [+5]
     2651 GETTABLE                         R12 R0 R2
     2652 LOADN                            R13 70
     2653 JUMPIFLE                         R12 R13 ; [+9]
     2655 GETTABLE                         R12 R0 R2
     2656 LOADN                            R13 97
     2657 JUMPIFNOTLE                      R13 R12 ; [+81]
     2659 GETTABLE                         R12 R0 R2
     2660 LOADN                            R13 102
     2661 JUMPIFNOTLE                      R12 R13 ; [+77]
     2663 GETTABLE                         R12 R0 R2
     2664 GETTABLE                         R14 R0 R2
     2665 LOADN                            R15 65
     2666 JUMPIFNOTLE                      R15 R14 ; [+7]
     2668 GETTABLE                         R14 R0 R2
     2669 LOADN                            R15 90
     2670 JUMPIFNOTLE                      R14 R15 ; [+3]
     2672 LOADN                            R13 55
     2673 JUMP                             ; [+11]
     2674 GETTABLE                         R14 R0 R2
     2675 LOADN                            R15 97
     2676 JUMPIFNOTLE                      R15 R14 ; [+7]
     2678 GETTABLE                         R14 R0 R2
     2679 LOADN                            R15 122
     2680 JUMPIFNOTLE                      R14 R15 ; [+3]
     2682 LOADN                            R13 87
     2683 JUMP                             ; [+1]
     2684 LOADN                            R13 48
     2685 SUB                              R10 R12 R13
     2686 ADDK                             R2 R2 K9 [1]
     2687 GETTABLE                         R12 R0 R2
     2688 JUMPIFNOT                        R12 ; [+48]
     2689 GETTABLE                         R12 R0 R2
     2690 LOADN                            R13 48
     2691 JUMPIFNOTLE                      R13 R12 ; [+5]
     2693 GETTABLE                         R12 R0 R2
     2694 LOADN                            R13 57
     2695 JUMPIFLE                         R12 R13 ; [+17]
     2697 GETTABLE                         R12 R0 R2
     2698 LOADN                            R13 65
     2699 JUMPIFNOTLE                      R13 R12 ; [+5]
     2701 GETTABLE                         R12 R0 R2
     2702 LOADN                            R13 70
     2703 JUMPIFLE                         R12 R13 ; [+9]
     2705 GETTABLE                         R12 R0 R2
     2706 LOADN                            R13 97
     2707 JUMPIFNOTLE                      R13 R12 ; [+29]
     2709 GETTABLE                         R12 R0 R2
     2710 LOADN                            R13 102
     2711 JUMPIFNOTLE                      R12 R13 ; [+25]
     2713 GETTABLE                         R12 R0 R2
     2714 GETTABLE                         R14 R0 R2
     2715 LOADN                            R15 65
     2716 JUMPIFNOTLE                      R15 R14 ; [+7]
     2718 GETTABLE                         R14 R0 R2
     2719 LOADN                            R15 90
     2720 JUMPIFNOTLE                      R14 R15 ; [+3]
     2722 LOADN                            R13 55
     2723 JUMP                             ; [+11]
     2724 GETTABLE                         R14 R0 R2
     2725 LOADN                            R15 97
     2726 JUMPIFNOTLE                      R15 R14 ; [+7]
     2728 GETTABLE                         R14 R0 R2
     2729 LOADN                            R15 122
     2730 JUMPIFNOTLE                      R14 R15 ; [+3]
     2732 LOADN                            R13 87
     2733 JUMP                             ; [+1]
     2734 LOADN                            R13 48
     2735 SUB                              R11 R12 R13
     2736 JUMP                             ; [+3]
     2737 SUBK                             R2 R2 K9 [1]
     2738 JUMP                             ; [+1]
     2739 SUBK                             R2 R2 K9 [1]
     2740 JUMPIFNOT                        R10 ; [+7]
     2741 JUMPIFNOT                        R11 ; [+4]
     2742 LOADN                            R16 16
     2743 MUL                              R15 R16 R10
     2744 ADD                              R14 R15 R11
     2745 JUMPIF                           R14 ; [+3]
     2746 MOVE                             R14 R10
     2747 JUMPIF                           R14 ; [+1]
     2748 LOADN                            R14 0
     2749 FASTCALL2                        TABLE_INSERT R5 R14 ; [+4]
     2751 MOVE                             R13 R5
     2752 GETIMPORT                        R12 K68 [table.insert]
     2754 CALL                             R12 2 0
     2755 JUMP                             ; [+381]
     2756 GETUPVAL                         R11 9
     2757 GETTABLE                         R10 R11 R9
     2758 JUMPIF                           R10 ; [+2]
     2759 GETUPVAL                         R11 5
     2760 GETTABLE                         R10 R11 R9
     2761 OR                               R13 R10 R9
     2762 FASTCALL2                        TABLE_INSERT R5 R13 ; [+4]
     2764 MOVE                             R12 R5
     2765 GETIMPORT                        R11 K68 [table.insert]
     2767 CALL                             R11 2 0
     2768 JUMP                             ; [+368]
     2769 JUMPIFEQKN                       R8 K10 [42] ; [+7]
     2771 JUMPIFEQKN                       R8 K105 [43] ; [+5]
     2773 JUMPIFEQKN                       R8 K43 [63] ; [+3]
     2775 JUMPIFNOTEQKN                    R8 K94 [123] ; [+255]
     2777 LOADNIL                          R9
     2778 LOADNIL                          R10
     2779 JUMPIFNOTEQKN                    R8 K94 [123] ; [+146]
     2781 ADDK                             R11 R2 K9 [1]
     2782 LOADNIL                          R12
     2783 ADDK                             R14 R2 K9 [1]
     2784 GETTABLE                         R13 R0 R14
     2785 JUMPIFNOT                        R13 ; [+24]
     2786 ADDK                             R14 R2 K9 [1]
     2787 GETTABLE                         R13 R0 R14
     2788 LOADN                            R14 48
     2789 JUMPIFNOTLE                      R14 R13 ; [+6]
     2791 ADDK                             R14 R2 K9 [1]
     2792 GETTABLE                         R13 R0 R14
     2793 LOADN                            R14 57
     2794 JUMPIFLE                         R13 R14 ; [+9]
     2796 ADDK                             R14 R2 K9 [1]
     2797 GETTABLE                         R13 R0 R14
     2798 JUMPIFNOTEQKN                    R13 K128 [44] ; [+11]
     2800 JUMPIF                           R12 ; [+9]
     2801 ADDK                             R13 R2 K9 [1]
     2802 JUMPIFEQ                         R13 R11 ; [+7]
     2804 ADDK                             R2 R2 K9 [1]
     2805 GETTABLE                         R13 R0 R2
     2806 JUMPIFNOTEQKN                    R13 K128 [44] ; [+2]
     2808 MOVE                             R12 R2
     2809 JUMPBACK                         ; [-27]
     2810 ADDK                             R14 R2 K9 [1]
     2811 GETTABLE                         R13 R0 R14
     2812 JUMPIFNOTEQKN                    R13 K95 [125] ; [+103]
     2814 ADDK                             R2 R2 K9 [1]
     2815 JUMPIF                           R12 ; [+31]
     2816 GETTABLEKS                       R15 R0 K16 ["s"]
     2818 MOVE                             R16 R2
     2819 GETIMPORT                        R17 K19 [utf8.offset]
     2821 MOVE                             R18 R15
     2822 MOVE                             R19 R16
     2823 CALL                             R17 2 1
     2824 MOVE                             R16 R17
     2825 GETIMPORT                        R19 K19 [utf8.offset]
     2827 MOVE                             R20 R15
     2828 MOVE                             R21 R11
     2829 CALL                             R19 2 1
     2830 MOVE                             R20 R16
     2831 JUMPIFNOT                        R20 ; [+1]
     2832 SUBK                             R20 R16 K9 [1]
     2833 FASTCALL3                        STRING_SUB R15 R19 R20
     2835 MOVE                             R18 R15
     2836 GETIMPORT                        R17 K22 [string.sub]
     2838 CALL                             R17 3 1
     2839 MOVE                             R14 R17
     2840 FASTCALL1                        TONUMBER R14 ; [+2]
     2841 GETIMPORT                        R13 K52 [tonumber]
     2843 CALL                             R13 1 1
     2844 MOVE                             R9 R13
     2845 MOVE                             R10 R9
     2846 JUMP                             ; [+91]
     2847 GETTABLEKS                       R15 R0 K16 ["s"]
     2849 MOVE                             R16 R12
     2850 GETIMPORT                        R17 K19 [utf8.offset]
     2852 MOVE                             R18 R15
     2853 MOVE                             R19 R16
     2854 CALL                             R17 2 1
     2855 MOVE                             R16 R17
     2856 GETIMPORT                        R19 K19 [utf8.offset]
     2858 MOVE                             R20 R15
     2859 MOVE                             R21 R11
     2860 CALL                             R19 2 1
     2861 MOVE                             R20 R16
     2862 JUMPIFNOT                        R20 ; [+1]
     2863 SUBK                             R20 R16 K9 [1]
     2864 FASTCALL3                        STRING_SUB R15 R19 R20
     2866 MOVE                             R18 R15
     2867 GETIMPORT                        R17 K22 [string.sub]
     2869 CALL                             R17 3 1
     2870 MOVE                             R14 R17
     2871 FASTCALL1                        TONUMBER R14 ; [+2]
     2872 GETIMPORT                        R13 K52 [tonumber]
     2874 CALL                             R13 1 1
     2875 MOVE                             R9 R13
     2876 ADDK                             R14 R12 K9 [1]
     2877 JUMPIFNOTEQ                      R14 R2 ; [+3]
     2879 LOADK                            R13 K129 [∞]
     2880 JUMP                             ; [+29]
     2881 GETTABLEKS                       R15 R0 K16 ["s"]
     2883 ADDK                             R16 R12 K9 [1]
     2884 MOVE                             R17 R2
     2885 GETIMPORT                        R18 K19 [utf8.offset]
     2887 MOVE                             R19 R15
     2888 MOVE                             R20 R17
     2889 CALL                             R18 2 1
     2890 MOVE                             R17 R18
     2891 GETIMPORT                        R20 K19 [utf8.offset]
     2893 MOVE                             R21 R15
     2894 MOVE                             R22 R16
     2895 CALL                             R20 2 1
     2896 MOVE                             R21 R17
     2897 JUMPIFNOT                        R21 ; [+1]
     2898 SUBK                             R21 R17 K9 [1]
     2899 FASTCALL3                        STRING_SUB R15 R20 R21
     2901 MOVE                             R19 R15
     2902 GETIMPORT                        R18 K22 [string.sub]
     2904 CALL                             R18 3 1
     2905 MOVE                             R14 R18
     2906 FASTCALL1                        TONUMBER R14 ; [+2]
     2907 GETIMPORT                        R13 K52 [tonumber]
     2909 CALL                             R13 1 1
     2910 MOVE                             R10 R13
     2911 JUMPIFNOTLT                      R10 R9 ; [+26]
     2913 LOADK                            R13 K130 ["numbers out of order in {} quantifier"]
     2914 RETURN                           R13 1
     2915 JUMP                             ; [+22]
     2916 GETIMPORT                        R13 K102 [table.move]
     2918 MOVE                             R14 R0
     2919 SUBK                             R15 R11 K9 [1]
     2920 MOVE                             R16 R2
     2921 LENGTH                           R18 R5
     2922 ADDK                             R17 R18 K9 [1]
     2923 MOVE                             R18 R5
     2924 CALL                             R13 5 0
     2925 JUMP                             ; [+12]
     2926 JUMPIFNOTEQKN                    R8 K105 [43] ; [+3]
     2928 LOADN                            R11 1
     2929 JUMP                             ; [+1]
     2930 LOADN                            R11 0
     2931 MOVE                             R9 R11
     2932 JUMPIFNOTEQKN                    R8 K43 [63] ; [+3]
     2934 LOADN                            R11 1
     2935 JUMP                             ; [+1]
     2936 LOADK                            R11 K129 [∞]
     2937 MOVE                             R10 R11
     2938 JUMPIFNOT                        R9 ; [+198]
     2939 GETTABLEKS                       R12 R1 K131 ["ungreedy"]
     2941 JUMPIFNOT                        R12 ; [+2]
     2942 LOADK                            R11 K132 ["lazy"]
     2943 JUMP                             ; [+1]
     2944 LOADK                            R11 K133 ["greedy"]
     2945 ADDK                             R13 R2 K9 [1]
     2946 GETTABLE                         R12 R0 R13
     2947 JUMPIFEQKN                       R12 K105 [43] ; [+5]
     2949 ADDK                             R13 R2 K9 [1]
     2950 GETTABLE                         R12 R0 R13
     2951 JUMPIFNOTEQKN                    R12 K43 [63] ; [+14]
     2953 ADDK                             R2 R2 K9 [1]
     2954 GETTABLE                         R13 R0 R2
     2955 JUMPIFNOTEQKN                    R13 K105 [43] ; [+3]
     2957 LOADK                            R12 K134 ["possessive"]
     2958 JUMP                             ; [+6]
     2959 GETTABLEKS                       R13 R1 K131 ["ungreedy"]
     2961 JUMPIFNOT                        R13 ; [+2]
     2962 LOADK                            R12 K133 ["greedy"]
     2963 JUMP                             ; [+1]
     2964 LOADK                            R12 K132 ["lazy"]
     2965 MOVE                             R11 R12
     2966 LENGTH                           R12 R5
     2967 GETTABLE                         R13 R5 R12
     2968 JUMPIFNOT                        R13 ; [+27]
     2969 FASTCALL1                        TYPE R13 ; [+3]
     2970 MOVE                             R15 R13
     2971 GETIMPORT                        R14 K70 [type]
     2973 CALL                             R14 1 1
     2974 JUMPIFNOTEQKS                    R14 K45 ["table"] ; [+11]
     2976 GETTABLEN                        R14 R13 1
     2977 JUMPIFEQKS                       R14 K76 ["quantifier"] ; [+18]
     2979 GETTABLEN                        R14 R13 1
     2980 JUMPIFEQKN                       R14 K8 [40] ; [+15]
     2982 GETUPVAL                         R15 9
     2983 GETTABLEN                        R16 R13 1
     2984 GETTABLE                         R14 R15 R16
     2985 JUMPIF                           R14 ; [+10]
     2986 GETUPVAL                         R14 3
     2987 JUMPIFEQ                         R13 R14 ; [+8]
     2989 FASTCALL1                        TYPE R13 ; [+3]
     2990 MOVE                             R15 R13
     2991 GETIMPORT                        R14 K70 [type]
     2993 CALL                             R14 1 1
     2994 JUMPIFNOTEQKS                    R14 K20 ["string"] ; [+3]
     2996 LOADK                            R14 K15 ["quantifier doesn't follow a repeatable pattern"]
     2997 RETURN                           R14 1
     2998 JUMPIFNOTEQKN                    R10 K113 [0] ; [+6]
     3000 GETIMPORT                        R14 K136 [table.remove]
     3002 MOVE                             R15 R5
     3003 CALL                             R14 1 0
     3004 JUMP                             ; [+132]
     3005 JUMPIFNOTEQKN                    R9 K9 [1] ; [+3]
     3007 JUMPIFEQKN                       R10 K9 [1] ; [+129]
     3009 FASTCALL1                        TYPE R13 ; [+3]
     3010 MOVE                             R15 R13
     3011 GETIMPORT                        R14 K70 [type]
     3013 CALL                             R14 1 1
     3014 JUMPIFNOTEQKS                    R14 K45 ["table"] ; [+5]
     3016 GETTABLEN                        R14 R13 1
     3017 JUMPIFNOTEQKN                    R14 K14 [41] ; [+2]
     3019 GETTABLEN                        R12 R13 3
     3020 NEWTABLE                         R14 0 5
     3022 LOADK                            R15 K76 ["quantifier"]
     3023 MOVE                             R16 R9
     3024 MOVE                             R17 R10
     3025 MOVE                             R18 R11
     3026 GETTABLE                         R19 R5 R12
     3027 SETLIST                          R14 R15 5 [1]
     3029 SETTABLE                         R14 R5 R12
     3030 JUMP                             ; [+106]
     3031 JUMPIFNOTEQKN                    R8 K56 [124] ; [+39]
     3033 GETUPVAL                         R11 3
     3034 FASTCALL2                        TABLE_INSERT R5 R11 ; [+4]
     3036 MOVE                             R10 R5
     3037 GETIMPORT                        R9 K68 [table.insert]
     3039 CALL                             R9 2 0
     3040 LENGTH                           R9 R5
     3041 SUBK                             R9 R9 K9 [1]
     3042 GETTABLE                         R10 R5 R9
     3043 GETTABLE                         R13 R5 R9
     3044 FASTCALL1                        TYPE R13 ; [+2]
     3045 GETIMPORT                        R12 K70 [type]
     3047 CALL                             R12 1 1
     3048 JUMPIFEQKS                       R12 K45 ["table"] ; [+2]
     3050 LOADB                            R11 0 +1
     3051 LOADB                            R11 1
     3052 JUMPIFNOT                        R11 ; [+6]
     3053 GETTABLEN                        R12 R10 1
     3054 JUMPIFNOTEQKN                    R12 K14 [41] ; [+4]
     3056 GETTABLE                         R12 R5 R9
     3057 GETTABLEN                        R9 R12 3
     3058 JUMP                             ; [+9]
     3059 JUMPIFNOT                        R11 ; [+8]
     3060 GETTABLEN                        R12 R10 1
     3061 JUMPIFNOTEQKN                    R12 K8 [40] ; [+6]
     3063 GETTABLEN                        R12 R10 4
     3064 JUMPIFNOTEQKN                    R12 K56 [124] ; [+72]
     3066 GETTABLEN                        R4 R10 5
     3067 JUMP                             ; [+69]
     3068 JUMPIFNOT                        R10 ; [+68]
     3069 JUMPBACK                         ; [-29]
     3070 JUMP                             ; [+66]
     3071 JUMPIFEQKN                       R8 K137 [36] ; [+3]
     3073 JUMPIFNOTEQKN                    R8 K81 [94] ; [+13]
     3075 JUMPIFNOTEQKN                    R8 K81 [94] ; [+3]
     3077 GETUPVAL                         R11 10
     3078 JUMPIF                           R11 ; [+1]
     3079 GETUPVAL                         R11 11
     3080 FASTCALL2                        TABLE_INSERT R5 R11 ; [+4]
     3082 MOVE                             R10 R5
     3083 GETIMPORT                        R9 K68 [table.insert]
     3085 CALL                             R9 2 0
     3086 JUMP                             ; [+50]
     3087 GETTABLEKS                       R9 R1 K121 ["ignoreCase"]
     3089 JUMPIFNOT                        R9 ; [+14]
     3090 LOADN                            R9 97
     3091 JUMPIFNOTLE                      R9 R8 ; [+12]
     3093 LOADN                            R9 122
     3094 JUMPIFNOTLE                      R8 R9 ; [+9]
     3096 SUBK                             R11 R8 K122 [32]
     3097 FASTCALL2                        TABLE_INSERT R5 R11 ; [+4]
     3099 MOVE                             R10 R5
     3100 GETIMPORT                        R9 K68 [table.insert]
     3102 CALL                             R9 2 0
     3103 JUMP                             ; [+33]
     3104 GETTABLEKS                       R9 R1 K138 ["extended"]
     3106 JUMPIFNOT                        R9 ; [+23]
     3107 LOADN                            R9 9
     3108 JUMPIFNOTLE                      R9 R8 ; [+4]
     3110 LOADN                            R9 13
     3111 JUMPIFLE                         R8 R9 ; [+5]
     3113 JUMPIFEQKN                       R8 K122 [32] ; [+3]
     3115 JUMPIFNOTEQKN                    R8 K44 [35] ; [+14]
     3117 JUMPIFNOTEQKN                    R8 K44 [35] ; [+19]
     3119 ADDK                             R2 R2 K9 [1]
     3120 GETTABLE                         R9 R0 R2
     3121 JUMPIFNOT                        R9 ; [+15]
     3122 GETTABLE                         R9 R0 R2
     3123 JUMPIFEQKN                       R9 K139 [10] ; [+13]
     3125 GETTABLE                         R9 R0 R2
     3126 JUMPIFEQKN                       R9 K140 [13] ; [+10]
     3128 JUMPBACK                         ; [-10]
     3129 JUMP                             ; [+7]
     3130 FASTCALL2                        TABLE_INSERT R5 R8 ; [+5]
     3132 MOVE                             R10 R5
     3133 MOVE                             R11 R8
     3134 GETIMPORT                        R9 K68 [table.insert]
     3136 CALL                             R9 2 0
     3137 ADDK                             R2 R2 K9 [1]
     3138 JUMPBACK                         ; [-3112]
     3139 LOADN                            R8 0
     3140 GETIMPORT                        R9 K142 [ipairs]
     3142 MOVE                             R10 R5
     3143 CALL                             R9 1 3
     3144 FORGPREP_INEXT                   R9
     3145 FASTCALL1                        TYPE R13 ; [+3]
     3146 MOVE                             R15 R13
     3147 GETIMPORT                        R14 K70 [type]
     3149 CALL                             R14 1 1
     3150 JUMPIFNOTEQKS                    R14 K45 ["table"] ; [+37]
     3152 GETTABLEN                        R14 R13 1
     3153 JUMPIFEQKN                       R14 K8 [40] ; [+15]
     3155 GETTABLEN                        R14 R13 1
     3156 JUMPIFNOTEQKS                    R14 K76 ["quantifier"] ; [+31]
     3158 GETTABLEN                        R15 R13 5
     3159 FASTCALL1                        TYPE R15 ; [+2]
     3160 GETIMPORT                        R14 K70 [type]
     3162 CALL                             R14 1 1
     3163 JUMPIFNOTEQKS                    R14 K45 ["table"] ; [+24]
     3165 GETTABLEN                        R15 R13 5
     3166 GETTABLEN                        R14 R15 1
     3167 JUMPIFNOTEQKN                    R14 K8 [40] ; [+20]
     3169 GETTABLEN                        R14 R13 1
     3170 JUMPIFNOTEQKS                    R14 K76 ["quantifier"] ; [+2]
     3172 GETTABLEN                        R13 R13 5
     3173 GETTABLEN                        R14 R13 3
     3174 JUMPIF                           R14 ; [+2]
     3175 LOADK                            R14 K47 ["unterminated parenthetical"]
     3176 RETURN                           R14 1
     3177 GETTABLEN                        R14 R13 2
     3178 JUMPIFNOT                        R14 ; [+77]
     3179 GETTABLEN                        R16 R13 2
     3180 FASTCALL2                        MATH_MAX R8 R16 ; [+4]
     3182 MOVE                             R15 R8
     3183 GETIMPORT                        R14 K74 [math.max]
     3185 CALL                             R14 2 1
     3186 MOVE                             R8 R14
     3187 JUMP                             ; [+68]
     3188 FASTCALL1                        TYPE R13 ; [+3]
     3189 MOVE                             R15 R13
     3190 GETIMPORT                        R14 K70 [type]
     3192 CALL                             R14 1 1
     3193 JUMPIFNOTEQKS                    R14 K45 ["table"] ; [+62]
     3195 GETTABLEN                        R14 R13 1
     3196 JUMPIFEQKS                       R14 K59 ["backref"] ; [+4]
     3198 GETTABLEN                        R14 R13 1
     3199 JUMPIFNOTEQKS                    R14 K49 ["recurmatch"] ; [+56]
     3201 GETTABLEN                        R15 R13 2
     3202 GETTABLE                         R14 R6 R15
     3203 JUMPIF                           R14 ; [+12]
     3204 GETTABLEN                        R15 R13 2
     3205 FASTCALL1                        TYPE R15 ; [+2]
     3206 GETIMPORT                        R14 K70 [type]
     3208 CALL                             R14 1 1
     3209 JUMPIFNOTEQKS                    R14 K86 ["number"] ; [+4]
     3211 GETTABLEN                        R14 R13 2
     3212 JUMPIFNOTLT                      R4 R14 ; [+3]
     3214 LOADK                            R14 K143 ["reference to a non-existent or invalid subpattern"]
     3215 RETURN                           R14 1
     3216 GETTABLEN                        R14 R13 1
     3217 JUMPIFNOTEQKS                    R14 K49 ["recurmatch"] ; [+28]
     3219 GETTABLEN                        R14 R13 2
     3220 JUMPIFEQKN                       R14 K113 [0] ; [+25]
     3222 GETIMPORT                        R14 K142 [ipairs]
     3224 MOVE                             R15 R5
     3225 CALL                             R14 1 3
     3226 FORGPREP_INEXT                   R14
     3227 FASTCALL1                        TYPE R18 ; [+3]
     3228 MOVE                             R20 R18
     3229 GETIMPORT                        R19 K70 [type]
     3231 CALL                             R19 1 1
     3232 JUMPIFNOTEQKS                    R19 K45 ["table"] ; [+10]
     3234 GETTABLEN                        R19 R18 1
     3235 JUMPIFNOTEQKN                    R19 K8 [40] ; [+7]
     3237 GETTABLEN                        R19 R18 2
     3238 GETTABLEN                        R20 R13 2
     3239 JUMPIFNOTEQ                      R19 R20 ; [+3]
     3241 SETTABLEN                        R17 R13 3
     3242 JUMP                             ; [+13]
     3243 FORGLOOP                         R14 2 [inext] ; [-17]
     3245 JUMP                             ; [+10]
     3246 GETTABLEN                        R15 R13 2
     3247 FASTCALL1                        TYPE R15 ; [+2]
     3248 GETIMPORT                        R14 K70 [type]
     3250 CALL                             R14 1 1
     3251 JUMPIFNOTEQKS                    R14 K20 ["string"] ; [+4]
     3253 GETTABLEN                        R15 R13 2
     3254 GETTABLE                         R14 R6 R15
     3255 SETTABLEN                        R14 R13 2
     3256 FORGLOOP                         R9 2 [inext] ; [-112]
     3258 SETTABLEKS                       R8 R5 K144 ["group_n"]
     3260 RETURN                           R5 3

PROTO_27:
        0 GETIMPORT                        R0 K2 [table.clear]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 GETIMPORT                        R0 K2 [table.clear]
        6 GETUPVAL                         R1 1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_28:
        0 LOADNIL                          R4
        1 LOADNIL                          R5
        2 LOADNIL                          R6
        3 GETUPVAL                         R7 0
        4 JUMPIFNOT                        R7 ; [+7]
        5 GETIMPORT                        R7 K2 [string.format]
        7 LOADK                            R8 K3 ["%s|%s"]
        8 GETTABLEKS                       R9 R0 K4 ["s"]
       10 MOVE                             R10 R2
       11 CALL                             R7 3 1
       12 GETUPVAL                         R8 0
       13 JUMPIFNOT                        R8 ; [+7]
       14 GETUPVAL                         R9 1
       15 GETIMPORT                        R10 K7 [table.find]
       17 GETUPVAL                         R11 2
       18 MOVE                             R12 R7
       19 CALL                             R10 2 1
       20 GETTABLE                         R8 R9 R10
       21 JUMPIFNOT                        R8 ; [+12]
       22 LOADN                            R11 1
       23 LOADN                            R12 3
       24 FASTCALL3                        TABLE_UNPACK R8 R11 R12
       26 MOVE                             R10 R8
       27 GETIMPORT                        R9 K9 [table.unpack]
       29 CALL                             R9 3 3
       30 MOVE                             R4 R9
       31 MOVE                             R5 R10
       32 MOVE                             R6 R11
       33 JUMP                             ; [+59]
       34 GETUPVAL                         R9 3
       35 MOVE                             R10 R0
       36 MOVE                             R11 R1
       37 CALL                             R9 2 3
       38 MOVE                             R4 R9
       39 MOVE                             R5 R10
       40 MOVE                             R6 R11
       41 FASTCALL1                        TYPE R4 ; [+3]
       42 MOVE                             R10 R4
       43 GETIMPORT                        R9 K11 [type]
       45 CALL                             R9 1 1
       46 JUMPIFNOTEQKS                    R9 K0 ["string"] ; [+6]
       48 GETIMPORT                        R9 K13 [error]
       50 MOVE                             R10 R4
       51 LOADN                            R11 2
       52 CALL                             R9 2 0
       53 GETUPVAL                         R9 0
       54 JUMPIFNOT                        R9 ; [+38]
       55 GETTABLEN                        R9 R4 1
       56 JUMPIFNOT                        R9 ; [+36]
       57 GETUPVAL                         R10 2
       58 LOADN                            R11 1
       59 FASTCALL3                        TABLE_INSERT R10 R11 R7
       61 MOVE                             R12 R7
       62 GETIMPORT                        R9 K15 [table.insert]
       64 CALL                             R9 3 0
       65 GETUPVAL                         R10 1
       66 LOADN                            R11 1
       67 NEWTABLE                         R12 0 3
       69 MOVE                             R13 R4
       70 MOVE                             R14 R5
       71 MOVE                             R15 R6
       72 SETLIST                          R12 R13 3 [1]
       74 FASTCALL                         TABLE_INSERT ; [+2]
       75 GETIMPORT                        R9 K15 [table.insert]
       77 CALL                             R9 3 0
       78 GETUPVAL                         R9 0
       79 JUMPIFEQKN                       R9 K16 [∞] ; [+13]
       81 GETIMPORT                        R9 K18 [table.remove]
       83 GETUPVAL                         R10 2
       84 GETUPVAL                         R12 0
       85 ADDK                             R11 R12 K19 [1]
       86 CALL                             R9 2 0
       87 GETIMPORT                        R9 K18 [table.remove]
       89 GETUPVAL                         R10 1
       90 GETUPVAL                         R12 0
       91 ADDK                             R11 R12 K19 [1]
       92 CALL                             R9 2 0
       93 GETIMPORT                        R9 K21 [newproxy]
       95 LOADB                            R10 1
       96 CALL                             R9 1 1
       97 GETUPVAL                         R10 4
       98 DUPTABLE                         R11 K29 [{"name", "flags", "flag_repr", "pattern_repr", "token", "group_id", "verb_flags"}]
       99 LOADK                            R12 K30 ["RegEx"]
      100 SETTABLEKS                       R12 R11 K22 ["name"]
      102 SETTABLEKS                       R1 R11 K23 ["flags"]
      104 SETTABLEKS                       R2 R11 K24 ["flag_repr"]
      106 SETTABLEKS                       R3 R11 K25 ["pattern_repr"]
      108 SETTABLEKS                       R4 R11 K26 ["token"]
      110 SETTABLEKS                       R5 R11 K27 ["group_id"]
      112 SETTABLEKS                       R6 R11 K28 ["verb_flags"]
      114 SETTABLE                         R11 R10 R9
      115 FASTCALL1                        GETMETATABLE R9 ; [+3]
      116 MOVE                             R11 R9
      117 GETIMPORT                        R10 K32 [getmetatable]
      119 CALL                             R10 1 1
      120 GETUPVAL                         R13 5
      121 FASTCALL2                        SETMETATABLE R1 R13 ; [+4]
      123 MOVE                             R12 R1
      124 GETIMPORT                        R11 K34 [setmetatable]
      126 CALL                             R11 2 1
      127 SETTABLEKS                       R11 R10 K35 ["__index"]
      129 GETUPVAL                         R11 6
      130 SETTABLEKS                       R11 R10 K36 ["__tostring"]
      132 GETUPVAL                         R11 7
      133 SETTABLEKS                       R11 R10 K37 ["__metatable"]
      135 RETURN                           R9 1

PROTO_29:
        0 LENGTH                           R6 R0
        1 MODK                             R5 R6 K0 [2]
        2 JUMPIFNOTEQKN                    R5 K1 [0] ; [+3]
        4 LOADK                            R2 K2 ["\\"]
        5 JUMP                             ; [+1]
        6 LOADK                            R2 K3 [""]
        7 MOVE                             R3 R0
        8 LOADK                            R4 K4 ["."]
        9 CONCAT                           R1 R2 R4
       10 RETURN                           R1 1

PROTO_30:
        0 NAMECALL                         R3 R0 K0 ["lower"]
        2 CALL                             R3 1 1
        3 NAMECALL                         R4 R1 K0 ["lower"]
        5 CALL                             R4 1 1
        6 JUMPIFLT                         R3 R4 ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 RETURN                           R2 1

PROTO_31:
        0 PREPVARARGS                      0
        1 LOADK                            R1 K0 ["#"]
        2 FASTCALL1                        SELECT_VARARG R1 ; [+3]
        3 GETIMPORT                        R0 K2 [select]
        5 GETVARARGS                       R2 -1
        6 CALL                             R0 -1 1
        7 JUMPIFNOTEQKN                    R0 K3 [0] ; [+6]
        9 GETIMPORT                        R0 K5 [error]
       11 LOADK                            R1 K6 ["missing argument #1 (string expected)"]
       12 LOADN                            R2 2
       13 CALL                             R0 2 0
       14 GETVARARGS                       R0 2
       15 FASTCALL1                        TYPE R0 ; [+3]
       16 MOVE                             R3 R0
       17 GETIMPORT                        R2 K8 [type]
       19 CALL                             R2 1 1
       20 JUMPIFNOTEQKS                    R2 K9 ["number"] ; [+5]
       22 MOVE                             R2 R0
       23 LOADK                            R3 K10 [""]
       24 CONCAT                           R0 R2 R3
       25 JUMP                             ; [+20]
       26 FASTCALL1                        TYPE R0 ; [+3]
       27 MOVE                             R3 R0
       28 GETIMPORT                        R2 K8 [type]
       30 CALL                             R2 1 1
       31 JUMPIFEQKS                       R2 K11 ["string"] ; [+14]
       33 GETIMPORT                        R2 K5 [error]
       35 GETIMPORT                        R3 K13 [string.format]
       37 LOADK                            R4 K14 ["invalid argument #1 (string expected, got %s)"]
       38 FASTCALL1                        TYPEOF R0 ; [+3]
       39 MOVE                             R6 R0
       40 GETIMPORT                        R5 K16 [typeof]
       42 CALL                             R5 1 1
       43 CALL                             R3 2 1
       44 LOADN                            R4 2
       45 CALL                             R2 2 0
       46 FASTCALL1                        TYPE R1 ; [+3]
       47 MOVE                             R3 R1
       48 GETIMPORT                        R2 K8 [type]
       50 CALL                             R2 1 1
       51 JUMPIFEQKS                       R2 K11 ["string"] ; [+23]
       53 FASTCALL1                        TYPE R1 ; [+3]
       54 MOVE                             R3 R1
       55 GETIMPORT                        R2 K8 [type]
       57 CALL                             R2 1 1
       58 JUMPIFEQKS                       R2 K9 ["number"] ; [+16]
       60 JUMPIFEQKNIL                     R1 ; [+14]
       62 GETIMPORT                        R2 K5 [error]
       64 GETIMPORT                        R3 K13 [string.format]
       66 LOADK                            R4 K17 ["invalid argument #2 (string expected, got %s)"]
       67 FASTCALL1                        TYPEOF R1 ; [+3]
       68 MOVE                             R6 R1
       69 GETIMPORT                        R5 K16 [typeof]
       71 CALL                             R5 1 1
       72 CALL                             R3 2 1
       73 LOADN                            R4 2
       74 CALL                             R2 2 0
       75 DUPTABLE                         R2 K25 [{"anchored", "caseless", "multiline", "dotall", "unicode", "ungreedy", "extended"}]
       76 LOADB                            R3 0
       77 SETTABLEKS                       R3 R2 K18 ["anchored"]
       79 LOADB                            R3 0
       80 SETTABLEKS                       R3 R2 K19 ["caseless"]
       82 LOADB                            R3 0
       83 SETTABLEKS                       R3 R2 K20 ["multiline"]
       85 LOADB                            R3 0
       86 SETTABLEKS                       R3 R2 K21 ["dotall"]
       88 LOADB                            R3 0
       89 SETTABLEKS                       R3 R2 K22 ["unicode"]
       91 LOADB                            R3 0
       92 SETTABLEKS                       R3 R2 K23 ["ungreedy"]
       94 LOADB                            R3 0
       95 SETTABLEKS                       R3 R2 K24 ["extended"]
       97 NEWTABLE                         R3 0 0
       99 GETIMPORT                        R4 K27 [string.gmatch]
      101 ORK                              R5 R1 K10 [""]
      102 GETIMPORT                        R6 K30 [utf8.charpattern]
      104 CALL                             R4 2 3
      105 FORGPREP                         R4
      106 GETUPVAL                         R11 0
      107 GETTABLE                         R10 R11 R7
      108 GETTABLE                         R9 R2 R10
      109 JUMPIFEQKB                       R9 FALSE ; [+8]
      111 GETIMPORT                        R9 K5 [error]
      113 LOADK                            R11 K31 ["invalid regular expression flag "]
      114 MOVE                             R12 R7
      115 CONCAT                           R10 R11 R12
      116 LOADN                            R11 3
      117 CALL                             R9 2 0
      118 GETUPVAL                         R10 0
      119 GETTABLE                         R9 R10 R7
      120 LOADB                            R10 1
      121 SETTABLE                         R10 R2 R9
      122 FASTCALL2                        TABLE_INSERT R3 R7 ; [+5]
      124 MOVE                             R10 R3
      125 MOVE                             R11 R7
      126 GETIMPORT                        R9 K34 [table.insert]
      128 CALL                             R9 2 0
      129 FORGLOOP                         R4 1 ; [-24]
      131 GETIMPORT                        R4 K36 [table.sort]
      133 MOVE                             R5 R3
      134 GETUPVAL                         R6 1
      135 CALL                             R4 2 0
      136 GETIMPORT                        R4 K38 [table.concat]
      138 MOVE                             R5 R3
      139 CALL                             R4 1 1
      140 MOVE                             R3 R4
      141 GETUPVAL                         R4 2
      142 GETUPVAL                         R5 3
      143 MOVE                             R6 R0
      144 CALL                             R5 1 1
      145 MOVE                             R6 R2
      146 MOVE                             R7 R3
      147 GETIMPORT                        R8 K13 [string.format]
      149 LOADK                            R9 K39 ["/%s/"]
      150 LOADK                            R12 K40 ["(\\*)/"]
      151 GETUPVAL                         R13 4
      152 NAMECALL                         R10 R0 K41 ["gsub"]
      154 CALL                             R10 3 -1
      155 CALL                             R8 -1 -1
      156 CALL                             R4 -1 1
      157 RETURN                           R4 1

PROTO_32:
        0 PREPVARARGS                      0
        1 LOADK                            R1 K0 ["#"]
        2 FASTCALL1                        SELECT_VARARG R1 ; [+3]
        3 GETIMPORT                        R0 K2 [select]
        5 GETVARARGS                       R2 -1
        6 CALL                             R0 -1 1
        7 JUMPIFNOTEQKN                    R0 K3 [0] ; [+6]
        9 GETIMPORT                        R0 K5 [error]
       11 LOADK                            R1 K6 ["missing argument #1 (string expected)"]
       12 LOADN                            R2 2
       13 CALL                             R0 2 0
       14 GETVARARGS                       R0 1
       15 FASTCALL1                        TYPE R0 ; [+3]
       16 MOVE                             R2 R0
       17 GETIMPORT                        R1 K8 [type]
       19 CALL                             R1 1 1
       20 JUMPIFNOTEQKS                    R1 K9 ["number"] ; [+5]
       22 MOVE                             R1 R0
       23 LOADK                            R2 K10 [""]
       24 CONCAT                           R0 R1 R2
       25 JUMP                             ; [+20]
       26 FASTCALL1                        TYPE R0 ; [+3]
       27 MOVE                             R2 R0
       28 GETIMPORT                        R1 K8 [type]
       30 CALL                             R1 1 1
       31 JUMPIFEQKS                       R1 K11 ["string"] ; [+14]
       33 GETIMPORT                        R1 K5 [error]
       35 GETIMPORT                        R2 K13 [string.format]
       37 LOADK                            R3 K14 ["invalid argument #1 (string expected, got %s)"]
       38 FASTCALL1                        TYPEOF R0 ; [+3]
       39 MOVE                             R5 R0
       40 GETIMPORT                        R4 K16 [typeof]
       42 CALL                             R4 1 1
       43 LOADN                            R5 2
       44 CALL                             R2 3 -1
       45 CALL                             R1 -1 0
       46 GETUPVAL                         R1 0
       47 MOVE                             R2 R0
       48 CALL                             R1 1 1
       49 GETTABLEN                        R2 R1 1
       50 JUMPIF                           R2 ; [+6]
       51 GETIMPORT                        R3 K5 [error]
       53 LOADK                            R4 K17 ["empty regex"]
       54 LOADN                            R5 2
       55 CALL                             R3 2 0
       56 JUMP                             ; [+25]
       57 JUMPIFEQKN                       R2 K18 [92] ; [+19]
       59 LOADN                            R3 48
       60 JUMPIFNOTLE                      R3 R2 ; [+4]
       62 LOADN                            R3 57
       63 JUMPIFLE                         R2 R3 ; [+13]
       65 LOADN                            R3 65
       66 JUMPIFNOTLE                      R3 R2 ; [+4]
       68 LOADN                            R3 90
       69 JUMPIFLE                         R2 R3 ; [+7]
       71 LOADN                            R3 97
       72 JUMPIFNOTLE                      R3 R2 ; [+9]
       74 LOADN                            R3 122
       75 JUMPIFNOTLE                      R2 R3 ; [+6]
       77 GETIMPORT                        R3 K5 [error]
       79 LOADK                            R4 K19 ["delimiter must not be alphanumeric or a backslash"]
       80 LOADN                            R5 2
       81 CALL                             R3 2 0
       82 LOADN                            R3 1
       83 GETIMPORT                        R4 K22 [table.find]
       85 MOVE                             R5 R1
       86 MOVE                             R6 R2
       87 ADDK                             R7 R3 K23 [1]
       88 CALL                             R4 3 1
       89 MOVE                             R3 R4
       90 JUMPIF                           R3 ; [+12]
       91 GETIMPORT                        R4 K5 [error]
       93 GETIMPORT                        R5 K13 [string.format]
       95 LOADK                            R6 K24 ["no ending delimiter ('%s') found"]
       96 GETIMPORT                        R7 K27 [utf8.char]
       98 MOVE                             R8 R2
       99 CALL                             R7 1 -1
      100 CALL                             R5 -1 1
      101 LOADN                            R6 2
      102 CALL                             R4 2 0
      103 LOADN                            R4 1
      104 SUB                              R6 R3 R4
      105 GETTABLE                         R5 R1 R6
      106 JUMPIFNOTEQKN                    R5 K18 [92] ; [+3]
      108 ADDK                             R4 R4 K23 [1]
      109 JUMPBACK                         ; [-6]
      110 MODK                             R5 R4 K28 [2]
      111 JUMPIFEQKN                       R5 K23 [1] ; [+2]
      113 JUMPBACK                         ; [-31]
      114 DUPTABLE                         R4 K36 [{"anchored", "caseless", "multiline", "dotall", "unicode", "ungreedy", "extended"}]
      115 LOADB                            R5 0
      116 SETTABLEKS                       R5 R4 K29 ["anchored"]
      118 LOADB                            R5 0
      119 SETTABLEKS                       R5 R4 K30 ["caseless"]
      121 LOADB                            R5 0
      122 SETTABLEKS                       R5 R4 K31 ["multiline"]
      124 LOADB                            R5 0
      125 SETTABLEKS                       R5 R4 K32 ["dotall"]
      127 LOADB                            R5 0
      128 SETTABLEKS                       R5 R4 K33 ["unicode"]
      130 LOADB                            R5 0
      131 SETTABLEKS                       R5 R4 K34 ["ungreedy"]
      133 LOADB                            R5 0
      134 SETTABLEKS                       R5 R4 K35 ["extended"]
      136 NEWTABLE                         R5 0 0
      138 GETTABLEKS                       R6 R1 K37 ["n"]
      140 JUMPIFNOTLT                      R3 R6 ; [+37]
      142 GETIMPORT                        R6 K27 [utf8.char]
      144 GETIMPORT                        R7 K39 [table.remove]
      146 MOVE                             R8 R1
      147 CALL                             R7 1 -1
      148 CALL                             R6 -1 1
      149 GETTABLEKS                       R7 R1 K37 ["n"]
      151 SUBK                             R7 R7 K23 [1]
      152 SETTABLEKS                       R7 R1 K37 ["n"]
      154 GETUPVAL                         R9 1
      155 GETTABLE                         R8 R9 R6
      156 GETTABLE                         R7 R4 R8
      157 JUMPIFEQKB                       R7 FALSE ; [+8]
      159 GETIMPORT                        R7 K5 [error]
      161 LOADK                            R9 K40 ["invalid regular expression flag "]
      162 MOVE                             R10 R6
      163 CONCAT                           R8 R9 R10
      164 LOADN                            R9 3
      165 CALL                             R7 2 0
      166 GETUPVAL                         R8 1
      167 GETTABLE                         R7 R8 R6
      168 LOADB                            R8 1
      169 SETTABLE                         R8 R4 R7
      170 FASTCALL2                        TABLE_INSERT R5 R6 ; [+5]
      172 MOVE                             R8 R5
      173 MOVE                             R9 R6
      174 GETIMPORT                        R7 K42 [table.insert]
      176 CALL                             R7 2 0
      177 JUMPBACK                         ; [-40]
      178 GETIMPORT                        R6 K44 [table.sort]
      180 MOVE                             R7 R5
      181 GETUPVAL                         R8 2
      182 CALL                             R6 2 0
      183 GETIMPORT                        R6 K46 [table.concat]
      185 MOVE                             R7 R5
      186 CALL                             R6 1 1
      187 MOVE                             R5 R6
      188 GETIMPORT                        R6 K39 [table.remove]
      190 MOVE                             R7 R1
      191 LOADN                            R8 1
      192 CALL                             R6 2 0
      193 GETIMPORT                        R6 K39 [table.remove]
      195 MOVE                             R7 R1
      196 CALL                             R6 1 0
      197 GETTABLEKS                       R6 R1 K37 ["n"]
      199 SUBK                             R6 R6 K28 [2]
      200 SETTABLEKS                       R6 R1 K37 ["n"]
      202 GETTABLEKS                       R7 R1 K47 ["s"]
      204 LOADN                            R8 2
      205 LOADN                            R10 1
      206 GETTABLEKS                       R11 R1 K37 ["n"]
      208 ADD                              R9 R10 R11
      209 FASTCALL                         STRING_SUB ; [+2]
      210 GETIMPORT                        R6 K49 [string.sub]
      212 CALL                             R6 3 1
      213 SETTABLEKS                       R6 R1 K47 ["s"]
      215 GETUPVAL                         R6 3
      216 MOVE                             R7 R1
      217 MOVE                             R8 R4
      218 MOVE                             R9 R5
      219 LOADN                            R12 1
      220 LOADN                            R14 2
      221 GETTABLEKS                       R15 R1 K37 ["n"]
      223 ADD                              R13 R14 R15
      224 FASTCALL3                        STRING_SUB R0 R12 R13
      226 MOVE                             R11 R0
      227 GETIMPORT                        R10 K49 [string.sub]
      229 CALL                             R10 3 1
      230 CALL                             R6 4 1
      231 RETURN                           R6 1

PROTO_33:
        0 PREPVARARGS                      0
        1 LOADK                            R1 K0 ["#"]
        2 FASTCALL1                        SELECT_VARARG R1 ; [+3]
        3 GETIMPORT                        R0 K2 [select]
        5 GETVARARGS                       R2 -1
        6 CALL                             R0 -1 1
        7 JUMPIFNOTEQKN                    R0 K3 [0] ; [+6]
        9 GETIMPORT                        R0 K5 [error]
       11 LOADK                            R1 K6 ["missing argument #1 (string expected)"]
       12 LOADN                            R2 2
       13 CALL                             R0 2 0
       14 GETVARARGS                       R0 3
       15 FASTCALL1                        TYPE R0 ; [+3]
       16 MOVE                             R4 R0
       17 GETIMPORT                        R3 K8 [type]
       19 CALL                             R3 1 1
       20 JUMPIFNOTEQKS                    R3 K9 ["number"] ; [+5]
       22 MOVE                             R3 R0
       23 LOADK                            R4 K10 [""]
       24 CONCAT                           R0 R3 R4
       25 JUMP                             ; [+20]
       26 FASTCALL1                        TYPE R0 ; [+3]
       27 MOVE                             R4 R0
       28 GETIMPORT                        R3 K8 [type]
       30 CALL                             R3 1 1
       31 JUMPIFEQKS                       R3 K11 ["string"] ; [+14]
       33 GETIMPORT                        R3 K5 [error]
       35 GETIMPORT                        R4 K13 [string.format]
       37 LOADK                            R5 K14 ["invalid argument #1 to 'escape' (string expected, got %s)"]
       38 FASTCALL1                        TYPEOF R0 ; [+3]
       39 MOVE                             R7 R0
       40 GETIMPORT                        R6 K16 [typeof]
       42 CALL                             R6 1 1
       43 CALL                             R4 2 1
       44 LOADN                            R5 2
       45 CALL                             R3 2 0
       46 JUMPIFNOTEQKNIL                  R2 ; [+3]
       48 LOADK                            R2 K10 [""]
       49 JUMP                             ; [+31]
       50 FASTCALL1                        TYPE R2 ; [+3]
       51 MOVE                             R4 R2
       52 GETIMPORT                        R3 K8 [type]
       54 CALL                             R3 1 1
       55 JUMPIFNOTEQKS                    R3 K9 ["number"] ; [+5]
       57 MOVE                             R3 R2
       58 LOADK                            R4 K10 [""]
       59 CONCAT                           R2 R3 R4
       60 JUMP                             ; [+20]
       61 FASTCALL1                        TYPE R2 ; [+3]
       62 MOVE                             R4 R2
       63 GETIMPORT                        R3 K8 [type]
       65 CALL                             R3 1 1
       66 JUMPIFEQKS                       R3 K11 ["string"] ; [+14]
       68 GETIMPORT                        R3 K5 [error]
       70 GETIMPORT                        R4 K13 [string.format]
       72 LOADK                            R5 K17 ["invalid argument #3 to 'escape' (string expected, got %s)"]
       73 FASTCALL1                        TYPEOF R2 ; [+3]
       74 MOVE                             R7 R2
       75 GETIMPORT                        R6 K16 [typeof]
       77 CALL                             R6 1 1
       78 CALL                             R4 2 1
       79 LOADN                            R5 2
       80 CALL                             R3 2 0
       81 GETIMPORT                        R3 K20 [utf8.len]
       83 MOVE                             R4 R2
       84 CALL                             R3 1 1
       85 LOADN                            R4 1
       86 JUMPIFLT                         R4 R3 ; [+6]
       88 LOADK                            R5 K21 ["^[%a\\]$"]
       89 NAMECALL                         R3 R2 K22 ["match"]
       91 CALL                             R3 2 1
       92 JUMPIFNOT                        R3 ; [+5]
       93 GETIMPORT                        R3 K5 [error]
       95 LOADK                            R4 K23 ["delimiter have not be alphanumeric"]
       96 LOADN                            R5 2
       97 CALL                             R3 2 0
       98 GETIMPORT                        R3 K25 [string.gsub]
      100 MOVE                             R4 R0
      101 LOADK                            R5 K26 ["[\0\x\n\r\t]"]
      102 GETUPVAL                         R6 0
      103 CALL                             R3 3 1
      104 GETIMPORT                        R5 K13 [string.format]
      106 LOADK                            R6 K27 ["[\\%s#()%%%%*+.?[%%]^{|%s]"]
      107 JUMPIFNOT                        R1 ; [+2]
      108 LOADK                            R7 K28 ["%s"]
      109 JUMP                             ; [+1]
      110 LOADK                            R7 K10 [""]
      111 LOADK                            R13 K29 ["^[%%%]]$"]
      112 NAMECALL                         R11 R2 K30 ["find"]
      114 CALL                             R11 2 1
      115 JUMPIFNOT                        R11 ; [+2]
      116 LOADK                            R9 K31 ["%"]
      117 JUMP                             ; [+1]
      118 LOADK                            R9 K10 [""]
      119 MOVE                             R10 R2
      120 CONCAT                           R8 R9 R10
      121 CALL                             R5 3 1
      122 LOADK                            R6 K32 ["\\%1"]
      123 NAMECALL                         R3 R3 K24 ["gsub"]
      125 CALL                             R3 3 1
      126 RETURN                           R3 1

PROTO_34:
        0 PREPVARARGS                      0
        1 LOADK                            R1 K0 ["#"]
        2 FASTCALL1                        SELECT_VARARG R1 ; [+3]
        3 GETIMPORT                        R0 K2 [select]
        5 GETVARARGS                       R2 -1
        6 CALL                             R0 -1 1
        7 JUMPIFNOTEQKN                    R0 K3 [0] ; [+6]
        9 GETIMPORT                        R0 K5 [error]
       11 LOADK                            R1 K6 ["missing argument #1"]
       12 LOADN                            R2 2
       13 CALL                             R0 2 0
       14 GETUPVAL                         R1 0
       15 GETVARARGS                       R2 1
       16 GETTABLE                         R0 R1 R2
       17 JUMPIFNOT                        R0 ; [+5]
       18 GETUPVAL                         R2 0
       19 GETVARARGS                       R3 1
       20 GETTABLE                         R1 R2 R3
       21 GETTABLEKS                       R0 R1 K7 ["name"]
       23 RETURN                           R0 1

PROTO_35:
        0 GETIMPORT                        R0 K1 [error]
        2 LOADK                            R1 K2 ["Attempt to modify a readonly table"]
        3 LOADN                            R2 2
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K2 [{"cacheSize", "unicodeData"}]
        2 LOADN                            R1 0
        3 SETTABLEKS                       R1 R0 K0 ["cacheSize"]
        5 LOADB                            R1 0
        6 SETTABLEKS                       R1 R0 K1 ["unicodeData"]
        8 GETTABLEKS                       R1 R0 K1 ["unicodeData"]
       10 JUMPIFNOT                        R1 ; [+9]
       11 GETIMPORT                        R1 K4 [require]
       13 GETIMPORT                        R2 K6 [script]
       15 LOADK                            R4 K7 ["_unicodechar_category"]
       16 NAMECALL                         R2 R2 K8 ["WaitForChild"]
       18 CALL                             R2 2 -1
       19 CALL                             R1 -1 1
       20 GETTABLEKS                       R2 R0 K1 ["unicodeData"]
       22 JUMPIFNOT                        R2 ; [+9]
       23 GETIMPORT                        R2 K4 [require]
       25 GETIMPORT                        R3 K6 [script]
       27 LOADK                            R5 K9 ["_scripts"]
       28 NAMECALL                         R3 R3 K8 ["WaitForChild"]
       30 CALL                             R3 2 -1
       31 CALL                             R2 -1 1
       32 GETTABLEKS                       R3 R0 K1 ["unicodeData"]
       34 JUMPIFNOT                        R3 ; [+9]
       35 GETIMPORT                        R3 K4 [require]
       37 GETIMPORT                        R4 K6 [script]
       39 LOADK                            R6 K10 ["_xuc"]
       40 NAMECALL                         R4 R4 K8 ["WaitForChild"]
       42 CALL                             R4 2 -1
       43 CALL                             R3 -1 1
       44 NEWTABLE                         R5 0 0
       46 DUPTABLE                         R6 K12 [{"__mode"}]
       47 LOADK                            R7 K13 ["k"]
       48 SETTABLEKS                       R7 R6 K11 ["__mode"]
       50 FASTCALL2                        SETMETATABLE R5 R6 ; [+3]
       52 GETIMPORT                        R4 K15 [setmetatable]
       54 CALL                             R4 2 1
       55 NEWTABLE                         R5 0 0
       57 NEWTABLE                         R6 0 0
       59 NEWTABLE                         R7 0 0
       61 LOADNIL                          R8
       62 DUPCLOSURE                       R9 K16 [PROTO_0]
       63 DUPCLOSURE                       R10 K17 [PROTO_1]
       64 DUPCLOSURE                       R11 K18 [PROTO_2]
       65 DUPTABLE                         R12 K26 [{"a", "i", "m", "s", "u", "U", "x"}]
       66 LOADK                            R13 K27 ["anchored"]
       67 SETTABLEKS                       R13 R12 K19 ["a"]
       69 LOADK                            R13 K28 ["caseless"]
       70 SETTABLEKS                       R13 R12 K20 ["i"]
       72 LOADK                            R13 K29 ["multiline"]
       73 SETTABLEKS                       R13 R12 K21 ["m"]
       75 LOADK                            R13 K30 ["dotall"]
       76 SETTABLEKS                       R13 R12 K22 ["s"]
       78 LOADK                            R13 K31 ["unicode"]
       79 SETTABLEKS                       R13 R12 K23 ["u"]
       81 LOADK                            R13 K32 ["ungreedy"]
       82 SETTABLEKS                       R13 R12 K24 ["U"]
       84 LOADK                            R13 K33 ["extended"]
       85 SETTABLEKS                       R13 R12 K25 ["x"]
       87 DUPTABLE                         R13 K48 [{"alnum", "alpha", "ascii", "blank", "cntrl", "digit", "graph", "lower", "print", "punct", "space", "upper", "word", "xdigit"}]
       88 LOADB                            R14 1
       89 SETTABLEKS                       R14 R13 K34 ["alnum"]
       91 LOADB                            R14 1
       92 SETTABLEKS                       R14 R13 K35 ["alpha"]
       94 LOADB                            R14 1
       95 SETTABLEKS                       R14 R13 K36 ["ascii"]
       97 LOADB                            R14 1
       98 SETTABLEKS                       R14 R13 K37 ["blank"]
      100 LOADB                            R14 1
      101 SETTABLEKS                       R14 R13 K38 ["cntrl"]
      103 LOADB                            R14 1
      104 SETTABLEKS                       R14 R13 K39 ["digit"]
      106 LOADB                            R14 1
      107 SETTABLEKS                       R14 R13 K40 ["graph"]
      109 LOADB                            R14 1
      110 SETTABLEKS                       R14 R13 K41 ["lower"]
      112 LOADB                            R14 1
      113 SETTABLEKS                       R14 R13 K42 ["print"]
      115 LOADB                            R14 1
      116 SETTABLEKS                       R14 R13 K43 ["punct"]
      118 LOADB                            R14 1
      119 SETTABLEKS                       R14 R13 K44 ["space"]
      121 LOADB                            R14 1
      122 SETTABLEKS                       R14 R13 K45 ["upper"]
      124 LOADB                            R14 1
      125 SETTABLEKS                       R14 R13 K46 ["word"]
      127 LOADB                            R14 1
      128 SETTABLEKS                       R14 R13 K47 ["xdigit"]
      130 NEWTABLE                         R14 16 0
      132 NEWTABLE                         R15 0 3
      134 LOADK                            R16 K49 ["class"]
      135 LOADK                            R17 K39 ["digit"]
      136 LOADB                            R18 1
      137 SETLIST                          R15 R16 3 [1]
      139 SETTABLEN                        R15 R14 68
      140 NEWTABLE                         R15 0 3
      142 LOADK                            R16 K49 ["class"]
      143 LOADK                            R17 K44 ["space"]
      144 LOADB                            R18 1
      145 SETLIST                          R15 R16 3 [1]
      147 SETTABLEN                        R15 R14 83
      148 NEWTABLE                         R15 0 3
      150 LOADK                            R16 K49 ["class"]
      151 LOADK                            R17 K46 ["word"]
      152 LOADB                            R18 1
      153 SETLIST                          R15 R16 3 [1]
      155 SETTABLEN                        R15 R14 87
      156 NEWTABLE                         R15 0 3
      158 LOADK                            R16 K49 ["class"]
      159 LOADK                            R17 K39 ["digit"]
      160 LOADB                            R18 0
      161 SETLIST                          R15 R16 3 [1]
      163 SETTABLEN                        R15 R14 100
      164 NEWTABLE                         R15 0 3
      166 LOADK                            R16 K49 ["class"]
      167 LOADK                            R17 K44 ["space"]
      168 LOADB                            R18 0
      169 SETLIST                          R15 R16 3 [1]
      171 SETTABLEN                        R15 R14 115
      172 NEWTABLE                         R15 0 3
      174 LOADK                            R16 K49 ["class"]
      175 LOADK                            R17 K46 ["word"]
      176 LOADB                            R18 0
      177 SETLIST                          R15 R16 3 [1]
      179 SETTABLEN                        R15 R14 119
      180 NEWTABLE                         R15 0 3
      182 LOADK                            R16 K49 ["class"]
      183 LOADK                            R17 K37 ["blank"]
      184 LOADB                            R18 1
      185 SETLIST                          R15 R16 3 [1]
      187 SETTABLEN                        R15 R14 72
      188 NEWTABLE                         R15 0 3
      190 LOADK                            R16 K49 ["class"]
      191 LOADK                            R17 K50 ["vertical_tab"]
      192 LOADB                            R18 1
      193 SETLIST                          R15 R16 3 [1]
      195 SETTABLEN                        R15 R14 86
      196 NEWTABLE                         R15 0 3
      198 LOADK                            R16 K49 ["class"]
      199 LOADK                            R17 K37 ["blank"]
      200 LOADB                            R18 0
      201 SETLIST                          R15 R16 3 [1]
      203 SETTABLEN                        R15 R14 104
      204 NEWTABLE                         R15 0 3
      206 LOADK                            R16 K49 ["class"]
      207 LOADK                            R17 K50 ["vertical_tab"]
      208 LOADB                            R18 0
      209 SETLIST                          R15 R16 3 [1]
      211 SETTABLEN                        R15 R14 118
      212 NEWTABLE                         R15 0 1
      214 LOADN                            R16 78
      215 SETLIST                          R15 R16 1 [1]
      217 SETTABLEN                        R15 R14 78
      218 NEWTABLE                         R15 0 1
      220 LOADN                            R16 82
      221 SETLIST                          R15 R16 1 [1]
      223 SETTABLEN                        R15 R14 82
      224 LOADN                            R15 8
      225 SETTABLEN                        R15 R14 66
      226 LOADN                            R15 10
      227 SETTABLEN                        R15 R14 110
      228 LOADN                            R15 13
      229 SETTABLEN                        R15 R14 114
      230 LOADN                            R15 9
      231 SETTABLEN                        R15 R14 116
      232 NEWTABLE                         R15 8 0
      234 NEWTABLE                         R16 0 2
      236 LOADN                            R17 98
      237 NEWTABLE                         R18 0 3
      239 LOADK                            R19 K49 ["class"]
      240 LOADK                            R20 K46 ["word"]
      241 LOADB                            R21 0
      242 SETLIST                          R18 R19 3 [1]
      244 SETLIST                          R16 R17 2 [1]
      246 SETTABLEN                        R16 R15 98
      247 NEWTABLE                         R16 0 2
      249 LOADN                            R17 66
      250 NEWTABLE                         R18 0 3
      252 LOADK                            R19 K49 ["class"]
      253 LOADK                            R20 K46 ["word"]
      254 LOADB                            R21 0
      255 SETLIST                          R18 R19 3 [1]
      257 SETLIST                          R16 R17 2 [1]
      259 SETTABLEN                        R16 R15 66
      260 NEWTABLE                         R16 0 1
      262 LOADN                            R17 75
      263 SETLIST                          R16 R17 1 [1]
      265 SETTABLEN                        R16 R15 75
      266 NEWTABLE                         R16 0 1
      268 LOADN                            R17 71
      269 SETLIST                          R16 R17 1 [1]
      271 SETTABLEN                        R16 R15 71
      272 NEWTABLE                         R16 0 1
      274 LOADN                            R17 74
      275 SETLIST                          R16 R17 1 [1]
      277 SETTABLEN                        R16 R15 74
      278 NEWTABLE                         R16 0 1
      280 LOADN                            R17 90
      281 SETLIST                          R16 R17 1 [1]
      283 SETTABLEN                        R16 R15 90
      284 NEWTABLE                         R16 0 1
      286 LOADN                            R17 122
      287 SETLIST                          R16 R17 1 [1]
      289 SETTABLEN                        R16 R15 122
      290 NEWTABLE                         R16 64 0
      292 LOADB                            R17 1
      293 SETTABLEKS                       R17 R16 K51 ["C"]
      295 LOADB                            R17 1
      296 SETTABLEKS                       R17 R16 K52 ["Cc"]
      298 LOADB                            R17 1
      299 SETTABLEKS                       R17 R16 K53 ["Cf"]
      301 LOADB                            R17 1
      302 SETTABLEKS                       R17 R16 K54 ["Cn"]
      304 LOADB                            R17 1
      305 SETTABLEKS                       R17 R16 K55 ["Co"]
      307 LOADB                            R17 1
      308 SETTABLEKS                       R17 R16 K56 ["Cs"]
      310 LOADB                            R17 1
      311 SETTABLEKS                       R17 R16 K57 ["L"]
      313 LOADB                            R17 1
      314 SETTABLEKS                       R17 R16 K58 ["Ll"]
      316 LOADB                            R17 1
      317 SETTABLEKS                       R17 R16 K59 ["Lm"]
      319 LOADB                            R17 1
      320 SETTABLEKS                       R17 R16 K60 ["Lo"]
      322 LOADB                            R17 1
      323 SETTABLEKS                       R17 R16 K61 ["Lt"]
      325 LOADB                            R17 1
      326 SETTABLEKS                       R17 R16 K62 ["Lu"]
      328 LOADB                            R17 1
      329 SETTABLEKS                       R17 R16 K63 ["M"]
      331 LOADB                            R17 1
      332 SETTABLEKS                       R17 R16 K64 ["Mc"]
      334 LOADB                            R17 1
      335 SETTABLEKS                       R17 R16 K65 ["Me"]
      337 LOADB                            R17 1
      338 SETTABLEKS                       R17 R16 K66 ["Mn"]
      340 LOADB                            R17 1
      341 SETTABLEKS                       R17 R16 K67 ["N"]
      343 LOADB                            R17 1
      344 SETTABLEKS                       R17 R16 K68 ["Nd"]
      346 LOADB                            R17 1
      347 SETTABLEKS                       R17 R16 K69 ["Nl"]
      349 LOADB                            R17 1
      350 SETTABLEKS                       R17 R16 K70 ["No"]
      352 LOADB                            R17 1
      353 SETTABLEKS                       R17 R16 K71 ["P"]
      355 LOADB                            R17 1
      356 SETTABLEKS                       R17 R16 K72 ["Pc"]
      358 LOADB                            R17 1
      359 SETTABLEKS                       R17 R16 K73 ["Pd"]
      361 LOADB                            R17 1
      362 SETTABLEKS                       R17 R16 K74 ["Pe"]
      364 LOADB                            R17 1
      365 SETTABLEKS                       R17 R16 K75 ["Pf"]
      367 LOADB                            R17 1
      368 SETTABLEKS                       R17 R16 K76 ["Pi"]
      370 LOADB                            R17 1
      371 SETTABLEKS                       R17 R16 K77 ["Po"]
      373 LOADB                            R17 1
      374 SETTABLEKS                       R17 R16 K78 ["Ps"]
      376 LOADB                            R17 1
      377 SETTABLEKS                       R17 R16 K79 ["S"]
      379 LOADB                            R17 1
      380 SETTABLEKS                       R17 R16 K80 ["Sc"]
      382 LOADB                            R17 1
      383 SETTABLEKS                       R17 R16 K81 ["Sk"]
      385 LOADB                            R17 1
      386 SETTABLEKS                       R17 R16 K82 ["Sm"]
      388 LOADB                            R17 1
      389 SETTABLEKS                       R17 R16 K83 ["So"]
      391 LOADB                            R17 1
      392 SETTABLEKS                       R17 R16 K84 ["Z"]
      394 LOADB                            R17 1
      395 SETTABLEKS                       R17 R16 K85 ["Zl"]
      397 LOADB                            R17 1
      398 SETTABLEKS                       R17 R16 K86 ["Zp"]
      400 LOADB                            R17 1
      401 SETTABLEKS                       R17 R16 K87 ["Zs"]
      403 LOADB                            R17 1
      404 SETTABLEKS                       R17 R16 K88 ["Xan"]
      406 LOADB                            R17 1
      407 SETTABLEKS                       R17 R16 K89 ["Xps"]
      409 LOADB                            R17 1
      410 SETTABLEKS                       R17 R16 K90 ["Xsp"]
      412 LOADB                            R17 1
      413 SETTABLEKS                       R17 R16 K91 ["Xuc"]
      415 LOADB                            R17 1
      416 SETTABLEKS                       R17 R16 K92 ["Xwd"]
      418 NEWTABLE                         R17 32 0
      420 LOADB                            R18 1
      421 SETTABLEN                        R18 R17 33
      422 LOADB                            R18 1
      423 SETTABLEN                        R18 R17 34
      424 LOADB                            R18 1
      425 SETTABLEN                        R18 R17 35
      426 LOADB                            R18 1
      427 SETTABLEN                        R18 R17 36
      428 LOADB                            R18 1
      429 SETTABLEN                        R18 R17 37
      430 LOADB                            R18 1
      431 SETTABLEN                        R18 R17 38
      432 LOADB                            R18 1
      433 SETTABLEN                        R18 R17 39
      434 LOADB                            R18 1
      435 SETTABLEN                        R18 R17 40
      436 LOADB                            R18 1
      437 SETTABLEN                        R18 R17 41
      438 LOADB                            R18 1
      439 SETTABLEN                        R18 R17 42
      440 LOADB                            R18 1
      441 SETTABLEN                        R18 R17 43
      442 LOADB                            R18 1
      443 SETTABLEN                        R18 R17 44
      444 LOADB                            R18 1
      445 SETTABLEN                        R18 R17 45
      446 LOADB                            R18 1
      447 SETTABLEN                        R18 R17 46
      448 LOADB                            R18 1
      449 SETTABLEN                        R18 R17 47
      450 LOADB                            R18 1
      451 SETTABLEN                        R18 R17 58
      452 LOADB                            R18 1
      453 SETTABLEN                        R18 R17 59
      454 LOADB                            R18 1
      455 SETTABLEN                        R18 R17 60
      456 LOADB                            R18 1
      457 SETTABLEN                        R18 R17 61
      458 LOADB                            R18 1
      459 SETTABLEN                        R18 R17 62
      460 LOADB                            R18 1
      461 SETTABLEN                        R18 R17 63
      462 LOADB                            R18 1
      463 SETTABLEN                        R18 R17 64
      464 LOADB                            R18 1
      465 SETTABLEN                        R18 R17 91
      466 LOADB                            R18 1
      467 SETTABLEN                        R18 R17 92
      468 LOADB                            R18 1
      469 SETTABLEN                        R18 R17 93
      470 LOADB                            R18 1
      471 SETTABLEN                        R18 R17 94
      472 LOADB                            R18 1
      473 SETTABLEN                        R18 R17 95
      474 LOADB                            R18 1
      475 SETTABLEN                        R18 R17 96
      476 LOADB                            R18 1
      477 SETTABLEN                        R18 R17 123
      478 LOADB                            R18 1
      479 SETTABLEN                        R18 R17 124
      480 LOADB                            R18 1
      481 SETTABLEN                        R18 R17 125
      482 LOADB                            R18 1
      483 SETTABLEN                        R18 R17 126
      484 NEWTABLE                         R18 0 1
      486 LOADN                            R19 36
      487 SETLIST                          R18 R19 1 [1]
      489 NEWTABLE                         R19 0 1
      491 LOADN                            R20 46
      492 SETLIST                          R19 R20 1 [1]
      494 NEWTABLE                         R20 0 1
      496 LOADN                            R21 94
      497 SETLIST                          R20 R21 1 [1]
      499 NEWTABLE                         R21 0 1
      501 LOADN                            R22 124
      502 SETLIST                          R21 R22 1 [1]
      504 DUPCLOSURE                       R22 K93 [PROTO_5]
      505 CAPTURE                          VAL R4
      506 CAPTURE                          VAL R5
      507 DUPCLOSURE                       R23 K94 [PROTO_6]
      508 CAPTURE                          VAL R4
      509 NEWCLOSURE                       R24 P5
      510 CAPTURE                          REF R8
      511 CAPTURE                          REF R7
      512 CAPTURE                          VAL R23
      513 CAPTURE                          VAL R4
      514 DUPCLOSURE                       R26 K95 [PROTO_8]
      515 LOADK                            R27 K96 ["group"]
      516 NEWCLOSURE                       R25 P7
      517 CAPTURE                          VAL R4
      518 CAPTURE                          VAL R27
      519 CAPTURE                          VAL R26
      520 SETTABLEKS                       R25 R7 K96 ["group"]
      522 DUPCLOSURE                       R26 K97 [PROTO_9]
      523 LOADK                            R27 K98 ["span"]
      524 NEWCLOSURE                       R25 P7
      525 CAPTURE                          VAL R4
      526 CAPTURE                          VAL R27
      527 CAPTURE                          VAL R26
      528 SETTABLEKS                       R25 R7 K98 ["span"]
      530 DUPCLOSURE                       R26 K99 [PROTO_10]
      531 LOADK                            R27 K100 ["groups"]
      532 NEWCLOSURE                       R25 P7
      533 CAPTURE                          VAL R4
      534 CAPTURE                          VAL R27
      535 CAPTURE                          VAL R26
      536 SETTABLEKS                       R25 R7 K100 ["groups"]
      538 DUPCLOSURE                       R26 K101 [PROTO_11]
      539 LOADK                            R27 K102 ["groupdict"]
      540 NEWCLOSURE                       R25 P7
      541 CAPTURE                          VAL R4
      542 CAPTURE                          VAL R27
      543 CAPTURE                          VAL R26
      544 SETTABLEKS                       R25 R7 K102 ["groupdict"]
      546 DUPCLOSURE                       R26 K103 [PROTO_12]
      547 LOADK                            R27 K102 ["groupdict"]
      548 NEWCLOSURE                       R25 P7
      549 CAPTURE                          VAL R4
      550 CAPTURE                          VAL R27
      551 CAPTURE                          VAL R26
      552 SETTABLEKS                       R25 R7 K104 ["grouparr"]
      554 DUPTABLE                         R25 K111 [{"CR", "LF", "CRLF", "ANYRLF", "ANY", "NUL"}]
      555 LOADN                            R26 0
      556 SETTABLEKS                       R26 R25 K105 ["CR"]
      558 LOADN                            R26 1
      559 SETTABLEKS                       R26 R25 K106 ["LF"]
      561 LOADN                            R26 2
      562 SETTABLEKS                       R26 R25 K107 ["CRLF"]
      564 LOADN                            R26 3
      565 SETTABLEKS                       R26 R25 K108 ["ANYRLF"]
      567 LOADN                            R26 4
      568 SETTABLEKS                       R26 R25 K109 ["ANY"]
      570 LOADN                            R26 5
      571 SETTABLEKS                       R26 R25 K110 ["NUL"]
      573 DUPCLOSURE                       R26 K112 [PROTO_13]
      574 DUPCLOSURE                       R27 K113 [PROTO_14]
      575 CAPTURE                          VAL R27
      576 CAPTURE                          VAL R1
      577 CAPTURE                          VAL R17
      578 CAPTURE                          VAL R3
      579 CAPTURE                          VAL R26
      580 DUPCLOSURE                       R28 K114 [PROTO_15]
      581 CAPTURE                          VAL R21
      582 DUPCLOSURE                       R29 K115 [PROTO_16]
      583 CAPTURE                          VAL R28
      584 CAPTURE                          VAL R27
      585 CAPTURE                          VAL R26
      586 DUPCLOSURE                       R31 K116 [PROTO_17]
      587 CAPTURE                          VAL R29
      588 CAPTURE                          VAL R9
      589 LOADK                            R32 K117 ["test"]
      590 NEWCLOSURE                       R30 P17
      591 CAPTURE                          VAL R4
      592 CAPTURE                          VAL R32
      593 CAPTURE                          VAL R5
      594 CAPTURE                          VAL R31
      595 SETTABLEKS                       R30 R6 K117 ["test"]
      597 DUPCLOSURE                       R31 K118 [PROTO_18]
      598 CAPTURE                          VAL R29
      599 CAPTURE                          VAL R9
      600 CAPTURE                          VAL R24
      601 LOADK                            R32 K119 ["match"]
      602 NEWCLOSURE                       R30 P17
      603 CAPTURE                          VAL R4
      604 CAPTURE                          VAL R32
      605 CAPTURE                          VAL R5
      606 CAPTURE                          VAL R31
      607 SETTABLEKS                       R30 R6 K119 ["match"]
      609 DUPCLOSURE                       R31 K120 [PROTO_20]
      610 CAPTURE                          VAL R9
      611 CAPTURE                          VAL R29
      612 CAPTURE                          VAL R24
      613 LOADK                            R32 K121 ["matchall"]
      614 NEWCLOSURE                       R30 P17
      615 CAPTURE                          VAL R4
      616 CAPTURE                          VAL R32
      617 CAPTURE                          VAL R5
      618 CAPTURE                          VAL R31
      619 SETTABLEKS                       R30 R6 K121 ["matchall"]
      621 DUPCLOSURE                       R30 K122 [PROTO_21]
      622 CAPTURE                          VAL R30
      623 DUPCLOSURE                       R32 K123 [PROTO_22]
      624 CAPTURE                          VAL R9
      625 CAPTURE                          VAL R14
      626 CAPTURE                          VAL R29
      627 CAPTURE                          VAL R30
      628 CAPTURE                          VAL R24
      629 CAPTURE                          VAL R10
      630 LOADK                            R33 K124 ["sub"]
      631 NEWCLOSURE                       R31 P17
      632 CAPTURE                          VAL R4
      633 CAPTURE                          VAL R33
      634 CAPTURE                          VAL R5
      635 CAPTURE                          VAL R32
      636 SETTABLEKS                       R31 R6 K124 ["sub"]
      638 DUPCLOSURE                       R32 K125 [PROTO_23]
      639 CAPTURE                          VAL R9
      640 CAPTURE                          VAL R29
      641 LOADK                            R33 K126 ["split"]
      642 NEWCLOSURE                       R31 P17
      643 CAPTURE                          VAL R4
      644 CAPTURE                          VAL R33
      645 CAPTURE                          VAL R5
      646 CAPTURE                          VAL R32
      647 SETTABLEKS                       R31 R6 K126 ["split"]
      649 NEWCLOSURE                       R31 P23
      650 CAPTURE                          REF R6
      651 CAPTURE                          VAL R4
      652 DUPCLOSURE                       R32 K127 [PROTO_25]
      653 CAPTURE                          VAL R4
      654 NEWTABLE                         R33 8 0
      656 LOADB                            R34 1
      657 SETTABLEN                        R34 R33 58
      658 LOADB                            R34 1
      659 SETTABLEN                        R34 R33 33
      660 LOADB                            R34 1
      661 SETTABLEN                        R34 R33 61
      662 LOADB                            R34 1
      663 SETTABLEN                        R34 R33 62
      664 LOADB                            R34 1
      665 SETTABLEN                        R34 R33 124
      666 DUPCLOSURE                       R34 K128 [PROTO_26]
      667 CAPTURE                          VAL R0
      668 CAPTURE                          VAL R25
      669 CAPTURE                          VAL R33
      670 CAPTURE                          VAL R21
      671 CAPTURE                          VAL R19
      672 CAPTURE                          VAL R14
      673 CAPTURE                          VAL R13
      674 CAPTURE                          VAL R16
      675 CAPTURE                          VAL R2
      676 CAPTURE                          VAL R15
      677 CAPTURE                          VAL R20
      678 CAPTURE                          VAL R18
      679 GETTABLEKS                       R36 R0 K0 ["cacheSize"]
      681 FASTCALL1                        TONUMBER R36 ; [+2]
      682 GETIMPORT                        R35 K130 [tonumber]
      684 CALL                             R35 1 1
      685 JUMPIF                           R35 ; [+14]
      686 GETIMPORT                        R35 K132 [error]
      688 GETIMPORT                        R36 K135 [string.format]
      690 LOADK                            R37 K136 ["expected number for options.cacheSize, got %s"]
      691 GETTABLEKS                       R39 R0 K0 ["cacheSize"]
      693 FASTCALL1                        TYPEOF R39 ; [+2]
      694 GETIMPORT                        R38 K138 [typeof]
      696 CALL                             R38 1 1
      697 CALL                             R36 2 1
      698 LOADN                            R37 2
      699 CALL                             R35 2 0
      700 LOADB                            R35 0
      701 GETTABLEKS                       R38 R0 K0 ["cacheSize"]
      703 ORK                              R37 R38 K139 [0]
      704 FASTCALL1                        MATH_FLOOR R37 ; [+2]
      705 GETIMPORT                        R36 K142 [math.floor]
      707 CALL                             R36 1 1
      708 JUMPIFEQKN                       R36 K139 [0] ; [+7]
      710 GETTABLEKS                       R36 R0 K0 ["cacheSize"]
      712 FASTCALL1                        TONUMBER R36 ; [+2]
      713 GETIMPORT                        R35 K130 [tonumber]
      715 CALL                             R35 1 1
      716 LOADNIL                          R36
      717 LOADNIL                          R37
      718 JUMPIF                           R35 ; [+1]
      719 JUMP                             ; [+47]
      720 LOADN                            R38 0
      721 JUMPIFLT                         R35 R38 ; [+3]
      723 JUMPIFEQ                         R35 R35 ; [+7]
      725 GETIMPORT                        R38 K132 [error]
      727 LOADK                            R39 K143 ["cache size cannot be a negative number or a NaN"]
      728 LOADN                            R40 2
      729 CALL                             R38 2 0
      730 JUMP                             ; [+36]
      731 JUMPIFNOTEQKN                    R35 K144 [∞] ; [+14]
      733 NEWTABLE                         R38 0 1
      735 LOADNIL                          R39
      736 SETLIST                          R38 R39 1 [1]
      738 MOVE                             R36 R38
      739 NEWTABLE                         R38 0 1
      741 LOADNIL                          R39
      742 SETLIST                          R38 R39 1 [1]
      744 MOVE                             R37 R38
      745 JUMP                             ; [+21]
      746 LOADK                            R38 K145 [4294967296]
      747 JUMPIFNOTLE                      R38 R35 ; [+7]
      749 GETIMPORT                        R38 K132 [error]
      751 LOADK                            R39 K146 ["cache size too large"]
      752 LOADN                            R40 2
      753 CALL                             R38 2 0
      754 JUMP                             ; [+12]
      755 GETIMPORT                        R38 K149 [table.create]
      757 GETTABLEKS                       R39 R0 K0 ["cacheSize"]
      759 CALL                             R38 1 1
      760 MOVE                             R36 R38
      761 GETIMPORT                        R38 K149 [table.create]
      763 GETTABLEKS                       R39 R0 K0 ["cacheSize"]
      765 CALL                             R38 1 1
      766 MOVE                             R37 R38
      767 JUMPIFNOT                        R35 ; [+5]
      768 NEWCLOSURE                       R38 P26
      769 CAPTURE                          REF R37
      770 CAPTURE                          REF R36
      771 SETTABLEKS                       R38 R5 K150 ["pruge"]
      773 NEWCLOSURE                       R38 P27
      774 CAPTURE                          VAL R35
      775 CAPTURE                          REF R36
      776 CAPTURE                          REF R37
      777 CAPTURE                          VAL R34
      778 CAPTURE                          VAL R4
      779 CAPTURE                          REF R6
      780 CAPTURE                          VAL R32
      781 CAPTURE                          REF R8
      782 DUPCLOSURE                       R39 K151 [PROTO_29]
      783 DUPCLOSURE                       R40 K152 [PROTO_30]
      784 DUPCLOSURE                       R41 K153 [PROTO_31]
      785 CAPTURE                          VAL R12
      786 CAPTURE                          VAL R40
      787 CAPTURE                          VAL R38
      788 CAPTURE                          VAL R9
      789 CAPTURE                          VAL R39
      790 SETTABLEKS                       R41 R5 K154 ["new"]
      792 DUPCLOSURE                       R41 K155 [PROTO_32]
      793 CAPTURE                          VAL R9
      794 CAPTURE                          VAL R12
      795 CAPTURE                          VAL R40
      796 CAPTURE                          VAL R38
      797 SETTABLEKS                       R41 R5 K156 ["fromstring"]
      799 NEWTABLE                         R41 8 0
      801 LOADK                            R42 K157 ["\\x00"]
      802 SETTABLEKS                       R42 R41 K158 ["\0"]
      804 LOADK                            R42 K159 ["\\n"]
      805 SETTABLEKS                       R42 R41 K160 ["\n"]
      807 LOADK                            R42 K161 ["\\t"]
      808 SETTABLEKS                       R42 R41 K162 ["\t"]
      810 LOADK                            R42 K163 ["\\r"]
      811 SETTABLEKS                       R42 R41 K164 ["\r"]
      813 LOADK                            R42 K165 ["\\f"]
      814 SETTABLEKS                       R42 R41 K166 ["\x"]
      816 DUPCLOSURE                       R42 K167 [PROTO_33]
      817 CAPTURE                          VAL R41
      818 SETTABLEKS                       R42 R5 K168 ["escape"]
      820 DUPCLOSURE                       R42 K169 [PROTO_34]
      821 CAPTURE                          VAL R4
      822 SETTABLEKS                       R42 R5 K170 ["type"]
      824 GETIMPORT                        R42 K172 [pairs]
      826 MOVE                             R43 R6
      827 CALL                             R42 1 3
      828 FORGPREP_NEXT                    R42
      829 SETTABLE                         R46 R5 R45
      830 FORGLOOP                         R42 2 ; [-2]
      832 DUPTABLE                         R42 K174 [{"__index"}]
      833 SETTABLEKS                       R6 R42 K173 ["__index"]
      835 MOVE                             R6 R42
      836 GETTABLEKS                       R42 R5 K156 ["fromstring"]
      838 LOADK                            R43 K175 ["/The\\s*metatable\\s*is\\s*(?:locked|inaccessible)(?#Nice try :])/i"]
      839 CALL                             R42 1 1
      840 MOVE                             R8 R42
      841 FASTCALL1                        GETMETATABLE R8 ; [+3]
      842 MOVE                             R43 R8
      843 GETIMPORT                        R42 K177 [getmetatable]
      845 CALL                             R42 1 1
      846 SETTABLEKS                       R8 R42 K178 ["__metatable"]
      848 DUPCLOSURE                       R42 K179 [PROTO_35]
      849 DUPTABLE                         R43 K181 [{"__index", "__metatable", "__newindex"}]
      850 SETTABLEKS                       R7 R43 K173 ["__index"]
      852 SETTABLEKS                       R8 R43 K178 ["__metatable"]
      854 SETTABLEKS                       R42 R43 K180 ["__newindex"]
      856 MOVE                             R7 R43
      857 NEWTABLE                         R44 0 0
      859 FASTCALL2                        SETMETATABLE R44 R7 ; [+4]
      861 MOVE                             R45 R7
      862 GETIMPORT                        R43 K15 [setmetatable]
      864 CALL                             R43 2 1
      865 SETTABLEKS                       R43 R5 K182 ["Match"]
      867 NEWTABLE                         R44 0 0
      869 DUPTABLE                         R45 K181 [{"__index", "__metatable", "__newindex"}]
      870 SETTABLEKS                       R5 R45 K173 ["__index"]
      872 SETTABLEKS                       R8 R45 K178 ["__metatable"]
      874 SETTABLEKS                       R42 R45 K180 ["__newindex"]
      876 FASTCALL2                        SETMETATABLE R44 R45 ; [+3]
      878 GETIMPORT                        R43 K15 [setmetatable]
      880 CALL                             R43 2 1
      881 CLOSEUPVALS                      R6
      882 RETURN                           R43 1
