PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["level"]
        2 JUMPIFNOTEQKN                    R1 K1 [3] ; [+22]
        4 GETTABLEKS                       R5 R0 K2 ["rgb"]
        6 GETUPVAL                         R7 0
        7 GETTABLEN                        R6 R7 1
        8 GETUPVAL                         R8 0
        9 GETTABLEN                        R7 R8 2
       10 GETUPVAL                         R9 0
       11 GETTABLEN                        R8 R9 3
       12 CALL                             R5 3 1
       13 MOVE                             R3 R5
       14 GETTABLEKS                       R4 R0 K3 ["bgRgb"]
       16 GETUPVAL                         R6 1
       17 GETTABLEN                        R5 R6 1
       18 GETUPVAL                         R7 1
       19 GETTABLEN                        R6 R7 2
       20 GETUPVAL                         R8 1
       21 GETTABLEN                        R7 R8 3
       22 CALL                             R4 3 1
       23 CONCAT                           R2 R3 R4
       24 RETURN                           R2 1
       25 JUMPIFNOTEQKN                    R1 K4 [2] ; [+12]
       27 GETTABLEKS                       R5 R0 K5 ["ansi256"]
       29 GETUPVAL                         R6 2
       30 CALL                             R5 1 1
       31 MOVE                             R3 R5
       32 GETTABLEKS                       R4 R0 K6 ["bgAnsi256"]
       34 GETUPVAL                         R5 3
       35 CALL                             R4 1 1
       36 CONCAT                           R2 R3 R4
       37 RETURN                           R2 1
       38 GETTABLEKS                       R3 R0 K7 ["magenta"]
       40 GETUPVAL                         R5 4
       41 GETTABLEKS                       R4 R5 K8 ["bgYellowBright"]
       43 CONCAT                           R2 R3 R4
       44 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["level"]
        2 JUMPIFNOTEQKN                    R1 K1 [3] ; [+22]
        4 GETTABLEKS                       R5 R0 K2 ["rgb"]
        6 GETUPVAL                         R7 0
        7 GETTABLEN                        R6 R7 1
        8 GETUPVAL                         R8 0
        9 GETTABLEN                        R7 R8 2
       10 GETUPVAL                         R9 0
       11 GETTABLEN                        R8 R9 3
       12 CALL                             R5 3 1
       13 MOVE                             R3 R5
       14 GETTABLEKS                       R4 R0 K3 ["bgRgb"]
       16 GETUPVAL                         R6 1
       17 GETTABLEN                        R5 R6 1
       18 GETUPVAL                         R7 1
       19 GETTABLEN                        R6 R7 2
       20 GETUPVAL                         R8 1
       21 GETTABLEN                        R7 R8 3
       22 CALL                             R4 3 1
       23 CONCAT                           R2 R3 R4
       24 RETURN                           R2 1
       25 JUMPIFNOTEQKN                    R1 K4 [2] ; [+12]
       27 GETTABLEKS                       R5 R0 K5 ["ansi256"]
       29 GETUPVAL                         R6 2
       30 CALL                             R5 1 1
       31 MOVE                             R3 R5
       32 GETTABLEKS                       R4 R0 K6 ["bgAnsi256"]
       34 GETUPVAL                         R5 3
       35 CALL                             R4 1 1
       36 CONCAT                           R2 R3 R4
       37 RETURN                           R2 1
       38 GETTABLEKS                       R3 R0 K7 ["cyan"]
       40 GETUPVAL                         R5 4
       41 GETTABLEKS                       R4 R5 K8 ["bgWhiteBright"]
       43 CONCAT                           R2 R3 R4
       44 RETURN                           R2 1

