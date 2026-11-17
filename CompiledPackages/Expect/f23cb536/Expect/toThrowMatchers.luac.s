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
       26 JUMPIFEQKS                       R5 K5 ["function"] ; [+54]
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
       48 JUMPIF                           R5 ; [+32]
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
       67 GETUPVAL                         R11 7
       68 LOADK                            R12 K14 ["received"]
       69 CALL                             R11 1 1
       70 LOADK                            R12 K15 [" value must be a function"]
       71 CONCAT                           R10 R11 R12
       72 GETUPVAL                         R11 8
       73 LOADK                            R12 K16 ["Received"]
       74 MOVE                             R13 R1
       75 GETUPVAL                         R14 9
       76 CALL                             R11 3 -1
       77 CALL                             R8 -1 -1
       78 CALL                             R7 -1 -1
       79 CALL                             R6 -1 0
       80 JUMP                             ; [+22]
       81 DUPCLOSURE                       R5 K17 [PROTO_1]
       82 DUPCLOSURE                       R6 K18 [PROTO_2]
       83 LOADNIL                          R7
       84 NEWCLOSURE                       R9 P2
       85 CAPTURE                          REF R7
       86 CAPTURE                          VAL R1
       87 NEWCLOSURE                       R10 P3
       88 CAPTURE                          UPVAL U10
       89 CAPTURE                          VAL R6
       90 CAPTURE                          REF R7
       91 CAPTURE                          UPVAL U11
       92 CAPTURE                          UPVAL U3
       93 FASTPCALL                        xpcall 2 ; [+2]
       94 GETIMPORT                        R8 K20 [xpcall]
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
      230 GETUPVAL                         R10 18
      231 LOADK                            R11 K11 ["expected"]
      232 CALL                             R10 1 1
      233 LOADK                            R11 K27 [" value must be a string or regular expression or class or error"]
      234 CONCAT                           R9 R10 R11
      235 GETUPVAL                         R10 8
      236 LOADK                            R11 K28 ["Expected"]
      237 MOVE                             R12 R2
      238 GETUPVAL                         R13 19
      239 CALL                             R10 3 -1
      240 CALL                             R7 -1 -1
      241 CALL                             R6 -1 -1
      242 CALL                             R5 -1 0
      243 RETURN                           R0 0

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
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 GETUPVAL                         R5 2
        5 CALL                             R1 4 1
        6 LOADK                            R2 K0 ["\n\n"]
        7 GETUPVAL                         R3 3
        8 LOADK                            R4 K1 ["Expected pattern: never "]
        9 GETUPVAL                         R5 4
       10 CALL                             R3 2 1
       11 CONCAT                           R0 R1 R3
       12 GETUPVAL                         R1 5
       13 JUMPIFEQKNIL                     R1 ; [+23]
       15 GETUPVAL                         R1 5
       16 GETTABLEKS                       R1 R1 K2 ["hasMessage"]
       18 JUMPIFNOT                        R1 ; [+18]
       19 GETUPVAL                         R2 5
       20 GETTABLEKS                       R2 R2 K4 ["value"]
       22 GETTABLEKS                       R1 R2 K3 ["$$robloxInternalJestError"]
       24 JUMPIF                           R1 ; [+12]
       25 MOVE                             R1 R0
       26 GETUPVAL                         R2 6
       27 LOADK                            R3 K5 ["Received message:       "]
       28 GETUPVAL                         R4 5
       29 LOADK                            R5 K6 ["message"]
       30 GETUPVAL                         R6 4
       31 CALL                             R2 4 1
       32 GETUPVAL                         R3 7
       33 GETUPVAL                         R4 5
       34 CALL                             R3 1 1
       35 CONCAT                           R0 R1 R3
       36 RETURN                           R0 1
       37 MOVE                             R1 R0
       38 GETUPVAL                         R2 6
       39 LOADK                            R3 K7 ["Received value:         "]
       40 GETUPVAL                         R4 5
       41 LOADK                            R5 K6 ["message"]
       42 CALL                             R2 3 1
       43 GETUPVAL                         R3 7
       44 GETUPVAL                         R4 5
       45 CALL                             R3 1 1
       46 CONCAT                           R0 R1 R3
       47 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 GETUPVAL                         R5 2
        5 CALL                             R1 4 1
        6 LOADK                            R2 K0 ["\n\n"]
        7 GETUPVAL                         R3 3
        8 LOADK                            R4 K1 ["Expected pattern: "]
        9 GETUPVAL                         R5 4
       10 CALL                             R3 2 1
       11 CONCAT                           R0 R1 R3
       12 GETUPVAL                         R1 5
       13 JUMPIFNOTEQKNIL                  R1 ; [+6]
       15 MOVE                             R1 R0
       16 LOADK                            R2 K2 ["\n"]
       17 LOADK                            R3 K3 ["Received function never threw"]
       18 CONCAT                           R0 R1 R3
       19 RETURN                           R0 1
       20 GETUPVAL                         R1 5
       21 GETTABLEKS                       R1 R1 K4 ["hasMessage"]
       23 JUMPIFNOT                        R1 ; [+17]
       24 GETUPVAL                         R2 5
       25 GETTABLEKS                       R2 R2 K6 ["value"]
       27 GETTABLEKS                       R1 R2 K5 ["$$robloxInternalJestError"]
       29 JUMPIF                           R1 ; [+11]
       30 MOVE                             R1 R0
       31 GETUPVAL                         R2 6
       32 LOADK                            R3 K7 ["Received message: "]
       33 GETUPVAL                         R4 5
       34 LOADK                            R5 K8 ["message"]
       35 CALL                             R2 3 1
       36 GETUPVAL                         R3 7
       37 GETUPVAL                         R4 5
       38 CALL                             R3 1 1
       39 CONCAT                           R0 R1 R3
       40 RETURN                           R0 1
       41 MOVE                             R1 R0
       42 GETUPVAL                         R2 6
       43 LOADK                            R3 K9 ["Received value:   "]
       44 GETUPVAL                         R4 5
       45 LOADK                            R5 K8 ["message"]
       46 CALL                             R2 3 1
       47 GETUPVAL                         R3 7
       48 GETUPVAL                         R4 5
       49 CALL                             R3 1 1
       50 CONCAT                           R0 R1 R3
       51 RETURN                           R0 1

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
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 GETUPVAL                         R5 2
        5 CALL                             R1 4 1
        6 LOADK                            R2 K0 ["\n\n"]
        7 GETUPVAL                         R3 3
        8 LOADK                            R4 K1 ["Expected asymmetric matcher: never "]
        9 GETUPVAL                         R5 4
       10 CALL                             R3 2 1
       11 LOADK                            R4 K2 ["\n"]
       12 CONCAT                           R0 R1 R4
       13 GETUPVAL                         R1 5
       14 JUMPIFEQKNIL                     R1 ; [+27]
       16 GETUPVAL                         R1 5
       17 GETTABLEKS                       R1 R1 K3 ["hasMessage"]
       19 JUMPIFNOT                        R1 ; [+22]
       20 GETUPVAL                         R2 5
       21 GETTABLEKS                       R2 R2 K5 ["value"]
       23 GETTABLEKS                       R1 R2 K4 ["$$robloxInternalJestError"]
       25 JUMPIF                           R1 ; [+16]
       26 MOVE                             R1 R0
       27 GETUPVAL                         R2 6
       28 LOADK                            R3 K6 ["Received name:    "]
       29 GETUPVAL                         R4 5
       30 LOADK                            R5 K7 ["name"]
       31 CALL                             R2 3 1
       32 GETUPVAL                         R3 6
       33 LOADK                            R4 K8 ["Received message: "]
       34 GETUPVAL                         R5 5
       35 LOADK                            R6 K9 ["message"]
       36 CALL                             R3 3 1
       37 GETUPVAL                         R4 7
       38 GETUPVAL                         R5 5
       39 CALL                             R4 1 1
       40 CONCAT                           R0 R1 R4
       41 RETURN                           R0 1
       42 MOVE                             R1 R0
       43 GETUPVAL                         R2 6
       44 LOADK                            R3 K10 ["Thrown value: "]
       45 GETUPVAL                         R4 5
       46 LOADK                            R5 K9 ["message"]
       47 CALL                             R2 3 1
       48 GETUPVAL                         R3 7
       49 GETUPVAL                         R4 5
       50 CALL                             R3 1 1
       51 CONCAT                           R0 R1 R3
       52 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 GETUPVAL                         R5 2
        5 CALL                             R1 4 1
        6 LOADK                            R2 K0 ["\n\n"]
        7 GETUPVAL                         R3 3
        8 LOADK                            R4 K1 ["Expected asymmetric matcher: "]
        9 GETUPVAL                         R5 4
       10 CALL                             R3 2 1
       11 LOADK                            R4 K2 ["\n"]
       12 CONCAT                           R0 R1 R4
       13 GETUPVAL                         R1 5
       14 JUMPIFNOTEQKNIL                  R1 ; [+5]
       16 MOVE                             R1 R0
       17 LOADK                            R2 K3 ["Received function never threw"]
       18 CONCAT                           R0 R1 R2
       19 RETURN                           R0 1
       20 GETUPVAL                         R1 5
       21 GETTABLEKS                       R1 R1 K4 ["hasMessage"]
       23 JUMPIFNOT                        R1 ; [+22]
       24 GETUPVAL                         R2 5
       25 GETTABLEKS                       R2 R2 K6 ["value"]
       27 GETTABLEKS                       R1 R2 K5 ["$$robloxInternalJestError"]
       29 JUMPIF                           R1 ; [+16]
       30 MOVE                             R1 R0
       31 GETUPVAL                         R2 6
       32 LOADK                            R3 K7 ["Received name:    "]
       33 GETUPVAL                         R4 5
       34 LOADK                            R5 K8 ["name"]
       35 CALL                             R2 3 1
       36 GETUPVAL                         R3 6
       37 LOADK                            R4 K9 ["Received message: "]
       38 GETUPVAL                         R5 5
       39 LOADK                            R6 K10 ["message"]
       40 CALL                             R3 3 1
       41 GETUPVAL                         R4 7
       42 GETUPVAL                         R5 5
       43 CALL                             R4 1 1
       44 CONCAT                           R0 R1 R4
       45 RETURN                           R0 1
       46 MOVE                             R1 R0
       47 GETUPVAL                         R2 6
       48 LOADK                            R3 K11 ["Thrown value: "]
       49 GETUPVAL                         R4 5
       50 LOADK                            R5 K10 ["message"]
       51 CALL                             R2 3 1
       52 GETUPVAL                         R3 7
       53 GETUPVAL                         R4 5
       54 CALL                             R3 1 1
       55 CONCAT                           R0 R1 R3
       56 RETURN                           R0 1

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
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 GETUPVAL                         R5 2
        5 CALL                             R1 4 1
        6 LOADK                            R2 K0 ["\n\n"]
        7 GETUPVAL                         R3 3
        8 LOADK                            R4 K1 ["Expected message: never "]
        9 GETUPVAL                         R5 4
       10 GETTABLEKS                       R5 R5 K2 ["message"]
       12 CALL                             R3 2 1
       13 CONCAT                           R0 R1 R3
       14 GETUPVAL                         R1 5
       15 JUMPIFEQKNIL                     R1 ; [+17]
       17 GETUPVAL                         R1 5
       18 GETTABLEKS                       R1 R1 K3 ["hasMessage"]
       20 JUMPIFNOT                        R1 ; [+12]
       21 GETUPVAL                         R2 5
       22 GETTABLEKS                       R2 R2 K5 ["value"]
       24 GETTABLEKS                       R1 R2 K4 ["$$robloxInternalJestError"]
       26 JUMPIF                           R1 ; [+6]
       27 MOVE                             R1 R0
       28 GETUPVAL                         R2 6
       29 GETUPVAL                         R3 5
       30 CALL                             R2 1 1
       31 CONCAT                           R0 R1 R2
       32 RETURN                           R0 1
       33 MOVE                             R1 R0
       34 GETUPVAL                         R2 7
       35 LOADK                            R3 K6 ["Received value:         "]
       36 GETUPVAL                         R4 5
       37 LOADK                            R5 K2 ["message"]
       38 CALL                             R2 3 1
       39 GETUPVAL                         R3 6
       40 GETUPVAL                         R4 5
       41 CALL                             R3 1 1
       42 CONCAT                           R0 R1 R3
       43 RETURN                           R0 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 GETUPVAL                         R5 2
        5 CALL                             R1 4 1
        6 LOADK                            R2 K0 ["\n\n"]
        7 CONCAT                           R0 R1 R2
        8 GETUPVAL                         R1 3
        9 JUMPIFNOTEQKNIL                  R1 ; [+12]
       11 MOVE                             R1 R0
       12 GETUPVAL                         R2 4
       13 LOADK                            R3 K1 ["Expected message: "]
       14 GETUPVAL                         R4 5
       15 GETTABLEKS                       R4 R4 K2 ["message"]
       17 CALL                             R2 2 1
       18 LOADK                            R3 K3 ["\n"]
       19 LOADK                            R4 K4 ["Received function never threw"]
       20 CONCAT                           R0 R1 R4
       21 RETURN                           R0 1
       22 GETUPVAL                         R1 3
       23 GETTABLEKS                       R1 R1 K5 ["hasMessage"]
       25 JUMPIFNOT                        R1 ; [+24]
       26 GETUPVAL                         R2 3
       27 GETTABLEKS                       R2 R2 K7 ["value"]
       29 GETTABLEKS                       R1 R2 K6 ["$$robloxInternalJestError"]
       31 JUMPIF                           R1 ; [+18]
       32 MOVE                             R1 R0
       33 GETUPVAL                         R2 6
       34 GETUPVAL                         R3 5
       35 GETTABLEKS                       R3 R3 K2 ["message"]
       37 GETUPVAL                         R4 3
       38 GETTABLEKS                       R4 R4 K2 ["message"]
       40 LOADK                            R5 K8 ["Expected message"]
       41 LOADK                            R6 K9 ["Received message"]
       42 LOADB                            R7 1
       43 CALL                             R2 5 1
       44 LOADK                            R3 K3 ["\n"]
       45 GETUPVAL                         R4 7
       46 GETUPVAL                         R5 3
       47 CALL                             R4 1 1
       48 CONCAT                           R0 R1 R4
       49 RETURN                           R0 1
       50 MOVE                             R1 R0
       51 GETUPVAL                         R2 4
       52 LOADK                            R3 K1 ["Expected message: "]
       53 GETUPVAL                         R4 5
       54 GETTABLEKS                       R4 R4 K2 ["message"]
       56 CALL                             R2 2 1
       57 GETUPVAL                         R3 8
       58 LOADK                            R4 K10 ["Received value:   "]
       59 GETUPVAL                         R5 3
       60 LOADK                            R6 K2 ["message"]
       61 CALL                             R3 3 1
       62 GETUPVAL                         R4 7
       63 GETUPVAL                         R5 3
       64 CALL                             R4 1 1
       65 CONCAT                           R0 R1 R4
       66 RETURN                           R0 1

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
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 GETUPVAL                         R5 2
        5 CALL                             R1 4 1
        6 LOADK                            R2 K0 ["\n\n"]
        7 GETUPVAL                         R3 3
        8 LOADK                            R4 K1 ["Expected constructor"]
        9 GETUPVAL                         R5 4
       10 CALL                             R3 2 1
       11 CONCAT                           R0 R1 R3
       12 GETUPVAL                         R1 5
       13 JUMPIFEQKNIL                     R1 ; [+72]
       15 GETUPVAL                         R2 5
       16 GETTABLEKS                       R2 R2 K2 ["value"]
       18 MOVE                             R1 R2
       19 JUMPIFNOT                        R1 ; [+15]
       20 FASTCALL1                        GETMETATABLE R2 ; [+3]
       21 MOVE                             R4 R2
       22 GETIMPORT                        R3 K4 [getmetatable]
       24 CALL                             R3 1 1
       25 MOVE                             R1 R3
       26 JUMPIFNOT                        R1 ; [+8]
       27 FASTCALL1                        GETMETATABLE R2 ; [+3]
       28 MOVE                             R4 R2
       29 GETIMPORT                        R3 K4 [getmetatable]
       31 CALL                             R3 1 1
       32 MOVE                             R1 R3
       33 GETTABLEKS                       R1 R1 K5 ["__index"]
       35 JUMPIFNOT                        R1 ; [+50]
       36 GETUPVAL                         R2 4
       37 MOVE                             R1 R2
       38 JUMPIFNOT                        R1 ; [+15]
       39 FASTCALL1                        GETMETATABLE R2 ; [+3]
       40 MOVE                             R4 R2
       41 GETIMPORT                        R3 K4 [getmetatable]
       43 CALL                             R3 1 1
       44 MOVE                             R1 R3
       45 JUMPIFNOT                        R1 ; [+8]
       46 FASTCALL1                        GETMETATABLE R2 ; [+3]
       47 MOVE                             R4 R2
       48 GETIMPORT                        R3 K4 [getmetatable]
       50 CALL                             R3 1 1
       51 MOVE                             R1 R3
       52 GETTABLEKS                       R1 R1 K5 ["__index"]
       54 JUMPIFNOT                        R1 ; [+31]
       55 GETUPVAL                         R2 5
       56 GETTABLEKS                       R2 R2 K2 ["value"]
       58 FASTCALL1                        GETMETATABLE R2 ; [+2]
       59 GETIMPORT                        R1 K4 [getmetatable]
       61 CALL                             R1 1 1
       62 GETTABLEKS                       R1 R1 K5 ["__index"]
       64 GETUPVAL                         R2 4
       65 JUMPIFEQ                         R1 R2 ; [+20]
       67 GETUPVAL                         R2 5
       68 GETTABLEKS                       R2 R2 K2 ["value"]
       70 GETTABLEKS                       R1 R2 K6 ["$$robloxInternalJestError"]
       72 JUMPIF                           R1 ; [+13]
       73 MOVE                             R1 R0
       74 GETUPVAL                         R2 6
       75 LOADK                            R3 K7 ["Received constructor"]
       76 GETUPVAL                         R5 5
       77 GETTABLEKS                       R5 R5 K2 ["value"]
       79 FASTCALL1                        GETMETATABLE R5 ; [+2]
       80 GETIMPORT                        R4 K4 [getmetatable]
       82 CALL                             R4 1 1
       83 GETUPVAL                         R5 4
       84 CALL                             R2 3 1
       85 CONCAT                           R0 R1 R2
       86 MOVE                             R1 R0
       87 LOADK                            R2 K8 ["\n"]
       88 CONCAT                           R0 R1 R2
       89 GETUPVAL                         R1 5
       90 JUMPIFEQKNIL                     R1 ; [+22]
       92 GETUPVAL                         R1 5
       93 GETTABLEKS                       R1 R1 K9 ["hasMessage"]
       95 JUMPIFNOT                        R1 ; [+17]
       96 GETUPVAL                         R2 5
       97 GETTABLEKS                       R2 R2 K2 ["value"]
       99 GETTABLEKS                       R1 R2 K6 ["$$robloxInternalJestError"]
      101 JUMPIF                           R1 ; [+11]
      102 MOVE                             R1 R0
      103 GETUPVAL                         R2 7
      104 LOADK                            R3 K10 ["Received message: "]
      105 GETUPVAL                         R4 5
      106 LOADK                            R5 K11 ["message"]
      107 CALL                             R2 3 1
      108 GETUPVAL                         R3 8
      109 GETUPVAL                         R4 5
      110 CALL                             R3 1 1
      111 CONCAT                           R0 R1 R3
      112 RETURN                           R0 1
      113 MOVE                             R1 R0
      114 GETUPVAL                         R2 7
      115 LOADK                            R3 K12 ["Received value: "]
      116 GETUPVAL                         R4 5
      117 LOADK                            R5 K11 ["message"]
      118 CALL                             R2 3 1
      119 GETUPVAL                         R3 8
      120 GETUPVAL                         R4 5
      121 CALL                             R3 1 1
      122 CONCAT                           R0 R1 R3
      123 RETURN                           R0 1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 GETUPVAL                         R5 2
        5 CALL                             R1 4 1
        6 LOADK                            R2 K0 ["\n\n"]
        7 GETUPVAL                         R3 3
        8 LOADK                            R4 K1 ["Expected constructor"]
        9 GETUPVAL                         R5 4
       10 CALL                             R3 2 1
       11 CONCAT                           R0 R1 R3
       12 GETUPVAL                         R1 5
       13 JUMPIFNOTEQKNIL                  R1 ; [+6]
       15 MOVE                             R1 R0
       16 LOADK                            R2 K2 ["\n"]
       17 LOADK                            R3 K3 ["Received function never threw"]
       18 CONCAT                           R0 R1 R3
       19 RETURN                           R0 1
       20 GETUPVAL                         R1 5
       21 GETTABLEKS                       R1 R1 K4 ["value"]
       23 JUMPIFEQKNIL                     R1 ; [+40]
       25 GETUPVAL                         R2 5
       26 GETTABLEKS                       R2 R2 K4 ["value"]
       28 MOVE                             R1 R2
       29 JUMPIFNOT                        R1 ; [+15]
       30 FASTCALL1                        GETMETATABLE R2 ; [+3]
       31 MOVE                             R4 R2
       32 GETIMPORT                        R3 K6 [getmetatable]
       34 CALL                             R3 1 1
       35 MOVE                             R1 R3
       36 JUMPIFNOT                        R1 ; [+8]
       37 FASTCALL1                        GETMETATABLE R2 ; [+3]
       38 MOVE                             R4 R2
       39 GETIMPORT                        R3 K6 [getmetatable]
       41 CALL                             R3 1 1
       42 MOVE                             R1 R3
       43 GETTABLEKS                       R1 R1 K7 ["__index"]
       45 JUMPIFNOT                        R1 ; [+18]
       46 GETUPVAL                         R2 5
       47 GETTABLEKS                       R2 R2 K4 ["value"]
       49 GETTABLEKS                       R1 R2 K8 ["$$robloxInternalJestError"]
       51 JUMPIF                           R1 ; [+12]
       52 MOVE                             R1 R0
       53 GETUPVAL                         R2 6
       54 LOADK                            R3 K9 ["Received constructor"]
       55 GETUPVAL                         R5 5
       56 GETTABLEKS                       R5 R5 K4 ["value"]
       58 FASTCALL1                        GETMETATABLE R5 ; [+2]
       59 GETIMPORT                        R4 K6 [getmetatable]
       61 CALL                             R4 1 1
       62 CALL                             R2 2 1
       63 CONCAT                           R0 R1 R2
       64 MOVE                             R1 R0
       65 LOADK                            R2 K2 ["\n"]
       66 CONCAT                           R0 R1 R2
       67 GETUPVAL                         R1 5
       68 GETTABLEKS                       R1 R1 K10 ["hasMessage"]
       70 JUMPIFNOT                        R1 ; [+17]
       71 GETUPVAL                         R2 5
       72 GETTABLEKS                       R2 R2 K4 ["value"]
       74 GETTABLEKS                       R1 R2 K8 ["$$robloxInternalJestError"]
       76 JUMPIF                           R1 ; [+11]
       77 MOVE                             R1 R0
       78 GETUPVAL                         R2 7
       79 LOADK                            R3 K11 ["Received message: "]
       80 GETUPVAL                         R4 5
       81 LOADK                            R5 K12 ["message"]
       82 CALL                             R2 3 1
       83 GETUPVAL                         R3 8
       84 GETUPVAL                         R4 5
       85 CALL                             R3 1 1
       86 CONCAT                           R0 R1 R3
       87 RETURN                           R0 1
       88 MOVE                             R1 R0
       89 GETUPVAL                         R2 7
       90 LOADK                            R3 K13 ["Received value: "]
       91 GETUPVAL                         R4 5
       92 LOADK                            R5 K12 ["message"]
       93 CALL                             R2 3 1
       94 GETUPVAL                         R3 8
       95 GETUPVAL                         R4 5
       96 CALL                             R3 1 1
       97 CONCAT                           R0 R1 R3
       98 RETURN                           R0 1

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
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 GETUPVAL                         R5 2
        5 CALL                             R1 4 1
        6 LOADK                            R2 K0 ["\n\n"]
        7 GETUPVAL                         R3 3
        8 LOADK                            R4 K1 ["Expected substring: never "]
        9 GETUPVAL                         R5 4
       10 CALL                             R3 2 1
       11 CONCAT                           R0 R1 R3
       12 GETUPVAL                         R1 5
       13 JUMPIFEQKNIL                     R1 ; [+23]
       15 GETUPVAL                         R1 5
       16 GETTABLEKS                       R1 R1 K2 ["hasMessage"]
       18 JUMPIFNOT                        R1 ; [+18]
       19 GETUPVAL                         R2 5
       20 GETTABLEKS                       R2 R2 K4 ["value"]
       22 GETTABLEKS                       R1 R2 K3 ["$$robloxInternalJestError"]
       24 JUMPIF                           R1 ; [+12]
       25 MOVE                             R1 R0
       26 GETUPVAL                         R2 6
       27 LOADK                            R3 K5 ["Received message:         "]
       28 GETUPVAL                         R4 5
       29 LOADK                            R5 K6 ["message"]
       30 GETUPVAL                         R6 4
       31 CALL                             R2 4 1
       32 GETUPVAL                         R3 7
       33 GETUPVAL                         R4 5
       34 CALL                             R3 1 1
       35 CONCAT                           R0 R1 R3
       36 RETURN                           R0 1
       37 MOVE                             R1 R0
       38 GETUPVAL                         R2 6
       39 LOADK                            R3 K7 ["Received value:           "]
       40 GETUPVAL                         R4 5
       41 LOADK                            R5 K6 ["message"]
       42 CALL                             R2 3 1
       43 GETUPVAL                         R3 7
       44 GETUPVAL                         R4 5
       45 CALL                             R3 1 1
       46 CONCAT                           R0 R1 R3
       47 RETURN                           R0 1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 GETUPVAL                         R5 2
        5 CALL                             R1 4 1
        6 LOADK                            R2 K0 ["\n\n"]
        7 GETUPVAL                         R3 3
        8 LOADK                            R4 K1 ["Expected substring: "]
        9 GETUPVAL                         R5 4
       10 CALL                             R3 2 1
       11 CONCAT                           R0 R1 R3
       12 GETUPVAL                         R1 5
       13 JUMPIFNOTEQKNIL                  R1 ; [+6]
       15 MOVE                             R1 R0
       16 LOADK                            R2 K2 ["\n"]
       17 LOADK                            R3 K3 ["Received function never threw"]
       18 CONCAT                           R0 R1 R3
       19 RETURN                           R0 1
       20 GETUPVAL                         R1 5
       21 GETTABLEKS                       R1 R1 K4 ["hasMessage"]
       23 JUMPIFNOT                        R1 ; [+17]
       24 GETUPVAL                         R2 5
       25 GETTABLEKS                       R2 R2 K6 ["value"]
       27 GETTABLEKS                       R1 R2 K5 ["$$robloxInternalJestError"]
       29 JUMPIF                           R1 ; [+11]
       30 MOVE                             R1 R0
       31 GETUPVAL                         R2 6
       32 LOADK                            R3 K7 ["Received message:   "]
       33 GETUPVAL                         R4 5
       34 LOADK                            R5 K8 ["message"]
       35 CALL                             R2 3 1
       36 GETUPVAL                         R3 7
       37 GETUPVAL                         R4 5
       38 CALL                             R3 1 1
       39 CONCAT                           R0 R1 R3
       40 RETURN                           R0 1
       41 MOVE                             R1 R0
       42 GETUPVAL                         R2 6
       43 LOADK                            R3 K9 ["Received value:     "]
       44 GETUPVAL                         R4 5
       45 LOADK                            R5 K8 ["message"]
       46 CALL                             R2 3 1
       47 GETUPVAL                         R3 7
       48 GETUPVAL                         R4 5
       49 CALL                             R3 1 1
       50 CONCAT                           R0 R1 R3
       51 RETURN                           R0 1

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
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADNIL                          R3
        3 LOADK                            R4 K0 [""]
        4 GETUPVAL                         R5 2
        5 CALL                             R1 4 1
        6 LOADK                            R2 K1 ["\n\n"]
        7 CONCAT                           R0 R1 R2
        8 GETUPVAL                         R1 3
        9 JUMPIFEQKNIL                     R1 ; [+27]
       11 GETUPVAL                         R1 3
       12 GETTABLEKS                       R1 R1 K2 ["hasMessage"]
       14 JUMPIFNOT                        R1 ; [+22]
       15 GETUPVAL                         R2 3
       16 GETTABLEKS                       R2 R2 K4 ["value"]
       18 GETTABLEKS                       R1 R2 K3 ["$$robloxInternalJestError"]
       20 JUMPIF                           R1 ; [+16]
       21 MOVE                             R1 R0
       22 GETUPVAL                         R2 4
       23 LOADK                            R3 K5 ["Error name:    "]
       24 GETUPVAL                         R4 3
       25 LOADK                            R5 K6 ["name"]
       26 CALL                             R2 3 1
       27 GETUPVAL                         R3 4
       28 LOADK                            R4 K7 ["Error message: "]
       29 GETUPVAL                         R5 3
       30 LOADK                            R6 K8 ["message"]
       31 CALL                             R3 3 1
       32 GETUPVAL                         R4 5
       33 GETUPVAL                         R5 3
       34 CALL                             R4 1 1
       35 CONCAT                           R0 R1 R4
       36 RETURN                           R0 1
       37 MOVE                             R1 R0
       38 GETUPVAL                         R2 4
       39 LOADK                            R3 K9 ["Thrown value: "]
       40 GETUPVAL                         R4 3
       41 LOADK                            R5 K8 ["message"]
       42 CALL                             R2 3 1
       43 GETUPVAL                         R3 5
       44 GETUPVAL                         R4 3
       45 CALL                             R3 1 1
       46 CONCAT                           R0 R1 R3
       47 RETURN                           R0 1

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADNIL                          R3
        3 LOADK                            R4 K0 [""]
        4 GETUPVAL                         R5 2
        5 CALL                             R1 4 1
        6 LOADK                            R2 K1 ["\n\n"]
        7 LOADK                            R3 K2 ["Received function never threw"]
        8 CONCAT                           R0 R1 R3
        9 RETURN                           R0 1

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
        1 GETUPVAL                         R4 0
        2 MOVE                             R5 R1
        3 CALL                             R4 1 1
        4 LOADK                            R5 K0 ["\n"]
        5 CONCAT                           R2 R3 R5
        6 RETURN                           R2 1

