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
        0 ORK                              R1 R0 K0 [""]
        1 LOADK                            R3 K1 ["^%s*(.-)%s*$"]
        2 NAMECALL                         R1 R1 K2 ["match"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_2:
        0 LOADK                            R3 K0 ["%s*at.*%(?:%d*:%d*%)?"]
        1 NAMECALL                         R1 R0 K1 ["find"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+5]
        5 LOADK                            R3 K2 ["%s*at.*%(?native%)?"]
        6 NAMECALL                         R1 R0 K1 ["find"]
        8 CALL                             R1 2 1
        9 JUMPIFNOT                        R1 ; [+6]
       10 ORK                              R1 R0 K3 [""]
       11 LOADK                            R3 K4 ["^%s*(.-)%s*$"]
       12 NAMECALL                         R1 R1 K5 ["match"]
       14 CALL                             R1 2 1
       15 RETURN                           R1 1
       16 RETURN                           R0 1

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
        0 JUMPIFEQKNIL                     R0 ; [+10]
        2 JUMPIFEQKS                       R0 K0 [""] ; [+8]
        4 FASTCALL1                        TYPEOF R0 ; [+3]
        5 MOVE                             R6 R0
        6 GETIMPORT                        R5 K2 [typeof]
        8 CALL                             R5 1 1
        9 JUMPIFNOTEQKS                    R5 K3 ["number"] ; [+18]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K4 ["new"]
       14 LOADK                            R6 K5 ["Expected an Error, but \"%s\" was thrown"]
       15 FASTCALL1                        TOSTRING R0 ; [+3]
       16 MOVE                             R9 R0
       17 GETIMPORT                        R8 K7 [tostring]
       19 CALL                             R8 1 1
       20 NAMECALL                         R6 R6 K8 ["format"]
       22 CALL                             R6 2 -1
       23 CALL                             R5 -1 1
       24 MOVE                             R0 R5
       25 LOADK                            R5 K0 [""]
       26 SETTABLEKS                       R5 R0 K9 ["stack"]
       28 LOADNIL                          R5
       29 LOADNIL                          R6
       30 FASTCALL1                        TYPEOF R0 ; [+3]
       31 MOVE                             R8 R0
       32 GETIMPORT                        R7 K2 [typeof]
       34 CALL                             R7 1 1
       35 JUMPIFEQKS                       R7 K10 ["string"] ; [+3]
       37 JUMPIFNOTEQKNIL                  R0 ; [+9]
       39 JUMPIFEQKNIL                     R0 ; [+3]
       41 JUMPIFNOTEQKS                    R0 K0 [""] ; [+2]
       43 LOADK                            R0 K11 ["EMPTY ERROR"]
       44 LOADK                            R5 K0 [""]
       45 MOVE                             R6 R0
       46 JUMP                             ; [+30]
       47 GETTABLEKS                       R7 R0 K12 ["kind"]
       49 JUMPIFNOTEQKS                    R7 K13 ["ExecutionError"] ; [+5]
       51 GETUPVAL                         R7 1
       52 MOVE                             R8 R0
       53 CALL                             R7 1 1
       54 MOVE                             R0 R7
       55 GETTABLEKS                       R5 R0 K14 ["message"]
       57 GETTABLEKS                       R8 R0 K9 ["stack"]
       59 FASTCALL1                        TYPEOF R8 ; [+2]
       60 GETIMPORT                        R7 K2 [typeof]
       62 CALL                             R7 1 1
       63 JUMPIFNOTEQKS                    R7 K10 ["string"] ; [+4]
       65 GETTABLEKS                       R6 R0 K9 ["stack"]
       67 JUMP                             ; [+9]
       68 LOADK                            R7 K15 ["thrown: %s"]
       69 GETUPVAL                         R9 2
       70 MOVE                             R10 R0
       71 DUPTABLE                         R11 K18 [{["maxDepth"] = 3}]
       72 CALL                             R9 2 -1
       73 NAMECALL                         R7 R7 K8 ["format"]
       75 CALL                             R7 -1 1
       76 MOVE                             R6 R7
       77 GETUPVAL                         R7 3
       78 JUMPIFEQKS                       R6 K0 [""] ; [+3]
       80 MOVE                             R8 R6
       81 JUMP                             ; [+1]
       82 LOADK                            R8 K0 [""]
       83 CALL                             R7 1 1
       84 GETTABLEKS                       R6 R7 K9 ["stack"]
       86 GETIMPORT                        R8 K20 [string.find]
       88 GETTABLEKS                       R9 R7 K14 ["message"]
       90 MOVE                             R11 R5
       91 ORK                              R12 R11 K0 [""]
       92 LOADK                            R14 K21 ["^%s*(.-)%s*$"]
       93 NAMECALL                         R12 R12 K22 ["match"]
       95 CALL                             R12 2 1
       96 MOVE                             R10 R12
       97 LOADN                            R11 1
       98 LOADB                            R12 1
       99 CALL                             R8 4 1
      100 JUMPIFEQKNIL                     R8 ; [+3]
      102 GETTABLEKS                       R5 R7 K14 ["message"]
      104 MOVE                             R8 R5
      105 MOVE                             R5 R8
      106 MOVE                             R8 R5
      107 GETIMPORT                        R9 K24 [string.split]
      109 MOVE                             R10 R8
      110 LOADK                            R11 K25 ["\n"]
      111 CALL                             R9 2 1
      112 MOVE                             R10 R9
      113 LOADNIL                          R11
      114 LOADNIL                          R12
      115 FORGPREP                         R10
      116 LOADK                            R16 K26 ["    "]
      117 MOVE                             R17 R14
      118 CONCAT                           R15 R16 R17
      119 SETTABLE                         R15 R9 R13
      120 FORGLOOP                         R10 2 ; [-5]
      122 GETIMPORT                        R10 K29 [table.concat]
      124 MOVE                             R11 R9
      125 LOADK                            R12 K25 ["\n"]
      126 CALL                             R10 2 1
      127 MOVE                             R5 R10
      128 JUMPIFEQKS                       R6 K0 [""] ; [+13]
      130 GETTABLEKS                       R8 R2 K30 ["noStackTrace"]
      132 JUMPIF                           R8 ; [+9]
      133 LOADK                            R8 K25 ["\n"]
      134 GETUPVAL                         R9 4
      135 MOVE                             R10 R6
      136 MOVE                             R11 R1
      137 MOVE                             R12 R2
      138 MOVE                             R13 R3
      139 CALL                             R9 4 1
      140 CONCAT                           R6 R8 R9
      141 JUMP                             ; [+1]
      142 LOADK                            R6 K0 [""]
      143 FASTCALL1                        TYPEOF R6 ; [+3]
      144 MOVE                             R9 R6
      145 GETIMPORT                        R8 K2 [typeof]
      147 CALL                             R8 1 1
      148 JUMPIFNOTEQKS                    R8 K10 ["string"] ; [+13]
      150 GETUPVAL                         R8 5
      151 MOVE                             R10 R5
      152 NAMECALL                         R8 R8 K31 ["test"]
      154 CALL                             R8 2 1
      155 JUMPIFNOT                        R8 ; [+19]
      156 GETUPVAL                         R8 5
      157 MOVE                             R10 R6
      158 NAMECALL                         R8 R8 K31 ["test"]
      160 CALL                             R8 2 1
      161 JUMPIFNOT                        R8 ; [+13]
      162 LOADK                            R8 K15 ["thrown: %s"]
      163 GETUPVAL                         R11 2
      164 MOVE                             R12 R0
      165 DUPTABLE                         R13 K18 [{["maxDepth"] = 3}]
      166 CALL                             R11 2 -1
      167 FASTCALL                         TOSTRING ; [+2]
      168 GETIMPORT                        R10 K7 [tostring]
      170 CALL                             R10 -1 1
      171 NAMECALL                         R8 R8 K8 ["format"]
      173 CALL                             R8 2 1
      174 MOVE                             R5 R8
      175 LOADNIL                          R8
      176 JUMPIFNOT                        R4 ; [+13]
      177 LOADK                            R9 K32 [" %s"]
      178 MOVE                             R12 R5
      179 ORK                              R13 R12 K0 [""]
      180 LOADK                            R15 K21 ["^%s*(.-)%s*$"]
      181 NAMECALL                         R13 R13 K22 ["match"]
      183 CALL                             R13 2 1
      184 MOVE                             R11 R13
      185 NAMECALL                         R9 R9 K8 ["format"]
      187 CALL                             R9 2 1
      188 MOVE                             R8 R9
      189 JUMP                             ; [+7]
      190 LOADK                            R9 K33 ["%s\n\n%s"]
      191 LOADK                            R11 K34 ["Test suite failed to run"]
      192 MOVE                             R12 R5
      193 NAMECALL                         R9 R9 K8 ["format"]
      195 CALL                             R9 3 1
      196 MOVE                             R8 R9
      197 LOADK                            R10 K35 ["  "]
      198 GETUPVAL                         R11 6
      199 MOVE                             R12 R8
      200 MOVE                             R13 R6
      201 LOADK                            R14 K25 ["\n"]
      202 CONCAT                           R9 R10 R14
      203 RETURN                           R9 1

PROTO_6:
        0 LOADN                            R2 0
        1 NEWTABLE                         R3 0 0
        3 MOVE                             R4 R0
        4 LOADNIL                          R5
        5 LOADNIL                          R6
        6 FORGPREP                         R4
        7 LOADB                            R9 1
        8 LOADK                            R12 K0 ["^%s+at <anonymous>.*$"]
        9 NAMECALL                         R10 R8 K1 ["find"]
       11 CALL                             R10 2 1
       12 JUMPIFNOT                        R10 ; [+2]
       13 LOADB                            R9 0
       14 JUMP                             ; [+57]
       15 LOADK                            R12 K2 ["^%s+at Promise %(<anonymous>%).*$"]
       16 NAMECALL                         R10 R8 K1 ["find"]
       18 CALL                             R10 2 1
       19 JUMPIF                           R10 ; [+5]
       20 LOADK                            R12 K3 ["^%s+at new Promise %(<anonymous>%).*$"]
       21 NAMECALL                         R10 R8 K1 ["find"]
       23 CALL                             R10 2 1
       24 JUMPIFNOT                        R10 ; [+2]
       25 LOADB                            R9 0
       26 JUMP                             ; [+45]
       27 LOADK                            R12 K4 ["^%s+at Generator.next %(<anonymous>%).*$"]
       28 NAMECALL                         R10 R8 K1 ["find"]
       30 CALL                             R10 2 1
       31 JUMPIFNOT                        R10 ; [+2]
       32 LOADB                            R9 0
       33 JUMP                             ; [+38]
       34 LOADK                            R12 K5 ["^%s+at next %(native%).*$"]
       35 NAMECALL                         R10 R8 K1 ["find"]
       37 CALL                             R10 2 1
       38 JUMPIFNOT                        R10 ; [+2]
       39 LOADB                            R9 0
       40 JUMP                             ; [+31]
       41 LOADK                            R12 K6 ["%s*at.*%(?:%d*:%d*%)?"]
       42 NAMECALL                         R10 R8 K1 ["find"]
       44 CALL                             R10 2 1
       45 JUMPIFNOT                        R10 ; [+26]
       46 LOADK                            R12 K7 ["%s*at.*%(?native%)?"]
       47 NAMECALL                         R10 R8 K1 ["find"]
       49 CALL                             R10 2 1
       50 JUMPIF                           R10 ; [+1]
       51 JUMP                             ; [+20]
       52 LOADK                            R12 K8 ["%s+at(.jasmine%-)"]
       53 NAMECALL                         R10 R8 K1 ["find"]
       55 CALL                             R10 2 1
       56 JUMPIF                           R10 ; [+5]
       57 LOADK                            R12 K9 ["%s+at(%s+jasmine%.buildExpectationResult)"]
       58 NAMECALL                         R10 R8 K1 ["find"]
       60 CALL                             R10 2 1
       61 JUMPIFNOT                        R10 ; [+2]
       62 LOADB                            R9 0
       63 JUMP                             ; [+8]
       64 ADDK                             R2 R2 K10 [1]
       65 JUMPIFNOTEQKN                    R2 K10 [1] ; [+2]
       67 JUMP                             ; [+4]
       68 GETTABLEKS                       R10 R1 K11 ["noStackTrace"]
       70 JUMPIFNOT                        R10 ; [+1]
       71 LOADB                            R9 0
       72 JUMPIFNOT                        R9 ; [+7]
       73 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       75 MOVE                             R11 R3
       76 MOVE                             R12 R8
       77 GETIMPORT                        R10 K14 [table.insert]
       79 CALL                             R10 2 0
       80 FORGLOOP                         R4 2 ; [-74]
       82 RETURN                           R3 1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R2
        2 CALL                             R3 1 -1
        3 RETURN                           R3 -1

PROTO_8:
        0 JUMPIFNOTEQKNIL                  R1 ; [+3]
        2 DUPTABLE                         R2 K3 [{[1] = False, ["noStackTrace"] = False}]
        3 MOVE                             R1 R2
        4 GETUPVAL                         R2 0
        5 GETIMPORT                        R3 K6 [string.split]
        7 MOVE                             R4 R0
        8 LOADK                            R5 K7 ["\n"]
        9 CALL                             R3 2 1
       10 MOVE                             R4 R1
       11 CALL                             R2 2 1
       12 GETTABLEKS                       R3 R1 K8 ["stackDepth"]
       14 JUMPIFNOT                        R3 ; [+34]
       15 GETTABLEKS                       R3 R1 K8 ["stackDepth"]
       17 LOADN                            R4 0
       18 JUMPIFNOTLT                      R4 R3 ; [+30]
       20 LENGTH                           R3 R2
       21 GETTABLEKS                       R4 R1 K8 ["stackDepth"]
       23 JUMPIFNOTLT                      R4 R3 ; [+25]
       25 GETIMPORT                        R3 K11 [table.move]
       27 MOVE                             R4 R2
       28 LOADN                            R5 1
       29 GETTABLEKS                       R6 R1 K8 ["stackDepth"]
       31 LOADN                            R7 1
       32 NEWTABLE                         R8 0 0
       34 CALL                             R3 5 1
       35 MOVE                             R5 R3
       36 LOADK                            R6 K12 ["      ... %d more lines truncated"]
       37 LENGTH                           R9 R2
       38 GETTABLEKS                       R10 R1 K8 ["stackDepth"]
       40 SUB                              R8 R9 R10
       41 NAMECALL                         R6 R6 K13 ["format"]
       43 CALL                             R6 2 -1
       44 FASTCALL                         TABLE_INSERT ; [+2]
       45 GETIMPORT                        R4 K15 [table.insert]
       47 CALL                             R4 -1 0
       48 RETURN                           R3 1
       49 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R2
        3 CALL                             R4 2 1
        4 LOADNIL                          R5
        5 JUMPIFNOT                        R3 ; [+1]
        6 LOADK                            R5 K0 ["unsupported"]
        7 NEWTABLE                         R6 0 0
        9 MOVE                             R7 R4
       10 LOADNIL                          R8
       11 LOADNIL                          R9
       12 FORGPREP                         R7
       13 JUMPIFEQKNIL                     R11 ; [+33]
       15 JUMPIFEQKS                       R11 K1 [""] ; [+31]
       17 LOADK                            R15 K2 ["      "]
       18 MOVE                             R17 R5
       19 LOADK                            R21 K3 ["%s*at.*%(?:%d*:%d*%)?"]
       20 NAMECALL                         R19 R11 K4 ["find"]
       22 CALL                             R19 2 1
       23 JUMPIF                           R19 ; [+5]
       24 LOADK                            R21 K5 ["%s*at.*%(?native%)?"]
       25 NAMECALL                         R19 R11 K4 ["find"]
       27 CALL                             R19 2 1
       28 JUMPIFNOT                        R19 ; [+6]
       29 ORK                              R18 R11 K1 [""]
       30 LOADK                            R20 K6 ["^%s*(.-)%s*$"]
       31 NAMECALL                         R18 R18 K7 ["match"]
       33 CALL                             R18 2 1
       34 JUMP                             ; [+1]
       35 MOVE                             R18 R11
       36 GETUPVAL                         R19 1
       37 MOVE                             R20 R18
       38 CALL                             R19 1 1
       39 MOVE                             R16 R19
       40 CONCAT                           R14 R15 R16
       41 FASTCALL2                        TABLE_INSERT R6 R14 ; [+4]
       43 MOVE                             R13 R6
       44 GETIMPORT                        R12 K10 [table.insert]
       46 CALL                             R12 2 0
       47 FORGLOOP                         R7 2 ; [-35]
       49 GETIMPORT                        R7 K12 [table.concat]
       51 MOVE                             R8 R6
       52 LOADK                            R9 K13 ["\n"]
       53 CALL                             R7 2 1
       54 GETIMPORT                        R8 K16 [string.format]
       56 LOADK                            R9 K17 ["\n%s"]
       57 MOVE                             R10 R7
       58 CALL                             R8 2 -1
       59 RETURN                           R8 -1

PROTO_10:
        0 NEWTABLE                         R4 0 0
        2 MOVE                             R5 R0
        3 LOADNIL                          R6
        4 LOADNIL                          R7
        5 FORGPREP                         R5
        6 GETTABLEKS                       R10 R9 K0 ["failureMessages"]
        8 LOADNIL                          R11
        9 LOADNIL                          R12
       10 FORGPREP                         R10
       11 DUPTABLE                         R17 K3 [{"content", "result"}]
       12 MOVE                             R18 R14
       13 SETTABLEKS                       R18 R17 K1 ["content"]
       15 SETTABLEKS                       R9 R17 K2 ["result"]
       17 FASTCALL2                        TABLE_INSERT R4 R17 ; [+4]
       19 MOVE                             R16 R4
       20 GETIMPORT                        R15 K6 [table.insert]
       22 CALL                             R15 2 0
       23 FORGLOOP                         R10 2 ; [-13]
       25 FORGLOOP                         R5 2 ; [-20]
       27 LENGTH                           R5 R4
       28 JUMPIFNOTEQKN                    R5 K7 [0] ; [+3]
       30 LOADNIL                          R5
       31 RETURN                           R5 1
       32 NEWTABLE                         R5 0 0
       34 MOVE                             R6 R4
       35 LOADNIL                          R7
       36 LOADNIL                          R8
       37 FORGPREP                         R6
       38 GETTABLEKS                       R11 R10 K2 ["result"]
       40 GETTABLEKS                       R12 R10 K1 ["content"]
       42 GETUPVAL                         R13 0
       43 MOVE                             R14 R12
       44 CALL                             R13 1 1
       45 GETTABLEKS                       R14 R13 K8 ["message"]
       47 GETTABLEKS                       R15 R13 K9 ["stack"]
       49 GETTABLEKS                       R16 R2 K10 ["noStackTrace"]
       51 JUMPIFNOT                        R16 ; [+2]
       52 LOADK                            R15 K11 [""]
       53 JUMP                             ; [+11]
       54 GETUPVAL                         R18 1
       55 GETUPVAL                         R19 2
       56 MOVE                             R20 R15
       57 MOVE                             R21 R1
       58 MOVE                             R22 R2
       59 MOVE                             R23 R3
       60 CALL                             R19 4 -1
       61 CALL                             R18 -1 1
       62 MOVE                             R16 R18
       63 LOADK                            R17 K12 ["\n"]
       64 CONCAT                           R15 R16 R17
       65 MOVE                             R16 R14
       66 GETIMPORT                        R17 K15 [string.split]
       68 MOVE                             R18 R16
       69 LOADK                            R19 K12 ["\n"]
       70 CALL                             R17 2 1
       71 MOVE                             R18 R17
       72 LOADNIL                          R19
       73 LOADNIL                          R20
       74 FORGPREP                         R18
       75 LOADK                            R24 K16 ["    "]
       76 MOVE                             R25 R22
       77 CONCAT                           R23 R24 R25
       78 SETTABLE                         R23 R17 R21
       79 FORGLOOP                         R18 2 ; [-5]
       81 GETIMPORT                        R18 K18 [table.concat]
       83 MOVE                             R19 R17
       84 LOADK                            R20 K12 ["\n"]
       85 CALL                             R18 2 1
       86 MOVE                             R14 R18
       87 GETUPVAL                         R19 3
       88 GETTABLEKS                       R19 R19 K19 ["bold"]
       90 GETUPVAL                         R20 3
       91 GETTABLEKS                       R20 R20 K20 ["red"]
       93 LOADK                            R22 K21 ["  "]
       94 GETUPVAL                         R23 4
       95 GETIMPORT                        R27 K18 [table.concat]
       97 GETTABLEKS                       R28 R11 K22 ["ancestorTitles"]
       99 LOADK                            R29 K23 [" › "]
      100 CALL                             R27 2 1
      101 MOVE                             R24 R27
      102 GETTABLEKS                       R28 R11 K22 ["ancestorTitles"]
      104 LENGTH                           R27 R28
      105 LOADN                            R28 0
      106 JUMPIFNOTLT                      R28 R27 ; [+3]
      108 LOADK                            R25 K23 [" › "]
      109 JUMP                             ; [+1]
      110 LOADK                            R25 K11 [""]
      111 GETTABLEKS                       R26 R11 K24 ["title"]
      113 CONCAT                           R21 R22 R26
      114 CALL                             R20 1 -1
      115 CALL                             R19 -1 1
      116 MOVE                             R17 R19
      117 LOADK                            R18 K12 ["\n"]
      118 CONCAT                           R16 R17 R18
      119 MOVE                             R20 R16
      120 LOADK                            R21 K12 ["\n"]
      121 MOVE                             R22 R14
      122 LOADK                            R23 K12 ["\n"]
      123 MOVE                             R24 R15
      124 CONCAT                           R19 R20 R24
      125 FASTCALL2                        TABLE_INSERT R5 R19 ; [+4]
      127 MOVE                             R18 R5
      128 GETIMPORT                        R17 K6 [table.insert]
      130 CALL                             R17 2 0
      131 FORGLOOP                         R6 2 ; [-94]
      133 GETIMPORT                        R6 K18 [table.concat]
      135 MOVE                             R7 R5
      136 LOADK                            R8 K12 ["\n"]
      137 CALL                             R6 2 -1
      138 RETURN                           R6 -1

PROTO_11:
        0 GETIMPORT                        R1 K2 [string.split]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["\n"]
        4 CALL                             R1 2 1
        5 NEWTABLE                         R2 0 0
        7 MOVE                             R3 R1
        8 LOADNIL                          R4
        9 LOADNIL                          R5
       10 FORGPREP                         R3
       11 LOADK                            R10 K4 ["^Error:?%s*$"]
       12 NAMECALL                         R8 R7 K5 ["find"]
       14 CALL                             R8 2 1
       15 JUMPIF                           R8 ; [+7]
       16 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       18 MOVE                             R9 R2
       19 MOVE                             R10 R7
       20 GETIMPORT                        R8 K8 [table.insert]
       22 CALL                             R8 2 0
       23 FORGLOOP                         R3 2 ; [-13]
       25 GETIMPORT                        R3 K10 [table.concat]
       27 MOVE                             R4 R2
       28 LOADK                            R5 K3 ["\n"]
       29 CALL                             R3 2 1
       30 LOADK                            R6 K11 ["^(.-)%s*$"]
       31 NAMECALL                         R4 R3 K12 ["match"]
       33 CALL                             R4 2 1
       34 RETURN                           R4 1

PROTO_12:
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
        7 GETTABLEKS                       R3 R1 K5 ["RegExp"]
        9 CALL                             R2 1 1
       10 GETIMPORT                        R3 K4 [require]
       12 GETTABLEKS                       R4 R1 K6 ["ChalkLua"]
       14 CALL                             R3 1 1
       15 GETIMPORT                        R4 K4 [require]
       17 GETTABLEKS                       R5 R1 K7 ["JestTypes"]
       19 CALL                             R4 1 1
       20 GETTABLEKS                       R5 R4 K8 ["Error"]
       22 GETIMPORT                        R6 K4 [require]
       24 GETTABLEKS                       R7 R1 K9 ["PrettyFormat"]
       26 CALL                             R6 1 1
       27 GETTABLEKS                       R6 R6 K10 ["format"]
       29 GETIMPORT                        R7 K4 [require]
       31 GETTABLEKS                       R8 R1 K11 ["RobloxShared"]
       33 CALL                             R7 1 1
       34 GETTABLEKS                       R8 R7 K12 ["normalizePromiseError"]
       36 GETTABLEKS                       R9 R7 K13 ["cleanLoadStringStack"]
       38 LOADNIL                          R10
       39 LOADNIL                          R11
       40 LOADNIL                          R12
       41 GETTABLEKS                       R13 R3 K14 ["bold"]
       43 LOADK                            R14 K15 ["● "]
       44 CALL                             R13 1 1
       45 GETTABLEKS                       R14 R3 K16 ["dim"]
       47 DUPCLOSURE                       R15 K17 [PROTO_0]
       48 DUPCLOSURE                       R16 K18 [PROTO_1]
       49 DUPCLOSURE                       R17 K19 [PROTO_2]
       50 DUPTABLE                         R18 K21 [{"test"}]
       51 DUPCLOSURE                       R19 K22 [PROTO_3]
       52 SETTABLEKS                       R19 R18 K20 ["test"]
       54 DUPCLOSURE                       R19 K23 [PROTO_4]
       55 NEWCLOSURE                       R20 P5
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R8
       58 CAPTURE                          VAL R6
       59 CAPTURE                          REF R12
       60 CAPTURE                          REF R10
       61 CAPTURE                          VAL R18
       62 CAPTURE                          VAL R13
       63 DUPCLOSURE                       R21 K24 [PROTO_6]
       64 DUPCLOSURE                       R22 K25 [PROTO_7]
       65 CAPTURE                          VAL R9
       66 DUPCLOSURE                       R11 K26 [PROTO_8]
       67 CAPTURE                          VAL R21
       68 NEWCLOSURE                       R10 P9
       69 CAPTURE                          REF R11
       70 CAPTURE                          VAL R9
       71 NEWCLOSURE                       R23 P10
       72 CAPTURE                          REF R12
       73 CAPTURE                          VAL R14
       74 CAPTURE                          REF R10
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R13
       77 DUPCLOSURE                       R24 K27 [PROTO_11]
       78 DUPCLOSURE                       R12 K28 [PROTO_12]
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R24
       81 DUPTABLE                         R25 K35 [{"indentAllLines", "formatExecError", "getStackTraceLines", "formatStackTrace", "formatResultsErrors", "separateMessageFromStack"}]
       82 SETTABLEKS                       R15 R25 K29 ["indentAllLines"]
       84 SETTABLEKS                       R20 R25 K30 ["formatExecError"]
       86 SETTABLEKS                       R11 R25 K31 ["getStackTraceLines"]
       88 SETTABLEKS                       R10 R25 K32 ["formatStackTrace"]
       90 SETTABLEKS                       R23 R25 K33 ["formatResultsErrors"]
       92 SETTABLEKS                       R12 R25 K34 ["separateMessageFromStack"]
       94 CLOSEUPVALS                      R10
       95 RETURN                           R25 1
