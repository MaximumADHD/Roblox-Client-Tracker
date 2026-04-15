PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 LOADB                            R3 1
        6 JUMPIFEQKS                       R2 K2 ["string"] ; [+5]
        8 JUMPIFEQKS                       R2 K3 ["userdata"] ; [+2]
       10 LOADB                            R3 0 +1
       11 LOADB                            R3 1
       12 MOVE                             R5 R3
       13 GETIMPORT                        R6 K5 [string.format]
       15 LOADK                            R7 K6 ["%s '%s' must be a string or userdata but is a %s"]
       16 MOVE                             R8 R1
       17 FASTCALL1                        TOSTRING R0 ; [+3]
       18 MOVE                             R10 R0
       19 GETIMPORT                        R9 K8 [tostring]
       21 CALL                             R9 1 1
       22 MOVE                             R10 R2
       23 CALL                             R6 4 -1
       24 FASTCALL                         ASSERT ; [+2]
       25 GETIMPORT                        R4 K10 [assert]
       27 CALL                             R4 -1 0
       28 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K0 ["handleEvent"]
        5 CALL                             R1 3 -1
        6 RETURN                           R1 -1

PROTO_2:
        0 GETIMPORT                        R2 K1 [error]
        2 GETIMPORT                        R3 K4 [string.format]
        4 LOADK                            R4 K5 ["'%s' is not a valid event in StateTable '%s'"]
        5 FASTCALL1                        TOSTRING R1 ; [+3]
        6 MOVE                             R6 R1
        7 GETIMPORT                        R5 K7 [tostring]
        9 CALL                             R5 1 1
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R6 R7 K8 ["name"]
       13 CALL                             R3 3 1
       14 LOADN                            R4 2
       15 CALL                             R2 2 0
       16 RETURN                           R0 0

