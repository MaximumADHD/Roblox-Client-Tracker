PROTO_0:
        0 LOADB                            R1 0
        1 JUMPIFEQKNIL                     R0 ; [+20]
        3 LOADB                            R1 1
        4 GETTABLEKS                       R3 R0 K0 ["message"]
        6 FASTCALL1                        TYPEOF R3 ; [+2]
        7 GETIMPORT                        R2 K2 [typeof]
        9 CALL                             R2 1 1
       10 JUMPIFEQKS                       R2 K3 ["string"] ; [+11]
       12 GETTABLEKS                       R3 R0 K0 ["message"]
       14 FASTCALL1                        TYPEOF R3 ; [+2]
       15 GETIMPORT                        R2 K2 [typeof]
       17 CALL                             R2 1 1
       18 JUMPIFEQKS                       R2 K4 ["table"] ; [+2]
       20 LOADB                            R1 0 +1
       21 LOADB                            R1 1
       22 JUMPIFNOT                        R1 ; [+26]
       23 GETTABLEKS                       R3 R0 K5 ["name"]
       25 FASTCALL1                        TYPEOF R3 ; [+2]
       26 GETIMPORT                        R2 K2 [typeof]
       28 CALL                             R2 1 1
       29 JUMPIFNOTEQKS                    R2 K3 ["string"] ; [+19]
       31 GETTABLEKS                       R3 R0 K6 ["stack"]
       33 FASTCALL1                        TYPEOF R3 ; [+2]
       34 GETIMPORT                        R2 K2 [typeof]
       36 CALL                             R2 1 1
       37 JUMPIFNOTEQKS                    R2 K3 ["string"] ; [+11]
       39 DUPTABLE                         R2 K11 [{["hasMessage"], ["isError"] = True, [3], ["value"]}]
       40 SETTABLEKS                       R1 R2 K7 ["hasMessage"]
       42 GETTABLEKS                       R3 R0 K0 ["message"]
       44 SETTABLEKS                       R3 R2 K0 ["message"]
       46 SETTABLEKS                       R0 R2 K10 ["value"]
       48 RETURN                           R2 1
       49 JUMPIFNOT                        R1 ; [+10]
       50 DUPTABLE                         R2 K13 [{["hasMessage"], ["isError"] = False, [3], ["value"]}]
       51 SETTABLEKS                       R1 R2 K7 ["hasMessage"]
       53 GETTABLEKS                       R3 R0 K0 ["message"]
       55 SETTABLEKS                       R3 R2 K0 ["message"]
       57 SETTABLEKS                       R0 R2 K10 ["value"]
       59 RETURN                           R2 1
       60 DUPTABLE                         R2 K13 [{["hasMessage"], ["isError"] = False, [3], ["value"]}]
       61 SETTABLEKS                       R1 R2 K7 ["hasMessage"]
       63 FASTCALL1                        TOSTRING R0 ; [+3]
       64 MOVE                             R4 R0
       65 GETIMPORT                        R3 K15 [tostring]
       67 CALL                             R3 1 1
       68 SETTABLEKS                       R3 R2 K0 ["message"]
       70 SETTABLEKS                       R0 R2 K10 ["value"]
       72 RETURN                           R2 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["[^\n]+"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_2:
        0 LOADK                            R2 K0 [""]
        1 LOADK                            R3 K0 [""]
        2 GETIMPORT                        R4 K3 [string.match]
        4 MOVE                             R5 R0
        5 LOADK                            R6 K4 ["[^\n]+"]
        6 CALL                             R4 2 1
        7 GETIMPORT                        R5 K6 [string.gmatch]
        9 MOVE                             R6 R1
       10 LOADK                            R7 K4 ["[^\n]+"]
       11 CALL                             R5 2 3
       12 FORGPREP                         R5
       13 JUMPIFNOTEQ                      R8 R4 ; [+2]
       15 RETURN                           R3 1
       16 MOVE                             R3 R2
       17 MOVE                             R10 R2
       18 LOADK                            R11 K7 ["\n"]
       19 MOVE                             R12 R8
       20 CONCAT                           R2 R10 R12
       21 FORGLOOP                         R5 1 ; [-9]
       23 LOADNIL                          R5
       24 RETURN                           R5 1

PROTO_3:
        0 GETIMPORT                        R0 K2 [debug.traceback]
        2 LOADNIL                          R1
        3 LOADN                            R2 2
        4 CALL                             R0 2 1
        5 SETUPVAL                         R0 0
        6 GETUPVAL                         R0 1
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_4:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADK                            R0 K0 ["nil"]
        3 JUMP                             ; [+69]
        4 GETUPVAL                         R1 0
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 JUMPIFEQKS                       R1 K1 ["error"] ; [+11]
        9 FASTCALL1                        TYPEOF R0 ; [+3]
       10 MOVE                             R2 R0
       11 GETIMPORT                        R1 K3 [typeof]
       13 CALL                             R1 1 1
       14 JUMPIFNOTEQKS                    R1 K4 ["table"] ; [+32]
       16 GETTABLEKS                       R1 R0 K5 ["message"]
       18 JUMPIFNOT                        R1 ; [+28]
       19 GETTABLEKS                       R1 R0 K6 ["stack"]
       21 JUMPIFNOTEQKNIL                  R1 ; [+10]
       23 GETUPVAL                         R1 1
       24 GETUPVAL                         R2 2
       25 GETIMPORT                        R3 K9 [debug.traceback]
       27 CALL                             R3 0 -1
       28 CALL                             R1 -1 1
       29 SETTABLEKS                       R1 R0 K6 ["stack"]
       31 RETURN                           R0 1
       32 GETTABLEKS                       R1 R0 K6 ["stack"]
       34 LOADK                            R3 K10 ["ThrowMatchers%-test%.js"]
       35 NAMECALL                         R1 R1 K11 ["find"]
       37 CALL                             R1 2 1
       38 JUMPIF                           R1 ; [+7]
       39 GETUPVAL                         R1 1
       40 GETUPVAL                         R2 2
       41 GETTABLEKS                       R3 R0 K6 ["stack"]
       43 CALL                             R1 2 1
       44 SETTABLEKS                       R1 R0 K6 ["stack"]
       46 RETURN                           R0 1
       47 FASTCALL1                        TYPEOF R0 ; [+3]
       48 MOVE                             R2 R0
       49 GETIMPORT                        R1 K3 [typeof]
       51 CALL                             R1 1 1
       52 JUMPIFNOTEQKS                    R1 K12 ["string"] ; [+9]
       54 LOADK                            R3 K13 ["[%S+\\.]+:[0-9]+:%s(.*)"]
       55 NAMECALL                         R1 R0 K11 ["find"]
       57 CALL                             R1 2 3
       58 JUMPIFEQKNIL                     R3 ; [+14]
       60 MOVE                             R0 R3
       61 JUMP                             ; [+11]
       62 FASTCALL1                        TYPEOF R0 ; [+3]
       63 MOVE                             R2 R0
       64 GETIMPORT                        R1 K3 [typeof]
       66 CALL                             R1 1 1
       67 JUMPIFNOTEQKS                    R1 K4 ["table"] ; [+5]
       69 GETUPVAL                         R1 3
       70 MOVE                             R2 R0
       71 CALL                             R1 1 1
       72 MOVE                             R0 R1
       73 GETUPVAL                         R1 4
       74 GETTABLEKS                       R1 R1 K14 ["new"]
       76 MOVE                             R2 R0
       77 CALL                             R1 1 1
       78 GETUPVAL                         R2 4
       79 GETTABLEKS                       R2 R2 K15 ["__captureStackTrace"]
       81 MOVE                             R3 R1
       82 LOADN                            R4 3
       83 CALL                             R2 2 0
       84 GETIMPORT                        R2 K16 [string.find]
       86 GETTABLEKS                       R3 R1 K6 ["stack"]
       88 GETTABLEKS                       R5 R1 K6 ["stack"]
       90 GETIMPORT                        R6 K18 [string.match]
       92 MOVE                             R7 R5
       93 LOADK                            R8 K19 ["[^\n]+"]
       94 CALL                             R6 2 1
       95 MOVE                             R4 R6
       96 LOADN                            R5 1
       97 LOADB                            R6 1
       98 CALL                             R2 4 2
       99 GETTABLEKS                       R5 R1 K6 ["stack"]
      101 ADDK                             R7 R3 K20 [1]
      102 ADDK                             R6 R7 K20 [1]
      103 FASTCALL2                        STRING_SUB R5 R6 ; [+3]
      105 GETIMPORT                        R4 K22 [string.sub]
      107 CALL                             R4 2 1
      108 SETTABLEKS                       R4 R1 K6 ["stack"]
      110 GETUPVAL                         R4 1
      111 GETUPVAL                         R5 2
      112 GETTABLEKS                       R6 R1 K6 ["stack"]
      114 CALL                             R4 2 1
      115 SETTABLEKS                       R4 R1 K6 ["stack"]
      117 LOADB                            R4 1
      118 SETTABLEKS                       R4 R1 K23 ["$$robloxInternalJestError"]
      120 RETURN                           R1 1

PROTO_5:
        0 DUPTABLE                         R3 K2 [{"isNot", "promise"}]
        1 GETTABLEKS                       R4 R0 K0 ["isNot"]
        3 SETTABLEKS                       R4 R3 K0 ["isNot"]
        5 GETTABLEKS                       R4 R0 K1 ["promise"]
        7 SETTABLEKS                       R4 R3 K1 ["promise"]
        9 LOADNIL                          R4
       10 GETUPVAL                         R5 0
       11 JUMPIFNOT                        R5 ; [+9]
       12 GETUPVAL                         R5 1
       13 MOVE                             R6 R1
       14 CALL                             R5 1 1
       15 JUMPIFNOT                        R5 ; [+5]
       16 GETUPVAL                         R5 2
       17 MOVE                             R6 R1
       18 CALL                             R5 1 1
       19 MOVE                             R4 R5
       20 JUMP                             ; [+82]
       21 FASTCALL1                        TYPEOF R1 ; [+3]
       22 MOVE                             R6 R1
       23 GETIMPORT                        R5 K4 [typeof]
       25 CALL                             R5 1 1
       26 JUMPIFEQKS                       R5 K5 ["function"] ; [+55]
       28 FASTCALL1                        TYPEOF R1 ; [+3]
       29 MOVE                             R6 R1
       30 GETIMPORT                        R5 K4 [typeof]
       32 CALL                             R5 1 1
       33 JUMPIFNOTEQKS                    R5 K6 ["table"] ; [+15]
       35 FASTCALL1                        GETMETATABLE R1 ; [+3]
       36 MOVE                             R6 R1
       37 GETIMPORT                        R5 K8 [getmetatable]
       39 CALL                             R5 1 1
       40 JUMPIFNOT                        R5 ; [+8]
       41 FASTCALL1                        GETMETATABLE R1 ; [+3]
       42 MOVE                             R6 R1
       43 GETIMPORT                        R5 K8 [getmetatable]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R5 R5 K9 ["__call"]
       48 JUMPIF                           R5 ; [+33]
       49 GETUPVAL                         R5 0
       50 JUMPIF                           R5 ; [+52]
       51 LOADNIL                          R5
       52 JUMPIFNOTEQKNIL                  R2 ; [+3]
       54 LOADK                            R5 K10 [""]
       55 JUMP                             ; [+1]
       56 LOADK                            R5 K11 ["expected"]
       57 GETIMPORT                        R6 K13 [error]
       59 GETUPVAL                         R7 3
       60 GETUPVAL                         R8 4
       61 GETUPVAL                         R9 5
       62 GETUPVAL                         R10 6
       63 LOADNIL                          R11
       64 MOVE                             R12 R5
       65 MOVE                             R13 R3
       66 CALL                             R9 4 1
       67 GETUPVAL                         R13 7
       68 LOADK                            R14 K14 ["received"]
       69 CALL                             R13 1 1
       70 MOVE                             R11 R13
       71 LOADK                            R12 K15 [" value must be a function"]
       72 CONCAT                           R10 R11 R12
       73 GETUPVAL                         R11 8
       74 LOADK                            R12 K16 ["Received"]
       75 MOVE                             R13 R1
       76 GETUPVAL                         R14 9
       77 CALL                             R11 3 -1
       78 CALL                             R8 -1 -1
       79 CALL                             R7 -1 -1
       80 CALL                             R6 -1 0
       81 JUMP                             ; [+21]
       82 DUPCLOSURE                       R5 K17 [PROTO_1]
       83 DUPCLOSURE                       R6 K18 [PROTO_2]
       84 LOADNIL                          R7
       85 GETIMPORT                        R8 K20 [xpcall]
       87 NEWCLOSURE                       R9 P2
       88 CAPTURE                          REF R7
       89 CAPTURE                          VAL R1
       90 NEWCLOSURE                       R10 P3
       91 CAPTURE                          UPVAL U10
       92 CAPTURE                          VAL R6
       93 CAPTURE                          REF R7
       94 CAPTURE                          UPVAL U11
       95 CAPTURE                          UPVAL U3
       96 CALL                             R8 2 2
       97 JUMPIF                           R8 ; [+4]
       98 GETUPVAL                         R10 2
       99 MOVE                             R11 R9
      100 CALL                             R10 1 1
      101 MOVE                             R4 R10
      102 CLOSEUPVALS                      R7
      103 JUMPIFNOTEQKNIL                  R2 ; [+7]
      105 GETUPVAL                         R5 12
      106 GETUPVAL                         R6 6
      107 MOVE                             R7 R3
      108 MOVE                             R8 R4
      109 CALL                             R5 3 -1
      110 RETURN                           R5 -1
      111 FASTCALL1                        TYPEOF R2 ; [+3]
      112 MOVE                             R6 R2
      113 GETIMPORT                        R5 K4 [typeof]
      115 CALL                             R5 1 1
      116 JUMPIFNOTEQKS                    R5 K6 ["table"] ; [+16]
      118 GETTABLEKS                       R6 R2 K21 ["asymmetricMatch"]
      120 FASTCALL1                        TYPEOF R6 ; [+2]
      121 GETIMPORT                        R5 K4 [typeof]
      123 CALL                             R5 1 1
      124 JUMPIFNOTEQKS                    R5 K5 ["function"] ; [+8]
      126 GETUPVAL                         R5 13
      127 GETUPVAL                         R6 6
      128 MOVE                             R7 R3
      129 MOVE                             R8 R4
      130 MOVE                             R9 R2
      131 CALL                             R5 4 -1
      132 RETURN                           R5 -1
      133 FASTCALL1                        TYPEOF R2 ; [+3]
      134 MOVE                             R6 R2
      135 GETIMPORT                        R5 K4 [typeof]
      137 CALL                             R5 1 1
      138 JUMPIFNOTEQKS                    R5 K22 ["string"] ; [+8]
      140 GETUPVAL                         R5 14
      141 GETUPVAL                         R6 6
      142 MOVE                             R7 R3
      143 MOVE                             R8 R4
      144 MOVE                             R9 R2
      145 CALL                             R5 4 -1
      146 RETURN                           R5 -1
      147 GETUPVAL                         R5 10
      148 MOVE                             R6 R2
      149 CALL                             R5 1 1
      150 JUMPIFNOTEQKS                    R5 K23 ["regexp"] ; [+8]
      152 GETUPVAL                         R5 15
      153 GETUPVAL                         R6 6
      154 MOVE                             R7 R3
      155 MOVE                             R8 R4
      156 MOVE                             R9 R2
      157 CALL                             R5 4 -1
      158 RETURN                           R5 -1
      159 FASTCALL1                        TYPEOF R2 ; [+3]
      160 MOVE                             R6 R2
      161 GETIMPORT                        R5 K4 [typeof]
      163 CALL                             R5 1 1
      164 JUMPIFNOTEQKS                    R5 K6 ["table"] ; [+24]
      166 GETTABLEKS                       R6 R2 K24 ["test"]
      168 FASTCALL1                        TYPEOF R6 ; [+2]
      169 GETIMPORT                        R5 K4 [typeof]
      171 CALL                             R5 1 1
      172 JUMPIFNOTEQKS                    R5 K5 ["function"] ; [+16]
      174 GETTABLEKS                       R6 R2 K25 ["exec"]
      176 FASTCALL1                        TYPEOF R6 ; [+2]
      177 GETIMPORT                        R5 K4 [typeof]
      179 CALL                             R5 1 1
      180 JUMPIFNOTEQKS                    R5 K5 ["function"] ; [+8]
      182 GETUPVAL                         R5 15
      183 GETUPVAL                         R6 6
      184 MOVE                             R7 R3
      185 MOVE                             R8 R4
      186 MOVE                             R9 R2
      187 CALL                             R5 4 -1
      188 RETURN                           R5 -1
      189 FASTCALL1                        TYPEOF R2 ; [+3]
      190 MOVE                             R6 R2
      191 GETIMPORT                        R5 K4 [typeof]
      193 CALL                             R5 1 1
      194 JUMPIFNOTEQKS                    R5 K6 ["table"] ; [+11]
      196 GETTABLEKS                       R5 R2 K26 ["message"]
      198 JUMPIF                           R5 ; [+7]
      199 GETUPVAL                         R5 16
      200 GETUPVAL                         R6 6
      201 MOVE                             R7 R3
      202 MOVE                             R8 R4
      203 MOVE                             R9 R2
      204 CALL                             R5 4 -1
      205 RETURN                           R5 -1
      206 FASTCALL1                        TYPEOF R2 ; [+3]
      207 MOVE                             R6 R2
      208 GETIMPORT                        R5 K4 [typeof]
      210 CALL                             R5 1 1
      211 JUMPIFNOTEQKS                    R5 K6 ["table"] ; [+8]
      213 GETUPVAL                         R5 17
      214 GETUPVAL                         R6 6
      215 MOVE                             R7 R3
      216 MOVE                             R8 R4
      217 MOVE                             R9 R2
      218 CALL                             R5 4 -1
      219 RETURN                           R5 -1
      220 GETIMPORT                        R5 K13 [error]
      222 GETUPVAL                         R6 3
      223 GETUPVAL                         R7 4
      224 GETUPVAL                         R8 5
      225 GETUPVAL                         R9 6
      226 LOADNIL                          R10
      227 LOADNIL                          R11
      228 MOVE                             R12 R3
      229 CALL                             R8 4 1
      230 GETUPVAL                         R12 18
      231 LOADK                            R13 K11 ["expected"]
      232 CALL                             R12 1 1
      233 MOVE                             R10 R12
      234 LOADK                            R11 K27 [" value must be a string or regular expression or class or error"]
      235 CONCAT                           R9 R10 R11
      236 GETUPVAL                         R10 8
      237 LOADK                            R11 K28 ["Expected"]
      238 MOVE                             R12 R2
      239 GETUPVAL                         R13 19
      240 CALL                             R10 3 -1
      241 CALL                             R7 -1 -1
      242 CALL                             R6 -1 -1
      243 CALL                             R5 -1 0
      244 RETURN                           R0 0

PROTO_6:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U7
       11 CAPTURE                          UPVAL U8
       12 CAPTURE                          UPVAL U9
       13 CAPTURE                          UPVAL U10
       14 CAPTURE                          UPVAL U11
       15 CAPTURE                          UPVAL U12
       16 CAPTURE                          UPVAL U13
       17 CAPTURE                          UPVAL U14
       18 CAPTURE                          UPVAL U15
       19 CAPTURE                          UPVAL U16
       20 CAPTURE                          UPVAL U17
       21 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 LOADNIL                          R6
        3 LOADNIL                          R7
        4 GETUPVAL                         R8 2
        5 CALL                             R4 4 1
        6 MOVE                             R1 R4
        7 LOADK                            R2 K0 ["\n\n"]
        8 GETUPVAL                         R3 3
        9 LOADK                            R4 K1 ["Expected pattern: never "]
       10 GETUPVAL                         R5 4
       11 CALL                             R3 2 1
       12 CONCAT                           R0 R1 R3
       13 GETUPVAL                         R1 5
       14 JUMPIFEQKNIL                     R1 ; [+24]
       16 GETUPVAL                         R1 5
       17 GETTABLEKS                       R1 R1 K2 ["hasMessage"]
       19 JUMPIFNOT                        R1 ; [+19]
       20 GETUPVAL                         R2 5
       21 GETTABLEKS                       R2 R2 K4 ["value"]
       23 GETTABLEKS                       R1 R2 K3 ["$$robloxInternalJestError"]
       25 JUMPIF                           R1 ; [+13]
       26 MOVE                             R1 R0
       27 GETUPVAL                         R4 6
       28 LOADK                            R5 K5 ["Received message:       "]
       29 GETUPVAL                         R6 5
       30 LOADK                            R7 K6 ["message"]
       31 GETUPVAL                         R8 4
       32 CALL                             R4 4 1
       33 MOVE                             R2 R4
       34 GETUPVAL                         R3 7
       35 GETUPVAL                         R4 5
       36 CALL                             R3 1 1
       37 CONCAT                           R0 R1 R3
       38 RETURN                           R0 1
       39 MOVE                             R1 R0
       40 GETUPVAL                         R4 6
       41 LOADK                            R5 K7 ["Received value:         "]
       42 GETUPVAL                         R6 5
       43 LOADK                            R7 K6 ["message"]
       44 CALL                             R4 3 1
       45 MOVE                             R2 R4
       46 GETUPVAL                         R3 7
       47 GETUPVAL                         R4 5
       48 CALL                             R3 1 1
       49 CONCAT                           R0 R1 R3
       50 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 LOADNIL                          R6
        3 LOADNIL                          R7
        4 GETUPVAL                         R8 2
        5 CALL                             R4 4 1
        6 MOVE                             R1 R4
        7 LOADK                            R2 K0 ["\n\n"]
        8 GETUPVAL                         R3 3
        9 LOADK                            R4 K1 ["Expected pattern: "]
       10 GETUPVAL                         R5 4
       11 CALL                             R3 2 1
       12 CONCAT                           R0 R1 R3
       13 GETUPVAL                         R1 5
       14 JUMPIFNOTEQKNIL                  R1 ; [+6]
       16 MOVE                             R1 R0
       17 LOADK                            R2 K2 ["\n"]
       18 LOADK                            R3 K3 ["Received function never threw"]
       19 CONCAT                           R0 R1 R3
       20 RETURN                           R0 1
       21 GETUPVAL                         R1 5
       22 GETTABLEKS                       R1 R1 K4 ["hasMessage"]
       24 JUMPIFNOT                        R1 ; [+18]
       25 GETUPVAL                         R2 5
       26 GETTABLEKS                       R2 R2 K6 ["value"]
       28 GETTABLEKS                       R1 R2 K5 ["$$robloxInternalJestError"]
       30 JUMPIF                           R1 ; [+12]
       31 MOVE                             R1 R0
       32 GETUPVAL                         R4 6
       33 LOADK                            R5 K7 ["Received message: "]
       34 GETUPVAL                         R6 5
       35 LOADK                            R7 K8 ["message"]
       36 CALL                             R4 3 1
       37 MOVE                             R2 R4
       38 GETUPVAL                         R3 7
       39 GETUPVAL                         R4 5
       40 CALL                             R3 1 1
       41 CONCAT                           R0 R1 R3
       42 RETURN                           R0 1
       43 MOVE                             R1 R0
       44 GETUPVAL                         R4 6
       45 LOADK                            R5 K9 ["Received value:   "]
       46 GETUPVAL                         R6 5
       47 LOADK                            R7 K8 ["message"]
       48 CALL                             R4 3 1
       49 MOVE                             R2 R4
       50 GETUPVAL                         R3 7
       51 GETUPVAL                         R4 5
       52 CALL                             R3 1 1
       53 CONCAT                           R0 R1 R3
       54 RETURN                           R0 1

PROTO_9:
        0 LOADB                            R4 0
        1 JUMPIFEQKNIL                     R2 ; [+6]
        3 GETTABLEKS                       R6 R2 K0 ["message"]
        5 NAMECALL                         R4 R3 K1 ["test"]
        7 CALL                             R4 2 1
        8 LOADNIL                          R5
        9 JUMPIFNOT                        R4 ; [+18]
       10 JUMPIFNOTEQKNIL                  R2 ; [+2]
       12 LOADB                            R7 0 +1
       13 LOADB                            R7 1
       14 FASTCALL1                        ASSERT R7 ; [+2]
       15 GETIMPORT                        R6 K3 [assert]
       17 CALL                             R6 1 0
       18 NEWCLOSURE                       R5 P0
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          VAL R0
       21 CAPTURE                          VAL R1
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          VAL R3
       24 CAPTURE                          VAL R2
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          UPVAL U3
       27 JUMP                             ; [+9]
       28 NEWCLOSURE                       R5 P1
       29 CAPTURE                          UPVAL U0
       30 CAPTURE                          VAL R0
       31 CAPTURE                          VAL R1
       32 CAPTURE                          UPVAL U1
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R2
       35 CAPTURE                          UPVAL U2
       36 CAPTURE                          UPVAL U3
       37 DUPTABLE                         R6 K5 [{"message", "pass"}]
       38 SETTABLEKS                       R5 R6 K0 ["message"]
       40 SETTABLEKS                       R4 R6 K4 ["pass"]
       42 RETURN                           R6 1

PROTO_10:
        0 GETUPVAL                         R5 0
        1 GETUPVAL                         R6 1
        2 LOADNIL                          R7
        3 LOADNIL                          R8
        4 GETUPVAL                         R9 2
        5 CALL                             R5 4 1
        6 MOVE                             R1 R5
        7 LOADK                            R2 K0 ["\n\n"]
        8 GETUPVAL                         R5 3
        9 LOADK                            R6 K1 ["Expected asymmetric matcher: never "]
       10 GETUPVAL                         R7 4
       11 CALL                             R5 2 1
       12 MOVE                             R3 R5
       13 LOADK                            R4 K2 ["\n"]
       14 CONCAT                           R0 R1 R4
       15 GETUPVAL                         R1 5
       16 JUMPIFEQKNIL                     R1 ; [+29]
       18 GETUPVAL                         R1 5
       19 GETTABLEKS                       R1 R1 K3 ["hasMessage"]
       21 JUMPIFNOT                        R1 ; [+24]
       22 GETUPVAL                         R2 5
       23 GETTABLEKS                       R2 R2 K5 ["value"]
       25 GETTABLEKS                       R1 R2 K4 ["$$robloxInternalJestError"]
       27 JUMPIF                           R1 ; [+18]
       28 MOVE                             R1 R0
       29 GETUPVAL                         R5 6
       30 LOADK                            R6 K6 ["Received name:    "]
       31 GETUPVAL                         R7 5
       32 LOADK                            R8 K7 ["name"]
       33 CALL                             R5 3 1
       34 MOVE                             R2 R5
       35 GETUPVAL                         R5 6
       36 LOADK                            R6 K8 ["Received message: "]
       37 GETUPVAL                         R7 5
       38 LOADK                            R8 K9 ["message"]
       39 CALL                             R5 3 1
       40 MOVE                             R3 R5
       41 GETUPVAL                         R4 7
       42 GETUPVAL                         R5 5
       43 CALL                             R4 1 1
       44 CONCAT                           R0 R1 R4
       45 RETURN                           R0 1
       46 MOVE                             R1 R0
       47 GETUPVAL                         R4 6
       48 LOADK                            R5 K10 ["Thrown value: "]
       49 GETUPVAL                         R6 5
       50 LOADK                            R7 K9 ["message"]
       51 CALL                             R4 3 1
       52 MOVE                             R2 R4
       53 GETUPVAL                         R3 7
       54 GETUPVAL                         R4 5
       55 CALL                             R3 1 1
       56 CONCAT                           R0 R1 R3
       57 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R5 0
        1 GETUPVAL                         R6 1
        2 LOADNIL                          R7
        3 LOADNIL                          R8
        4 GETUPVAL                         R9 2
        5 CALL                             R5 4 1
        6 MOVE                             R1 R5
        7 LOADK                            R2 K0 ["\n\n"]
        8 GETUPVAL                         R5 3
        9 LOADK                            R6 K1 ["Expected asymmetric matcher: "]
       10 GETUPVAL                         R7 4
       11 CALL                             R5 2 1
       12 MOVE                             R3 R5
       13 LOADK                            R4 K2 ["\n"]
       14 CONCAT                           R0 R1 R4
       15 GETUPVAL                         R1 5
       16 JUMPIFNOTEQKNIL                  R1 ; [+5]
       18 MOVE                             R1 R0
       19 LOADK                            R2 K3 ["Received function never threw"]
       20 CONCAT                           R0 R1 R2
       21 RETURN                           R0 1
       22 GETUPVAL                         R1 5
       23 GETTABLEKS                       R1 R1 K4 ["hasMessage"]
       25 JUMPIFNOT                        R1 ; [+24]
       26 GETUPVAL                         R2 5
       27 GETTABLEKS                       R2 R2 K6 ["value"]
       29 GETTABLEKS                       R1 R2 K5 ["$$robloxInternalJestError"]
       31 JUMPIF                           R1 ; [+18]
       32 MOVE                             R1 R0
       33 GETUPVAL                         R5 6
       34 LOADK                            R6 K7 ["Received name:    "]
       35 GETUPVAL                         R7 5
       36 LOADK                            R8 K8 ["name"]
       37 CALL                             R5 3 1
       38 MOVE                             R2 R5
       39 GETUPVAL                         R5 6
       40 LOADK                            R6 K9 ["Received message: "]
       41 GETUPVAL                         R7 5
       42 LOADK                            R8 K10 ["message"]
       43 CALL                             R5 3 1
       44 MOVE                             R3 R5
       45 GETUPVAL                         R4 7
       46 GETUPVAL                         R5 5
       47 CALL                             R4 1 1
       48 CONCAT                           R0 R1 R4
       49 RETURN                           R0 1
       50 MOVE                             R1 R0
       51 GETUPVAL                         R4 6
       52 LOADK                            R5 K11 ["Thrown value: "]
       53 GETUPVAL                         R6 5
       54 LOADK                            R7 K10 ["message"]
       55 CALL                             R4 3 1
       56 MOVE                             R2 R4
       57 GETUPVAL                         R3 7
       58 GETUPVAL                         R4 5
       59 CALL                             R3 1 1
       60 CONCAT                           R0 R1 R3
       61 RETURN                           R0 1

PROTO_12:
        0 LOADB                            R4 0
        1 JUMPIFEQKNIL                     R2 ; [+6]
        3 GETTABLEKS                       R6 R2 K0 ["value"]
        5 NAMECALL                         R4 R3 K1 ["asymmetricMatch"]
        7 CALL                             R4 2 1
        8 LOADNIL                          R5
        9 JUMPIFNOT                        R4 ; [+18]
       10 JUMPIFNOTEQKNIL                  R2 ; [+2]
       12 LOADB                            R7 0 +1
       13 LOADB                            R7 1
       14 FASTCALL1                        ASSERT R7 ; [+2]
       15 GETIMPORT                        R6 K3 [assert]
       17 CALL                             R6 1 0
       18 NEWCLOSURE                       R5 P0
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          VAL R0
       21 CAPTURE                          VAL R1
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          VAL R3
       24 CAPTURE                          VAL R2
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          UPVAL U3
       27 JUMP                             ; [+9]
       28 NEWCLOSURE                       R5 P1
       29 CAPTURE                          UPVAL U0
       30 CAPTURE                          VAL R0
       31 CAPTURE                          VAL R1
       32 CAPTURE                          UPVAL U1
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R2
       35 CAPTURE                          UPVAL U2
       36 CAPTURE                          UPVAL U3
       37 DUPTABLE                         R6 K6 [{"message", "pass"}]
       38 SETTABLEKS                       R5 R6 K4 ["message"]
       40 SETTABLEKS                       R4 R6 K5 ["pass"]
       42 RETURN                           R6 1

PROTO_13:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 LOADNIL                          R6
        3 LOADNIL                          R7
        4 GETUPVAL                         R8 2
        5 CALL                             R4 4 1
        6 MOVE                             R1 R4
        7 LOADK                            R2 K0 ["\n\n"]
        8 GETUPVAL                         R3 3
        9 LOADK                            R4 K1 ["Expected message: never "]
       10 GETUPVAL                         R5 4
       11 GETTABLEKS                       R5 R5 K2 ["message"]
       13 CALL                             R3 2 1
       14 CONCAT                           R0 R1 R3
       15 GETUPVAL                         R1 5
       16 JUMPIFEQKNIL                     R1 ; [+17]
       18 GETUPVAL                         R1 5
       19 GETTABLEKS                       R1 R1 K3 ["hasMessage"]
       21 JUMPIFNOT                        R1 ; [+12]
       22 GETUPVAL                         R2 5
       23 GETTABLEKS                       R2 R2 K5 ["value"]
       25 GETTABLEKS                       R1 R2 K4 ["$$robloxInternalJestError"]
       27 JUMPIF                           R1 ; [+6]
       28 MOVE                             R1 R0
       29 GETUPVAL                         R2 6
       30 GETUPVAL                         R3 5
       31 CALL                             R2 1 1
       32 CONCAT                           R0 R1 R2
       33 RETURN                           R0 1
       34 MOVE                             R1 R0
       35 GETUPVAL                         R4 7
       36 LOADK                            R5 K6 ["Received value:         "]
       37 GETUPVAL                         R6 5
       38 LOADK                            R7 K2 ["message"]
       39 CALL                             R4 3 1
       40 MOVE                             R2 R4
       41 GETUPVAL                         R3 6
       42 GETUPVAL                         R4 5
       43 CALL                             R3 1 1
       44 CONCAT                           R0 R1 R3
       45 RETURN                           R0 1

PROTO_14:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 LOADNIL                          R5
        3 LOADNIL                          R6
        4 GETUPVAL                         R7 2
        5 CALL                             R3 4 1
        6 MOVE                             R1 R3
        7 LOADK                            R2 K0 ["\n\n"]
        8 CONCAT                           R0 R1 R2
        9 GETUPVAL                         R1 3
       10 JUMPIFNOTEQKNIL                  R1 ; [+13]
       12 MOVE                             R1 R0
       13 GETUPVAL                         R5 4
       14 LOADK                            R6 K1 ["Expected message: "]
       15 GETUPVAL                         R7 5
       16 GETTABLEKS                       R7 R7 K2 ["message"]
       18 CALL                             R5 2 1
       19 MOVE                             R2 R5
       20 LOADK                            R3 K3 ["\n"]
       21 LOADK                            R4 K4 ["Received function never threw"]
       22 CONCAT                           R0 R1 R4
       23 RETURN                           R0 1
       24 GETUPVAL                         R1 3
       25 GETTABLEKS                       R1 R1 K5 ["hasMessage"]
       27 JUMPIFNOT                        R1 ; [+25]
       28 GETUPVAL                         R2 3
       29 GETTABLEKS                       R2 R2 K7 ["value"]
       31 GETTABLEKS                       R1 R2 K6 ["$$robloxInternalJestError"]
       33 JUMPIF                           R1 ; [+19]
       34 MOVE                             R1 R0
       35 GETUPVAL                         R5 6
       36 GETUPVAL                         R6 5
       37 GETTABLEKS                       R6 R6 K2 ["message"]
       39 GETUPVAL                         R7 3
       40 GETTABLEKS                       R7 R7 K2 ["message"]
       42 LOADK                            R8 K8 ["Expected message"]
       43 LOADK                            R9 K9 ["Received message"]
       44 LOADB                            R10 1
       45 CALL                             R5 5 1
       46 MOVE                             R2 R5
       47 LOADK                            R3 K3 ["\n"]
       48 GETUPVAL                         R4 7
       49 GETUPVAL                         R5 3
       50 CALL                             R4 1 1
       51 CONCAT                           R0 R1 R4
       52 RETURN                           R0 1
       53 MOVE                             R1 R0
       54 GETUPVAL                         R5 4
       55 LOADK                            R6 K1 ["Expected message: "]
       56 GETUPVAL                         R7 5
       57 GETTABLEKS                       R7 R7 K2 ["message"]
       59 CALL                             R5 2 1
       60 MOVE                             R2 R5
       61 GETUPVAL                         R5 8
       62 LOADK                            R6 K10 ["Received value:   "]
       63 GETUPVAL                         R7 3
       64 LOADK                            R8 K2 ["message"]
       65 CALL                             R5 3 1
       66 MOVE                             R3 R5
       67 GETUPVAL                         R4 7
       68 GETUPVAL                         R5 3
       69 CALL                             R4 1 1
       70 CONCAT                           R0 R1 R4
       71 RETURN                           R0 1

PROTO_15:
        0 LOADB                            R4 0
        1 JUMPIFEQKNIL                     R2 ; [+9]
        3 GETTABLEKS                       R5 R2 K0 ["message"]
        5 GETTABLEKS                       R6 R3 K0 ["message"]
        7 JUMPIFEQ                         R5 R6 ; [+2]
        9 LOADB                            R4 0 +1
       10 LOADB                            R4 1
       11 LOADNIL                          R5
       12 JUMPIFNOT                        R4 ; [+18]
       13 JUMPIFNOTEQKNIL                  R2 ; [+2]
       15 LOADB                            R7 0 +1
       16 LOADB                            R7 1
       17 FASTCALL1                        ASSERT R7 ; [+2]
       18 GETIMPORT                        R6 K2 [assert]
       20 CALL                             R6 1 0
       21 NEWCLOSURE                       R5 P0
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R1
       25 CAPTURE                          UPVAL U1
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R2
       28 CAPTURE                          UPVAL U2
       29 CAPTURE                          UPVAL U3
       30 JUMP                             ; [+10]
       31 NEWCLOSURE                       R5 P1
       32 CAPTURE                          UPVAL U0
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R2
       36 CAPTURE                          UPVAL U1
       37 CAPTURE                          VAL R3
       38 CAPTURE                          UPVAL U4
       39 CAPTURE                          UPVAL U2
       40 CAPTURE                          UPVAL U3
       41 DUPTABLE                         R6 K4 [{"message", "pass"}]
       42 SETTABLEKS                       R5 R6 K0 ["message"]
       44 SETTABLEKS                       R4 R6 K3 ["pass"]
       46 RETURN                           R6 1

PROTO_16:
        0 MOVE                             R1 R0
        1 JUMPIFNOT                        R1 ; [+13]
        2 FASTCALL1                        GETMETATABLE R0 ; [+3]
        3 MOVE                             R2 R0
        4 GETIMPORT                        R1 K1 [getmetatable]
        6 CALL                             R1 1 1
        7 JUMPIFNOT                        R1 ; [+7]
        8 FASTCALL1                        GETMETATABLE R0 ; [+3]
        9 MOVE                             R2 R0
       10 GETIMPORT                        R1 K1 [getmetatable]
       12 CALL                             R1 1 1
       13 GETTABLEKS                       R1 R1 K2 ["__index"]
       15 RETURN                           R1 1

PROTO_17:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 LOADNIL                          R6
        3 LOADNIL                          R7
        4 GETUPVAL                         R8 2
        5 CALL                             R4 4 1
        6 MOVE                             R1 R4
        7 LOADK                            R2 K0 ["\n\n"]
        8 GETUPVAL                         R3 3
        9 LOADK                            R4 K1 ["Expected constructor"]
       10 GETUPVAL                         R5 4
       11 CALL                             R3 2 1
       12 CONCAT                           R0 R1 R3
       13 GETUPVAL                         R1 5
       14 JUMPIFEQKNIL                     R1 ; [+72]
       16 GETUPVAL                         R2 5
       17 GETTABLEKS                       R2 R2 K2 ["value"]
       19 MOVE                             R1 R2
       20 JUMPIFNOT                        R1 ; [+15]
       21 FASTCALL1                        GETMETATABLE R2 ; [+3]
       22 MOVE                             R4 R2
       23 GETIMPORT                        R3 K4 [getmetatable]
       25 CALL                             R3 1 1
       26 MOVE                             R1 R3
       27 JUMPIFNOT                        R1 ; [+8]
       28 FASTCALL1                        GETMETATABLE R2 ; [+3]
       29 MOVE                             R4 R2
       30 GETIMPORT                        R3 K4 [getmetatable]
       32 CALL                             R3 1 1
       33 MOVE                             R1 R3
       34 GETTABLEKS                       R1 R1 K5 ["__index"]
       36 JUMPIFNOT                        R1 ; [+50]
       37 GETUPVAL                         R2 4
       38 MOVE                             R1 R2
       39 JUMPIFNOT                        R1 ; [+15]
       40 FASTCALL1                        GETMETATABLE R2 ; [+3]
       41 MOVE                             R4 R2
       42 GETIMPORT                        R3 K4 [getmetatable]
       44 CALL                             R3 1 1
       45 MOVE                             R1 R3
       46 JUMPIFNOT                        R1 ; [+8]
       47 FASTCALL1                        GETMETATABLE R2 ; [+3]
       48 MOVE                             R4 R2
       49 GETIMPORT                        R3 K4 [getmetatable]
       51 CALL                             R3 1 1
       52 MOVE                             R1 R3
       53 GETTABLEKS                       R1 R1 K5 ["__index"]
       55 JUMPIFNOT                        R1 ; [+31]
       56 GETUPVAL                         R2 5
       57 GETTABLEKS                       R2 R2 K2 ["value"]
       59 FASTCALL1                        GETMETATABLE R2 ; [+2]
       60 GETIMPORT                        R1 K4 [getmetatable]
       62 CALL                             R1 1 1
       63 GETTABLEKS                       R1 R1 K5 ["__index"]
       65 GETUPVAL                         R2 4
       66 JUMPIFEQ                         R1 R2 ; [+20]
       68 GETUPVAL                         R2 5
       69 GETTABLEKS                       R2 R2 K2 ["value"]
       71 GETTABLEKS                       R1 R2 K6 ["$$robloxInternalJestError"]
       73 JUMPIF                           R1 ; [+13]
       74 MOVE                             R1 R0
       75 GETUPVAL                         R2 6
       76 LOADK                            R3 K7 ["Received constructor"]
       77 GETUPVAL                         R5 5
       78 GETTABLEKS                       R5 R5 K2 ["value"]
       80 FASTCALL1                        GETMETATABLE R5 ; [+2]
       81 GETIMPORT                        R4 K4 [getmetatable]
       83 CALL                             R4 1 1
       84 GETUPVAL                         R5 4
       85 CALL                             R2 3 1
       86 CONCAT                           R0 R1 R2
       87 MOVE                             R1 R0
       88 LOADK                            R2 K8 ["\n"]
       89 CONCAT                           R0 R1 R2
       90 GETUPVAL                         R1 5
       91 JUMPIFEQKNIL                     R1 ; [+23]
       93 GETUPVAL                         R1 5
       94 GETTABLEKS                       R1 R1 K9 ["hasMessage"]
       96 JUMPIFNOT                        R1 ; [+18]
       97 GETUPVAL                         R2 5
       98 GETTABLEKS                       R2 R2 K2 ["value"]
      100 GETTABLEKS                       R1 R2 K6 ["$$robloxInternalJestError"]
      102 JUMPIF                           R1 ; [+12]
      103 MOVE                             R1 R0
      104 GETUPVAL                         R4 7
      105 LOADK                            R5 K10 ["Received message: "]
      106 GETUPVAL                         R6 5
      107 LOADK                            R7 K11 ["message"]
      108 CALL                             R4 3 1
      109 MOVE                             R2 R4
      110 GETUPVAL                         R3 8
      111 GETUPVAL                         R4 5
      112 CALL                             R3 1 1
      113 CONCAT                           R0 R1 R3
      114 RETURN                           R0 1
      115 MOVE                             R1 R0
      116 GETUPVAL                         R4 7
      117 LOADK                            R5 K12 ["Received value: "]
      118 GETUPVAL                         R6 5
      119 LOADK                            R7 K11 ["message"]
      120 CALL                             R4 3 1
      121 MOVE                             R2 R4
      122 GETUPVAL                         R3 8
      123 GETUPVAL                         R4 5
      124 CALL                             R3 1 1
      125 CONCAT                           R0 R1 R3
      126 RETURN                           R0 1

PROTO_18:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 LOADNIL                          R6
        3 LOADNIL                          R7
        4 GETUPVAL                         R8 2
        5 CALL                             R4 4 1
        6 MOVE                             R1 R4
        7 LOADK                            R2 K0 ["\n\n"]
        8 GETUPVAL                         R3 3
        9 LOADK                            R4 K1 ["Expected constructor"]
       10 GETUPVAL                         R5 4
       11 CALL                             R3 2 1
       12 CONCAT                           R0 R1 R3
       13 GETUPVAL                         R1 5
       14 JUMPIFNOTEQKNIL                  R1 ; [+6]
       16 MOVE                             R1 R0
       17 LOADK                            R2 K2 ["\n"]
       18 LOADK                            R3 K3 ["Received function never threw"]
       19 CONCAT                           R0 R1 R3
       20 RETURN                           R0 1
       21 GETUPVAL                         R1 5
       22 GETTABLEKS                       R1 R1 K4 ["value"]
       24 JUMPIFEQKNIL                     R1 ; [+40]
       26 GETUPVAL                         R2 5
       27 GETTABLEKS                       R2 R2 K4 ["value"]
       29 MOVE                             R1 R2
       30 JUMPIFNOT                        R1 ; [+15]
       31 FASTCALL1                        GETMETATABLE R2 ; [+3]
       32 MOVE                             R4 R2
       33 GETIMPORT                        R3 K6 [getmetatable]
       35 CALL                             R3 1 1
       36 MOVE                             R1 R3
       37 JUMPIFNOT                        R1 ; [+8]
       38 FASTCALL1                        GETMETATABLE R2 ; [+3]
       39 MOVE                             R4 R2
       40 GETIMPORT                        R3 K6 [getmetatable]
       42 CALL                             R3 1 1
       43 MOVE                             R1 R3
       44 GETTABLEKS                       R1 R1 K7 ["__index"]
       46 JUMPIFNOT                        R1 ; [+18]
       47 GETUPVAL                         R2 5
       48 GETTABLEKS                       R2 R2 K4 ["value"]
       50 GETTABLEKS                       R1 R2 K8 ["$$robloxInternalJestError"]
       52 JUMPIF                           R1 ; [+12]
       53 MOVE                             R1 R0
       54 GETUPVAL                         R2 6
       55 LOADK                            R3 K9 ["Received constructor"]
       56 GETUPVAL                         R5 5
       57 GETTABLEKS                       R5 R5 K4 ["value"]
       59 FASTCALL1                        GETMETATABLE R5 ; [+2]
       60 GETIMPORT                        R4 K6 [getmetatable]
       62 CALL                             R4 1 1
       63 CALL                             R2 2 1
       64 CONCAT                           R0 R1 R2
       65 MOVE                             R1 R0
       66 LOADK                            R2 K2 ["\n"]
       67 CONCAT                           R0 R1 R2
       68 GETUPVAL                         R1 5
       69 GETTABLEKS                       R1 R1 K10 ["hasMessage"]
       71 JUMPIFNOT                        R1 ; [+18]
       72 GETUPVAL                         R2 5
       73 GETTABLEKS                       R2 R2 K4 ["value"]
       75 GETTABLEKS                       R1 R2 K8 ["$$robloxInternalJestError"]
       77 JUMPIF                           R1 ; [+12]
       78 MOVE                             R1 R0
       79 GETUPVAL                         R4 7
       80 LOADK                            R5 K11 ["Received message: "]
       81 GETUPVAL                         R6 5
       82 LOADK                            R7 K12 ["message"]
       83 CALL                             R4 3 1
       84 MOVE                             R2 R4
       85 GETUPVAL                         R3 8
       86 GETUPVAL                         R4 5
       87 CALL                             R3 1 1
       88 CONCAT                           R0 R1 R3
       89 RETURN                           R0 1
       90 MOVE                             R1 R0
       91 GETUPVAL                         R4 7
       92 LOADK                            R5 K13 ["Received value: "]
       93 GETUPVAL                         R6 5
       94 LOADK                            R7 K12 ["message"]
       95 CALL                             R4 3 1
       96 MOVE                             R2 R4
       97 GETUPVAL                         R3 8
       98 GETUPVAL                         R4 5
       99 CALL                             R3 1 1
      100 CONCAT                           R0 R1 R3
      101 RETURN                           R0 1

PROTO_19:
        0 DUPCLOSURE                       R4 K0 [PROTO_16]
        1 LOADB                            R5 0
        2 JUMPIFEQKNIL                     R2 ; [+11]
        4 LOADB                            R5 0
        5 GETTABLEKS                       R6 R2 K1 ["value"]
        7 JUMPIFEQKNIL                     R6 ; [+6]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R6 R2 K1 ["value"]
       12 MOVE                             R7 R3
       13 CALL                             R5 2 1
       14 LOADNIL                          R6
       15 JUMPIFNOT                        R5 ; [+11]
       16 NEWCLOSURE                       R6 P1
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          VAL R0
       19 CAPTURE                          VAL R1
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          VAL R3
       22 CAPTURE                          VAL R2
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          UPVAL U5
       26 JUMP                             ; [+10]
       27 NEWCLOSURE                       R6 P2
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R1
       31 CAPTURE                          UPVAL U6
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R2
       34 CAPTURE                          UPVAL U7
       35 CAPTURE                          UPVAL U4
       36 CAPTURE                          UPVAL U5
       37 DUPTABLE                         R7 K4 [{"message", "pass"}]
       38 SETTABLEKS                       R6 R7 K2 ["message"]
       40 SETTABLEKS                       R5 R7 K3 ["pass"]
       42 RETURN                           R7 1

PROTO_20:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 LOADNIL                          R6
        3 LOADNIL                          R7
        4 GETUPVAL                         R8 2
        5 CALL                             R4 4 1
        6 MOVE                             R1 R4
        7 LOADK                            R2 K0 ["\n\n"]
        8 GETUPVAL                         R3 3
        9 LOADK                            R4 K1 ["Expected substring: never "]
       10 GETUPVAL                         R5 4
       11 CALL                             R3 2 1
       12 CONCAT                           R0 R1 R3
       13 GETUPVAL                         R1 5
       14 JUMPIFEQKNIL                     R1 ; [+24]
       16 GETUPVAL                         R1 5
       17 GETTABLEKS                       R1 R1 K2 ["hasMessage"]
       19 JUMPIFNOT                        R1 ; [+19]
       20 GETUPVAL                         R2 5
       21 GETTABLEKS                       R2 R2 K4 ["value"]
       23 GETTABLEKS                       R1 R2 K3 ["$$robloxInternalJestError"]
       25 JUMPIF                           R1 ; [+13]
       26 MOVE                             R1 R0
       27 GETUPVAL                         R4 6
       28 LOADK                            R5 K5 ["Received message:         "]
       29 GETUPVAL                         R6 5
       30 LOADK                            R7 K6 ["message"]
       31 GETUPVAL                         R8 4
       32 CALL                             R4 4 1
       33 MOVE                             R2 R4
       34 GETUPVAL                         R3 7
       35 GETUPVAL                         R4 5
       36 CALL                             R3 1 1
       37 CONCAT                           R0 R1 R3
       38 RETURN                           R0 1
       39 MOVE                             R1 R0
       40 GETUPVAL                         R4 6
       41 LOADK                            R5 K7 ["Received value:           "]
       42 GETUPVAL                         R6 5
       43 LOADK                            R7 K6 ["message"]
       44 CALL                             R4 3 1
       45 MOVE                             R2 R4
       46 GETUPVAL                         R3 7
       47 GETUPVAL                         R4 5
       48 CALL                             R3 1 1
       49 CONCAT                           R0 R1 R3
       50 RETURN                           R0 1

PROTO_21:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 LOADNIL                          R6
        3 LOADNIL                          R7
        4 GETUPVAL                         R8 2
        5 CALL                             R4 4 1
        6 MOVE                             R1 R4
        7 LOADK                            R2 K0 ["\n\n"]
        8 GETUPVAL                         R3 3
        9 LOADK                            R4 K1 ["Expected substring: "]
       10 GETUPVAL                         R5 4
       11 CALL                             R3 2 1
       12 CONCAT                           R0 R1 R3
       13 GETUPVAL                         R1 5
       14 JUMPIFNOTEQKNIL                  R1 ; [+6]
       16 MOVE                             R1 R0
       17 LOADK                            R2 K2 ["\n"]
       18 LOADK                            R3 K3 ["Received function never threw"]
       19 CONCAT                           R0 R1 R3
       20 RETURN                           R0 1
       21 GETUPVAL                         R1 5
       22 GETTABLEKS                       R1 R1 K4 ["hasMessage"]
       24 JUMPIFNOT                        R1 ; [+18]
       25 GETUPVAL                         R2 5
       26 GETTABLEKS                       R2 R2 K6 ["value"]
       28 GETTABLEKS                       R1 R2 K5 ["$$robloxInternalJestError"]
       30 JUMPIF                           R1 ; [+12]
       31 MOVE                             R1 R0
       32 GETUPVAL                         R4 6
       33 LOADK                            R5 K7 ["Received message:   "]
       34 GETUPVAL                         R6 5
       35 LOADK                            R7 K8 ["message"]
       36 CALL                             R4 3 1
       37 MOVE                             R2 R4
       38 GETUPVAL                         R3 7
       39 GETUPVAL                         R4 5
       40 CALL                             R3 1 1
       41 CONCAT                           R0 R1 R3
       42 RETURN                           R0 1
       43 MOVE                             R1 R0
       44 GETUPVAL                         R4 6
       45 LOADK                            R5 K9 ["Received value:     "]
       46 GETUPVAL                         R6 5
       47 LOADK                            R7 K8 ["message"]
       48 CALL                             R4 3 1
       49 MOVE                             R2 R4
       50 GETUPVAL                         R3 7
       51 GETUPVAL                         R4 5
       52 CALL                             R3 1 1
       53 CONCAT                           R0 R1 R3
       54 RETURN                           R0 1

PROTO_22:
        0 LOADB                            R4 0
        1 JUMPIFEQKNIL                     R2 ; [+19]
        3 GETTABLEKS                       R6 R2 K0 ["message"]
        5 FASTCALL1                        TYPEOF R6 ; [+2]
        6 GETIMPORT                        R5 K2 [typeof]
        8 CALL                             R5 1 1
        9 JUMPIFNOTEQKS                    R5 K3 ["string"] ; [+11]
       11 GETTABLEKS                       R5 R2 K0 ["message"]
       13 MOVE                             R7 R3
       14 LOADN                            R8 1
       15 LOADB                            R9 1
       16 NAMECALL                         R5 R5 K4 ["find"]
       18 CALL                             R5 4 1
       19 JUMPIFNOT                        R5 ; [+1]
       20 LOADB                            R4 1
       21 LOADNIL                          R5
       22 JUMPIFNOT                        R4 ; [+18]
       23 JUMPIFNOTEQKNIL                  R2 ; [+2]
       25 LOADB                            R7 0 +1
       26 LOADB                            R7 1
       27 FASTCALL1                        ASSERT R7 ; [+2]
       28 GETIMPORT                        R6 K6 [assert]
       30 CALL                             R6 1 0
       31 NEWCLOSURE                       R5 P0
       32 CAPTURE                          UPVAL U0
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R1
       35 CAPTURE                          UPVAL U1
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R2
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          UPVAL U3
       40 JUMP                             ; [+9]
       41 NEWCLOSURE                       R5 P1
       42 CAPTURE                          UPVAL U0
       43 CAPTURE                          VAL R0
       44 CAPTURE                          VAL R1
       45 CAPTURE                          UPVAL U1
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R2
       48 CAPTURE                          UPVAL U2
       49 CAPTURE                          UPVAL U3
       50 DUPTABLE                         R6 K8 [{"message", "pass"}]
       51 SETTABLEKS                       R5 R6 K0 ["message"]
       53 SETTABLEKS                       R4 R6 K7 ["pass"]
       55 RETURN                           R6 1

PROTO_23:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 LOADNIL                          R5
        3 LOADK                            R6 K0 [""]
        4 GETUPVAL                         R7 2
        5 CALL                             R3 4 1
        6 MOVE                             R1 R3
        7 LOADK                            R2 K1 ["\n\n"]
        8 CONCAT                           R0 R1 R2
        9 GETUPVAL                         R1 3
       10 JUMPIFEQKNIL                     R1 ; [+29]
       12 GETUPVAL                         R1 3
       13 GETTABLEKS                       R1 R1 K2 ["hasMessage"]
       15 JUMPIFNOT                        R1 ; [+24]
       16 GETUPVAL                         R2 3
       17 GETTABLEKS                       R2 R2 K4 ["value"]
       19 GETTABLEKS                       R1 R2 K3 ["$$robloxInternalJestError"]
       21 JUMPIF                           R1 ; [+18]
       22 MOVE                             R1 R0
       23 GETUPVAL                         R5 4
       24 LOADK                            R6 K5 ["Error name:    "]
       25 GETUPVAL                         R7 3
       26 LOADK                            R8 K6 ["name"]
       27 CALL                             R5 3 1
       28 MOVE                             R2 R5
       29 GETUPVAL                         R5 4
       30 LOADK                            R6 K7 ["Error message: "]
       31 GETUPVAL                         R7 3
       32 LOADK                            R8 K8 ["message"]
       33 CALL                             R5 3 1
       34 MOVE                             R3 R5
       35 GETUPVAL                         R4 5
       36 GETUPVAL                         R5 3
       37 CALL                             R4 1 1
       38 CONCAT                           R0 R1 R4
       39 RETURN                           R0 1
       40 MOVE                             R1 R0
       41 GETUPVAL                         R4 4
       42 LOADK                            R5 K9 ["Thrown value: "]
       43 GETUPVAL                         R6 3
       44 LOADK                            R7 K8 ["message"]
       45 CALL                             R4 3 1
       46 MOVE                             R2 R4
       47 GETUPVAL                         R3 5
       48 GETUPVAL                         R4 3
       49 CALL                             R3 1 1
       50 CONCAT                           R0 R1 R3
       51 RETURN                           R0 1

PROTO_24:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 LOADNIL                          R6
        3 LOADK                            R7 K0 [""]
        4 GETUPVAL                         R8 2
        5 CALL                             R4 4 1
        6 MOVE                             R1 R4
        7 LOADK                            R2 K1 ["\n\n"]
        8 LOADK                            R3 K2 ["Received function never threw"]
        9 CONCAT                           R0 R1 R3
       10 RETURN                           R0 1

PROTO_25:
        0 JUMPIFNOTEQKNIL                  R2 ; [+2]
        2 LOADB                            R3 0 +1
        3 LOADB                            R3 1
        4 LOADNIL                          R4
        5 JUMPIFNOT                        R3 ; [+16]
        6 JUMPIFNOTEQKNIL                  R2 ; [+2]
        8 LOADB                            R6 0 +1
        9 LOADB                            R6 1
       10 FASTCALL1                        ASSERT R6 ; [+2]
       11 GETIMPORT                        R5 K1 [assert]
       13 CALL                             R5 1 0
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R1
       18 CAPTURE                          VAL R2
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          UPVAL U2
       21 JUMP                             ; [+4]
       22 NEWCLOSURE                       R4 P1
       23 CAPTURE                          UPVAL U0
       24 CAPTURE                          VAL R0
       25 CAPTURE                          VAL R1
       26 DUPTABLE                         R5 K4 [{"message", "pass"}]
       27 SETTABLEKS                       R4 R5 K2 ["message"]
       29 SETTABLEKS                       R3 R5 K3 ["pass"]
       31 RETURN                           R5 1

PROTO_26:
        0 MOVE                             R3 R0
        1 GETUPVAL                         R6 0
        2 MOVE                             R7 R1
        3 CALL                             R6 1 1
        4 MOVE                             R4 R6
        5 LOADK                            R5 K0 ["\n"]
        6 CONCAT                           R2 R3 R5
        7 RETURN                           R2 1

PROTO_27:
        0 JUMPIFNOTEQKNIL                  R1 ; [+3]
        2 LOADK                            R4 K0 [""]
        3 RETURN                           R4 1
        4 JUMPIFNOTEQKS                    R2 K1 ["message"] ; [+51]
        6 GETTABLEKS                       R4 R1 K1 ["message"]
        8 FASTCALL1                        TYPEOF R3 ; [+3]
        9 MOVE                             R6 R3
       10 GETIMPORT                        R5 K3 [typeof]
       12 CALL                             R5 1 1
       13 JUMPIFNOTEQKS                    R5 K4 ["string"] ; [+17]
       15 MOVE                             R7 R3
       16 NAMECALL                         R5 R4 K5 ["find"]
       18 CALL                             R5 2 1
       19 JUMPIFNOT                        R5 ; [+28]
       20 MOVE                             R7 R0
       21 GETUPVAL                         R10 0
       22 MOVE                             R11 R4
       23 MOVE                             R12 R5
       24 LENGTH                           R13 R3
       25 CALL                             R10 3 1
       26 MOVE                             R8 R10
       27 LOADK                            R9 K6 ["\n"]
       28 CONCAT                           R6 R7 R9
       29 RETURN                           R6 1
       30 JUMP                             ; [+17]
       31 GETUPVAL                         R5 1
       32 MOVE                             R6 R3
       33 CALL                             R5 1 1
       34 JUMPIFNOTEQKS                    R5 K7 ["regexp"] ; [+13]
       36 MOVE                             R6 R0
       37 GETUPVAL                         R9 2
       38 MOVE                             R10 R4
       39 MOVE                             R13 R4
       40 NAMECALL                         R11 R3 K8 ["exec"]
       42 CALL                             R11 2 -1
       43 CALL                             R9 -1 1
       44 MOVE                             R7 R9
       45 LOADK                            R8 K6 ["\n"]
       46 CONCAT                           R5 R6 R8
       47 RETURN                           R5 1
       48 MOVE                             R6 R0
       49 GETUPVAL                         R9 3
       50 MOVE                             R10 R4
       51 CALL                             R9 1 1
       52 MOVE                             R7 R9
       53 LOADK                            R8 K6 ["\n"]
       54 CONCAT                           R5 R6 R8
       55 RETURN                           R5 1
       56 JUMPIFNOTEQKS                    R2 K9 ["name"] ; [+17]
       58 GETTABLEKS                       R4 R1 K10 ["isError"]
       60 JUMPIFNOT                        R4 ; [+11]
       61 MOVE                             R5 R0
       62 GETUPVAL                         R8 3
       63 GETTABLEKS                       R9 R1 K11 ["value"]
       65 GETTABLEKS                       R9 R9 K9 ["name"]
       67 CALL                             R8 1 1
       68 MOVE                             R6 R8
       69 LOADK                            R7 K6 ["\n"]
       70 CONCAT                           R4 R5 R7
       71 RETURN                           R4 1
       72 LOADK                            R4 K0 [""]
       73 RETURN                           R4 1
       74 JUMPIFNOTEQKS                    R2 K11 ["value"] ; [+15]
       76 GETTABLEKS                       R4 R1 K10 ["isError"]
       78 JUMPIFNOT                        R4 ; [+2]
       79 LOADK                            R4 K0 [""]
       80 RETURN                           R4 1
       81 MOVE                             R5 R0
       82 GETUPVAL                         R8 3
       83 GETTABLEKS                       R9 R1 K11 ["value"]
       85 CALL                             R8 1 1
       86 MOVE                             R6 R8
       87 LOADK                            R7 K6 ["\n"]
       88 CONCAT                           R4 R5 R7
       89 RETURN                           R4 1
       90 LOADK                            R4 K0 [""]
       91 RETURN                           R4 1

PROTO_28:
        0 JUMPIFEQKNIL                     R0 ; [+4]
        2 GETTABLEKS                       R1 R0 K0 ["isError"]
        4 JUMPIF                           R1 ; [+2]
        5 LOADK                            R1 K1 [""]
        6 RETURN                           R1 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R2 R0 K2 ["value"]
       10 GETTABLEKS                       R2 R2 K3 ["stack"]
       12 DUPTABLE                         R3 K5 [{"testMatch"}]
       13 NEWTABLE                         R4 0 0
       15 SETTABLEKS                       R4 R3 K4 ["testMatch"]
       17 DUPTABLE                         R4 K8 [{["noStackTrace"] = True}]
       18 CALL                             R1 3 -1
       19 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["JestGetType"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R2 R2 K6 ["getType"]
       14 GETIMPORT                        R3 K4 [require]
       16 GETTABLEKS                       R4 R1 K7 ["LuauPolyfill"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R3 K8 ["instanceof"]
       21 GETTABLEKS                       R5 R3 K9 ["Error"]
       23 GETIMPORT                        R6 K4 [require]
       25 GETTABLEKS                       R7 R1 K10 ["RegExp"]
       27 CALL                             R6 1 1
       28 GETIMPORT                        R7 K4 [require]
       30 GETTABLEKS                       R8 R1 K11 ["JestMatcherUtils"]
       32 CALL                             R7 1 1
       33 GETTABLEKS                       R8 R7 K12 ["EXPECTED_COLOR"]
       35 GETTABLEKS                       R9 R7 K13 ["RECEIVED_COLOR"]
       37 GETTABLEKS                       R10 R7 K14 ["matcherErrorMessage"]
       39 GETTABLEKS                       R11 R7 K15 ["matcherHint"]
       41 GETTABLEKS                       R12 R7 K16 ["printDiffOrStringify"]
       43 GETTABLEKS                       R13 R7 K17 ["printExpected"]
       45 GETTABLEKS                       R14 R7 K18 ["printReceived"]
       47 GETTABLEKS                       R15 R7 K19 ["printWithType"]
       49 GETTABLEKS                       R16 R7 K20 ["stringify"]
       51 GETIMPORT                        R17 K4 [require]
       53 GETTABLEKS                       R18 R1 K21 ["JestMessageUtil"]
       55 CALL                             R17 1 1
       56 GETTABLEKS                       R18 R17 K22 ["formatStackTrace"]
       58 GETIMPORT                        R19 K4 [require]
       60 GETTABLEKS                       R20 R0 K23 ["print"]
       62 CALL                             R19 1 1
       63 GETTABLEKS                       R20 R19 K24 ["printExpectedConstructorName"]
       65 GETTABLEKS                       R21 R19 K25 ["printExpectedConstructorNameNot"]
       67 GETTABLEKS                       R22 R19 K26 ["printReceivedConstructorName"]
       69 GETTABLEKS                       R23 R19 K27 ["printReceivedConstructorNameNot"]
       71 GETTABLEKS                       R24 R19 K28 ["printReceivedStringContainExpectedResult"]
       73 GETTABLEKS                       R25 R19 K29 ["printReceivedStringContainExpectedSubstring"]
       75 GETIMPORT                        R26 K4 [require]
       77 GETTABLEKS                       R27 R0 K30 ["types"]
       79 CALL                             R26 1 1
       80 GETIMPORT                        R27 K4 [require]
       82 GETTABLEKS                       R28 R0 K31 ["utils"]
       84 CALL                             R27 1 1
       85 GETTABLEKS                       R27 R27 K32 ["isError"]
       87 LOADNIL                          R28
       88 LOADNIL                          R29
       89 LOADNIL                          R30
       90 LOADNIL                          R31
       91 LOADNIL                          R32
       92 LOADNIL                          R33
       93 LOADNIL                          R34
       94 LOADNIL                          R35
       95 LOADNIL                          R36
       96 DUPCLOSURE                       R37 K33 [PROTO_0]
       97 NEWCLOSURE                       R38 P1
       98 CAPTURE                          VAL R27
       99 CAPTURE                          VAL R37
      100 CAPTURE                          VAL R5
      101 CAPTURE                          VAL R10
      102 CAPTURE                          VAL R11
      103 CAPTURE                          VAL R9
      104 CAPTURE                          VAL R15
      105 CAPTURE                          VAL R14
      106 CAPTURE                          VAL R2
      107 CAPTURE                          VAL R16
      108 CAPTURE                          REF R33
      109 CAPTURE                          REF R29
      110 CAPTURE                          REF R32
      111 CAPTURE                          REF R28
      112 CAPTURE                          REF R31
      113 CAPTURE                          REF R30
      114 CAPTURE                          VAL R8
      115 CAPTURE                          VAL R13
      116 DUPTABLE                         R39 K36 [{"toThrow", "toThrowError"}]
      117 LOADNIL                          R41
      118 LOADK                            R42 K34 ["toThrow"]
      119 NEWCLOSURE                       R40 P2
      120 CAPTURE                          VAL R41
      121 CAPTURE                          VAL R27
      122 CAPTURE                          VAL R37
      123 CAPTURE                          VAL R5
      124 CAPTURE                          VAL R10
      125 CAPTURE                          VAL R11
      126 CAPTURE                          VAL R42
      127 CAPTURE                          VAL R9
      128 CAPTURE                          VAL R15
      129 CAPTURE                          VAL R14
      130 CAPTURE                          VAL R2
      131 CAPTURE                          VAL R16
      132 CAPTURE                          REF R33
      133 CAPTURE                          REF R29
      134 CAPTURE                          REF R32
      135 CAPTURE                          REF R28
      136 CAPTURE                          REF R31
      137 CAPTURE                          REF R30
      138 CAPTURE                          VAL R8
      139 CAPTURE                          VAL R13
      140 SETTABLEKS                       R40 R39 K34 ["toThrow"]
      142 LOADNIL                          R41
      143 LOADK                            R42 K35 ["toThrowError"]
      144 NEWCLOSURE                       R40 P2
      145 CAPTURE                          VAL R41
      146 CAPTURE                          VAL R27
      147 CAPTURE                          VAL R37
      148 CAPTURE                          VAL R5
      149 CAPTURE                          VAL R10
      150 CAPTURE                          VAL R11
      151 CAPTURE                          VAL R42
      152 CAPTURE                          VAL R9
      153 CAPTURE                          VAL R15
      154 CAPTURE                          VAL R14
      155 CAPTURE                          VAL R2
      156 CAPTURE                          VAL R16
      157 CAPTURE                          REF R33
      158 CAPTURE                          REF R29
      159 CAPTURE                          REF R32
      160 CAPTURE                          REF R28
      161 CAPTURE                          REF R31
      162 CAPTURE                          REF R30
      163 CAPTURE                          VAL R8
      164 CAPTURE                          VAL R13
      165 SETTABLEKS                       R40 R39 K35 ["toThrowError"]
      167 NEWCLOSURE                       R28 P3
      168 CAPTURE                          VAL R11
      169 CAPTURE                          REF R34
      170 CAPTURE                          REF R35
      171 CAPTURE                          REF R36
      172 NEWCLOSURE                       R29 P4
      173 CAPTURE                          VAL R11
      174 CAPTURE                          REF R34
      175 CAPTURE                          REF R35
      176 CAPTURE                          REF R36
      177 NEWCLOSURE                       R30 P5
      178 CAPTURE                          VAL R11
      179 CAPTURE                          REF R34
      180 CAPTURE                          REF R36
      181 CAPTURE                          REF R35
      182 CAPTURE                          VAL R12
      183 NEWCLOSURE                       R31 P6
      184 CAPTURE                          VAL R4
      185 CAPTURE                          VAL R11
      186 CAPTURE                          VAL R21
      187 CAPTURE                          VAL R23
      188 CAPTURE                          REF R35
      189 CAPTURE                          REF R36
      190 CAPTURE                          VAL R20
      191 CAPTURE                          VAL R22
      192 NEWCLOSURE                       R32 P7
      193 CAPTURE                          VAL R11
      194 CAPTURE                          REF R34
      195 CAPTURE                          REF R35
      196 CAPTURE                          REF R36
      197 NEWCLOSURE                       R33 P8
      198 CAPTURE                          VAL R11
      199 CAPTURE                          REF R35
      200 CAPTURE                          REF R36
      201 DUPCLOSURE                       R34 K37 [PROTO_26]
      202 CAPTURE                          VAL R13
      203 DUPCLOSURE                       R35 K38 [PROTO_27]
      204 CAPTURE                          VAL R25
      205 CAPTURE                          VAL R2
      206 CAPTURE                          VAL R24
      207 CAPTURE                          VAL R14
      208 DUPCLOSURE                       R36 K39 [PROTO_28]
      209 CAPTURE                          VAL R18
      210 DUPTABLE                         R40 K42 [{"createMatcher", "matchers"}]
      211 SETTABLEKS                       R38 R40 K40 ["createMatcher"]
      213 SETTABLEKS                       R39 R40 K41 ["matchers"]
      215 CLOSEUPVALS                      R28
      216 RETURN                           R40 1