PROTO_2:
        0 RETURN                           R0 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["context"]
        2 GETTABLEKS                       R3 R0 K1 ["hint"]
        4 GETTABLEKS                       R4 R0 K2 ["inlineSnapshot"]
        6 GETTABLEKS                       R5 R0 K3 ["matcherName"]
        8 GETTABLEKS                       R6 R0 K4 ["properties"]
       10 DUPTABLE                         R7 K7 [{"isNot", "promise"}]
       11 GETTABLEKS                       R8 R2 K5 ["isNot"]
       13 SETTABLEKS                       R8 R7 K5 ["isNot"]
       15 GETTABLEKS                       R8 R2 K6 ["promise"]
       17 SETTABLEKS                       R8 R7 K6 ["promise"]
       19 JUMPIFNOT                        R1 ; [+3]
       20 GETUPVAL                         R8 0
       21 SETTABLEKS                       R8 R7 K8 ["receivedColor"]
       23 LOADK                            R8 K9 [""]
       24 FASTCALL1                        TYPEOF R6 ; [+3]
       25 MOVE                             R10 R6
       26 GETIMPORT                        R9 K11 [typeof]
       28 CALL                             R9 1 1
       29 JUMPIFNOTEQKS                    R9 K12 ["table"] ; [+42]
       31 LOADK                            R8 K4 ["properties"]
       32 JUMPIFNOT                        R1 ; [+3]
       33 GETUPVAL                         R9 1
       34 SETTABLEKS                       R9 R7 K13 ["expectedColor"]
       36 FASTCALL1                        TYPEOF R3 ; [+3]
       37 MOVE                             R10 R3
       38 GETIMPORT                        R9 K11 [typeof]
       40 CALL                             R9 1 1
       41 JUMPIFNOTEQKS                    R9 K14 ["string"] ; [+11]
       43 LENGTH                           R9 R3
       44 JUMPIFEQKN                       R9 K15 [0] ; [+8]
       46 LOADK                            R9 K1 ["hint"]
       47 SETTABLEKS                       R9 R7 K16 ["secondArgument"]
       49 GETUPVAL                         R9 2
       50 SETTABLEKS                       R9 R7 K17 ["secondArgumentColor"]
       52 JUMP                             ; [+46]
       53 FASTCALL1                        TYPEOF R4 ; [+3]
       54 MOVE                             R10 R4
       55 GETIMPORT                        R9 K11 [typeof]
       57 CALL                             R9 1 1
       58 JUMPIFNOTEQKS                    R9 K14 ["string"] ; [+40]
       60 LOADK                            R9 K18 ["snapshot"]
       61 SETTABLEKS                       R9 R7 K16 ["secondArgument"]
       63 JUMPIFNOT                        R1 ; [+4]
       64 GETUPVAL                         R9 3
       65 SETTABLEKS                       R9 R7 K17 ["secondArgumentColor"]
       67 JUMP                             ; [+31]
       68 GETUPVAL                         R9 1
       69 SETTABLEKS                       R9 R7 K17 ["secondArgumentColor"]
       71 JUMP                             ; [+27]
       72 FASTCALL1                        TYPEOF R3 ; [+3]
       73 MOVE                             R10 R3
       74 GETIMPORT                        R9 K11 [typeof]
       76 CALL                             R9 1 1
       77 JUMPIFNOTEQKS                    R9 K14 ["string"] ; [+9]
       79 LENGTH                           R9 R3
       80 JUMPIFEQKN                       R9 K15 [0] ; [+6]
       82 LOADK                            R8 K1 ["hint"]
       83 GETUPVAL                         R9 2
       84 SETTABLEKS                       R9 R7 K13 ["expectedColor"]
       86 JUMP                             ; [+12]
       87 FASTCALL1                        TYPEOF R4 ; [+3]
       88 MOVE                             R10 R4
       89 GETIMPORT                        R9 K11 [typeof]
       91 CALL                             R9 1 1
       92 JUMPIFNOTEQKS                    R9 K14 ["string"] ; [+6]
       94 LOADK                            R8 K18 ["snapshot"]
       95 JUMPIFNOT                        R1 ; [+3]
       96 GETUPVAL                         R9 3
       97 SETTABLEKS                       R9 R7 K13 ["expectedColor"]
       99 GETUPVAL                         R9 4
      100 MOVE                             R10 R5
      101 LOADNIL                          R11
      102 MOVE                             R12 R8
      103 MOVE                             R13 R7
      104 CALL                             R9 4 -1
      105 RETURN                           R9 -1