PROTO_3:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R7 R0
        2 GETIMPORT                        R6 K1 [typeof]
        4 CALL                             R6 1 1
        5 JUMPIFEQKS                       R6 K2 ["string"] ; [+2]
        7 LOADB                            R5 0 +1
        8 LOADB                            R5 1
        9 FASTCALL2K                       ASSERT R5 K3 ; [+4]
       11 LOADK                            R6 K3 ["name must be a string"]
       12 GETIMPORT                        R4 K5 [assert]
       14 CALL                             R4 2 0
       15 LENGTH                           R6 R0
       16 LOADN                            R7 0
       17 JUMPIFLT                         R7 R6 ; [+2]
       19 LOADB                            R5 0 +1
       20 LOADB                            R5 1
       21 FASTCALL2K                       ASSERT R5 K6 ; [+4]
       23 LOADK                            R6 K6 ["name must not be an empty string"]
       24 GETIMPORT                        R4 K5 [assert]
       26 CALL                             R4 2 0
       27 FASTCALL1                        TYPEOF R1 ; [+3]
       28 MOVE                             R5 R1
       29 GETIMPORT                        R4 K1 [typeof]
       31 CALL                             R4 1 1
       32 LOADB                            R5 1
       33 JUMPIFEQKS                       R4 K2 ["string"] ; [+5]
       35 JUMPIFEQKS                       R4 K7 ["userdata"] ; [+2]
       37 LOADB                            R5 0 +1
       38 LOADB                            R5 1
       39 MOVE                             R7 R5
       40 GETIMPORT                        R8 K9 [string.format]
       42 LOADK                            R9 K10 ["%s '%s' must be a string or userdata but is a %s"]
       43 LOADK                            R10 K11 ["initialState"]
       44 FASTCALL1                        TOSTRING R1 ; [+3]
       45 MOVE                             R12 R1
       46 GETIMPORT                        R11 K13 [tostring]
       48 CALL                             R11 1 1
       49 MOVE                             R12 R4
       50 CALL                             R8 4 -1
       51 FASTCALL                         ASSERT ; [+2]
       52 GETIMPORT                        R6 K5 [assert]
       54 CALL                             R6 -1 0
       55 LOADB                            R5 1
       56 JUMPIFEQKNIL                     R2 ; [+10]
       58 FASTCALL1                        TYPEOF R2 ; [+3]
       59 MOVE                             R7 R2
       60 GETIMPORT                        R6 K1 [typeof]
       62 CALL                             R6 1 1
       63 JUMPIFEQKS                       R6 K14 ["table"] ; [+2]
       65 LOADB                            R5 0 +1
       66 LOADB                            R5 1
       67 FASTCALL2K                       ASSERT R5 K15 ; [+4]
       69 LOADK                            R6 K15 ["initialContext must be a table or nil"]
       70 GETIMPORT                        R4 K5 [assert]
       72 CALL                             R4 2 0
       73 FASTCALL1                        TYPEOF R3 ; [+3]
       74 MOVE                             R7 R3
       75 GETIMPORT                        R6 K1 [typeof]
       77 CALL                             R6 1 1
       78 JUMPIFEQKS                       R6 K14 ["table"] ; [+2]
       80 LOADB                            R5 0 +1
       81 LOADB                            R5 1
       82 FASTCALL2K                       ASSERT R5 K16 ; [+4]
       84 LOADK                            R6 K16 ["transitionTable must be a table"]
       85 GETIMPORT                        R4 K5 [assert]
       87 CALL                             R4 2 0
       88 GETTABLE                         R7 R3 R1
       89 FASTCALL1                        TYPEOF R7 ; [+2]
       90 GETIMPORT                        R6 K1 [typeof]
       92 CALL                             R6 1 1
       93 JUMPIFEQKS                       R6 K14 ["table"] ; [+2]
       95 LOADB                            R5 0 +1
       96 LOADB                            R5 1
       97 FASTCALL2K                       ASSERT R5 K17 ; [+4]
       99 LOADK                            R6 K17 ["initialState must be present in transitionTable"]
      100 GETIMPORT                        R4 K5 [assert]
      102 CALL                             R4 2 0
      103 NEWTABLE                         R4 8 0
      105 GETUPVAL                         R7 0
      106 FASTCALL2                        SETMETATABLE R4 R7 ; [+4]
      108 MOVE                             R6 R4
      109 GETIMPORT                        R5 K19 [setmetatable]
      111 CALL                             R5 2 0
      112 SETTABLEKS                       R0 R4 K20 ["name"]
      114 SETTABLEKS                       R1 R4 K21 ["currentState"]
      116 MOVE                             R5 R2
      117 JUMPIF                           R5 ; [+2]
      118 NEWTABLE                         R5 0 0
      120 SETTABLEKS                       R5 R4 K22 ["currentContext"]
      122 NEWTABLE                         R5 0 0
      124 SETTABLEKS                       R5 R4 K23 ["transitionTable"]
      126 NEWTABLE                         R5 0 0
      128 SETTABLEKS                       R5 R4 K24 ["events"]
      130 GETIMPORT                        R5 K26 [pairs]
      132 MOVE                             R6 R3
      133 CALL                             R5 1 3
      134 FORGPREP_NEXT                    R5
      135 FASTCALL1                        TYPEOF R8 ; [+3]
      136 MOVE                             R11 R8
      137 GETIMPORT                        R10 K1 [typeof]
      139 CALL                             R10 1 1
      140 LOADB                            R11 1
      141 JUMPIFEQKS                       R10 K2 ["string"] ; [+5]
      143 JUMPIFEQKS                       R10 K7 ["userdata"] ; [+2]
      145 LOADB                            R11 0 +1
      146 LOADB                            R11 1
      147 MOVE                             R13 R11
      148 GETIMPORT                        R14 K9 [string.format]
      150 LOADK                            R15 K10 ["%s '%s' must be a string or userdata but is a %s"]
      151 LOADK                            R16 K27 ["state"]
      152 FASTCALL1                        TOSTRING R8 ; [+3]
      153 MOVE                             R18 R8
      154 GETIMPORT                        R17 K13 [tostring]
      156 CALL                             R17 1 1
      157 MOVE                             R18 R10
      158 CALL                             R14 4 -1
      159 FASTCALL                         ASSERT ; [+2]
      160 GETIMPORT                        R12 K5 [assert]
      162 CALL                             R12 -1 0
      163 FASTCALL1                        TYPEOF R9 ; [+3]
      164 MOVE                             R13 R9
      165 GETIMPORT                        R12 K1 [typeof]
      167 CALL                             R12 1 1
      168 JUMPIFEQKS                       R12 K14 ["table"] ; [+2]
      170 LOADB                            R11 0 +1
      171 LOADB                            R11 1
      172 GETIMPORT                        R12 K9 [string.format]
      174 LOADK                            R13 K28 ["state '%s' must map to a table"]
      175 FASTCALL1                        TOSTRING R8 ; [+3]
      176 MOVE                             R15 R8
      177 GETIMPORT                        R14 K13 [tostring]
      179 CALL                             R14 1 1
      180 CALL                             R12 2 -1
      181 FASTCALL                         ASSERT ; [+2]
      182 GETIMPORT                        R10 K5 [assert]
      184 CALL                             R10 -1 0
      185 NEWTABLE                         R10 0 0
      187 GETIMPORT                        R11 K26 [pairs]
      189 MOVE                             R12 R9
      190 CALL                             R11 1 3
      191 FORGPREP_NEXT                    R11
      192 FASTCALL1                        TYPEOF R14 ; [+3]
      193 MOVE                             R17 R14
      194 GETIMPORT                        R16 K1 [typeof]
      196 CALL                             R16 1 1
      197 LOADB                            R17 1
      198 JUMPIFEQKS                       R16 K2 ["string"] ; [+5]
      200 JUMPIFEQKS                       R16 K7 ["userdata"] ; [+2]
      202 LOADB                            R17 0 +1
      203 LOADB                            R17 1
      204 MOVE                             R19 R17
      205 GETIMPORT                        R20 K9 [string.format]
      207 LOADK                            R21 K10 ["%s '%s' must be a string or userdata but is a %s"]
      208 LOADK                            R22 K29 ["event"]
      209 FASTCALL1                        TOSTRING R14 ; [+3]
      210 MOVE                             R24 R14
      211 GETIMPORT                        R23 K13 [tostring]
      213 CALL                             R23 1 1
      214 MOVE                             R24 R16
      215 CALL                             R20 4 -1
      216 FASTCALL                         ASSERT ; [+2]
      217 GETIMPORT                        R18 K5 [assert]
      219 CALL                             R18 -1 0
      220 FASTCALL1                        TYPEOF R15 ; [+3]
      221 MOVE                             R19 R15
      222 GETIMPORT                        R18 K1 [typeof]
      224 CALL                             R18 1 1
      225 JUMPIFEQKS                       R18 K14 ["table"] ; [+2]
      227 LOADB                            R17 0 +1
      228 LOADB                            R17 1
      229 GETIMPORT                        R18 K9 [string.format]
      231 LOADK                            R19 K30 ["event '%s' must map to a table"]
      232 FASTCALL1                        TOSTRING R14 ; [+3]
      233 MOVE                             R21 R14
      234 GETIMPORT                        R20 K13 [tostring]
      236 CALL                             R20 1 1
      237 CALL                             R18 2 -1
      238 FASTCALL                         ASSERT ; [+2]
      239 GETIMPORT                        R16 K5 [assert]
      241 CALL                             R16 -1 0
      242 GETTABLEKS                       R16 R15 K31 ["nextState"]
      244 GETTABLEKS                       R17 R15 K32 ["action"]
      246 JUMPIFEQKNIL                     R16 ; [+47]
      248 FASTCALL1                        TYPEOF R16 ; [+3]
      249 MOVE                             R19 R16
      250 GETIMPORT                        R18 K1 [typeof]
      252 CALL                             R18 1 1
      253 LOADB                            R19 1
      254 JUMPIFEQKS                       R18 K2 ["string"] ; [+5]
      256 JUMPIFEQKS                       R18 K7 ["userdata"] ; [+2]
      258 LOADB                            R19 0 +1
      259 LOADB                            R19 1
      260 MOVE                             R21 R19
      261 GETIMPORT                        R22 K9 [string.format]
      263 LOADK                            R23 K10 ["%s '%s' must be a string or userdata but is a %s"]
      264 LOADK                            R24 K31 ["nextState"]
      265 FASTCALL1                        TOSTRING R16 ; [+3]
      266 MOVE                             R26 R16
      267 GETIMPORT                        R25 K13 [tostring]
      269 CALL                             R25 1 1
      270 MOVE                             R26 R18
      271 CALL                             R22 4 -1
      272 FASTCALL                         ASSERT ; [+2]
      273 GETIMPORT                        R20 K5 [assert]
      275 CALL                             R20 -1 0
      276 GETTABLE                         R20 R3 R16
      277 JUMPIFNOTEQKNIL                  R20 ; [+2]
      279 LOADB                            R19 0 +1
      280 LOADB                            R19 1
      281 GETIMPORT                        R20 K9 [string.format]
      283 LOADK                            R21 K33 ["nextState '%s' does not exist in transitionTable"]
      284 FASTCALL1                        TOSTRING R16 ; [+3]
      285 MOVE                             R23 R16
      286 GETIMPORT                        R22 K13 [tostring]
      288 CALL                             R22 1 1
      289 CALL                             R20 2 -1
      290 FASTCALL                         ASSERT ; [+2]
      291 GETIMPORT                        R18 K5 [assert]
      293 CALL                             R18 -1 0
      294 LOADB                            R19 1
      295 JUMPIFEQKNIL                     R17 ; [+10]
      297 FASTCALL1                        TYPEOF R17 ; [+3]
      298 MOVE                             R21 R17
      299 GETIMPORT                        R20 K1 [typeof]
      301 CALL                             R20 1 1
      302 JUMPIFEQKS                       R20 K34 ["function"] ; [+2]
      304 LOADB                            R19 0 +1
      305 LOADB                            R19 1
      306 FASTCALL2K                       ASSERT R19 K35 ; [+4]
      308 LOADK                            R20 K35 ["action must be a function"]
      309 GETIMPORT                        R18 K5 [assert]
      311 CALL                             R18 2 0
      312 SETTABLE                         R15 R10 R14
      313 GETTABLEKS                       R19 R4 K24 ["events"]
      315 GETTABLE                         R18 R19 R14
      316 JUMPIFNOTEQKNIL                  R18 ; [+7]
      318 GETTABLEKS                       R18 R4 K24 ["events"]
      320 NEWCLOSURE                       R19 P0
      321 CAPTURE                          VAL R4
      322 CAPTURE                          VAL R14
      323 SETTABLE                         R19 R18 R14
      324 FORGLOOP                         R11 2 ; [-133]
      326 GETTABLEKS                       R11 R4 K23 ["transitionTable"]
      328 SETTABLE                         R10 R11 R8
      329 FORGLOOP                         R5 2 ; [-195]
      331 GETTABLEKS                       R6 R4 K24 ["events"]
      333 DUPTABLE                         R7 K37 [{"__index"}]
      334 NEWCLOSURE                       R8 P1
      335 CAPTURE                          VAL R4
      336 SETTABLEKS                       R8 R7 K36 ["__index"]
      338 FASTCALL2                        SETMETATABLE R6 R7 ; [+3]
      340 GETIMPORT                        R5 K19 [setmetatable]
      342 CALL                             R5 2 0
      343 RETURN                           R4 1

