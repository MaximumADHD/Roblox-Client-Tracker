PROTO_0:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 JUMPIF                           R0 ; [+14]
        3 GETIMPORT                        R0 K1 [require]
        5 GETIMPORT                        R2 K4 [script]
        7 GETTABLEKS                       R2 R2 K5 ["Parent"]
        9 GETTABLEKS                       R1 R2 K2 ["ReactFiberWorkLoop.new"]
       11 CALL                             R0 1 1
       12 SETUPVAL                         R0 1
       13 GETUPVAL                         R0 1
       14 GETTABLEKS                       R0 R0 K6 ["markLegacyErrorBoundaryAsFailed"]
       16 SETUPVAL                         R0 0
       17 GETUPVAL                         R0 0
       18 GETVARARGS                       R1 -1
       19 CALL                             R0 -1 -1
       20 RETURN                           R0 -1

PROTO_1:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 JUMPIFNOTEQKNIL                  R0 ; [+11]
        4 GETIMPORT                        R0 K1 [require]
        6 GETIMPORT                        R2 K4 [script]
        8 GETTABLEKS                       R2 R2 K5 ["Parent"]
       10 GETTABLEKS                       R1 R2 K2 ["ReactFiberWorkLoop.new"]
       12 CALL                             R0 1 1
       13 SETUPVAL                         R0 0
       14 GETUPVAL                         R0 0
       15 GETTABLEKS                       R0 R0 K6 ["pingSuspendedRoot"]
       17 SETUPVAL                         R0 1
       18 GETUPVAL                         R0 1
       19 GETVARARGS                       R1 -1
       20 CALL                             R0 -1 -1
       21 RETURN                           R0 -1

