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
       40 GETUPVAL                         R4 4
       41 GETTABLEKS                       R4 R4 K8 ["bgYellowBright"]
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
       40 GETUPVAL                         R4 4
       41 GETTABLEKS                       R4 R4 K8 ["bgWhiteBright"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["reduce"]
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
        3 JUMPIFNOT                        R3 ; [+49]
        4 GETUPVAL                         R3 0
        5 MOVE                             R4 R1
        6 CALL                             R3 1 1
        7 JUMPIFNOT                        R3 ; [+45]
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
       26 DUPTABLE                         R6 K14 [{["aAnnotation"] = "Expected properties", ["aColor"], ["bAnnotation"] = "Received value", ["bColor"], ["changeLineTrailingSpaceColor"], ["commonLineTrailingSpaceColor"], ["emptyFirstOrLastLinePlaceholder"], ["expand"], ["includeChangeCounts"] = True}]
       27 GETUPVAL                         R7 4
       28 SETTABLEKS                       R7 R6 K4 ["aColor"]
       30 GETUPVAL                         R7 5
       31 SETTABLEKS                       R7 R6 K7 ["bColor"]
       33 GETUPVAL                         R7 6
       34 GETTABLEKS                       R7 R7 K15 ["bgYellow"]
       36 SETTABLEKS                       R7 R6 K8 ["changeLineTrailingSpaceColor"]
       38 GETUPVAL                         R7 6
       39 GETTABLEKS                       R7 R7 K15 ["bgYellow"]
       41 SETTABLEKS                       R7 R6 K9 ["commonLineTrailingSpaceColor"]
       43 GETIMPORT                        R7 K18 [utf8.char]
       45 LOADN                            R8 8629
       46 CALL                             R7 1 1
       47 SETTABLEKS                       R7 R6 K10 ["emptyFirstOrLastLinePlaceholder"]
       49 SETTABLEKS                       R2 R6 K11 ["expand"]
       51 CALL                             R3 3 -1
       52 RETURN                           R3 -1
       53 GETUPVAL                         R3 7
       54 LOADK                            R4 K3 ["Expected properties"]
       55 LOADK                            R5 K6 ["Received value"]
       56 CALL                             R3 2 1
       57 MOVE                             R10 R3
       58 LOADK                            R11 K3 ["Expected properties"]
       59 CALL                             R10 1 1
       60 MOVE                             R5 R10
       61 GETUPVAL                         R10 4
       62 GETUPVAL                         R11 8
       63 MOVE                             R12 R0
       64 CALL                             R11 1 -1
       65 CALL                             R10 -1 1
       66 MOVE                             R6 R10
       67 LOADK                            R7 K0 ["\n"]
       68 MOVE                             R10 R3
       69 LOADK                            R11 K6 ["Received value"]
       70 CALL                             R10 1 1
       71 MOVE                             R8 R10
       72 GETUPVAL                         R9 5
       73 GETUPVAL                         R10 8
       74 MOVE                             R11 R1
       75 CALL                             R10 1 -1
       76 CALL                             R9 -1 1
       77 CONCAT                           R4 R5 R9
       78 RETURN                           R4 1

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
        2 DUPTABLE                         R6 K12 [{[1] = "Snapshot", ["aColor"], ["bAnnotation"] = "Received", ["bColor"], ["changeLineTrailingSpaceColor"], ["commonLineTrailingSpaceColor"], ["emptyFirstOrLastLinePlaceholder"], ["expand"], ["includeChangeCounts"] = True}]
        3 SETTABLEKS                       R4 R6 K2 ["aColor"]
        5 SETTABLEKS                       R5 R6 K5 ["bColor"]
        7 GETUPVAL                         R7 2
        8 SETTABLEKS                       R7 R6 K6 ["changeLineTrailingSpaceColor"]
       10 GETUPVAL                         R7 3
       11 GETTABLEKS                       R7 R7 K13 ["bgYellow"]
       13 SETTABLEKS                       R7 R6 K7 ["commonLineTrailingSpaceColor"]
       15 GETIMPORT                        R7 K16 [utf8.char]
       17 LOADN                            R8 8629
       18 CALL                             R7 1 1
       19 SETTABLEKS                       R7 R6 K8 ["emptyFirstOrLastLinePlaceholder"]
       21 SETTABLEKS                       R3 R6 K9 ["expand"]
       23 FASTCALL1                        TYPEOF R2 ; [+3]
       24 MOVE                             R8 R2
       25 GETIMPORT                        R7 K18 [typeof]
       27 CALL                             R7 1 1
       28 JUMPIFNOTEQKS                    R7 K19 ["string"] ; [+157]
       30 LENGTH                           R7 R0
       31 LOADN                            R8 2
       32 JUMPIFNOTLE                      R8 R7 ; [+127]
       34 GETUPVAL                         R7 4
       35 GETTABLEKS                       R7 R7 K20 ["startsWith"]
       37 MOVE                             R8 R0
       38 LOADK                            R9 K21 ["\""]
       39 CALL                             R7 2 1
       40 JUMPIFNOT                        R7 ; [+119]
       41 GETUPVAL                         R7 4
       42 GETTABLEKS                       R7 R7 K22 ["endsWith"]
       44 MOVE                             R8 R0
       45 LOADK                            R9 K21 ["\""]
       46 CALL                             R7 2 1
       47 JUMPIFNOT                        R7 ; [+112]
       48 GETUPVAL                         R7 5
       49 MOVE                             R8 R2
       50 CALL                             R7 1 1
       51 JUMPIFNOTEQ                      R1 R7 ; [+108]
       53 LOADK                            R9 K23 ["\n"]
       54 NAMECALL                         R7 R0 K24 ["find"]
       56 CALL                             R7 2 1
       57 JUMPIF                           R7 ; [+97]
       58 LOADK                            R9 K23 ["\n"]
       59 NAMECALL                         R7 R1 K24 ["find"]
       61 CALL                             R7 2 1
       62 JUMPIF                           R7 ; [+92]
       63 MOVE                             R7 R0
       64 MOVE                             R8 R1
       65 LENGTH                           R10 R0
       66 SUBK                             R9 R10 K25 [2]
       67 LOADN                            R10 20000
       68 JUMPIFNOTLE                      R9 R10 ; [+64]
       70 LENGTH                           R10 R1
       71 SUBK                             R9 R10 K25 [2]
       72 LOADN                            R10 20000
       73 JUMPIFNOTLE                      R9 R10 ; [+59]
       75 GETUPVAL                         R9 6
       76 LOADN                            R12 2
       77 LOADN                            R13 -2
       78 FASTCALL3                        STRING_SUB R0 R12 R13
       80 MOVE                             R11 R0
       81 GETIMPORT                        R10 K27 [string.sub]
       83 CALL                             R10 3 1
       84 LOADN                            R13 2
       85 LOADN                            R14 -2
       86 FASTCALL3                        STRING_SUB R1 R13 R14
       88 MOVE                             R12 R1
       89 GETIMPORT                        R11 K27 [string.sub]
       91 CALL                             R11 3 1
       92 LOADB                            R12 1
       93 CALL                             R9 3 1
       94 GETUPVAL                         R10 7
       95 GETTABLEKS                       R10 R10 K28 ["some"]
       97 MOVE                             R11 R9
       98 DUPCLOSURE                       R12 K29 [PROTO_10]
       99 CAPTURE                          UPVAL U8
      100 CALL                             R10 2 1
      101 LOADK                            R11 K21 ["\""]
      102 GETUPVAL                         R14 9
      103 GETUPVAL                         R15 7
      104 GETTABLEKS                       R15 R15 K30 ["reduce"]
      106 MOVE                             R16 R9
      107 NEWCLOSURE                       R17 P1
      108 CAPTURE                          UPVAL U8
      109 CAPTURE                          VAL R14
      110 CAPTURE                          VAL R10
      111 CAPTURE                          UPVAL U10
      112 LOADK                            R18 K31 [""]
      113 CALL                             R15 3 1
      114 MOVE                             R12 R15
      115 LOADK                            R13 K21 ["\""]
      116 CONCAT                           R7 R11 R13
      117 LOADK                            R11 K21 ["\""]
      118 GETUPVAL                         R14 11
      119 GETUPVAL                         R15 7
      120 GETTABLEKS                       R15 R15 K30 ["reduce"]
      122 MOVE                             R16 R9
      123 NEWCLOSURE                       R17 P1
      124 CAPTURE                          UPVAL U8
      125 CAPTURE                          VAL R14
      126 CAPTURE                          VAL R10
      127 CAPTURE                          UPVAL U10
      128 LOADK                            R18 K31 [""]
      129 CALL                             R15 3 1
      130 MOVE                             R12 R15
      131 LOADK                            R13 K21 ["\""]
      132 CONCAT                           R8 R11 R13
      133 GETUPVAL                         R9 12
      134 LOADK                            R10 K1 ["Snapshot"]
      135 LOADK                            R11 K4 ["Received"]
      136 CALL                             R9 2 1
      137 MOVE                             R16 R9
      138 LOADK                            R17 K1 ["Snapshot"]
      139 CALL                             R16 1 1
      140 MOVE                             R11 R16
      141 MOVE                             R16 R4
      142 MOVE                             R17 R7
      143 CALL                             R16 1 1
      144 MOVE                             R12 R16
      145 LOADK                            R13 K23 ["\n"]
      146 MOVE                             R16 R9
      147 LOADK                            R17 K4 ["Received"]
      148 CALL                             R16 1 1
      149 MOVE                             R14 R16
      150 MOVE                             R15 R5
      151 MOVE                             R16 R8
      152 CALL                             R15 1 1
      153 CONCAT                           R10 R11 R15
      154 RETURN                           R10 1
      155 GETUPVAL                         R7 13
      156 MOVE                             R8 R0
      157 CALL                             R7 1 1
      158 MOVE                             R0 R7
      159 MOVE                             R1 R2
      160 LENGTH                           R7 R0
      161 LOADN                            R8 20000
      162 JUMPIFNOTLE                      R7 R8 ; [+11]
      164 LENGTH                           R7 R1
      165 LOADN                            R8 20000
      166 JUMPIFNOTLE                      R7 R8 ; [+7]
      168 GETUPVAL                         R7 14
      169 MOVE                             R8 R0
      170 MOVE                             R9 R1
      171 MOVE                             R10 R6
      172 CALL                             R7 3 -1
      173 RETURN                           R7 -1
      174 GETUPVAL                         R7 15
      175 LOADK                            R10 K23 ["\n"]
      176 NAMECALL                         R8 R0 K32 ["split"]
      178 CALL                             R8 2 1
      179 LOADK                            R11 K23 ["\n"]
      180 NAMECALL                         R9 R1 K32 ["split"]
      182 CALL                             R9 2 1
      183 MOVE                             R10 R6
      184 CALL                             R7 3 -1
      185 RETURN                           R7 -1
      186 GETUPVAL                         R7 16
      187 MOVE                             R8 R2
      188 CALL                             R7 1 1
      189 JUMPIFNOT                        R7 ; [+37]
      190 LOADK                            R9 K23 ["\n"]
      191 NAMECALL                         R7 R0 K32 ["split"]
      193 CALL                             R7 2 1
      194 LOADK                            R10 K23 ["\n"]
      195 NAMECALL                         R8 R1 K32 ["split"]
      197 CALL                             R8 2 1
      198 GETUPVAL                         R9 17
      199 MOVE                             R10 R2
      200 LOADN                            R11 0
      201 CALL                             R9 2 1
      202 JUMPIFEQ                         R9 R1 ; [+18]
      204 GETUPVAL                         R10 18
      205 MOVE                             R11 R7
      206 CALL                             R10 1 1
      207 JUMPIFEQKNIL                     R10 ; [+13]
      209 LOADK                            R13 K23 ["\n"]
      210 NAMECALL                         R11 R9 K32 ["split"]
      212 CALL                             R11 2 1
      213 GETUPVAL                         R12 19
      214 MOVE                             R13 R7
      215 MOVE                             R14 R8
      216 MOVE                             R15 R10
      217 MOVE                             R16 R11
      218 MOVE                             R17 R6
      219 CALL                             R12 5 -1
      220 RETURN                           R12 -1
      221 GETUPVAL                         R10 15
      222 MOVE                             R11 R7
      223 MOVE                             R12 R8
      224 MOVE                             R13 R6
      225 CALL                             R10 3 -1
      226 RETURN                           R10 -1
      227 GETUPVAL                         R7 12
      228 LOADK                            R8 K1 ["Snapshot"]
      229 LOADK                            R9 K4 ["Received"]
      230 CALL                             R7 2 1
      231 MOVE                             R14 R7
      232 LOADK                            R15 K1 ["Snapshot"]
      233 CALL                             R14 1 1
      234 MOVE                             R9 R14
      235 MOVE                             R14 R4
      236 MOVE                             R15 R0
      237 CALL                             R14 1 1
      238 MOVE                             R10 R14
      239 LOADK                            R11 K23 ["\n"]
      240 MOVE                             R14 R7
      241 LOADK                            R15 K4 ["Received"]
      242 CALL                             R14 1 1
      243 MOVE                             R12 R14
      244 MOVE                             R13 R5
      245 MOVE                             R14 R1
      246 CALL                             R13 1 1
      247 CONCAT                           R8 R9 R13
      248 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
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
       25 GETIMPORT                        R8 K4 [require]
       27 GETTABLEKS                       R9 R1 K11 ["RobloxShared"]
       29 CALL                             R8 1 1
       30 GETTABLEKS                       R8 R8 K12 ["expect"]
       32 GETTABLEKS                       R8 R8 K13 ["getObjectSubset"]
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
       79 GETIMPORT                        R27 K4 [require]
       81 GETTABLEKS                       R28 R1 K32 ["PrettyFormat"]
       83 CALL                             R27 1 1
       84 GETTABLEKS                       R27 R27 K33 ["format"]
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
      199 DUPTABLE                         R55 K75 [{["getSnapshotColorForChalkInstance"], ["getReceivedColorForChalkInstance"], ["aSnapshotColor"], ["bReceivedColor"], ["noColor"], ["HINT_ARG"] = "hint", ["SNAPSHOT_ARG"] = "snapshot", ["PROPERTIES_ARG"] = "properties", ["matcherHintFromConfig"], ["printExpected"], ["printReceived"], ["printPropertiesAndReceived"], ["printSnapshotAndReceived"]}]
      200 SETTABLEKS                       R43 R55 K59 ["getSnapshotColorForChalkInstance"]
      202 SETTABLEKS                       R44 R55 K60 ["getReceivedColorForChalkInstance"]
      204 SETTABLEKS                       R45 R55 K61 ["aSnapshotColor"]
      206 SETTABLEKS                       R46 R55 K62 ["bReceivedColor"]
      208 SETTABLEKS                       R47 R55 K63 ["noColor"]
      210 SETTABLEKS                       R48 R55 K70 ["matcherHintFromConfig"]
      212 SETTABLEKS                       R51 R55 K71 ["printExpected"]
      214 SETTABLEKS                       R52 R55 K72 ["printReceived"]
      216 SETTABLEKS                       R53 R55 K73 ["printPropertiesAndReceived"]
      218 SETTABLEKS                       R54 R55 K74 ["printSnapshotAndReceived"]
      220 RETURN                           R55 1
