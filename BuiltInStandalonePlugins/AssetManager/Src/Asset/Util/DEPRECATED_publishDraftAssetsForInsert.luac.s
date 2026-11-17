PROTO_0:
        0 LOADB                            R1 0
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [type]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["string"] ; [+12]
        8 GETIMPORT                        R2 K4 [string.find]
       10 MOVE                             R3 R0
       11 LOADK                            R4 K5 ["not available for this component"]
       12 LOADN                            R5 1
       13 LOADB                            R6 1
       14 CALL                             R2 4 1
       15 JUMPIFNOTEQKNIL                  R2 ; [+2]
       17 LOADB                            R1 0 +1
       18 LOADB                            R1 1
       19 RETURN                           R1 1

PROTO_1:
        0 LOADN                            R1 1
        1 JUMPIFNOTLE                      R0 R1 ; [+3]
        3 LOADK                            R1 K0 ["1"]
        4 RETURN                           R1 1
        5 LOADN                            R1 5
        6 JUMPIFNOTLE                      R0 R1 ; [+3]
        8 LOADK                            R1 K1 ["2-5"]
        9 RETURN                           R1 1
       10 LOADN                            R1 20
       11 JUMPIFNOTLE                      R0 R1 ; [+3]
       13 LOADK                            R1 K2 ["6-20"]
       14 RETURN                           R1 1
       15 LOADN                            R1 50
       16 JUMPIFNOTLE                      R0 R1 ; [+3]
       18 LOADK                            R1 K3 ["21-50"]
       19 RETURN                           R1 1
       20 LOADK                            R1 K4 ["51+"]
       21 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["sendBenchmarkingStat"]
        3 LOADK                            R1 K1 ["PublishDrafts"]
        4 GETUPVAL                         R2 1
        5 DUPTABLE                         R3 K5 [{"outcome", "anyUnusable", "assetCountBucket"}]
        6 GETUPVAL                         R4 2
        7 SETTABLEKS                       R4 R3 K2 ["outcome"]
        9 GETUPVAL                         R4 3
       10 SETTABLEKS                       R4 R3 K3 ["anyUnusable"]
       12 GETUPVAL                         R5 4
       13 LOADN                            R6 1
       14 JUMPIFNOTLE                      R5 R6 ; [+3]
       16 LOADK                            R4 K6 ["1"]
       17 JUMP                             ; [+16]
       18 LOADN                            R6 5
       19 JUMPIFNOTLE                      R5 R6 ; [+3]
       21 LOADK                            R4 K7 ["2-5"]
       22 JUMP                             ; [+11]
       23 LOADN                            R6 20
       24 JUMPIFNOTLE                      R5 R6 ; [+3]
       26 LOADK                            R4 K8 ["6-20"]
       27 JUMP                             ; [+6]
       28 LOADN                            R6 50
       29 JUMPIFNOTLE                      R5 R6 ; [+3]
       31 LOADK                            R4 K9 ["21-50"]
       32 JUMP                             ; [+1]
       33 LOADK                            R4 K10 ["51+"]
       34 SETTABLEKS                       R4 R3 K4 ["assetCountBucket"]
       36 CALL                             R0 3 0
       37 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R5 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R2
        4 CAPTURE                          VAL R3
        5 CAPTURE                          VAL R1
        6 FASTPCALL                        pcall 1 ; [+2]
        7 GETIMPORT                        R4 K1 [pcall]
        9 CALL                             R4 1 2
       10 JUMPIF                           R4 ; [+7]
       11 GETUPVAL                         R6 1
       12 LOADK                            R7 K2 ["publish: failed to send the PublishDrafts stat: %*"]
       13 MOVE                             R9 R5
       14 NAMECALL                         R7 R7 K3 ["format"]
       16 CALL                             R7 2 1
       17 CALL                             R6 1 0
       18 RETURN                           R0 0