PROTO_2:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 JUMPIFNOTEQKNIL                  R0 ; [+11]
        4 GETIMPORT                        R0 K1 [require]
        6 GETIMPORT                        R2 K4 [script]
        8 GETTABLEKS                       R2 R2 K5 ["Parent"]
       10 GETTABLEKS                       R1 R2 K2 ["ReactFiberWorkLoop.new"]
       12 CALL                             R0 1 1
       13 SETUPVAL                         R0 0
       14 GETUPVAL                         R0 0
       15 GETTABLEKS                       R0 R0 K6 ["isAlreadyFailedLegacyErrorBoundary"]
       17 SETUPVAL                         R0 1
       18 GETUPVAL                         R0 1
       19 GETVARARGS                       R1 -1
       20 CALL                             R0 -1 -1
       21 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+4]
        3 GETUPVAL                         R0 0
        4 GETUPVAL                         R1 1
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R1 3
        8 GETUPVAL                         R2 4
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R2
        3 CALL                             R4 2 1
        4 GETUPVAL                         R5 2
        5 SETTABLEKS                       R5 R4 K0 ["tag"]
        7 DUPTABLE                         R5 K2 [{"element"}]
        8 GETUPVAL                         R6 3
        9 GETTABLEKS                       R6 R6 K3 ["None"]
       11 SETTABLEKS                       R6 R5 K1 ["element"]
       13 SETTABLEKS                       R5 R4 K4 ["payload"]
       15 GETTABLEKS                       R5 R1 K5 ["value"]
       17 NEWCLOSURE                       R6 P0
       18 CAPTURE                          VAL R3
       19 CAPTURE                          VAL R5
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R1
       23 SETTABLEKS                       R6 R4 K6 ["callback"]
       25 RETURN                           R4 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 0
        4 GETUPVAL                         R0 3
        5 GETUPVAL                         R1 4
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["__DEV__"]
        3 JUMPIFNOT                        R0 ; [+3]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 2
        6 CALL                             R0 1 0
        7 GETUPVAL                         R1 3
        8 FASTCALL1                        TYPEOF R1 ; [+2]
        9 GETIMPORT                        R0 K2 [typeof]
       11 CALL                             R0 1 1
       12 JUMPIFEQKS                       R0 K3 ["function"] ; [+8]
       14 GETUPVAL                         R0 4
       15 GETUPVAL                         R1 5
       16 CALL                             R0 1 0
       17 GETUPVAL                         R0 6
       18 GETUPVAL                         R1 2
       19 GETUPVAL                         R2 7
       20 CALL                             R0 2 0
       21 GETUPVAL                         R0 7
       22 GETTABLEKS                       R0 R0 K4 ["value"]
       24 GETUPVAL                         R1 7
       25 GETTABLEKS                       R1 R1 K5 ["stack"]
       27 GETUPVAL                         R2 5
       28 MOVE                             R4 R0
       29 DUPTABLE                         R5 K7 [{"componentStack"}]
       30 ORK                              R6 R1 K8 [""]
       31 SETTABLEKS                       R6 R5 K6 ["componentStack"]
       33 NAMECALL                         R2 R2 K9 ["componentDidCatch"]
       35 CALL                             R2 3 0
       36 GETUPVAL                         R2 0
       37 GETTABLEKS                       R2 R2 K0 ["__DEV__"]
       39 JUMPIFNOT                        R2 ; [+25]
       40 GETUPVAL                         R3 3
       41 FASTCALL1                        TYPEOF R3 ; [+2]
       42 GETIMPORT                        R2 K2 [typeof]
       44 CALL                             R2 1 1
       45 JUMPIFEQKS                       R2 K3 ["function"] ; [+19]
       47 GETUPVAL                         R2 8
       48 GETUPVAL                         R3 2
       49 GETTABLEKS                       R3 R3 K10 ["lanes"]
       51 GETUPVAL                         R4 9
       52 CALL                             R2 2 1
       53 JUMPIF                           R2 ; [+11]
       54 GETUPVAL                         R2 10
       55 GETTABLEKS                       R2 R2 K11 ["error"]
       57 LOADK                            R3 K12 ["%s: Error boundaries should implement getDerivedStateFromError(). In that method, return a state update to display an error message or fallback UI."]
       58 GETUPVAL                         R5 11
       59 GETUPVAL                         R6 2
       60 GETTABLEKS                       R6 R6 K14 ["type"]
       62 CALL                             R5 1 1
       63 ORK                              R4 R5 K13 ["Unknown"]
       64 CALL                             R2 2 0
       65 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R2
        3 CALL                             R3 2 1
        4 GETUPVAL                         R4 2
        5 SETTABLEKS                       R4 R3 K0 ["tag"]
        7 GETTABLEKS                       R4 R0 K1 ["type"]
        9 GETTABLEKS                       R4 R4 K2 ["getDerivedStateFromError"]
       11 FASTCALL1                        TYPEOF R4 ; [+3]
       12 MOVE                             R6 R4
       13 GETIMPORT                        R5 K4 [typeof]
       15 CALL                             R5 1 1
       16 JUMPIFNOTEQKS                    R5 K5 ["function"] ; [+11]
       18 GETTABLEKS                       R5 R1 K6 ["value"]
       20 NEWCLOSURE                       R6 P0
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R4
       25 CAPTURE                          VAL R5
       26 SETTABLEKS                       R6 R3 K7 ["payload"]
       28 GETTABLEKS                       R5 R0 K8 ["stateNode"]
       30 JUMPIFEQKNIL                     R5 ; [+25]
       32 GETTABLEKS                       R7 R5 K9 ["componentDidCatch"]
       34 FASTCALL1                        TYPEOF R7 ; [+2]
       35 GETIMPORT                        R6 K4 [typeof]
       37 CALL                             R6 1 1
       38 JUMPIFNOTEQKS                    R6 K5 ["function"] ; [+17]
       40 NEWCLOSURE                       R6 P1
       41 CAPTURE                          UPVAL U4
       42 CAPTURE                          UPVAL U5
       43 CAPTURE                          VAL R0
       44 CAPTURE                          VAL R4
       45 CAPTURE                          UPVAL U6
       46 CAPTURE                          VAL R5
       47 CAPTURE                          UPVAL U3
       48 CAPTURE                          VAL R1
       49 CAPTURE                          UPVAL U7
       50 CAPTURE                          UPVAL U8
       51 CAPTURE                          UPVAL U9
       52 CAPTURE                          UPVAL U10
       53 SETTABLEKS                       R6 R3 K10 ["callback"]
       55 RETURN                           R3 1
       56 GETUPVAL                         R6 4
       57 GETTABLEKS                       R6 R6 K11 ["__DEV__"]
       59 JUMPIFNOT                        R6 ; [+5]
       60 NEWCLOSURE                       R6 P2
       61 CAPTURE                          UPVAL U5
       62 CAPTURE                          VAL R0
       63 SETTABLEKS                       R6 R3 K10 ["callback"]
       65 RETURN                           R3 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 CALL                             R0 3 -1
        5 RETURN                           R0 -1

