PROTO_0:
        0 GETIMPORT                        R2 K2 [string.split]
        2 MOVE                             R3 R0
        3 LOADK                            R4 K3 ["\n"]
        4 CALL                             R2 2 1
        5 MOVE                             R3 R2
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 FORGPREP                         R3
        9 ORK                              R9 R1 K4 [""]
       10 MOVE                             R10 R7
       11 CONCAT                           R8 R9 R10
       12 SETTABLE                         R8 R2 R6
       13 FORGLOOP                         R3 2 ; [-5]
       15 GETIMPORT                        R3 K7 [table.concat]
       17 MOVE                             R4 R2
       18 LOADK                            R5 K3 ["\n"]
       19 CALL                             R3 2 -1
       20 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["trim"]
        3 ORK                              R2 R0 K1 [""]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_2:
        0 LOADK                            R3 K0 ["%s*at.*%(?:%d*:%d*%)?"]
        1 NAMECALL                         R1 R0 K1 ["find"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+5]
        5 LOADK                            R3 K2 ["%s*at.*%(?native%)?"]
        6 NAMECALL                         R1 R0 K1 ["find"]
        8 CALL                             R1 2 1
        9 JUMPIFNOT                        R1 ; [+4]
       10 GETUPVAL                         R1 0
       11 MOVE                             R2 R0
       12 CALL                             R1 1 -1
       13 RETURN                           R1 -1
       14 RETURN                           R0 1

PROTO_3:
        0 GETIMPORT                        R3 K2 [string.match]
        2 MOVE                             R4 R1
        3 LOADK                            R5 K3 ["%S"]
        4 CALL                             R3 2 1
        5 JUMPIFEQKNIL                     R3 ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 RETURN                           R2 1

