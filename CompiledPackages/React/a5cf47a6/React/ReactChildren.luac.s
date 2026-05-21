PROTO_0:
        0 GETIMPORT                        R1 K2 [string.gsub]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["="]
        4 LOADK                            R4 K4 ["=0"]
        5 CALL                             R1 3 1
        6 GETIMPORT                        R2 K2 [string.gsub]
        8 MOVE                             R3 R1
        9 LOADK                            R4 K5 [":"]
       10 LOADK                            R5 K6 ["=2"]
       11 CALL                             R2 3 1
       12 MOVE                             R1 R2
       13 LOADK                            R3 K7 ["$"]
       14 MOVE                             R4 R1
       15 CONCAT                           R2 R3 R4
       16 RETURN                           R2 1

PROTO_1:
        0 RETURN                           R0 1

PROTO_2:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+30]
        7 JUMPIFEQKNIL                     R0 ; [+28]
        9 GETTABLEKS                       R2 R0 K3 ["key"]
       11 JUMPIFEQKNIL                     R2 ; [+24]
       13 GETTABLEKS                       R4 R0 K3 ["key"]
       15 FASTCALL1                        TOSTRING R4 ; [+2]
       16 GETIMPORT                        R3 K5 [tostring]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K8 [string.gsub]
       21 MOVE                             R5 R3
       22 LOADK                            R6 K9 ["="]
       23 LOADK                            R7 K10 ["=0"]
       24 CALL                             R4 3 1
       25 GETIMPORT                        R5 K8 [string.gsub]
       27 MOVE                             R6 R4
       28 LOADK                            R7 K11 [":"]
       29 LOADK                            R8 K12 ["=2"]
       30 CALL                             R5 3 1
       31 MOVE                             R4 R5
       32 LOADK                            R5 K13 ["$"]
       33 MOVE                             R6 R4
       34 CONCAT                           R2 R5 R6
       35 RETURN                           R2 1
       36 FASTCALL1                        TOSTRING R1 ; [+3]
       37 MOVE                             R3 R1
       38 GETIMPORT                        R2 K5 [tostring]
       40 CALL                             R2 1 1
       41 RETURN                           R2 1

PROTO_3:
        0 RETURN                           R0 1