PROTO_4:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R4 R1
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 LOADB                            R4 1
        6 JUMPIFEQKS                       R3 K2 ["string"] ; [+5]
        8 JUMPIFEQKS                       R3 K3 ["userdata"] ; [+2]
       10 LOADB                            R4 0 +1
       11 LOADB                            R4 1
       12 MOVE                             R6 R4
       13 GETIMPORT                        R7 K5 [string.format]
       15 LOADK                            R8 K6 ["%s '%s' must be a string or userdata but is a %s"]
       16 LOADK                            R9 K7 ["event"]
       17 FASTCALL1                        TOSTRING R1 ; [+3]
       18 MOVE                             R11 R1
       19 GETIMPORT                        R10 K9 [tostring]
       21 CALL                             R10 1 1
       22 MOVE                             R11 R3
       23 CALL                             R7 4 -1
       24 FASTCALL                         ASSERT ; [+2]
       25 GETIMPORT                        R5 K11 [assert]
       27 CALL                             R5 -1 0
       28 LOADB                            R4 1
       29 JUMPIFEQKNIL                     R2 ; [+10]
       31 FASTCALL1                        TYPEOF R2 ; [+3]
       32 MOVE                             R6 R2
       33 GETIMPORT                        R5 K1 [typeof]
       35 CALL                             R5 1 1
       36 JUMPIFEQKS                       R5 K12 ["table"] ; [+2]
       38 LOADB                            R4 0 +1
       39 LOADB                            R4 1
       40 FASTCALL2K                       ASSERT R4 K13 ; [+4]
       42 LOADK                            R5 K13 ["args must be nil or valid table"]
       43 GETIMPORT                        R3 K11 [assert]
       45 CALL                             R3 2 0
       46 GETTABLEKS                       R3 R0 K14 ["currentState"]
       48 GETTABLEKS                       R5 R0 K15 ["transitionTable"]
       50 GETTABLE                         R4 R5 R3
       51 JUMPIFNOTEQKNIL                  R4 ; [+2]
       53 LOADB                            R6 0 +1
       54 LOADB                            R6 1
       55 FASTCALL2K                       ASSERT R6 K16 ; [+4]
       57 LOADK                            R7 K16 ["no transition events for current state"]
       58 GETIMPORT                        R5 K11 [assert]
       60 CALL                             R5 2 0
       61 GETTABLE                         R5 R4 R1
       62 JUMPIFEQKNIL                     R5 ; [+54]
       64 GETTABLE                         R5 R4 R1
       65 GETTABLEKS                       R7 R5 K17 ["nextState"]
       67 OR                               R6 R7 R3
       68 GETTABLEKS                       R7 R5 K18 ["action"]
       70 GETTABLEKS                       R8 R0 K19 ["currentContext"]
       72 JUMPIFEQKNIL                     R7 ; [+32]
       74 MOVE                             R9 R7
       75 MOVE                             R10 R3
       76 MOVE                             R11 R6
       77 MOVE                             R12 R2
       78 GETTABLEKS                       R13 R0 K19 ["currentContext"]
       80 CALL                             R9 4 1
       81 JUMPIF                           R9 ; [+2]
       82 NEWTABLE                         R9 0 0
       84 NEWTABLE                         R8 0 0
       86 GETIMPORT                        R10 K21 [pairs]
       88 GETTABLEKS                       R11 R0 K19 ["currentContext"]
       90 CALL                             R10 1 3
       91 FORGPREP_NEXT                    R10
       92 SETTABLE                         R14 R8 R13
       93 FORGLOOP                         R10 2 ; [-2]
       95 GETIMPORT                        R10 K21 [pairs]
       97 MOVE                             R11 R9
       98 CALL                             R10 1 3
       99 FORGPREP_NEXT                    R10
      100 SETTABLE                         R14 R8 R13
      101 FORGLOOP                         R10 2 ; [-2]
      103 SETTABLEKS                       R8 R0 K19 ["currentContext"]
      105 SETTABLEKS                       R6 R0 K14 ["currentState"]
      107 GETTABLEKS                       R9 R0 K22 ["stateChangeHandler"]
      109 JUMPIFEQKNIL                     R9 ; [+7]
      111 GETTABLEKS                       R9 R0 K22 ["stateChangeHandler"]
      113 MOVE                             R10 R3
      114 MOVE                             R11 R6
      115 MOVE                             R12 R8
      116 CALL                             R9 3 0
      117 RETURN                           R0 0

PROTO_5:
        0 LOADB                            R3 1
        1 JUMPIFEQKNIL                     R1 ; [+10]
        3 FASTCALL1                        TYPEOF R1 ; [+3]
        4 MOVE                             R5 R1
        5 GETIMPORT                        R4 K1 [typeof]
        7 CALL                             R4 1 1
        8 JUMPIFEQKS                       R4 K2 ["function"] ; [+2]
       10 LOADB                            R3 0 +1
       11 LOADB                            R3 1
       12 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       14 LOADK                            R4 K3 ["stateChangeHandler must be nil or a function"]
       15 GETIMPORT                        R2 K5 [assert]
       17 CALL                             R2 2 0
       18 SETTABLEKS                       R1 R0 K6 ["stateChangeHandler"]
       20 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 DUPCLOSURE                       R2 K2 [PROTO_3]
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R2 R0 K3 ["new"]
       10 DUPCLOSURE                       R2 K4 [PROTO_4]
       11 SETTABLEKS                       R2 R0 K5 ["handleEvent"]
       13 DUPCLOSURE                       R2 K6 [PROTO_5]
       14 SETTABLEKS                       R2 R0 K7 ["onStateChange"]
       16 RETURN                           R0 1
