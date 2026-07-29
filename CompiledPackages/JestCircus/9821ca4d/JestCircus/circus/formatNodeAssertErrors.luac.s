PROTO_0:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["isArray"]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 JUMPIFNOT                        R2 ; [+57]
        7 LOADN                            R4 1
        8 LOADN                            R5 2
        9 FASTCALL3                        TABLE_UNPACK R0 R4 R5
       11 MOVE                             R3 R0
       12 GETIMPORT                        R2 K3 [table.unpack]
       14 CALL                             R2 3 2
       15 JUMPIFNOTEQKNIL                  R2 ; [+3]
       17 MOVE                             R1 R3
       18 JUMP                             ; [+46]
       19 GETTABLEKS                       R4 R2 K4 ["kind"]
       21 JUMPIFNOTEQKS                    R4 K5 ["ExecutionError"] ; [+6]
       23 GETUPVAL                         R4 1
       24 MOVE                             R5 R2
       25 CALL                             R4 1 1
       26 MOVE                             R1 R4
       27 JUMP                             ; [+37]
       28 GETUPVAL                         R4 2
       29 GETTABLEKS                       R4 R4 K6 ["toJSBoolean"]
       31 GETTABLEKS                       R5 R2 K7 ["stack"]
       33 CALL                             R4 1 1
       34 JUMPIF                           R4 ; [+27]
       35 MOVE                             R1 R3
       36 GETUPVAL                         R5 2
       37 GETTABLEKS                       R5 R5 K6 ["toJSBoolean"]
       39 GETTABLEKS                       R6 R2 K8 ["message"]
       41 CALL                             R5 1 1
       42 JUMPIFNOT                        R5 ; [+3]
       43 GETTABLEKS                       R4 R2 K8 ["message"]
       45 JUMP                             ; [+8]
       46 LOADK                            R4 K9 ["thrown: %s"]
       47 GETUPVAL                         R6 3
       48 MOVE                             R7 R2
       49 DUPTABLE                         R8 K12 [{["maxDepth"] = 3}]
       50 CALL                             R6 2 -1
       51 NAMECALL                         R4 R4 K13 ["format"]
       53 CALL                             R4 -1 1
       54 SETTABLEKS                       R4 R1 K8 ["message"]
       56 GETUPVAL                         R4 4
       57 GETTABLEKS                       R4 R4 K14 ["__recalculateStacktrace"]
       59 MOVE                             R5 R1
       60 CALL                             R4 1 0
       61 JUMP                             ; [+3]
       62 MOVE                             R1 R2
       63 JUMP                             ; [+1]
       64 MOVE                             R1 R0
       65 GETUPVAL                         R3 5
       66 MOVE                             R4 R1
       67 CALL                             R3 1 1
       68 JUMPIFNOT                        R3 ; [+13]
       69 DUPTABLE                         R2 K15 [{"message"}]
       70 GETUPVAL                         R3 6
       71 MOVE                             R4 R1
       72 DUPTABLE                         R5 K17 [{"expand"}]
       73 GETUPVAL                         R6 7
       74 GETTABLEKS                       R6 R6 K16 ["expand"]
       76 SETTABLEKS                       R6 R5 K16 ["expand"]
       78 CALL                             R3 2 1
       79 SETTABLEKS                       R3 R2 K8 ["message"]
       81 RETURN                           R2 1
       82 MOVE                             R2 R0
       83 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R3 R1 K0 ["name"]
        2 JUMPIFNOTEQKS                    R3 K1 ["test_done"] ; [+22]
        4 GETTABLEKS                       R3 R1 K2 ["test"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["map"]
        9 GETTABLEKS                       R5 R1 K2 ["test"]
       11 GETTABLEKS                       R5 R5 K4 ["errors"]
       13 NEWCLOSURE                       R6 P0
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          UPVAL U5
       20 CAPTURE                          UPVAL U6
       21 CAPTURE                          VAL R2
       22 CALL                             R4 2 1
       23 SETTABLEKS                       R4 R3 K4 ["errors"]
       25 RETURN                           R0 0

PROTO_2:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["string"] ; [+13]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K3 ["toJSBoolean"]
       10 GETUPVAL                         R5 1
       11 GETTABLE                         R4 R5 R0
       12 CALL                             R3 1 1
       13 JUMPIFNOT                        R3 ; [+3]
       14 GETUPVAL                         R3 1
       15 GETTABLE                         R2 R3 R0
       16 RETURN                           R2 1
       17 MOVE                             R2 R0
       18 RETURN                           R2 1
       19 LOADK                            R4 K4 ["%.doesNotThrow"]
       20 NAMECALL                         R2 R1 K5 ["match"]
       22 CALL                             R2 2 1
       23 JUMPIFEQKNIL                     R2 ; [+3]
       25 LOADK                            R2 K6 ["doesNotThrow"]
       26 RETURN                           R2 1
       27 LOADK                            R4 K7 ["%.throws"]
       28 NAMECALL                         R2 R1 K5 ["match"]
       30 CALL                             R2 2 1
       31 JUMPIFEQKNIL                     R2 ; [+3]
       33 LOADK                            R2 K8 ["throws"]
       34 RETURN                           R2 1
       35 LOADK                            R4 K9 ["%.fail"]
       36 NAMECALL                         R2 R1 K5 ["match"]
       38 CALL                             R2 2 1
       39 JUMPIFEQKNIL                     R2 ; [+3]
       41 LOADK                            R2 K10 ["fail"]
       42 RETURN                           R2 1
       43 LOADK                            R2 K11 [""]
       44 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LOADK                            R3 K0 [""]
        3 CALL                             R1 2 1
        4 GETUPVAL                         R3 1
        5 GETTABLE                         R2 R3 R1
        6 FASTCALL1                        TYPEOF R0 ; [+3]
        7 MOVE                             R5 R0
        8 GETIMPORT                        R4 K2 [typeof]
       10 CALL                             R4 1 1
       11 JUMPIFNOTEQKS                    R4 K3 ["string"] ; [+15]
       13 LOADK                            R3 K4 ["%s to:\n"]
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R6 R6 K5 ["toJSBoolean"]
       17 MOVE                             R7 R2
       18 CALL                             R6 1 1
       19 JUMPIFNOT                        R6 ; [+2]
       20 MOVE                             R5 R2
       21 JUMP                             ; [+1]
       22 MOVE                             R5 R1
       23 NAMECALL                         R3 R3 K6 ["format"]
       25 CALL                             R3 2 1
       26 RETURN                           R3 1
       27 LOADK                            R3 K0 [""]
       28 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["toJSBoolean"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIFNOT                        R2 ; [+28]
        6 GETUPVAL                         R6 1
        7 GETTABLEKS                       R6 R6 K1 ["dim"]
        9 LOADK                            R7 K2 ["assert"]
       10 CALL                             R6 1 1
       11 MOVE                             R2 R6
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R6 R6 K1 ["dim"]
       15 LOADK                            R8 K3 ["."]
       16 MOVE                             R9 R0
       17 LOADK                            R10 K4 ["("]
       18 CONCAT                           R7 R8 R10
       19 CALL                             R6 1 1
       20 MOVE                             R3 R6
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R6 R6 K5 ["red"]
       24 LOADK                            R7 K6 ["function"]
       25 CALL                             R6 1 1
       26 MOVE                             R4 R6
       27 GETUPVAL                         R5 1
       28 GETTABLEKS                       R5 R5 K1 ["dim"]
       30 LOADK                            R6 K7 [")"]
       31 CALL                             R5 1 1
       32 CONCAT                           R1 R2 R5
       33 RETURN                           R1 1
       34 LOADK                            R1 K8 [""]
       35 RETURN                           R1 1

PROTO_5:
        0 LOADK                            R3 K0 [""]
        1 JUMPIFNOTEQKS                    R0 K1 ["=="] ; [+28]
        3 JUMPIFNOTEQKB                    R2 TRUE ; [+26]
        5 GETUPVAL                         R8 0
        6 GETTABLEKS                       R8 R8 K2 ["dim"]
        8 LOADK                            R9 K3 ["assert"]
        9 CALL                             R8 1 1
       10 MOVE                             R4 R8
       11 GETUPVAL                         R8 0
       12 GETTABLEKS                       R8 R8 K2 ["dim"]
       14 LOADK                            R9 K4 ["("]
       15 CALL                             R8 1 1
       16 MOVE                             R5 R8
       17 GETUPVAL                         R8 0
       18 GETTABLEKS                       R8 R8 K5 ["red"]
       20 LOADK                            R9 K6 ["received"]
       21 CALL                             R8 1 1
       22 MOVE                             R6 R8
       23 GETUPVAL                         R7 0
       24 GETTABLEKS                       R7 R7 K2 ["dim"]
       26 LOADK                            R8 K7 [")"]
       27 CALL                             R7 1 1
       28 CONCAT                           R3 R4 R7
       29 RETURN                           R3 1
       30 GETUPVAL                         R4 1
       31 GETTABLEKS                       R4 R4 K8 ["toJSBoolean"]
       33 MOVE                             R5 R1
       34 CALL                             R4 1 1
       35 JUMPIFNOT                        R4 ; [+39]
       36 GETUPVAL                         R10 0
       37 GETTABLEKS                       R10 R10 K2 ["dim"]
       39 LOADK                            R11 K3 ["assert"]
       40 CALL                             R10 1 1
       41 MOVE                             R4 R10
       42 GETUPVAL                         R10 0
       43 GETTABLEKS                       R10 R10 K2 ["dim"]
       45 LOADK                            R12 K9 ["."]
       46 MOVE                             R13 R1
       47 LOADK                            R14 K4 ["("]
       48 CONCAT                           R11 R12 R14
       49 CALL                             R10 1 1
       50 MOVE                             R5 R10
       51 GETUPVAL                         R10 0
       52 GETTABLEKS                       R10 R10 K5 ["red"]
       54 LOADK                            R11 K6 ["received"]
       55 CALL                             R10 1 1
       56 MOVE                             R6 R10
       57 GETUPVAL                         R10 0
       58 GETTABLEKS                       R10 R10 K2 ["dim"]
       60 LOADK                            R11 K10 [", "]
       61 CALL                             R10 1 1
       62 MOVE                             R7 R10
       63 GETUPVAL                         R10 0
       64 GETTABLEKS                       R10 R10 K11 ["green"]
       66 LOADK                            R11 K12 ["expected"]
       67 CALL                             R10 1 1
       68 MOVE                             R8 R10
       69 GETUPVAL                         R9 0
       70 GETTABLEKS                       R9 R9 K2 ["dim"]
       72 LOADK                            R10 K7 [")"]
       73 CALL                             R9 1 1
       74 CONCAT                           R3 R4 R9
       75 RETURN                           R3 1

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["expected"]
        2 GETTABLEKS                       R3 R0 K1 ["actual"]
        4 GETTABLEKS                       R4 R0 K2 ["generatedMessage"]
        6 GETTABLEKS                       R5 R0 K3 ["message"]
        8 GETTABLEKS                       R6 R0 K4 ["operator"]
       10 GETTABLEKS                       R7 R0 K5 ["stack"]
       12 GETUPVAL                         R8 0
       13 MOVE                             R9 R2
       14 MOVE                             R10 R3
       15 MOVE                             R11 R1
       16 CALL                             R8 3 1
       17 GETUPVAL                         R10 1
       18 GETTABLEKS                       R10 R10 K6 ["toJSBoolean"]
       20 MOVE                             R11 R4
       21 CALL                             R10 1 1
       22 NOT                              R9 R10
       23 GETUPVAL                         R10 2
       24 MOVE                             R11 R6
       25 MOVE                             R12 R7
       26 CALL                             R10 2 1
       27 GETUPVAL                         R11 3
       28 MOVE                             R12 R5
       29 CALL                             R11 1 1
       30 MOVE                             R14 R11
       31 LOADK                            R15 K7 [""]
       32 LOADN                            R16 1
       33 NAMECALL                         R12 R7 K8 ["gsub"]
       35 CALL                             R12 4 1
       36 LOADK                            R15 K9 ["^AssertionError([^\n]*)"]
       37 LOADK                            R16 K7 [""]
       38 NAMECALL                         R13 R12 K8 ["gsub"]
       40 CALL                             R13 3 1
       41 LOADK                            R16 K10 ["^Error([^\n]*)"]
       42 LOADK                            R17 K7 [""]
       43 NAMECALL                         R14 R13 K8 ["gsub"]
       45 CALL                             R14 3 1
       46 JUMPIFNOTEQKS                    R10 K11 ["doesNotThrow"] ; [+50]
       48 GETUPVAL                         R22 4
       49 GETUPVAL                         R23 5
       50 MOVE                             R24 R10
       51 CALL                             R23 1 -1
       52 CALL                             R22 -1 1
       53 MOVE                             R16 R22
       54 GETUPVAL                         R22 6
       55 GETTABLEKS                       R22 R22 K12 ["reset"]
       57 LOADK                            R23 K13 ["Expected the function not to throw an error.\n"]
       58 CALL                             R22 1 1
       59 MOVE                             R17 R22
       60 GETUPVAL                         R22 6
       61 GETTABLEKS                       R22 R22 K12 ["reset"]
       63 LOADK                            R23 K14 ["Instead, it threw:\n"]
       64 CALL                             R22 1 1
       65 MOVE                             R18 R22
       66 LOADK                            R22 K15 ["  %s"]
       67 GETUPVAL                         R24 7
       68 MOVE                             R25 R3
       69 CALL                             R24 1 -1
       70 NAMECALL                         R22 R22 K16 ["format"]
       72 CALL                             R22 -1 1
       73 MOVE                             R19 R22
       74 GETUPVAL                         R22 6
       75 GETTABLEKS                       R22 R22 K12 ["reset"]
       77 GETUPVAL                         R24 1
       78 GETTABLEKS                       R24 R24 K6 ["toJSBoolean"]
       80 MOVE                             R25 R9
       81 CALL                             R24 1 1
       82 JUMPIFNOT                        R24 ; [+8]
       83 LOADK                            R24 K17 ["\n\nMessage:\n  "]
       84 FASTCALL1                        TOSTRING R5 ; [+3]
       85 MOVE                             R26 R5
       86 GETIMPORT                        R25 K19 [tostring]
       88 CALL                             R25 1 1
       89 CONCAT                           R23 R24 R25
       90 JUMP                             ; [+1]
       91 LOADK                            R23 K7 [""]
       92 CALL                             R22 1 1
       93 MOVE                             R20 R22
       94 MOVE                             R21 R14
       95 CONCAT                           R15 R16 R21
       96 RETURN                           R15 1
       97 JUMPIFNOTEQKS                    R10 K20 ["throws"] ; [+33]
       99 GETUPVAL                         R21 4
      100 GETUPVAL                         R22 5
      101 MOVE                             R23 R10
      102 CALL                             R22 1 -1
      103 CALL                             R21 -1 1
      104 MOVE                             R16 R21
      105 GETUPVAL                         R21 6
      106 GETTABLEKS                       R21 R21 K12 ["reset"]
      108 LOADK                            R22 K21 ["Expected the function to throw an error.\n"]
      109 CALL                             R21 1 1
      110 MOVE                             R17 R21
      111 GETUPVAL                         R21 6
      112 GETTABLEKS                       R21 R21 K12 ["reset"]
      114 LOADK                            R22 K22 ["But it didn't throw anything."]
      115 CALL                             R21 1 1
      116 MOVE                             R18 R21
      117 GETUPVAL                         R21 6
      118 GETTABLEKS                       R21 R21 K12 ["reset"]
      120 JUMPIFNOT                        R9 ; [+4]
      121 LOADK                            R23 K17 ["\n\nMessage:\n  "]
      122 MOVE                             R24 R5
      123 CONCAT                           R22 R23 R24
      124 JUMP                             ; [+1]
      125 LOADK                            R22 K7 [""]
      126 CALL                             R21 1 1
      127 MOVE                             R19 R21
      128 MOVE                             R20 R14
      129 CONCAT                           R15 R16 R20
      130 RETURN                           R15 1
      131 JUMPIFNOTEQKS                    R10 K23 ["fail"] ; [+27]
      133 GETUPVAL                         R19 4
      134 GETUPVAL                         R20 8
      135 MOVE                             R21 R6
      136 MOVE                             R22 R10
      137 MOVE                             R23 R2
      138 CALL                             R20 3 -1
      139 CALL                             R19 -1 1
      140 MOVE                             R16 R19
      141 GETUPVAL                         R19 6
      142 GETTABLEKS                       R19 R19 K12 ["reset"]
      144 JUMPIFNOT                        R9 ; [+8]
      145 LOADK                            R21 K24 ["Message:\n  "]
      146 FASTCALL1                        TOSTRING R5 ; [+3]
      147 MOVE                             R23 R5
      148 GETIMPORT                        R22 K19 [tostring]
      150 CALL                             R22 1 1
      151 CONCAT                           R20 R21 R22
      152 JUMP                             ; [+1]
      153 LOADK                            R20 K7 [""]
      154 CALL                             R19 1 1
      155 MOVE                             R17 R19
      156 MOVE                             R18 R14
      157 CONCAT                           R15 R16 R18
      158 RETURN                           R15 1
      159 GETUPVAL                         R24 4
      160 GETUPVAL                         R25 8
      161 MOVE                             R26 R6
      162 MOVE                             R27 R10
      163 MOVE                             R28 R2
      164 CALL                             R25 3 -1
      165 CALL                             R24 -1 1
      166 MOVE                             R16 R24
      167 GETUPVAL                         R24 6
      168 GETTABLEKS                       R24 R24 K12 ["reset"]
      170 LOADK                            R25 K25 ["Expected value %s"]
      171 GETUPVAL                         R27 9
      172 MOVE                             R28 R6
      173 CALL                             R27 1 -1
      174 NAMECALL                         R25 R25 K16 ["format"]
      176 CALL                             R25 -1 -1
      177 CALL                             R24 -1 1
      178 MOVE                             R17 R24
      179 LOADK                            R24 K26 ["  %s\n"]
      180 GETUPVAL                         R26 10
      181 MOVE                             R27 R2
      182 CALL                             R26 1 -1
      183 NAMECALL                         R24 R24 K16 ["format"]
      185 CALL                             R24 -1 1
      186 MOVE                             R18 R24
      187 GETUPVAL                         R24 6
      188 GETTABLEKS                       R24 R24 K12 ["reset"]
      190 LOADK                            R25 K27 ["Received:\n"]
      191 CALL                             R24 1 1
      192 MOVE                             R19 R24
      193 LOADK                            R24 K15 ["  %s"]
      194 GETUPVAL                         R26 7
      195 MOVE                             R27 R3
      196 CALL                             R26 1 -1
      197 NAMECALL                         R24 R24 K16 ["format"]
      199 CALL                             R24 -1 1
      200 MOVE                             R20 R24
      201 GETUPVAL                         R24 6
      202 GETTABLEKS                       R24 R24 K12 ["reset"]
      204 JUMPIFNOT                        R9 ; [+8]
      205 LOADK                            R26 K17 ["\n\nMessage:\n  "]
      206 FASTCALL1                        TOSTRING R5 ; [+3]
      207 MOVE                             R28 R5
      208 GETIMPORT                        R27 K19 [tostring]
      210 CALL                             R27 1 1
      211 CONCAT                           R25 R26 R27
      212 JUMP                             ; [+1]
      213 LOADK                            R25 K7 [""]
      214 CALL                             R24 1 1
      215 MOVE                             R21 R24
      216 GETUPVAL                         R24 1
      217 GETTABLEKS                       R24 R24 K6 ["toJSBoolean"]
      219 MOVE                             R25 R8
      220 CALL                             R24 1 1
      221 JUMPIFNOT                        R24 ; [+9]
      222 JUMPIFEQKNIL                     R8 ; [+8]
      224 LOADK                            R24 K28 ["\n\nDifference:\n\n%s"]
      225 MOVE                             R26 R8
      226 NAMECALL                         R24 R24 K16 ["format"]
      228 CALL                             R24 2 1
      229 MOVE                             R22 R24
      230 JUMP                             ; [+1]
      231 LOADK                            R22 K7 [""]
      232 MOVE                             R23 R14
      233 CONCAT                           R15 R16 R23
      234 RETURN                           R15 1

PROTO_7:
        0 MOVE                             R1 R0
        1 JUMPIFNOT                        R1 ; [+19]
        2 GETUPVAL                         R1 0
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 1
        6 JUMPIF                           R1 ; [+14]
        7 LOADB                            R1 1
        8 GETTABLEKS                       R2 R0 K0 ["name"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K0 ["name"]
       13 JUMPIFEQ                         R2 R3 ; [+7]
       15 GETTABLEKS                       R2 R0 K1 ["code"]
       17 JUMPIFEQKS                       R2 K2 ["ERR_ASSERTION"] ; [+2]
       19 LOADB                            R1 0 +1
       20 LOADB                            R1 1
       21 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["toJSBoolean"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIFNOT                        R2 ; [+9]
        6 FASTCALL1                        TOSTRING R0 ; [+3]
        7 MOVE                             R5 R0
        8 GETIMPORT                        R4 K2 [tostring]
       10 CALL                             R4 1 1
       11 MOVE                             R2 R4
       12 LOADK                            R3 K3 ["\n\n"]
       13 CONCAT                           R1 R2 R3
       14 RETURN                           R1 1
       15 LOADK                            R1 K4 [""]
       16 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R1 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K6 ["Array"]
       16 GETTABLEKS                       R4 R2 K7 ["Boolean"]
       18 GETTABLEKS                       R5 R2 K8 ["instanceof"]
       20 GETIMPORT                        R6 K4 [require]
       22 GETTABLEKS                       R7 R1 K9 ["RobloxShared"]
       24 CALL                             R6 1 1
       25 GETTABLEKS                       R7 R6 K10 ["escapePatternCharacters"]
       27 GETTABLEKS                       R8 R6 K11 ["normalizePromiseError"]
       29 GETTABLEKS                       R9 R2 K12 ["Error"]
       31 GETTABLEKS                       R10 R6 K13 ["cleanLoadStringStack"]
       33 NEWTABLE                         R11 1 0
       35 GETTABLEKS                       R12 R2 K14 ["AssertionError"]
       37 GETIMPORT                        R13 K4 [require]
       39 GETTABLEKS                       R14 R1 K15 ["ChalkLua"]
       41 CALL                             R13 1 1
       42 GETIMPORT                        R14 K4 [require]
       44 GETTABLEKS                       R15 R1 K16 ["JestTypes"]
       46 CALL                             R14 1 1
       47 GETIMPORT                        R15 K4 [require]
       49 GETTABLEKS                       R16 R1 K17 ["JestMatcherUtils"]
       51 CALL                             R15 1 1
       52 GETTABLEKS                       R16 R15 K18 ["diff"]
       54 GETTABLEKS                       R17 R15 K19 ["printExpected"]
       56 GETTABLEKS                       R18 R15 K20 ["printReceived"]
       58 GETIMPORT                        R19 K4 [require]
       60 GETTABLEKS                       R20 R1 K21 ["PrettyFormat"]
       62 CALL                             R19 1 1
       63 GETTABLEKS                       R19 R19 K22 ["format"]
       65 LOADNIL                          R20
       66 LOADNIL                          R21
       67 LOADNIL                          R22
       68 LOADNIL                          R23
       69 LOADNIL                          R24
       70 LOADNIL                          R25
       71 LOADNIL                          R26
       72 LOADNIL                          R27
       73 NEWTABLE                         R28 4 0
       75 LOADK                            R29 K23 ["notEqual"]
       76 SETTABLEKS                       R29 R28 K24 ["!="]
       78 LOADK                            R29 K25 ["notStrictEqual"]
       79 SETTABLEKS                       R29 R28 K26 ["!=="]
       81 LOADK                            R29 K27 ["equal"]
       82 SETTABLEKS                       R29 R28 K28 ["=="]
       84 LOADK                            R29 K29 ["strictEqual"]
       85 SETTABLEKS                       R29 R28 K30 ["==="]
       87 DUPTABLE                         R29 K43 [{["deepEqual"] = "to deeply equal", ["deepStrictEqual"] = "to deeply and strictly equal", ["equal"] = "to be equal", ["notDeepEqual"] = "not to deeply equal", ["notDeepStrictEqual"] = "not to deeply and strictly equal", ["notEqual"] = "to not be equal", ["notStrictEqual"] = "not be strictly equal", ["strictEqual"] = "to strictly be equal"}]
       88 NEWCLOSURE                       R20 P0
       89 CAPTURE                          VAL R3
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R4
       92 CAPTURE                          VAL R19
       93 CAPTURE                          VAL R9
       94 CAPTURE                          REF R26
       95 CAPTURE                          REF R25
       96 DUPCLOSURE                       R21 K44 [PROTO_2]
       97 CAPTURE                          VAL R4
       98 CAPTURE                          VAL R28
       99 NEWCLOSURE                       R22 P2
      100 CAPTURE                          REF R21
      101 CAPTURE                          VAL R29
      102 CAPTURE                          VAL R4
      103 DUPCLOSURE                       R23 K45 [PROTO_4]
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R13
      106 DUPCLOSURE                       R24 K46 [PROTO_5]
      107 CAPTURE                          VAL R13
      108 CAPTURE                          VAL R4
      109 NEWCLOSURE                       R25 P5
      110 CAPTURE                          VAL R16
      111 CAPTURE                          VAL R4
      112 CAPTURE                          REF R21
      113 CAPTURE                          VAL R7
      114 CAPTURE                          REF R27
      115 CAPTURE                          REF R23
      116 CAPTURE                          VAL R13
      117 CAPTURE                          VAL R18
      118 CAPTURE                          REF R24
      119 CAPTURE                          REF R22
      120 CAPTURE                          VAL R17
      121 DUPCLOSURE                       R26 K47 [PROTO_7]
      122 CAPTURE                          VAL R5
      123 CAPTURE                          VAL R12
      124 DUPCLOSURE                       R27 K48 [PROTO_8]
      125 CAPTURE                          VAL R4
      126 SETTABLEKS                       R20 R11 K49 ["default"]
      128 CLOSEUPVALS                      R21
      129 RETURN                           R11 1