PROTO_4:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R6 R0
        2 GETIMPORT                        R5 K1 [typeof]
        4 CALL                             R5 1 1
        5 JUMPIFEQKS                       R5 K2 ["nil"] ; [+5]
        7 JUMPIFEQKS                       R5 K3 ["boolean"] ; [+3]
        9 JUMPIFNOTEQKS                    R5 K4 ["userdata"] ; [+2]
       11 LOADNIL                          R0
       12 LOADB                            R6 0
       13 JUMPIFNOTEQKNIL                  R0 ; [+3]
       15 LOADB                            R6 1
       16 JUMP                             ; [+17]
       17 JUMPIFEQKS                       R5 K5 ["string"] ; [+3]
       19 JUMPIFNOTEQKS                    R5 K6 ["number"] ; [+3]
       21 LOADB                            R6 1
       22 JUMP                             ; [+11]
       23 JUMPIFNOTEQKS                    R5 K7 ["table"] ; [+10]
       25 GETTABLEKS                       R7 R0 K8 ["$$typeof"]
       27 GETUPVAL                         R8 0
       28 JUMPIFEQ                         R7 R8 ; [+4]
       30 GETUPVAL                         R8 1
       31 JUMPIFNOTEQ                      R7 R8 ; [+2]
       33 LOADB                            R6 1
       34 JUMPIFNOT                        R6 ; [+111]
       35 MOVE                             R7 R0
       36 MOVE                             R8 R4
       37 MOVE                             R9 R7
       38 CALL                             R8 1 1
       39 JUMPIFNOTEQKS                    R3 K9 [""] ; [+45]
       41 LOADK                            R10 K10 ["."]
       42 FASTCALL1                        TYPEOF R7 ; [+3]
       43 MOVE                             R13 R7
       44 GETIMPORT                        R12 K1 [typeof]
       46 CALL                             R12 1 1
       47 JUMPIFNOTEQKS                    R12 K7 ["table"] ; [+30]
       49 JUMPIFEQKNIL                     R7 ; [+28]
       51 GETTABLEKS                       R12 R7 K11 ["key"]
       53 JUMPIFEQKNIL                     R12 ; [+24]
       55 GETTABLEKS                       R13 R7 K11 ["key"]
       57 FASTCALL1                        TOSTRING R13 ; [+2]
       58 GETIMPORT                        R12 K13 [tostring]
       60 CALL                             R12 1 1
       61 GETIMPORT                        R13 K15 [string.gsub]
       63 MOVE                             R14 R12
       64 LOADK                            R15 K16 ["="]
       65 LOADK                            R16 K17 ["=0"]
       66 CALL                             R13 3 1
       67 GETIMPORT                        R14 K15 [string.gsub]
       69 MOVE                             R15 R13
       70 LOADK                            R16 K18 [":"]
       71 LOADK                            R17 K19 ["=2"]
       72 CALL                             R14 3 1
       73 MOVE                             R13 R14
       74 LOADK                            R14 K20 ["$"]
       75 MOVE                             R15 R13
       76 CONCAT                           R11 R14 R15
       77 JUMP                             ; [+5]
       78 LOADN                            R12 1
       79 FASTCALL1                        TOSTRING R12 ; [+2]
       80 GETIMPORT                        R11 K13 [tostring]
       82 CALL                             R11 1 1
       83 CONCAT                           R9 R10 R11
       84 JUMP                             ; [+1]
       85 MOVE                             R9 R3
       86 GETUPVAL                         R10 2
       87 GETTABLEKS                       R10 R10 K21 ["isArray"]
       89 MOVE                             R11 R8
       90 CALL                             R10 1 1
       91 JUMPIFNOT                        R10 ; [+14]
       92 LOADK                            R10 K9 [""]
       93 JUMPIFEQKNIL                     R9 ; [+4]
       95 MOVE                             R11 R9
       96 LOADK                            R12 K22 ["/"]
       97 CONCAT                           R10 R11 R12
       98 GETUPVAL                         R11 3
       99 MOVE                             R12 R8
      100 MOVE                             R13 R1
      101 MOVE                             R14 R10
      102 LOADK                            R15 K9 [""]
      103 DUPCLOSURE                       R16 K23 [PROTO_3]
      104 CALL                             R11 5 0
      105 JUMP                             ; [+38]
      106 JUMPIFEQKNIL                     R8 ; [+37]
      108 GETUPVAL                         R10 4
      109 MOVE                             R11 R8
      110 CALL                             R10 1 1
      111 JUMPIFNOT                        R10 ; [+25]
      112 GETTABLEKS                       R10 R8 K11 ["key"]
      114 GETUPVAL                         R11 5
      115 MOVE                             R12 R8
      116 MOVE                             R14 R2
      117 JUMPIFNOT                        R10 ; [+14]
      118 JUMPIFNOT                        R7 ; [+4]
      119 GETTABLEKS                       R17 R7 K11 ["key"]
      121 JUMPIFEQ                         R17 R10 ; [+10]
      123 FASTCALL1                        TOSTRING R10 ; [+3]
      124 MOVE                             R20 R10
      125 GETIMPORT                        R19 K13 [tostring]
      127 CALL                             R19 1 1
      128 MOVE                             R17 R19
      129 LOADK                            R18 K22 ["/"]
      130 CONCAT                           R15 R17 R18
      131 JUMP                             ; [+1]
      132 LOADK                            R15 K9 [""]
      133 MOVE                             R16 R9
      134 CONCAT                           R13 R14 R16
      135 CALL                             R11 2 1
      136 MOVE                             R8 R11
      137 FASTCALL2                        TABLE_INSERT R1 R8 ; [+5]
      139 MOVE                             R11 R1
      140 MOVE                             R12 R8
      141 GETIMPORT                        R10 K25 [table.insert]
      143 CALL                             R10 2 0
      144 LOADN                            R10 1
      145 RETURN                           R10 1
      146 LOADNIL                          R7
      147 LOADNIL                          R8
      148 LOADN                            R9 0
      149 JUMPIFNOTEQKS                    R3 K9 [""] ; [+3]
      151 LOADK                            R10 K10 ["."]
      152 JUMP                             ; [+3]
      153 MOVE                             R11 R3
      154 LOADK                            R12 K18 [":"]
      155 CONCAT                           R10 R11 R12
      156 GETUPVAL                         R11 2
      157 GETTABLEKS                       R11 R11 K21 ["isArray"]
      159 MOVE                             R12 R0
      160 CALL                             R11 1 1
      161 JUMPIFNOT                        R11 ; [+60]
      162 LOADN                            R13 1
      163 LENGTH                           R11 R0
      164 LOADN                            R12 1
      165 FORNPREP                         R11
      166 GETTABLE                         R7 R0 R13
      167 MOVE                             R14 R10
      168 MOVE                             R16 R7
      169 FASTCALL1                        TYPEOF R16 ; [+3]
      170 MOVE                             R18 R16
      171 GETIMPORT                        R17 K1 [typeof]
      173 CALL                             R17 1 1
      174 JUMPIFNOTEQKS                    R17 K7 ["table"] ; [+30]
      176 JUMPIFEQKNIL                     R16 ; [+28]
      178 GETTABLEKS                       R17 R16 K11 ["key"]
      180 JUMPIFEQKNIL                     R17 ; [+24]
      182 GETTABLEKS                       R18 R16 K11 ["key"]
      184 FASTCALL1                        TOSTRING R18 ; [+2]
      185 GETIMPORT                        R17 K13 [tostring]
      187 CALL                             R17 1 1
      188 GETIMPORT                        R18 K15 [string.gsub]
      190 MOVE                             R19 R17
      191 LOADK                            R20 K16 ["="]
      192 LOADK                            R21 K17 ["=0"]
      193 CALL                             R18 3 1
      194 GETIMPORT                        R19 K15 [string.gsub]
      196 MOVE                             R20 R18
      197 LOADK                            R21 K18 [":"]
      198 LOADK                            R22 K19 ["=2"]
      199 CALL                             R19 3 1
      200 MOVE                             R18 R19
      201 LOADK                            R19 K20 ["$"]
      202 MOVE                             R20 R18
      203 CONCAT                           R15 R19 R20
      204 JUMP                             ; [+6]
      205 FASTCALL1                        TOSTRING R13 ; [+3]
      206 MOVE                             R18 R13
      207 GETIMPORT                        R17 K13 [tostring]
      209 CALL                             R17 1 1
      210 MOVE                             R15 R17
      211 CONCAT                           R8 R14 R15
      212 GETUPVAL                         R14 3
      213 MOVE                             R15 R7
      214 MOVE                             R16 R1
      215 MOVE                             R17 R2
      216 MOVE                             R18 R8
      217 MOVE                             R19 R4
      218 CALL                             R14 5 1
      219 ADD                              R9 R9 R14
      220 FORNLOOP                         R11
      221 RETURN                           R9 1
      222 GETUPVAL                         R11 6
      223 MOVE                             R12 R0
      224 CALL                             R11 1 1
      225 FASTCALL1                        TYPEOF R11 ; [+3]
      226 MOVE                             R13 R11
      227 GETIMPORT                        R12 K1 [typeof]
      229 CALL                             R12 1 1
      230 JUMPIFNOTEQKS                    R12 K26 ["function"] ; [+76]
      232 MOVE                             R12 R0
      233 MOVE                             R13 R11
      234 MOVE                             R14 R12
      235 CALL                             R13 1 1
      236 LOADNIL                          R14
      237 LOADN                            R15 1
      238 GETTABLEKS                       R16 R13 K27 ["next"]
      240 CALL                             R16 0 1
      241 MOVE                             R14 R16
      242 GETTABLEKS                       R16 R14 K28 ["done"]
      244 JUMPIF                           R16 ; [+62]
      245 GETTABLEKS                       R7 R14 K29 ["value"]
      247 MOVE                             R16 R10
      248 MOVE                             R18 R7
      249 MOVE                             R19 R15
      250 FASTCALL1                        TYPEOF R18 ; [+3]
      251 MOVE                             R21 R18
      252 GETIMPORT                        R20 K1 [typeof]
      254 CALL                             R20 1 1
      255 JUMPIFNOTEQKS                    R20 K7 ["table"] ; [+30]
      257 JUMPIFEQKNIL                     R18 ; [+28]
      259 GETTABLEKS                       R20 R18 K11 ["key"]
      261 JUMPIFEQKNIL                     R20 ; [+24]
      263 GETTABLEKS                       R21 R18 K11 ["key"]
      265 FASTCALL1                        TOSTRING R21 ; [+2]
      266 GETIMPORT                        R20 K13 [tostring]
      268 CALL                             R20 1 1
      269 GETIMPORT                        R21 K15 [string.gsub]
      271 MOVE                             R22 R20
      272 LOADK                            R23 K16 ["="]
      273 LOADK                            R24 K17 ["=0"]
      274 CALL                             R21 3 1
      275 GETIMPORT                        R22 K15 [string.gsub]
      277 MOVE                             R23 R21
      278 LOADK                            R24 K18 [":"]
      279 LOADK                            R25 K19 ["=2"]
      280 CALL                             R22 3 1
      281 MOVE                             R21 R22
      282 LOADK                            R22 K20 ["$"]
      283 MOVE                             R23 R21
      284 CONCAT                           R17 R22 R23
      285 JUMP                             ; [+6]
      286 FASTCALL1                        TOSTRING R19 ; [+3]
      287 MOVE                             R21 R19
      288 GETIMPORT                        R20 K13 [tostring]
      290 CALL                             R20 1 1
      291 MOVE                             R17 R20
      292 CONCAT                           R8 R16 R17
      293 ADDK                             R15 R15 K30 [1]
      294 GETUPVAL                         R16 3
      295 MOVE                             R17 R7
      296 MOVE                             R18 R1
      297 MOVE                             R19 R2
      298 MOVE                             R20 R8
      299 MOVE                             R21 R4
      300 CALL                             R16 5 1
      301 ADD                              R9 R9 R16
      302 GETTABLEKS                       R16 R13 K27 ["next"]
      304 CALL                             R16 0 1
      305 MOVE                             R14 R16
      306 JUMPBACK                         ; [-65]
      307 RETURN                           R9 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 1
        4 GETUPVAL                         R2 1
        5 ADDK                             R2 R2 K0 [1]
        6 SETUPVAL                         R2 1
        7 RETURN                           R1 1