PROTO_4:
        0 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["toJSBoolean"]
        3 MOVE                             R6 R0
        4 CALL                             R5 1 1
        5 JUMPIFNOT                        R5 ; [+7]
        6 FASTCALL1                        TYPEOF R0 ; [+3]
        7 MOVE                             R6 R0
        8 GETIMPORT                        R5 K2 [typeof]
       10 CALL                             R5 1 1
       11 JUMPIFNOTEQKS                    R5 K3 ["number"] ; [+18]
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R5 R5 K4 ["new"]
       16 LOADK                            R6 K5 ["Expected an Error, but \"%s\" was thrown"]
       17 FASTCALL1                        TOSTRING R0 ; [+3]
       18 MOVE                             R9 R0
       19 GETIMPORT                        R8 K7 [tostring]
       21 CALL                             R8 1 1
       22 NAMECALL                         R6 R6 K8 ["format"]
       24 CALL                             R6 2 -1
       25 CALL                             R5 -1 1
       26 MOVE                             R0 R5
       27 LOADK                            R5 K9 [""]
       28 SETTABLEKS                       R5 R0 K10 ["stack"]
       30 LOADNIL                          R5
       31 LOADNIL                          R6
       32 FASTCALL1                        TYPEOF R0 ; [+3]
       33 MOVE                             R8 R0
       34 GETIMPORT                        R7 K2 [typeof]
       36 CALL                             R7 1 1
       37 JUMPIFEQKS                       R7 K11 ["string"] ; [+9]
       39 GETUPVAL                         R7 0
       40 GETTABLEKS                       R7 R7 K0 ["toJSBoolean"]
       42 MOVE                             R8 R0
       43 CALL                             R7 1 1
       44 JUMPIFNOT                        R7 ; [+2]
       45 JUMPIFNOTEQKNIL                  R0 ; [+11]
       47 GETUPVAL                         R7 0
       48 GETTABLEKS                       R7 R7 K0 ["toJSBoolean"]
       50 MOVE                             R8 R0
       51 CALL                             R7 1 1
       52 JUMPIF                           R7 ; [+1]
       53 LOADK                            R0 K12 ["EMPTY ERROR"]
       54 LOADK                            R5 K9 [""]
       55 MOVE                             R6 R0
       56 JUMP                             ; [+30]
       57 GETTABLEKS                       R7 R0 K13 ["kind"]
       59 JUMPIFNOTEQKS                    R7 K14 ["ExecutionError"] ; [+5]
       61 GETUPVAL                         R7 2
       62 MOVE                             R8 R0
       63 CALL                             R7 1 1
       64 MOVE                             R0 R7
       65 GETTABLEKS                       R5 R0 K15 ["message"]
       67 GETTABLEKS                       R8 R0 K10 ["stack"]
       69 FASTCALL1                        TYPEOF R8 ; [+2]
       70 GETIMPORT                        R7 K2 [typeof]
       72 CALL                             R7 1 1
       73 JUMPIFNOTEQKS                    R7 K11 ["string"] ; [+4]
       75 GETTABLEKS                       R6 R0 K10 ["stack"]
       77 JUMP                             ; [+9]
       78 LOADK                            R7 K16 ["thrown: %s"]
       79 GETUPVAL                         R9 3
       80 MOVE                             R10 R0
       81 DUPTABLE                         R11 K19 [{["maxDepth"] = 3}]
       82 CALL                             R9 2 -1
       83 NAMECALL                         R7 R7 K8 ["format"]
       85 CALL                             R7 -1 1
       86 MOVE                             R6 R7
       87 GETUPVAL                         R7 4
       88 GETUPVAL                         R9 0
       89 GETTABLEKS                       R9 R9 K0 ["toJSBoolean"]
       91 MOVE                             R10 R6
       92 CALL                             R9 1 1
       93 JUMPIFNOT                        R9 ; [+2]
       94 MOVE                             R8 R6
       95 JUMPIF                           R8 ; [+1]
       96 LOADK                            R8 K9 [""]
       97 CALL                             R7 1 1
       98 GETTABLEKS                       R6 R7 K10 ["stack"]
      100 GETIMPORT                        R8 K21 [string.find]
      102 GETTABLEKS                       R9 R7 K15 ["message"]
      104 GETUPVAL                         R12 5
      105 GETTABLEKS                       R12 R12 K22 ["trim"]
      107 ORK                              R13 R5 K9 [""]
      108 CALL                             R12 1 1
      109 MOVE                             R10 R12
      110 LOADN                            R11 1
      111 LOADB                            R12 1
      112 CALL                             R8 4 1
      113 JUMPIFEQKNIL                     R8 ; [+3]
      115 GETTABLEKS                       R5 R7 K15 ["message"]
      117 MOVE                             R8 R5
      118 GETIMPORT                        R9 K24 [string.split]
      120 MOVE                             R10 R8
      121 LOADK                            R11 K25 ["\n"]
      122 CALL                             R9 2 1
      123 MOVE                             R10 R9
      124 LOADNIL                          R11
      125 LOADNIL                          R12
      126 FORGPREP                         R10
      127 LOADK                            R16 K26 ["    "]
      128 MOVE                             R17 R14
      129 CONCAT                           R15 R16 R17
      130 SETTABLE                         R15 R9 R13
      131 FORGLOOP                         R10 2 ; [-5]
      133 GETIMPORT                        R10 K29 [table.concat]
      135 MOVE                             R11 R9
      136 LOADK                            R12 K25 ["\n"]
      137 CALL                             R10 2 1
      138 MOVE                             R5 R10
      139 GETUPVAL                         R8 0
      140 GETTABLEKS                       R8 R8 K0 ["toJSBoolean"]
      142 MOVE                             R9 R6
      143 CALL                             R8 1 1
      144 JUMPIFNOT                        R8 ; [+12]
      145 GETTABLEKS                       R8 R2 K30 ["noStackTrace"]
      147 JUMPIF                           R8 ; [+9]
      148 LOADK                            R8 K25 ["\n"]
      149 GETUPVAL                         R9 6
      150 MOVE                             R10 R6
      151 MOVE                             R11 R1
      152 MOVE                             R12 R2
      153 MOVE                             R13 R3
      154 CALL                             R9 4 1
      155 CONCAT                           R6 R8 R9
      156 JUMP                             ; [+1]
      157 LOADK                            R6 K9 [""]
      158 FASTCALL1                        TYPEOF R6 ; [+3]
      159 MOVE                             R9 R6
      160 GETIMPORT                        R8 K2 [typeof]
      162 CALL                             R8 1 1
      163 JUMPIFNOTEQKS                    R8 K11 ["string"] ; [+13]
      165 GETUPVAL                         R8 7
      166 MOVE                             R10 R5
      167 NAMECALL                         R8 R8 K31 ["test"]
      169 CALL                             R8 2 1
      170 JUMPIFNOT                        R8 ; [+19]
      171 GETUPVAL                         R8 7
      172 MOVE                             R10 R6
      173 NAMECALL                         R8 R8 K31 ["test"]
      175 CALL                             R8 2 1
      176 JUMPIFNOT                        R8 ; [+13]
      177 LOADK                            R8 K16 ["thrown: %s"]
      178 GETUPVAL                         R11 3
      179 MOVE                             R12 R0
      180 DUPTABLE                         R13 K19 [{["maxDepth"] = 3}]
      181 CALL                             R11 2 -1
      182 FASTCALL                         TOSTRING ; [+2]
      183 GETIMPORT                        R10 K7 [tostring]
      185 CALL                             R10 -1 1
      186 NAMECALL                         R8 R8 K8 ["format"]
      188 CALL                             R8 2 1
      189 MOVE                             R5 R8
      190 LOADNIL                          R8
      191 JUMPIFNOT                        R4 ; [+11]
      192 LOADK                            R9 K32 [" %s"]
      193 GETUPVAL                         R11 5
      194 GETTABLEKS                       R11 R11 K22 ["trim"]
      196 MOVE                             R12 R5
      197 CALL                             R11 1 -1
      198 NAMECALL                         R9 R9 K8 ["format"]
      200 CALL                             R9 -1 1
      201 MOVE                             R8 R9
      202 JUMP                             ; [+7]
      203 LOADK                            R9 K33 ["%s\n\n%s"]
      204 LOADK                            R11 K34 ["Test suite failed to run"]
      205 MOVE                             R12 R5
      206 NAMECALL                         R9 R9 K8 ["format"]
      208 CALL                             R9 3 1
      209 MOVE                             R8 R9
      210 LOADK                            R10 K35 ["  "]
      211 GETUPVAL                         R11 8
      212 MOVE                             R12 R8
      213 MOVE                             R13 R6
      214 LOADK                            R14 K25 ["\n"]
      215 CONCAT                           R9 R10 R14
      216 RETURN                           R9 1