PROTO_27:
        0 JUMPIFNOTEQKNIL                  R1 ; [+3]
        2 LOADK                            R4 K0 [""]
        3 RETURN                           R4 1
        4 JUMPIFNOTEQKS                    R2 K1 ["message"] ; [+48]
        6 GETTABLEKS                       R4 R1 K1 ["message"]
        8 FASTCALL1                        TYPEOF R3 ; [+3]
        9 MOVE                             R6 R3
       10 GETIMPORT                        R5 K3 [typeof]
       12 CALL                             R5 1 1
       13 JUMPIFNOTEQKS                    R5 K4 ["string"] ; [+16]
       15 MOVE                             R7 R3
       16 NAMECALL                         R5 R4 K5 ["find"]
       18 CALL                             R5 2 1
       19 JUMPIFNOT                        R5 ; [+26]
       20 MOVE                             R7 R0
       21 GETUPVAL                         R8 0
       22 MOVE                             R9 R4
       23 MOVE                             R10 R5
       24 LENGTH                           R11 R3
       25 CALL                             R8 3 1
       26 LOADK                            R9 K6 ["\n"]
       27 CONCAT                           R6 R7 R9
       28 RETURN                           R6 1
       29 JUMP                             ; [+16]
       30 GETUPVAL                         R5 1
       31 MOVE                             R6 R3
       32 CALL                             R5 1 1
       33 JUMPIFNOTEQKS                    R5 K7 ["regexp"] ; [+12]
       35 MOVE                             R6 R0
       36 GETUPVAL                         R7 2
       37 MOVE                             R8 R4
       38 MOVE                             R11 R4
       39 NAMECALL                         R9 R3 K8 ["exec"]
       41 CALL                             R9 2 -1
       42 CALL                             R7 -1 1
       43 LOADK                            R8 K6 ["\n"]
       44 CONCAT                           R5 R6 R8
       45 RETURN                           R5 1
       46 MOVE                             R6 R0
       47 GETUPVAL                         R7 3
       48 MOVE                             R8 R4
       49 CALL                             R7 1 1
       50 LOADK                            R8 K6 ["\n"]
       51 CONCAT                           R5 R6 R8
       52 RETURN                           R5 1
       53 JUMPIFNOTEQKS                    R2 K9 ["name"] ; [+16]
       55 GETTABLEKS                       R4 R1 K10 ["isError"]
       57 JUMPIFNOT                        R4 ; [+10]
       58 MOVE                             R5 R0
       59 GETUPVAL                         R6 3
       60 GETTABLEKS                       R7 R1 K11 ["value"]
       62 GETTABLEKS                       R7 R7 K9 ["name"]
       64 CALL                             R6 1 1
       65 LOADK                            R7 K6 ["\n"]
       66 CONCAT                           R4 R5 R7
       67 RETURN                           R4 1
       68 LOADK                            R4 K0 [""]
       69 RETURN                           R4 1
       70 JUMPIFNOTEQKS                    R2 K11 ["value"] ; [+14]
       72 GETTABLEKS                       R4 R1 K10 ["isError"]
       74 JUMPIFNOT                        R4 ; [+2]
       75 LOADK                            R4 K0 [""]
       76 RETURN                           R4 1
       77 MOVE                             R5 R0
       78 GETUPVAL                         R6 3
       79 GETTABLEKS                       R7 R1 K11 ["value"]
       81 CALL                             R6 1 1
       82 LOADK                            R7 K6 ["\n"]
       83 CONCAT                           R4 R5 R7
       84 RETURN                           R4 1
       85 LOADK                            R4 K0 [""]
       86 RETURN                           R4 1

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