PROTO_10:
        0 GETTABLEKS                       R3 R0 K0 ["pingCache"]
        2 LOADNIL                          R4
        3 JUMPIFNOTEQKNIL                  R3 ; [+11]
        5 NEWTABLE                         R4 0 0
        7 NEWTABLE                         R5 1 0
        9 SETTABLE                         R4 R5 R1
       10 SETTABLEKS                       R5 R0 K0 ["pingCache"]
       12 GETTABLEKS                       R3 R0 K0 ["pingCache"]
       14 JUMP                             ; [+6]
       15 GETTABLE                         R4 R3 R1
       16 JUMPIFNOTEQKNIL                  R4 ; [+4]
       18 NEWTABLE                         R4 0 0
       20 SETTABLE                         R4 R3 R1
       21 GETTABLE                         R5 R4 R2
       22 JUMPIF                           R5 ; [+12]
       23 LOADB                            R5 1
       24 SETTABLE                         R5 R4 R2
       25 NEWCLOSURE                       R5 P0
       26 CAPTURE                          UPVAL U0
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R2
       30 MOVE                             R8 R5
       31 MOVE                             R9 R5
       32 NAMECALL                         R6 R1 K1 ["andThen"]
       34 CALL                             R6 3 0
       35 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R8 R2 K0 ["flags"]
        2 GETUPVAL                         R9 0
        3 FASTCALL2                        BIT32_BOR R8 R9 ; [+3]
        5 GETIMPORT                        R7 K3 [bit32.bor]
        7 CALL                             R7 2 1
        8 SETTABLEKS                       R7 R2 K0 ["flags"]
       10 JUMPIFEQKNIL                     R3 ; [+227]
       12 FASTCALL1                        TYPEOF R3 ; [+3]
       13 MOVE                             R8 R3
       14 GETIMPORT                        R7 K5 [typeof]
       16 CALL                             R7 1 1
       17 JUMPIFNOTEQKS                    R7 K6 ["table"] ; [+220]
       19 GETTABLEKS                       R8 R3 K7 ["andThen"]
       21 FASTCALL1                        TYPEOF R8 ; [+2]
       22 GETIMPORT                        R7 K5 [typeof]
       24 CALL                             R7 1 1
       25 JUMPIFNOTEQKS                    R7 K8 ["function"] ; [+212]
       27 MOVE                             R7 R3
       28 GETUPVAL                         R8 1
       29 GETTABLEKS                       R8 R8 K9 ["__DEV__"]
       31 JUMPIFNOT                        R8 ; [+21]
       32 GETUPVAL                         R8 2
       33 JUMPIFNOT                        R8 ; [+19]
       34 GETTABLEKS                       R9 R2 K10 ["mode"]
       36 GETUPVAL                         R10 3
       37 FASTCALL2                        BIT32_BAND R9 R10 ; [+3]
       39 GETIMPORT                        R8 K12 [bit32.band]
       41 CALL                             R8 2 1
       42 JUMPIFEQKN                       R8 K13 [0] ; [+10]
       44 GETUPVAL                         R9 4
       45 GETTABLEKS                       R10 R2 K15 ["type"]
       47 CALL                             R9 1 1
       48 ORK                              R8 R9 K14 ["Unknown"]
       49 GETUPVAL                         R9 5
       50 MOVE                             R10 R8
       51 MOVE                             R11 R7
       52 CALL                             R9 2 0
       53 GETUPVAL                         R8 6
       54 JUMPIFNOT                        R8 ; [+4]
       55 GETUPVAL                         R8 7
       56 MOVE                             R9 R2
       57 MOVE                             R10 R7
       58 CALL                             R8 2 0
       59 GETTABLEKS                       R9 R2 K10 ["mode"]
       61 GETUPVAL                         R10 8
       62 FASTCALL2                        BIT32_BAND R9 R10 ; [+3]
       64 GETIMPORT                        R8 K12 [bit32.band]
       66 CALL                             R8 2 1
       67 GETUPVAL                         R9 9
       68 JUMPIFNOTEQ                      R8 R9 ; [+23]
       70 GETTABLEKS                       R8 R2 K16 ["alternate"]
       72 JUMPIFNOT                        R8 ; [+13]
       73 GETTABLEKS                       R9 R8 K17 ["updateQueue"]
       75 SETTABLEKS                       R9 R2 K17 ["updateQueue"]
       77 GETTABLEKS                       R9 R8 K18 ["memoizedState"]
       79 SETTABLEKS                       R9 R2 K18 ["memoizedState"]
       81 GETTABLEKS                       R9 R8 K19 ["lanes"]
       83 SETTABLEKS                       R9 R2 K19 ["lanes"]
       85 JUMP                             ; [+6]
       86 LOADNIL                          R9
       87 SETTABLEKS                       R9 R2 K17 ["updateQueue"]
       89 LOADNIL                          R9
       90 SETTABLEKS                       R9 R2 K18 ["memoizedState"]
       92 GETUPVAL                         R8 10
       93 GETUPVAL                         R9 11
       94 GETTABLEKS                       R9 R9 K20 ["current"]
       96 GETUPVAL                         R10 12
       97 CALL                             R8 2 1
       98 MOVE                             R9 R1
       99 GETTABLEKS                       R10 R9 K21 ["tag"]
      101 GETUPVAL                         R11 13
      102 JUMPIFNOTEQ                      R10 R11 ; [+120]
      104 GETUPVAL                         R10 14
      105 MOVE                             R11 R9
      106 MOVE                             R12 R8
      107 CALL                             R10 2 1
      108 JUMPIFNOT                        R10 ; [+114]
      109 GETTABLEKS                       R10 R9 K17 ["updateQueue"]
      111 JUMPIFNOTEQKNIL                  R10 ; [+8]
      113 NEWTABLE                         R11 1 0
      115 LOADB                            R12 1
      116 SETTABLE                         R12 R11 R7
      117 SETTABLEKS                       R11 R9 K17 ["updateQueue"]
      119 JUMP                             ; [+2]
      120 LOADB                            R11 1
      121 SETTABLE                         R11 R10 R7
      122 GETTABLEKS                       R12 R9 K10 ["mode"]
      124 GETUPVAL                         R13 8
      125 FASTCALL2                        BIT32_BAND R12 R13 ; [+3]
      127 GETIMPORT                        R11 K12 [bit32.band]
      129 CALL                             R11 2 1
      130 GETUPVAL                         R12 9
      131 JUMPIFNOTEQ                      R11 R12 ; [+73]
      133 GETTABLEKS                       R12 R9 K0 ["flags"]
      135 GETUPVAL                         R13 15
      136 FASTCALL2                        BIT32_BOR R12 R13 ; [+3]
      138 GETIMPORT                        R11 K3 [bit32.bor]
      140 CALL                             R11 2 1
      141 SETTABLEKS                       R11 R9 K0 ["flags"]
      143 GETTABLEKS                       R12 R2 K0 ["flags"]
      145 GETUPVAL                         R13 16
      146 FASTCALL2                        BIT32_BOR R12 R13 ; [+3]
      148 GETIMPORT                        R11 K3 [bit32.bor]
      150 CALL                             R11 2 1
      151 SETTABLEKS                       R11 R2 K0 ["flags"]
      153 GETTABLEKS                       R12 R2 K0 ["flags"]
      155 GETUPVAL                         R15 17
      156 GETUPVAL                         R16 0
      157 FASTCALL2                        BIT32_BOR R15 R16 ; [+3]
      159 GETIMPORT                        R14 K3 [bit32.bor]
      161 CALL                             R14 2 1
      162 FASTCALL1                        BIT32_BNOT R14 ; [+2]
      163 GETIMPORT                        R13 K23 [bit32.bnot]
      165 CALL                             R13 1 1
      166 FASTCALL2                        BIT32_BAND R12 R13 ; [+3]
      168 GETIMPORT                        R11 K12 [bit32.band]
      170 CALL                             R11 2 1
      171 SETTABLEKS                       R11 R2 K0 ["flags"]
      173 GETTABLEKS                       R11 R2 K21 ["tag"]
      175 GETUPVAL                         R12 18
      176 JUMPIFNOTEQ                      R11 R12 ; [+20]
      178 GETTABLEKS                       R11 R2 K16 ["alternate"]
      180 JUMPIFNOTEQKNIL                  R11 ; [+5]
      182 GETUPVAL                         R12 19
      183 SETTABLEKS                       R12 R2 K21 ["tag"]
      185 JUMP                             ; [+11]
      186 GETUPVAL                         R12 20
      187 GETUPVAL                         R13 21
      188 GETUPVAL                         R14 22
      189 CALL                             R12 2 1
      190 GETUPVAL                         R13 23
      191 SETTABLEKS                       R13 R12 K21 ["tag"]
      193 GETUPVAL                         R13 24
      194 MOVE                             R14 R2
      195 MOVE                             R15 R12
      196 CALL                             R13 2 0
      197 GETUPVAL                         R11 25
      198 GETTABLEKS                       R12 R2 K19 ["lanes"]
      200 GETUPVAL                         R13 22
      201 CALL                             R11 2 1
      202 SETTABLEKS                       R11 R2 K19 ["lanes"]
      204 RETURN                           R0 0
      205 GETUPVAL                         R11 26
      206 MOVE                             R12 R0
      207 MOVE                             R13 R7
      208 MOVE                             R14 R4
      209 CALL                             R11 3 0
      210 GETTABLEKS                       R12 R9 K0 ["flags"]
      212 GETUPVAL                         R13 27
      213 FASTCALL2                        BIT32_BOR R12 R13 ; [+3]
      215 GETIMPORT                        R11 K3 [bit32.bor]
      217 CALL                             R11 2 1
      218 SETTABLEKS                       R11 R9 K0 ["flags"]
      220 SETTABLEKS                       R4 R9 K19 ["lanes"]
      222 RETURN                           R0 0
      223 GETTABLEKS                       R9 R9 K24 ["return_"]
      225 JUMPIFEQKNIL                     R9 ; [+2]
      227 JUMPBACK                         ; [-129]
      228 GETUPVAL                         R15 4
      229 GETTABLEKS                       R16 R2 K15 ["type"]
      231 CALL                             R15 1 1
      232 ORK                              R10 R15 K25 ["A React component"]
      233 LOADK                            R11 K26 [" suspended while rendering, but no fallback UI was specified.\n"]
      234 LOADK                            R12 K27 ["\n"]
      235 LOADK                            R13 K28 ["Add a <Suspense fallback=...> component higher in the tree to "]
      236 LOADK                            R14 K29 ["provide a loading indicator or placeholder to display."]
      237 CONCAT                           R3 R10 R14
      238 MOVE                             R7 R6
      239 CALL                             R7 0 0
      240 GETUPVAL                         R7 28
      241 MOVE                             R8 R3
      242 MOVE                             R9 R2
      243 CALL                             R7 2 1
      244 MOVE                             R3 R7
      245 MOVE                             R7 R1
      246 GETTABLEKS                       R8 R7 K21 ["tag"]
      248 GETUPVAL                         R9 29
      249 JUMPIFNOTEQ                      R8 R9 ; [+34]
      251 MOVE                             R8 R3
      252 GETTABLEKS                       R10 R7 K0 ["flags"]
      254 GETUPVAL                         R11 27
      255 FASTCALL2                        BIT32_BOR R10 R11 ; [+3]
      257 GETIMPORT                        R9 K3 [bit32.bor]
      259 CALL                             R9 2 1
      260 SETTABLEKS                       R9 R7 K0 ["flags"]
      262 GETUPVAL                         R9 30
      263 MOVE                             R10 R4
      264 CALL                             R9 1 1
      265 GETUPVAL                         R10 25
      266 GETTABLEKS                       R11 R7 K19 ["lanes"]
      268 MOVE                             R12 R9
      269 CALL                             R10 2 1
      270 SETTABLEKS                       R10 R7 K19 ["lanes"]
      272 GETGLOBAL                        R10 K30 ["createRootErrorUpdate"]
      274 MOVE                             R11 R7
      275 MOVE                             R12 R8
      276 MOVE                             R13 R9
      277 MOVE                             R14 R5
      278 CALL                             R10 4 1
      279 GETUPVAL                         R11 31
      280 MOVE                             R12 R7
      281 MOVE                             R13 R10
      282 CALL                             R11 2 0
      283 RETURN                           R0 0
      284 GETTABLEKS                       R8 R7 K21 ["tag"]
      286 GETUPVAL                         R9 18
      287 JUMPIFNOTEQ                      R8 R9 ; [+70]
      289 MOVE                             R8 R3
      290 GETTABLEKS                       R9 R7 K15 ["type"]
      292 GETTABLEKS                       R10 R7 K31 ["stateNode"]
      294 GETTABLEKS                       R12 R7 K0 ["flags"]
      296 GETUPVAL                         R13 15
      297 FASTCALL2                        BIT32_BAND R12 R13 ; [+3]
      299 GETIMPORT                        R11 K12 [bit32.band]
      301 CALL                             R11 2 1
      302 GETUPVAL                         R12 32
      303 JUMPIFNOTEQ                      R11 R12 ; [+54]
      305 GETTABLEKS                       R12 R9 K32 ["getDerivedStateFromError"]
      307 FASTCALL1                        TYPEOF R12 ; [+2]
      308 GETIMPORT                        R11 K5 [typeof]
      310 CALL                             R11 1 1
      311 JUMPIFEQKS                       R11 K8 ["function"] ; [+15]
      313 JUMPIFEQKNIL                     R10 ; [+44]
      315 GETTABLEKS                       R12 R10 K33 ["componentDidCatch"]
      317 FASTCALL1                        TYPEOF R12 ; [+2]
      318 GETIMPORT                        R11 K5 [typeof]
      320 CALL                             R11 1 1
      321 JUMPIFNOTEQKS                    R11 K8 ["function"] ; [+36]
      323 GETUPVAL                         R11 33
      324 MOVE                             R12 R10
      325 CALL                             R11 1 1
      326 JUMPIF                           R11 ; [+31]
      327 GETTABLEKS                       R12 R7 K0 ["flags"]
      329 GETUPVAL                         R13 27
      330 FASTCALL2                        BIT32_BOR R12 R13 ; [+3]
      332 GETIMPORT                        R11 K3 [bit32.bor]
      334 CALL                             R11 2 1
      335 SETTABLEKS                       R11 R7 K0 ["flags"]
      337 GETUPVAL                         R11 30
      338 MOVE                             R12 R4
      339 CALL                             R11 1 1
      340 GETUPVAL                         R12 25
      341 GETTABLEKS                       R13 R7 K19 ["lanes"]
      343 MOVE                             R14 R11
      344 CALL                             R12 2 1
      345 SETTABLEKS                       R12 R7 K19 ["lanes"]
      347 GETGLOBAL                        R12 K34 ["createClassErrorUpdate"]
      349 MOVE                             R13 R7
      350 MOVE                             R14 R8
      351 MOVE                             R15 R11
      352 CALL                             R12 3 1
      353 GETUPVAL                         R13 31
      354 MOVE                             R14 R7
      355 MOVE                             R15 R12
      356 CALL                             R13 2 0
      357 RETURN                           R0 0
      358 GETTABLEKS                       R7 R7 K24 ["return_"]
      360 JUMPIFEQKNIL                     R7 ; [+2]
      362 JUMPBACK                         ; [-117]
      363 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["ReactGlobals"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["LuauPolyfill"]
       16 CALL                             R2 1 1
       17 GETTABLEKS                       R3 R2 K7 ["Object"]
       19 GETIMPORT                        R4 K4 [require]
       21 GETTABLEKS                       R5 R0 K8 ["Shared"]
       23 CALL                             R4 1 1
       24 GETTABLEKS                       R4 R4 K9 ["console"]
       26 GETIMPORT                        R5 K4 [require]
       28 GETIMPORT                        R6 K1 [script]
       30 GETTABLEKS                       R6 R6 K2 ["Parent"]
       32 GETTABLEKS                       R6 R6 K10 ["ReactInternalTypes"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K4 [require]
       37 GETIMPORT                        R7 K1 [script]
       39 GETTABLEKS                       R7 R7 K2 ["Parent"]
       41 GETTABLEKS                       R7 R7 K11 ["ReactFiberLane"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K4 [require]
       46 GETIMPORT                        R8 K1 [script]
       48 GETTABLEKS                       R8 R8 K2 ["Parent"]
       50 GETTABLEKS                       R8 R8 K12 ["ReactCapturedValue"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K4 [require]
       55 GETIMPORT                        R10 K1 [script]
       57 GETTABLEKS                       R10 R10 K2 ["Parent"]
       59 GETTABLEKS                       R9 R10 K13 ["ReactUpdateQueue.new"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K4 [require]
       64 GETTABLEKS                       R10 R0 K8 ["Shared"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K4 [require]
       69 GETIMPORT                        R12 K1 [script]
       71 GETTABLEKS                       R12 R12 K2 ["Parent"]
       73 GETTABLEKS                       R11 R12 K14 ["ReactFiberSuspenseContext.new"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K4 [require]
       78 GETTABLEKS                       R12 R0 K8 ["Shared"]
       80 CALL                             R11 1 1
       81 GETTABLEKS                       R11 R11 K15 ["getComponentName"]
       83 GETIMPORT                        R12 K4 [require]
       85 GETIMPORT                        R13 K1 [script]
       87 GETTABLEKS                       R13 R13 K2 ["Parent"]
       89 GETTABLEKS                       R13 R13 K16 ["ReactWorkTags"]
       91 CALL                             R12 1 1
       92 GETTABLEKS                       R13 R12 K17 ["ClassComponent"]
       94 GETTABLEKS                       R14 R12 K18 ["HostRoot"]
       96 GETTABLEKS                       R15 R12 K19 ["SuspenseComponent"]
       98 GETTABLEKS                       R16 R12 K20 ["IncompleteClassComponent"]
      100 GETIMPORT                        R17 K4 [require]
      102 GETIMPORT                        R18 K1 [script]
      104 GETTABLEKS                       R18 R18 K2 ["Parent"]
      106 GETTABLEKS                       R18 R18 K21 ["ReactFiberFlags"]
      108 CALL                             R17 1 1
      109 GETTABLEKS                       R18 R17 K22 ["DidCapture"]
      111 GETTABLEKS                       R19 R17 K23 ["Incomplete"]
      113 GETTABLEKS                       R20 R17 K24 ["NoFlags"]
      115 GETTABLEKS                       R21 R17 K25 ["ShouldCapture"]
      117 GETTABLEKS                       R22 R17 K26 ["LifecycleEffectMask"]
      119 GETTABLEKS                       R23 R17 K27 ["ForceUpdateForLegacySuspense"]
      121 GETIMPORT                        R24 K4 [require]
      123 GETIMPORT                        R26 K1 [script]
      125 GETTABLEKS                       R26 R26 K2 ["Parent"]
      127 GETTABLEKS                       R25 R26 K28 ["ReactFiberSuspenseComponent.new"]
      129 CALL                             R24 1 1
      130 GETTABLEKS                       R24 R24 K29 ["shouldCaptureSuspense"]
      132 GETIMPORT                        R25 K4 [require]
      134 GETIMPORT                        R26 K1 [script]
      136 GETTABLEKS                       R26 R26 K2 ["Parent"]
      138 GETTABLEKS                       R26 R26 K30 ["ReactTypeOfMode"]
      140 CALL                             R25 1 1
      141 GETTABLEKS                       R26 R25 K31 ["NoMode"]
      143 GETTABLEKS                       R27 R25 K32 ["BlockingMode"]
      145 GETTABLEKS                       R28 R25 K33 ["DebugTracingMode"]
      147 GETIMPORT                        R29 K4 [require]
      149 GETTABLEKS                       R30 R0 K8 ["Shared"]
      151 CALL                             R29 1 1
      152 GETTABLEKS                       R29 R29 K34 ["ReactFeatureFlags"]
      154 GETTABLEKS                       R30 R29 K35 ["enableDebugTracing"]
      156 GETTABLEKS                       R31 R29 K36 ["enableSchedulingProfiler"]
      158 GETIMPORT                        R32 K4 [require]
      160 GETIMPORT                        R33 K1 [script]
      162 GETTABLEKS                       R33 R33 K2 ["Parent"]
      164 GETTABLEKS                       R33 R33 K12 ["ReactCapturedValue"]
      166 CALL                             R32 1 1
      167 GETTABLEKS                       R32 R32 K37 ["createCapturedValue"]
      169 GETTABLEKS                       R33 R8 K38 ["enqueueCapturedUpdate"]
      171 GETTABLEKS                       R34 R8 K39 ["createUpdate"]
      173 GETTABLEKS                       R35 R8 K40 ["CaptureUpdate"]
      175 GETTABLEKS                       R36 R8 K41 ["ForceUpdate"]
      177 GETTABLEKS                       R37 R8 K42 ["enqueueUpdate"]
      179 GETIMPORT                        R38 K4 [require]
      181 GETIMPORT                        R40 K1 [script]
      183 GETTABLEKS                       R40 R40 K2 ["Parent"]
      185 GETTABLEKS                       R39 R40 K43 ["ReactFiberHotReloading.new"]
      187 CALL                             R38 1 1
      188 GETTABLEKS                       R38 R38 K44 ["markFailedErrorBoundaryForHotReloading"]
      190 GETTABLEKS                       R39 R10 K45 ["hasSuspenseContext"]
      192 GETTABLEKS                       R40 R10 K46 ["InvisibleParentSuspenseContext"]
      194 GETTABLEKS                       R41 R10 K47 ["suspenseStackCursor"]
      196 LOADNIL                          R42
      197 LOADNIL                          R43
      198 LOADNIL                          R44
      199 LOADNIL                          R45
      200 NEWCLOSURE                       R46 P0
      201 CAPTURE                          REF R43
      202 CAPTURE                          REF R42
      203 NEWCLOSURE                       R47 P1
      204 CAPTURE                          REF R42
      205 CAPTURE                          REF R45
      206 NEWCLOSURE                       R48 P2
      207 CAPTURE                          REF R42
      208 CAPTURE                          REF R44
      209 GETIMPORT                        R49 K4 [require]
      211 GETIMPORT                        R50 K1 [script]
      213 GETTABLEKS                       R50 R50 K2 ["Parent"]
      215 GETTABLEKS                       R50 R50 K48 ["ReactFiberErrorLogger"]
      217 CALL                             R49 1 1
      218 GETTABLEKS                       R49 R49 K49 ["logCapturedError"]
      220 GETIMPORT                        R50 K4 [require]
      222 GETIMPORT                        R51 K1 [script]
      224 GETTABLEKS                       R51 R51 K2 ["Parent"]
      226 GETTABLEKS                       R51 R51 K50 ["DebugTracing"]
      228 CALL                             R50 1 1
      229 GETTABLEKS                       R50 R50 K51 ["logComponentSuspended"]
      231 GETIMPORT                        R51 K4 [require]
      233 GETIMPORT                        R52 K1 [script]
      235 GETTABLEKS                       R52 R52 K2 ["Parent"]
      237 GETTABLEKS                       R52 R52 K52 ["SchedulingProfiler"]
      239 CALL                             R51 1 1
      240 GETTABLEKS                       R51 R51 K53 ["markComponentSuspended"]
      242 GETTABLEKS                       R52 R6 K54 ["SyncLane"]
      244 GETTABLEKS                       R53 R6 K55 ["NoTimestamp"]
      246 GETTABLEKS                       R54 R6 K56 ["includesSomeLane"]
      248 GETTABLEKS                       R55 R6 K57 ["mergeLanes"]
      250 GETTABLEKS                       R56 R6 K58 ["pickArbitraryLane"]
      252 DUPCLOSURE                       R57 K59 [PROTO_4]
      253 CAPTURE                          VAL R34
      254 CAPTURE                          VAL R53
      255 CAPTURE                          VAL R35
      256 CAPTURE                          VAL R3
      257 CAPTURE                          VAL R49
      258 SETGLOBAL                        R57 K60 ["createRootErrorUpdate"]
      260 DUPCLOSURE                       R57 K61 [PROTO_8]
      261 CAPTURE                          VAL R34
      262 CAPTURE                          VAL R53
      263 CAPTURE                          VAL R35
      264 CAPTURE                          VAL R49
      265 CAPTURE                          VAL R1
      266 CAPTURE                          VAL R38
      267 CAPTURE                          VAL R46
      268 CAPTURE                          VAL R54
      269 CAPTURE                          VAL R52
      270 CAPTURE                          VAL R4
      271 CAPTURE                          VAL R11
      272 SETGLOBAL                        R57 K62 ["createClassErrorUpdate"]
      274 DUPCLOSURE                       R57 K63 [PROTO_10]
      275 CAPTURE                          VAL R47
      276 DUPCLOSURE                       R58 K64 [PROTO_11]
      277 CAPTURE                          VAL R19
      278 CAPTURE                          VAL R1
      279 CAPTURE                          VAL R30
      280 CAPTURE                          VAL R28
      281 CAPTURE                          VAL R11
      282 CAPTURE                          VAL R50
      283 CAPTURE                          VAL R31
      284 CAPTURE                          VAL R51
      285 CAPTURE                          VAL R27
      286 CAPTURE                          VAL R26
      287 CAPTURE                          VAL R39
      288 CAPTURE                          VAL R41
      289 CAPTURE                          VAL R40
      290 CAPTURE                          VAL R15
      291 CAPTURE                          VAL R24
      292 CAPTURE                          VAL R18
      293 CAPTURE                          VAL R23
      294 CAPTURE                          VAL R22
      295 CAPTURE                          VAL R13
      296 CAPTURE                          VAL R16
      297 CAPTURE                          VAL R34
      298 CAPTURE                          VAL R53
      299 CAPTURE                          VAL R52
      300 CAPTURE                          VAL R36
      301 CAPTURE                          VAL R37
      302 CAPTURE                          VAL R55
      303 CAPTURE                          VAL R57
      304 CAPTURE                          VAL R21
      305 CAPTURE                          VAL R32
      306 CAPTURE                          VAL R14
      307 CAPTURE                          VAL R56
      308 CAPTURE                          VAL R33
      309 CAPTURE                          VAL R20
      310 CAPTURE                          VAL R48
      311 SETGLOBAL                        R58 K65 ["throwException"]
      313 DUPTABLE                         R58 K66 [{"throwException", "createRootErrorUpdate", "createClassErrorUpdate"}]
      314 GETGLOBAL                        R59 K65 ["throwException"]
      316 SETTABLEKS                       R59 R58 K65 ["throwException"]
      318 GETGLOBAL                        R59 K60 ["createRootErrorUpdate"]
      320 SETTABLEKS                       R59 R58 K60 ["createRootErrorUpdate"]
      322 GETGLOBAL                        R59 K62 ["createClassErrorUpdate"]
      324 SETTABLEKS                       R59 R58 K62 ["createClassErrorUpdate"]
      326 CLOSEUPVALS                      R42
      327 RETURN                           R58 1
