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
       16 LOADN                            R3 1999
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
       68 SUBRK                            R18 K21 [1998] R19
       69 JUMPIF                           R18 ; [+1]
       70 LOADN                            R18 -1
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
        4 LOADN                            R2 7997
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
       39 SUBRK                            R13 K7 [7997] R14
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
       19 GETUPVAL                         R4 0
       20 GETTABLE                         R3 R4 R1
       21 GETTABLEKS                       R3 R3 K6 ["name"]
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
       28 GETUPVAL                         R8 0
       29 GETTABLE                         R7 R8 R1
       30 GETTABLEKS                       R7 R7 K7 ["name"]
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
       62 GETUPVAL                         R7 2
       63 GETTABLEKS                       R7 R7 K18 ["fromstring"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 GETTABLEKS                       R1 R1 K0 ["spans"]
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
       29 DUPTABLE                         R7 K15 [{["name"] = "Match", ["spans"], ["group_id"]}]
       30 SETTABLEKS                       R0 R7 K13 ["spans"]
       32 SETTABLEKS                       R1 R7 K14 ["group_id"]
       34 SETTABLE                         R7 R6 R4
       35 RETURN                           R4 1

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
       18 GETTABLEKS                       R4 R0 K0 ["spans"]
       20 GETTABLEKS                       R4 R4 K5 ["input"]
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
       40 GETTABLEN                        R5 R3 5
       41 GETTABLEKS                       R5 R5 K4 ["count"]
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
      699 LOADN                            R28 -1
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
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K1 ["n"]
        5 ADDK                             R2 R3 K0 [1]
        6 JUMPIFNOTLE                      R1 R2 ; [+15]
        8 GETUPVAL                         R0 2
        9 GETUPVAL                         R1 3
       10 GETTABLEKS                       R1 R1 K2 ["token"]
       12 GETUPVAL                         R2 1
       13 GETUPVAL                         R3 0
       14 GETUPVAL                         R4 3
       15 GETTABLEKS                       R4 R4 K3 ["flags"]
       17 GETUPVAL                         R5 3
       18 GETTABLEKS                       R5 R5 K4 ["verb_flags"]
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
       43 GETUPVAL                         R3 3
       44 GETTABLEKS                       R3 R3 K5 ["group_id"]
       46 GETUPVAL                         R4 5
       47 GETUPVAL                         R5 1
       48 GETTABLEKS                       R5 R5 K6 ["s"]
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
       29 DUPTABLE                         R6 K15 [{["l"] = False, ["o"] = False, ["u"] = False}]
       30 GETIMPORT                        R7 K17 [string.gmatch]
       32 ORK                              R8 R4 K18 [""]
       33 GETIMPORT                        R9 K21 [utf8.charpattern]
       35 CALL                             R7 2 3
       36 FORGPREP                         R7
       37 GETTABLE                         R12 R6 R10
       38 JUMPIFEQKB                       R12 FALSE ; [+8]
       40 GETIMPORT                        R12 K5 [error]
       42 LOADK                            R14 K22 ["invalid regular expression substitution flag "]
       43 MOVE                             R15 R10
       44 CONCAT                           R13 R14 R15
       45 LOADN                            R14 3
       46 CALL                             R12 2 0
       47 LOADB                            R12 1
       48 SETTABLE                         R12 R6 R10
       49 FORGLOOP                         R7 1 ; [-13]
       51 FASTCALL1                        TYPE R1 ; [+3]
       52 MOVE                             R8 R1
       53 GETIMPORT                        R7 K1 [type]
       55 CALL                             R7 1 1
       56 JUMPIFNOTEQKS                    R7 K2 ["number"] ; [+5]
       58 MOVE                             R8 R1
       59 LOADK                            R9 K18 [""]
       60 CONCAT                           R1 R8 R9
       61 JUMP                             ; [+28]
       62 JUMPIFEQKS                       R7 K3 ["string"] ; [+27]
       64 JUMPIFEQKS                       R7 K23 ["function"] ; [+25]
       66 GETTABLEKS                       R8 R6 K13 ["o"]
       68 JUMPIFNOT                        R8 ; [+2]
       69 JUMPIFEQKS                       R7 K24 ["table"] ; [+20]
       71 GETIMPORT                        R8 K5 [error]
       73 GETIMPORT                        R9 K7 [string.format]
       75 LOADK                            R10 K25 ["invalid argument #2 to 'sub' (string/function%s expected, got %s)"]
       76 GETTABLEKS                       R12 R6 K13 ["o"]
       78 JUMPIFNOT                        R12 ; [+2]
       79 LOADK                            R11 K26 ["/table"]
       80 JUMP                             ; [+1]
       81 LOADK                            R11 K18 [""]
       82 FASTCALL1                        TYPEOF R1 ; [+3]
       83 MOVE                             R13 R1
       84 GETIMPORT                        R12 K10 [typeof]
       86 CALL                             R12 1 1
       87 CALL                             R9 3 1
       88 LOADN                            R10 3
       89 CALL                             R8 2 0
       90 FASTCALL1                        TONUMBER R3 ; [+3]
       91 MOVE                             R9 R3
       92 GETIMPORT                        R8 K28 [tonumber]
       94 CALL                             R8 1 1
       95 JUMPIFNOT                        R8 ; [+13]
       96 FASTCALL1                        TONUMBER R3 ; [+3]
       97 MOVE                             R9 R3
       98 GETIMPORT                        R8 K28 [tonumber]
      100 CALL                             R8 1 1
      101 MOVE                             R3 R8
      102 LOADN                            R8 -1
      103 JUMPIFLE                         R3 R8 ; [+3]
      105 JUMPIFEQ                         R3 R3 ; [+20]
      107 LOADK                            R3 K29 [∞]
      108 JUMP                             ; [+17]
      109 JUMPIFEQKNIL                     R3 ; [+15]
      111 GETIMPORT                        R8 K5 [error]
      113 GETIMPORT                        R9 K7 [string.format]
      115 LOADK                            R10 K30 ["invalid argument #4 to 'sub' (number expected, got %s)"]
      116 FASTCALL1                        TYPEOF R3 ; [+3]
      117 MOVE                             R12 R3
      118 GETIMPORT                        R11 K10 [typeof]
      120 CALL                             R11 1 1
      121 CALL                             R9 2 1
      122 LOADN                            R10 3
      123 CALL                             R8 2 0
      124 JUMP                             ; [+1]
      125 LOADK                            R3 K29 [∞]
      126 LOADN                            R8 1
      127 JUMPIFNOTLT                      R3 R8 ; [+4]
      129 MOVE                             R8 R2
      130 LOADN                            R9 0
      131 RETURN                           R8 2
      132 LOADN                            R8 0
      133 JUMPIFNOTEQKS                    R7 K3 ["string"] ; [+560]
      135 GETUPVAL                         R9 0
      136 MOVE                             R10 R1
      137 CALL                             R9 1 1
      138 MOVE                             R1 R9
      139 GETTABLEKS                       R9 R6 K11 ["l"]
      141 JUMPIF                           R9 ; [+552]
      142 LOADN                            R9 0
      143 GETIMPORT                        R10 K32 [table.create]
      145 LOADN                            R11 3
      146 CALL                             R10 1 1
      147 GETTABLEKS                       R11 R0 K33 ["token"]
      149 GETTABLEKS                       R11 R11 K34 ["group_n"]
      151 NEWTABLE                         R12 0 0
      153 GETTABLEKS                       R13 R1 K35 ["n"]
      155 JUMPIFNOTLT                      R9 R13 ; [+509]
      157 MOVE                             R13 R9
      158 ADDK                             R13 R13 K36 [1]
      159 GETTABLE                         R14 R1 R13
      160 JUMPIFNOT                        R14 ; [+15]
      161 GETTABLE                         R14 R1 R13
      162 JUMPIFEQKN                       R14 K37 [36] ; [+13]
      164 GETTABLE                         R14 R1 R13
      165 JUMPIFEQKN                       R14 K38 [92] ; [+10]
      167 GETTABLE                         R14 R1 R13
      168 JUMPIFEQKN                       R14 K39 [58] ; [+4]
      170 GETTABLE                         R14 R1 R13
      171 JUMPIFNOTEQKN                    R14 K40 [125] ; [+3]
      173 GETTABLEN                        R14 R12 1
      174 JUMPIF                           R14 ; [+1]
      175 JUMPBACK                         ; [-18]
      176 SUB                              R15 R13 R9
      177 SUBK                             R14 R15 K36 [1]
      178 ADD                              R8 R8 R14
      179 SUB                              R14 R13 R9
      180 LOADN                            R15 1
      181 JUMPIFNOTLT                      R15 R14 ; [+18]
      183 MOVE                             R15 R10
      184 GETIMPORT                        R16 K42 [table.move]
      186 MOVE                             R17 R1
      187 ADDK                             R18 R9 K36 [1]
      188 SUBK                             R19 R13 K36 [1]
      189 LOADN                            R20 1
      190 GETIMPORT                        R21 K32 [table.create]
      192 SUB                              R23 R13 R9
      193 SUBK                             R22 R23 K36 [1]
      194 CALL                             R21 1 -1
      195 CALL                             R16 -1 -1
      196 FASTCALL                         TABLE_INSERT ; [+2]
      197 GETIMPORT                        R14 K44 [table.insert]
      199 CALL                             R14 -1 0
      200 GETTABLE                         R14 R1 R13
      201 JUMPIFNOTEQKN                    R14 K39 [58] ; [+32]
      203 GETTABLEN                        R14 R12 1
      204 GETTABLEN                        R15 R14 2
      205 JUMPIFNOT                        R15 ; [+5]
      206 GETIMPORT                        R15 K5 [error]
      208 LOADK                            R16 K45 ["malformed substitution pattern"]
      209 LOADN                            R17 3
      210 CALL                             R15 2 0
      211 GETIMPORT                        R15 K42 [table.move]
      213 MOVE                             R16 R10
      214 GETTABLEN                        R17 R14 3
      215 LENGTH                           R18 R10
      216 LOADN                            R19 1
      217 GETIMPORT                        R20 K32 [table.create]
      219 LENGTH                           R23 R10
      220 ADDK                             R22 R23 K36 [1]
      221 GETTABLEN                        R23 R14 3
      222 SUB                              R21 R22 R23
      223 CALL                             R20 1 -1
      224 CALL                             R15 -1 1
      225 SETTABLEN                        R15 R14 2
      226 LENGTH                           R17 R10
      227 GETTABLEN                        R15 R14 3
      228 LOADN                            R16 -1
      229 FORNPREP                         R15
      230 LOADNIL                          R18
      231 SETTABLE                         R18 R10 R17
      232 FORNLOOP                         R15
      233 JUMP                             ; [+429]
      234 GETTABLE                         R14 R1 R13
      235 JUMPIFNOTEQKN                    R14 K40 [125] ; [+48]
      237 GETIMPORT                        R14 K47 [table.remove]
      239 MOVE                             R15 R12
      240 LOADN                            R16 1
      241 CALL                             R14 2 1
      242 GETIMPORT                        R15 K42 [table.move]
      244 MOVE                             R16 R10
      245 GETTABLEN                        R17 R14 3
      246 LENGTH                           R18 R10
      247 LOADN                            R19 1
      248 GETIMPORT                        R20 K32 [table.create]
      250 LENGTH                           R23 R10
      251 ADDK                             R22 R23 K36 [1]
      252 GETTABLEN                        R23 R14 3
      253 SUB                              R21 R22 R23
      254 CALL                             R20 1 -1
      255 CALL                             R15 -1 1
      256 LENGTH                           R18 R10
      257 GETTABLEN                        R16 R14 3
      258 LOADN                            R17 -1
      259 FORNPREP                         R16
      260 LOADNIL                          R19
      261 SETTABLE                         R19 R10 R18
      262 FORNLOOP                         R16
      263 NEWTABLE                         R18 0 4
      265 LOADK                            R19 K48 ["condition"]
      266 GETTABLEN                        R20 R14 1
      267 LOADB                            R21 0
      268 GETTABLEN                        R22 R14 2
      269 JUMPIFEQKB                       R22 TRUE ; [+3]
      271 GETTABLEN                        R22 R14 2
      272 OR                               R21 R22 R15
      273 GETTABLEN                        R23 R14 2
      274 AND                              R22 R23 R15
      275 SETLIST                          R18 R19 4 [1]
      277 FASTCALL2                        TABLE_INSERT R10 R18 ; [+4]
      279 MOVE                             R17 R10
      280 GETIMPORT                        R16 K44 [table.insert]
      282 CALL                             R16 2 0
      283 JUMP                             ; [+379]
      284 GETTABLE                         R14 R1 R13
      285 JUMPIFNOT                        R14 ; [+377]
      286 ADDK                             R13 R13 K36 [1]
      287 GETTABLE                         R14 R1 R13
      288 JUMPIF                           R14 ; [+40]
      289 SUBK                             R16 R13 K36 [1]
      290 GETTABLE                         R15 R1 R16
      291 JUMPIFNOTEQKN                    R15 K38 [92] ; [+6]
      293 GETIMPORT                        R15 K5 [error]
      295 LOADK                            R16 K49 ["replacement string must not end with a trailing backslash"]
      296 LOADN                            R17 3
      297 CALL                             R15 2 0
      298 LENGTH                           R16 R10
      299 GETTABLE                         R15 R10 R16
      300 FASTCALL1                        TYPE R15 ; [+3]
      301 MOVE                             R17 R15
      302 GETIMPORT                        R16 K1 [type]
      304 CALL                             R16 1 1
      305 JUMPIFNOTEQKS                    R16 K24 ["table"] ; [+10]
      307 SUBK                             R19 R13 K36 [1]
      308 GETTABLE                         R18 R1 R19
      309 FASTCALL2                        TABLE_INSERT R15 R18 ; [+4]
      311 MOVE                             R17 R15
      312 GETIMPORT                        R16 K44 [table.insert]
      314 CALL                             R16 2 0
      315 JUMP                             ; [+347]
      316 NEWTABLE                         R18 0 1
      318 SUBK                             R20 R13 K36 [1]
      319 GETTABLE                         R19 R1 R20
      320 SETLIST                          R18 R19 1 [1]
      322 FASTCALL2                        TABLE_INSERT R10 R18 ; [+4]
      324 MOVE                             R17 R10
      325 GETIMPORT                        R16 K44 [table.insert]
      327 CALL                             R16 2 0
      328 JUMP                             ; [+334]
      329 JUMPIFNOTEQKN                    R14 K38 [92] ; [+36]
      331 SUBK                             R16 R13 K36 [1]
      332 GETTABLE                         R15 R1 R16
      333 JUMPIFNOTEQKN                    R15 K37 [36] ; [+32]
      335 LENGTH                           R16 R10
      336 GETTABLE                         R15 R10 R16
      337 FASTCALL1                        TYPE R15 ; [+3]
      338 MOVE                             R17 R15
      339 GETIMPORT                        R16 K1 [type]
      341 CALL                             R16 1 1
      342 JUMPIFNOTEQKS                    R16 K24 ["table"] ; [+9]
      344 FASTCALL2K                       TABLE_INSERT R15 K37 ; [+5]
      346 MOVE                             R17 R15
      347 LOADK                            R18 K37 [36]
      348 GETIMPORT                        R16 K44 [table.insert]
      350 CALL                             R16 2 0
      351 JUMP                             ; [+11]
      352 NEWTABLE                         R18 0 1
      354 LOADN                            R19 36
      355 SETLIST                          R18 R19 1 [1]
      357 FASTCALL2                        TABLE_INSERT R10 R18 ; [+4]
      359 MOVE                             R17 R10
      360 GETIMPORT                        R16 K44 [table.insert]
      362 CALL                             R16 2 0
      363 SUBK                             R13 R13 K36 [1]
      364 ADDK                             R8 R8 K36 [1]
      365 JUMP                             ; [+297]
      366 JUMPIFNOTEQKN                    R14 K50 [48] ; [+9]
      368 FASTCALL2K                       TABLE_INSERT R10 K51 ; [+5]
      370 MOVE                             R16 R10
      371 LOADK                            R17 K51 [0]
      372 GETIMPORT                        R15 K44 [table.insert]
      374 CALL                             R15 2 0
      375 JUMP                             ; [+287]
      376 LOADN                            R15 48
      377 JUMPIFNOTLT                      R15 R14 ; [+50]
      379 LOADN                            R15 57
      380 JUMPIFNOTLE                      R14 R15 ; [+47]
      382 MOVE                             R15 R13
      383 SUBK                             R16 R14 K50 [48]
      384 ADDK                             R18 R13 K36 [1]
      385 GETTABLE                         R17 R1 R18
      386 JUMPIFNOT                        R17 ; [+17]
      387 ADDK                             R18 R13 K36 [1]
      388 GETTABLE                         R17 R1 R18
      389 LOADN                            R18 48
      390 JUMPIFNOTLE                      R18 R17 ; [+13]
      392 ADDK                             R18 R13 K36 [1]
      393 GETTABLE                         R17 R1 R18
      394 LOADN                            R18 57
      395 JUMPIFNOTLE                      R17 R18 ; [+8]
      397 MOVE                             R17 R16
      398 ADDK                             R20 R13 K36 [1]
      399 GETTABLE                         R19 R1 R20
      400 SUBK                             R18 R19 K50 [48]
      401 CONCAT                           R16 R17 R18
      402 ADDK                             R13 R13 K36 [1]
      403 JUMPBACK                         ; [-20]
      404 FASTCALL1                        TONUMBER R16 ; [+3]
      405 MOVE                             R18 R16
      406 GETIMPORT                        R17 K28 [tonumber]
      408 CALL                             R17 1 1
      409 MOVE                             R16 R17
      410 GETTABLEKS                       R17 R6 K14 ["u"]
      412 JUMPIF                           R17 ; [+7]
      413 JUMPIFNOTLT                      R11 R16 ; [+6]
      415 GETIMPORT                        R17 K5 [error]
      417 LOADK                            R18 K52 ["reference to non-existent subpattern"]
      418 LOADN                            R19 3
      419 CALL                             R17 2 0
      420 FASTCALL2                        TABLE_INSERT R10 R16 ; [+5]
      422 MOVE                             R18 R10
      423 MOVE                             R19 R16
      424 GETIMPORT                        R17 K44 [table.insert]
      426 CALL                             R17 2 0
      427 JUMP                             ; [+235]
      428 JUMPIFNOTEQKN                    R14 K53 [123] ; [+154]
      430 SUBK                             R16 R13 K36 [1]
      431 GETTABLE                         R15 R1 R16
      432 JUMPIFNOTEQKN                    R15 K37 [36] ; [+150]
      434 ADDK                             R13 R13 K36 [1]
      435 MOVE                             R15 R13
      436 GETTABLE                         R16 R1 R13
      437 JUMPIFNOT                        R16 ; [+29]
      438 GETTABLE                         R16 R1 R13
      439 LOADN                            R17 48
      440 JUMPIFNOTLE                      R17 R16 ; [+5]
      442 GETTABLE                         R16 R1 R13
      443 LOADN                            R17 57
      444 JUMPIFLE                         R16 R17 ; [+20]
      446 GETTABLE                         R16 R1 R13
      447 LOADN                            R17 65
      448 JUMPIFNOTLE                      R17 R16 ; [+5]
      450 GETTABLE                         R16 R1 R13
      451 LOADN                            R17 90
      452 JUMPIFLE                         R16 R17 ; [+12]
      454 GETTABLE                         R16 R1 R13
      455 LOADN                            R17 97
      456 JUMPIFNOTLE                      R17 R16 ; [+5]
      458 GETTABLE                         R16 R1 R13
      459 LOADN                            R17 122
      460 JUMPIFLE                         R16 R17 ; [+4]
      462 GETTABLE                         R16 R1 R13
      463 JUMPIFNOTEQKN                    R16 K54 [95] ; [+3]
      465 ADDK                             R13 R13 K36 [1]
      466 JUMPBACK                         ; [-31]
      467 GETTABLE                         R16 R1 R13
      468 JUMPIFEQKN                       R16 K40 [125] ; [+12]
      470 GETTABLE                         R16 R1 R13
      471 JUMPIFNOTEQKN                    R16 K39 [58] ; [+105]
      473 ADDK                             R17 R13 K36 [1]
      474 GETTABLE                         R16 R1 R17
      475 JUMPIFEQKN                       R16 K55 [43] ; [+5]
      477 ADDK                             R17 R13 K36 [1]
      478 GETTABLE                         R16 R1 R17
      479 JUMPIFNOTEQKN                    R16 K56 [45] ; [+97]
      481 JUMPIFEQ                         R13 R15 ; [+95]
      483 GETTABLEKS                       R17 R1 K57 ["s"]
      485 MOVE                             R18 R13
      486 GETIMPORT                        R19 K59 [utf8.offset]
      488 MOVE                             R20 R17
      489 MOVE                             R21 R18
      490 CALL                             R19 2 1
      491 MOVE                             R18 R19
      492 GETIMPORT                        R21 K59 [utf8.offset]
      494 MOVE                             R22 R17
      495 MOVE                             R23 R15
      496 CALL                             R21 2 1
      497 MOVE                             R22 R18
      498 JUMPIFNOT                        R22 ; [+1]
      499 SUBK                             R22 R18 K36 [1]
      500 FASTCALL3                        STRING_SUB R17 R21 R22
      502 MOVE                             R20 R17
      503 GETIMPORT                        R19 K61 [string.sub]
      505 CALL                             R19 3 1
      506 MOVE                             R16 R19
      507 GETTABLE                         R17 R1 R15
      508 LOADN                            R18 48
      509 JUMPIFNOTLE                      R18 R17 ; [+22]
      511 GETTABLE                         R17 R1 R15
      512 LOADN                            R18 57
      513 JUMPIFNOTLE                      R17 R18 ; [+18]
      515 FASTCALL1                        TONUMBER R16 ; [+3]
      516 MOVE                             R18 R16
      517 GETIMPORT                        R17 K28 [tonumber]
      519 CALL                             R17 1 1
      520 MOVE                             R16 R17
      521 GETTABLEKS                       R17 R6 K14 ["u"]
      523 JUMPIF                           R17 ; [+22]
      524 JUMPIFNOTLT                      R11 R16 ; [+21]
      526 GETIMPORT                        R17 K5 [error]
      528 LOADK                            R18 K52 ["reference to non-existent subpattern"]
      529 LOADN                            R19 3
      530 CALL                             R17 2 0
      531 JUMP                             ; [+14]
      532 GETTABLEKS                       R17 R0 K62 ["group_id"]
      534 GETTABLE                         R16 R17 R16
      535 GETTABLEKS                       R17 R6 K14 ["u"]
      537 JUMPIF                           R17 ; [+8]
      538 JUMPIFNOT                        R16 ; [+2]
      539 JUMPIFNOTLT                      R11 R16 ; [+6]
      541 GETIMPORT                        R17 K5 [error]
      543 LOADK                            R18 K52 ["reference to non-existent subpattern"]
      544 LOADN                            R19 3
      545 CALL                             R17 2 0
      546 GETTABLE                         R17 R1 R13
      547 JUMPIFNOTEQKN                    R17 K39 [58] ; [+21]
      549 ADDK                             R13 R13 K36 [1]
      550 NEWTABLE                         R19 0 3
      552 MOVE                             R20 R16
      553 GETTABLE                         R22 R1 R13
      554 JUMPIFEQKN                       R22 K56 [45] ; [+2]
      556 LOADB                            R21 0 +1
      557 LOADB                            R21 1
      558 LENGTH                           R23 R10
      559 ADDK                             R22 R23 K36 [1]
      560 SETLIST                          R19 R20 3 [1]
      562 FASTCALL2                        TABLE_INSERT R12 R19 ; [+4]
      564 MOVE                             R18 R12
      565 GETIMPORT                        R17 K44 [table.insert]
      567 CALL                             R17 2 0
      568 JUMP                             ; [+94]
      569 FASTCALL2                        TABLE_INSERT R10 R16 ; [+5]
      571 MOVE                             R18 R10
      572 MOVE                             R19 R16
      573 GETIMPORT                        R17 K44 [table.insert]
      575 CALL                             R17 2 0
      576 JUMP                             ; [+86]
      577 GETIMPORT                        R16 K5 [error]
      579 LOADK                            R17 K45 ["malformed substitution pattern"]
      580 LOADN                            R18 3
      581 CALL                             R16 2 0
      582 JUMP                             ; [+80]
      583 LOADNIL                          R15
      584 SUBK                             R17 R13 K36 [1]
      585 GETTABLE                         R16 R1 R17
      586 JUMPIFNOTEQKN                    R16 K37 [36] ; [+32]
      588 JUMPIFEQKN                       R14 K37 [36] ; [+41]
      590 LENGTH                           R17 R10
      591 GETTABLE                         R16 R10 R17
      592 FASTCALL1                        TYPE R16 ; [+3]
      593 MOVE                             R18 R16
      594 GETIMPORT                        R17 K1 [type]
      596 CALL                             R17 1 1
      597 JUMPIFNOTEQKS                    R17 K24 ["table"] ; [+9]
      599 FASTCALL2K                       TABLE_INSERT R16 K37 ; [+5]
      601 MOVE                             R18 R16
      602 LOADK                            R19 K37 [36]
      603 GETIMPORT                        R17 K44 [table.insert]
      605 CALL                             R17 2 0
      606 JUMP                             ; [+23]
      607 NEWTABLE                         R19 0 1
      609 LOADN                            R20 36
      610 SETLIST                          R19 R20 1 [1]
      612 FASTCALL2                        TABLE_INSERT R10 R19 ; [+4]
      614 MOVE                             R18 R10
      615 GETIMPORT                        R17 K44 [table.insert]
      617 CALL                             R17 2 0
      618 JUMP                             ; [+11]
      619 GETUPVAL                         R16 1
      620 GETTABLE                         R17 R1 R13
      621 GETTABLE                         R15 R16 R17
      622 FASTCALL1                        TYPE R15 ; [+3]
      623 MOVE                             R17 R15
      624 GETIMPORT                        R16 K1 [type]
      626 CALL                             R16 1 1
      627 JUMPIFEQKS                       R16 K2 ["number"] ; [+2]
      629 LOADNIL                          R15
      630 LENGTH                           R17 R10
      631 GETTABLE                         R16 R10 R17
      632 FASTCALL1                        TYPE R16 ; [+3]
      633 MOVE                             R18 R16
      634 GETIMPORT                        R17 K1 [type]
      636 CALL                             R17 1 1
      637 JUMPIFNOTEQKS                    R17 K24 ["table"] ; [+11]
      639 MOVE                             R19 R15
      640 JUMPIF                           R19 ; [+1]
      641 GETTABLE                         R19 R1 R13
      642 FASTCALL2                        TABLE_INSERT R16 R19 ; [+4]
      644 MOVE                             R18 R16
      645 GETIMPORT                        R17 K44 [table.insert]
      647 CALL                             R17 2 0
      648 JUMP                             ; [+13]
      649 NEWTABLE                         R19 0 1
      651 MOVE                             R20 R15
      652 JUMPIF                           R20 ; [+1]
      653 GETTABLE                         R20 R1 R13
      654 SETLIST                          R19 R20 1 [1]
      656 FASTCALL2                        TABLE_INSERT R10 R19 ; [+4]
      658 MOVE                             R18 R10
      659 GETIMPORT                        R17 K44 [table.insert]
      661 CALL                             R17 2 0
      662 ADDK                             R8 R8 K36 [1]
      663 MOVE                             R9 R13
      664 JUMPBACK                         ; [-512]
      665 GETTABLEN                        R13 R12 1
      666 JUMPIFNOT                        R13 ; [+5]
      667 GETIMPORT                        R13 K5 [error]
      669 LOADK                            R14 K45 ["malformed substitution pattern"]
      670 LOADN                            R15 3
      671 CALL                             R13 2 0
      672 GETTABLEN                        R13 R10 2
      673 JUMPIF                           R13 ; [+18]
      674 GETTABLEN                        R14 R10 1
      675 FASTCALL1                        TYPE R14 ; [+2]
      676 GETIMPORT                        R13 K1 [type]
      678 CALL                             R13 1 1
      679 JUMPIFNOTEQKS                    R13 K24 ["table"] ; [+12]
      681 GETTABLEN                        R14 R10 1
      682 GETTABLEN                        R13 R14 1
      683 JUMPIFEQKS                       R13 K48 ["condition"] ; [+8]
      685 GETTABLEN                        R13 R10 1
      686 GETTABLEN                        R15 R10 1
      687 LENGTH                           R14 R15
      688 SETTABLEKS                       R14 R1 K35 ["n"]
      690 MOVE                             R1 R13
      691 JUMP                             ; [+2]
      692 MOVE                             R1 R10
      693 LOADK                            R7 K63 ["subst_string"]
      694 GETUPVAL                         R9 0
      695 MOVE                             R10 R2
      696 CALL                             R9 1 1
      697 MOVE                             R2 R9
      698 LOADN                            R9 0
      699 LOADN                            R10 1
      700 LOADN                            R11 0
      701 GETTABLEKS                       R14 R2 K35 ["n"]
      703 ADD                              R13 R14 R9
      704 ADDK                             R12 R13 K36 [1]
      705 JUMPIFNOTLE                      R10 R12 ; [+242]
      707 GETUPVAL                         R12 2
      708 GETTABLEKS                       R13 R0 K33 ["token"]
      710 MOVE                             R14 R2
      711 MOVE                             R15 R10
      712 GETTABLEKS                       R16 R0 K64 ["flags"]
      714 GETTABLEKS                       R17 R0 K65 ["verb_flags"]
      716 LOADB                            R18 0
      717 CALL                             R12 6 1
      718 JUMPIFNOT                        R12 ; [+229]
      719 LOADNIL                          R13
      720 JUMPIFNOTEQKS                    R7 K3 ["string"] ; [+3]
      722 MOVE                             R13 R1
      723 JUMP                             ; [+139]
      724 JUMPIFNOTEQKS                    R7 K63 ["subst_string"] ; [+12]
      726 GETUPVAL                         R14 3
      727 GETIMPORT                        R15 K32 [table.create]
      729 MOVE                             R16 R8
      730 CALL                             R15 1 1
      731 MOVE                             R16 R2
      732 MOVE                             R17 R12
      733 MOVE                             R18 R1
      734 CALL                             R14 4 1
      735 MOVE                             R13 R14
      736 JUMP                             ; [+126]
      737 LOADNIL                          R14
      738 LOADNIL                          R15
      739 JUMPIFNOTEQKS                    R7 K24 ["table"] ; [+32]
      741 GETTABLEKS                       R16 R2 K57 ["s"]
      743 LOADN                            R19 0
      744 GETTABLE                         R18 R12 R19
      745 GETTABLEN                        R17 R18 1
      746 LOADN                            R20 0
      747 GETTABLE                         R19 R12 R20
      748 GETTABLEN                        R18 R19 2
      749 GETIMPORT                        R19 K59 [utf8.offset]
      751 MOVE                             R20 R16
      752 MOVE                             R21 R18
      753 CALL                             R19 2 1
      754 MOVE                             R18 R19
      755 GETIMPORT                        R21 K59 [utf8.offset]
      757 MOVE                             R22 R16
      758 MOVE                             R23 R17
      759 CALL                             R21 2 1
      760 MOVE                             R22 R18
      761 JUMPIFNOT                        R22 ; [+1]
      762 SUBK                             R22 R18 K36 [1]
      763 FASTCALL3                        STRING_SUB R16 R21 R22
      765 MOVE                             R20 R16
      766 GETIMPORT                        R19 K61 [string.sub]
      768 CALL                             R19 3 1
      769 MOVE                             R14 R19
      770 GETTABLE                         R15 R1 R14
      771 JUMP                             ; [+13]
      772 GETUPVAL                         R16 4
      773 MOVE                             R17 R12
      774 GETTABLEKS                       R18 R0 K62 ["group_id"]
      776 MOVE                             R19 R5
      777 GETTABLEKS                       R20 R2 K57 ["s"]
      779 CALL                             R16 4 1
      780 MOVE                             R14 R16
      781 MOVE                             R16 R1
      782 MOVE                             R17 R14
      783 CALL                             R16 1 1
      784 MOVE                             R15 R16
      785 JUMPIFEQ                         R15 R14 ; [+5]
      787 GETTABLEKS                       R16 R6 K13 ["o"]
      789 JUMPIFNOT                        R16 ; [+28]
      790 JUMPIF                           R15 ; [+27]
      791 LOADN                            R19 0
      792 GETTABLE                         R18 R12 R19
      793 GETTABLEN                        R17 R18 2
      794 LOADN                            R20 0
      795 GETTABLE                         R19 R12 R20
      796 GETTABLEN                        R18 R19 1
      797 SUB                              R16 R17 R18
      798 GETIMPORT                        R17 K42 [table.move]
      800 MOVE                             R18 R2
      801 LOADN                            R21 0
      802 GETTABLE                         R20 R12 R21
      803 GETTABLEN                        R19 R20 1
      804 LOADN                            R23 0
      805 GETTABLE                         R22 R12 R23
      806 GETTABLEN                        R21 R22 2
      807 SUBK                             R20 R21 K36 [1]
      808 LOADN                            R21 1
      809 GETIMPORT                        R22 K32 [table.create]
      811 MOVE                             R23 R16
      812 CALL                             R22 1 -1
      813 CALL                             R17 -1 1
      814 MOVE                             R13 R17
      815 SETTABLEKS                       R16 R13 K35 ["n"]
      817 JUMP                             ; [+45]
      818 FASTCALL1                        TYPE R15 ; [+3]
      819 MOVE                             R17 R15
      820 GETIMPORT                        R16 K1 [type]
      822 CALL                             R16 1 1
      823 JUMPIFNOTEQKS                    R16 K3 ["string"] ; [+6]
      825 GETUPVAL                         R16 0
      826 MOVE                             R17 R15
      827 CALL                             R16 1 1
      828 MOVE                             R13 R16
      829 JUMP                             ; [+33]
      830 FASTCALL1                        TYPE R15 ; [+3]
      831 MOVE                             R17 R15
      832 GETIMPORT                        R16 K1 [type]
      834 CALL                             R16 1 1
      835 JUMPIFNOTEQKS                    R16 K2 ["number"] ; [+8]
      837 GETUPVAL                         R16 0
      838 MOVE                             R18 R15
      839 LOADK                            R19 K18 [""]
      840 CONCAT                           R17 R18 R19
      841 CALL                             R16 1 1
      842 MOVE                             R13 R16
      843 JUMP                             ; [+19]
      844 GETTABLEKS                       R16 R6 K13 ["o"]
      846 JUMPIFNOT                        R16 ; [+14]
      847 GETIMPORT                        R16 K5 [error]
      849 GETIMPORT                        R17 K7 [string.format]
      851 LOADK                            R18 K66 ["invalid replacement value (a %s)"]
      852 FASTCALL1                        TYPE R15 ; [+3]
      853 MOVE                             R20 R15
      854 GETIMPORT                        R19 K1 [type]
      856 CALL                             R19 1 1
      857 CALL                             R17 2 1
      858 LOADN                            R18 3
      859 CALL                             R16 2 0
      860 JUMP                             ; [+2]
      861 DUPTABLE                         R16 K67 [{["n"] = 0}]
      862 MOVE                             R13 R16
      863 LOADN                            R17 0
      864 GETTABLE                         R16 R12 R17
      865 GETTABLEN                        R15 R16 2
      866 LOADN                            R18 0
      867 GETTABLE                         R17 R12 R18
      868 GETTABLEN                        R16 R17 1
      869 SUB                              R14 R15 R16
      870 GETTABLEKS                       R16 R13 K35 ["n"]
      872 FASTCALL2                        MATH_MIN R16 R14 ; [+4]
      874 MOVE                             R17 R14
      875 GETIMPORT                        R15 K70 [math.min]
      877 CALL                             R15 2 1
      878 LOADN                            R18 0
      879 SUBK                             R16 R15 K36 [1]
      880 LOADN                            R17 1
      881 FORNPREP                         R16
      882 LOADN                            R22 0
      883 GETTABLE                         R21 R12 R22
      884 GETTABLEN                        R20 R21 1
      885 ADD                              R19 R20 R18
      886 ADDK                             R21 R18 K36 [1]
      887 GETTABLE                         R20 R13 R21
      888 SETTABLE                         R20 R2 R19
      889 FORNLOOP                         R16
      890 LOADN                            R19 0
      891 GETTABLE                         R18 R12 R19
      892 GETTABLEN                        R17 R18 1
      893 ADD                              R16 R17 R15
      894 LOADN                            R18 0
      895 GETTABLE                         R17 R12 R18
      896 GETTABLEN                        R10 R17 2
      897 GETTABLEKS                       R17 R13 K35 ["n"]
      899 JUMPIFNOTLT                      R17 R14 ; [+16]
      901 LOADN                            R19 1
      902 GETTABLEKS                       R20 R13 K35 ["n"]
      904 SUB                              R17 R14 R20
      905 LOADN                            R18 1
      906 FORNPREP                         R17
      907 GETIMPORT                        R20 K47 [table.remove]
      909 MOVE                             R21 R2
      910 MOVE                             R22 R16
      911 CALL                             R20 2 0
      912 SUBK                             R9 R9 K36 [1]
      913 SUBK                             R10 R10 K36 [1]
      914 FORNLOOP                         R17
      915 JUMP                             ; [+23]
      916 GETTABLEKS                       R17 R13 K35 ["n"]
      918 JUMPIFNOTLT                      R14 R17 ; [+20]
      920 LOADN                            R19 1
      921 GETTABLEKS                       R20 R13 K35 ["n"]
      923 SUB                              R17 R20 R14
      924 LOADN                            R18 1
      925 FORNPREP                         R17
      926 ADD                              R23 R16 R19
      927 SUBK                             R22 R23 K36 [1]
      928 ADD                              R24 R15 R19
      929 GETTABLE                         R23 R13 R24
      930 FASTCALL3                        TABLE_INSERT R2 R22 R23
      932 MOVE                             R21 R2
      933 GETIMPORT                        R20 K44 [table.insert]
      935 CALL                             R20 3 0
      936 ADDK                             R9 R9 K36 [1]
      937 ADDK                             R10 R10 K36 [1]
      938 FORNLOOP                         R17
      939 LOADN                            R17 0
      940 JUMPIFNOTLE                      R14 R17 ; [+2]
      942 ADDK                             R10 R10 K36 [1]
      943 ADDK                             R11 R11 K36 [1]
      944 ADDK                             R17 R11 K36 [1]
      945 JUMPIFLT                         R3 R17 ; [+2]
      947 JUMPBACK                         ; [-247]
      948 GETUPVAL                         R12 5
      949 MOVE                             R13 R2
      950 CALL                             R12 1 1
      951 MOVE                             R13 R11
      952 RETURN                           R12 2

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
       12 LOADN                            R3 -1
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
        3 GETUPVAL                         R4 1
        4 GETTABLE                         R3 R4 R0
        5 GETTABLEKS                       R3 R3 K0 ["flags"]
        7 GETTABLE                         R2 R3 R1
        8 RETURN                           R2 1

PROTO_25:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R2 R4 R0
        2 GETTABLEKS                       R2 R2 K0 ["pattern_repr"]
        4 GETUPVAL                         R4 0
        5 GETTABLE                         R3 R4 R0
        6 GETTABLEKS                       R3 R3 K1 ["flag_repr"]
        8 CONCAT                           R1 R2 R3
        9 RETURN                           R1 1

PROTO_26:
        0 GETTABLEKS                       R2 R1 K0 ["unicode"]
        2 JUMPIFNOT                        R2 ; [+6]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["unicodeData"]
        6 JUMPIF                           R2 ; [+2]
        7 LOADK                            R2 K2 ["options.unicodeData cannot be turned off while having unicode flag"]
        8 RETURN                           R2 1
        9 LOADN                            R2 1
       10 GETTABLEKS                       R3 R0 K3 ["n"]
       12 LOADN                            R4 0
       13 NEWTABLE                         R5 0 0
       15 NEWTABLE                         R6 0 0
       17 DUPTABLE                         R7 K9 [{["newline"] = 1, ["newline_seq"] = 1, ["not_empty"] = 0}]
       18 JUMPIFNOTLE                      R2 R3 ; [+3111]
       20 GETTABLE                         R8 R0 R2
       21 JUMPIFNOTEQKN                    R8 K10 [40] ; [+573]
       23 LOADNIL                          R9
       24 ADDK                             R11 R2 K5 [1]
       25 GETTABLE                         R10 R0 R11
       26 JUMPIFNOTEQKN                    R10 K11 [42] ; [+174]
       28 ADDK                             R2 R2 K12 [2]
       29 MOVE                             R10 R2
       30 GETTABLE                         R11 R0 R2
       31 JUMPIFNOT                        R11 ; [+32]
       32 GETTABLE                         R11 R0 R2
       33 LOADN                            R12 48
       34 JUMPIFNOTLE                      R12 R11 ; [+5]
       36 GETTABLE                         R11 R0 R2
       37 LOADN                            R12 57
       38 JUMPIFLE                         R11 R12 ; [+23]
       40 GETTABLE                         R11 R0 R2
       41 LOADN                            R12 65
       42 JUMPIFNOTLE                      R12 R11 ; [+5]
       44 GETTABLE                         R11 R0 R2
       45 LOADN                            R12 90
       46 JUMPIFLE                         R11 R12 ; [+15]
       48 GETTABLE                         R11 R0 R2
       49 LOADN                            R12 97
       50 JUMPIFNOTLE                      R12 R11 ; [+5]
       52 GETTABLE                         R11 R0 R2
       53 LOADN                            R12 122
       54 JUMPIFLE                         R11 R12 ; [+7]
       56 GETTABLE                         R11 R0 R2
       57 JUMPIFEQKN                       R11 K13 [95] ; [+4]
       59 GETTABLE                         R11 R0 R2
       60 JUMPIFNOTEQKN                    R11 K14 [58] ; [+3]
       62 ADDK                             R2 R2 K5 [1]
       63 JUMPBACK                         ; [-34]
       64 GETTABLE                         R11 R0 R2
       65 JUMPIFEQKN                       R11 K15 [41] ; [+7]
       67 SUBK                             R12 R2 K5 [1]
       68 GETTABLE                         R11 R0 R12
       69 JUMPIFEQKN                       R11 K14 [58] ; [+3]
       71 LOADK                            R11 K16 ["quantifier doesn't follow a repeatable pattern"]
       72 RETURN                           R11 1
       73 GETTABLEKS                       R12 R0 K17 ["s"]
       75 MOVE                             R13 R2
       76 GETIMPORT                        R14 K20 [utf8.offset]
       78 MOVE                             R15 R12
       79 MOVE                             R16 R13
       80 CALL                             R14 2 1
       81 MOVE                             R13 R14
       82 GETIMPORT                        R16 K20 [utf8.offset]
       84 MOVE                             R17 R12
       85 MOVE                             R18 R10
       86 CALL                             R16 2 1
       87 MOVE                             R17 R13
       88 JUMPIFNOT                        R17 ; [+1]
       89 SUBK                             R17 R13 K5 [1]
       90 FASTCALL3                        STRING_SUB R12 R16 R17
       92 MOVE                             R15 R12
       93 GETIMPORT                        R14 K23 [string.sub]
       95 CALL                             R14 3 1
       96 MOVE                             R11 R14
       97 JUMPIFEQKS                       R11 K24 ["positive_lookahead:"] ; [+12]
       99 JUMPIFEQKS                       R11 K25 ["negative_lookhead:"] ; [+10]
      101 JUMPIFEQKS                       R11 K26 ["positive_lookbehind:"] ; [+8]
      103 JUMPIFEQKS                       R11 K27 ["negative_lookbehind:"] ; [+6]
      105 LOADK                            R14 K28 ["^[pn]l[ab]:$"]
      106 NAMECALL                         R12 R11 K29 ["find"]
      108 CALL                             R12 2 1
      109 JUMPIFNOT                        R12 ; [+24]
      110 NEWTABLE                         R12 0 5
      112 LOADN                            R13 40
      113 LOADNIL                          R14
      114 LOADNIL                          R15
      115 LOADK                            R19 K30 ["^n"]
      116 NAMECALL                         R17 R11 K29 ["find"]
      118 CALL                             R17 2 1
      119 JUMPIFNOT                        R17 ; [+2]
      120 LOADN                            R16 33
      121 JUMP                             ; [+1]
      122 LOADN                            R16 61
      123 LOADK                            R20 K31 ["b"]
      124 LOADN                            R21 3
      125 LOADB                            R22 1
      126 NAMECALL                         R18 R11 K29 ["find"]
      128 CALL                             R18 4 1
      129 ANDK                             R17 R18 K5 [1]
      130 SETLIST                          R12 R13 5 [1]
      132 MOVE                             R9 R12
      133 JUMP                             ; [+452]
      134 JUMPIFNOTEQKS                    R11 K32 ["atomic:"] ; [+12]
      136 NEWTABLE                         R12 0 5
      138 LOADN                            R13 40
      139 LOADNIL                          R14
      140 LOADNIL                          R15
      141 LOADN                            R16 62
      142 LOADNIL                          R17
      143 SETLIST                          R12 R13 5 [1]
      145 MOVE                             R9 R12
      146 JUMP                             ; [+439]
      147 JUMPIFEQKS                       R11 K33 ["ACCEPT"] ; [+9]
      149 JUMPIFEQKS                       R11 K34 ["FAIL"] ; [+7]
      151 JUMPIFEQKS                       R11 K35 ["F"] ; [+5]
      153 JUMPIFEQKS                       R11 K36 ["PRUNE"] ; [+3]
      155 JUMPIFNOTEQKS                    R11 K37 ["SKIP"] ; [+8]
      157 JUMPIFNOTEQKS                    R11 K35 ["F"] ; [+3]
      159 LOADK                            R12 K34 ["FAIL"]
      160 JUMP                             ; [+1]
      161 MOVE                             R12 R11
      162 MOVE                             R9 R12
      163 JUMP                             ; [+422]
      164 GETUPVAL                         R13 1
      165 GETTABLE                         R12 R13 R11
      166 JUMPIFNOT                        R12 ; [+3]
      167 SETTABLEKS                       R11 R7 K4 ["newline"]
      169 JUMP                             ; [+26]
      170 JUMPIFEQKS                       R11 K38 ["BSR_ANYCRLF"] ; [+3]
      172 JUMPIFNOTEQKS                    R11 K39 ["BSR_UNICODE"] ; [+9]
      174 JUMPIFNOTEQKS                    R11 K39 ["BSR_UNICODE"] ; [+3]
      176 LOADN                            R12 1
      177 JUMP                             ; [+1]
      178 LOADN                            R12 0
      179 SETTABLEKS                       R12 R7 K6 ["newline_seq"]
      181 JUMP                             ; [+14]
      182 JUMPIFEQKS                       R11 K40 ["NOTEMPTY"] ; [+3]
      184 JUMPIFNOTEQKS                    R11 K41 ["NOTEMPTY_ATSTART"] ; [+9]
      186 JUMPIFNOTEQKS                    R11 K40 ["NOTEMPTY"] ; [+3]
      188 LOADN                            R12 1
      189 JUMP                             ; [+1]
      190 LOADN                            R12 2
      191 SETTABLEKS                       R12 R7 K7 ["not_empty"]
      193 JUMP                             ; [+2]
      194 LOADK                            R12 K42 ["unknown or malformed verb"]
      195 RETURN                           R12 1
      196 GETTABLEN                        R12 R5 1
      197 JUMPIFNOT                        R12 ; [+388]
      198 LOADK                            R12 K43 ["this verb must be placed at the beginning of the regex"]
      199 RETURN                           R12 1
      200 JUMP                             ; [+385]
      201 ADDK                             R11 R2 K5 [1]
      202 GETTABLE                         R10 R0 R11
      203 JUMPIFNOTEQKN                    R10 K44 [63] ; [+372]
      205 ADDK                             R2 R2 K12 [2]
      206 GETTABLE                         R10 R0 R2
      207 JUMPIFNOTEQKN                    R10 K45 [35] ; [+13]
      209 GETIMPORT                        R10 K47 [table.find]
      211 MOVE                             R11 R0
      212 LOADN                            R12 41
      213 MOVE                             R13 R2
      214 CALL                             R10 3 1
      215 MOVE                             R2 R10
      216 JUMPIF                           R2 ; [+2]
      217 LOADK                            R10 K48 ["unterminated parenthetical"]
      218 RETURN                           R10 1
      219 ADDK                             R2 R2 K5 [1]
      220 JUMP                             ; [+2908]
      221 GETTABLE                         R10 R0 R2
      222 JUMPIF                           R10 ; [+2]
      223 LOADK                            R10 K48 ["unterminated parenthetical"]
      224 RETURN                           R10 1
      225 NEWTABLE                         R10 0 5
      227 LOADN                            R11 40
      228 LOADNIL                          R12
      229 LOADNIL                          R13
      230 GETTABLE                         R14 R0 R2
      231 LOADNIL                          R15
      232 SETLIST                          R10 R11 5 [1]
      234 MOVE                             R9 R10
      235 GETTABLE                         R10 R0 R2
      236 JUMPIFNOTEQKN                    R10 K49 [48] ; [+14]
      238 ADDK                             R11 R2 K5 [1]
      239 GETTABLE                         R10 R0 R11
      240 JUMPIFNOTEQKN                    R10 K15 [41] ; [+10]
      242 LOADK                            R10 K50 ["recurmatch"]
      243 LOADN                            R11 0
      244 LOADN                            R12 0
      245 LOADNIL                          R13
      246 SETTABLEN                        R10 R9 1
      247 SETTABLEN                        R11 R9 2
      248 SETTABLEN                        R12 R9 3
      249 SETTABLEN                        R13 R9 5
      250 JUMP                             ; [+335]
      251 GETTABLE                         R10 R0 R2
      252 LOADN                            R11 48
      253 JUMPIFNOTLT                      R11 R10 ; [+56]
      255 GETTABLE                         R10 R0 R2
      256 LOADN                            R11 57
      257 JUMPIFNOTLE                      R10 R11 ; [+52]
      259 MOVE                             R10 R2
      260 ADDK                             R2 R2 K5 [1]
      261 GETTABLE                         R11 R0 R2
      262 LOADN                            R12 48
      263 JUMPIFNOTLE                      R12 R11 ; [+7]
      265 GETTABLE                         R11 R0 R2
      266 LOADN                            R12 48
      267 JUMPIFNOTLE                      R11 R12 ; [+3]
      269 ADDK                             R2 R2 K5 [1]
      270 JUMPBACK                         ; [-10]
      271 GETTABLE                         R11 R0 R2
      272 JUMPIFEQKN                       R11 K15 [41] ; [+3]
      274 LOADK                            R11 K51 ["invalid group structure"]
      275 RETURN                           R11 1
      276 LOADK                            R11 K50 ["recurmatch"]
      277 GETTABLEKS                       R14 R0 K17 ["s"]
      279 MOVE                             R15 R2
      280 GETIMPORT                        R16 K20 [utf8.offset]
      282 MOVE                             R17 R14
      283 MOVE                             R18 R15
      284 CALL                             R16 2 1
      285 MOVE                             R15 R16
      286 GETIMPORT                        R18 K20 [utf8.offset]
      288 MOVE                             R19 R14
      289 MOVE                             R20 R10
      290 CALL                             R18 2 1
      291 MOVE                             R19 R15
      292 JUMPIFNOT                        R19 ; [+1]
      293 SUBK                             R19 R15 K5 [1]
      294 FASTCALL3                        STRING_SUB R14 R18 R19
      296 MOVE                             R17 R14
      297 GETIMPORT                        R16 K23 [string.sub]
      299 CALL                             R16 3 1
      300 MOVE                             R13 R16
      301 FASTCALL1                        TONUMBER R13 ; [+2]
      302 GETIMPORT                        R12 K53 [tonumber]
      304 CALL                             R12 1 1
      305 LOADNIL                          R13
      306 SETTABLEN                        R11 R9 1
      307 SETTABLEN                        R12 R9 2
      308 SETTABLEN                        R13 R9 4
      309 JUMP                             ; [+276]
      310 GETTABLE                         R10 R0 R2
      311 JUMPIFNOTEQKN                    R10 K54 [60] ; [+5]
      313 ADDK                             R11 R2 K5 [1]
      314 GETTABLE                         R10 R0 R11
      315 JUMPIFEQKN                       R10 K55 [33] ; [+5]
      317 ADDK                             R11 R2 K5 [1]
      318 GETTABLE                         R10 R0 R11
      319 JUMPIFNOTEQKN                    R10 K56 [61] ; [+7]
      321 ADDK                             R2 R2 K5 [1]
      322 GETTABLE                         R10 R0 R2
      323 LOADN                            R11 1
      324 SETTABLEN                        R10 R9 4
      325 SETTABLEN                        R11 R9 5
      326 JUMP                             ; [+259]
      327 GETTABLE                         R10 R0 R2
      328 JUMPIFNOTEQKN                    R10 K57 [124] ; [+3]
      330 SETTABLEN                        R4 R9 5
      331 JUMP                             ; [+254]
      332 GETTABLE                         R10 R0 R2
      333 JUMPIFEQKN                       R10 K58 [80] ; [+7]
      335 GETTABLE                         R10 R0 R2
      336 JUMPIFEQKN                       R10 K54 [60] ; [+4]
      338 GETTABLE                         R10 R0 R2
      339 JUMPIFNOTEQKN                    R10 K59 [39] ; [+229]
      341 GETTABLE                         R10 R0 R2
      342 JUMPIFNOTEQKN                    R10 K58 [80] ; [+2]
      344 ADDK                             R2 R2 K5 [1]
      345 GETTABLE                         R10 R0 R2
      346 JUMPIFNOTEQKN                    R10 K56 [61] ; [+75]
      348 ADDK                             R10 R2 K5 [1]
      349 GETTABLE                         R11 R0 R2
      350 JUMPIFNOT                        R11 ; [+29]
      351 GETTABLE                         R11 R0 R2
      352 LOADN                            R12 48
      353 JUMPIFNOTLE                      R12 R11 ; [+5]
      355 GETTABLE                         R11 R0 R2
      356 LOADN                            R12 57
      357 JUMPIFLE                         R11 R12 ; [+20]
      359 GETTABLE                         R11 R0 R2
      360 LOADN                            R12 65
      361 JUMPIFNOTLE                      R12 R11 ; [+5]
      363 GETTABLE                         R11 R0 R2
      364 LOADN                            R12 90
      365 JUMPIFLE                         R11 R12 ; [+12]
      367 GETTABLE                         R11 R0 R2
      368 LOADN                            R12 97
      369 JUMPIFNOTLE                      R12 R11 ; [+5]
      371 GETTABLE                         R11 R0 R2
      372 LOADN                            R12 122
      373 JUMPIFLE                         R11 R12 ; [+4]
      375 GETTABLE                         R11 R0 R2
      376 JUMPIFNOTEQKN                    R11 K13 [95] ; [+3]
      378 ADDK                             R2 R2 K5 [1]
      379 JUMPBACK                         ; [-31]
      380 GETTABLE                         R11 R0 R2
      381 JUMPIF                           R11 ; [+2]
      382 LOADK                            R11 K48 ["unterminated parenthetical"]
      383 RETURN                           R11 1
      384 GETTABLE                         R11 R0 R2
      385 JUMPIFNOTEQKN                    R11 K15 [41] ; [+3]
      387 JUMPIFNOTEQ                      R2 R10 ; [+3]
      389 LOADK                            R11 K51 ["invalid group structure"]
      390 RETURN                           R11 1
      391 NEWTABLE                         R11 0 2
      393 LOADK                            R12 K60 ["backref"]
      394 GETTABLEKS                       R14 R0 K17 ["s"]
      396 MOVE                             R15 R2
      397 GETIMPORT                        R16 K20 [utf8.offset]
      399 MOVE                             R17 R14
      400 MOVE                             R18 R15
      401 CALL                             R16 2 1
      402 MOVE                             R15 R16
      403 GETIMPORT                        R18 K20 [utf8.offset]
      405 MOVE                             R19 R14
      406 MOVE                             R20 R10
      407 CALL                             R18 2 1
      408 MOVE                             R19 R15
      409 JUMPIFNOT                        R19 ; [+1]
      410 SUBK                             R19 R15 K5 [1]
      411 FASTCALL3                        STRING_SUB R14 R18 R19
      413 MOVE                             R17 R14
      414 GETIMPORT                        R16 K23 [string.sub]
      416 CALL                             R16 3 1
      417 MOVE                             R13 R16
      418 SETLIST                          R11 R12 2 [1]
      420 MOVE                             R9 R11
      421 JUMP                             ; [+164]
      422 GETTABLE                         R10 R0 R2
      423 JUMPIFEQKN                       R10 K54 [60] ; [+8]
      425 SUBK                             R11 R2 K5 [1]
      426 GETTABLE                         R10 R0 R11
      427 JUMPIFEQKN                       R10 K58 [80] ; [+138]
      429 GETTABLE                         R10 R0 R2
      430 JUMPIFNOTEQKN                    R10 K59 [39] ; [+135]
      432 GETTABLE                         R11 R0 R2
      433 JUMPIFNOTEQKN                    R11 K59 [39] ; [+3]
      435 LOADN                            R10 39
      436 JUMP                             ; [+1]
      437 LOADN                            R10 62
      438 ADDK                             R11 R2 K5 [1]
      439 ADDK                             R2 R2 K5 [1]
      440 GETTABLE                         R12 R0 R2
      441 JUMPIFNOTEQKN                    R12 K15 [41] ; [+3]
      443 LOADK                            R12 K61 ["missing character in subpattern"]
      444 RETURN                           R12 1
      445 GETTABLE                         R12 R0 R2
      446 LOADN                            R13 48
      447 JUMPIFNOTLE                      R13 R12 ; [+7]
      449 GETTABLE                         R12 R0 R2
      450 LOADN                            R13 57
      451 JUMPIFNOTLE                      R12 R13 ; [+3]
      453 LOADK                            R12 K62 ["subpattern name must not begin with a digit"]
      454 RETURN                           R12 1
      455 GETTABLE                         R12 R0 R2
      456 LOADN                            R13 65
      457 JUMPIFNOTLE                      R13 R12 ; [+5]
      459 GETTABLE                         R12 R0 R2
      460 LOADN                            R13 90
      461 JUMPIFLE                         R12 R13 ; [+14]
      463 GETTABLE                         R12 R0 R2
      464 LOADN                            R13 97
      465 JUMPIFNOTLE                      R13 R12 ; [+5]
      467 GETTABLE                         R12 R0 R2
      468 LOADN                            R13 122
      469 JUMPIFLE                         R12 R13 ; [+6]
      471 GETTABLE                         R12 R0 R2
      472 JUMPIFEQKN                       R12 K13 [95] ; [+3]
      474 LOADK                            R12 K63 ["invalid character in subpattern"]
      475 RETURN                           R12 1
      476 ADDK                             R2 R2 K5 [1]
      477 GETTABLE                         R12 R0 R2
      478 JUMPIFNOT                        R12 ; [+29]
      479 GETTABLE                         R12 R0 R2
      480 LOADN                            R13 48
      481 JUMPIFNOTLE                      R13 R12 ; [+5]
      483 GETTABLE                         R12 R0 R2
      484 LOADN                            R13 57
      485 JUMPIFLE                         R12 R13 ; [+20]
      487 GETTABLE                         R12 R0 R2
      488 LOADN                            R13 65
      489 JUMPIFNOTLE                      R13 R12 ; [+5]
      491 GETTABLE                         R12 R0 R2
      492 LOADN                            R13 90
      493 JUMPIFLE                         R12 R13 ; [+12]
      495 GETTABLE                         R12 R0 R2
      496 LOADN                            R13 97
      497 JUMPIFNOTLE                      R13 R12 ; [+5]
      499 GETTABLE                         R12 R0 R2
      500 LOADN                            R13 122
      501 JUMPIFLE                         R12 R13 ; [+4]
      503 GETTABLE                         R12 R0 R2
      504 JUMPIFNOTEQKN                    R12 K13 [95] ; [+3]
      506 ADDK                             R2 R2 K5 [1]
      507 JUMPBACK                         ; [-31]
      508 GETTABLE                         R12 R0 R2
      509 JUMPIF                           R12 ; [+2]
      510 LOADK                            R12 K48 ["unterminated parenthetical"]
      511 RETURN                           R12 1
      512 GETTABLE                         R12 R0 R2
      513 JUMPIFEQ                         R12 R10 ; [+3]
      515 LOADK                            R12 K63 ["invalid character in subpattern"]
      516 RETURN                           R12 1
      517 GETTABLEKS                       R13 R0 K17 ["s"]
      519 MOVE                             R14 R2
      520 GETIMPORT                        R15 K20 [utf8.offset]
      522 MOVE                             R16 R13
      523 MOVE                             R17 R14
      524 CALL                             R15 2 1
      525 MOVE                             R14 R15
      526 GETIMPORT                        R17 K20 [utf8.offset]
      528 MOVE                             R18 R13
      529 MOVE                             R19 R11
      530 CALL                             R17 2 1
      531 MOVE                             R18 R14
      532 JUMPIFNOT                        R18 ; [+1]
      533 SUBK                             R18 R14 K5 [1]
      534 FASTCALL3                        STRING_SUB R13 R17 R18
      536 MOVE                             R16 R13
      537 GETIMPORT                        R15 K23 [string.sub]
      539 CALL                             R15 3 1
      540 MOVE                             R12 R15
      541 ADDK                             R4 R4 K5 [1]
      542 GETTABLE                         R14 R6 R12
      543 OR                               R13 R14 R4
      544 JUMPIFEQ                         R13 R4 ; [+3]
      546 LOADK                            R13 K64 ["subpattern name already exists"]
      547 RETURN                           R13 1
      548 GETIMPORT                        R13 K66 [pairs]
      550 MOVE                             R14 R6
      551 CALL                             R13 1 3
      552 FORGPREP_NEXT                    R13
      553 JUMPIFEQ                         R12 R16 ; [+5]
      555 JUMPIFNOTEQ                      R4 R17 ; [+3]
      557 LOADK                            R18 K67 ["different names for subpatterns of the same number aren't permitted"]
      558 RETURN                           R18 1
      559 FORGLOOP                         R13 2 ; [-7]
      561 SETTABLE                         R4 R6 R12
      562 LOADNIL                          R13
      563 SETTABLEN                        R4 R9 2
      564 SETTABLEN                        R13 R9 4
      565 JUMP                             ; [+20]
      566 LOADK                            R10 K51 ["invalid group structure"]
      567 RETURN                           R10 1
      568 JUMP                             ; [+17]
      569 GETUPVAL                         R11 2
      570 GETTABLE                         R12 R0 R2
      571 GETTABLE                         R10 R11 R12
      572 JUMPIF                           R10 ; [+13]
      573 LOADK                            R10 K51 ["invalid group structure"]
      574 RETURN                           R10 1
      575 JUMP                             ; [+10]
      576 ADDK                             R4 R4 K5 [1]
      577 NEWTABLE                         R10 0 4
      579 LOADN                            R11 40
      580 MOVE                             R12 R4
      581 LOADNIL                          R13
      582 LOADNIL                          R14
      583 SETLIST                          R10 R11 4 [1]
      585 MOVE                             R9 R10
      586 JUMPIFNOT                        R9 ; [+2541]
      587 FASTCALL2                        TABLE_INSERT R5 R9 ; [+5]
      589 MOVE                             R11 R5
      590 MOVE                             R12 R9
      591 GETIMPORT                        R10 K69 [table.insert]
      593 CALL                             R10 2 0
      594 JUMP                             ; [+2533]
      595 JUMPIFNOTEQKN                    R8 K15 [41] ; [+133]
      597 LENGTH                           R10 R5
      598 ADDK                             R9 R10 K5 [1]
      599 LOADN                            R10 -1
      600 LOADN                            R11 0
      601 LOADN                            R12 0
      602 LOADN                            R13 0
      603 SUBK                             R9 R9 K5 [1]
      604 GETTABLE                         R14 R5 R9
      605 GETTABLE                         R17 R5 R9
      606 FASTCALL1                        TYPE R17 ; [+2]
      607 GETIMPORT                        R16 K71 [type]
      609 CALL                             R16 1 1
      610 JUMPIFEQKS                       R16 K46 ["table"] ; [+2]
      612 LOADB                            R15 0 +1
      613 LOADB                            R15 1
      614 JUMPIFNOT                        R15 ; [+34]
      615 GETTABLEN                        R16 R14 1
      616 JUMPIFNOTEQKN                    R16 K10 [40] ; [+32]
      618 ADDK                             R13 R13 K5 [1]
      619 JUMPIFNOT                        R11 ; [+6]
      620 GETTABLEKS                       R16 R14 K72 ["count"]
      622 JUMPIFNOT                        R16 ; [+3]
      623 GETTABLEKS                       R16 R14 K72 ["count"]
      625 ADD                              R11 R11 R16
      626 GETTABLEN                        R16 R14 3
      627 JUMPIF                           R16 ; [+58]
      628 GETTABLEN                        R16 R14 4
      629 JUMPIFNOTEQKN                    R16 K57 [124] ; [+10]
      631 GETTABLEN                        R16 R14 5
      632 FASTCALL2                        MATH_MAX R12 R13 ; [+5]
      634 MOVE                             R18 R12
      635 MOVE                             R19 R13
      636 GETIMPORT                        R17 K75 [math.max]
      638 CALL                             R17 2 1
      639 ADD                              R4 R16 R17
      640 JUMPIFEQ                         R11 R10 ; [+5]
      642 JUMPIFEQKN                       R10 K76 [-1] ; [+3]
      644 LOADNIL                          R10
      645 JUMP                             ; [+44]
      646 MOVE                             R10 R11
      647 JUMP                             ; [+42]
      648 JUMP                             ; [+37]
      649 GETUPVAL                         R16 3
      650 JUMPIFNOTEQ                      R14 R16 ; [+20]
      652 JUMPIFEQ                         R11 R10 ; [+6]
      654 JUMPIFEQKN                       R10 K76 [-1] ; [+4]
      656 LOADNIL                          R10
      657 LOADNIL                          R11
      658 JUMP                             ; [+2]
      659 MOVE                             R10 R11
      660 LOADN                            R11 0
      661 FASTCALL2                        MATH_MAX R12 R13 ; [+5]
      663 MOVE                             R17 R12
      664 MOVE                             R18 R13
      665 GETIMPORT                        R16 K75 [math.max]
      667 CALL                             R16 2 1
      668 MOVE                             R12 R16
      669 LOADN                            R13 0
      670 JUMP                             ; [+15]
      671 JUMPIFNOT                        R11 ; [+14]
      672 JUMPIFNOT                        R15 ; [+12]
      673 GETTABLEN                        R16 R14 1
      674 JUMPIFNOTEQKS                    R16 K77 ["quantifier"] ; [+10]
      676 GETTABLEN                        R16 R14 2
      677 GETTABLEN                        R17 R14 3
      678 JUMPIFNOTEQ                      R16 R17 ; [+4]
      680 GETTABLEN                        R16 R14 2
      681 ADD                              R11 R11 R16
      682 JUMP                             ; [+3]
      683 LOADNIL                          R11
      684 JUMP                             ; [+1]
      685 ADDK                             R11 R11 K5 [1]
      686 LOADN                            R16 1
      687 JUMPIFLT                         R9 R16 ; [+2]
      689 JUMPBACK                         ; [-87]
      690 LOADN                            R14 1
      691 JUMPIFNOTLT                      R9 R14 ; [+3]
      693 LOADK                            R14 K78 ["unmatched ) in regular expression"]
      694 RETURN                           R14 1
      695 GETTABLE                         R14 R5 R9
      696 LENGTH                           R16 R5
      697 ADDK                             R15 R16 K5 [1]
      698 NEWTABLE                         R16 1 5
      700 LOADN                            R17 41
      701 GETTABLEN                        R18 R14 2
      702 MOVE                             R19 R9
      703 GETTABLEN                        R20 R14 4
      704 GETTABLEN                        R21 R14 5
      705 SETLIST                          R16 R17 5 [1]
      707 SETTABLEKS                       R10 R16 K72 ["count"]
      709 GETTABLEN                        R17 R14 4
      710 JUMPIFEQKN                       R17 K55 [33] ; [+4]
      712 GETTABLEN                        R17 R14 4
      713 JUMPIFNOTEQKN                    R17 K56 [61] ; [+6]
      715 GETTABLEN                        R17 R14 5
      716 JUMPIFNOT                        R17 ; [+3]
      717 JUMPIF                           R10 ; [+2]
      718 LOADK                            R17 K79 ["lookbehind assertion is not fixed width"]
      719 RETURN                           R17 1
      720 SETTABLEN                        R15 R14 3
      721 FASTCALL2                        TABLE_INSERT R5 R16 ; [+5]
      723 MOVE                             R18 R5
      724 MOVE                             R19 R16
      725 GETIMPORT                        R17 K69 [table.insert]
      727 CALL                             R17 2 0
      728 JUMP                             ; [+2399]
      729 JUMPIFNOTEQKN                    R8 K80 [46] ; [+9]
      731 GETUPVAL                         R11 4
      732 FASTCALL2                        TABLE_INSERT R5 R11 ; [+4]
      734 MOVE                             R10 R5
      735 GETIMPORT                        R9 K69 [table.insert]
      737 CALL                             R9 2 0
      738 JUMP                             ; [+2389]
      739 JUMPIFNOTEQKN                    R8 K81 [91] ; [+1195]
      741 LOADB                            R9 0
      742 LOADNIL                          R10
      743 ADDK                             R2 R2 K5 [1]
      744 MOVE                             R11 R2
      745 GETTABLE                         R12 R0 R2
      746 JUMPIFNOTEQKN                    R12 K82 [94] ; [+4]
      748 LOADB                            R9 1
      749 ADDK                             R2 R2 K5 [1]
      750 JUMP                             ; [+10]
      751 GETTABLE                         R12 R0 R2
      752 JUMPIFEQKN                       R12 K80 [46] ; [+7]
      754 GETTABLE                         R12 R0 R2
      755 JUMPIFEQKN                       R12 K14 [58] ; [+4]
      757 GETTABLE                         R12 R0 R2
      758 JUMPIFNOTEQKN                    R12 K56 [61] ; [+2]
      760 GETTABLE                         R10 R0 R2
      761 LOADNIL                          R12
      762 GETTABLE                         R13 R0 R2
      763 JUMPIFEQKN                       R13 K81 [91] ; [+4]
      765 GETTABLE                         R13 R0 R2
      766 JUMPIFNOTEQKN                    R13 K83 [92] ; [+4]
      768 NEWTABLE                         R12 0 0
      770 JUMP                             ; [+7]
      771 NEWTABLE                         R13 0 1
      773 GETTABLE                         R14 R0 R2
      774 SETLIST                          R13 R14 1 [1]
      776 MOVE                             R12 R13
      777 ADDK                             R2 R2 K5 [1]
      778 GETTABLE                         R13 R0 R2
      779 JUMPIFEQKN                       R13 K84 [93] ; [+1117]
      781 GETTABLE                         R13 R0 R2
      782 JUMPIF                           R13 ; [+2]
      783 LOADK                            R13 K85 ["unterminated character class"]
      784 RETURN                           R13 1
      785 GETTABLE                         R13 R0 R2
      786 JUMPIFNOTEQKN                    R13 K86 [45] ; [+286]
      788 GETTABLEN                        R13 R12 1
      789 JUMPIFNOT                        R13 ; [+283]
      790 GETTABLEN                        R14 R12 1
      791 FASTCALL1                        TYPE R14 ; [+2]
      792 GETIMPORT                        R13 K71 [type]
      794 CALL                             R13 1 1
      795 JUMPIFNOTEQKS                    R13 K87 ["number"] ; [+277]
      797 ADDK                             R14 R2 K5 [1]
      798 GETTABLE                         R13 R0 R14
      799 JUMPIFNOTEQKN                    R13 K84 [93] ; [+10]
      801 LOADN                            R15 1
      802 LOADN                            R16 45
      803 FASTCALL3                        TABLE_INSERT R12 R15 R16
      805 MOVE                             R14 R12
      806 GETIMPORT                        R13 K69 [table.insert]
      808 CALL                             R13 3 0
      809 JUMP                             ; [+1085]
      810 ADDK                             R2 R2 K5 [1]
      811 GETTABLE                         R13 R0 R2
      812 JUMPIFNOTEQKN                    R13 K81 [91] ; [+49]
      814 ADDK                             R15 R2 K5 [1]
      815 GETTABLE                         R14 R0 R15
      816 JUMPIFEQKN                       R14 K80 [46] ; [+9]
      818 ADDK                             R15 R2 K5 [1]
      819 GETTABLE                         R14 R0 R15
      820 JUMPIFEQKN                       R14 K14 [58] ; [+5]
      822 ADDK                             R15 R2 K5 [1]
      823 GETTABLE                         R14 R0 R15
      824 JUMPIFNOTEQKN                    R14 K56 [61] ; [+30]
      826 ADDK                             R14 R2 K12 [2]
      827 GETIMPORT                        R15 K47 [table.find]
      829 MOVE                             R16 R0
      830 LOADN                            R17 93
      831 MOVE                             R18 R14
      832 CALL                             R15 3 1
      833 MOVE                             R14 R15
      834 JUMPIFNOT                        R14 ; [+5]
      835 SUBK                             R16 R14 K5 [1]
      836 GETTABLE                         R15 R0 R16
      837 JUMPIFNOTEQKN                    R15 K83 [92] ; [+2]
      839 JUMPBACK                         ; [-13]
      840 JUMPIF                           R14 ; [+2]
      841 LOADK                            R15 K85 ["unterminated character class"]
      842 RETURN                           R15 1
      843 SUBK                             R16 R14 K5 [1]
      844 GETTABLE                         R15 R0 R16
      845 ADDK                             R17 R2 K5 [1]
      846 GETTABLE                         R16 R0 R17
      847 JUMPIFNOTEQ                      R15 R16 ; [+7]
      849 SUBK                             R15 R14 K5 [1]
      850 ADDK                             R16 R2 K5 [1]
      851 JUMPIFEQ                         R15 R16 ; [+3]
      853 LOADK                            R15 K88 ["invalid range in character class"]
      854 RETURN                           R15 1
      855 GETTABLEN                        R14 R12 1
      856 LOADN                            R15 91
      857 JUMPIFNOTLT                      R15 R14 ; [+206]
      859 LOADK                            R14 K88 ["invalid range in character class"]
      860 RETURN                           R14 1
      861 JUMP                             ; [+202]
      862 JUMPIFNOTEQKN                    R13 K83 [92] ; [+196]
      864 ADDK                             R2 R2 K5 [1]
      865 GETTABLE                         R14 R0 R2
      866 JUMPIFNOTEQKN                    R14 K89 [120] ; [+118]
      868 LOADNIL                          R14
      869 LOADNIL                          R15
      870 ADDK                             R2 R2 K5 [1]
      871 GETTABLE                         R16 R0 R2
      872 JUMPIFNOT                        R16 ; [+8]
      873 GETTABLE                         R16 R0 R2
      874 LOADN                            R17 48
      875 JUMPIFNOTLE                      R17 R16 ; [+5]
      877 GETTABLE                         R16 R0 R2
      878 LOADN                            R17 57
      879 JUMPIFLE                         R16 R17 ; [+17]
      881 GETTABLE                         R16 R0 R2
      882 LOADN                            R17 65
      883 JUMPIFNOTLE                      R17 R16 ; [+5]
      885 GETTABLE                         R16 R0 R2
      886 LOADN                            R17 70
      887 JUMPIFLE                         R16 R17 ; [+9]
      889 GETTABLE                         R16 R0 R2
      890 LOADN                            R17 97
      891 JUMPIFNOTLE                      R17 R16 ; [+81]
      893 GETTABLE                         R16 R0 R2
      894 LOADN                            R17 102
      895 JUMPIFNOTLE                      R16 R17 ; [+77]
      897 GETTABLE                         R16 R0 R2
      898 GETTABLE                         R18 R0 R2
      899 LOADN                            R19 65
      900 JUMPIFNOTLE                      R19 R18 ; [+7]
      902 GETTABLE                         R18 R0 R2
      903 LOADN                            R19 90
      904 JUMPIFNOTLE                      R18 R19 ; [+3]
      906 LOADN                            R17 55
      907 JUMP                             ; [+11]
      908 GETTABLE                         R18 R0 R2
      909 LOADN                            R19 97
      910 JUMPIFNOTLE                      R19 R18 ; [+7]
      912 GETTABLE                         R18 R0 R2
      913 LOADN                            R19 122
      914 JUMPIFNOTLE                      R18 R19 ; [+3]
      916 LOADN                            R17 87
      917 JUMP                             ; [+1]
      918 LOADN                            R17 48
      919 SUB                              R14 R16 R17
      920 ADDK                             R2 R2 K5 [1]
      921 GETTABLE                         R16 R0 R2
      922 JUMPIFNOT                        R16 ; [+8]
      923 GETTABLE                         R16 R0 R2
      924 LOADN                            R17 48
      925 JUMPIFNOTLE                      R17 R16 ; [+5]
      927 GETTABLE                         R16 R0 R2
      928 LOADN                            R17 57
      929 JUMPIFLE                         R16 R17 ; [+17]
      931 GETTABLE                         R16 R0 R2
      932 LOADN                            R17 65
      933 JUMPIFNOTLE                      R17 R16 ; [+5]
      935 GETTABLE                         R16 R0 R2
      936 LOADN                            R17 70
      937 JUMPIFLE                         R16 R17 ; [+9]
      939 GETTABLE                         R16 R0 R2
      940 LOADN                            R17 97
      941 JUMPIFNOTLE                      R17 R16 ; [+29]
      943 GETTABLE                         R16 R0 R2
      944 LOADN                            R17 102
      945 JUMPIFNOTLE                      R16 R17 ; [+25]
      947 GETTABLE                         R16 R0 R2
      948 GETTABLE                         R18 R0 R2
      949 LOADN                            R19 65
      950 JUMPIFNOTLE                      R19 R18 ; [+7]
      952 GETTABLE                         R18 R0 R2
      953 LOADN                            R19 90
      954 JUMPIFNOTLE                      R18 R19 ; [+3]
      956 LOADN                            R17 55
      957 JUMP                             ; [+11]
      958 GETTABLE                         R18 R0 R2
      959 LOADN                            R19 97
      960 JUMPIFNOTLE                      R19 R18 ; [+7]
      962 GETTABLE                         R18 R0 R2
      963 LOADN                            R19 122
      964 JUMPIFNOTLE                      R18 R19 ; [+3]
      966 LOADN                            R17 87
      967 JUMP                             ; [+1]
      968 LOADN                            R17 48
      969 SUB                              R15 R16 R17
      970 JUMP                             ; [+3]
      971 SUBK                             R2 R2 K5 [1]
      972 JUMP                             ; [+1]
      973 SUBK                             R2 R2 K5 [1]
      974 JUMPIFNOT                        R14 ; [+7]
      975 JUMPIFNOT                        R15 ; [+4]
      976 LOADN                            R18 16
      977 MUL                              R17 R18 R14
      978 ADD                              R16 R17 R15
      979 JUMPIF                           R16 ; [+3]
      980 MOVE                             R16 R14
      981 JUMPIF                           R16 ; [+1]
      982 LOADN                            R16 0
      983 MOVE                             R13 R16
      984 JUMP                             ; [+79]
      985 GETTABLE                         R14 R0 R2
      986 LOADN                            R15 48
      987 JUMPIFNOTLE                      R15 R14 ; [+55]
      989 GETTABLE                         R14 R0 R2
      990 LOADN                            R15 55
      991 JUMPIFNOTLE                      R14 R15 ; [+51]
      993 GETTABLE                         R17 R0 R2
      994 SUBK                             R14 R17 K49 [48]
      995 LOADNIL                          R15
      996 LOADNIL                          R16
      997 ADDK                             R2 R2 K5 [1]
      998 GETTABLE                         R17 R0 R2
      999 JUMPIFNOT                        R17 ; [+26]
     1000 GETTABLE                         R17 R0 R2
     1001 LOADN                            R18 48
     1002 JUMPIFNOTLE                      R18 R17 ; [+23]
     1004 GETTABLE                         R17 R0 R2
     1005 LOADN                            R18 55
     1006 JUMPIFNOTLE                      R17 R18 ; [+19]
     1008 GETTABLE                         R17 R0 R2
     1009 SUBK                             R15 R17 K49 [48]
     1010 ADDK                             R2 R2 K5 [1]
     1011 GETTABLE                         R17 R0 R2
     1012 JUMPIFNOT                        R17 ; [+11]
     1013 GETTABLE                         R17 R0 R2
     1014 LOADN                            R18 48
     1015 JUMPIFNOTLE                      R18 R17 ; [+8]
     1017 GETTABLE                         R17 R0 R2
     1018 LOADN                            R18 55
     1019 JUMPIFNOTLE                      R17 R18 ; [+4]
     1021 GETTABLE                         R17 R0 R2
     1022 SUBK                             R16 R17 K49 [48]
     1023 JUMP                             ; [+3]
     1024 SUBK                             R2 R2 K5 [1]
     1025 JUMP                             ; [+1]
     1026 SUBK                             R2 R2 K5 [1]
     1027 JUMPIFNOT                        R15 ; [+12]
     1028 JUMPIFNOT                        R16 ; [+7]
     1029 LOADN                            R20 64
     1030 MUL                              R19 R20 R14
     1031 LOADN                            R21 8
     1032 MUL                              R20 R21 R15
     1033 ADD                              R18 R19 R20
     1034 ADD                              R17 R18 R16
     1035 JUMPIF                           R17 ; [+5]
     1036 LOADN                            R19 8
     1037 MUL                              R18 R19 R14
     1038 ADD                              R17 R18 R15
     1039 JUMPIF                           R17 ; [+1]
     1040 MOVE                             R17 R14
     1041 MOVE                             R13 R17
     1042 JUMP                             ; [+21]
     1043 GETUPVAL                         R15 5
     1044 GETTABLE                         R16 R0 R2
     1045 GETTABLE                         R14 R15 R16
     1046 JUMPIF                           R14 ; [+1]
     1047 GETTABLE                         R14 R0 R2
     1048 MOVE                             R13 R14
     1049 FASTCALL1                        TYPE R13 ; [+3]
     1050 MOVE                             R15 R13
     1051 GETIMPORT                        R14 K71 [type]
     1053 CALL                             R14 1 1
     1054 JUMPIFEQKS                       R14 K87 ["number"] ; [+9]
     1056 LOADK                            R14 K88 ["invalid range in character class"]
     1057 RETURN                           R14 1
     1058 JUMP                             ; [+5]
     1059 GETTABLEN                        R14 R12 1
     1060 JUMPIFNOTLT                      R13 R14 ; [+3]
     1062 LOADK                            R14 K88 ["invalid range in character class"]
     1063 RETURN                           R14 1
     1064 NEWTABLE                         R14 0 3
     1066 LOADK                            R15 K90 ["range"]
     1067 GETTABLEN                        R16 R12 1
     1068 MOVE                             R17 R13
     1069 SETLIST                          R14 R15 3 [1]
     1071 SETTABLEN                        R14 R12 1
     1072 JUMP                             ; [+822]
     1073 GETTABLE                         R13 R0 R2
     1074 JUMPIFNOTEQKN                    R13 K81 [91] ; [+128]
     1076 ADDK                             R14 R2 K5 [1]
     1077 GETTABLE                         R13 R0 R14
     1078 JUMPIFEQKN                       R13 K80 [46] ; [+9]
     1080 ADDK                             R14 R2 K5 [1]
     1081 GETTABLE                         R13 R0 R14
     1082 JUMPIFEQKN                       R13 K14 [58] ; [+5]
     1084 ADDK                             R14 R2 K5 [1]
     1085 GETTABLE                         R13 R0 R14
     1086 JUMPIFNOTEQKN                    R13 K56 [61] ; [+107]
     1088 ADDK                             R13 R2 K12 [2]
     1089 GETIMPORT                        R14 K47 [table.find]
     1091 MOVE                             R15 R0
     1092 LOADN                            R16 93
     1093 MOVE                             R17 R13
     1094 CALL                             R14 3 1
     1095 MOVE                             R13 R14
     1096 JUMPIFNOT                        R13 ; [+5]
     1097 SUBK                             R15 R13 K5 [1]
     1098 GETTABLE                         R14 R0 R15
     1099 JUMPIFNOTEQKN                    R14 K83 [92] ; [+2]
     1101 JUMPBACK                         ; [-13]
     1102 JUMPIF                           R13 ; [+2]
     1103 LOADK                            R14 K85 ["unterminated character class"]
     1104 RETURN                           R14 1
     1105 SUBK                             R15 R13 K5 [1]
     1106 GETTABLE                         R14 R0 R15
     1107 ADDK                             R16 R2 K5 [1]
     1108 GETTABLE                         R15 R0 R16
     1109 JUMPIFNOTEQ                      R14 R15 ; [+5]
     1111 SUBK                             R14 R13 K5 [1]
     1112 ADDK                             R15 R2 K5 [1]
     1113 JUMPIFNOTEQ                      R14 R15 ; [+10]
     1115 LOADN                            R16 1
     1116 LOADN                            R17 91
     1117 FASTCALL3                        TABLE_INSERT R12 R16 R17
     1119 MOVE                             R15 R12
     1120 GETIMPORT                        R14 K69 [table.insert]
     1122 CALL                             R14 3 0
     1123 JUMP                             ; [+771]
     1124 SUBK                             R15 R13 K5 [1]
     1125 GETTABLE                         R14 R0 R15
     1126 JUMPIFEQKN                       R14 K80 [46] ; [+5]
     1128 SUBK                             R15 R13 K5 [1]
     1129 GETTABLE                         R14 R0 R15
     1130 JUMPIFNOTEQKN                    R14 K56 [61] ; [+3]
     1132 LOADK                            R14 K91 ["POSIX collating elements aren't supported"]
     1133 RETURN                           R14 1
     1134 SUBK                             R15 R13 K5 [1]
     1135 GETTABLE                         R14 R0 R15
     1136 JUMPIFNOTEQKN                    R14 K14 [58] ; [+758]
     1138 ADDK                             R16 R2 K92 [3]
     1139 GETTABLE                         R15 R0 R16
     1140 JUMPIFEQKN                       R15 K82 [94] ; [+2]
     1142 LOADB                            R14 0 +1
     1143 LOADB                            R14 1
     1144 GETTABLEKS                       R16 R0 K17 ["s"]
     1146 JUMPIFNOT                        R14 ; [+2]
     1147 LOADN                            R18 3
     1148 JUMP                             ; [+1]
     1149 LOADN                            R18 2
     1150 ADD                              R17 R2 R18
     1151 SUBK                             R18 R13 K5 [1]
     1152 GETIMPORT                        R19 K20 [utf8.offset]
     1154 MOVE                             R20 R16
     1155 MOVE                             R21 R18
     1156 CALL                             R19 2 1
     1157 MOVE                             R18 R19
     1158 GETIMPORT                        R21 K20 [utf8.offset]
     1160 MOVE                             R22 R16
     1161 MOVE                             R23 R17
     1162 CALL                             R21 2 1
     1163 MOVE                             R22 R18
     1164 JUMPIFNOT                        R22 ; [+1]
     1165 SUBK                             R22 R18 K5 [1]
     1166 FASTCALL3                        STRING_SUB R16 R21 R22
     1168 MOVE                             R20 R16
     1169 GETIMPORT                        R19 K23 [string.sub]
     1171 CALL                             R19 3 1
     1172 MOVE                             R15 R19
     1173 GETUPVAL                         R17 6
     1174 GETTABLE                         R16 R17 R15
     1175 JUMPIF                           R16 ; [+2]
     1176 LOADK                            R16 K93 ["unknown POSIX class name"]
     1177 RETURN                           R16 1
     1178 LOADN                            R18 1
     1179 NEWTABLE                         R19 0 3
     1181 LOADK                            R20 K94 ["class"]
     1182 MOVE                             R21 R15
     1183 MOVE                             R22 R14
     1184 SETLIST                          R19 R20 3 [1]
     1186 FASTCALL3                        TABLE_INSERT R12 R18 R19
     1188 MOVE                             R17 R12
     1189 GETIMPORT                        R16 K69 [table.insert]
     1191 CALL                             R16 3 0
     1192 MOVE                             R2 R13
     1193 JUMP                             ; [+701]
     1194 LOADN                            R15 1
     1195 LOADN                            R16 91
     1196 FASTCALL3                        TABLE_INSERT R12 R15 R16
     1198 MOVE                             R14 R12
     1199 GETIMPORT                        R13 K69 [table.insert]
     1201 CALL                             R13 3 0
     1202 JUMP                             ; [+692]
     1203 GETTABLE                         R13 R0 R2
     1204 JUMPIFNOTEQKN                    R13 K83 [92] ; [+661]
     1206 ADDK                             R2 R2 K5 [1]
     1207 GETTABLE                         R13 R0 R2
     1208 JUMPIFNOTEQKN                    R13 K89 [120] ; [+208]
     1210 LOADNIL                          R13
     1211 LOADNIL                          R14
     1212 ADDK                             R2 R2 K5 [1]
     1213 GETTABLE                         R15 R0 R2
     1214 JUMPIFNOTEQKN                    R15 K95 [123] ; [+82]
     1216 ADDK                             R2 R2 K5 [1]
     1217 MOVE                             R15 R2
     1218 GETTABLE                         R16 R0 R2
     1219 JUMPIFNOT                        R16 ; [+26]
     1220 GETTABLE                         R16 R0 R2
     1221 LOADN                            R17 48
     1222 JUMPIFNOTLE                      R17 R16 ; [+5]
     1224 GETTABLE                         R16 R0 R2
     1225 LOADN                            R17 57
     1226 JUMPIFLE                         R16 R17 ; [+17]
     1228 GETTABLE                         R16 R0 R2
     1229 LOADN                            R17 65
     1230 JUMPIFNOTLE                      R17 R16 ; [+5]
     1232 GETTABLE                         R16 R0 R2
     1233 LOADN                            R17 70
     1234 JUMPIFLE                         R16 R17 ; [+9]
     1236 GETTABLE                         R16 R0 R2
     1237 LOADN                            R17 97
     1238 JUMPIFNOTLE                      R17 R16 ; [+7]
     1240 GETTABLE                         R16 R0 R2
     1241 LOADN                            R17 102
     1242 JUMPIFNOTLE                      R16 R17 ; [+3]
     1244 ADDK                             R2 R2 K5 [1]
     1245 JUMPBACK                         ; [-28]
     1246 GETTABLE                         R16 R0 R2
     1247 JUMPIFNOTEQKN                    R16 K96 [125] ; [+3]
     1249 JUMPIFNOTEQ                      R2 R15 ; [+3]
     1251 LOADK                            R16 K97 ["malformed hexadecimal character"]
     1252 RETURN                           R16 1
     1253 SUB                              R16 R2 R15
     1254 LOADN                            R17 4
     1255 JUMPIFNOTLT                      R17 R16 ; [+3]
     1257 LOADK                            R16 K98 ["character offset too large"]
     1258 RETURN                           R16 1
     1259 LOADN                            R18 1
     1260 GETTABLEKS                       R21 R0 K17 ["s"]
     1262 MOVE                             R22 R2
     1263 GETIMPORT                        R23 K20 [utf8.offset]
     1265 MOVE                             R24 R21
     1266 MOVE                             R25 R22
     1267 CALL                             R23 2 1
     1268 MOVE                             R22 R23
     1269 GETIMPORT                        R25 K20 [utf8.offset]
     1271 MOVE                             R26 R21
     1272 MOVE                             R27 R15
     1273 CALL                             R25 2 1
     1274 MOVE                             R26 R22
     1275 JUMPIFNOT                        R26 ; [+1]
     1276 SUBK                             R26 R22 K5 [1]
     1277 FASTCALL3                        STRING_SUB R21 R25 R26
     1279 MOVE                             R24 R21
     1280 GETIMPORT                        R23 K23 [string.sub]
     1282 CALL                             R23 3 1
     1283 MOVE                             R20 R23
     1284 FASTCALL2K                       TONUMBER R20 K99 ; [+4]
     1286 LOADK                            R21 K99 [16]
     1287 GETIMPORT                        R19 K53 [tonumber]
     1289 CALL                             R19 2 1
     1290 FASTCALL3                        TABLE_INSERT R12 R18 R19
     1292 MOVE                             R17 R12
     1293 GETIMPORT                        R16 K69 [table.insert]
     1295 CALL                             R16 3 0
     1296 JUMP                             ; [+598]
     1297 GETTABLE                         R15 R0 R2
     1298 JUMPIFNOT                        R15 ; [+8]
     1299 GETTABLE                         R15 R0 R2
     1300 LOADN                            R16 48
     1301 JUMPIFNOTLE                      R16 R15 ; [+5]
     1303 GETTABLE                         R15 R0 R2
     1304 LOADN                            R16 57
     1305 JUMPIFLE                         R15 R16 ; [+17]
     1307 GETTABLE                         R15 R0 R2
     1308 LOADN                            R16 65
     1309 JUMPIFNOTLE                      R16 R15 ; [+5]
     1311 GETTABLE                         R15 R0 R2
     1312 LOADN                            R16 70
     1313 JUMPIFLE                         R15 R16 ; [+9]
     1315 GETTABLE                         R15 R0 R2
     1316 LOADN                            R16 97
     1317 JUMPIFNOTLE                      R16 R15 ; [+81]
     1319 GETTABLE                         R15 R0 R2
     1320 LOADN                            R16 102
     1321 JUMPIFNOTLE                      R15 R16 ; [+77]
     1323 GETTABLE                         R15 R0 R2
     1324 GETTABLE                         R17 R0 R2
     1325 LOADN                            R18 65
     1326 JUMPIFNOTLE                      R18 R17 ; [+7]
     1328 GETTABLE                         R17 R0 R2
     1329 LOADN                            R18 90
     1330 JUMPIFNOTLE                      R17 R18 ; [+3]
     1332 LOADN                            R16 55
     1333 JUMP                             ; [+11]
     1334 GETTABLE                         R17 R0 R2
     1335 LOADN                            R18 97
     1336 JUMPIFNOTLE                      R18 R17 ; [+7]
     1338 GETTABLE                         R17 R0 R2
     1339 LOADN                            R18 122
     1340 JUMPIFNOTLE                      R17 R18 ; [+3]
     1342 LOADN                            R16 87
     1343 JUMP                             ; [+1]
     1344 LOADN                            R16 48
     1345 SUB                              R13 R15 R16
     1346 ADDK                             R2 R2 K5 [1]
     1347 GETTABLE                         R15 R0 R2
     1348 JUMPIFNOT                        R15 ; [+8]
     1349 GETTABLE                         R15 R0 R2
     1350 LOADN                            R16 48
     1351 JUMPIFNOTLE                      R16 R15 ; [+5]
     1353 GETTABLE                         R15 R0 R2
     1354 LOADN                            R16 57
     1355 JUMPIFLE                         R15 R16 ; [+17]
     1357 GETTABLE                         R15 R0 R2
     1358 LOADN                            R16 65
     1359 JUMPIFNOTLE                      R16 R15 ; [+5]
     1361 GETTABLE                         R15 R0 R2
     1362 LOADN                            R16 70
     1363 JUMPIFLE                         R15 R16 ; [+9]
     1365 GETTABLE                         R15 R0 R2
     1366 LOADN                            R16 97
     1367 JUMPIFNOTLE                      R16 R15 ; [+29]
     1369 GETTABLE                         R15 R0 R2
     1370 LOADN                            R16 102
     1371 JUMPIFNOTLE                      R15 R16 ; [+25]
     1373 GETTABLE                         R15 R0 R2
     1374 GETTABLE                         R17 R0 R2
     1375 LOADN                            R18 65
     1376 JUMPIFNOTLE                      R18 R17 ; [+7]
     1378 GETTABLE                         R17 R0 R2
     1379 LOADN                            R18 90
     1380 JUMPIFNOTLE                      R17 R18 ; [+3]
     1382 LOADN                            R16 55
     1383 JUMP                             ; [+11]
     1384 GETTABLE                         R17 R0 R2
     1385 LOADN                            R18 97
     1386 JUMPIFNOTLE                      R18 R17 ; [+7]
     1388 GETTABLE                         R17 R0 R2
     1389 LOADN                            R18 122
     1390 JUMPIFNOTLE                      R17 R18 ; [+3]
     1392 LOADN                            R16 87
     1393 JUMP                             ; [+1]
     1394 LOADN                            R16 48
     1395 SUB                              R14 R15 R16
     1396 JUMP                             ; [+3]
     1397 SUBK                             R2 R2 K5 [1]
     1398 JUMP                             ; [+1]
     1399 SUBK                             R2 R2 K5 [1]
     1400 LOADN                            R17 1
     1401 JUMPIFNOT                        R13 ; [+7]
     1402 JUMPIFNOT                        R14 ; [+4]
     1403 LOADN                            R20 16
     1404 MUL                              R19 R20 R13
     1405 ADD                              R18 R19 R14
     1406 JUMPIF                           R18 ; [+3]
     1407 MOVE                             R18 R13
     1408 JUMPIF                           R18 ; [+1]
     1409 LOADN                            R18 0
     1410 FASTCALL3                        TABLE_INSERT R12 R17 R18
     1412 MOVE                             R16 R12
     1413 GETIMPORT                        R15 K69 [table.insert]
     1415 CALL                             R15 3 0
     1416 JUMP                             ; [+478]
     1417 GETTABLE                         R13 R0 R2
     1418 LOADN                            R14 48
     1419 JUMPIFNOTLE                      R14 R13 ; [+61]
     1421 GETTABLE                         R13 R0 R2
     1422 LOADN                            R14 55
     1423 JUMPIFNOTLE                      R13 R14 ; [+57]
     1425 GETTABLE                         R16 R0 R2
     1426 SUBK                             R13 R16 K49 [48]
     1427 LOADNIL                          R14
     1428 LOADNIL                          R15
     1429 ADDK                             R2 R2 K5 [1]
     1430 GETTABLE                         R16 R0 R2
     1431 JUMPIFNOT                        R16 ; [+26]
     1432 GETTABLE                         R16 R0 R2
     1433 LOADN                            R17 48
     1434 JUMPIFNOTLE                      R17 R16 ; [+23]
     1436 GETTABLE                         R16 R0 R2
     1437 LOADN                            R17 55
     1438 JUMPIFNOTLE                      R16 R17 ; [+19]
     1440 GETTABLE                         R16 R0 R2
     1441 SUBK                             R14 R16 K49 [48]
     1442 ADDK                             R2 R2 K5 [1]
     1443 GETTABLE                         R16 R0 R2
     1444 JUMPIFNOT                        R16 ; [+11]
     1445 GETTABLE                         R16 R0 R2
     1446 LOADN                            R17 48
     1447 JUMPIFNOTLE                      R17 R16 ; [+8]
     1449 GETTABLE                         R16 R0 R2
     1450 LOADN                            R17 55
     1451 JUMPIFNOTLE                      R16 R17 ; [+4]
     1453 GETTABLE                         R16 R0 R2
     1454 SUBK                             R15 R16 K49 [48]
     1455 JUMP                             ; [+3]
     1456 SUBK                             R2 R2 K5 [1]
     1457 JUMP                             ; [+1]
     1458 SUBK                             R2 R2 K5 [1]
     1459 LOADN                            R18 1
     1460 JUMPIFNOT                        R14 ; [+12]
     1461 JUMPIFNOT                        R15 ; [+7]
     1462 LOADN                            R22 64
     1463 MUL                              R21 R22 R13
     1464 LOADN                            R23 8
     1465 MUL                              R22 R23 R14
     1466 ADD                              R20 R21 R22
     1467 ADD                              R19 R20 R15
     1468 JUMPIF                           R19 ; [+5]
     1469 LOADN                            R21 8
     1470 MUL                              R20 R21 R13
     1471 ADD                              R19 R20 R14
     1472 JUMPIF                           R19 ; [+1]
     1473 MOVE                             R19 R13
     1474 FASTCALL3                        TABLE_INSERT R12 R18 R19
     1476 MOVE                             R17 R12
     1477 GETIMPORT                        R16 K69 [table.insert]
     1479 CALL                             R16 3 0
     1480 JUMP                             ; [+414]
     1481 GETTABLE                         R13 R0 R2
     1482 JUMPIFNOTEQKN                    R13 K100 [69] ; [+2]
     1484 JUMP                             ; [+410]
     1485 GETTABLE                         R13 R0 R2
     1486 JUMPIFNOTEQKN                    R13 K101 [81] ; [+30]
     1488 ADDK                             R13 R2 K5 [1]
     1489 GETIMPORT                        R14 K47 [table.find]
     1491 MOVE                             R15 R0
     1492 LOADN                            R16 92
     1493 ADDK                             R17 R2 K5 [1]
     1494 CALL                             R14 3 1
     1495 MOVE                             R2 R14
     1496 JUMPIFNOT                        R2 ; [+5]
     1497 ADDK                             R15 R2 K5 [1]
     1498 GETTABLE                         R14 R0 R15
     1499 JUMPIFEQKN                       R14 K100 [69] ; [+2]
     1501 JUMPBACK                         ; [-13]
     1502 GETIMPORT                        R14 K103 [table.move]
     1504 MOVE                             R15 R0
     1505 MOVE                             R16 R13
     1506 JUMPIFNOT                        R2 ; [+2]
     1507 SUBK                             R17 R2 K5 [1]
     1508 JUMPIF                           R17 ; [+1]
     1509 LENGTH                           R17 R0
     1510 LENGTH                           R19 R5
     1511 ADDK                             R18 R19 K5 [1]
     1512 MOVE                             R19 R5
     1513 CALL                             R14 5 0
     1514 JUMPIFNOT                        R2 ; [+382]
     1515 ADDK                             R2 R2 K5 [1]
     1516 JUMP                             ; [+378]
     1517 GETTABLE                         R13 R0 R2
     1518 JUMPIFNOTEQKN                    R13 K104 [78] ; [+93]
     1520 ADDK                             R14 R2 K5 [1]
     1521 GETTABLE                         R13 R0 R14
     1522 JUMPIFNOTEQKN                    R13 K95 [123] ; [+86]
     1524 ADDK                             R14 R2 K12 [2]
     1525 GETTABLE                         R13 R0 R14
     1526 JUMPIFNOTEQKN                    R13 K105 [85] ; [+82]
     1528 ADDK                             R14 R2 K92 [3]
     1529 GETTABLE                         R13 R0 R14
     1530 JUMPIFNOTEQKN                    R13 K106 [43] ; [+78]
     1532 GETTABLEKS                       R13 R1 K0 ["unicode"]
     1534 JUMPIFNOT                        R13 ; [+74]
     1535 ADDK                             R2 R2 K107 [4]
     1536 MOVE                             R13 R2
     1537 GETTABLE                         R14 R0 R2
     1538 JUMPIFNOT                        R14 ; [+26]
     1539 GETTABLE                         R14 R0 R2
     1540 LOADN                            R15 48
     1541 JUMPIFNOTLE                      R15 R14 ; [+5]
     1543 GETTABLE                         R14 R0 R2
     1544 LOADN                            R15 57
     1545 JUMPIFLE                         R14 R15 ; [+17]
     1547 GETTABLE                         R14 R0 R2
     1548 LOADN                            R15 65
     1549 JUMPIFNOTLE                      R15 R14 ; [+5]
     1551 GETTABLE                         R14 R0 R2
     1552 LOADN                            R15 70
     1553 JUMPIFLE                         R14 R15 ; [+9]
     1555 GETTABLE                         R14 R0 R2
     1556 LOADN                            R15 97
     1557 JUMPIFNOTLE                      R15 R14 ; [+7]
     1559 GETTABLE                         R14 R0 R2
     1560 LOADN                            R15 102
     1561 JUMPIFNOTLE                      R14 R15 ; [+3]
     1563 ADDK                             R2 R2 K5 [1]
     1564 JUMPBACK                         ; [-28]
     1565 GETTABLE                         R14 R0 R2
     1566 JUMPIFNOTEQKN                    R14 K96 [125] ; [+3]
     1568 JUMPIFNOTEQ                      R2 R13 ; [+3]
     1570 LOADK                            R14 K108 ["malformed Unicode code point"]
     1571 RETURN                           R14 1
     1572 GETTABLEKS                       R16 R0 K17 ["s"]
     1574 MOVE                             R17 R2
     1575 GETIMPORT                        R18 K20 [utf8.offset]
     1577 MOVE                             R19 R16
     1578 MOVE                             R20 R17
     1579 CALL                             R18 2 1
     1580 MOVE                             R17 R18
     1581 GETIMPORT                        R20 K20 [utf8.offset]
     1583 MOVE                             R21 R16
     1584 MOVE                             R22 R13
     1585 CALL                             R20 2 1
     1586 MOVE                             R21 R17
     1587 JUMPIFNOT                        R21 ; [+1]
     1588 SUBK                             R21 R17 K5 [1]
     1589 FASTCALL3                        STRING_SUB R16 R20 R21
     1591 MOVE                             R19 R16
     1592 GETIMPORT                        R18 K23 [string.sub]
     1594 CALL                             R18 3 1
     1595 MOVE                             R15 R18
     1596 FASTCALL1                        TONUMBER R15 ; [+2]
     1597 GETIMPORT                        R14 K53 [tonumber]
     1599 CALL                             R14 1 1
     1600 LOADN                            R17 1
     1601 FASTCALL3                        TABLE_INSERT R12 R17 R14
     1603 MOVE                             R16 R12
     1604 MOVE                             R18 R14
     1605 GETIMPORT                        R15 K69 [table.insert]
     1607 CALL                             R15 3 0
     1608 JUMP                             ; [+286]
     1609 LOADK                            R13 K109 ["invalid escape sequence"]
     1610 RETURN                           R13 1
     1611 JUMP                             ; [+283]
     1612 GETTABLE                         R13 R0 R2
     1613 JUMPIFEQKN                       R13 K58 [80] ; [+4]
     1615 GETTABLE                         R13 R0 R2
     1616 JUMPIFNOTEQKN                    R13 K110 [112] ; [+146]
     1618 GETUPVAL                         R13 0
     1619 GETTABLEKS                       R13 R13 K1 ["unicodeData"]
     1621 JUMPIF                           R13 ; [+2]
     1622 LOADK                            R13 K111 ["options.unicodeData cannot be turned off when using \\p"]
     1623 RETURN                           R13 1
     1624 ADDK                             R2 R2 K5 [1]
     1625 GETTABLE                         R13 R0 R2
     1626 JUMPIFEQKN                       R13 K95 [123] ; [+26]
     1628 GETIMPORT                        R13 K113 [utf8.char]
     1630 GETTABLE                         R15 R0 R2
     1631 ORK                              R14 R15 K8 [0]
     1632 CALL                             R13 1 1
     1633 GETUPVAL                         R15 7
     1634 GETTABLE                         R14 R15 R13
     1635 JUMPIF                           R14 ; [+2]
     1636 LOADK                            R14 K114 ["unknown or malformed script name"]
     1637 RETURN                           R14 1
     1638 LOADN                            R16 1
     1639 NEWTABLE                         R17 0 3
     1641 LOADK                            R18 K115 ["category"]
     1642 LOADB                            R19 0
     1643 MOVE                             R20 R13
     1644 SETLIST                          R17 R18 3 [1]
     1646 FASTCALL3                        TABLE_INSERT R12 R16 R17
     1648 MOVE                             R15 R12
     1649 GETIMPORT                        R14 K69 [table.insert]
     1651 CALL                             R14 3 0
     1652 JUMP                             ; [+242]
     1653 GETTABLE                         R14 R0 R2
     1654 JUMPIFEQKN                       R14 K58 [80] ; [+2]
     1656 LOADB                            R13 0 +1
     1657 LOADB                            R13 1
     1658 ADDK                             R2 R2 K5 [1]
     1659 GETTABLE                         R14 R0 R2
     1660 JUMPIFNOTEQKN                    R14 K82 [94] ; [+3]
     1662 ADDK                             R2 R2 K5 [1]
     1663 NOT                              R13 R13
     1664 MOVE                             R14 R2
     1665 GETTABLE                         R15 R0 R2
     1666 JUMPIFNOT                        R15 ; [+29]
     1667 GETTABLE                         R15 R0 R2
     1668 LOADN                            R16 48
     1669 JUMPIFNOTLE                      R16 R15 ; [+5]
     1671 GETTABLE                         R15 R0 R2
     1672 LOADN                            R16 57
     1673 JUMPIFLE                         R15 R16 ; [+20]
     1675 GETTABLE                         R15 R0 R2
     1676 LOADN                            R16 65
     1677 JUMPIFNOTLE                      R16 R15 ; [+5]
     1679 GETTABLE                         R15 R0 R2
     1680 LOADN                            R16 90
     1681 JUMPIFLE                         R15 R16 ; [+12]
     1683 GETTABLE                         R15 R0 R2
     1684 LOADN                            R16 97
     1685 JUMPIFNOTLE                      R16 R15 ; [+5]
     1687 GETTABLE                         R15 R0 R2
     1688 LOADN                            R16 122
     1689 JUMPIFLE                         R15 R16 ; [+4]
     1691 GETTABLE                         R15 R0 R2
     1692 JUMPIFNOTEQKN                    R15 K13 [95] ; [+3]
     1694 ADDK                             R2 R2 K5 [1]
     1695 JUMPBACK                         ; [-31]
     1696 GETTABLE                         R15 R0 R2
     1697 JUMPIFEQKN                       R15 K96 [125] ; [+3]
     1699 LOADK                            R15 K114 ["unknown or malformed script name"]
     1700 RETURN                           R15 1
     1701 GETTABLEKS                       R16 R0 K17 ["s"]
     1703 MOVE                             R17 R2
     1704 GETIMPORT                        R18 K20 [utf8.offset]
     1706 MOVE                             R19 R16
     1707 MOVE                             R20 R17
     1708 CALL                             R18 2 1
     1709 MOVE                             R17 R18
     1710 GETIMPORT                        R20 K20 [utf8.offset]
     1712 MOVE                             R21 R16
     1713 MOVE                             R22 R14
     1714 CALL                             R20 2 1
     1715 MOVE                             R21 R17
     1716 JUMPIFNOT                        R21 ; [+1]
     1717 SUBK                             R21 R17 K5 [1]
     1718 FASTCALL3                        STRING_SUB R16 R20 R21
     1720 MOVE                             R19 R16
     1721 GETIMPORT                        R18 K23 [string.sub]
     1723 CALL                             R18 3 1
     1724 MOVE                             R15 R18
     1725 GETUPVAL                         R17 8
     1726 GETTABLE                         R16 R17 R15
     1727 JUMPIFNOT                        R16 ; [+15]
     1728 LOADN                            R19 1
     1729 NEWTABLE                         R20 0 3
     1731 LOADK                            R21 K116 ["charset"]
     1732 MOVE                             R22 R13
     1733 MOVE                             R23 R16
     1734 SETLIST                          R20 R21 3 [1]
     1736 FASTCALL3                        TABLE_INSERT R12 R19 R20
     1738 MOVE                             R18 R12
     1739 GETIMPORT                        R17 K69 [table.insert]
     1741 CALL                             R17 3 0
     1742 JUMP                             ; [+152]
     1743 GETUPVAL                         R18 7
     1744 GETTABLE                         R17 R18 R15
     1745 JUMPIF                           R17 ; [+2]
     1746 LOADK                            R17 K114 ["unknown or malformed script name"]
     1747 RETURN                           R17 1
     1748 LOADN                            R19 1
     1749 NEWTABLE                         R20 0 3
     1751 LOADK                            R21 K115 ["category"]
     1752 MOVE                             R22 R13
     1753 MOVE                             R23 R15
     1754 SETLIST                          R20 R21 3 [1]
     1756 FASTCALL3                        TABLE_INSERT R12 R19 R20
     1758 MOVE                             R18 R12
     1759 GETIMPORT                        R17 K69 [table.insert]
     1761 CALL                             R17 3 0
     1762 JUMP                             ; [+132]
     1763 GETTABLE                         R13 R0 R2
     1764 JUMPIFNOTEQKN                    R13 K117 [111] ; [+72]
     1766 ADDK                             R2 R2 K5 [1]
     1767 GETTABLE                         R13 R0 R2
     1768 JUMPIFEQKN                       R13 K95 [123] ; [+3]
     1770 LOADK                            R13 K118 ["malformed octal code"]
     1771 RETURN                           R13 1
     1772 ADDK                             R2 R2 K5 [1]
     1773 MOVE                             R13 R2
     1774 GETTABLE                         R14 R0 R2
     1775 JUMPIFNOT                        R14 ; [+10]
     1776 GETTABLE                         R14 R0 R2
     1777 LOADN                            R15 48
     1778 JUMPIFNOTLE                      R15 R14 ; [+7]
     1780 GETTABLE                         R14 R0 R2
     1781 LOADN                            R15 55
     1782 JUMPIFNOTLE                      R14 R15 ; [+3]
     1784 ADDK                             R2 R2 K5 [1]
     1785 JUMPBACK                         ; [-12]
     1786 GETTABLE                         R14 R0 R2
     1787 JUMPIFNOTEQKN                    R14 K96 [125] ; [+3]
     1789 JUMPIFNOTEQ                      R2 R13 ; [+3]
     1791 LOADK                            R14 K118 ["malformed octal code"]
     1792 RETURN                           R14 1
     1793 GETTABLEKS                       R16 R0 K17 ["s"]
     1795 MOVE                             R17 R2
     1796 GETIMPORT                        R18 K20 [utf8.offset]
     1798 MOVE                             R19 R16
     1799 MOVE                             R20 R17
     1800 CALL                             R18 2 1
     1801 MOVE                             R17 R18
     1802 GETIMPORT                        R20 K20 [utf8.offset]
     1804 MOVE                             R21 R16
     1805 MOVE                             R22 R13
     1806 CALL                             R20 2 1
     1807 MOVE                             R21 R17
     1808 JUMPIFNOT                        R21 ; [+1]
     1809 SUBK                             R21 R17 K5 [1]
     1810 FASTCALL3                        STRING_SUB R16 R20 R21
     1812 MOVE                             R19 R16
     1813 GETIMPORT                        R18 K23 [string.sub]
     1815 CALL                             R18 3 1
     1816 MOVE                             R15 R18
     1817 FASTCALL2K                       TONUMBER R15 K119 ; [+4]
     1819 LOADK                            R16 K119 [8]
     1820 GETIMPORT                        R14 K53 [tonumber]
     1822 CALL                             R14 2 1
     1823 LOADK                            R15 K120 [65535]
     1824 JUMPIFNOTLT                      R15 R14 ; [+3]
     1826 LOADK                            R15 K98 ["character offset too large"]
     1827 RETURN                           R15 1
     1828 LOADN                            R17 1
     1829 FASTCALL3                        TABLE_INSERT R12 R17 R14
     1831 MOVE                             R16 R12
     1832 MOVE                             R18 R14
     1833 GETIMPORT                        R15 K69 [table.insert]
     1835 CALL                             R15 3 0
     1836 JUMP                             ; [+58]
     1837 GETUPVAL                         R14 5
     1838 GETTABLE                         R15 R0 R2
     1839 GETTABLE                         R13 R14 R15
     1840 LOADN                            R16 1
     1841 FASTCALL1                        TYPE R13 ; [+3]
     1842 MOVE                             R19 R13
     1843 GETIMPORT                        R18 K71 [type]
     1845 CALL                             R18 1 1
     1846 JUMPIFNOTEQKS                    R18 K21 ["string"] ; [+9]
     1848 NEWTABLE                         R17 0 3
     1850 LOADK                            R18 K94 ["class"]
     1851 MOVE                             R19 R13
     1852 LOADB                            R20 0
     1853 SETLIST                          R17 R18 3 [1]
     1855 JUMPIF                           R17 ; [+3]
     1856 MOVE                             R17 R13
     1857 JUMPIF                           R17 ; [+1]
     1858 GETTABLE                         R17 R0 R2
     1859 FASTCALL3                        TABLE_INSERT R12 R16 R17
     1861 MOVE                             R15 R12
     1862 GETIMPORT                        R14 K69 [table.insert]
     1864 CALL                             R14 3 0
     1865 JUMP                             ; [+29]
     1866 GETTABLEKS                       R13 R1 K121 ["ignoreCase"]
     1868 JUMPIFNOT                        R13 ; [+18]
     1869 GETTABLE                         R13 R0 R2
     1870 LOADN                            R14 97
     1871 JUMPIFNOTLE                      R14 R13 ; [+15]
     1873 GETTABLE                         R13 R0 R2
     1874 LOADN                            R14 122
     1875 JUMPIFNOTLE                      R13 R14 ; [+11]
     1877 LOADN                            R15 1
     1878 GETTABLE                         R17 R0 R2
     1879 SUBK                             R16 R17 K122 [32]
     1880 FASTCALL3                        TABLE_INSERT R12 R15 R16
     1882 MOVE                             R14 R12
     1883 GETIMPORT                        R13 K69 [table.insert]
     1885 CALL                             R13 3 0
     1886 JUMP                             ; [+8]
     1887 LOADN                            R15 1
     1888 GETTABLE                         R16 R0 R2
     1889 FASTCALL3                        TABLE_INSERT R12 R15 R16
     1891 MOVE                             R14 R12
     1892 GETIMPORT                        R13 K69 [table.insert]
     1894 CALL                             R13 3 0
     1895 ADDK                             R2 R2 K5 [1]
     1896 JUMPBACK                         ; [-1119]
     1897 SUBK                             R14 R2 K5 [1]
     1898 GETTABLE                         R13 R0 R14
     1899 JUMPIFNOTEQ                      R13 R10 ; [+10]
     1901 SUBK                             R13 R2 K5 [1]
     1902 JUMPIFEQ                         R13 R11 ; [+7]
     1904 JUMPIFNOTEQKN                    R10 K14 [58] ; [+3]
     1906 LOADK                            R13 K123 ["POSIX named classes are only support within a character set"]
     1907 RETURN                           R13 1
     1908 LOADK                            R13 K91 ["POSIX collating elements aren't supported"]
     1909 RETURN                           R13 1
     1910 GETTABLEN                        R13 R12 2
     1911 JUMPIF                           R13 ; [+9]
     1912 JUMPIF                           R9 ; [+8]
     1913 GETTABLEN                        R15 R12 1
     1914 FASTCALL2                        TABLE_INSERT R5 R15 ; [+4]
     1916 MOVE                             R14 R5
     1917 GETIMPORT                        R13 K69 [table.insert]
     1919 CALL                             R13 2 0
     1920 JUMP                             ; [+1207]
     1921 NEWTABLE                         R15 0 3
     1923 LOADK                            R16 K116 ["charset"]
     1924 MOVE                             R17 R9
     1925 MOVE                             R18 R12
     1926 SETLIST                          R15 R16 3 [1]
     1928 FASTCALL2                        TABLE_INSERT R5 R15 ; [+4]
     1930 MOVE                             R14 R5
     1931 GETIMPORT                        R13 K69 [table.insert]
     1933 CALL                             R13 2 0
     1934 JUMP                             ; [+1193]
     1935 JUMPIFNOTEQKN                    R8 K83 [92] ; [+824]
     1937 ADDK                             R2 R2 K5 [1]
     1938 GETTABLE                         R9 R0 R2
     1939 JUMPIF                           R9 ; [+2]
     1940 LOADK                            R10 K124 ["pattern may not end with a trailing backslash"]
     1941 RETURN                           R10 1
     1942 LOADN                            R10 48
     1943 JUMPIFNOTLE                      R10 R9 ; [+129]
     1945 LOADN                            R10 57
     1946 JUMPIFNOTLE                      R9 R10 ; [+126]
     1948 MOVE                             R10 R2
     1949 ADDK                             R12 R2 K5 [1]
     1950 GETTABLE                         R11 R0 R12
     1951 JUMPIFNOT                        R11 ; [+12]
     1952 ADDK                             R12 R2 K5 [1]
     1953 GETTABLE                         R11 R0 R12
     1954 LOADN                            R12 48
     1955 JUMPIFNOTLE                      R12 R11 ; [+8]
     1957 ADDK                             R12 R2 K5 [1]
     1958 GETTABLE                         R11 R0 R12
     1959 LOADN                            R12 57
     1960 JUMPIFNOTLE                      R11 R12 ; [+3]
     1962 ADDK                             R2 R2 K5 [1]
     1963 JUMPBACK                         ; [-15]
     1964 GETTABLEKS                       R13 R0 K17 ["s"]
     1966 ADDK                             R14 R2 K5 [1]
     1967 GETIMPORT                        R15 K20 [utf8.offset]
     1969 MOVE                             R16 R13
     1970 MOVE                             R17 R14
     1971 CALL                             R15 2 1
     1972 MOVE                             R14 R15
     1973 GETIMPORT                        R17 K20 [utf8.offset]
     1975 MOVE                             R18 R13
     1976 MOVE                             R19 R10
     1977 CALL                             R17 2 1
     1978 MOVE                             R18 R14
     1979 JUMPIFNOT                        R18 ; [+1]
     1980 SUBK                             R18 R14 K5 [1]
     1981 FASTCALL3                        STRING_SUB R13 R17 R18
     1983 MOVE                             R16 R13
     1984 GETIMPORT                        R15 K23 [string.sub]
     1986 CALL                             R15 3 1
     1987 MOVE                             R12 R15
     1988 FASTCALL1                        TONUMBER R12 ; [+2]
     1989 GETIMPORT                        R11 K53 [tonumber]
     1991 CALL                             R11 1 1
     1992 JUMPIFNOTLT                      R4 R11 ; [+67]
     1994 JUMPIFEQ                         R2 R10 ; [+65]
     1996 MOVE                             R2 R10
     1997 LOADNIL                          R12
     1998 LOADNIL                          R13
     1999 LOADNIL                          R14
     2000 GETTABLE                         R15 R0 R2
     2001 LOADN                            R16 55
     2002 JUMPIFNOTLE                      R15 R16 ; [+33]
     2004 GETTABLE                         R15 R0 R2
     2005 SUBK                             R12 R15 K49 [48]
     2006 ADDK                             R2 R2 K5 [1]
     2007 GETTABLE                         R15 R0 R2
     2008 JUMPIFNOT                        R15 ; [+26]
     2009 GETTABLE                         R15 R0 R2
     2010 LOADN                            R16 48
     2011 JUMPIFNOTLE                      R16 R15 ; [+23]
     2013 GETTABLE                         R15 R0 R2
     2014 LOADN                            R16 55
     2015 JUMPIFNOTLE                      R15 R16 ; [+19]
     2017 GETTABLE                         R15 R0 R2
     2018 SUBK                             R13 R15 K49 [48]
     2019 ADDK                             R2 R2 K5 [1]
     2020 GETTABLE                         R15 R0 R2
     2021 JUMPIFNOT                        R15 ; [+11]
     2022 GETTABLE                         R15 R0 R2
     2023 LOADN                            R16 48
     2024 JUMPIFNOTLE                      R16 R15 ; [+8]
     2026 GETTABLE                         R15 R0 R2
     2027 LOADN                            R16 55
     2028 JUMPIFNOTLE                      R15 R16 ; [+4]
     2030 GETTABLE                         R15 R0 R2
     2031 SUBK                             R14 R15 K49 [48]
     2032 JUMP                             ; [+3]
     2033 SUBK                             R2 R2 K5 [1]
     2034 JUMP                             ; [+1]
     2035 SUBK                             R2 R2 K5 [1]
     2036 JUMPIFNOT                        R12 ; [+15]
     2037 JUMPIFNOT                        R13 ; [+12]
     2038 JUMPIFNOT                        R14 ; [+7]
     2039 LOADN                            R20 64
     2040 MUL                              R19 R20 R12
     2041 LOADN                            R21 8
     2042 MUL                              R20 R21 R13
     2043 ADD                              R18 R19 R20
     2044 ADD                              R17 R18 R14
     2045 JUMPIF                           R17 ; [+7]
     2046 LOADN                            R19 8
     2047 MUL                              R18 R19 R12
     2048 ADD                              R17 R18 R13
     2049 JUMPIF                           R17 ; [+3]
     2050 MOVE                             R17 R12
     2051 JUMPIF                           R17 ; [+1]
     2052 GETTABLE                         R17 R0 R10
     2053 FASTCALL2                        TABLE_INSERT R5 R17 ; [+4]
     2055 MOVE                             R16 R5
     2056 GETIMPORT                        R15 K69 [table.insert]
     2058 CALL                             R15 2 0
     2059 JUMP                             ; [+1068]
     2060 NEWTABLE                         R14 0 2
     2062 LOADK                            R15 K60 ["backref"]
     2063 MOVE                             R16 R11
     2064 SETLIST                          R14 R15 2 [1]
     2066 FASTCALL2                        TABLE_INSERT R5 R14 ; [+4]
     2068 MOVE                             R13 R5
     2069 GETIMPORT                        R12 K69 [table.insert]
     2071 CALL                             R12 2 0
     2072 JUMP                             ; [+1055]
     2073 JUMPIFNOTEQKN                    R9 K100 [69] ; [+2]
     2075 JUMP                             ; [+1052]
     2076 JUMPIFNOTEQKN                    R9 K101 [81] ; [+30]
     2078 ADDK                             R10 R2 K5 [1]
     2079 GETIMPORT                        R11 K47 [table.find]
     2081 MOVE                             R12 R0
     2082 LOADN                            R13 92
     2083 ADDK                             R14 R2 K5 [1]
     2084 CALL                             R11 3 1
     2085 MOVE                             R2 R11
     2086 JUMPIFNOT                        R2 ; [+5]
     2087 ADDK                             R12 R2 K5 [1]
     2088 GETTABLE                         R11 R0 R12
     2089 JUMPIFEQKN                       R11 K100 [69] ; [+2]
     2091 JUMPBACK                         ; [-13]
     2092 GETIMPORT                        R11 K103 [table.move]
     2094 MOVE                             R12 R0
     2095 MOVE                             R13 R10
     2096 JUMPIFNOT                        R2 ; [+2]
     2097 SUBK                             R14 R2 K5 [1]
     2098 JUMPIF                           R14 ; [+1]
     2099 LENGTH                           R14 R0
     2100 LENGTH                           R16 R5
     2101 ADDK                             R15 R16 K5 [1]
     2102 MOVE                             R16 R5
     2103 CALL                             R11 5 0
     2104 JUMPIFNOT                        R2 ; [+1025]
     2105 ADDK                             R2 R2 K5 [1]
     2106 JUMP                             ; [+1021]
     2107 JUMPIFNOTEQKN                    R9 K104 [78] ; [+98]
     2109 ADDK                             R11 R2 K5 [1]
     2110 GETTABLE                         R10 R0 R11
     2111 JUMPIFNOTEQKN                    R10 K95 [123] ; [+85]
     2113 ADDK                             R11 R2 K12 [2]
     2114 GETTABLE                         R10 R0 R11
     2115 JUMPIFNOTEQKN                    R10 K105 [85] ; [+81]
     2117 ADDK                             R11 R2 K92 [3]
     2118 GETTABLE                         R10 R0 R11
     2119 JUMPIFNOTEQKN                    R10 K106 [43] ; [+77]
     2121 GETTABLEKS                       R10 R1 K0 ["unicode"]
     2123 JUMPIFNOT                        R10 ; [+73]
     2124 ADDK                             R2 R2 K107 [4]
     2125 MOVE                             R10 R2
     2126 GETTABLE                         R11 R0 R2
     2127 JUMPIFNOT                        R11 ; [+26]
     2128 GETTABLE                         R11 R0 R2
     2129 LOADN                            R12 48
     2130 JUMPIFNOTLE                      R12 R11 ; [+5]
     2132 GETTABLE                         R11 R0 R2
     2133 LOADN                            R12 57
     2134 JUMPIFLE                         R11 R12 ; [+17]
     2136 GETTABLE                         R11 R0 R2
     2137 LOADN                            R12 65
     2138 JUMPIFNOTLE                      R12 R11 ; [+5]
     2140 GETTABLE                         R11 R0 R2
     2141 LOADN                            R12 70
     2142 JUMPIFLE                         R11 R12 ; [+9]
     2144 GETTABLE                         R11 R0 R2
     2145 LOADN                            R12 97
     2146 JUMPIFNOTLE                      R12 R11 ; [+7]
     2148 GETTABLE                         R11 R0 R2
     2149 LOADN                            R12 102
     2150 JUMPIFNOTLE                      R11 R12 ; [+3]
     2152 ADDK                             R2 R2 K5 [1]
     2153 JUMPBACK                         ; [-28]
     2154 GETTABLE                         R11 R0 R2
     2155 JUMPIFNOTEQKN                    R11 K96 [125] ; [+3]
     2157 JUMPIFNOTEQ                      R2 R10 ; [+3]
     2159 LOADK                            R11 K108 ["malformed Unicode code point"]
     2160 RETURN                           R11 1
     2161 GETTABLEKS                       R13 R0 K17 ["s"]
     2163 MOVE                             R14 R2
     2164 GETIMPORT                        R15 K20 [utf8.offset]
     2166 MOVE                             R16 R13
     2167 MOVE                             R17 R14
     2168 CALL                             R15 2 1
     2169 MOVE                             R14 R15
     2170 GETIMPORT                        R17 K20 [utf8.offset]
     2172 MOVE                             R18 R13
     2173 MOVE                             R19 R10
     2174 CALL                             R17 2 1
     2175 MOVE                             R18 R14
     2176 JUMPIFNOT                        R18 ; [+1]
     2177 SUBK                             R18 R14 K5 [1]
     2178 FASTCALL3                        STRING_SUB R13 R17 R18
     2180 MOVE                             R16 R13
     2181 GETIMPORT                        R15 K23 [string.sub]
     2183 CALL                             R15 3 1
     2184 MOVE                             R12 R15
     2185 FASTCALL1                        TONUMBER R12 ; [+2]
     2186 GETIMPORT                        R11 K53 [tonumber]
     2188 CALL                             R11 1 1
     2189 FASTCALL2                        TABLE_INSERT R5 R11 ; [+5]
     2191 MOVE                             R13 R5
     2192 MOVE                             R14 R11
     2193 GETIMPORT                        R12 K69 [table.insert]
     2195 CALL                             R12 2 0
     2196 JUMP                             ; [+931]
     2197 GETUPVAL                         R13 5
     2198 GETTABLEN                        R12 R13 78
     2199 FASTCALL2                        TABLE_INSERT R5 R12 ; [+4]
     2201 MOVE                             R11 R5
     2202 GETIMPORT                        R10 K69 [table.insert]
     2204 CALL                             R10 2 0
     2205 JUMP                             ; [+922]
     2206 JUMPIFEQKN                       R9 K58 [80] ; [+3]
     2208 JUMPIFNOTEQKN                    R9 K110 [112] ; [+142]
     2210 GETUPVAL                         R10 0
     2211 GETTABLEKS                       R10 R10 K1 ["unicodeData"]
     2213 JUMPIF                           R10 ; [+2]
     2214 LOADK                            R10 K111 ["options.unicodeData cannot be turned off when using \\p"]
     2215 RETURN                           R10 1
     2216 ADDK                             R2 R2 K5 [1]
     2217 GETTABLE                         R10 R0 R2
     2218 JUMPIFEQKN                       R10 K95 [123] ; [+25]
     2220 GETIMPORT                        R10 K113 [utf8.char]
     2222 GETTABLE                         R12 R0 R2
     2223 ORK                              R11 R12 K8 [0]
     2224 CALL                             R10 1 1
     2225 GETUPVAL                         R12 7
     2226 GETTABLE                         R11 R12 R10
     2227 JUMPIF                           R11 ; [+2]
     2228 LOADK                            R11 K114 ["unknown or malformed script name"]
     2229 RETURN                           R11 1
     2230 NEWTABLE                         R13 0 3
     2232 LOADK                            R14 K115 ["category"]
     2233 LOADB                            R15 0
     2234 MOVE                             R16 R10
     2235 SETLIST                          R13 R14 3 [1]
     2237 FASTCALL2                        TABLE_INSERT R5 R13 ; [+4]
     2239 MOVE                             R12 R5
     2240 GETIMPORT                        R11 K69 [table.insert]
     2242 CALL                             R11 2 0
     2243 JUMP                             ; [+884]
     2244 JUMPIFEQKN                       R9 K58 [80] ; [+2]
     2246 LOADB                            R10 0 +1
     2247 LOADB                            R10 1
     2248 ADDK                             R2 R2 K5 [1]
     2249 GETTABLE                         R11 R0 R2
     2250 JUMPIFNOTEQKN                    R11 K82 [94] ; [+3]
     2252 ADDK                             R2 R2 K5 [1]
     2253 NOT                              R10 R10
     2254 MOVE                             R11 R2
     2255 GETTABLE                         R12 R0 R2
     2256 JUMPIFNOT                        R12 ; [+29]
     2257 GETTABLE                         R12 R0 R2
     2258 LOADN                            R13 48
     2259 JUMPIFNOTLE                      R13 R12 ; [+5]
     2261 GETTABLE                         R12 R0 R2
     2262 LOADN                            R13 57
     2263 JUMPIFLE                         R12 R13 ; [+20]
     2265 GETTABLE                         R12 R0 R2
     2266 LOADN                            R13 65
     2267 JUMPIFNOTLE                      R13 R12 ; [+5]
     2269 GETTABLE                         R12 R0 R2
     2270 LOADN                            R13 90
     2271 JUMPIFLE                         R12 R13 ; [+12]
     2273 GETTABLE                         R12 R0 R2
     2274 LOADN                            R13 97
     2275 JUMPIFNOTLE                      R13 R12 ; [+5]
     2277 GETTABLE                         R12 R0 R2
     2278 LOADN                            R13 122
     2279 JUMPIFLE                         R12 R13 ; [+4]
     2281 GETTABLE                         R12 R0 R2
     2282 JUMPIFNOTEQKN                    R12 K13 [95] ; [+3]
     2284 ADDK                             R2 R2 K5 [1]
     2285 JUMPBACK                         ; [-31]
     2286 GETTABLE                         R12 R0 R2
     2287 JUMPIFEQKN                       R12 K96 [125] ; [+3]
     2289 LOADK                            R12 K114 ["unknown or malformed script name"]
     2290 RETURN                           R12 1
     2291 GETTABLEKS                       R13 R0 K17 ["s"]
     2293 MOVE                             R14 R2
     2294 GETIMPORT                        R15 K20 [utf8.offset]
     2296 MOVE                             R16 R13
     2297 MOVE                             R17 R14
     2298 CALL                             R15 2 1
     2299 MOVE                             R14 R15
     2300 GETIMPORT                        R17 K20 [utf8.offset]
     2302 MOVE                             R18 R13
     2303 MOVE                             R19 R11
     2304 CALL                             R17 2 1
     2305 MOVE                             R18 R14
     2306 JUMPIFNOT                        R18 ; [+1]
     2307 SUBK                             R18 R14 K5 [1]
     2308 FASTCALL3                        STRING_SUB R13 R17 R18
     2310 MOVE                             R16 R13
     2311 GETIMPORT                        R15 K23 [string.sub]
     2313 CALL                             R15 3 1
     2314 MOVE                             R12 R15
     2315 GETUPVAL                         R14 8
     2316 GETTABLE                         R13 R14 R12
     2317 JUMPIFNOT                        R13 ; [+14]
     2318 NEWTABLE                         R16 0 3
     2320 LOADK                            R17 K116 ["charset"]
     2321 MOVE                             R18 R10
     2322 MOVE                             R19 R13
     2323 SETLIST                          R16 R17 3 [1]
     2325 FASTCALL2                        TABLE_INSERT R5 R16 ; [+4]
     2327 MOVE                             R15 R5
     2328 GETIMPORT                        R14 K69 [table.insert]
     2330 CALL                             R14 2 0
     2331 JUMP                             ; [+796]
     2332 GETUPVAL                         R15 7
     2333 GETTABLE                         R14 R15 R12
     2334 JUMPIF                           R14 ; [+2]
     2335 LOADK                            R14 K114 ["unknown or malformed script name"]
     2336 RETURN                           R14 1
     2337 NEWTABLE                         R16 0 3
     2339 LOADK                            R17 K115 ["category"]
     2340 MOVE                             R18 R10
     2341 MOVE                             R19 R12
     2342 SETLIST                          R16 R17 3 [1]
     2344 FASTCALL2                        TABLE_INSERT R5 R16 ; [+4]
     2346 MOVE                             R15 R5
     2347 GETIMPORT                        R14 K69 [table.insert]
     2349 CALL                             R14 2 0
     2350 JUMP                             ; [+777]
     2351 JUMPIFNOTEQKN                    R9 K125 [103] ; [+115]
     2353 ADDK                             R11 R2 K5 [1]
     2354 GETTABLE                         R10 R0 R11
     2355 JUMPIFEQKN                       R10 K95 [123] ; [+11]
     2357 ADDK                             R11 R2 K5 [1]
     2358 GETTABLE                         R10 R0 R11
     2359 LOADN                            R11 48
     2360 JUMPIFNOTLE                      R11 R10 ; [+106]
     2362 ADDK                             R11 R2 K5 [1]
     2363 GETTABLE                         R10 R0 R11
     2364 LOADN                            R11 57
     2365 JUMPIFNOTLE                      R10 R11 ; [+101]
     2367 LOADB                            R10 0
     2368 ADDK                             R2 R2 K5 [1]
     2369 GETTABLE                         R11 R0 R2
     2370 JUMPIFNOTEQKN                    R11 K95 [123] ; [+4]
     2372 ADDK                             R2 R2 K5 [1]
     2373 LOADB                            R10 1
     2374 JUMP                             ; [+10]
     2375 GETTABLE                         R11 R0 R2
     2376 LOADN                            R12 48
     2377 JUMPIFLT                         R11 R12 ; [+5]
     2379 GETTABLE                         R11 R0 R2
     2380 LOADN                            R12 57
     2381 JUMPIFNOTLT                      R12 R11 ; [+3]
     2383 LOADK                            R11 K126 ["malformed reference code"]
     2384 RETURN                           R11 1
     2385 MOVE                             R11 R2
     2386 GETTABLE                         R12 R0 R2
     2387 JUMPIFNOT                        R12 ; [+26]
     2388 GETTABLE                         R12 R0 R2
     2389 LOADN                            R13 48
     2390 JUMPIFNOTLE                      R13 R12 ; [+5]
     2392 GETTABLE                         R12 R0 R2
     2393 LOADN                            R13 57
     2394 JUMPIFLE                         R12 R13 ; [+17]
     2396 GETTABLE                         R12 R0 R2
     2397 LOADN                            R13 65
     2398 JUMPIFNOTLE                      R13 R12 ; [+5]
     2400 GETTABLE                         R12 R0 R2
     2401 LOADN                            R13 70
     2402 JUMPIFLE                         R12 R13 ; [+9]
     2404 GETTABLE                         R12 R0 R2
     2405 LOADN                            R13 97
     2406 JUMPIFNOTLE                      R13 R12 ; [+7]
     2408 GETTABLE                         R12 R0 R2
     2409 LOADN                            R13 102
     2410 JUMPIFNOTLE                      R12 R13 ; [+3]
     2412 ADDK                             R2 R2 K5 [1]
     2413 JUMPBACK                         ; [-28]
     2414 JUMPIFNOT                        R10 ; [+5]
     2415 GETTABLE                         R12 R0 R2
     2416 JUMPIFEQKN                       R12 K96 [125] ; [+3]
     2418 LOADK                            R12 K126 ["malformed reference code"]
     2419 RETURN                           R12 1
     2420 GETTABLEKS                       R14 R0 K17 ["s"]
     2422 JUMPIFNOT                        R10 ; [+2]
     2423 LOADN                            R16 0
     2424 JUMP                             ; [+1]
     2425 LOADN                            R16 1
     2426 ADD                              R15 R2 R16
     2427 GETIMPORT                        R16 K20 [utf8.offset]
     2429 MOVE                             R17 R14
     2430 MOVE                             R18 R15
     2431 CALL                             R16 2 1
     2432 MOVE                             R15 R16
     2433 GETIMPORT                        R18 K20 [utf8.offset]
     2435 MOVE                             R19 R14
     2436 MOVE                             R20 R11
     2437 CALL                             R18 2 1
     2438 MOVE                             R19 R15
     2439 JUMPIFNOT                        R19 ; [+1]
     2440 SUBK                             R19 R15 K5 [1]
     2441 FASTCALL3                        STRING_SUB R14 R18 R19
     2443 MOVE                             R17 R14
     2444 GETIMPORT                        R16 K23 [string.sub]
     2446 CALL                             R16 3 1
     2447 MOVE                             R13 R16
     2448 FASTCALL1                        TONUMBER R13 ; [+2]
     2449 GETIMPORT                        R12 K53 [tonumber]
     2451 CALL                             R12 1 1
     2452 NEWTABLE                         R15 0 2
     2454 LOADK                            R16 K60 ["backref"]
     2455 MOVE                             R17 R12
     2456 SETLIST                          R15 R16 2 [1]
     2458 FASTCALL2                        TABLE_INSERT R5 R15 ; [+4]
     2460 MOVE                             R14 R5
     2461 GETIMPORT                        R13 K69 [table.insert]
     2463 CALL                             R13 2 0
     2464 JUMPIF                           R10 ; [+663]
     2465 SUBK                             R2 R2 K5 [1]
     2466 JUMP                             ; [+661]
     2467 JUMPIFNOTEQKN                    R9 K117 [111] ; [+72]
     2469 ADDK                             R2 R2 K5 [1]
     2470 ADDK                             R11 R2 K5 [1]
     2471 GETTABLE                         R10 R0 R11
     2472 JUMPIFEQKN                       R10 K95 [123] ; [+3]
     2474 LOADK                            R10 K118 ["malformed octal code"]
     2475 RETURN                           R10 1
     2476 ADDK                             R2 R2 K5 [1]
     2477 MOVE                             R10 R2
     2478 GETTABLE                         R11 R0 R2
     2479 JUMPIFNOT                        R11 ; [+10]
     2480 GETTABLE                         R11 R0 R2
     2481 LOADN                            R12 48
     2482 JUMPIFNOTLE                      R12 R11 ; [+7]
     2484 GETTABLE                         R11 R0 R2
     2485 LOADN                            R12 55
     2486 JUMPIFNOTLE                      R11 R12 ; [+3]
     2488 ADDK                             R2 R2 K5 [1]
     2489 JUMPBACK                         ; [-12]
     2490 GETTABLE                         R11 R0 R2
     2491 JUMPIFNOTEQKN                    R11 K96 [125] ; [+3]
     2493 JUMPIFNOTEQ                      R2 R10 ; [+3]
     2495 LOADK                            R11 K118 ["malformed octal code"]
     2496 RETURN                           R11 1
     2497 GETTABLEKS                       R13 R0 K17 ["s"]
     2499 MOVE                             R14 R2
     2500 GETIMPORT                        R15 K20 [utf8.offset]
     2502 MOVE                             R16 R13
     2503 MOVE                             R17 R14
     2504 CALL                             R15 2 1
     2505 MOVE                             R14 R15
     2506 GETIMPORT                        R17 K20 [utf8.offset]
     2508 MOVE                             R18 R13
     2509 MOVE                             R19 R10
     2510 CALL                             R17 2 1
     2511 MOVE                             R18 R14
     2512 JUMPIFNOT                        R18 ; [+1]
     2513 SUBK                             R18 R14 K5 [1]
     2514 FASTCALL3                        STRING_SUB R13 R17 R18
     2516 MOVE                             R16 R13
     2517 GETIMPORT                        R15 K23 [string.sub]
     2519 CALL                             R15 3 1
     2520 MOVE                             R12 R15
     2521 FASTCALL2K                       TONUMBER R12 K119 ; [+4]
     2523 LOADK                            R13 K119 [8]
     2524 GETIMPORT                        R11 K53 [tonumber]
     2526 CALL                             R11 2 1
     2527 LOADK                            R12 K120 [65535]
     2528 JUMPIFNOTLT                      R12 R11 ; [+3]
     2530 LOADK                            R12 K98 ["character offset too large"]
     2531 RETURN                           R12 1
     2532 FASTCALL2                        TABLE_INSERT R5 R11 ; [+5]
     2534 MOVE                             R13 R5
     2535 MOVE                             R14 R11
     2536 GETIMPORT                        R12 K69 [table.insert]
     2538 CALL                             R12 2 0
     2539 JUMP                             ; [+588]
     2540 JUMPIFNOTEQKN                    R9 K89 [120] ; [+206]
     2542 LOADNIL                          R10
     2543 LOADNIL                          R11
     2544 ADDK                             R2 R2 K5 [1]
     2545 GETTABLE                         R12 R0 R2
     2546 JUMPIFNOTEQKN                    R12 K95 [123] ; [+81]
     2548 ADDK                             R2 R2 K5 [1]
     2549 MOVE                             R12 R2
     2550 GETTABLE                         R13 R0 R2
     2551 JUMPIFNOT                        R13 ; [+26]
     2552 GETTABLE                         R13 R0 R2
     2553 LOADN                            R14 48
     2554 JUMPIFNOTLE                      R14 R13 ; [+5]
     2556 GETTABLE                         R13 R0 R2
     2557 LOADN                            R14 57
     2558 JUMPIFLE                         R13 R14 ; [+17]
     2560 GETTABLE                         R13 R0 R2
     2561 LOADN                            R14 65
     2562 JUMPIFNOTLE                      R14 R13 ; [+5]
     2564 GETTABLE                         R13 R0 R2
     2565 LOADN                            R14 70
     2566 JUMPIFLE                         R13 R14 ; [+9]
     2568 GETTABLE                         R13 R0 R2
     2569 LOADN                            R14 97
     2570 JUMPIFNOTLE                      R14 R13 ; [+7]
     2572 GETTABLE                         R13 R0 R2
     2573 LOADN                            R14 102
     2574 JUMPIFNOTLE                      R13 R14 ; [+3]
     2576 ADDK                             R2 R2 K5 [1]
     2577 JUMPBACK                         ; [-28]
     2578 GETTABLE                         R13 R0 R2
     2579 JUMPIFNOTEQKN                    R13 K96 [125] ; [+3]
     2581 JUMPIFNOTEQ                      R2 R12 ; [+3]
     2583 LOADK                            R13 K127 ["malformed hexadecimal code"]
     2584 RETURN                           R13 1
     2585 SUB                              R13 R2 R12
     2586 LOADN                            R14 4
     2587 JUMPIFNOTLT                      R14 R13 ; [+3]
     2589 LOADK                            R13 K98 ["character offset too large"]
     2590 RETURN                           R13 1
     2591 GETTABLEKS                       R17 R0 K17 ["s"]
     2593 MOVE                             R18 R2
     2594 GETIMPORT                        R19 K20 [utf8.offset]
     2596 MOVE                             R20 R17
     2597 MOVE                             R21 R18
     2598 CALL                             R19 2 1
     2599 MOVE                             R18 R19
     2600 GETIMPORT                        R21 K20 [utf8.offset]
     2602 MOVE                             R22 R17
     2603 MOVE                             R23 R12
     2604 CALL                             R21 2 1
     2605 MOVE                             R22 R18
     2606 JUMPIFNOT                        R22 ; [+1]
     2607 SUBK                             R22 R18 K5 [1]
     2608 FASTCALL3                        STRING_SUB R17 R21 R22
     2610 MOVE                             R20 R17
     2611 GETIMPORT                        R19 K23 [string.sub]
     2613 CALL                             R19 3 1
     2614 MOVE                             R16 R19
     2615 FASTCALL2K                       TONUMBER R16 K99 ; [+4]
     2617 LOADK                            R17 K99 [16]
     2618 GETIMPORT                        R15 K53 [tonumber]
     2620 CALL                             R15 2 1
     2621 FASTCALL2                        TABLE_INSERT R5 R15 ; [+4]
     2623 MOVE                             R14 R5
     2624 GETIMPORT                        R13 K69 [table.insert]
     2626 CALL                             R13 2 0
     2627 JUMP                             ; [+500]
     2628 GETTABLE                         R12 R0 R2
     2629 JUMPIFNOT                        R12 ; [+100]
     2630 GETTABLE                         R12 R0 R2
     2631 LOADN                            R13 48
     2632 JUMPIFNOTLE                      R13 R12 ; [+5]
     2634 GETTABLE                         R12 R0 R2
     2635 LOADN                            R13 57
     2636 JUMPIFLE                         R12 R13 ; [+17]
     2638 GETTABLE                         R12 R0 R2
     2639 LOADN                            R13 65
     2640 JUMPIFNOTLE                      R13 R12 ; [+5]
     2642 GETTABLE                         R12 R0 R2
     2643 LOADN                            R13 70
     2644 JUMPIFLE                         R12 R13 ; [+9]
     2646 GETTABLE                         R12 R0 R2
     2647 LOADN                            R13 97
     2648 JUMPIFNOTLE                      R13 R12 ; [+81]
     2650 GETTABLE                         R12 R0 R2
     2651 LOADN                            R13 102
     2652 JUMPIFNOTLE                      R12 R13 ; [+77]
     2654 GETTABLE                         R12 R0 R2
     2655 GETTABLE                         R14 R0 R2
     2656 LOADN                            R15 65
     2657 JUMPIFNOTLE                      R15 R14 ; [+7]
     2659 GETTABLE                         R14 R0 R2
     2660 LOADN                            R15 90
     2661 JUMPIFNOTLE                      R14 R15 ; [+3]
     2663 LOADN                            R13 55
     2664 JUMP                             ; [+11]
     2665 GETTABLE                         R14 R0 R2
     2666 LOADN                            R15 97
     2667 JUMPIFNOTLE                      R15 R14 ; [+7]
     2669 GETTABLE                         R14 R0 R2
     2670 LOADN                            R15 122
     2671 JUMPIFNOTLE                      R14 R15 ; [+3]
     2673 LOADN                            R13 87
     2674 JUMP                             ; [+1]
     2675 LOADN                            R13 48
     2676 SUB                              R10 R12 R13
     2677 ADDK                             R2 R2 K5 [1]
     2678 GETTABLE                         R12 R0 R2
     2679 JUMPIFNOT                        R12 ; [+48]
     2680 GETTABLE                         R12 R0 R2
     2681 LOADN                            R13 48
     2682 JUMPIFNOTLE                      R13 R12 ; [+5]
     2684 GETTABLE                         R12 R0 R2
     2685 LOADN                            R13 57
     2686 JUMPIFLE                         R12 R13 ; [+17]
     2688 GETTABLE                         R12 R0 R2
     2689 LOADN                            R13 65
     2690 JUMPIFNOTLE                      R13 R12 ; [+5]
     2692 GETTABLE                         R12 R0 R2
     2693 LOADN                            R13 70
     2694 JUMPIFLE                         R12 R13 ; [+9]
     2696 GETTABLE                         R12 R0 R2
     2697 LOADN                            R13 97
     2698 JUMPIFNOTLE                      R13 R12 ; [+29]
     2700 GETTABLE                         R12 R0 R2
     2701 LOADN                            R13 102
     2702 JUMPIFNOTLE                      R12 R13 ; [+25]
     2704 GETTABLE                         R12 R0 R2
     2705 GETTABLE                         R14 R0 R2
     2706 LOADN                            R15 65
     2707 JUMPIFNOTLE                      R15 R14 ; [+7]
     2709 GETTABLE                         R14 R0 R2
     2710 LOADN                            R15 90
     2711 JUMPIFNOTLE                      R14 R15 ; [+3]
     2713 LOADN                            R13 55
     2714 JUMP                             ; [+11]
     2715 GETTABLE                         R14 R0 R2
     2716 LOADN                            R15 97
     2717 JUMPIFNOTLE                      R15 R14 ; [+7]
     2719 GETTABLE                         R14 R0 R2
     2720 LOADN                            R15 122
     2721 JUMPIFNOTLE                      R14 R15 ; [+3]
     2723 LOADN                            R13 87
     2724 JUMP                             ; [+1]
     2725 LOADN                            R13 48
     2726 SUB                              R11 R12 R13
     2727 JUMP                             ; [+3]
     2728 SUBK                             R2 R2 K5 [1]
     2729 JUMP                             ; [+1]
     2730 SUBK                             R2 R2 K5 [1]
     2731 JUMPIFNOT                        R10 ; [+7]
     2732 JUMPIFNOT                        R11 ; [+4]
     2733 LOADN                            R16 16
     2734 MUL                              R15 R16 R10
     2735 ADD                              R14 R15 R11
     2736 JUMPIF                           R14 ; [+3]
     2737 MOVE                             R14 R10
     2738 JUMPIF                           R14 ; [+1]
     2739 LOADN                            R14 0
     2740 FASTCALL2                        TABLE_INSERT R5 R14 ; [+4]
     2742 MOVE                             R13 R5
     2743 GETIMPORT                        R12 K69 [table.insert]
     2745 CALL                             R12 2 0
     2746 JUMP                             ; [+381]
     2747 GETUPVAL                         R11 9
     2748 GETTABLE                         R10 R11 R9
     2749 JUMPIF                           R10 ; [+2]
     2750 GETUPVAL                         R11 5
     2751 GETTABLE                         R10 R11 R9
     2752 OR                               R13 R10 R9
     2753 FASTCALL2                        TABLE_INSERT R5 R13 ; [+4]
     2755 MOVE                             R12 R5
     2756 GETIMPORT                        R11 K69 [table.insert]
     2758 CALL                             R11 2 0
     2759 JUMP                             ; [+368]
     2760 JUMPIFEQKN                       R8 K11 [42] ; [+7]
     2762 JUMPIFEQKN                       R8 K106 [43] ; [+5]
     2764 JUMPIFEQKN                       R8 K44 [63] ; [+3]
     2766 JUMPIFNOTEQKN                    R8 K95 [123] ; [+255]
     2768 LOADNIL                          R9
     2769 LOADNIL                          R10
     2770 JUMPIFNOTEQKN                    R8 K95 [123] ; [+146]
     2772 ADDK                             R11 R2 K5 [1]
     2773 LOADNIL                          R12
     2774 ADDK                             R14 R2 K5 [1]
     2775 GETTABLE                         R13 R0 R14
     2776 JUMPIFNOT                        R13 ; [+24]
     2777 ADDK                             R14 R2 K5 [1]
     2778 GETTABLE                         R13 R0 R14
     2779 LOADN                            R14 48
     2780 JUMPIFNOTLE                      R14 R13 ; [+6]
     2782 ADDK                             R14 R2 K5 [1]
     2783 GETTABLE                         R13 R0 R14
     2784 LOADN                            R14 57
     2785 JUMPIFLE                         R13 R14 ; [+9]
     2787 ADDK                             R14 R2 K5 [1]
     2788 GETTABLE                         R13 R0 R14
     2789 JUMPIFNOTEQKN                    R13 K128 [44] ; [+11]
     2791 JUMPIF                           R12 ; [+9]
     2792 ADDK                             R13 R2 K5 [1]
     2793 JUMPIFEQ                         R13 R11 ; [+7]
     2795 ADDK                             R2 R2 K5 [1]
     2796 GETTABLE                         R13 R0 R2
     2797 JUMPIFNOTEQKN                    R13 K128 [44] ; [+2]
     2799 MOVE                             R12 R2
     2800 JUMPBACK                         ; [-27]
     2801 ADDK                             R14 R2 K5 [1]
     2802 GETTABLE                         R13 R0 R14
     2803 JUMPIFNOTEQKN                    R13 K96 [125] ; [+103]
     2805 ADDK                             R2 R2 K5 [1]
     2806 JUMPIF                           R12 ; [+31]
     2807 GETTABLEKS                       R15 R0 K17 ["s"]
     2809 MOVE                             R16 R2
     2810 GETIMPORT                        R17 K20 [utf8.offset]
     2812 MOVE                             R18 R15
     2813 MOVE                             R19 R16
     2814 CALL                             R17 2 1
     2815 MOVE                             R16 R17
     2816 GETIMPORT                        R19 K20 [utf8.offset]
     2818 MOVE                             R20 R15
     2819 MOVE                             R21 R11
     2820 CALL                             R19 2 1
     2821 MOVE                             R20 R16
     2822 JUMPIFNOT                        R20 ; [+1]
     2823 SUBK                             R20 R16 K5 [1]
     2824 FASTCALL3                        STRING_SUB R15 R19 R20
     2826 MOVE                             R18 R15
     2827 GETIMPORT                        R17 K23 [string.sub]
     2829 CALL                             R17 3 1
     2830 MOVE                             R14 R17
     2831 FASTCALL1                        TONUMBER R14 ; [+2]
     2832 GETIMPORT                        R13 K53 [tonumber]
     2834 CALL                             R13 1 1
     2835 MOVE                             R9 R13
     2836 MOVE                             R10 R9
     2837 JUMP                             ; [+91]
     2838 GETTABLEKS                       R15 R0 K17 ["s"]
     2840 MOVE                             R16 R12
     2841 GETIMPORT                        R17 K20 [utf8.offset]
     2843 MOVE                             R18 R15
     2844 MOVE                             R19 R16
     2845 CALL                             R17 2 1
     2846 MOVE                             R16 R17
     2847 GETIMPORT                        R19 K20 [utf8.offset]
     2849 MOVE                             R20 R15
     2850 MOVE                             R21 R11
     2851 CALL                             R19 2 1
     2852 MOVE                             R20 R16
     2853 JUMPIFNOT                        R20 ; [+1]
     2854 SUBK                             R20 R16 K5 [1]
     2855 FASTCALL3                        STRING_SUB R15 R19 R20
     2857 MOVE                             R18 R15
     2858 GETIMPORT                        R17 K23 [string.sub]
     2860 CALL                             R17 3 1
     2861 MOVE                             R14 R17
     2862 FASTCALL1                        TONUMBER R14 ; [+2]
     2863 GETIMPORT                        R13 K53 [tonumber]
     2865 CALL                             R13 1 1
     2866 MOVE                             R9 R13
     2867 ADDK                             R14 R12 K5 [1]
     2868 JUMPIFNOTEQ                      R14 R2 ; [+3]
     2870 LOADK                            R13 K129 [∞]
     2871 JUMP                             ; [+29]
     2872 GETTABLEKS                       R15 R0 K17 ["s"]
     2874 ADDK                             R16 R12 K5 [1]
     2875 MOVE                             R17 R2
     2876 GETIMPORT                        R18 K20 [utf8.offset]
     2878 MOVE                             R19 R15
     2879 MOVE                             R20 R17
     2880 CALL                             R18 2 1
     2881 MOVE                             R17 R18
     2882 GETIMPORT                        R20 K20 [utf8.offset]
     2884 MOVE                             R21 R15
     2885 MOVE                             R22 R16
     2886 CALL                             R20 2 1
     2887 MOVE                             R21 R17
     2888 JUMPIFNOT                        R21 ; [+1]
     2889 SUBK                             R21 R17 K5 [1]
     2890 FASTCALL3                        STRING_SUB R15 R20 R21
     2892 MOVE                             R19 R15
     2893 GETIMPORT                        R18 K23 [string.sub]
     2895 CALL                             R18 3 1
     2896 MOVE                             R14 R18
     2897 FASTCALL1                        TONUMBER R14 ; [+2]
     2898 GETIMPORT                        R13 K53 [tonumber]
     2900 CALL                             R13 1 1
     2901 MOVE                             R10 R13
     2902 JUMPIFNOTLT                      R10 R9 ; [+26]
     2904 LOADK                            R13 K130 ["numbers out of order in {} quantifier"]
     2905 RETURN                           R13 1
     2906 JUMP                             ; [+22]
     2907 GETIMPORT                        R13 K103 [table.move]
     2909 MOVE                             R14 R0
     2910 SUBK                             R15 R11 K5 [1]
     2911 MOVE                             R16 R2
     2912 LENGTH                           R18 R5
     2913 ADDK                             R17 R18 K5 [1]
     2914 MOVE                             R18 R5
     2915 CALL                             R13 5 0
     2916 JUMP                             ; [+12]
     2917 JUMPIFNOTEQKN                    R8 K106 [43] ; [+3]
     2919 LOADN                            R11 1
     2920 JUMP                             ; [+1]
     2921 LOADN                            R11 0
     2922 MOVE                             R9 R11
     2923 JUMPIFNOTEQKN                    R8 K44 [63] ; [+3]
     2925 LOADN                            R11 1
     2926 JUMP                             ; [+1]
     2927 LOADK                            R11 K129 [∞]
     2928 MOVE                             R10 R11
     2929 JUMPIFNOT                        R9 ; [+198]
     2930 GETTABLEKS                       R12 R1 K131 ["ungreedy"]
     2932 JUMPIFNOT                        R12 ; [+2]
     2933 LOADK                            R11 K132 ["lazy"]
     2934 JUMP                             ; [+1]
     2935 LOADK                            R11 K133 ["greedy"]
     2936 ADDK                             R13 R2 K5 [1]
     2937 GETTABLE                         R12 R0 R13
     2938 JUMPIFEQKN                       R12 K106 [43] ; [+5]
     2940 ADDK                             R13 R2 K5 [1]
     2941 GETTABLE                         R12 R0 R13
     2942 JUMPIFNOTEQKN                    R12 K44 [63] ; [+14]
     2944 ADDK                             R2 R2 K5 [1]
     2945 GETTABLE                         R13 R0 R2
     2946 JUMPIFNOTEQKN                    R13 K106 [43] ; [+3]
     2948 LOADK                            R12 K134 ["possessive"]
     2949 JUMP                             ; [+6]
     2950 GETTABLEKS                       R13 R1 K131 ["ungreedy"]
     2952 JUMPIFNOT                        R13 ; [+2]
     2953 LOADK                            R12 K133 ["greedy"]
     2954 JUMP                             ; [+1]
     2955 LOADK                            R12 K132 ["lazy"]
     2956 MOVE                             R11 R12
     2957 LENGTH                           R12 R5
     2958 GETTABLE                         R13 R5 R12
     2959 JUMPIFNOT                        R13 ; [+27]
     2960 FASTCALL1                        TYPE R13 ; [+3]
     2961 MOVE                             R15 R13
     2962 GETIMPORT                        R14 K71 [type]
     2964 CALL                             R14 1 1
     2965 JUMPIFNOTEQKS                    R14 K46 ["table"] ; [+11]
     2967 GETTABLEN                        R14 R13 1
     2968 JUMPIFEQKS                       R14 K77 ["quantifier"] ; [+18]
     2970 GETTABLEN                        R14 R13 1
     2971 JUMPIFEQKN                       R14 K10 [40] ; [+15]
     2973 GETUPVAL                         R15 9
     2974 GETTABLEN                        R16 R13 1
     2975 GETTABLE                         R14 R15 R16
     2976 JUMPIF                           R14 ; [+10]
     2977 GETUPVAL                         R14 3
     2978 JUMPIFEQ                         R13 R14 ; [+8]
     2980 FASTCALL1                        TYPE R13 ; [+3]
     2981 MOVE                             R15 R13
     2982 GETIMPORT                        R14 K71 [type]
     2984 CALL                             R14 1 1
     2985 JUMPIFNOTEQKS                    R14 K21 ["string"] ; [+3]
     2987 LOADK                            R14 K16 ["quantifier doesn't follow a repeatable pattern"]
     2988 RETURN                           R14 1
     2989 JUMPIFNOTEQKN                    R10 K8 [0] ; [+6]
     2991 GETIMPORT                        R14 K136 [table.remove]
     2993 MOVE                             R15 R5
     2994 CALL                             R14 1 0
     2995 JUMP                             ; [+132]
     2996 JUMPIFNOTEQKN                    R9 K5 [1] ; [+3]
     2998 JUMPIFEQKN                       R10 K5 [1] ; [+129]
     3000 FASTCALL1                        TYPE R13 ; [+3]
     3001 MOVE                             R15 R13
     3002 GETIMPORT                        R14 K71 [type]
     3004 CALL                             R14 1 1
     3005 JUMPIFNOTEQKS                    R14 K46 ["table"] ; [+5]
     3007 GETTABLEN                        R14 R13 1
     3008 JUMPIFNOTEQKN                    R14 K15 [41] ; [+2]
     3010 GETTABLEN                        R12 R13 3
     3011 NEWTABLE                         R14 0 5
     3013 LOADK                            R15 K77 ["quantifier"]
     3014 MOVE                             R16 R9
     3015 MOVE                             R17 R10
     3016 MOVE                             R18 R11
     3017 GETTABLE                         R19 R5 R12
     3018 SETLIST                          R14 R15 5 [1]
     3020 SETTABLE                         R14 R5 R12
     3021 JUMP                             ; [+106]
     3022 JUMPIFNOTEQKN                    R8 K57 [124] ; [+39]
     3024 GETUPVAL                         R11 3
     3025 FASTCALL2                        TABLE_INSERT R5 R11 ; [+4]
     3027 MOVE                             R10 R5
     3028 GETIMPORT                        R9 K69 [table.insert]
     3030 CALL                             R9 2 0
     3031 LENGTH                           R9 R5
     3032 SUBK                             R9 R9 K5 [1]
     3033 GETTABLE                         R10 R5 R9
     3034 GETTABLE                         R13 R5 R9
     3035 FASTCALL1                        TYPE R13 ; [+2]
     3036 GETIMPORT                        R12 K71 [type]
     3038 CALL                             R12 1 1
     3039 JUMPIFEQKS                       R12 K46 ["table"] ; [+2]
     3041 LOADB                            R11 0 +1
     3042 LOADB                            R11 1
     3043 JUMPIFNOT                        R11 ; [+6]
     3044 GETTABLEN                        R12 R10 1
     3045 JUMPIFNOTEQKN                    R12 K15 [41] ; [+4]
     3047 GETTABLE                         R12 R5 R9
     3048 GETTABLEN                        R9 R12 3
     3049 JUMP                             ; [+9]
     3050 JUMPIFNOT                        R11 ; [+8]
     3051 GETTABLEN                        R12 R10 1
     3052 JUMPIFNOTEQKN                    R12 K10 [40] ; [+6]
     3054 GETTABLEN                        R12 R10 4
     3055 JUMPIFNOTEQKN                    R12 K57 [124] ; [+72]
     3057 GETTABLEN                        R4 R10 5
     3058 JUMP                             ; [+69]
     3059 JUMPIFNOT                        R10 ; [+68]
     3060 JUMPBACK                         ; [-29]
     3061 JUMP                             ; [+66]
     3062 JUMPIFEQKN                       R8 K137 [36] ; [+3]
     3064 JUMPIFNOTEQKN                    R8 K82 [94] ; [+13]
     3066 JUMPIFNOTEQKN                    R8 K82 [94] ; [+3]
     3068 GETUPVAL                         R11 10
     3069 JUMPIF                           R11 ; [+1]
     3070 GETUPVAL                         R11 11
     3071 FASTCALL2                        TABLE_INSERT R5 R11 ; [+4]
     3073 MOVE                             R10 R5
     3074 GETIMPORT                        R9 K69 [table.insert]
     3076 CALL                             R9 2 0
     3077 JUMP                             ; [+50]
     3078 GETTABLEKS                       R9 R1 K121 ["ignoreCase"]
     3080 JUMPIFNOT                        R9 ; [+14]
     3081 LOADN                            R9 97
     3082 JUMPIFNOTLE                      R9 R8 ; [+12]
     3084 LOADN                            R9 122
     3085 JUMPIFNOTLE                      R8 R9 ; [+9]
     3087 SUBK                             R11 R8 K122 [32]
     3088 FASTCALL2                        TABLE_INSERT R5 R11 ; [+4]
     3090 MOVE                             R10 R5
     3091 GETIMPORT                        R9 K69 [table.insert]
     3093 CALL                             R9 2 0
     3094 JUMP                             ; [+33]
     3095 GETTABLEKS                       R9 R1 K138 ["extended"]
     3097 JUMPIFNOT                        R9 ; [+23]
     3098 LOADN                            R9 9
     3099 JUMPIFNOTLE                      R9 R8 ; [+4]
     3101 LOADN                            R9 13
     3102 JUMPIFLE                         R8 R9 ; [+5]
     3104 JUMPIFEQKN                       R8 K122 [32] ; [+3]
     3106 JUMPIFNOTEQKN                    R8 K45 [35] ; [+14]
     3108 JUMPIFNOTEQKN                    R8 K45 [35] ; [+19]
     3110 ADDK                             R2 R2 K5 [1]
     3111 GETTABLE                         R9 R0 R2
     3112 JUMPIFNOT                        R9 ; [+15]
     3113 GETTABLE                         R9 R0 R2
     3114 JUMPIFEQKN                       R9 K139 [10] ; [+13]
     3116 GETTABLE                         R9 R0 R2
     3117 JUMPIFEQKN                       R9 K140 [13] ; [+10]
     3119 JUMPBACK                         ; [-10]
     3120 JUMP                             ; [+7]
     3121 FASTCALL2                        TABLE_INSERT R5 R8 ; [+5]
     3123 MOVE                             R10 R5
     3124 MOVE                             R11 R8
     3125 GETIMPORT                        R9 K69 [table.insert]
     3127 CALL                             R9 2 0
     3128 ADDK                             R2 R2 K5 [1]
     3129 JUMPBACK                         ; [-3112]
     3130 LOADN                            R8 0
     3131 GETIMPORT                        R9 K142 [ipairs]
     3133 MOVE                             R10 R5
     3134 CALL                             R9 1 3
     3135 FORGPREP_INEXT                   R9
     3136 FASTCALL1                        TYPE R13 ; [+3]
     3137 MOVE                             R15 R13
     3138 GETIMPORT                        R14 K71 [type]
     3140 CALL                             R14 1 1
     3141 JUMPIFNOTEQKS                    R14 K46 ["table"] ; [+37]
     3143 GETTABLEN                        R14 R13 1
     3144 JUMPIFEQKN                       R14 K10 [40] ; [+15]
     3146 GETTABLEN                        R14 R13 1
     3147 JUMPIFNOTEQKS                    R14 K77 ["quantifier"] ; [+31]
     3149 GETTABLEN                        R15 R13 5
     3150 FASTCALL1                        TYPE R15 ; [+2]
     3151 GETIMPORT                        R14 K71 [type]
     3153 CALL                             R14 1 1
     3154 JUMPIFNOTEQKS                    R14 K46 ["table"] ; [+24]
     3156 GETTABLEN                        R15 R13 5
     3157 GETTABLEN                        R14 R15 1
     3158 JUMPIFNOTEQKN                    R14 K10 [40] ; [+20]
     3160 GETTABLEN                        R14 R13 1
     3161 JUMPIFNOTEQKS                    R14 K77 ["quantifier"] ; [+2]
     3163 GETTABLEN                        R13 R13 5
     3164 GETTABLEN                        R14 R13 3
     3165 JUMPIF                           R14 ; [+2]
     3166 LOADK                            R14 K48 ["unterminated parenthetical"]
     3167 RETURN                           R14 1
     3168 GETTABLEN                        R14 R13 2
     3169 JUMPIFNOT                        R14 ; [+77]
     3170 GETTABLEN                        R16 R13 2
     3171 FASTCALL2                        MATH_MAX R8 R16 ; [+4]
     3173 MOVE                             R15 R8
     3174 GETIMPORT                        R14 K75 [math.max]
     3176 CALL                             R14 2 1
     3177 MOVE                             R8 R14
     3178 JUMP                             ; [+68]
     3179 FASTCALL1                        TYPE R13 ; [+3]
     3180 MOVE                             R15 R13
     3181 GETIMPORT                        R14 K71 [type]
     3183 CALL                             R14 1 1
     3184 JUMPIFNOTEQKS                    R14 K46 ["table"] ; [+62]
     3186 GETTABLEN                        R14 R13 1
     3187 JUMPIFEQKS                       R14 K60 ["backref"] ; [+4]
     3189 GETTABLEN                        R14 R13 1
     3190 JUMPIFNOTEQKS                    R14 K50 ["recurmatch"] ; [+56]
     3192 GETTABLEN                        R15 R13 2
     3193 GETTABLE                         R14 R6 R15
     3194 JUMPIF                           R14 ; [+12]
     3195 GETTABLEN                        R15 R13 2
     3196 FASTCALL1                        TYPE R15 ; [+2]
     3197 GETIMPORT                        R14 K71 [type]
     3199 CALL                             R14 1 1
     3200 JUMPIFNOTEQKS                    R14 K87 ["number"] ; [+4]
     3202 GETTABLEN                        R14 R13 2
     3203 JUMPIFNOTLT                      R4 R14 ; [+3]
     3205 LOADK                            R14 K143 ["reference to a non-existent or invalid subpattern"]
     3206 RETURN                           R14 1
     3207 GETTABLEN                        R14 R13 1
     3208 JUMPIFNOTEQKS                    R14 K50 ["recurmatch"] ; [+28]
     3210 GETTABLEN                        R14 R13 2
     3211 JUMPIFEQKN                       R14 K8 [0] ; [+25]
     3213 GETIMPORT                        R14 K142 [ipairs]
     3215 MOVE                             R15 R5
     3216 CALL                             R14 1 3
     3217 FORGPREP_INEXT                   R14
     3218 FASTCALL1                        TYPE R18 ; [+3]
     3219 MOVE                             R20 R18
     3220 GETIMPORT                        R19 K71 [type]
     3222 CALL                             R19 1 1
     3223 JUMPIFNOTEQKS                    R19 K46 ["table"] ; [+10]
     3225 GETTABLEN                        R19 R18 1
     3226 JUMPIFNOTEQKN                    R19 K10 [40] ; [+7]
     3228 GETTABLEN                        R19 R18 2
     3229 GETTABLEN                        R20 R13 2
     3230 JUMPIFNOTEQ                      R19 R20 ; [+3]
     3232 SETTABLEN                        R17 R13 3
     3233 JUMP                             ; [+13]
     3234 FORGLOOP                         R14 2 [inext] ; [-17]
     3236 JUMP                             ; [+10]
     3237 GETTABLEN                        R15 R13 2
     3238 FASTCALL1                        TYPE R15 ; [+2]
     3239 GETIMPORT                        R14 K71 [type]
     3241 CALL                             R14 1 1
     3242 JUMPIFNOTEQKS                    R14 K21 ["string"] ; [+4]
     3244 GETTABLEN                        R15 R13 2
     3245 GETTABLE                         R14 R6 R15
     3246 SETTABLEN                        R14 R13 2
     3247 FORGLOOP                         R9 2 [inext] ; [-112]
     3249 SETTABLEKS                       R8 R5 K144 ["group_n"]
     3251 RETURN                           R5 3

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
       98 DUPTABLE                         R11 K30 [{["name"] = "RegEx", ["flags"], ["flag_repr"], ["pattern_repr"], ["token"], ["group_id"], ["verb_flags"]}]
       99 SETTABLEKS                       R1 R11 K24 ["flags"]
      101 SETTABLEKS                       R2 R11 K25 ["flag_repr"]
      103 SETTABLEKS                       R3 R11 K26 ["pattern_repr"]
      105 SETTABLEKS                       R4 R11 K27 ["token"]
      107 SETTABLEKS                       R5 R11 K28 ["group_id"]
      109 SETTABLEKS                       R6 R11 K29 ["verb_flags"]
      111 SETTABLE                         R11 R10 R9
      112 FASTCALL1                        GETMETATABLE R9 ; [+3]
      113 MOVE                             R11 R9
      114 GETIMPORT                        R10 K32 [getmetatable]
      116 CALL                             R10 1 1
      117 GETUPVAL                         R13 5
      118 FASTCALL2                        SETMETATABLE R1 R13 ; [+4]
      120 MOVE                             R12 R1
      121 GETIMPORT                        R11 K34 [setmetatable]
      123 CALL                             R11 2 1
      124 SETTABLEKS                       R11 R10 K35 ["__index"]
      126 GETUPVAL                         R11 6
      127 SETTABLEKS                       R11 R10 K36 ["__tostring"]
      129 GETUPVAL                         R11 7
      130 SETTABLEKS                       R11 R10 K37 ["__metatable"]
      132 RETURN                           R9 1

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
       75 DUPTABLE                         R2 K26 [{["anchored"] = False, ["caseless"] = False, ["multiline"] = False, ["dotall"] = False, ["unicode"] = False, ["ungreedy"] = False, ["extended"] = False}]
       76 NEWTABLE                         R3 0 0
       78 GETIMPORT                        R4 K28 [string.gmatch]
       80 ORK                              R5 R1 K10 [""]
       81 GETIMPORT                        R6 K31 [utf8.charpattern]
       83 CALL                             R4 2 3
       84 FORGPREP                         R4
       85 GETUPVAL                         R11 0
       86 GETTABLE                         R10 R11 R7
       87 GETTABLE                         R9 R2 R10
       88 JUMPIFEQKB                       R9 FALSE ; [+8]
       90 GETIMPORT                        R9 K5 [error]
       92 LOADK                            R11 K32 ["invalid regular expression flag "]
       93 MOVE                             R12 R7
       94 CONCAT                           R10 R11 R12
       95 LOADN                            R11 3
       96 CALL                             R9 2 0
       97 GETUPVAL                         R10 0
       98 GETTABLE                         R9 R10 R7
       99 LOADB                            R10 1
      100 SETTABLE                         R10 R2 R9
      101 FASTCALL2                        TABLE_INSERT R3 R7 ; [+5]
      103 MOVE                             R10 R3
      104 MOVE                             R11 R7
      105 GETIMPORT                        R9 K35 [table.insert]
      107 CALL                             R9 2 0
      108 FORGLOOP                         R4 1 ; [-24]
      110 GETIMPORT                        R4 K37 [table.sort]
      112 MOVE                             R5 R3
      113 GETUPVAL                         R6 1
      114 CALL                             R4 2 0
      115 GETIMPORT                        R4 K39 [table.concat]
      117 MOVE                             R5 R3
      118 CALL                             R4 1 1
      119 MOVE                             R3 R4
      120 GETUPVAL                         R4 2
      121 GETUPVAL                         R5 3
      122 MOVE                             R6 R0
      123 CALL                             R5 1 1
      124 MOVE                             R6 R2
      125 MOVE                             R7 R3
      126 GETIMPORT                        R8 K13 [string.format]
      128 LOADK                            R9 K40 ["/%s/"]
      129 LOADK                            R12 K41 ["(\\*)/"]
      130 GETUPVAL                         R13 4
      131 NAMECALL                         R10 R0 K42 ["gsub"]
      133 CALL                             R10 3 -1
      134 CALL                             R8 -1 -1
      135 CALL                             R4 -1 1
      136 RETURN                           R4 1

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
      114 DUPTABLE                         R4 K37 [{["anchored"] = False, ["caseless"] = False, ["multiline"] = False, ["dotall"] = False, ["unicode"] = False, ["ungreedy"] = False, ["extended"] = False}]
      115 NEWTABLE                         R5 0 0
      117 GETTABLEKS                       R6 R1 K38 ["n"]
      119 JUMPIFNOTLT                      R3 R6 ; [+37]
      121 GETIMPORT                        R6 K27 [utf8.char]
      123 GETIMPORT                        R7 K40 [table.remove]
      125 MOVE                             R8 R1
      126 CALL                             R7 1 -1
      127 CALL                             R6 -1 1
      128 GETTABLEKS                       R7 R1 K38 ["n"]
      130 SUBK                             R7 R7 K23 [1]
      131 SETTABLEKS                       R7 R1 K38 ["n"]
      133 GETUPVAL                         R9 1
      134 GETTABLE                         R8 R9 R6
      135 GETTABLE                         R7 R4 R8
      136 JUMPIFEQKB                       R7 FALSE ; [+8]
      138 GETIMPORT                        R7 K5 [error]
      140 LOADK                            R9 K41 ["invalid regular expression flag "]
      141 MOVE                             R10 R6
      142 CONCAT                           R8 R9 R10
      143 LOADN                            R9 3
      144 CALL                             R7 2 0
      145 GETUPVAL                         R8 1
      146 GETTABLE                         R7 R8 R6
      147 LOADB                            R8 1
      148 SETTABLE                         R8 R4 R7
      149 FASTCALL2                        TABLE_INSERT R5 R6 ; [+5]
      151 MOVE                             R8 R5
      152 MOVE                             R9 R6
      153 GETIMPORT                        R7 K43 [table.insert]
      155 CALL                             R7 2 0
      156 JUMPBACK                         ; [-40]
      157 GETIMPORT                        R6 K45 [table.sort]
      159 MOVE                             R7 R5
      160 GETUPVAL                         R8 2
      161 CALL                             R6 2 0
      162 GETIMPORT                        R6 K47 [table.concat]
      164 MOVE                             R7 R5
      165 CALL                             R6 1 1
      166 MOVE                             R5 R6
      167 GETIMPORT                        R6 K40 [table.remove]
      169 MOVE                             R7 R1
      170 LOADN                            R8 1
      171 CALL                             R6 2 0
      172 GETIMPORT                        R6 K40 [table.remove]
      174 MOVE                             R7 R1
      175 CALL                             R6 1 0
      176 GETTABLEKS                       R6 R1 K38 ["n"]
      178 SUBK                             R6 R6 K28 [2]
      179 SETTABLEKS                       R6 R1 K38 ["n"]
      181 GETTABLEKS                       R7 R1 K48 ["s"]
      183 LOADN                            R8 2
      184 LOADN                            R10 1
      185 GETTABLEKS                       R11 R1 K38 ["n"]
      187 ADD                              R9 R10 R11
      188 FASTCALL                         STRING_SUB ; [+2]
      189 GETIMPORT                        R6 K50 [string.sub]
      191 CALL                             R6 3 1
      192 SETTABLEKS                       R6 R1 K48 ["s"]
      194 GETUPVAL                         R6 3
      195 MOVE                             R7 R1
      196 MOVE                             R8 R4
      197 MOVE                             R9 R5
      198 LOADN                            R12 1
      199 LOADN                            R14 2
      200 GETTABLEKS                       R15 R1 K38 ["n"]
      202 ADD                              R13 R14 R15
      203 FASTCALL3                        STRING_SUB R0 R12 R13
      205 MOVE                             R11 R0
      206 GETIMPORT                        R10 K50 [string.sub]
      208 CALL                             R10 3 1
      209 CALL                             R6 4 1
      210 RETURN                           R6 1

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
       18 GETUPVAL                         R1 0
       19 GETVARARGS                       R2 1
       20 GETTABLE                         R0 R1 R2
       21 GETTABLEKS                       R0 R0 K7 ["name"]
       23 RETURN                           R0 1

PROTO_35:
        0 GETIMPORT                        R0 K1 [error]
        2 LOADK                            R1 K2 ["Attempt to modify a readonly table"]
        3 LOADN                            R2 2
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K4 [{[1] = 256, ["unicodeData"] = False}]
        2 GETTABLEKS                       R1 R0 K2 ["unicodeData"]
        4 JUMPIFNOT                        R1 ; [+9]
        5 GETIMPORT                        R1 K6 [require]
        7 GETIMPORT                        R2 K8 [script]
        9 LOADK                            R4 K9 ["_unicodechar_category"]
       10 NAMECALL                         R2 R2 K10 ["WaitForChild"]
       12 CALL                             R2 2 -1
       13 CALL                             R1 -1 1
       14 GETTABLEKS                       R2 R0 K2 ["unicodeData"]
       16 JUMPIFNOT                        R2 ; [+9]
       17 GETIMPORT                        R2 K6 [require]
       19 GETIMPORT                        R3 K8 [script]
       21 LOADK                            R5 K11 ["_scripts"]
       22 NAMECALL                         R3 R3 K10 ["WaitForChild"]
       24 CALL                             R3 2 -1
       25 CALL                             R2 -1 1
       26 GETTABLEKS                       R3 R0 K2 ["unicodeData"]
       28 JUMPIFNOT                        R3 ; [+9]
       29 GETIMPORT                        R3 K6 [require]
       31 GETIMPORT                        R4 K8 [script]
       33 LOADK                            R6 K12 ["_xuc"]
       34 NAMECALL                         R4 R4 K10 ["WaitForChild"]
       36 CALL                             R4 2 -1
       37 CALL                             R3 -1 1
       38 NEWTABLE                         R5 0 0
       40 DUPTABLE                         R6 K15 [{["__mode"] = "k"}]
       41 FASTCALL2                        SETMETATABLE R5 R6 ; [+3]
       43 GETIMPORT                        R4 K17 [setmetatable]
       45 CALL                             R4 2 1
       46 NEWTABLE                         R5 0 0
       48 NEWTABLE                         R6 0 0
       50 NEWTABLE                         R7 0 0
       52 LOADNIL                          R8
       53 DUPCLOSURE                       R9 K18 [PROTO_0]
       54 DUPCLOSURE                       R10 K19 [PROTO_1]
       55 DUPCLOSURE                       R11 K20 [PROTO_2]
       56 DUPTABLE                         R12 K35 [{["a"] = "anchored", ["i"] = "caseless", ["m"] = "multiline", ["s"] = "dotall", ["u"] = "unicode", ["U"] = "ungreedy", ["x"] = "extended"}]
       57 DUPTABLE                         R13 K51 [{["alnum"] = True, ["alpha"] = True, ["ascii"] = True, ["blank"] = True, ["cntrl"] = True, ["digit"] = True, ["graph"] = True, ["lower"] = True, ["print"] = True, ["punct"] = True, ["space"] = True, ["upper"] = True, ["word"] = True, ["xdigit"] = True}]
       58 NEWTABLE                         R14 16 0
       60 NEWTABLE                         R15 0 3
       62 LOADK                            R16 K52 ["class"]
       63 LOADK                            R17 K42 ["digit"]
       64 LOADB                            R18 1
       65 SETLIST                          R15 R16 3 [1]
       67 SETTABLEN                        R15 R14 68
       68 NEWTABLE                         R15 0 3
       70 LOADK                            R16 K52 ["class"]
       71 LOADK                            R17 K47 ["space"]
       72 LOADB                            R18 1
       73 SETLIST                          R15 R16 3 [1]
       75 SETTABLEN                        R15 R14 83
       76 NEWTABLE                         R15 0 3
       78 LOADK                            R16 K52 ["class"]
       79 LOADK                            R17 K49 ["word"]
       80 LOADB                            R18 1
       81 SETLIST                          R15 R16 3 [1]
       83 SETTABLEN                        R15 R14 87
       84 NEWTABLE                         R15 0 3
       86 LOADK                            R16 K52 ["class"]
       87 LOADK                            R17 K42 ["digit"]
       88 LOADB                            R18 0
       89 SETLIST                          R15 R16 3 [1]
       91 SETTABLEN                        R15 R14 100
       92 NEWTABLE                         R15 0 3
       94 LOADK                            R16 K52 ["class"]
       95 LOADK                            R17 K47 ["space"]
       96 LOADB                            R18 0
       97 SETLIST                          R15 R16 3 [1]
       99 SETTABLEN                        R15 R14 115
      100 NEWTABLE                         R15 0 3
      102 LOADK                            R16 K52 ["class"]
      103 LOADK                            R17 K49 ["word"]
      104 LOADB                            R18 0
      105 SETLIST                          R15 R16 3 [1]
      107 SETTABLEN                        R15 R14 119
      108 NEWTABLE                         R15 0 3
      110 LOADK                            R16 K52 ["class"]
      111 LOADK                            R17 K40 ["blank"]
      112 LOADB                            R18 1
      113 SETLIST                          R15 R16 3 [1]
      115 SETTABLEN                        R15 R14 72
      116 NEWTABLE                         R15 0 3
      118 LOADK                            R16 K52 ["class"]
      119 LOADK                            R17 K53 ["vertical_tab"]
      120 LOADB                            R18 1
      121 SETLIST                          R15 R16 3 [1]
      123 SETTABLEN                        R15 R14 86
      124 NEWTABLE                         R15 0 3
      126 LOADK                            R16 K52 ["class"]
      127 LOADK                            R17 K40 ["blank"]
      128 LOADB                            R18 0
      129 SETLIST                          R15 R16 3 [1]
      131 SETTABLEN                        R15 R14 104
      132 NEWTABLE                         R15 0 3
      134 LOADK                            R16 K52 ["class"]
      135 LOADK                            R17 K53 ["vertical_tab"]
      136 LOADB                            R18 0
      137 SETLIST                          R15 R16 3 [1]
      139 SETTABLEN                        R15 R14 118
      140 NEWTABLE                         R15 0 1
      142 LOADN                            R16 78
      143 SETLIST                          R15 R16 1 [1]
      145 SETTABLEN                        R15 R14 78
      146 NEWTABLE                         R15 0 1
      148 LOADN                            R16 82
      149 SETLIST                          R15 R16 1 [1]
      151 SETTABLEN                        R15 R14 82
      152 LOADN                            R15 8
      153 SETTABLEN                        R15 R14 66
      154 LOADN                            R15 10
      155 SETTABLEN                        R15 R14 110
      156 LOADN                            R15 13
      157 SETTABLEN                        R15 R14 114
      158 LOADN                            R15 9
      159 SETTABLEN                        R15 R14 116
      160 NEWTABLE                         R15 8 0
      162 NEWTABLE                         R16 0 2
      164 LOADN                            R17 98
      165 NEWTABLE                         R18 0 3
      167 LOADK                            R19 K52 ["class"]
      168 LOADK                            R20 K49 ["word"]
      169 LOADB                            R21 0
      170 SETLIST                          R18 R19 3 [1]
      172 SETLIST                          R16 R17 2 [1]
      174 SETTABLEN                        R16 R15 98
      175 NEWTABLE                         R16 0 2
      177 LOADN                            R17 66
      178 NEWTABLE                         R18 0 3
      180 LOADK                            R19 K52 ["class"]
      181 LOADK                            R20 K49 ["word"]
      182 LOADB                            R21 0
      183 SETLIST                          R18 R19 3 [1]
      185 SETLIST                          R16 R17 2 [1]
      187 SETTABLEN                        R16 R15 66
      188 NEWTABLE                         R16 0 1
      190 LOADN                            R17 75
      191 SETLIST                          R16 R17 1 [1]
      193 SETTABLEN                        R16 R15 75
      194 NEWTABLE                         R16 0 1
      196 LOADN                            R17 71
      197 SETLIST                          R16 R17 1 [1]
      199 SETTABLEN                        R16 R15 71
      200 NEWTABLE                         R16 0 1
      202 LOADN                            R17 74
      203 SETLIST                          R16 R17 1 [1]
      205 SETTABLEN                        R16 R15 74
      206 NEWTABLE                         R16 0 1
      208 LOADN                            R17 90
      209 SETLIST                          R16 R17 1 [1]
      211 SETTABLEN                        R16 R15 90
      212 NEWTABLE                         R16 0 1
      214 LOADN                            R17 122
      215 SETLIST                          R16 R17 1 [1]
      217 SETTABLEN                        R16 R15 122
      218 NEWTABLE                         R16 64 0
      220 LOADB                            R17 1
      221 SETTABLEKS                       R17 R16 K54 ["C"]
      223 LOADB                            R17 1
      224 SETTABLEKS                       R17 R16 K55 ["Cc"]
      226 LOADB                            R17 1
      227 SETTABLEKS                       R17 R16 K56 ["Cf"]
      229 LOADB                            R17 1
      230 SETTABLEKS                       R17 R16 K57 ["Cn"]
      232 LOADB                            R17 1
      233 SETTABLEKS                       R17 R16 K58 ["Co"]
      235 LOADB                            R17 1
      236 SETTABLEKS                       R17 R16 K59 ["Cs"]
      238 LOADB                            R17 1
      239 SETTABLEKS                       R17 R16 K60 ["L"]
      241 LOADB                            R17 1
      242 SETTABLEKS                       R17 R16 K61 ["Ll"]
      244 LOADB                            R17 1
      245 SETTABLEKS                       R17 R16 K62 ["Lm"]
      247 LOADB                            R17 1
      248 SETTABLEKS                       R17 R16 K63 ["Lo"]
      250 LOADB                            R17 1
      251 SETTABLEKS                       R17 R16 K64 ["Lt"]
      253 LOADB                            R17 1
      254 SETTABLEKS                       R17 R16 K65 ["Lu"]
      256 LOADB                            R17 1
      257 SETTABLEKS                       R17 R16 K66 ["M"]
      259 LOADB                            R17 1
      260 SETTABLEKS                       R17 R16 K67 ["Mc"]
      262 LOADB                            R17 1
      263 SETTABLEKS                       R17 R16 K68 ["Me"]
      265 LOADB                            R17 1
      266 SETTABLEKS                       R17 R16 K69 ["Mn"]
      268 LOADB                            R17 1
      269 SETTABLEKS                       R17 R16 K70 ["N"]
      271 LOADB                            R17 1
      272 SETTABLEKS                       R17 R16 K71 ["Nd"]
      274 LOADB                            R17 1
      275 SETTABLEKS                       R17 R16 K72 ["Nl"]
      277 LOADB                            R17 1
      278 SETTABLEKS                       R17 R16 K73 ["No"]
      280 LOADB                            R17 1
      281 SETTABLEKS                       R17 R16 K74 ["P"]
      283 LOADB                            R17 1
      284 SETTABLEKS                       R17 R16 K75 ["Pc"]
      286 LOADB                            R17 1
      287 SETTABLEKS                       R17 R16 K76 ["Pd"]
      289 LOADB                            R17 1
      290 SETTABLEKS                       R17 R16 K77 ["Pe"]
      292 LOADB                            R17 1
      293 SETTABLEKS                       R17 R16 K78 ["Pf"]
      295 LOADB                            R17 1
      296 SETTABLEKS                       R17 R16 K79 ["Pi"]
      298 LOADB                            R17 1
      299 SETTABLEKS                       R17 R16 K80 ["Po"]
      301 LOADB                            R17 1
      302 SETTABLEKS                       R17 R16 K81 ["Ps"]
      304 LOADB                            R17 1
      305 SETTABLEKS                       R17 R16 K82 ["S"]
      307 LOADB                            R17 1
      308 SETTABLEKS                       R17 R16 K83 ["Sc"]
      310 LOADB                            R17 1
      311 SETTABLEKS                       R17 R16 K84 ["Sk"]
      313 LOADB                            R17 1
      314 SETTABLEKS                       R17 R16 K85 ["Sm"]
      316 LOADB                            R17 1
      317 SETTABLEKS                       R17 R16 K86 ["So"]
      319 LOADB                            R17 1
      320 SETTABLEKS                       R17 R16 K87 ["Z"]
      322 LOADB                            R17 1
      323 SETTABLEKS                       R17 R16 K88 ["Zl"]
      325 LOADB                            R17 1
      326 SETTABLEKS                       R17 R16 K89 ["Zp"]
      328 LOADB                            R17 1
      329 SETTABLEKS                       R17 R16 K90 ["Zs"]
      331 LOADB                            R17 1
      332 SETTABLEKS                       R17 R16 K91 ["Xan"]
      334 LOADB                            R17 1
      335 SETTABLEKS                       R17 R16 K92 ["Xps"]
      337 LOADB                            R17 1
      338 SETTABLEKS                       R17 R16 K93 ["Xsp"]
      340 LOADB                            R17 1
      341 SETTABLEKS                       R17 R16 K94 ["Xuc"]
      343 LOADB                            R17 1
      344 SETTABLEKS                       R17 R16 K95 ["Xwd"]
      346 NEWTABLE                         R17 32 0
      348 LOADB                            R18 1
      349 SETTABLEN                        R18 R17 33
      350 LOADB                            R18 1
      351 SETTABLEN                        R18 R17 34
      352 LOADB                            R18 1
      353 SETTABLEN                        R18 R17 35
      354 LOADB                            R18 1
      355 SETTABLEN                        R18 R17 36
      356 LOADB                            R18 1
      357 SETTABLEN                        R18 R17 37
      358 LOADB                            R18 1
      359 SETTABLEN                        R18 R17 38
      360 LOADB                            R18 1
      361 SETTABLEN                        R18 R17 39
      362 LOADB                            R18 1
      363 SETTABLEN                        R18 R17 40
      364 LOADB                            R18 1
      365 SETTABLEN                        R18 R17 41
      366 LOADB                            R18 1
      367 SETTABLEN                        R18 R17 42
      368 LOADB                            R18 1
      369 SETTABLEN                        R18 R17 43
      370 LOADB                            R18 1
      371 SETTABLEN                        R18 R17 44
      372 LOADB                            R18 1
      373 SETTABLEN                        R18 R17 45
      374 LOADB                            R18 1
      375 SETTABLEN                        R18 R17 46
      376 LOADB                            R18 1
      377 SETTABLEN                        R18 R17 47
      378 LOADB                            R18 1
      379 SETTABLEN                        R18 R17 58
      380 LOADB                            R18 1
      381 SETTABLEN                        R18 R17 59
      382 LOADB                            R18 1
      383 SETTABLEN                        R18 R17 60
      384 LOADB                            R18 1
      385 SETTABLEN                        R18 R17 61
      386 LOADB                            R18 1
      387 SETTABLEN                        R18 R17 62
      388 LOADB                            R18 1
      389 SETTABLEN                        R18 R17 63
      390 LOADB                            R18 1
      391 SETTABLEN                        R18 R17 64
      392 LOADB                            R18 1
      393 SETTABLEN                        R18 R17 91
      394 LOADB                            R18 1
      395 SETTABLEN                        R18 R17 92
      396 LOADB                            R18 1
      397 SETTABLEN                        R18 R17 93
      398 LOADB                            R18 1
      399 SETTABLEN                        R18 R17 94
      400 LOADB                            R18 1
      401 SETTABLEN                        R18 R17 95
      402 LOADB                            R18 1
      403 SETTABLEN                        R18 R17 96
      404 LOADB                            R18 1
      405 SETTABLEN                        R18 R17 123
      406 LOADB                            R18 1
      407 SETTABLEN                        R18 R17 124
      408 LOADB                            R18 1
      409 SETTABLEN                        R18 R17 125
      410 LOADB                            R18 1
      411 SETTABLEN                        R18 R17 126
      412 NEWTABLE                         R18 0 1
      414 LOADN                            R19 36
      415 SETLIST                          R18 R19 1 [1]
      417 NEWTABLE                         R19 0 1
      419 LOADN                            R20 46
      420 SETLIST                          R19 R20 1 [1]
      422 NEWTABLE                         R20 0 1
      424 LOADN                            R21 94
      425 SETLIST                          R20 R21 1 [1]
      427 NEWTABLE                         R21 0 1
      429 LOADN                            R22 124
      430 SETLIST                          R21 R22 1 [1]
      432 DUPCLOSURE                       R22 K96 [PROTO_5]
      433 CAPTURE                          VAL R4
      434 CAPTURE                          VAL R5
      435 DUPCLOSURE                       R23 K97 [PROTO_6]
      436 CAPTURE                          VAL R4
      437 NEWCLOSURE                       R24 P5
      438 CAPTURE                          REF R8
      439 CAPTURE                          REF R7
      440 CAPTURE                          VAL R23
      441 CAPTURE                          VAL R4
      442 DUPCLOSURE                       R26 K98 [PROTO_8]
      443 LOADK                            R27 K99 ["group"]
      444 NEWCLOSURE                       R25 P7
      445 CAPTURE                          VAL R4
      446 CAPTURE                          VAL R27
      447 CAPTURE                          VAL R26
      448 SETTABLEKS                       R25 R7 K99 ["group"]
      450 DUPCLOSURE                       R26 K100 [PROTO_9]
      451 LOADK                            R27 K101 ["span"]
      452 NEWCLOSURE                       R25 P7
      453 CAPTURE                          VAL R4
      454 CAPTURE                          VAL R27
      455 CAPTURE                          VAL R26
      456 SETTABLEKS                       R25 R7 K101 ["span"]
      458 DUPCLOSURE                       R26 K102 [PROTO_10]
      459 LOADK                            R27 K103 ["groups"]
      460 NEWCLOSURE                       R25 P7
      461 CAPTURE                          VAL R4
      462 CAPTURE                          VAL R27
      463 CAPTURE                          VAL R26
      464 SETTABLEKS                       R25 R7 K103 ["groups"]
      466 DUPCLOSURE                       R26 K104 [PROTO_11]
      467 LOADK                            R27 K105 ["groupdict"]
      468 NEWCLOSURE                       R25 P7
      469 CAPTURE                          VAL R4
      470 CAPTURE                          VAL R27
      471 CAPTURE                          VAL R26
      472 SETTABLEKS                       R25 R7 K105 ["groupdict"]
      474 DUPCLOSURE                       R26 K106 [PROTO_12]
      475 LOADK                            R27 K105 ["groupdict"]
      476 NEWCLOSURE                       R25 P7
      477 CAPTURE                          VAL R4
      478 CAPTURE                          VAL R27
      479 CAPTURE                          VAL R26
      480 SETTABLEKS                       R25 R7 K107 ["grouparr"]
      482 DUPTABLE                         R25 K120 [{["CR"] = 0, ["LF"] = 1, ["CRLF"] = 2, ["ANYRLF"] = 3, ["ANY"] = 4, ["NUL"] = 5}]
      483 DUPCLOSURE                       R26 K121 [PROTO_13]
      484 DUPCLOSURE                       R27 K122 [PROTO_14]
      485 CAPTURE                          VAL R27
      486 CAPTURE                          VAL R1
      487 CAPTURE                          VAL R17
      488 CAPTURE                          VAL R3
      489 CAPTURE                          VAL R26
      490 DUPCLOSURE                       R28 K123 [PROTO_15]
      491 CAPTURE                          VAL R21
      492 DUPCLOSURE                       R29 K124 [PROTO_16]
      493 CAPTURE                          VAL R28
      494 CAPTURE                          VAL R27
      495 CAPTURE                          VAL R26
      496 DUPCLOSURE                       R31 K125 [PROTO_17]
      497 CAPTURE                          VAL R29
      498 CAPTURE                          VAL R9
      499 LOADK                            R32 K126 ["test"]
      500 NEWCLOSURE                       R30 P17
      501 CAPTURE                          VAL R4
      502 CAPTURE                          VAL R32
      503 CAPTURE                          VAL R5
      504 CAPTURE                          VAL R31
      505 SETTABLEKS                       R30 R6 K126 ["test"]
      507 DUPCLOSURE                       R31 K127 [PROTO_18]
      508 CAPTURE                          VAL R29
      509 CAPTURE                          VAL R9
      510 CAPTURE                          VAL R24
      511 LOADK                            R32 K128 ["match"]
      512 NEWCLOSURE                       R30 P17
      513 CAPTURE                          VAL R4
      514 CAPTURE                          VAL R32
      515 CAPTURE                          VAL R5
      516 CAPTURE                          VAL R31
      517 SETTABLEKS                       R30 R6 K128 ["match"]
      519 DUPCLOSURE                       R31 K129 [PROTO_20]
      520 CAPTURE                          VAL R9
      521 CAPTURE                          VAL R29
      522 CAPTURE                          VAL R24
      523 LOADK                            R32 K130 ["matchall"]
      524 NEWCLOSURE                       R30 P17
      525 CAPTURE                          VAL R4
      526 CAPTURE                          VAL R32
      527 CAPTURE                          VAL R5
      528 CAPTURE                          VAL R31
      529 SETTABLEKS                       R30 R6 K130 ["matchall"]
      531 DUPCLOSURE                       R30 K131 [PROTO_21]
      532 CAPTURE                          VAL R30
      533 DUPCLOSURE                       R32 K132 [PROTO_22]
      534 CAPTURE                          VAL R9
      535 CAPTURE                          VAL R14
      536 CAPTURE                          VAL R29
      537 CAPTURE                          VAL R30
      538 CAPTURE                          VAL R24
      539 CAPTURE                          VAL R10
      540 LOADK                            R33 K133 ["sub"]
      541 NEWCLOSURE                       R31 P17
      542 CAPTURE                          VAL R4
      543 CAPTURE                          VAL R33
      544 CAPTURE                          VAL R5
      545 CAPTURE                          VAL R32
      546 SETTABLEKS                       R31 R6 K133 ["sub"]
      548 DUPCLOSURE                       R32 K134 [PROTO_23]
      549 CAPTURE                          VAL R9
      550 CAPTURE                          VAL R29
      551 LOADK                            R33 K135 ["split"]
      552 NEWCLOSURE                       R31 P17
      553 CAPTURE                          VAL R4
      554 CAPTURE                          VAL R33
      555 CAPTURE                          VAL R5
      556 CAPTURE                          VAL R32
      557 SETTABLEKS                       R31 R6 K135 ["split"]
      559 NEWCLOSURE                       R31 P23
      560 CAPTURE                          REF R6
      561 CAPTURE                          VAL R4
      562 DUPCLOSURE                       R32 K136 [PROTO_25]
      563 CAPTURE                          VAL R4
      564 NEWTABLE                         R33 8 0
      566 LOADB                            R34 1
      567 SETTABLEN                        R34 R33 58
      568 LOADB                            R34 1
      569 SETTABLEN                        R34 R33 33
      570 LOADB                            R34 1
      571 SETTABLEN                        R34 R33 61
      572 LOADB                            R34 1
      573 SETTABLEN                        R34 R33 62
      574 LOADB                            R34 1
      575 SETTABLEN                        R34 R33 124
      576 DUPCLOSURE                       R34 K137 [PROTO_26]
      577 CAPTURE                          VAL R0
      578 CAPTURE                          VAL R25
      579 CAPTURE                          VAL R33
      580 CAPTURE                          VAL R21
      581 CAPTURE                          VAL R19
      582 CAPTURE                          VAL R14
      583 CAPTURE                          VAL R13
      584 CAPTURE                          VAL R16
      585 CAPTURE                          VAL R2
      586 CAPTURE                          VAL R15
      587 CAPTURE                          VAL R20
      588 CAPTURE                          VAL R18
      589 GETTABLEKS                       R36 R0 K0 ["cacheSize"]
      591 FASTCALL1                        TONUMBER R36 ; [+2]
      592 GETIMPORT                        R35 K139 [tonumber]
      594 CALL                             R35 1 1
      595 JUMPIF                           R35 ; [+14]
      596 GETIMPORT                        R35 K141 [error]
      598 GETIMPORT                        R36 K144 [string.format]
      600 LOADK                            R37 K145 ["expected number for options.cacheSize, got %s"]
      601 GETTABLEKS                       R39 R0 K0 ["cacheSize"]
      603 FASTCALL1                        TYPEOF R39 ; [+2]
      604 GETIMPORT                        R38 K147 [typeof]
      606 CALL                             R38 1 1
      607 CALL                             R36 2 1
      608 LOADN                            R37 2
      609 CALL                             R35 2 0
      610 LOADB                            R35 0
      611 GETTABLEKS                       R38 R0 K0 ["cacheSize"]
      613 ORK                              R37 R38 K109 [0]
      614 FASTCALL1                        MATH_FLOOR R37 ; [+2]
      615 GETIMPORT                        R36 K150 [math.floor]
      617 CALL                             R36 1 1
      618 JUMPIFEQKN                       R36 K109 [0] ; [+7]
      620 GETTABLEKS                       R36 R0 K0 ["cacheSize"]
      622 FASTCALL1                        TONUMBER R36 ; [+2]
      623 GETIMPORT                        R35 K139 [tonumber]
      625 CALL                             R35 1 1
      626 LOADNIL                          R36
      627 LOADNIL                          R37
      628 JUMPIF                           R35 ; [+1]
      629 JUMP                             ; [+47]
      630 LOADN                            R38 0
      631 JUMPIFLT                         R35 R38 ; [+3]
      633 JUMPIFEQ                         R35 R35 ; [+7]
      635 GETIMPORT                        R38 K141 [error]
      637 LOADK                            R39 K151 ["cache size cannot be a negative number or a NaN"]
      638 LOADN                            R40 2
      639 CALL                             R38 2 0
      640 JUMP                             ; [+36]
      641 JUMPIFNOTEQKN                    R35 K152 [∞] ; [+14]
      643 NEWTABLE                         R38 0 1
      645 LOADNIL                          R39
      646 SETLIST                          R38 R39 1 [1]
      648 MOVE                             R36 R38
      649 NEWTABLE                         R38 0 1
      651 LOADNIL                          R39
      652 SETLIST                          R38 R39 1 [1]
      654 MOVE                             R37 R38
      655 JUMP                             ; [+21]
      656 LOADK                            R38 K153 [4294967296]
      657 JUMPIFNOTLE                      R38 R35 ; [+7]
      659 GETIMPORT                        R38 K141 [error]
      661 LOADK                            R39 K154 ["cache size too large"]
      662 LOADN                            R40 2
      663 CALL                             R38 2 0
      664 JUMP                             ; [+12]
      665 GETIMPORT                        R38 K157 [table.create]
      667 GETTABLEKS                       R39 R0 K0 ["cacheSize"]
      669 CALL                             R38 1 1
      670 MOVE                             R36 R38
      671 GETIMPORT                        R38 K157 [table.create]
      673 GETTABLEKS                       R39 R0 K0 ["cacheSize"]
      675 CALL                             R38 1 1
      676 MOVE                             R37 R38
      677 JUMPIFNOT                        R35 ; [+5]
      678 NEWCLOSURE                       R38 P26
      679 CAPTURE                          REF R37
      680 CAPTURE                          REF R36
      681 SETTABLEKS                       R38 R5 K158 ["pruge"]
      683 NEWCLOSURE                       R38 P27
      684 CAPTURE                          VAL R35
      685 CAPTURE                          REF R36
      686 CAPTURE                          REF R37
      687 CAPTURE                          VAL R34
      688 CAPTURE                          VAL R4
      689 CAPTURE                          REF R6
      690 CAPTURE                          VAL R32
      691 CAPTURE                          REF R8
      692 DUPCLOSURE                       R39 K159 [PROTO_29]
      693 DUPCLOSURE                       R40 K160 [PROTO_30]
      694 DUPCLOSURE                       R41 K161 [PROTO_31]
      695 CAPTURE                          VAL R12
      696 CAPTURE                          VAL R40
      697 CAPTURE                          VAL R38
      698 CAPTURE                          VAL R9
      699 CAPTURE                          VAL R39
      700 SETTABLEKS                       R41 R5 K162 ["new"]
      702 DUPCLOSURE                       R41 K163 [PROTO_32]
      703 CAPTURE                          VAL R9
      704 CAPTURE                          VAL R12
      705 CAPTURE                          VAL R40
      706 CAPTURE                          VAL R38
      707 SETTABLEKS                       R41 R5 K164 ["fromstring"]
      709 NEWTABLE                         R41 8 0
      711 LOADK                            R42 K165 ["\\x00"]
      712 SETTABLEKS                       R42 R41 K166 ["\0"]
      714 LOADK                            R42 K167 ["\\n"]
      715 SETTABLEKS                       R42 R41 K168 ["\n"]
      717 LOADK                            R42 K169 ["\\t"]
      718 SETTABLEKS                       R42 R41 K170 ["\t"]
      720 LOADK                            R42 K171 ["\\r"]
      721 SETTABLEKS                       R42 R41 K172 ["\r"]
      723 LOADK                            R42 K173 ["\\f"]
      724 SETTABLEKS                       R42 R41 K174 ["\x"]
      726 DUPCLOSURE                       R42 K175 [PROTO_33]
      727 CAPTURE                          VAL R41
      728 SETTABLEKS                       R42 R5 K176 ["escape"]
      730 DUPCLOSURE                       R42 K177 [PROTO_34]
      731 CAPTURE                          VAL R4
      732 SETTABLEKS                       R42 R5 K178 ["type"]
      734 GETIMPORT                        R42 K180 [pairs]
      736 MOVE                             R43 R6
      737 CALL                             R42 1 3
      738 FORGPREP_NEXT                    R42
      739 SETTABLE                         R46 R5 R45
      740 FORGLOOP                         R42 2 ; [-2]
      742 DUPTABLE                         R42 K182 [{"__index"}]
      743 SETTABLEKS                       R6 R42 K181 ["__index"]
      745 MOVE                             R6 R42
      746 GETTABLEKS                       R42 R5 K164 ["fromstring"]
      748 LOADK                            R43 K183 ["/The\\s*metatable\\s*is\\s*(?:locked|inaccessible)(?#Nice try :])/i"]
      749 CALL                             R42 1 1
      750 MOVE                             R8 R42
      751 FASTCALL1                        GETMETATABLE R8 ; [+3]
      752 MOVE                             R43 R8
      753 GETIMPORT                        R42 K185 [getmetatable]
      755 CALL                             R42 1 1
      756 SETTABLEKS                       R8 R42 K186 ["__metatable"]
      758 DUPCLOSURE                       R42 K187 [PROTO_35]
      759 DUPTABLE                         R43 K189 [{"__index", "__metatable", "__newindex"}]
      760 SETTABLEKS                       R7 R43 K181 ["__index"]
      762 SETTABLEKS                       R8 R43 K186 ["__metatable"]
      764 SETTABLEKS                       R42 R43 K188 ["__newindex"]
      766 MOVE                             R7 R43
      767 NEWTABLE                         R44 0 0
      769 FASTCALL2                        SETMETATABLE R44 R7 ; [+4]
      771 MOVE                             R45 R7
      772 GETIMPORT                        R43 K17 [setmetatable]
      774 CALL                             R43 2 1
      775 SETTABLEKS                       R43 R5 K190 ["Match"]
      777 NEWTABLE                         R44 0 0
      779 DUPTABLE                         R45 K189 [{"__index", "__metatable", "__newindex"}]
      780 SETTABLEKS                       R5 R45 K181 ["__index"]
      782 SETTABLEKS                       R8 R45 K186 ["__metatable"]
      784 SETTABLEKS                       R42 R45 K188 ["__newindex"]
      786 FASTCALL2                        SETMETATABLE R44 R45 ; [+3]
      788 GETIMPORT                        R43 K17 [setmetatable]
      790 CALL                             R43 2 1
      791 CLOSEUPVALS                      R6
      792 RETURN                           R43 1
