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
        0 GETIMPORT                        R4 K1 [pcall]
        2 NEWCLOSURE                       R5 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R2
        6 CAPTURE                          VAL R3
        7 CAPTURE                          VAL R1
        8 CALL                             R4 1 2
        9 JUMPIF                           R4 ; [+7]
       10 GETUPVAL                         R6 1
       11 LOADK                            R7 K2 ["publish: failed to send the PublishDrafts stat: %*"]
       12 MOVE                             R9 R5
       13 NAMECALL                         R7 R7 K3 ["format"]
       15 CALL                             R7 2 1
       16 CALL                             R6 1 0
       17 RETURN                           R0 0

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
       10 LOADK                            R10 K1 ["publish: gate entered for %* asset(s), destination is "]
       11 LENGTH                           R12 R1
       12 NAMECALL                         R10 R10 K2 ["format"]
       14 CALL                             R10 2 1
       15 MOVE                             R8 R10
       16 LOADK                            R9 K3 ["%*:%*"]
       17 FASTCALL1                        TYPEOF R2 ; [+3]
       18 MOVE                             R14 R2
       19 GETIMPORT                        R13 K6 [typeof]
       21 CALL                             R13 1 1
       22 JUMPIFNOTEQKS                    R13 K7 ["EnumItem"] ; [+4]
       24 GETTABLEKS                       R12 R2 K8 ["Name"]
       26 JUMP                             ; [+10]
       27 FASTCALL1                        TYPE R2 ; [+3]
       28 MOVE                             R14 R2
       29 GETIMPORT                        R13 K10 [type]
       31 CALL                             R13 1 1
       32 JUMPIFNOTEQKS                    R13 K11 ["string"] ; [+3]
       34 MOVE                             R12 R2
       35 JUMP                             ; [+1]
       36 LOADNIL                          R12
       37 ORK                              R11 R12 K4 ["unknown"]
       38 MOVE                             R12 R3
       39 NAMECALL                         R9 R9 K2 ["format"]
       41 CALL                             R9 3 1
       42 CONCAT                           R7 R8 R9
       43 CALL                             R6 1 0
       44 JUMPIFNOT                        R0 ; [+3]
       45 LENGTH                           R6 R1
       46 JUMPIFNOTEQKN                    R6 K12 [0] ; [+5]
       48 GETUPVAL                         R6 1
       49 LOADK                            R7 K13 ["publish: skipped, no AssetAccessController or no asset ids"]
       50 CALL                             R6 1 0
       51 RETURN                           R5 1
       52 NEWTABLE                         R6 0 0
       54 GETUPVAL                         R7 2
       55 MOVE                             R8 R1
       56 MOVE                             R9 R4
       57 CALL                             R7 2 1
       58 MOVE                             R8 R1
       59 LOADNIL                          R9
       60 LOADNIL                          R10
       61 FORGPREP                         R8
       62 GETTABLE                         R13 R7 R12
       63 JUMPIFEQKNIL                     R13 ; [+7]
       65 GETUPVAL                         R14 3
       66 MOVE                             R15 R13
       67 MOVE                             R16 R2
       68 MOVE                             R17 R3
       69 CALL                             R14 3 1
       70 JUMPIF                           R14 ; [+7]
       71 FASTCALL2                        TABLE_INSERT R6 R12 ; [+5]
       73 MOVE                             R15 R6
       74 MOVE                             R16 R12
       75 GETIMPORT                        R14 K16 [table.insert]
       77 CALL                             R14 2 0
       78 FORGLOOP                         R8 2 ; [-17]
       80 GETUPVAL                         R8 1
       81 LOADK                            R12 K17 ["publish: %* of %* asset(s) need publish state, "]
       82 LENGTH                           R14 R6
       83 LENGTH                           R15 R1
       84 NAMECALL                         R12 R12 K2 ["format"]
       86 CALL                             R12 3 1
       87 MOVE                             R10 R12
       88 LOADK                            R11 K18 ["%* already known to be same account"]
       89 LENGTH                           R14 R1
       90 LENGTH                           R15 R6
       91 SUB                              R13 R14 R15
       92 NAMECALL                         R11 R11 K2 ["format"]
       94 CALL                             R11 2 1
       95 CONCAT                           R9 R10 R11
       96 CALL                             R8 1 0
       97 LENGTH                           R8 R6
       98 JUMPIFNOTEQKN                    R8 K12 [0] ; [+5]
      100 GETUPVAL                         R8 1
      101 LOADK                            R9 K19 ["publish: nothing to do, every asset is owned by this experience's account"]
      102 CALL                             R8 1 0
      103 RETURN                           R5 1
      104 GETUPVAL                         R8 4
      105 CALL                             R8 0 1
      106 JUMPIFNOT                        R8 ; [+4]
      107 GETIMPORT                        R9 K22 [os.clock]
      109 CALL                             R9 0 1
      110 JUMP                             ; [+1]
      111 LOADN                            R9 0
      112 LOADK                            R10 K23 ["Ok"]
      113 LOADN                            R13 1
      114 LENGTH                           R11 R6
      115 LOADN                            R12 50
      116 FORNPREP                         R11
      117 GETIMPORT                        R14 K25 [table.move]
      119 MOVE                             R15 R6
      120 MOVE                             R16 R13
      121 ADDK                             R19 R13 K27 [50]
      122 SUBK                             R18 R19 K26 [1]
      123 LENGTH                           R19 R6
      124 FASTCALL2                        MATH_MIN R18 R19 ; [+3]
      126 GETIMPORT                        R17 K30 [math.min]
      128 CALL                             R17 2 1
      129 LOADN                            R18 1
      130 NEWTABLE                         R19 0 0
      132 CALL                             R14 5 1
      133 GETUPVAL                         R15 1
      134 LOADK                            R16 K31 ["publish: publishing drafts among %* asset(s), waiting for each to settle"]
      135 LENGTH                           R18 R14
      136 NAMECALL                         R16 R16 K2 ["format"]
      138 CALL                             R16 2 1
      139 CALL                             R15 1 0
      140 GETIMPORT                        R15 K33 [pcall]
      142 NEWCLOSURE                       R16 P0
      143 CAPTURE                          VAL R0
      144 CAPTURE                          VAL R14
      145 CALL                             R15 1 2
      146 JUMPIFNOT                        R15 ; [+7]
      147 FASTCALL1                        TYPE R16 ; [+3]
      148 MOVE                             R18 R16
      149 GETIMPORT                        R17 K10 [type]
      151 CALL                             R17 1 1
      152 JUMPIFEQKS                       R17 K14 ["table"] ; [+68]
      154 LOADB                            R17 0
      155 FASTCALL1                        TYPE R16 ; [+3]
      156 MOVE                             R19 R16
      157 GETIMPORT                        R18 K10 [type]
      159 CALL                             R18 1 1
      160 JUMPIFNOTEQKS                    R18 K11 ["string"] ; [+12]
      162 GETIMPORT                        R18 K35 [string.find]
      164 MOVE                             R19 R16
      165 LOADK                            R20 K36 ["not available for this component"]
      166 LOADN                            R21 1
      167 LOADB                            R22 1
      168 CALL                             R18 4 1
      169 JUMPIFNOTEQKNIL                  R18 ; [+2]
      171 LOADB                            R17 0 +1
      172 LOADB                            R17 1
      173 JUMPIFNOT                        R17 ; [+36]
      174 JUMPIFNOT                        R8 ; [+31]
      175 GETIMPORT                        R18 K22 [os.clock]
      177 CALL                             R18 0 1
      178 SUB                              R17 R18 R9
      179 LENGTH                           R18 R6
      180 GETIMPORT                        R20 K38 [next]
      182 MOVE                             R21 R5
      183 CALL                             R20 1 1
      184 JUMPIFNOTEQKNIL                  R20 ; [+2]
      186 LOADB                            R19 0 +1
      187 LOADB                            R19 1
      188 GETIMPORT                        R20 K33 [pcall]
      190 LOADK                            R22 K39 ["Unavailable"]
      191 NEWCLOSURE                       R21 P1
      192 CAPTURE                          UPVAL U5
      193 CAPTURE                          VAL R17
      194 CAPTURE                          VAL R22
      195 CAPTURE                          VAL R19
      196 CAPTURE                          VAL R18
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
      265 MOVE                             R14 R10
      266 LOADN                            R16 0
      267 JUMPIFLT                         R16 R11 ; [+2]
      269 LOADB                            R15 0 +1
      270 LOADB                            R15 1
      271 GETIMPORT                        R16 K33 [pcall]
      273 NEWCLOSURE                       R17 P1
      274 CAPTURE                          UPVAL U5
      275 CAPTURE                          VAL R12
      276 CAPTURE                          VAL R14
      277 CAPTURE                          VAL R15
      278 CAPTURE                          VAL R13
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
