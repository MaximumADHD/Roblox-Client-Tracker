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
        0 GETIMPORT                        R0 K1 [_G]
        2 GETTABLEKS                       R0 R0 K2 ["__DEV__"]
        4 JUMPIFNOT                        R0 ; [+3]
        5 GETUPVAL                         R0 0
        6 GETUPVAL                         R1 1
        7 CALL                             R0 1 0
        8 GETUPVAL                         R1 2
        9 FASTCALL1                        TYPEOF R1 ; [+2]
       10 GETIMPORT                        R0 K4 [typeof]
       12 CALL                             R0 1 1
       13 JUMPIFEQKS                       R0 K5 ["function"] ; [+8]
       15 GETUPVAL                         R0 3
       16 GETUPVAL                         R1 4
       17 CALL                             R0 1 0
       18 GETUPVAL                         R0 5
       19 GETUPVAL                         R1 1
       20 GETUPVAL                         R2 6
       21 CALL                             R0 2 0
       22 GETUPVAL                         R0 6
       23 GETTABLEKS                       R0 R0 K6 ["value"]
       25 GETUPVAL                         R1 6
       26 GETTABLEKS                       R1 R1 K7 ["stack"]
       28 GETUPVAL                         R2 4
       29 MOVE                             R4 R0
       30 DUPTABLE                         R5 K9 [{"componentStack"}]
       31 ORK                              R6 R1 K10 [""]
       32 SETTABLEKS                       R6 R5 K8 ["componentStack"]
       34 NAMECALL                         R2 R2 K11 ["componentDidCatch"]
       36 CALL                             R2 3 0
       37 GETIMPORT                        R2 K1 [_G]
       39 GETTABLEKS                       R2 R2 K2 ["__DEV__"]
       41 JUMPIFNOT                        R2 ; [+25]
       42 GETUPVAL                         R3 2
       43 FASTCALL1                        TYPEOF R3 ; [+2]
       44 GETIMPORT                        R2 K4 [typeof]
       46 CALL                             R2 1 1
       47 JUMPIFEQKS                       R2 K5 ["function"] ; [+19]
       49 GETUPVAL                         R2 7
       50 GETUPVAL                         R3 1
       51 GETTABLEKS                       R3 R3 K12 ["lanes"]
       53 GETUPVAL                         R4 8
       54 CALL                             R2 2 1
       55 JUMPIF                           R2 ; [+11]
       56 GETUPVAL                         R2 9
       57 GETTABLEKS                       R2 R2 K13 ["error"]
       59 LOADK                            R3 K14 ["%s: Error boundaries should implement getDerivedStateFromError(). In that method, return a state update to display an error message or fallback UI."]
       60 GETUPVAL                         R5 10
       61 GETUPVAL                         R6 1
       62 GETTABLEKS                       R6 R6 K16 ["type"]
       64 CALL                             R5 1 1
       65 ORK                              R4 R5 K15 ["Unknown"]
       66 CALL                             R2 2 0
       67 RETURN                           R0 0

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
       30 JUMPIFEQKNIL                     R5 ; [+24]
       32 GETTABLEKS                       R7 R5 K9 ["componentDidCatch"]
       34 FASTCALL1                        TYPEOF R7 ; [+2]
       35 GETIMPORT                        R6 K4 [typeof]
       37 CALL                             R6 1 1
       38 JUMPIFNOTEQKS                    R6 K5 ["function"] ; [+16]
       40 NEWCLOSURE                       R6 P1
       41 CAPTURE                          UPVAL U4
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R4
       44 CAPTURE                          UPVAL U5
       45 CAPTURE                          VAL R5
       46 CAPTURE                          UPVAL U3
       47 CAPTURE                          VAL R1
       48 CAPTURE                          UPVAL U6
       49 CAPTURE                          UPVAL U7
       50 CAPTURE                          UPVAL U8
       51 CAPTURE                          UPVAL U9
       52 SETTABLEKS                       R6 R3 K10 ["callback"]
       54 RETURN                           R3 1
       55 GETIMPORT                        R6 K12 [_G]
       57 GETTABLEKS                       R6 R6 K13 ["__DEV__"]
       59 JUMPIFNOT                        R6 ; [+5]
       60 NEWCLOSURE                       R6 P2
       61 CAPTURE                          UPVAL U4
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
       10 JUMPIFEQKNIL                     R3 ; [+228]
       12 FASTCALL1                        TYPEOF R3 ; [+3]
       13 MOVE                             R8 R3
       14 GETIMPORT                        R7 K5 [typeof]
       16 CALL                             R7 1 1
       17 JUMPIFNOTEQKS                    R7 K6 ["table"] ; [+221]
       19 GETTABLEKS                       R8 R3 K7 ["andThen"]
       21 FASTCALL1                        TYPEOF R8 ; [+2]
       22 GETIMPORT                        R7 K5 [typeof]
       24 CALL                             R7 1 1
       25 JUMPIFNOTEQKS                    R7 K8 ["function"] ; [+213]
       27 MOVE                             R7 R3
       28 GETIMPORT                        R8 K10 [_G]
       30 GETTABLEKS                       R8 R8 K11 ["__DEV__"]
       32 JUMPIFNOT                        R8 ; [+21]
       33 GETUPVAL                         R8 1
       34 JUMPIFNOT                        R8 ; [+19]
       35 GETTABLEKS                       R9 R2 K12 ["mode"]
       37 GETUPVAL                         R10 2
       38 FASTCALL2                        BIT32_BAND R9 R10 ; [+3]
       40 GETIMPORT                        R8 K14 [bit32.band]
       42 CALL                             R8 2 1
       43 JUMPIFEQKN                       R8 K15 [0] ; [+10]
       45 GETUPVAL                         R9 3
       46 GETTABLEKS                       R10 R2 K17 ["type"]
       48 CALL                             R9 1 1
       49 ORK                              R8 R9 K16 ["Unknown"]
       50 GETUPVAL                         R9 4
       51 MOVE                             R10 R8
       52 MOVE                             R11 R7
       53 CALL                             R9 2 0
       54 GETUPVAL                         R8 5
       55 JUMPIFNOT                        R8 ; [+4]
       56 GETUPVAL                         R8 6
       57 MOVE                             R9 R2
       58 MOVE                             R10 R7
       59 CALL                             R8 2 0
       60 GETTABLEKS                       R9 R2 K12 ["mode"]
       62 GETUPVAL                         R10 7
       63 FASTCALL2                        BIT32_BAND R9 R10 ; [+3]
       65 GETIMPORT                        R8 K14 [bit32.band]
       67 CALL                             R8 2 1
       68 GETUPVAL                         R9 8
       69 JUMPIFNOTEQ                      R8 R9 ; [+23]
       71 GETTABLEKS                       R8 R2 K18 ["alternate"]
       73 JUMPIFNOT                        R8 ; [+13]
       74 GETTABLEKS                       R9 R8 K19 ["updateQueue"]
       76 SETTABLEKS                       R9 R2 K19 ["updateQueue"]
       78 GETTABLEKS                       R9 R8 K20 ["memoizedState"]
       80 SETTABLEKS                       R9 R2 K20 ["memoizedState"]
       82 GETTABLEKS                       R9 R8 K21 ["lanes"]
       84 SETTABLEKS                       R9 R2 K21 ["lanes"]
       86 JUMP                             ; [+6]
       87 LOADNIL                          R9
       88 SETTABLEKS                       R9 R2 K19 ["updateQueue"]
       90 LOADNIL                          R9
       91 SETTABLEKS                       R9 R2 K20 ["memoizedState"]
       93 GETUPVAL                         R8 9
       94 GETUPVAL                         R9 10
       95 GETTABLEKS                       R9 R9 K22 ["current"]
       97 GETUPVAL                         R10 11
       98 CALL                             R8 2 1
       99 MOVE                             R9 R1
      100 GETTABLEKS                       R10 R9 K23 ["tag"]
      102 GETUPVAL                         R11 12
      103 JUMPIFNOTEQ                      R10 R11 ; [+120]
      105 GETUPVAL                         R10 13
      106 MOVE                             R11 R9
      107 MOVE                             R12 R8
      108 CALL                             R10 2 1
      109 JUMPIFNOT                        R10 ; [+114]
      110 GETTABLEKS                       R10 R9 K19 ["updateQueue"]
      112 JUMPIFNOTEQKNIL                  R10 ; [+8]
      114 NEWTABLE                         R11 1 0
      116 LOADB                            R12 1
      117 SETTABLE                         R12 R11 R7
      118 SETTABLEKS                       R11 R9 K19 ["updateQueue"]
      120 JUMP                             ; [+2]
      121 LOADB                            R11 1
      122 SETTABLE                         R11 R10 R7
      123 GETTABLEKS                       R12 R9 K12 ["mode"]
      125 GETUPVAL                         R13 7
      126 FASTCALL2                        BIT32_BAND R12 R13 ; [+3]
      128 GETIMPORT                        R11 K14 [bit32.band]
      130 CALL                             R11 2 1
      131 GETUPVAL                         R12 8
      132 JUMPIFNOTEQ                      R11 R12 ; [+73]
      134 GETTABLEKS                       R12 R9 K0 ["flags"]
      136 GETUPVAL                         R13 14
      137 FASTCALL2                        BIT32_BOR R12 R13 ; [+3]
      139 GETIMPORT                        R11 K3 [bit32.bor]
      141 CALL                             R11 2 1
      142 SETTABLEKS                       R11 R9 K0 ["flags"]
      144 GETTABLEKS                       R12 R2 K0 ["flags"]
      146 GETUPVAL                         R13 15
      147 FASTCALL2                        BIT32_BOR R12 R13 ; [+3]
      149 GETIMPORT                        R11 K3 [bit32.bor]
      151 CALL                             R11 2 1
      152 SETTABLEKS                       R11 R2 K0 ["flags"]
      154 GETTABLEKS                       R12 R2 K0 ["flags"]
      156 GETUPVAL                         R15 16
      157 GETUPVAL                         R16 0
      158 FASTCALL2                        BIT32_BOR R15 R16 ; [+3]
      160 GETIMPORT                        R14 K3 [bit32.bor]
      162 CALL                             R14 2 1
      163 FASTCALL1                        BIT32_BNOT R14 ; [+2]
      164 GETIMPORT                        R13 K25 [bit32.bnot]
      166 CALL                             R13 1 1
      167 FASTCALL2                        BIT32_BAND R12 R13 ; [+3]
      169 GETIMPORT                        R11 K14 [bit32.band]
      171 CALL                             R11 2 1
      172 SETTABLEKS                       R11 R2 K0 ["flags"]
      174 GETTABLEKS                       R11 R2 K23 ["tag"]
      176 GETUPVAL                         R12 17
      177 JUMPIFNOTEQ                      R11 R12 ; [+20]
      179 GETTABLEKS                       R11 R2 K18 ["alternate"]
      181 JUMPIFNOTEQKNIL                  R11 ; [+5]
      183 GETUPVAL                         R12 18
      184 SETTABLEKS                       R12 R2 K23 ["tag"]
      186 JUMP                             ; [+11]
      187 GETUPVAL                         R12 19
      188 GETUPVAL                         R13 20
      189 GETUPVAL                         R14 21
      190 CALL                             R12 2 1
      191 GETUPVAL                         R13 22
      192 SETTABLEKS                       R13 R12 K23 ["tag"]
      194 GETUPVAL                         R13 23
      195 MOVE                             R14 R2
      196 MOVE                             R15 R12
      197 CALL                             R13 2 0
      198 GETUPVAL                         R11 24
      199 GETTABLEKS                       R12 R2 K21 ["lanes"]
      201 GETUPVAL                         R13 21
      202 CALL                             R11 2 1
      203 SETTABLEKS                       R11 R2 K21 ["lanes"]
      205 RETURN                           R0 0
      206 GETUPVAL                         R11 25
      207 MOVE                             R12 R0
      208 MOVE                             R13 R7
      209 MOVE                             R14 R4
      210 CALL                             R11 3 0
      211 GETTABLEKS                       R12 R9 K0 ["flags"]
      213 GETUPVAL                         R13 26
      214 FASTCALL2                        BIT32_BOR R12 R13 ; [+3]
      216 GETIMPORT                        R11 K3 [bit32.bor]
      218 CALL                             R11 2 1
      219 SETTABLEKS                       R11 R9 K0 ["flags"]
      221 SETTABLEKS                       R4 R9 K21 ["lanes"]
      223 RETURN                           R0 0
      224 GETTABLEKS                       R9 R9 K26 ["return_"]
      226 JUMPIFEQKNIL                     R9 ; [+2]
      228 JUMPBACK                         ; [-129]
      229 GETUPVAL                         R15 3
      230 GETTABLEKS                       R16 R2 K17 ["type"]
      232 CALL                             R15 1 1
      233 ORK                              R10 R15 K27 ["A React component"]
      234 LOADK                            R11 K28 [" suspended while rendering, but no fallback UI was specified.\n"]
      235 LOADK                            R12 K29 ["\n"]
      236 LOADK                            R13 K30 ["Add a <Suspense fallback=...> component higher in the tree to "]
      237 LOADK                            R14 K31 ["provide a loading indicator or placeholder to display."]
      238 CONCAT                           R3 R10 R14
      239 MOVE                             R7 R6
      240 CALL                             R7 0 0
      241 GETUPVAL                         R7 27
      242 MOVE                             R8 R3
      243 MOVE                             R9 R2
      244 CALL                             R7 2 1
      245 MOVE                             R3 R7
      246 MOVE                             R7 R1
      247 GETTABLEKS                       R8 R7 K23 ["tag"]
      249 GETUPVAL                         R9 28
      250 JUMPIFNOTEQ                      R8 R9 ; [+34]
      252 MOVE                             R8 R3
      253 GETTABLEKS                       R10 R7 K0 ["flags"]
      255 GETUPVAL                         R11 26
      256 FASTCALL2                        BIT32_BOR R10 R11 ; [+3]
      258 GETIMPORT                        R9 K3 [bit32.bor]
      260 CALL                             R9 2 1
      261 SETTABLEKS                       R9 R7 K0 ["flags"]
      263 GETUPVAL                         R9 29
      264 MOVE                             R10 R4
      265 CALL                             R9 1 1
      266 GETUPVAL                         R10 24
      267 GETTABLEKS                       R11 R7 K21 ["lanes"]
      269 MOVE                             R12 R9
      270 CALL                             R10 2 1
      271 SETTABLEKS                       R10 R7 K21 ["lanes"]
      273 GETGLOBAL                        R10 K32 ["createRootErrorUpdate"]
      275 MOVE                             R11 R7
      276 MOVE                             R12 R8
      277 MOVE                             R13 R9
      278 MOVE                             R14 R5
      279 CALL                             R10 4 1
      280 GETUPVAL                         R11 30
      281 MOVE                             R12 R7
      282 MOVE                             R13 R10
      283 CALL                             R11 2 0
      284 RETURN                           R0 0
      285 GETTABLEKS                       R8 R7 K23 ["tag"]
      287 GETUPVAL                         R9 17
      288 JUMPIFNOTEQ                      R8 R9 ; [+70]
      290 MOVE                             R8 R3
      291 GETTABLEKS                       R9 R7 K17 ["type"]
      293 GETTABLEKS                       R10 R7 K33 ["stateNode"]
      295 GETTABLEKS                       R12 R7 K0 ["flags"]
      297 GETUPVAL                         R13 14
      298 FASTCALL2                        BIT32_BAND R12 R13 ; [+3]
      300 GETIMPORT                        R11 K14 [bit32.band]
      302 CALL                             R11 2 1
      303 GETUPVAL                         R12 31
      304 JUMPIFNOTEQ                      R11 R12 ; [+54]
      306 GETTABLEKS                       R12 R9 K34 ["getDerivedStateFromError"]
      308 FASTCALL1                        TYPEOF R12 ; [+2]
      309 GETIMPORT                        R11 K5 [typeof]
      311 CALL                             R11 1 1
      312 JUMPIFEQKS                       R11 K8 ["function"] ; [+15]
      314 JUMPIFEQKNIL                     R10 ; [+44]
      316 GETTABLEKS                       R12 R10 K35 ["componentDidCatch"]
      318 FASTCALL1                        TYPEOF R12 ; [+2]
      319 GETIMPORT                        R11 K5 [typeof]
      321 CALL                             R11 1 1
      322 JUMPIFNOTEQKS                    R11 K8 ["function"] ; [+36]
      324 GETUPVAL                         R11 32
      325 MOVE                             R12 R10
      326 CALL                             R11 1 1
      327 JUMPIF                           R11 ; [+31]
      328 GETTABLEKS                       R12 R7 K0 ["flags"]
      330 GETUPVAL                         R13 26
      331 FASTCALL2                        BIT32_BOR R12 R13 ; [+3]
      333 GETIMPORT                        R11 K3 [bit32.bor]
      335 CALL                             R11 2 1
      336 SETTABLEKS                       R11 R7 K0 ["flags"]
      338 GETUPVAL                         R11 29
      339 MOVE                             R12 R4
      340 CALL                             R11 1 1
      341 GETUPVAL                         R12 24
      342 GETTABLEKS                       R13 R7 K21 ["lanes"]
      344 MOVE                             R14 R11
      345 CALL                             R12 2 1
      346 SETTABLEKS                       R12 R7 K21 ["lanes"]
      348 GETGLOBAL                        R12 K36 ["createClassErrorUpdate"]
      350 MOVE                             R13 R7
      351 MOVE                             R14 R8
      352 MOVE                             R15 R11
      353 CALL                             R12 3 1
      354 GETUPVAL                         R13 30
      355 MOVE                             R14 R7
      356 MOVE                             R15 R12
      357 CALL                             R13 2 0
      358 RETURN                           R0 0
      359 GETTABLEKS                       R7 R7 K26 ["return_"]
      361 JUMPIFEQKNIL                     R7 ; [+2]
      363 JUMPBACK                         ; [-117]
      364 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Object"]
       14 GETIMPORT                        R3 K4 [require]
       16 GETTABLEKS                       R4 R0 K7 ["Shared"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R3 R3 K8 ["console"]
       21 GETIMPORT                        R4 K4 [require]
       23 GETIMPORT                        R5 K1 [script]
       25 GETTABLEKS                       R5 R5 K2 ["Parent"]
       27 GETTABLEKS                       R5 R5 K9 ["ReactInternalTypes"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K4 [require]
       32 GETIMPORT                        R6 K1 [script]
       34 GETTABLEKS                       R6 R6 K2 ["Parent"]
       36 GETTABLEKS                       R6 R6 K10 ["ReactFiberLane"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K4 [require]
       41 GETIMPORT                        R7 K1 [script]
       43 GETTABLEKS                       R7 R7 K2 ["Parent"]
       45 GETTABLEKS                       R7 R7 K11 ["ReactCapturedValue"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K4 [require]
       50 GETIMPORT                        R9 K1 [script]
       52 GETTABLEKS                       R9 R9 K2 ["Parent"]
       54 GETTABLEKS                       R8 R9 K12 ["ReactUpdateQueue.new"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K4 [require]
       59 GETTABLEKS                       R9 R0 K7 ["Shared"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K4 [require]
       64 GETIMPORT                        R11 K1 [script]
       66 GETTABLEKS                       R11 R11 K2 ["Parent"]
       68 GETTABLEKS                       R10 R11 K13 ["ReactFiberSuspenseContext.new"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K4 [require]
       73 GETTABLEKS                       R11 R0 K7 ["Shared"]
       75 CALL                             R10 1 1
       76 GETTABLEKS                       R10 R10 K14 ["getComponentName"]
       78 GETIMPORT                        R11 K4 [require]
       80 GETIMPORT                        R12 K1 [script]
       82 GETTABLEKS                       R12 R12 K2 ["Parent"]
       84 GETTABLEKS                       R12 R12 K15 ["ReactWorkTags"]
       86 CALL                             R11 1 1
       87 GETTABLEKS                       R12 R11 K16 ["ClassComponent"]
       89 GETTABLEKS                       R13 R11 K17 ["HostRoot"]
       91 GETTABLEKS                       R14 R11 K18 ["SuspenseComponent"]
       93 GETTABLEKS                       R15 R11 K19 ["IncompleteClassComponent"]
       95 GETIMPORT                        R16 K4 [require]
       97 GETIMPORT                        R17 K1 [script]
       99 GETTABLEKS                       R17 R17 K2 ["Parent"]
      101 GETTABLEKS                       R17 R17 K20 ["ReactFiberFlags"]
      103 CALL                             R16 1 1
      104 GETTABLEKS                       R17 R16 K21 ["DidCapture"]
      106 GETTABLEKS                       R18 R16 K22 ["Incomplete"]
      108 GETTABLEKS                       R19 R16 K23 ["NoFlags"]
      110 GETTABLEKS                       R20 R16 K24 ["ShouldCapture"]
      112 GETTABLEKS                       R21 R16 K25 ["LifecycleEffectMask"]
      114 GETTABLEKS                       R22 R16 K26 ["ForceUpdateForLegacySuspense"]
      116 GETIMPORT                        R23 K4 [require]
      118 GETIMPORT                        R25 K1 [script]
      120 GETTABLEKS                       R25 R25 K2 ["Parent"]
      122 GETTABLEKS                       R24 R25 K27 ["ReactFiberSuspenseComponent.new"]
      124 CALL                             R23 1 1
      125 GETTABLEKS                       R23 R23 K28 ["shouldCaptureSuspense"]
      127 GETIMPORT                        R24 K4 [require]
      129 GETIMPORT                        R25 K1 [script]
      131 GETTABLEKS                       R25 R25 K2 ["Parent"]
      133 GETTABLEKS                       R25 R25 K29 ["ReactTypeOfMode"]
      135 CALL                             R24 1 1
      136 GETTABLEKS                       R25 R24 K30 ["NoMode"]
      138 GETTABLEKS                       R26 R24 K31 ["BlockingMode"]
      140 GETTABLEKS                       R27 R24 K32 ["DebugTracingMode"]
      142 GETIMPORT                        R28 K4 [require]
      144 GETTABLEKS                       R29 R0 K7 ["Shared"]
      146 CALL                             R28 1 1
      147 GETTABLEKS                       R28 R28 K33 ["ReactFeatureFlags"]
      149 GETTABLEKS                       R29 R28 K34 ["enableDebugTracing"]
      151 GETTABLEKS                       R30 R28 K35 ["enableSchedulingProfiler"]
      153 GETIMPORT                        R31 K4 [require]
      155 GETIMPORT                        R32 K1 [script]
      157 GETTABLEKS                       R32 R32 K2 ["Parent"]
      159 GETTABLEKS                       R32 R32 K11 ["ReactCapturedValue"]
      161 CALL                             R31 1 1
      162 GETTABLEKS                       R31 R31 K36 ["createCapturedValue"]
      164 GETTABLEKS                       R32 R7 K37 ["enqueueCapturedUpdate"]
      166 GETTABLEKS                       R33 R7 K38 ["createUpdate"]
      168 GETTABLEKS                       R34 R7 K39 ["CaptureUpdate"]
      170 GETTABLEKS                       R35 R7 K40 ["ForceUpdate"]
      172 GETTABLEKS                       R36 R7 K41 ["enqueueUpdate"]
      174 GETIMPORT                        R37 K4 [require]
      176 GETIMPORT                        R39 K1 [script]
      178 GETTABLEKS                       R39 R39 K2 ["Parent"]
      180 GETTABLEKS                       R38 R39 K42 ["ReactFiberHotReloading.new"]
      182 CALL                             R37 1 1
      183 GETTABLEKS                       R37 R37 K43 ["markFailedErrorBoundaryForHotReloading"]
      185 GETTABLEKS                       R38 R9 K44 ["hasSuspenseContext"]
      187 GETTABLEKS                       R39 R9 K45 ["InvisibleParentSuspenseContext"]
      189 GETTABLEKS                       R40 R9 K46 ["suspenseStackCursor"]
      191 LOADNIL                          R41
      192 LOADNIL                          R42
      193 LOADNIL                          R43
      194 LOADNIL                          R44
      195 NEWCLOSURE                       R45 P0
      196 CAPTURE                          REF R42
      197 CAPTURE                          REF R41
      198 NEWCLOSURE                       R46 P1
      199 CAPTURE                          REF R41
      200 CAPTURE                          REF R44
      201 NEWCLOSURE                       R47 P2
      202 CAPTURE                          REF R41
      203 CAPTURE                          REF R43
      204 GETIMPORT                        R48 K4 [require]
      206 GETIMPORT                        R49 K1 [script]
      208 GETTABLEKS                       R49 R49 K2 ["Parent"]
      210 GETTABLEKS                       R49 R49 K47 ["ReactFiberErrorLogger"]
      212 CALL                             R48 1 1
      213 GETTABLEKS                       R48 R48 K48 ["logCapturedError"]
      215 GETIMPORT                        R49 K4 [require]
      217 GETIMPORT                        R50 K1 [script]
      219 GETTABLEKS                       R50 R50 K2 ["Parent"]
      221 GETTABLEKS                       R50 R50 K49 ["DebugTracing"]
      223 CALL                             R49 1 1
      224 GETTABLEKS                       R49 R49 K50 ["logComponentSuspended"]
      226 GETIMPORT                        R50 K4 [require]
      228 GETIMPORT                        R51 K1 [script]
      230 GETTABLEKS                       R51 R51 K2 ["Parent"]
      232 GETTABLEKS                       R51 R51 K51 ["SchedulingProfiler"]
      234 CALL                             R50 1 1
      235 GETTABLEKS                       R50 R50 K52 ["markComponentSuspended"]
      237 GETTABLEKS                       R51 R5 K53 ["SyncLane"]
      239 GETTABLEKS                       R52 R5 K54 ["NoTimestamp"]
      241 GETTABLEKS                       R53 R5 K55 ["includesSomeLane"]
      243 GETTABLEKS                       R54 R5 K56 ["mergeLanes"]
      245 GETTABLEKS                       R55 R5 K57 ["pickArbitraryLane"]
      247 DUPCLOSURE                       R56 K58 [PROTO_4]
      248 CAPTURE                          VAL R33
      249 CAPTURE                          VAL R52
      250 CAPTURE                          VAL R34
      251 CAPTURE                          VAL R2
      252 CAPTURE                          VAL R48
      253 SETGLOBAL                        R56 K59 ["createRootErrorUpdate"]
      255 DUPCLOSURE                       R56 K60 [PROTO_8]
      256 CAPTURE                          VAL R33
      257 CAPTURE                          VAL R52
      258 CAPTURE                          VAL R34
      259 CAPTURE                          VAL R48
      260 CAPTURE                          VAL R37
      261 CAPTURE                          VAL R45
      262 CAPTURE                          VAL R53
      263 CAPTURE                          VAL R51
      264 CAPTURE                          VAL R3
      265 CAPTURE                          VAL R10
      266 SETGLOBAL                        R56 K61 ["createClassErrorUpdate"]
      268 DUPCLOSURE                       R56 K62 [PROTO_10]
      269 CAPTURE                          VAL R46
      270 DUPCLOSURE                       R57 K63 [PROTO_11]
      271 CAPTURE                          VAL R18
      272 CAPTURE                          VAL R29
      273 CAPTURE                          VAL R27
      274 CAPTURE                          VAL R10
      275 CAPTURE                          VAL R49
      276 CAPTURE                          VAL R30
      277 CAPTURE                          VAL R50
      278 CAPTURE                          VAL R26
      279 CAPTURE                          VAL R25
      280 CAPTURE                          VAL R38
      281 CAPTURE                          VAL R40
      282 CAPTURE                          VAL R39
      283 CAPTURE                          VAL R14
      284 CAPTURE                          VAL R23
      285 CAPTURE                          VAL R17
      286 CAPTURE                          VAL R22
      287 CAPTURE                          VAL R21
      288 CAPTURE                          VAL R12
      289 CAPTURE                          VAL R15
      290 CAPTURE                          VAL R33
      291 CAPTURE                          VAL R52
      292 CAPTURE                          VAL R51
      293 CAPTURE                          VAL R35
      294 CAPTURE                          VAL R36
      295 CAPTURE                          VAL R54
      296 CAPTURE                          VAL R56
      297 CAPTURE                          VAL R20
      298 CAPTURE                          VAL R31
      299 CAPTURE                          VAL R13
      300 CAPTURE                          VAL R55
      301 CAPTURE                          VAL R32
      302 CAPTURE                          VAL R19
      303 CAPTURE                          VAL R47
      304 SETGLOBAL                        R57 K64 ["throwException"]
      306 DUPTABLE                         R57 K65 [{"throwException", "createRootErrorUpdate", "createClassErrorUpdate"}]
      307 GETGLOBAL                        R58 K64 ["throwException"]
      309 SETTABLEKS                       R58 R57 K64 ["throwException"]
      311 GETGLOBAL                        R58 K59 ["createRootErrorUpdate"]
      313 SETTABLEKS                       R58 R57 K59 ["createRootErrorUpdate"]
      315 GETGLOBAL                        R58 K61 ["createClassErrorUpdate"]
      317 SETTABLEKS                       R58 R57 K61 ["createClassErrorUpdate"]
      319 CLOSEUPVALS                      R41
      320 RETURN                           R57 1