PROTO_4:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["EnumItem"] ; [+4]
        7 GETTABLEKS                       R1 R0 K3 ["Name"]
        9 RETURN                           R1 1
       10 FASTCALL1                        TYPE R0 ; [+3]
       11 MOVE                             R2 R0
       12 GETIMPORT                        R1 K5 [type]
       14 CALL                             R1 1 1
       15 JUMPIFNOTEQKS                    R1 K6 ["string"] ; [+2]
       17 RETURN                           R0 1
       18 LOADNIL                          R1
       19 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["CreatorId"]
        2 FASTCALL1                        TYPE R3 ; [+3]
        3 MOVE                             R5 R3
        4 GETIMPORT                        R4 K2 [type]
        6 CALL                             R4 1 1
        7 JUMPIFNOTEQKS                    R4 K3 ["number"] ; [+5]
        9 JUMPIFEQKN                       R3 K4 [0] ; [+3]
       11 JUMPIFNOTEQKN                    R2 K4 [0] ; [+3]
       13 LOADB                            R4 0
       14 RETURN                           R4 1
       15 GETTABLEKS                       R5 R0 K5 ["CreatorType"]
       17 FASTCALL1                        TYPEOF R5 ; [+3]
       18 MOVE                             R7 R5
       19 GETIMPORT                        R6 K7 [typeof]
       21 CALL                             R6 1 1
       22 JUMPIFNOTEQKS                    R6 K8 ["EnumItem"] ; [+4]
       24 GETTABLEKS                       R4 R5 K9 ["Name"]
       26 JUMP                             ; [+10]
       27 FASTCALL1                        TYPE R5 ; [+3]
       28 MOVE                             R7 R5
       29 GETIMPORT                        R6 K2 [type]
       31 CALL                             R6 1 1
       32 JUMPIFNOTEQKS                    R6 K10 ["string"] ; [+3]
       34 MOVE                             R4 R5
       35 JUMP                             ; [+1]
       36 LOADNIL                          R4
       37 FASTCALL1                        TYPEOF R1 ; [+3]
       38 MOVE                             R7 R1
       39 GETIMPORT                        R6 K7 [typeof]
       41 CALL                             R6 1 1
       42 JUMPIFNOTEQKS                    R6 K8 ["EnumItem"] ; [+4]
       44 GETTABLEKS                       R5 R1 K9 ["Name"]
       46 JUMP                             ; [+10]
       47 FASTCALL1                        TYPE R1 ; [+3]
       48 MOVE                             R7 R1
       49 GETIMPORT                        R6 K2 [type]
       51 CALL                             R6 1 1
       52 JUMPIFNOTEQKS                    R6 K10 ["string"] ; [+3]
       54 MOVE                             R5 R1
       55 JUMP                             ; [+1]
       56 LOADNIL                          R5
       57 JUMPIFEQKNIL                     R4 ; [+3]
       59 JUMPIFNOTEQKNIL                  R5 ; [+3]
       61 LOADB                            R6 0
       62 RETURN                           R6 1
       63 GETUPVAL                         R7 0
       64 GETTABLE                         R6 R7 R4
       65 JUMPIFNOT                        R6 ; [+3]
       66 GETUPVAL                         R7 0
       67 GETTABLE                         R6 R7 R5
       68 JUMPIF                           R6 ; [+2]
       69 LOADB                            R6 0
       70 RETURN                           R6 1
       71 LOADB                            R6 0
       72 JUMPIFNOTEQ                      R4 R5 ; [+5]
       74 JUMPIFEQ                         R3 R2 ; [+2]
       76 LOADB                            R6 0 +1
       77 LOADB                            R6 1
       78 RETURN                           R6 1