PROTO_6:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADNIL                          R3
        3 RETURN                           R3 1
        4 NEWTABLE                         R3 0 0
        6 LOADN                            R4 1
        7 GETUPVAL                         R5 0
        8 MOVE                             R6 R0
        9 MOVE                             R7 R3
       10 LOADK                            R8 K0 [""]
       11 LOADK                            R9 K0 [""]
       12 NEWCLOSURE                       R10 P0
       13 CAPTURE                          VAL R1
       14 CAPTURE                          REF R4
       15 CALL                             R5 5 0
       16 CLOSEUPVALS                      R4
       17 RETURN                           R3 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 ADDK                             R0 R0 K0 [1]
        2 SETUPVAL                         R0 0
        3 RETURN                           R0 0

PROTO_8:
        0 LOADN                            R1 0
        1 GETUPVAL                         R2 0
        2 MOVE                             R3 R0
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          REF R1
        5 CALL                             R2 2 0
        6 CLOSEUPVALS                      R1
        7 RETURN                           R1 1

PROTO_9:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R1 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 NEWCLOSURE                       R5 P0
        3 CAPTURE                          VAL R1
        4 MOVE                             R6 R2
        5 CALL                             R3 3 0
        6 RETURN                           R0 0

PROTO_11:
        0 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 DUPCLOSURE                       R3 K0 [PROTO_11]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+2]
        5 NEWTABLE                         R1 0 0
        7 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 LOADK                            R3 K0 ["React.Children.only expected to receive a single React element child."]
        5 CALL                             R1 2 0
        6 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Shared"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K5 ["Shared"]
       16 CALL                             R2 1 1
       17 GETTABLEKS                       R2 R2 K6 ["invariant"]
       19 GETIMPORT                        R3 K4 [require]
       21 GETTABLEKS                       R4 R0 K5 ["Shared"]
       23 CALL                             R3 1 1
       24 GETTABLEKS                       R3 R3 K7 ["ReactSymbols"]
       26 GETTABLEKS                       R4 R3 K8 ["getIteratorFn"]
       28 GETTABLEKS                       R5 R3 K9 ["REACT_ELEMENT_TYPE"]
       30 GETTABLEKS                       R6 R3 K10 ["REACT_PORTAL_TYPE"]
       32 GETIMPORT                        R7 K4 [require]
       34 GETTABLEKS                       R8 R0 K11 ["LuauPolyfill"]
       36 CALL                             R7 1 1
       37 GETTABLEKS                       R8 R7 K12 ["Array"]
       39 GETIMPORT                        R9 K4 [require]
       41 GETIMPORT                        R10 K1 [script]
       43 GETTABLEKS                       R10 R10 K2 ["Parent"]
       45 GETTABLEKS                       R10 R10 K13 ["ReactElement"]
       47 CALL                             R9 1 1
       48 GETTABLEKS                       R10 R9 K14 ["isValidElement"]
       50 GETTABLEKS                       R11 R9 K15 ["cloneAndReplaceKey"]
       52 DUPCLOSURE                       R12 K16 [PROTO_0]
       53 DUPCLOSURE                       R13 K17 [PROTO_1]
       54 DUPCLOSURE                       R14 K18 [PROTO_2]
       55 DUPCLOSURE                       R15 K19 [PROTO_4]
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R15
       60 CAPTURE                          VAL R10
       61 CAPTURE                          VAL R11
       62 CAPTURE                          VAL R4
       63 DUPCLOSURE                       R16 K20 [PROTO_6]
       64 CAPTURE                          VAL R15
       65 DUPCLOSURE                       R17 K21 [PROTO_8]
       66 CAPTURE                          VAL R16
       67 DUPCLOSURE                       R18 K22 [PROTO_10]
       68 CAPTURE                          VAL R16
       69 DUPCLOSURE                       R19 K23 [PROTO_12]
       70 CAPTURE                          VAL R16
       71 DUPCLOSURE                       R20 K24 [PROTO_13]
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R10
       74 DUPTABLE                         R21 K30 [{"forEach", "map", "count", "only", "toArray"}]
       75 SETTABLEKS                       R18 R21 K25 ["forEach"]
       77 SETTABLEKS                       R16 R21 K26 ["map"]
       79 SETTABLEKS                       R17 R21 K27 ["count"]
       81 SETTABLEKS                       R20 R21 K28 ["only"]
       83 SETTABLEKS                       R19 R21 K29 ["toArray"]
       85 RETURN                           R21 1
