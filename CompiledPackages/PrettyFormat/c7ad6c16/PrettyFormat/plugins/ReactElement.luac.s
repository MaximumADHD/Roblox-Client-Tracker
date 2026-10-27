PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_1:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K0 ["isArray"]
        7 MOVE                             R4 R0
        8 CALL                             R3 1 1
        9 JUMPIFNOT                        R3 ; [+9]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K1 ["forEach"]
       13 MOVE                             R4 R0
       14 NEWCLOSURE                       R5 P0
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          VAL R2
       17 CALL                             R3 2 0
       18 RETURN                           R2 1
       19 JUMPIFEQKNIL                     R0 ; [+10]
       21 JUMPIFEQKB                       R0 FALSE ; [+8]
       23 FASTCALL2                        TABLE_INSERT R2 R0 ; [+5]
       25 MOVE                             R4 R2
       26 MOVE                             R5 R0
       27 GETIMPORT                        R3 K4 [table.insert]
       29 CALL                             R3 2 0
       30 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["type"]
        2 FASTCALL1                        TYPEOF R1 ; [+3]
        3 MOVE                             R3 R1
        4 GETIMPORT                        R2 K2 [typeof]
        6 CALL                             R2 1 1
        7 JUMPIFNOTEQKS                    R2 K3 ["string"] ; [+2]
        9 RETURN                           R1 1
       10 FASTCALL1                        TYPEOF R1 ; [+3]
       11 MOVE                             R3 R1
       12 GETIMPORT                        R2 K2 [typeof]
       14 CALL                             R2 1 1
       15 JUMPIFNOTEQKS                    R2 K4 ["function"] ; [+16]
       17 GETIMPORT                        R2 K7 [debug.info]
       19 MOVE                             R3 R1
       20 LOADK                            R4 K8 ["n"]
       21 CALL                             R2 2 1
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R4 R4 K9 ["toJSBoolean"]
       25 MOVE                             R5 R2
       26 CALL                             R4 1 1
       27 JUMPIFNOT                        R4 ; [+2]
       28 MOVE                             R3 R2
       29 RETURN                           R3 1
       30 LOADK                            R3 K10 ["Unknown"]
       31 RETURN                           R3 1
       32 FASTCALL1                        TYPEOF R1 ; [+3]
       33 MOVE                             R3 R1
       34 GETIMPORT                        R2 K2 [typeof]
       36 CALL                             R2 1 1
       37 JUMPIFNOTEQKS                    R2 K11 ["table"] ; [+38]
       39 FASTCALL1                        GETMETATABLE R1 ; [+3]
       40 MOVE                             R3 R1
       41 GETIMPORT                        R2 K13 [getmetatable]
       43 CALL                             R2 1 1
       44 JUMPIFEQKNIL                     R2 ; [+31]
       46 GETTABLEKS                       R4 R2 K14 ["__call"]
       48 FASTCALL1                        TYPEOF R4 ; [+2]
       49 GETIMPORT                        R3 K2 [typeof]
       51 CALL                             R3 1 1
       52 JUMPIFNOTEQKS                    R3 K4 ["function"] ; [+23]
       54 GETUPVAL                         R4 0
       55 GETTABLEKS                       R4 R4 K9 ["toJSBoolean"]
       57 GETTABLEKS                       R5 R1 K15 ["displayName"]
       59 CALL                             R4 1 1
       60 JUMPIFNOT                        R4 ; [+3]
       61 GETTABLEKS                       R3 R1 K15 ["displayName"]
       63 RETURN                           R3 1
       64 GETUPVAL                         R4 0
       65 GETTABLEKS                       R4 R4 K9 ["toJSBoolean"]
       67 GETTABLEKS                       R5 R1 K16 ["name"]
       69 CALL                             R4 1 1
       70 JUMPIFNOT                        R4 ; [+3]
       71 GETTABLEKS                       R3 R1 K16 ["name"]
       73 RETURN                           R3 1
       74 LOADK                            R3 K10 ["Unknown"]
       75 RETURN                           R3 1
       76 GETUPVAL                         R2 1
       77 GETTABLEKS                       R2 R2 K17 ["isFragment"]
       79 MOVE                             R3 R0
       80 CALL                             R2 1 1
       81 JUMPIFNOT                        R2 ; [+2]
       82 LOADK                            R2 K18 ["React.Fragment"]
       83 RETURN                           R2 1
       84 GETUPVAL                         R2 1
       85 GETTABLEKS                       R2 R2 K19 ["isSuspense"]
       87 MOVE                             R3 R0
       88 CALL                             R2 1 1
       89 JUMPIFNOT                        R2 ; [+2]
       90 LOADK                            R2 K20 ["React.Suspense"]
       91 RETURN                           R2 1
       92 FASTCALL1                        TYPEOF R1 ; [+3]
       93 MOVE                             R3 R1
       94 GETIMPORT                        R2 K2 [typeof]
       96 CALL                             R2 1 1
       97 JUMPIFNOTEQKS                    R2 K11 ["table"] ; [+183]
       99 JUMPIFEQKNIL                     R1 ; [+181]
      101 GETUPVAL                         R2 1
      102 GETTABLEKS                       R2 R2 K21 ["isContextProvider"]
      104 MOVE                             R3 R0
      105 CALL                             R2 1 1
      106 JUMPIFNOT                        R2 ; [+2]
      107 LOADK                            R2 K22 ["Context.Provider"]
      108 RETURN                           R2 1
      109 GETUPVAL                         R2 1
      110 GETTABLEKS                       R2 R2 K23 ["isContextConsumer"]
      112 MOVE                             R3 R0
      113 CALL                             R2 1 1
      114 JUMPIFNOT                        R2 ; [+2]
      115 LOADK                            R2 K24 ["Context.Consumer"]
      116 RETURN                           R2 1
      117 GETUPVAL                         R2 1
      118 GETTABLEKS                       R2 R2 K25 ["isForwardRef"]
      120 MOVE                             R3 R0
      121 CALL                             R2 1 1
      122 JUMPIFNOT                        R2 ; [+84]
      123 GETUPVAL                         R2 0
      124 GETTABLEKS                       R2 R2 K9 ["toJSBoolean"]
      126 GETTABLEKS                       R3 R1 K15 ["displayName"]
      128 CALL                             R2 1 1
      129 JUMPIFNOT                        R2 ; [+3]
      130 GETTABLEKS                       R2 R1 K15 ["displayName"]
      132 RETURN                           R2 1
      133 GETTABLEKS                       R4 R1 K26 ["render"]
      135 FASTCALL1                        TYPEOF R4 ; [+2]
      136 GETIMPORT                        R3 K2 [typeof]
      138 CALL                             R3 1 1
      139 JUMPIFNOTEQKS                    R3 K4 ["function"] ; [+19]
      141 GETUPVAL                         R3 0
      142 GETTABLEKS                       R3 R3 K9 ["toJSBoolean"]
      144 GETIMPORT                        R4 K7 [debug.info]
      146 GETTABLEKS                       R5 R1 K26 ["render"]
      148 LOADK                            R6 K8 ["n"]
      149 CALL                             R4 2 -1
      150 CALL                             R3 -1 1
      151 JUMPIFNOT                        R3 ; [+7]
      152 GETIMPORT                        R2 K7 [debug.info]
      154 GETTABLEKS                       R3 R1 K26 ["render"]
      156 LOADK                            R4 K8 ["n"]
      157 CALL                             R2 2 1
      158 JUMP                             ; [+39]
      159 GETTABLEKS                       R4 R1 K26 ["render"]
      161 FASTCALL1                        TYPEOF R4 ; [+2]
      162 GETIMPORT                        R3 K2 [typeof]
      164 CALL                             R3 1 1
      165 JUMPIFNOTEQKS                    R3 K11 ["table"] ; [+31]
      167 GETUPVAL                         R3 0
      168 GETTABLEKS                       R3 R3 K9 ["toJSBoolean"]
      170 GETTABLEKS                       R4 R1 K26 ["render"]
      172 GETTABLEKS                       R4 R4 K15 ["displayName"]
      174 CALL                             R3 1 1
      175 JUMPIFNOT                        R3 ; [+5]
      176 GETTABLEKS                       R2 R1 K26 ["render"]
      178 GETTABLEKS                       R2 R2 K15 ["displayName"]
      180 JUMP                             ; [+17]
      181 GETUPVAL                         R3 0
      182 GETTABLEKS                       R3 R3 K9 ["toJSBoolean"]
      184 GETTABLEKS                       R4 R1 K26 ["render"]
      186 GETTABLEKS                       R4 R4 K16 ["name"]
      188 CALL                             R3 1 1
      189 JUMPIFNOT                        R3 ; [+5]
      190 GETTABLEKS                       R2 R1 K26 ["render"]
      192 GETTABLEKS                       R2 R2 K16 ["name"]
      194 JUMP                             ; [+3]
      195 LOADK                            R2 K27 [""]
      196 JUMP                             ; [+1]
      197 LOADK                            R2 K27 [""]
      198 JUMPIFEQKS                       R2 K27 [""] ; [+6]
      200 LOADK                            R4 K28 ["ForwardRef("]
      201 MOVE                             R5 R2
      202 LOADK                            R6 K29 [")"]
      203 CONCAT                           R3 R4 R6
      204 RETURN                           R3 1
      205 LOADK                            R3 K30 ["ForwardRef"]
      206 RETURN                           R3 1
      207 GETUPVAL                         R2 1
      208 GETTABLEKS                       R2 R2 K31 ["isMemo"]
      210 MOVE                             R3 R0
      211 CALL                             R2 1 1
      212 JUMPIFNOT                        R2 ; [+68]
      213 GETUPVAL                         R3 0
      214 GETTABLEKS                       R3 R3 K9 ["toJSBoolean"]
      216 GETTABLEKS                       R4 R1 K15 ["displayName"]
      218 CALL                             R3 1 1
      219 JUMPIFNOT                        R3 ; [+3]
      220 GETTABLEKS                       R2 R1 K15 ["displayName"]
      222 JUMP                             ; [+49]
      223 GETTABLEKS                       R4 R1 K0 ["type"]
      225 FASTCALL1                        TYPEOF R4 ; [+2]
      226 GETIMPORT                        R3 K2 [typeof]
      228 CALL                             R3 1 1
      229 JUMPIFNOTEQKS                    R3 K11 ["table"] ; [+15]
      231 GETUPVAL                         R3 0
      232 GETTABLEKS                       R3 R3 K9 ["toJSBoolean"]
      234 GETTABLEKS                       R4 R1 K0 ["type"]
      236 GETTABLEKS                       R4 R4 K15 ["displayName"]
      238 CALL                             R3 1 1
      239 JUMPIFNOT                        R3 ; [+5]
      240 GETTABLEKS                       R2 R1 K0 ["type"]
      242 GETTABLEKS                       R2 R2 K15 ["displayName"]
      244 JUMP                             ; [+27]
      245 GETTABLEKS                       R4 R1 K0 ["type"]
      247 FASTCALL1                        TYPEOF R4 ; [+2]
      248 GETIMPORT                        R3 K2 [typeof]
      250 CALL                             R3 1 1
      251 JUMPIFNOTEQKS                    R3 K4 ["function"] ; [+19]
      253 GETUPVAL                         R3 0
      254 GETTABLEKS                       R3 R3 K9 ["toJSBoolean"]
      256 GETIMPORT                        R4 K7 [debug.info]
      258 GETTABLEKS                       R5 R1 K0 ["type"]
      260 LOADK                            R6 K8 ["n"]
      261 CALL                             R4 2 -1
      262 CALL                             R3 -1 1
      263 JUMPIFNOT                        R3 ; [+7]
      264 GETIMPORT                        R2 K7 [debug.info]
      266 GETTABLEKS                       R3 R1 K0 ["type"]
      268 LOADK                            R4 K8 ["n"]
      269 CALL                             R2 2 1
      270 JUMP                             ; [+1]
      271 LOADK                            R2 K27 [""]
      272 JUMPIFEQKS                       R2 K27 [""] ; [+6]
      274 LOADK                            R4 K32 ["Memo("]
      275 MOVE                             R5 R2
      276 LOADK                            R6 K29 [")"]
      277 CONCAT                           R3 R4 R6
      278 RETURN                           R3 1
      279 LOADK                            R3 K33 ["Memo"]
      280 RETURN                           R3 1
      281 LOADK                            R2 K34 ["UNDEFINED"]
      282 RETURN                           R2 1