PROTO_6:
        0 NEWTABLE                         R2 0 0
        2 JUMPIFNOTEQKNIL                  R1 ; [+2]
        4 RETURN                           R2 1
        5 MOVE                             R3 R0
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 FORGPREP                         R3
        9 GETTABLE                         R8 R1 R6
       10 JUMPIFEQKNIL                     R8 ; [+11]
       12 DUPTABLE                         R9 K2 [{"CreatorType", "CreatorId"}]
       13 GETTABLEKS                       R10 R8 K3 ["Type"]
       15 SETTABLEKS                       R10 R9 K0 ["CreatorType"]
       17 GETTABLEKS                       R10 R8 K4 ["Id"]
       19 SETTABLEKS                       R10 R9 K1 ["CreatorId"]
       21 SETTABLE                         R9 R2 R7
       22 FORGLOOP                         R3 2 ; [-14]
       24 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["PublishLatestDraftsAndWaitAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_8:
        0 NEWTABLE                         R5 0 0
        2 GETUPVAL                         R6 0
        3 CALL                             R6 0 1
        4 JUMPIF                           R6 ; [+4]
        5 GETUPVAL                         R6 1
        6 LOADK                            R7 K0 ["publish: gate is off (FFlagAmrPublishDraftAssetsOnInsert)"]
        7 CALL                             R6 1 0
        8 RETURN                           R5 1
        9 GETUPVAL                         R6 1
       10 LOADK                            R8 K1 ["publish: gate entered for %* asset(s), destination is "]
       11 LENGTH                           R10 R1
       12 NAMECALL                         R8 R8 K2 ["format"]
       14 CALL                             R8 2 1
       15 LOADK                            R9 K3 ["%*:%*"]
       16 FASTCALL1                        TYPEOF R2 ; [+3]
       17 MOVE                             R14 R2
       18 GETIMPORT                        R13 K6 [typeof]
       20 CALL                             R13 1 1
       21 JUMPIFNOTEQKS                    R13 K7 ["EnumItem"] ; [+4]
       23 GETTABLEKS                       R12 R2 K8 ["Name"]
       25 JUMP                             ; [+10]
       26 FASTCALL1                        TYPE R2 ; [+3]
       27 MOVE                             R14 R2
       28 GETIMPORT                        R13 K10 [type]
       30 CALL                             R13 1 1
       31 JUMPIFNOTEQKS                    R13 K11 ["string"] ; [+3]
       33 MOVE                             R12 R2
       34 JUMP                             ; [+1]
       35 LOADNIL                          R12
       36 ORK                              R11 R12 K4 ["unknown"]
       37 MOVE                             R12 R3
       38 NAMECALL                         R9 R9 K2 ["format"]
       40 CALL                             R9 3 1
       41 CONCAT                           R7 R8 R9
       42 CALL                             R6 1 0
       43 JUMPIFNOT                        R0 ; [+3]
       44 LENGTH                           R6 R1
       45 JUMPIFNOTEQKN                    R6 K12 [0] ; [+5]
       47 GETUPVAL                         R6 1
       48 LOADK                            R7 K13 ["publish: skipped, no AssetAccessController or no asset ids"]
       49 CALL                             R6 1 0
       50 RETURN                           R5 1
       51 NEWTABLE                         R6 0 0
       53 GETUPVAL                         R7 2
       54 MOVE                             R8 R1
       55 MOVE                             R9 R4
       56 CALL                             R7 2 1
       57 MOVE                             R8 R1
       58 LOADNIL                          R9
       59 LOADNIL                          R10
       60 FORGPREP                         R8
       61 GETTABLE                         R13 R7 R12
       62 JUMPIFEQKNIL                     R13 ; [+7]
       64 GETUPVAL                         R14 3
       65 MOVE                             R15 R13
       66 MOVE                             R16 R2
       67 MOVE                             R17 R3
       68 CALL                             R14 3 1
       69 JUMPIF                           R14 ; [+7]
       70 FASTCALL2                        TABLE_INSERT R6 R12 ; [+5]
       72 MOVE                             R15 R6
       73 MOVE                             R16 R12
       74 GETIMPORT                        R14 K16 [table.insert]
       76 CALL                             R14 2 0
       77 FORGLOOP                         R8 2 ; [-17]
       79 GETUPVAL                         R8 1
       80 LOADK                            R10 K17 ["publish: %* of %* asset(s) need publish state, "]
       81 LENGTH                           R12 R6
       82 LENGTH                           R13 R1
       83 NAMECALL                         R10 R10 K2 ["format"]
       85 CALL                             R10 3 1
       86 LOADK                            R11 K18 ["%* already known to be same account"]
       87 LENGTH                           R14 R1
       88 LENGTH                           R15 R6
       89 SUB                              R13 R14 R15
       90 NAMECALL                         R11 R11 K2 ["format"]
       92 CALL                             R11 2 1
       93 CONCAT                           R9 R10 R11
       94 CALL                             R8 1 0
       95 LENGTH                           R8 R6
       96 JUMPIFNOTEQKN                    R8 K12 [0] ; [+5]
       98 GETUPVAL                         R8 1
       99 LOADK                            R9 K19 ["publish: nothing to do, every asset is owned by this experience's account"]
      100 CALL                             R8 1 0
      101 RETURN                           R5 1
      102 GETUPVAL                         R8 4
      103 CALL                             R8 0 1
      104 JUMPIFNOT                        R8 ; [+4]
      105 GETIMPORT                        R9 K22 [os.clock]
      107 CALL                             R9 0 1
      108 JUMP                             ; [+1]
      109 LOADN                            R9 0
      110 LOADK                            R10 K23 ["Ok"]
      111 LOADN                            R13 1
      112 LENGTH                           R11 R6
      113 LOADN                            R12 50
      114 FORNPREP                         R11
      115 GETIMPORT                        R14 K25 [table.move]
      117 MOVE                             R15 R6
      118 MOVE                             R16 R13
      119 ADDK                             R19 R13 K27 [50]
      120 SUBK                             R18 R19 K26 [1]
      121 LENGTH                           R19 R6
      122 FASTCALL2                        MATH_MIN R18 R19 ; [+3]
      124 GETIMPORT                        R17 K30 [math.min]
      126 CALL                             R17 2 1
      127 LOADN                            R18 1
      128 NEWTABLE                         R19 0 0
      130 CALL                             R14 5 1
      131 GETUPVAL                         R15 1
      132 LOADK                            R16 K31 ["publish: publishing drafts among %* asset(s), waiting for each to settle"]
      133 LENGTH                           R18 R14
      134 NAMECALL                         R16 R16 K2 ["format"]
      136 CALL                             R16 2 1
      137 CALL                             R15 1 0
      138 NEWCLOSURE                       R16 P0
      139 CAPTURE                          VAL R0
      140 CAPTURE                          VAL R14
      141 FASTPCALL                        pcall 1 ; [+2]
      142 GETIMPORT                        R15 K33 [pcall]
      144 CALL                             R15 1 2
      145 JUMPIFNOT                        R15 ; [+7]
      146 FASTCALL1                        TYPE R16 ; [+3]
      147 MOVE                             R18 R16
      148 GETIMPORT                        R17 K10 [type]
      150 CALL                             R17 1 1
      151 JUMPIFEQKS                       R17 K14 ["table"] ; [+69]
      153 LOADB                            R17 0
      154 FASTCALL1                        TYPE R16 ; [+3]
      155 MOVE                             R19 R16
      156 GETIMPORT                        R18 K10 [type]
      158 CALL                             R18 1 1
      159 JUMPIFNOTEQKS                    R18 K11 ["string"] ; [+12]
      161 GETIMPORT                        R18 K35 [string.find]
      163 MOVE                             R19 R16
      164 LOADK                            R20 K36 ["not available for this component"]
      165 LOADN                            R21 1
      166 LOADB                            R22 1
      167 CALL                             R18 4 1
      168 JUMPIFNOTEQKNIL                  R18 ; [+2]
      170 LOADB                            R17 0 +1
      171 LOADB                            R17 1
      172 JUMPIFNOT                        R17 ; [+37]
      173 JUMPIFNOT                        R8 ; [+32]
      174 GETIMPORT                        R18 K22 [os.clock]
      176 CALL                             R18 0 1
      177 SUB                              R17 R18 R9
      178 LENGTH                           R18 R6
      179 GETIMPORT                        R20 K38 [next]
      181 MOVE                             R21 R5
      182 CALL                             R20 1 1
      183 JUMPIFNOTEQKNIL                  R20 ; [+2]
      185 LOADB                            R19 0 +1
      186 LOADB                            R19 1
      187 LOADK                            R22 K39 ["Unavailable"]
      188 NEWCLOSURE                       R21 P1
      189 CAPTURE                          UPVAL U5
      190 CAPTURE                          VAL R17
      191 CAPTURE                          VAL R22
      192 CAPTURE                          VAL R19
      193 CAPTURE                          VAL R18
      194 FASTPCALL                        pcall 1 ; [+2]
      195 GETIMPORT                        R20 K33 [pcall]
      197 CALL                             R20 1 2
      198 JUMPIF                           R20 ; [+7]
      199 GETUPVAL                         R22 1
      200 LOADK                            R23 K40 ["publish: failed to send the PublishDrafts stat: %*"]
      201 MOVE                             R25 R21
      202 NAMECALL                         R23 R23 K2 ["format"]
      204 CALL                             R23 2 1
      205 CALL                             R22 1 0
      206 GETUPVAL                         R17 1
      207 LOADK                            R18 K41 ["publish: skipped, PublishLatestDraftsAndWaitAsync is not registered on this Studio"]
      208 CALL                             R17 1 0
      209 RETURN                           R5 1
      210 JUMPIFNOT                        R8 ; [+1]
      211 LOADK                            R10 K42 ["Failed"]
      212 GETIMPORT                        R17 K44 [warn]
      214 LOADK                            R18 K45 ["Failed to publish draft assets before insertion: %*"]
      215 MOVE                             R20 R16
      216 NAMECALL                         R18 R18 K2 ["format"]
      218 CALL                             R18 2 1
      219 CALL                             R17 1 0
      220 JUMP                             ; [+15]
      221 MOVE                             R17 R16
      222 LOADNIL                          R18
      223 LOADNIL                          R19
      224 FORGPREP                         R17
      225 FASTCALL1                        TYPE R21 ; [+3]
      226 MOVE                             R23 R21
      227 GETIMPORT                        R22 K10 [type]
      229 CALL                             R22 1 1
      230 JUMPIFNOTEQKS                    R22 K46 ["number"] ; [+3]
      232 LOADB                            R22 1
      233 SETTABLE                         R22 R5 R21
      234 FORGLOOP                         R17 2 ; [-10]
      236 FORNLOOP                         R11
      237 LOADN                            R11 0
      238 MOVE                             R12 R5
      239 LOADNIL                          R13
      240 LOADNIL                          R14
      241 FORGPREP                         R12
      242 ADDK                             R11 R11 K26 [1]
      243 FORGLOOP                         R12 1 ; [-2]
      245 JUMPIFNOTEQKN                    R11 K12 [0] ; [+5]
      247 GETUPVAL                         R12 1
      248 LOADK                            R13 K47 ["publish: every asset is publishable and servable, proceeding to the grant"]
      249 CALL                             R12 1 0
      250 JUMP                             ; [+8]
      251 GETIMPORT                        R12 K44 [warn]
      253 LOADK                            R13 K48 ["%* asset(s) could not be published and will not be inserted"]
      254 MOVE                             R15 R11
      255 NAMECALL                         R13 R13 K2 ["format"]
      257 CALL                             R13 2 1
      258 CALL                             R12 1 0
      259 JUMPIFNOT                        R8 ; [+28]
      260 GETIMPORT                        R13 K22 [os.clock]
      262 CALL                             R13 0 1
      263 SUB                              R12 R13 R9
      264 LENGTH                           R13 R6
      265 LOADN                            R16 0
      266 JUMPIFLT                         R16 R11 ; [+2]
      268 LOADB                            R15 0 +1
      269 LOADB                            R15 1
      270 NEWCLOSURE                       R17 P1
      271 CAPTURE                          UPVAL U5
      272 CAPTURE                          VAL R12
      273 CAPTURE                          VAL R10
      274 CAPTURE                          VAL R15
      275 CAPTURE                          VAL R13
      276 FASTPCALL                        pcall 1 ; [+2]
      277 GETIMPORT                        R16 K33 [pcall]
      279 CALL                             R16 1 2
      280 JUMPIF                           R16 ; [+7]
      281 GETUPVAL                         R18 1
      282 LOADK                            R19 K40 ["publish: failed to send the PublishDrafts stat: %*"]
      283 MOVE                             R21 R17
      284 NAMECALL                         R19 R19 K2 ["format"]
      286 CALL                             R19 2 1
      287 CALL                             R18 1 0
      288 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Analytics"]
       13 GETTABLEKS                       R2 R2 K8 ["Benchmarking"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Types"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K10 ["Util"]
       29 GETTABLEKS                       R4 R4 K11 ["logIfDebug"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Src"]
       36 GETTABLEKS                       R5 R5 K12 ["Flags"]
       38 GETTABLEKS                       R5 R5 K13 ["getFFlagAmrPublishDraftAssetsOnInsert"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K6 ["Src"]
       45 GETTABLEKS                       R6 R6 K12 ["Flags"]
       47 GETTABLEKS                       R6 R6 K14 ["getFFlagAmrPublishDraftsLatencyTelemetry"]
       49 CALL                             R5 1 1
       50 DUPTABLE                         R6 K18 [{["User"] = True, ["Group"] = True}]
       51 DUPCLOSURE                       R7 K19 [PROTO_0]
       52 DUPCLOSURE                       R8 K20 [PROTO_1]
       53 DUPCLOSURE                       R9 K21 [PROTO_3]
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R3
       56 DUPCLOSURE                       R10 K22 [PROTO_4]
       57 DUPCLOSURE                       R11 K23 [PROTO_5]
       58 CAPTURE                          VAL R6
       59 DUPCLOSURE                       R12 K24 [PROTO_6]
       60 DUPCLOSURE                       R13 K25 [PROTO_8]
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R12
       64 CAPTURE                          VAL R11
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R1
       67 RETURN                           R13 1
