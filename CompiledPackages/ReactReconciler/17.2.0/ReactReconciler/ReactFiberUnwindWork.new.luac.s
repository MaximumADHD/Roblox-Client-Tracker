PROTO_0:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 JUMPIF                           R0 ; [+12]
        3 GETIMPORT                        R0 K1 [require]
        5 GETIMPORT                        R2 K4 [script]
        7 GETTABLEKS                       R2 R2 K5 ["Parent"]
        9 GETTABLEKS                       R1 R2 K2 ["ReactFiberWorkLoop.new"]
       11 CALL                             R0 1 1
       12 GETTABLEKS                       R0 R0 K6 ["popRenderLanes"]
       14 SETUPVAL                         R0 0
       15 GETUPVAL                         R0 0
       16 GETVARARGS                       R1 -1
       17 CALL                             R0 -1 -1
       18 RETURN                           R0 -1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["tag"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["ClassComponent"]
        5 JUMPIFNOTEQ                      R2 R3 ; [+69]
        7 GETTABLEKS                       R2 R0 K2 ["type"]
        9 GETUPVAL                         R3 1
       10 MOVE                             R4 R2
       11 CALL                             R3 1 1
       12 JUMPIFNOT                        R3 ; [+3]
       13 GETUPVAL                         R3 2
       14 MOVE                             R4 R0
       15 CALL                             R3 1 0
       16 GETTABLEKS                       R3 R0 K3 ["flags"]
       18 GETUPVAL                         R6 3
       19 GETTABLEKS                       R6 R6 K4 ["ShouldCapture"]
       21 FASTCALL2                        BIT32_BAND R3 R6 ; [+4]
       23 MOVE                             R5 R3
       24 GETIMPORT                        R4 K7 [bit32.band]
       26 CALL                             R4 2 1
       27 JUMPIFEQKN                       R4 K8 [0] ; [+45]
       29 GETUPVAL                         R8 3
       30 GETTABLEKS                       R8 R8 K4 ["ShouldCapture"]
       32 FASTCALL1                        BIT32_BNOT R8 ; [+2]
       33 GETIMPORT                        R7 K10 [bit32.bnot]
       35 CALL                             R7 1 1
       36 FASTCALL2                        BIT32_BAND R3 R7 ; [+4]
       38 MOVE                             R6 R3
       39 GETIMPORT                        R5 K7 [bit32.band]
       41 CALL                             R5 2 1
       42 GETUPVAL                         R6 3
       43 GETTABLEKS                       R6 R6 K11 ["DidCapture"]
       45 FASTCALL2                        BIT32_BOR R5 R6 ; [+3]
       47 GETIMPORT                        R4 K13 [bit32.bor]
       49 CALL                             R4 2 1
       50 SETTABLEKS                       R4 R0 K3 ["flags"]
       52 GETUPVAL                         R4 4
       53 JUMPIFNOT                        R4 ; [+18]
       54 GETTABLEKS                       R5 R0 K14 ["mode"]
       56 GETUPVAL                         R6 5
       57 GETTABLEKS                       R6 R6 K15 ["ProfileMode"]
       59 FASTCALL2                        BIT32_BAND R5 R6 ; [+3]
       61 GETIMPORT                        R4 K7 [bit32.band]
       63 CALL                             R4 2 1
       64 GETUPVAL                         R5 5
       65 GETTABLEKS                       R5 R5 K16 ["NoMode"]
       67 JUMPIFEQ                         R4 R5 ; [+4]
       69 GETUPVAL                         R4 6
       70 MOVE                             R5 R0
       71 CALL                             R4 1 0
       72 RETURN                           R0 1
       73 LOADNIL                          R4
       74 RETURN                           R4 1
       75 GETTABLEKS                       R2 R0 K0 ["tag"]
       77 GETUPVAL                         R3 0
       78 GETTABLEKS                       R3 R3 K17 ["HostRoot"]
       80 JUMPIFNOTEQ                      R2 R3 ; [+54]
       82 GETUPVAL                         R2 7
       83 MOVE                             R3 R0
       84 CALL                             R2 1 0
       85 GETUPVAL                         R2 8
       86 MOVE                             R3 R0
       87 CALL                             R2 1 0
       88 GETUPVAL                         R2 9
       89 CALL                             R2 0 0
       90 GETTABLEKS                       R2 R0 K3 ["flags"]
       92 GETUPVAL                         R3 10
       93 GETUPVAL                         R7 3
       94 GETTABLEKS                       R7 R7 K11 ["DidCapture"]
       96 FASTCALL2                        BIT32_BAND R2 R7 ; [+4]
       98 MOVE                             R6 R2
       99 GETIMPORT                        R5 K7 [bit32.band]
      101 CALL                             R5 2 1
      102 GETUPVAL                         R6 3
      103 GETTABLEKS                       R6 R6 K18 ["NoFlags"]
      105 JUMPIFEQ                         R5 R6 ; [+2]
      107 LOADB                            R4 0 +1
      108 LOADB                            R4 1
      109 LOADK                            R5 K19 ["The root failed to unmount after an error. This is likely a bug in React. Please file an issue."]
      110 CALL                             R3 2 0
      111 GETUPVAL                         R7 3
      112 GETTABLEKS                       R7 R7 K4 ["ShouldCapture"]
      114 FASTCALL1                        BIT32_BNOT R7 ; [+2]
      115 GETIMPORT                        R6 K10 [bit32.bnot]
      117 CALL                             R6 1 1
      118 FASTCALL2                        BIT32_BAND R2 R6 ; [+4]
      120 MOVE                             R5 R2
      121 GETIMPORT                        R4 K7 [bit32.band]
      123 CALL                             R4 2 1
      124 GETUPVAL                         R5 3
      125 GETTABLEKS                       R5 R5 K11 ["DidCapture"]
      127 FASTCALL2                        BIT32_BOR R4 R5 ; [+3]
      129 GETIMPORT                        R3 K13 [bit32.bor]
      131 CALL                             R3 2 1
      132 SETTABLEKS                       R3 R0 K3 ["flags"]
      134 RETURN                           R0 1
      135 GETTABLEKS                       R2 R0 K0 ["tag"]
      137 GETUPVAL                         R3 0
      138 GETTABLEKS                       R3 R3 K20 ["HostComponent"]
      140 JUMPIFNOTEQ                      R2 R3 ; [+6]
      142 GETUPVAL                         R2 11
      143 MOVE                             R3 R0
      144 CALL                             R2 1 0
      145 LOADNIL                          R2
      146 RETURN                           R2 1
      147 GETTABLEKS                       R2 R0 K0 ["tag"]
      149 GETUPVAL                         R3 0
      150 GETTABLEKS                       R3 R3 K21 ["SuspenseComponent"]
      152 JUMPIFNOTEQ                      R2 R3 ; [+84]
      154 GETUPVAL                         R2 12
      155 MOVE                             R3 R0
      156 CALL                             R2 1 0
      157 GETUPVAL                         R2 13
      158 JUMPIFNOT                        R2 ; [+19]
      159 GETTABLEKS                       R2 R0 K22 ["memoizedState"]
      161 JUMPIFEQKNIL                     R2 ; [+16]
      163 GETTABLEKS                       R3 R2 K23 ["dehydrated"]
      165 JUMPIFEQKNIL                     R3 ; [+12]
      167 GETUPVAL                         R3 10
      168 GETTABLEKS                       R5 R0 K24 ["alternate"]
      170 JUMPIFNOTEQKNIL                  R5 ; [+2]
      172 LOADB                            R4 0 +1
      173 LOADB                            R4 1
      174 LOADK                            R5 K25 ["Threw in newly mounted dehydrated component. This is likely a bug in React. Please file an issue."]
      175 CALL                             R3 2 0
      176 GETUPVAL                         R3 14
      177 CALL                             R3 0 0
      178 GETTABLEKS                       R2 R0 K3 ["flags"]
      180 GETUPVAL                         R5 3
      181 GETTABLEKS                       R5 R5 K4 ["ShouldCapture"]
      183 FASTCALL2                        BIT32_BAND R2 R5 ; [+4]
      185 MOVE                             R4 R2
      186 GETIMPORT                        R3 K7 [bit32.band]
      188 CALL                             R3 2 1
      189 JUMPIFEQKN                       R3 K8 [0] ; [+45]
      191 GETUPVAL                         R7 3
      192 GETTABLEKS                       R7 R7 K4 ["ShouldCapture"]
      194 FASTCALL1                        BIT32_BNOT R7 ; [+2]
      195 GETIMPORT                        R6 K10 [bit32.bnot]
      197 CALL                             R6 1 1
      198 FASTCALL2                        BIT32_BAND R2 R6 ; [+4]
      200 MOVE                             R5 R2
      201 GETIMPORT                        R4 K7 [bit32.band]
      203 CALL                             R4 2 1
      204 GETUPVAL                         R5 3
      205 GETTABLEKS                       R5 R5 K11 ["DidCapture"]
      207 FASTCALL2                        BIT32_BOR R4 R5 ; [+3]
      209 GETIMPORT                        R3 K13 [bit32.bor]
      211 CALL                             R3 2 1
      212 SETTABLEKS                       R3 R0 K3 ["flags"]
      214 GETUPVAL                         R3 4
      215 JUMPIFNOT                        R3 ; [+18]
      216 GETTABLEKS                       R4 R0 K14 ["mode"]
      218 GETUPVAL                         R5 5
      219 GETTABLEKS                       R5 R5 K15 ["ProfileMode"]
      221 FASTCALL2                        BIT32_BAND R4 R5 ; [+3]
      223 GETIMPORT                        R3 K7 [bit32.band]
      225 CALL                             R3 2 1
      226 GETUPVAL                         R4 5
      227 GETTABLEKS                       R4 R4 K16 ["NoMode"]
      229 JUMPIFEQ                         R3 R4 ; [+4]
      231 GETUPVAL                         R3 6
      232 MOVE                             R4 R0
      233 CALL                             R3 1 0
      234 RETURN                           R0 1
      235 LOADNIL                          R3
      236 RETURN                           R3 1
      237 GETTABLEKS                       R2 R0 K0 ["tag"]
      239 GETUPVAL                         R3 0
      240 GETTABLEKS                       R3 R3 K26 ["SuspenseListComponent"]
      242 JUMPIFNOTEQ                      R2 R3 ; [+6]
      244 GETUPVAL                         R2 12
      245 MOVE                             R3 R0
      246 CALL                             R2 1 0
      247 LOADNIL                          R2
      248 RETURN                           R2 1
      249 GETTABLEKS                       R2 R0 K0 ["tag"]
      251 GETUPVAL                         R3 0
      252 GETTABLEKS                       R3 R3 K27 ["HostPortal"]
      254 JUMPIFNOTEQ                      R2 R3 ; [+6]
      256 GETUPVAL                         R2 7
      257 MOVE                             R3 R0
      258 CALL                             R2 1 0
      259 LOADNIL                          R2
      260 RETURN                           R2 1
      261 GETTABLEKS                       R2 R0 K0 ["tag"]
      263 GETUPVAL                         R3 0
      264 GETTABLEKS                       R3 R3 K28 ["ContextProvider"]
      266 JUMPIFNOTEQ                      R2 R3 ; [+6]
      268 GETUPVAL                         R2 15
      269 MOVE                             R3 R0
      270 CALL                             R2 1 0
      271 LOADNIL                          R2
      272 RETURN                           R2 1
      273 GETTABLEKS                       R2 R0 K0 ["tag"]
      275 GETUPVAL                         R3 0
      276 GETTABLEKS                       R3 R3 K29 ["OffscreenComponent"]
      278 JUMPIFEQ                         R2 R3 ; [+8]
      280 GETTABLEKS                       R2 R0 K0 ["tag"]
      282 GETUPVAL                         R3 0
      283 GETTABLEKS                       R3 R3 K30 ["LegacyHiddenComponent"]
      285 JUMPIFNOTEQ                      R2 R3 ; [+6]
      287 GETUPVAL                         R2 16
      288 MOVE                             R3 R0
      289 CALL                             R2 1 0
      290 LOADNIL                          R2
      291 RETURN                           R2 1
      292 LOADNIL                          R2
      293 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["tag"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["ClassComponent"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+20]
        7 LOADNIL                          R1
        8 GETTABLEKS                       R3 R0 K2 ["type"]
       10 FASTCALL1                        TYPEOF R3 ; [+2]
       11 GETIMPORT                        R2 K4 [typeof]
       13 CALL                             R2 1 1
       14 JUMPIFNOTEQKS                    R2 K5 ["table"] ; [+5]
       16 GETTABLEKS                       R2 R0 K2 ["type"]
       18 GETTABLEKS                       R1 R2 K6 ["childContextTypes"]
       20 JUMPIFEQKNIL                     R1 ; [+95]
       22 GETUPVAL                         R2 1
       23 MOVE                             R3 R0
       24 CALL                             R2 1 0
       25 RETURN                           R0 0
       26 GETTABLEKS                       R1 R0 K0 ["tag"]
       28 GETUPVAL                         R2 0
       29 GETTABLEKS                       R2 R2 K7 ["HostRoot"]
       31 JUMPIFNOTEQ                      R1 R2 ; [+10]
       33 GETUPVAL                         R1 2
       34 MOVE                             R2 R0
       35 CALL                             R1 1 0
       36 GETUPVAL                         R1 3
       37 MOVE                             R2 R0
       38 CALL                             R1 1 0
       39 GETUPVAL                         R1 4
       40 CALL                             R1 0 0
       41 RETURN                           R0 0
       42 GETTABLEKS                       R1 R0 K0 ["tag"]
       44 GETUPVAL                         R2 0
       45 GETTABLEKS                       R2 R2 K8 ["HostComponent"]
       47 JUMPIFNOTEQ                      R1 R2 ; [+5]
       49 GETUPVAL                         R1 5
       50 MOVE                             R2 R0
       51 CALL                             R1 1 0
       52 RETURN                           R0 0
       53 GETTABLEKS                       R1 R0 K0 ["tag"]
       55 GETUPVAL                         R2 0
       56 GETTABLEKS                       R2 R2 K9 ["HostPortal"]
       58 JUMPIFNOTEQ                      R1 R2 ; [+5]
       60 GETUPVAL                         R1 2
       61 MOVE                             R2 R0
       62 CALL                             R1 1 0
       63 RETURN                           R0 0
       64 GETTABLEKS                       R1 R0 K0 ["tag"]
       66 GETUPVAL                         R2 0
       67 GETTABLEKS                       R2 R2 K10 ["SuspenseComponent"]
       69 JUMPIFNOTEQ                      R1 R2 ; [+5]
       71 GETUPVAL                         R1 6
       72 MOVE                             R2 R0
       73 CALL                             R1 1 0
       74 RETURN                           R0 0
       75 GETTABLEKS                       R1 R0 K0 ["tag"]
       77 GETUPVAL                         R2 0
       78 GETTABLEKS                       R2 R2 K11 ["SuspenseListComponent"]
       80 JUMPIFNOTEQ                      R1 R2 ; [+5]
       82 GETUPVAL                         R1 6
       83 MOVE                             R2 R0
       84 CALL                             R1 1 0
       85 RETURN                           R0 0
       86 GETTABLEKS                       R1 R0 K0 ["tag"]
       88 GETUPVAL                         R2 0
       89 GETTABLEKS                       R2 R2 K12 ["ContextProvider"]
       91 JUMPIFNOTEQ                      R1 R2 ; [+5]
       93 GETUPVAL                         R1 7
       94 MOVE                             R2 R0
       95 CALL                             R1 1 0
       96 RETURN                           R0 0
       97 GETTABLEKS                       R1 R0 K0 ["tag"]
       99 GETUPVAL                         R2 0
      100 GETTABLEKS                       R2 R2 K13 ["OffscreenComponent"]
      102 JUMPIFEQ                         R1 R2 ; [+8]
      104 GETTABLEKS                       R1 R0 K0 ["tag"]
      106 GETUPVAL                         R2 0
      107 GETTABLEKS                       R2 R2 K14 ["LegacyHiddenComponent"]
      109 JUMPIFNOTEQ                      R1 R2 ; [+5]
      111 GETUPVAL                         R1 8
      112 MOVE                             R2 R0
      113 CALL                             R1 1 0
      114 RETURN                           R0 0
      115 RETURN                           R0 0
      116 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K2 ["Parent"]
       13 GETTABLEKS                       R2 R2 K5 ["ReactInternalTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETIMPORT                        R3 K1 [script]
       20 GETTABLEKS                       R3 R3 K2 ["Parent"]
       22 GETTABLEKS                       R3 R3 K6 ["ReactFiberLane"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETIMPORT                        R5 K1 [script]
       29 GETTABLEKS                       R5 R5 K2 ["Parent"]
       31 GETTABLEKS                       R4 R5 K7 ["ReactFiberSuspenseComponent.new"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K4 [require]
       36 GETIMPORT                        R6 K1 [script]
       38 GETTABLEKS                       R6 R6 K2 ["Parent"]
       40 GETTABLEKS                       R5 R6 K8 ["ReactMutableSource.new"]
       42 CALL                             R4 1 1
       43 GETTABLEKS                       R4 R4 K9 ["resetWorkInProgressVersions"]
       45 GETIMPORT                        R5 K4 [require]
       47 GETIMPORT                        R6 K1 [script]
       49 GETTABLEKS                       R6 R6 K2 ["Parent"]
       51 GETTABLEKS                       R6 R6 K10 ["ReactWorkTags"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K4 [require]
       56 GETIMPORT                        R7 K1 [script]
       58 GETTABLEKS                       R7 R7 K2 ["Parent"]
       60 GETTABLEKS                       R7 R7 K11 ["ReactFiberFlags"]
       62 CALL                             R6 1 1
       63 GETIMPORT                        R7 K4 [require]
       65 GETIMPORT                        R8 K1 [script]
       67 GETTABLEKS                       R8 R8 K2 ["Parent"]
       69 GETTABLEKS                       R8 R8 K12 ["ReactTypeOfMode"]
       71 CALL                             R7 1 1
       72 GETIMPORT                        R8 K4 [require]
       74 GETTABLEKS                       R9 R0 K13 ["Shared"]
       76 CALL                             R8 1 1
       77 GETTABLEKS                       R8 R8 K14 ["ReactFeatureFlags"]
       79 GETTABLEKS                       R9 R8 K15 ["enableSuspenseServerRenderer"]
       81 GETTABLEKS                       R10 R8 K16 ["enableProfilerTimer"]
       83 GETIMPORT                        R11 K4 [require]
       85 GETIMPORT                        R13 K1 [script]
       87 GETTABLEKS                       R13 R13 K2 ["Parent"]
       89 GETTABLEKS                       R12 R13 K17 ["ReactFiberHostContext.new"]
       91 CALL                             R11 1 1
       92 GETTABLEKS                       R12 R11 K18 ["popHostContainer"]
       94 GETTABLEKS                       R13 R11 K19 ["popHostContext"]
       96 GETIMPORT                        R14 K4 [require]
       98 GETIMPORT                        R16 K1 [script]
      100 GETTABLEKS                       R16 R16 K2 ["Parent"]
      102 GETTABLEKS                       R15 R16 K20 ["ReactFiberSuspenseContext.new"]
      104 CALL                             R14 1 1
      105 GETTABLEKS                       R14 R14 K21 ["popSuspenseContext"]
      107 GETIMPORT                        R15 K4 [require]
      109 GETIMPORT                        R17 K1 [script]
      111 GETTABLEKS                       R17 R17 K2 ["Parent"]
      113 GETTABLEKS                       R16 R17 K22 ["ReactFiberHydrationContext.new"]
      115 CALL                             R15 1 1
      116 GETTABLEKS                       R15 R15 K23 ["resetHydrationState"]
      118 GETIMPORT                        R16 K4 [require]
      120 GETIMPORT                        R18 K1 [script]
      122 GETTABLEKS                       R18 R18 K2 ["Parent"]
      124 GETTABLEKS                       R17 R18 K24 ["ReactFiberContext.new"]
      126 CALL                             R16 1 1
      127 GETTABLEKS                       R17 R16 K25 ["isContextProvider"]
      129 GETTABLEKS                       R18 R16 K26 ["popContext"]
      131 GETTABLEKS                       R19 R16 K27 ["popTopLevelContextObject"]
      133 GETIMPORT                        R20 K4 [require]
      135 GETIMPORT                        R22 K1 [script]
      137 GETTABLEKS                       R22 R22 K2 ["Parent"]
      139 GETTABLEKS                       R21 R22 K28 ["ReactFiberNewContext.new"]
      141 CALL                             R20 1 1
      142 GETTABLEKS                       R20 R20 K29 ["popProvider"]
      144 LOADNIL                          R21
      145 NEWCLOSURE                       R22 P0
      146 CAPTURE                          REF R21
      147 GETIMPORT                        R23 K4 [require]
      149 GETIMPORT                        R25 K1 [script]
      151 GETTABLEKS                       R25 R25 K2 ["Parent"]
      153 GETTABLEKS                       R24 R25 K30 ["ReactProfilerTimer.new"]
      155 CALL                             R23 1 1
      156 GETTABLEKS                       R23 R23 K31 ["transferActualDuration"]
      158 GETIMPORT                        R24 K4 [require]
      160 GETTABLEKS                       R25 R0 K13 ["Shared"]
      162 CALL                             R24 1 1
      163 GETTABLEKS                       R24 R24 K32 ["invariant"]
      165 DUPCLOSURE                       R25 K33 [PROTO_1]
      166 CAPTURE                          VAL R5
      167 CAPTURE                          VAL R17
      168 CAPTURE                          VAL R18
      169 CAPTURE                          VAL R6
      170 CAPTURE                          VAL R10
      171 CAPTURE                          VAL R7
      172 CAPTURE                          VAL R23
      173 CAPTURE                          VAL R12
      174 CAPTURE                          VAL R19
      175 CAPTURE                          VAL R4
      176 CAPTURE                          VAL R24
      177 CAPTURE                          VAL R13
      178 CAPTURE                          VAL R14
      179 CAPTURE                          VAL R9
      180 CAPTURE                          VAL R15
      181 CAPTURE                          VAL R20
      182 CAPTURE                          VAL R22
      183 DUPCLOSURE                       R26 K34 [PROTO_2]
      184 CAPTURE                          VAL R5
      185 CAPTURE                          VAL R18
      186 CAPTURE                          VAL R12
      187 CAPTURE                          VAL R19
      188 CAPTURE                          VAL R4
      189 CAPTURE                          VAL R13
      190 CAPTURE                          VAL R14
      191 CAPTURE                          VAL R20
      192 CAPTURE                          VAL R22
      193 SETGLOBAL                        R26 K35 ["unwindInterruptedWork"]
      195 DUPTABLE                         R26 K37 [{"unwindWork", "unwindInterruptedWork"}]
      196 SETTABLEKS                       R25 R26 K36 ["unwindWork"]
      198 GETGLOBAL                        R27 K35 ["unwindInterruptedWork"]
      200 SETTABLEKS                       R27 R26 K35 ["unwindInterruptedWork"]
      202 CLOSEUPVALS                      R21
      203 RETURN                           R26 1