PROTO_6:
        0 LOADK                            R3 K0 ["^%s+at <anonymous>.*$"]
        1 NAMECALL                         R1 R0 K1 ["find"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+2]
        5 LOADB                            R1 0
        6 RETURN                           R1 1
        7 LOADK                            R3 K2 ["^%s+at Promise %(<anonymous>%).*$"]
        8 NAMECALL                         R1 R0 K1 ["find"]
       10 CALL                             R1 2 1
       11 JUMPIF                           R1 ; [+5]
       12 LOADK                            R3 K3 ["^%s+at new Promise %(<anonymous>%).*$"]
       13 NAMECALL                         R1 R0 K1 ["find"]
       15 CALL                             R1 2 1
       16 JUMPIFNOT                        R1 ; [+2]
       17 LOADB                            R1 0
       18 RETURN                           R1 1
       19 LOADK                            R3 K4 ["^%s+at Generator.next %(<anonymous>%).*$"]
       20 NAMECALL                         R1 R0 K1 ["find"]
       22 CALL                             R1 2 1
       23 JUMPIFNOT                        R1 ; [+2]
       24 LOADB                            R1 0
       25 RETURN                           R1 1
       26 LOADK                            R3 K5 ["^%s+at next %(native%).*$"]
       27 NAMECALL                         R1 R0 K1 ["find"]
       29 CALL                             R1 2 1
       30 JUMPIFNOT                        R1 ; [+2]
       31 LOADB                            R1 0
       32 RETURN                           R1 1
       33 LOADK                            R3 K6 ["%s*at.*%(?:%d*:%d*%)?"]
       34 NAMECALL                         R1 R0 K1 ["find"]
       36 CALL                             R1 2 1
       37 JUMPIFNOT                        R1 ; [+5]
       38 LOADK                            R3 K7 ["%s*at.*%(?native%)?"]
       39 NAMECALL                         R1 R0 K1 ["find"]
       41 CALL                             R1 2 1
       42 JUMPIF                           R1 ; [+2]
       43 LOADB                            R1 1
       44 RETURN                           R1 1
       45 LOADK                            R3 K8 ["%s+at(.jasmine%-)"]
       46 NAMECALL                         R1 R0 K1 ["find"]
       48 CALL                             R1 2 1
       49 JUMPIF                           R1 ; [+5]
       50 LOADK                            R3 K9 ["%s+at(%s+jasmine%.buildExpectationResult)"]
       51 NAMECALL                         R1 R0 K1 ["find"]
       53 CALL                             R1 2 1
       54 JUMPIFNOT                        R1 ; [+2]
       55 LOADB                            R1 0
       56 RETURN                           R1 1
       57 GETUPVAL                         R1 0
       58 ADDK                             R1 R1 K10 [1]
       59 SETUPVAL                         R1 0
       60 GETUPVAL                         R1 0
       61 JUMPIFNOTEQKN                    R1 K10 [1] ; [+3]
       63 LOADB                            R1 1
       64 RETURN                           R1 1
       65 GETUPVAL                         R1 1
       66 GETTABLEKS                       R1 R1 K11 ["noStackTrace"]
       68 JUMPIFNOT                        R1 ; [+2]
       69 LOADB                            R1 0
       70 RETURN                           R1 1
       71 LOADB                            R1 1
       72 RETURN                           R1 1