PROTO_3:
        0 LOADB                            R1 0
        1 JUMPIFEQKS                       R0 K0 ["children"] ; [+7]
        3 GETUPVAL                         R3 0
        4 GETTABLE                         R2 R3 R0
        5 JUMPIFNOTEQKNIL                  R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["sort"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K2 ["filter"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K3 ["keys"]
       11 MOVE                             R5 R1
       12 CALL                             R4 1 1
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          VAL R1
       15 CALL                             R3 2 -1
       16 CALL                             R2 -1 -1
       17 RETURN                           R2 -1

PROTO_5:
        0 ADDK                             R3 R3 K0 [1]
        1 GETTABLEKS                       R7 R1 K1 ["maxDepth"]
        3 JUMPIFNOTLT                      R7 R3 ; [+8]
        5 GETUPVAL                         R6 0
        6 GETUPVAL                         R7 1
        7 MOVE                             R8 R0
        8 CALL                             R7 1 1
        9 MOVE                             R8 R1
       10 CALL                             R6 2 1
       11 RETURN                           R6 1
       12 GETUPVAL                         R6 2
       13 GETUPVAL                         R7 1
       14 MOVE                             R8 R0
       15 CALL                             R7 1 1
       16 GETUPVAL                         R8 3
       17 GETTABLEKS                       R10 R0 K2 ["props"]
       19 GETUPVAL                         R11 4
       20 GETTABLEKS                       R11 R11 K3 ["sort"]
       22 GETUPVAL                         R12 4
       23 GETTABLEKS                       R12 R12 K4 ["filter"]
       25 GETUPVAL                         R13 5
       26 GETTABLEKS                       R13 R13 K5 ["keys"]
       28 MOVE                             R14 R10
       29 CALL                             R13 1 1
       30 NEWCLOSURE                       R14 P0
       31 CAPTURE                          VAL R10
       32 CALL                             R12 2 -1
       33 CALL                             R11 -1 1
       34 MOVE                             R9 R11
       35 GETTABLEKS                       R10 R0 K2 ["props"]
       37 MOVE                             R11 R1
       38 MOVE                             R13 R2
       39 GETTABLEKS                       R14 R1 K6 ["indent"]
       41 CONCAT                           R12 R13 R14
       42 MOVE                             R13 R3
       43 MOVE                             R14 R4
       44 MOVE                             R15 R5
       45 CALL                             R8 7 1
       46 GETUPVAL                         R9 6
       47 GETUPVAL                         R10 7
       48 GETTABLEKS                       R11 R0 K2 ["props"]
       50 GETTABLEKS                       R11 R11 K7 ["children"]
       52 CALL                             R10 1 1
       53 MOVE                             R11 R1
       54 MOVE                             R13 R2
       55 GETTABLEKS                       R14 R1 K6 ["indent"]
       57 CONCAT                           R12 R13 R14
       58 MOVE                             R13 R3
       59 MOVE                             R14 R4
       60 MOVE                             R15 R5
       61 CALL                             R9 6 1
       62 MOVE                             R10 R1
       63 MOVE                             R11 R2
       64 CALL                             R6 5 1
       65 RETURN                           R6 1

PROTO_6:
        0 LOADB                            R1 0
        1 JUMPIFEQKNIL                     R0 ; [+6]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K0 ["isElement"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 1
        8 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K6 ["Array"]
       16 GETTABLEKS                       R4 R2 K7 ["Boolean"]
       18 GETTABLEKS                       R5 R2 K8 ["Object"]
       20 NEWTABLE                         R6 4 0
       22 GETIMPORT                        R7 K4 [require]
       24 GETTABLEKS                       R8 R1 K9 ["ReactIs"]
       26 CALL                             R7 1 1
       27 GETIMPORT                        R8 K4 [require]
       29 GETIMPORT                        R9 K1 [script]
       31 GETTABLEKS                       R9 R9 K2 ["Parent"]
       33 GETTABLEKS                       R9 R9 K2 ["Parent"]
       35 GETTABLEKS                       R9 R9 K10 ["Types"]
       37 CALL                             R8 1 1
       38 GETIMPORT                        R9 K4 [require]
       40 GETIMPORT                        R10 K1 [script]
       42 GETTABLEKS                       R10 R10 K2 ["Parent"]
       44 GETTABLEKS                       R10 R10 K11 ["lib"]
       46 GETTABLEKS                       R10 R10 K12 ["markup"]
       48 CALL                             R9 1 1
       49 GETTABLEKS                       R10 R9 K13 ["printChildren"]
       51 GETTABLEKS                       R11 R9 K14 ["printElement"]
       53 GETTABLEKS                       R12 R9 K15 ["printElementAsLeaf"]
       55 GETTABLEKS                       R13 R9 K16 ["printProps"]
       57 DUPCLOSURE                       R14 K17 [PROTO_1]
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R14
       60 DUPCLOSURE                       R15 K18 [PROTO_2]
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R7
       63 DUPCLOSURE                       R16 K19 [PROTO_4]
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R5
       66 DUPCLOSURE                       R17 K20 [PROTO_5]
       67 CAPTURE                          VAL R12
       68 CAPTURE                          VAL R15
       69 CAPTURE                          VAL R11
       70 CAPTURE                          VAL R13
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R10
       74 CAPTURE                          VAL R14
       75 SETTABLEKS                       R17 R6 K21 ["serialize"]
       77 DUPCLOSURE                       R18 K22 [PROTO_6]
       78 CAPTURE                          VAL R7
       79 SETTABLEKS                       R18 R6 K23 ["test"]
       81 DUPTABLE                         R19 K24 [{"serialize", "test"}]
       82 SETTABLEKS                       R17 R19 K21 ["serialize"]
       84 SETTABLEKS                       R18 R19 K23 ["test"]
       86 SETTABLEKS                       R19 R6 K25 ["default"]
       88 RETURN                           R6 1