PROTO_4:
        0 MOVE                             R2 R0
        1 GETTABLEN                        R3 R1 1
        2 GETUPVAL                         R4 0
        3 JUMPIFNOTEQ                      R3 R4 ; [+5]
        5 MOVE                             R3 R0
        6 GETTABLEN                        R4 R1 2
        7 CONCAT                           R2 R3 R4
        8 RETURN                           R2 1
        9 GETTABLEN                        R3 R1 1
       10 GETUPVAL                         R4 1
       11 JUMPIFNOTEQ                      R3 R4 ; [+12]
       13 GETUPVAL                         R3 2
       14 JUMPIFNOT                        R3 ; [+6]
       15 MOVE                             R3 R2
       16 GETUPVAL                         R4 3
       17 GETTABLEN                        R5 R1 2
       18 CALL                             R4 1 1
       19 CONCAT                           R2 R3 R4
       20 RETURN                           R2 1
       21 MOVE                             R3 R2
       22 GETTABLEN                        R4 R1 2
       23 CONCAT                           R2 R3 R4
       24 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["reduce"]
        3 MOVE                             R4 R0
        4 NEWCLOSURE                       R5 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R1
        7 CAPTURE                          VAL R2
        8 CAPTURE                          UPVAL U2
        9 LOADK                            R6 K1 [""]
       10 CALL                             R3 3 -1
       11 RETURN                           R3 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 JUMPIFNOT                        R2 ; [+10]
        7 FASTCALL1                        TYPEOF R0 ; [+3]
        8 MOVE                             R4 R0
        9 GETIMPORT                        R3 K1 [typeof]
       11 CALL                             R3 1 1
       12 JUMPIFEQKS                       R3 K2 ["string"] ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 RETURN                           R2 1
       17 JUMPIFEQKS                       R1 K3 ["DateTime"] ; [+5]
       19 JUMPIFEQKS                       R1 K4 ["function"] ; [+3]
       21 JUMPIFNOTEQKS                    R1 K5 ["regexp"] ; [+3]
       23 LOADB                            R2 0
       24 RETURN                           R2 1
       25 GETUPVAL                         R2 2
       26 MOVE                             R3 R0
       27 GETUPVAL                         R4 3
       28 CALL                             R2 2 1
       29 JUMPIFNOT                        R2 ; [+2]
       30 LOADB                            R2 0
       31 RETURN                           R2 1
       32 JUMPIFNOTEQKS                    R1 K6 ["table"] ; [+11]
       34 GETTABLEKS                       R3 R0 K7 ["asymmetricMatch"]
       36 FASTCALL1                        TYPEOF R3 ; [+2]
       37 GETIMPORT                        R2 K1 [typeof]
       39 CALL                             R2 1 1
       40 JUMPIFNOTEQKS                    R2 K4 ["function"] ; [+3]
       42 LOADB                            R2 0
       43 RETURN                           R2 1
       44 LOADB                            R2 1
       45 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 -1
        5 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 -1
        5 RETURN                           R1 -1

PROTO_9:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 CALL                             R3 1 1
        3 JUMPIFNOT                        R3 ; [+58]
        4 GETUPVAL                         R3 0
        5 MOVE                             R4 R1
        6 CALL                             R3 1 1
        7 JUMPIFNOT                        R3 ; [+54]
        8 GETUPVAL                         R3 1
        9 GETUPVAL                         R4 2
       10 MOVE                             R5 R0
       11 CALL                             R4 1 1
       12 LOADK                            R6 K0 ["\n"]
       13 NAMECALL                         R4 R4 K1 ["split"]
       15 CALL                             R4 2 1
       16 GETUPVAL                         R5 2
       17 GETUPVAL                         R6 3
       18 MOVE                             R7 R1
       19 MOVE                             R8 R0
       20 CALL                             R6 2 -1
       21 CALL                             R5 -1 1
       22 LOADK                            R7 K0 ["\n"]
       23 NAMECALL                         R5 R5 K1 ["split"]
       25 CALL                             R5 2 1
       26 DUPTABLE                         R6 K11 [{"aAnnotation", "aColor", "bAnnotation", "bColor", "changeLineTrailingSpaceColor", "commonLineTrailingSpaceColor", "emptyFirstOrLastLinePlaceholder", "expand", "includeChangeCounts"}]
       27 LOADK                            R7 K12 ["Expected properties"]
       28 SETTABLEKS                       R7 R6 K2 ["aAnnotation"]
       30 GETUPVAL                         R7 4
       31 SETTABLEKS                       R7 R6 K3 ["aColor"]
       33 LOADK                            R7 K13 ["Received value"]
       34 SETTABLEKS                       R7 R6 K4 ["bAnnotation"]
       36 GETUPVAL                         R7 5
       37 SETTABLEKS                       R7 R6 K5 ["bColor"]
       39 GETUPVAL                         R8 6
       40 GETTABLEKS                       R7 R8 K14 ["bgYellow"]
       42 SETTABLEKS                       R7 R6 K6 ["changeLineTrailingSpaceColor"]
       44 GETUPVAL                         R8 6
       45 GETTABLEKS                       R7 R8 K14 ["bgYellow"]
       47 SETTABLEKS                       R7 R6 K7 ["commonLineTrailingSpaceColor"]
       49 GETIMPORT                        R7 K17 [utf8.char]
       51 LOADN                            R8 181
       52 CALL                             R7 1 1
       53 SETTABLEKS                       R7 R6 K8 ["emptyFirstOrLastLinePlaceholder"]
       55 SETTABLEKS                       R2 R6 K9 ["expand"]
       57 LOADB                            R7 1
       58 SETTABLEKS                       R7 R6 K10 ["includeChangeCounts"]
       60 CALL                             R3 3 -1
       61 RETURN                           R3 -1
       62 GETUPVAL                         R3 7
       63 LOADK                            R4 K12 ["Expected properties"]
       64 LOADK                            R5 K13 ["Received value"]
       65 CALL                             R3 2 1
       66 MOVE                             R10 R3
       67 LOADK                            R11 K12 ["Expected properties"]
       68 CALL                             R10 1 1
       69 MOVE                             R5 R10
       70 GETUPVAL                         R10 4
       71 GETUPVAL                         R11 8
       72 MOVE                             R12 R0
       73 CALL                             R11 1 -1
       74 CALL                             R10 -1 1
       75 MOVE                             R6 R10
       76 LOADK                            R7 K0 ["\n"]
       77 MOVE                             R10 R3
       78 LOADK                            R11 K13 ["Received value"]
       79 CALL                             R10 1 1
       80 MOVE                             R8 R10
       81 GETUPVAL                         R9 5
       82 GETUPVAL                         R10 8
       83 MOVE                             R11 R1
       84 CALL                             R10 1 -1
       85 CALL                             R9 -1 1
       86 CONCAT                           R4 R5 R9
       87 RETURN                           R4 1