PROTO_7:
        0 LOADN                            R2 0
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K0 ["filter"]
        4 MOVE                             R4 R0
        5 NEWCLOSURE                       R5 P0
        6 CAPTURE                          REF R2
        7 CAPTURE                          VAL R1
        8 CALL                             R3 2 -1
        9 CLOSEUPVALS                      R2
       10 RETURN                           R3 -1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R2
        2 CALL                             R3 1 -1
        3 RETURN                           R3 -1

PROTO_9:
        0 JUMPIFNOTEQKNIL                  R1 ; [+3]
        2 DUPTABLE                         R2 K3 [{[1] = False, ["noStackTrace"] = False}]
        3 MOVE                             R1 R2
        4 GETUPVAL                         R2 0
        5 GETIMPORT                        R3 K6 [string.split]
        7 MOVE                             R4 R0
        8 LOADK                            R5 K7 ["\n"]
        9 CALL                             R3 2 1
       10 MOVE                             R4 R1
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_10:
        0 LOADK                            R2 K0 ["      "]
        1 GETUPVAL                         R4 0
        2 GETUPVAL                         R5 1
        3 LOADK                            R9 K1 ["%s*at.*%(?:%d*:%d*%)?"]
        4 NAMECALL                         R7 R0 K2 ["find"]
        6 CALL                             R7 2 1
        7 JUMPIF                           R7 ; [+5]
        8 LOADK                            R9 K3 ["%s*at.*%(?native%)?"]
        9 NAMECALL                         R7 R0 K2 ["find"]
       11 CALL                             R7 2 1
       12 JUMPIFNOT                        R7 ; [+6]
       13 GETUPVAL                         R6 2
       14 GETTABLEKS                       R6 R6 K4 ["trim"]
       16 ORK                              R7 R0 K5 [""]
       17 CALL                             R6 1 1
       18 JUMP                             ; [+1]
       19 MOVE                             R6 R0
       20 GETUPVAL                         R7 3
       21 MOVE                             R8 R6
       22 CALL                             R7 1 1
       23 MOVE                             R3 R7
       24 CONCAT                           R1 R2 R3
       25 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R2
        3 CALL                             R4 2 1
        4 LOADNIL                          R5
        5 JUMPIFNOT                        R3 ; [+1]
        6 LOADK                            R5 K0 ["unsupported"]
        7 GETIMPORT                        R6 K3 [table.concat]
        9 GETUPVAL                         R7 1
       10 GETTABLEKS                       R7 R7 K4 ["map"]
       12 GETUPVAL                         R8 1
       13 GETTABLEKS                       R8 R8 K5 ["filter"]
       15 MOVE                             R9 R4
       16 GETUPVAL                         R10 2
       17 GETTABLEKS                       R10 R10 K6 ["toJSBoolean"]
       19 CALL                             R8 2 1
       20 NEWCLOSURE                       R9 P0
       21 CAPTURE                          VAL R1
       22 CAPTURE                          REF R5
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          UPVAL U4
       25 CALL                             R7 2 1
       26 LOADK                            R8 K7 ["\n"]
       27 CALL                             R6 2 1
       28 GETIMPORT                        R7 K10 [string.format]
       30 LOADK                            R8 K11 ["\n%s"]
       31 MOVE                             R9 R6
       32 CALL                             R7 2 -1
       33 CLOSEUPVALS                      R5
       34 RETURN                           R7 -1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R3 K2 [{"content", "result"}]
        2 SETTABLEKS                       R0 R3 K0 ["content"]
        4 GETUPVAL                         R4 1
        5 SETTABLEKS                       R4 R3 K1 ["result"]
        7 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
        9 GETIMPORT                        R1 K5 [table.insert]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["forEach"]
        3 GETTABLEKS                       R3 R1 K1 ["failureMessages"]
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 CALL                             R2 2 0
        9 RETURN                           R0 1

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["result"]
        2 GETTABLEKS                       R2 R0 K1 ["content"]
        4 GETUPVAL                         R3 0
        5 MOVE                             R4 R2
        6 CALL                             R3 1 1
        7 GETTABLEKS                       R4 R3 K2 ["message"]
        9 GETTABLEKS                       R5 R3 K3 ["stack"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K4 ["noStackTrace"]
       14 JUMPIFNOT                        R6 ; [+2]
       15 LOADK                            R5 K5 [""]
       16 JUMP                             ; [+10]
       17 GETUPVAL                         R6 2
       18 GETUPVAL                         R7 3
       19 MOVE                             R8 R5
       20 GETUPVAL                         R9 4
       21 GETUPVAL                         R10 1
       22 GETUPVAL                         R11 5
       23 CALL                             R7 4 -1
       24 CALL                             R6 -1 1
       25 LOADK                            R7 K6 ["\n"]
       26 CONCAT                           R5 R6 R7
       27 MOVE                             R6 R4
       28 GETIMPORT                        R7 K9 [string.split]
       30 MOVE                             R8 R6
       31 LOADK                            R9 K6 ["\n"]
       32 CALL                             R7 2 1
       33 MOVE                             R8 R7
       34 LOADNIL                          R9
       35 LOADNIL                          R10
       36 FORGPREP                         R8
       37 LOADK                            R14 K10 ["    "]
       38 MOVE                             R15 R12
       39 CONCAT                           R13 R14 R15
       40 SETTABLE                         R13 R7 R11
       41 FORGLOOP                         R8 2 ; [-5]
       43 GETIMPORT                        R8 K13 [table.concat]
       45 MOVE                             R9 R7
       46 LOADK                            R10 K6 ["\n"]
       47 CALL                             R8 2 1
       48 MOVE                             R4 R8
       49 GETUPVAL                         R7 6
       50 GETTABLEKS                       R7 R7 K14 ["bold"]
       52 GETUPVAL                         R8 6
       53 GETTABLEKS                       R8 R8 K15 ["red"]
       55 LOADK                            R10 K16 ["  "]
       56 GETUPVAL                         R11 7
       57 GETUPVAL                         R12 8
       58 GETTABLEKS                       R12 R12 K17 ["join"]
       60 GETTABLEKS                       R13 R1 K18 ["ancestorTitles"]
       62 LOADK                            R14 K19 [" › "]
       63 CALL                             R12 2 1
       64 GETTABLEKS                       R15 R1 K18 ["ancestorTitles"]
       66 LENGTH                           R14 R15
       67 LOADN                            R15 0
       68 JUMPIFNOTLT                      R15 R14 ; [+3]
       70 LOADK                            R13 K19 [" › "]
       71 JUMP                             ; [+1]
       72 LOADK                            R13 K5 [""]
       73 GETTABLEKS                       R14 R1 K20 ["title"]
       75 CONCAT                           R9 R10 R14
       76 CALL                             R8 1 -1
       77 CALL                             R7 -1 1
       78 LOADK                            R8 K6 ["\n"]
       79 CONCAT                           R6 R7 R8
       80 MOVE                             R8 R6
       81 LOADK                            R9 K6 ["\n"]
       82 MOVE                             R10 R4
       83 LOADK                            R11 K6 ["\n"]
       84 MOVE                             R12 R5
       85 CONCAT                           R7 R8 R12
       86 RETURN                           R7 1

PROTO_15:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["reduce"]
        3 MOVE                             R5 R0
        4 DUPCLOSURE                       R6 K1 [PROTO_13]
        5 CAPTURE                          UPVAL U0
        6 NEWTABLE                         R7 0 0
        8 CALL                             R4 3 1
        9 LENGTH                           R5 R4
       10 LOADN                            R6 0
       11 JUMPIFLT                         R6 R5 ; [+3]
       13 LOADNIL                          R5
       14 RETURN                           R5 1
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K2 ["join"]
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R6 R6 K3 ["map"]
       21 MOVE                             R7 R4
       22 NEWCLOSURE                       R8 P1
       23 CAPTURE                          UPVAL U1
       24 CAPTURE                          VAL R2
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R3
       29 CAPTURE                          UPVAL U4
       30 CAPTURE                          UPVAL U5
       31 CAPTURE                          UPVAL U0
       32 CALL                             R6 2 1
       33 LOADK                            R7 K4 ["\n"]
       34 CALL                             R5 2 -1
       35 RETURN                           R5 -1

PROTO_16:
        0 LOADK                            R4 K0 ["^Error:?%s*$"]
        1 NAMECALL                         R2 R0 K1 ["find"]
        3 CALL                             R2 2 1
        4 NOT                              R1 R2
        5 RETURN                           R1 1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["trimRight"]
        3 GETIMPORT                        R2 K3 [table.concat]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K4 ["filter"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K5 ["split"]
       11 MOVE                             R5 R0
       12 LOADK                            R6 K6 ["\n"]
       13 CALL                             R4 2 1
       14 DUPCLOSURE                       R5 K7 [PROTO_16]
       15 CALL                             R3 2 1
       16 LOADK                            R4 K6 ["\n"]
       17 CALL                             R2 2 -1
       18 CALL                             R1 -1 -1
       19 RETURN                           R1 -1

PROTO_18:
        0 JUMPIF                           R0 ; [+2]
        1 DUPTABLE                         R1 K3 [{[1] = "", ["stack"] = ""}]
        2 RETURN                           R1 1
        3 GETUPVAL                         R1 0
        4 LOADK                            R2 K4 ["^(?:Error: )?([\\s\\S]*?(?=\\n\\s*LoadedCode.*:\\d*)|\\s*.*)([\\s\\S]*)$"]
        5 CALL                             R1 1 1
        6 MOVE                             R4 R0
        7 NAMECALL                         R2 R1 K5 ["exec"]
        9 CALL                             R2 2 1
       10 JUMPIF                           R2 ; [+4]
       11 GETIMPORT                        R3 K7 [error]
       13 LOADK                            R4 K8 ["If you hit this error, the regex above is buggy."]
       14 CALL                             R3 1 0
       15 GETUPVAL                         R3 1
       16 GETTABLEN                        R4 R2 2
       17 CALL                             R3 1 1
       18 GETUPVAL                         R4 1
       19 GETTABLEN                        R5 R2 3
       20 CALL                             R4 1 1
       21 DUPTABLE                         R5 K9 [{"message", "stack"}]
       22 SETTABLEKS                       R3 R5 K0 ["message"]
       24 SETTABLEKS                       R4 R5 K2 ["stack"]
       26 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R1 R0 K2 ["Parent"]
        5 GETIMPORT                        R2 K4 [require]
        7 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
        9 CALL                             R2 1 1
       10 GETTABLEKS                       R3 R2 K6 ["Array"]
       12 GETTABLEKS                       R4 R2 K7 ["Boolean"]
       14 GETTABLEKS                       R5 R2 K8 ["Error"]
       16 GETTABLEKS                       R6 R2 K9 ["String"]
       18 GETIMPORT                        R7 K4 [require]
       20 GETTABLEKS                       R8 R1 K10 ["RegExp"]
       22 CALL                             R7 1 1
       23 NEWTABLE                         R8 8 0
       25 GETIMPORT                        R9 K4 [require]
       27 GETTABLEKS                       R10 R1 K11 ["ChalkLua"]
       29 CALL                             R9 1 1
       30 GETIMPORT                        R10 K4 [require]
       32 GETTABLEKS                       R11 R1 K12 ["JestTypes"]
       34 CALL                             R10 1 1
       35 GETIMPORT                        R11 K4 [require]
       37 GETTABLEKS                       R12 R1 K13 ["PrettyFormat"]
       39 CALL                             R11 1 1
       40 GETTABLEKS                       R11 R11 K14 ["format"]
       42 GETIMPORT                        R12 K4 [require]
       44 GETTABLEKS                       R13 R1 K15 ["RobloxShared"]
       46 CALL                             R12 1 1
       47 GETTABLEKS                       R13 R12 K16 ["normalizePromiseError"]
       49 GETTABLEKS                       R14 R12 K17 ["cleanLoadStringStack"]
       51 LOADNIL                          R15
       52 LOADNIL                          R16
       53 LOADNIL                          R17
       54 GETTABLEKS                       R18 R9 K18 ["bold"]
       56 LOADK                            R19 K19 ["● "]
       57 CALL                             R18 1 1
       58 GETTABLEKS                       R19 R9 K20 ["dim"]
       60 DUPCLOSURE                       R20 K21 [PROTO_0]
       61 SETTABLEKS                       R20 R8 K22 ["indentAllLines"]
       63 DUPCLOSURE                       R21 K23 [PROTO_1]
       64 CAPTURE                          VAL R6
       65 DUPCLOSURE                       R22 K24 [PROTO_2]
       66 CAPTURE                          VAL R21
       67 DUPTABLE                         R23 K26 [{"test"}]
       68 DUPCLOSURE                       R24 K27 [PROTO_3]
       69 SETTABLEKS                       R24 R23 K25 ["test"]
       71 DUPCLOSURE                       R24 K28 [PROTO_4]
       72 NEWCLOSURE                       R25 P5
       73 CAPTURE                          VAL R4
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R13
       76 CAPTURE                          VAL R11
       77 CAPTURE                          REF R17
       78 CAPTURE                          VAL R6
       79 CAPTURE                          REF R15
       80 CAPTURE                          VAL R23
       81 CAPTURE                          VAL R18
       82 SETTABLEKS                       R25 R8 K29 ["formatExecError"]
       84 DUPCLOSURE                       R26 K30 [PROTO_7]
       85 CAPTURE                          VAL R3
       86 DUPCLOSURE                       R27 K31 [PROTO_8]
       87 CAPTURE                          VAL R14
       88 DUPCLOSURE                       R16 K32 [PROTO_9]
       89 CAPTURE                          VAL R26
       90 SETTABLEKS                       R16 R8 K33 ["getStackTraceLines"]
       92 NEWCLOSURE                       R15 P9
       93 CAPTURE                          REF R16
       94 CAPTURE                          VAL R3
       95 CAPTURE                          VAL R4
       96 CAPTURE                          VAL R6
       97 CAPTURE                          VAL R14
       98 SETTABLEKS                       R15 R8 K34 ["formatStackTrace"]
      100 NEWCLOSURE                       R28 P10
      101 CAPTURE                          VAL R3
      102 CAPTURE                          REF R17
      103 CAPTURE                          VAL R19
      104 CAPTURE                          REF R15
      105 CAPTURE                          VAL R9
      106 CAPTURE                          VAL R18
      107 SETTABLEKS                       R28 R8 K35 ["formatResultsErrors"]
      109 DUPCLOSURE                       R29 K36 [PROTO_17]
      110 CAPTURE                          VAL R6
      111 CAPTURE                          VAL R3
      112 DUPCLOSURE                       R17 K37 [PROTO_18]
      113 CAPTURE                          VAL R7
      114 CAPTURE                          VAL R29
      115 SETTABLEKS                       R17 R8 K38 ["separateMessageFromStack"]
      117 CLOSEUPVALS                      R15
      118 RETURN                           R8 1