PROTO_10:
        0 GETTABLEN                        R2 R0 1
        1 GETUPVAL                         R3 0
        2 JUMPIFEQ                         R2 R3 ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 DUPTABLE                         R6 K9 [{"aAnnotation", "aColor", "bAnnotation", "bColor", "changeLineTrailingSpaceColor", "commonLineTrailingSpaceColor", "emptyFirstOrLastLinePlaceholder", "expand", "includeChangeCounts"}]
        3 LOADK                            R7 K10 ["Snapshot"]
        4 SETTABLEKS                       R7 R6 K0 ["aAnnotation"]
        6 SETTABLEKS                       R4 R6 K1 ["aColor"]
        8 LOADK                            R7 K11 ["Received"]
        9 SETTABLEKS                       R7 R6 K2 ["bAnnotation"]
       11 SETTABLEKS                       R5 R6 K3 ["bColor"]
       13 GETUPVAL                         R7 2
       14 SETTABLEKS                       R7 R6 K4 ["changeLineTrailingSpaceColor"]
       16 GETUPVAL                         R8 3
       17 GETTABLEKS                       R7 R8 K12 ["bgYellow"]
       19 SETTABLEKS                       R7 R6 K5 ["commonLineTrailingSpaceColor"]
       21 GETIMPORT                        R7 K15 [utf8.char]
       23 LOADN                            R8 181
       24 CALL                             R7 1 1
       25 SETTABLEKS                       R7 R6 K6 ["emptyFirstOrLastLinePlaceholder"]
       27 SETTABLEKS                       R3 R6 K7 ["expand"]
       29 LOADB                            R7 1
       30 SETTABLEKS                       R7 R6 K8 ["includeChangeCounts"]
       32 FASTCALL1                        TYPEOF R2 ; [+3]
       33 MOVE                             R8 R2
       34 GETIMPORT                        R7 K17 [typeof]
       36 CALL                             R7 1 1
       37 JUMPIFNOTEQKS                    R7 K18 ["string"] ; [+157]
       39 LENGTH                           R7 R0
       40 LOADN                            R8 2
       41 JUMPIFNOTLE                      R8 R7 ; [+127]
       43 GETUPVAL                         R8 4
       44 GETTABLEKS                       R7 R8 K19 ["startsWith"]
       46 MOVE                             R8 R0
       47 LOADK                            R9 K20 ["\""]
       48 CALL                             R7 2 1
       49 JUMPIFNOT                        R7 ; [+119]
       50 GETUPVAL                         R8 4
       51 GETTABLEKS                       R7 R8 K21 ["endsWith"]
       53 MOVE                             R8 R0
       54 LOADK                            R9 K20 ["\""]
       55 CALL                             R7 2 1
       56 JUMPIFNOT                        R7 ; [+112]
       57 GETUPVAL                         R7 5
       58 MOVE                             R8 R2
       59 CALL                             R7 1 1
       60 JUMPIFNOTEQ                      R1 R7 ; [+108]
       62 LOADK                            R9 K22 ["\n"]
       63 NAMECALL                         R7 R0 K23 ["find"]
       65 CALL                             R7 2 1
       66 JUMPIF                           R7 ; [+97]
       67 LOADK                            R9 K22 ["\n"]
       68 NAMECALL                         R7 R1 K23 ["find"]
       70 CALL                             R7 2 1
       71 JUMPIF                           R7 ; [+92]
       72 MOVE                             R7 R0
       73 MOVE                             R8 R1
       74 LENGTH                           R10 R0
       75 SUBK                             R9 R10 K24 [2]
       76 LOADN                            R10 32
       77 JUMPIFNOTLE                      R9 R10 ; [+64]
       79 LENGTH                           R10 R1
       80 SUBK                             R9 R10 K24 [2]
       81 LOADN                            R10 32
       82 JUMPIFNOTLE                      R9 R10 ; [+59]
       84 GETUPVAL                         R9 6
       85 LOADN                            R12 2
       86 LOADN                            R13 254
       87 FASTCALL3                        STRING_SUB R0 R12 R13
       89 MOVE                             R11 R0
       90 GETIMPORT                        R10 K26 [string.sub]
       92 CALL                             R10 3 1
       93 LOADN                            R13 2
       94 LOADN                            R14 254
       95 FASTCALL3                        STRING_SUB R1 R13 R14
       97 MOVE                             R12 R1
       98 GETIMPORT                        R11 K26 [string.sub]
      100 CALL                             R11 3 1
      101 LOADB                            R12 1
      102 CALL                             R9 3 1
      103 GETUPVAL                         R11 7
      104 GETTABLEKS                       R10 R11 K27 ["some"]
      106 MOVE                             R11 R9
      107 DUPCLOSURE                       R12 K28 [PROTO_10]
      108 CAPTURE                          UPVAL U8
      109 CALL                             R10 2 1
      110 LOADK                            R11 K20 ["\""]
      111 GETUPVAL                         R14 9
      112 GETUPVAL                         R16 7
      113 GETTABLEKS                       R15 R16 K29 ["reduce"]
      115 MOVE                             R16 R9
      116 NEWCLOSURE                       R17 P1
      117 CAPTURE                          UPVAL U8
      118 CAPTURE                          VAL R14
      119 CAPTURE                          VAL R10
      120 CAPTURE                          UPVAL U10
      121 LOADK                            R18 K30 [""]
      122 CALL                             R15 3 1
      123 MOVE                             R12 R15
      124 LOADK                            R13 K20 ["\""]
      125 CONCAT                           R7 R11 R13
      126 LOADK                            R11 K20 ["\""]
      127 GETUPVAL                         R14 11
      128 GETUPVAL                         R16 7
      129 GETTABLEKS                       R15 R16 K29 ["reduce"]
      131 MOVE                             R16 R9
      132 NEWCLOSURE                       R17 P1
      133 CAPTURE                          UPVAL U8
      134 CAPTURE                          VAL R14
      135 CAPTURE                          VAL R10
      136 CAPTURE                          UPVAL U10
      137 LOADK                            R18 K30 [""]
      138 CALL                             R15 3 1
      139 MOVE                             R12 R15
      140 LOADK                            R13 K20 ["\""]
      141 CONCAT                           R8 R11 R13
      142 GETUPVAL                         R9 12
      143 LOADK                            R10 K10 ["Snapshot"]
      144 LOADK                            R11 K11 ["Received"]
      145 CALL                             R9 2 1
      146 MOVE                             R16 R9
      147 LOADK                            R17 K10 ["Snapshot"]
      148 CALL                             R16 1 1
      149 MOVE                             R11 R16
      150 MOVE                             R16 R4
      151 MOVE                             R17 R7
      152 CALL                             R16 1 1
      153 MOVE                             R12 R16
      154 LOADK                            R13 K22 ["\n"]
      155 MOVE                             R16 R9
      156 LOADK                            R17 K11 ["Received"]
      157 CALL                             R16 1 1
      158 MOVE                             R14 R16
      159 MOVE                             R15 R5
      160 MOVE                             R16 R8
      161 CALL                             R15 1 1
      162 CONCAT                           R10 R11 R15
      163 RETURN                           R10 1
      164 GETUPVAL                         R7 13
      165 MOVE                             R8 R0
      166 CALL                             R7 1 1
      167 MOVE                             R0 R7
      168 MOVE                             R1 R2
      169 LENGTH                           R7 R0
      170 LOADN                            R8 32
      171 JUMPIFNOTLE                      R7 R8 ; [+11]
      173 LENGTH                           R7 R1
      174 LOADN                            R8 32
      175 JUMPIFNOTLE                      R7 R8 ; [+7]
      177 GETUPVAL                         R7 14
      178 MOVE                             R8 R0
      179 MOVE                             R9 R1
      180 MOVE                             R10 R6
      181 CALL                             R7 3 -1
      182 RETURN                           R7 -1
      183 GETUPVAL                         R7 15
      184 LOADK                            R10 K22 ["\n"]
      185 NAMECALL                         R8 R0 K31 ["split"]
      187 CALL                             R8 2 1
      188 LOADK                            R11 K22 ["\n"]
      189 NAMECALL                         R9 R1 K31 ["split"]
      191 CALL                             R9 2 1
      192 MOVE                             R10 R6
      193 CALL                             R7 3 -1
      194 RETURN                           R7 -1
      195 GETUPVAL                         R7 16
      196 MOVE                             R8 R2
      197 CALL                             R7 1 1
      198 JUMPIFNOT                        R7 ; [+37]
      199 LOADK                            R9 K22 ["\n"]
      200 NAMECALL                         R7 R0 K31 ["split"]
      202 CALL                             R7 2 1
      203 LOADK                            R10 K22 ["\n"]
      204 NAMECALL                         R8 R1 K31 ["split"]
      206 CALL                             R8 2 1
      207 GETUPVAL                         R9 17
      208 MOVE                             R10 R2
      209 LOADN                            R11 0
      210 CALL                             R9 2 1
      211 JUMPIFEQ                         R9 R1 ; [+18]
      213 GETUPVAL                         R10 18
      214 MOVE                             R11 R7
      215 CALL                             R10 1 1
      216 JUMPIFEQKNIL                     R10 ; [+13]
      218 LOADK                            R13 K22 ["\n"]
      219 NAMECALL                         R11 R9 K31 ["split"]
      221 CALL                             R11 2 1
      222 GETUPVAL                         R12 19
      223 MOVE                             R13 R7
      224 MOVE                             R14 R8
      225 MOVE                             R15 R10
      226 MOVE                             R16 R11
      227 MOVE                             R17 R6
      228 CALL                             R12 5 -1
      229 RETURN                           R12 -1
      230 GETUPVAL                         R10 15
      231 MOVE                             R11 R7
      232 MOVE                             R12 R8
      233 MOVE                             R13 R6
      234 CALL                             R10 3 -1
      235 RETURN                           R10 -1
      236 GETUPVAL                         R7 12
      237 LOADK                            R8 K10 ["Snapshot"]
      238 LOADK                            R9 K11 ["Received"]
      239 CALL                             R7 2 1
      240 MOVE                             R14 R7
      241 LOADK                            R15 K10 ["Snapshot"]
      242 CALL                             R14 1 1
      243 MOVE                             R9 R14
      244 MOVE                             R14 R4
      245 MOVE                             R15 R0
      246 CALL                             R14 1 1
      247 MOVE                             R10 R14
      248 LOADK                            R11 K22 ["\n"]
      249 MOVE                             R14 R7
      250 LOADK                            R15 K11 ["Received"]
      251 CALL                             R14 1 1
      252 MOVE                             R12 R14
      253 MOVE                             R13 R5
      254 MOVE                             R14 R1
      255 CALL                             R13 1 1
      256 CONCAT                           R8 R9 R13
      257 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R2 K6 ["Array"]
       14 GETTABLEKS                       R4 R2 K7 ["Error"]
       16 GETTABLEKS                       R5 R2 K8 ["instanceof"]
       18 GETTABLEKS                       R6 R2 K9 ["String"]
       20 GETIMPORT                        R7 K4 [require]
       22 GETTABLEKS                       R8 R1 K10 ["ChalkLua"]
       24 CALL                             R7 1 1
       25 GETIMPORT                        R10 K4 [require]
       27 GETTABLEKS                       R11 R1 K11 ["RobloxShared"]
       29 CALL                             R10 1 1
       30 GETTABLEKS                       R9 R10 K12 ["expect"]
       32 GETTABLEKS                       R8 R9 K13 ["getObjectSubset"]
       34 GETIMPORT                        R9 K4 [require]
       36 GETTABLEKS                       R10 R1 K14 ["JestDiff"]
       38 CALL                             R9 1 1
       39 GETTABLEKS                       R10 R9 K15 ["DIFF_DELETE"]
       41 GETTABLEKS                       R11 R9 K16 ["DIFF_EQUAL"]
       43 GETTABLEKS                       R12 R9 K17 ["DIFF_INSERT"]
       45 GETTABLEKS                       R13 R9 K18 ["diffLinesUnified"]
       47 GETTABLEKS                       R14 R9 K19 ["diffLinesUnified2"]
       49 GETTABLEKS                       R15 R9 K20 ["diffStringsRaw"]
       51 GETTABLEKS                       R16 R9 K21 ["diffStringsUnified"]
       53 GETIMPORT                        R17 K4 [require]
       55 GETTABLEKS                       R18 R1 K22 ["JestGetType"]
       57 CALL                             R17 1 1
       58 GETTABLEKS                       R18 R17 K23 ["getType"]
       60 GETTABLEKS                       R19 R17 K24 ["isPrimitive"]
       62 GETIMPORT                        R20 K4 [require]
       64 GETTABLEKS                       R21 R1 K25 ["JestMatcherUtils"]
       66 CALL                             R20 1 1
       67 GETTABLEKS                       R21 R20 K26 ["BOLD_WEIGHT"]
       69 GETTABLEKS                       R22 R20 K27 ["EXPECTED_COLOR"]
       71 GETTABLEKS                       R23 R20 K28 ["INVERTED_COLOR"]
       73 GETTABLEKS                       R24 R20 K29 ["RECEIVED_COLOR"]
       75 GETTABLEKS                       R25 R20 K30 ["getLabelPrinter"]
       77 GETTABLEKS                       R26 R20 K31 ["matcherHint"]
       79 GETIMPORT                        R28 K4 [require]
       81 GETTABLEKS                       R29 R1 K32 ["PrettyFormat"]
       83 CALL                             R28 1 1
       84 GETTABLEKS                       R27 R28 K33 ["format"]
       86 GETIMPORT                        R28 K4 [require]
       88 GETTABLEKS                       R29 R0 K34 ["colors"]
       90 CALL                             R28 1 1
       91 GETTABLEKS                       R29 R28 K35 ["aBackground2"]
       93 GETTABLEKS                       R30 R28 K36 ["aBackground3"]
       95 GETTABLEKS                       R31 R28 K37 ["aForeground2"]
       97 GETTABLEKS                       R32 R28 K38 ["aForeground3"]
       99 GETTABLEKS                       R33 R28 K39 ["bBackground2"]
      101 GETTABLEKS                       R34 R28 K40 ["bBackground3"]
      103 GETTABLEKS                       R35 R28 K41 ["bForeground2"]
      105 GETTABLEKS                       R36 R28 K42 ["bForeground3"]
      107 GETIMPORT                        R37 K4 [require]
      109 GETTABLEKS                       R38 R0 K43 ["dedentLines"]
      111 CALL                             R37 1 1
      112 GETIMPORT                        R38 K4 [require]
      114 GETTABLEKS                       R39 R0 K44 ["types"]
      116 CALL                             R38 1 1
      117 GETIMPORT                        R39 K4 [require]
      119 GETTABLEKS                       R40 R0 K45 ["utils"]
      121 CALL                             R39 1 1
      122 GETTABLEKS                       R40 R39 K46 ["deserializeString"]
      124 GETTABLEKS                       R41 R39 K47 ["minify"]
      126 GETTABLEKS                       R42 R39 K48 ["serialize"]
      128 DUPCLOSURE                       R43 K49 [PROTO_0]
      129 CAPTURE                          VAL R32
      130 CAPTURE                          VAL R30
      131 CAPTURE                          VAL R31
      132 CAPTURE                          VAL R29
      133 CAPTURE                          VAL R7
      134 DUPCLOSURE                       R44 K50 [PROTO_1]
      135 CAPTURE                          VAL R36
      136 CAPTURE                          VAL R34
      137 CAPTURE                          VAL R35
      138 CAPTURE                          VAL R33
      139 CAPTURE                          VAL R7
      140 MOVE                             R45 R43
      141 MOVE                             R46 R7
      142 CALL                             R45 1 1
      143 MOVE                             R46 R44
      144 MOVE                             R47 R7
      145 CALL                             R46 1 1
      146 DUPCLOSURE                       R47 K51 [PROTO_2]
      147 DUPCLOSURE                       R48 K52 [PROTO_3]
      148 CAPTURE                          VAL R46
      149 CAPTURE                          VAL R47
      150 CAPTURE                          VAL R21
      151 CAPTURE                          VAL R45
      152 CAPTURE                          VAL R26
      153 DUPCLOSURE                       R49 K53 [PROTO_5]
      154 CAPTURE                          VAL R3
      155 CAPTURE                          VAL R11
      156 CAPTURE                          VAL R23
      157 DUPCLOSURE                       R50 K54 [PROTO_6]
      158 CAPTURE                          VAL R18
      159 CAPTURE                          VAL R19
      160 CAPTURE                          VAL R5
      161 CAPTURE                          VAL R4
      162 DUPCLOSURE                       R51 K55 [PROTO_7]
      163 CAPTURE                          VAL R22
      164 CAPTURE                          VAL R41
      165 DUPCLOSURE                       R52 K56 [PROTO_8]
      166 CAPTURE                          VAL R24
      167 CAPTURE                          VAL R41
      168 DUPCLOSURE                       R53 K57 [PROTO_9]
      169 CAPTURE                          VAL R50
      170 CAPTURE                          VAL R13
      171 CAPTURE                          VAL R42
      172 CAPTURE                          VAL R8
      173 CAPTURE                          VAL R22
      174 CAPTURE                          VAL R24
      175 CAPTURE                          VAL R7
      176 CAPTURE                          VAL R25
      177 CAPTURE                          VAL R41
      178 DUPCLOSURE                       R54 K58 [PROTO_11]
      179 CAPTURE                          VAL R45
      180 CAPTURE                          VAL R46
      181 CAPTURE                          VAL R47
      182 CAPTURE                          VAL R7
      183 CAPTURE                          VAL R6
      184 CAPTURE                          VAL R27
      185 CAPTURE                          VAL R15
      186 CAPTURE                          VAL R3
      187 CAPTURE                          VAL R11
      188 CAPTURE                          VAL R10
      189 CAPTURE                          VAL R23
      190 CAPTURE                          VAL R12
      191 CAPTURE                          VAL R25
      192 CAPTURE                          VAL R40
      193 CAPTURE                          VAL R16
      194 CAPTURE                          VAL R13
      195 CAPTURE                          VAL R50
      196 CAPTURE                          VAL R42
      197 CAPTURE                          VAL R37
      198 CAPTURE                          VAL R14
      199 DUPTABLE                         R55 K72 [{"getSnapshotColorForChalkInstance", "getReceivedColorForChalkInstance", "aSnapshotColor", "bReceivedColor", "noColor", "HINT_ARG", "SNAPSHOT_ARG", "PROPERTIES_ARG", "matcherHintFromConfig", "printExpected", "printReceived", "printPropertiesAndReceived", "printSnapshotAndReceived"}]
      200 SETTABLEKS                       R43 R55 K59 ["getSnapshotColorForChalkInstance"]
      202 SETTABLEKS                       R44 R55 K60 ["getReceivedColorForChalkInstance"]
      204 SETTABLEKS                       R45 R55 K61 ["aSnapshotColor"]
      206 SETTABLEKS                       R46 R55 K62 ["bReceivedColor"]
      208 SETTABLEKS                       R47 R55 K63 ["noColor"]
      210 LOADK                            R56 K73 ["hint"]
      211 SETTABLEKS                       R56 R55 K64 ["HINT_ARG"]
      213 LOADK                            R56 K74 ["snapshot"]
      214 SETTABLEKS                       R56 R55 K65 ["SNAPSHOT_ARG"]
      216 LOADK                            R56 K75 ["properties"]
      217 SETTABLEKS                       R56 R55 K66 ["PROPERTIES_ARG"]
      219 SETTABLEKS                       R48 R55 K67 ["matcherHintFromConfig"]
      221 SETTABLEKS                       R51 R55 K68 ["printExpected"]
      223 SETTABLEKS                       R52 R55 K69 ["printReceived"]
      225 SETTABLEKS                       R53 R55 K70 ["printPropertiesAndReceived"]
      227 SETTABLEKS                       R54 R55 K71 ["printSnapshotAndReceived"]
      229 RETURN                           R55 1
