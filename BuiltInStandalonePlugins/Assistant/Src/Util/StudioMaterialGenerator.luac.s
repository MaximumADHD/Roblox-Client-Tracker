PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["MaterialGenerationService"]
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 NAMECALL                         R3 R3 K1 ["GenerateMaterialVariantsAsync"]
        6 CALL                             R3 3 -1
        7 RETURN                           R3 -1

PROTO_1:
        0 GETTABLE                         R3 R0 R1
        1 JUMPIF                           R3 ; [+1]
        2 RETURN                           R0 0
        3 LOADNIL                          R4
        4 SETTABLE                         R4 R0 R1
        5 GETTABLEKS                       R4 R3 K0 ["hasCompleted"]
        7 JUMPIFNOT                        R4 ; [+1]
        8 RETURN                           R0 0
        9 LOADB                            R4 1
       10 SETTABLEKS                       R4 R3 K0 ["hasCompleted"]
       12 SETTABLEKS                       R2 R3 K1 ["result"]
       14 GETTABLEKS                       R4 R3 K2 ["completed"]
       16 NAMECALL                         R4 R4 K3 ["Fire"]
       18 CALL                             R4 1 0
       19 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["materials"]
        2 JUMPIF                           R1 ; [+5]
        3 GETIMPORT                        R1 K2 [error]
        5 LOADK                            R2 K3 ["getUploadedMaterialVariants: no materials found"]
        6 LOADN                            R3 0
        7 CALL                             R1 2 0
        8 NEWTABLE                         R1 0 0
       10 GETTABLEKS                       R2 R0 K0 ["materials"]
       12 LOADNIL                          R3
       13 LOADNIL                          R4
       14 FORGPREP                         R2
       15 GETTABLEKS                       R7 R6 K4 ["colorMapUrl"]
       17 GETTABLEKS                       R8 R6 K5 ["roughnessMapUrl"]
       19 GETTABLEKS                       R9 R6 K6 ["normalMapUrl"]
       21 GETTABLEKS                       R10 R6 K7 ["metalnessMapUrl"]
       23 JUMPIF                           R7 ; [+3]
       24 JUMPIF                           R8 ; [+2]
       25 JUMPIF                           R9 ; [+1]
       26 JUMPIFNOT                        R10 ; [+23]
       27 GETIMPORT                        R11 K10 [Instance.new]
       29 LOADK                            R12 K11 ["MaterialVariant"]
       30 CALL                             R11 1 1
       31 JUMPIFNOT                        R7 ; [+2]
       32 SETTABLEKS                       R7 R11 K12 ["ColorMap"]
       34 JUMPIFNOT                        R8 ; [+2]
       35 SETTABLEKS                       R8 R11 K13 ["RoughnessMap"]
       37 JUMPIFNOT                        R9 ; [+2]
       38 SETTABLEKS                       R9 R11 K14 ["NormalMap"]
       40 JUMPIFNOT                        R10 ; [+2]
       41 SETTABLEKS                       R10 R11 K15 ["MetalnessMap"]
       43 FASTCALL2                        TABLE_INSERT R1 R11 ; [+5]
       45 MOVE                             R13 R1
       46 MOVE                             R14 R11
       47 GETIMPORT                        R12 K18 [table.insert]
       49 CALL                             R12 2 0
       50 FORGLOOP                         R2 2 ; [-36]
       52 RETURN                           R1 1

PROTO_3:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+12]
        7 GETTABLEKS                       R3 R0 K3 ["errorCode"]
        9 FASTCALL1                        TYPEOF R3 ; [+2]
       10 GETIMPORT                        R2 K1 [typeof]
       12 CALL                             R2 1 1
       13 JUMPIFNOTEQKS                    R2 K4 ["string"] ; [+4]
       15 GETTABLEKS                       R1 R0 K3 ["errorCode"]
       17 JUMP                             ; [+1]
       18 LOADK                            R1 K5 ["UnknownErrorCode"]
       19 FASTCALL1                        TYPEOF R0 ; [+3]
       20 MOVE                             R4 R0
       21 GETIMPORT                        R3 K1 [typeof]
       23 CALL                             R3 1 1
       24 JUMPIFNOTEQKS                    R3 K2 ["table"] ; [+12]
       26 GETTABLEKS                       R4 R0 K6 ["message"]
       28 FASTCALL1                        TYPEOF R4 ; [+2]
       29 GETIMPORT                        R3 K1 [typeof]
       31 CALL                             R3 1 1
       32 JUMPIFNOTEQKS                    R3 K4 ["string"] ; [+4]
       34 GETTABLEKS                       R2 R0 K6 ["message"]
       36 JUMP                             ; [+1]
       37 LOADK                            R2 K7 ["Unknown error"]
       38 LOADK                            R3 K8 ["%*: %*"]
       39 MOVE                             R5 R1
       40 MOVE                             R6 R2
       41 NAMECALL                         R3 R3 K9 ["format"]
       43 CALL                             R3 3 1
       44 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["MaterialGenerationServiceApi"]
        3 GETTABLEKS                       R0 R0 K1 ["MaterialGeneration"]
        5 GETTABLEKS                       R0 R0 K2 ["postGetUploadedMaterialAsync"]
        7 DUPTABLE                         R1 K4 [{"body"}]
        8 DUPTABLE                         R2 K6 [{"operationId"}]
        9 GETUPVAL                         R3 1
       10 SETTABLEKS                       R3 R2 K5 ["operationId"]
       12 SETTABLEKS                       R2 R1 K3 ["body"]
       14 CALL                             R0 1 -1
       15 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["FIntMaterialGenerationServiceRePollDelaySeconds"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K1 ["FIntMaterialGenerationServicePollLimit"]
        6 LOADN                            R7 1
        7 MOVE                             R5 R4
        8 LOADN                            R6 1
        9 FORNPREP                         R5
       10 GETTABLE                         R8 R2 R1
       11 JUMPIF                           R8 ; [+1]
       12 RETURN                           R0 0
       13 GETUPVAL                         R8 1
       14 GETTABLEKS                       R8 R8 K2 ["callWithOptions"]
       16 NEWCLOSURE                       R9 P0
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R1
       19 DUPTABLE                         R10 K4 [{"timeoutMs"}]
       20 GETUPVAL                         R11 0
       21 GETTABLEKS                       R11 R11 K5 ["FIntMaterialGenerationServiceUploadHttpTimeoutMs"]
       23 SETTABLEKS                       R11 R10 K3 ["timeoutMs"]
       25 CALL                             R8 2 1
       26 GETTABLE                         R9 R2 R1
       27 JUMPIF                           R9 ; [+1]
       28 RETURN                           R0 0
       29 GETTABLEKS                       R10 R8 K6 ["success"]
       31 JUMPIF                           R10 ; [+20]
       32 GETTABLE                         R10 R2 R1
       33 JUMPIF                           R10 ; [+1]
       34 RETURN                           R0 0
       35 LOADNIL                          R11
       36 SETTABLE                         R11 R2 R1
       37 GETTABLEKS                       R11 R10 K7 ["hasCompleted"]
       39 JUMPIFNOT                        R11 ; [+1]
       40 RETURN                           R0 0
       41 LOADB                            R11 1
       42 SETTABLEKS                       R11 R10 K7 ["hasCompleted"]
       44 SETTABLEKS                       R8 R10 K8 ["result"]
       46 GETTABLEKS                       R11 R10 K9 ["completed"]
       48 NAMECALL                         R11 R11 K10 ["Fire"]
       50 CALL                             R11 1 0
       51 RETURN                           R0 0
       52 GETTABLEKS                       R11 R8 K12 ["data"]
       54 GETTABLEKS                       R11 R11 K13 ["status"]
       56 ORK                              R10 R11 K11 ["Pending"]
       57 JUMPIFEQKS                       R10 K11 ["Pending"] ; [+21]
       59 GETTABLE                         R11 R2 R1
       60 JUMPIF                           R11 ; [+1]
       61 RETURN                           R0 0
       62 LOADNIL                          R12
       63 SETTABLE                         R12 R2 R1
       64 GETTABLEKS                       R12 R11 K7 ["hasCompleted"]
       66 JUMPIFNOT                        R12 ; [+1]
       67 RETURN                           R0 0
       68 LOADB                            R12 1
       69 SETTABLEKS                       R12 R11 K7 ["hasCompleted"]
       71 SETTABLEKS                       R8 R11 K8 ["result"]
       73 GETTABLEKS                       R12 R11 K9 ["completed"]
       75 NAMECALL                         R12 R12 K10 ["Fire"]
       77 CALL                             R12 1 0
       78 RETURN                           R0 0
       79 GETIMPORT                        R11 K16 [task.wait]
       81 MOVE                             R12 R3
       82 CALL                             R11 1 0
       83 FORNLOOP                         R5
       84 GETTABLE                         R5 R2 R1
       85 JUMPIF                           R5 ; [+1]
       86 RETURN                           R0 0
       87 LOADNIL                          R6
       88 SETTABLE                         R6 R2 R1
       89 GETTABLEKS                       R6 R5 K7 ["hasCompleted"]
       91 JUMPIFNOT                        R6 ; [+1]
       92 RETURN                           R0 0
       93 LOADB                            R6 1
       94 SETTABLEKS                       R6 R5 K7 ["hasCompleted"]
       96 LOADNIL                          R6
       97 SETTABLEKS                       R6 R5 K8 ["result"]
       99 GETTABLEKS                       R6 R5 K9 ["completed"]
      101 NAMECALL                         R6 R6 K10 ["Fire"]
      103 CALL                             R6 1 0
      104 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["MaterialGenerationServiceApi"]
        3 GETTABLEKS                       R0 R0 K1 ["MaterialGeneration"]
        5 GETTABLEKS                       R0 R0 K2 ["postUploadMaterialV2Async"]
        7 DUPTABLE                         R1 K4 [{"body"}]
        8 DUPTABLE                         R2 K7 [{"operationId", "sampleIds"}]
        9 GETUPVAL                         R3 1
       10 SETTABLEKS                       R3 R2 K5 ["operationId"]
       12 GETUPVAL                         R3 2
       13 SETTABLEKS                       R3 R2 K6 ["sampleIds"]
       15 SETTABLEKS                       R2 R1 K3 ["body"]
       17 CALL                             R0 1 -1
       18 RETURN                           R0 -1

PROTO_7:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R5 R1
        2 GETIMPORT                        R4 K1 [typeof]
        4 CALL                             R4 1 1
        5 JUMPIFNOTEQKS                    R4 K2 ["string"] ; [+3]
        7 JUMPIFNOTEQKS                    R1 K3 [""] ; [+6]
        9 GETIMPORT                        R4 K5 [error]
       11 LOADK                            R5 K6 ["operationId is empty"]
       12 LOADN                            R6 0
       13 CALL                             R4 2 0
       14 FASTCALL1                        TYPEOF R2 ; [+3]
       15 MOVE                             R5 R2
       16 GETIMPORT                        R4 K1 [typeof]
       18 CALL                             R4 1 1
       19 JUMPIFNOTEQKS                    R4 K7 ["table"] ; [+4]
       21 LENGTH                           R4 R2
       22 JUMPIFNOTEQKN                    R4 K8 [0] ; [+6]
       24 GETIMPORT                        R4 K5 [error]
       26 LOADK                            R5 K9 ["sampleIds is empty"]
       27 LOADN                            R6 0
       28 CALL                             R4 2 0
       29 GETUPVAL                         R4 0
       30 GETTABLEKS                       R4 R4 K10 ["callWithOptions"]
       32 NEWCLOSURE                       R5 P0
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R2
       36 DUPTABLE                         R6 K12 [{"timeoutMs"}]
       37 GETUPVAL                         R7 1
       38 GETTABLEKS                       R7 R7 K13 ["FIntMaterialGenerationServiceUploadHttpTimeoutMs"]
       40 SETTABLEKS                       R7 R6 K11 ["timeoutMs"]
       42 CALL                             R4 2 1
       43 GETTABLEKS                       R5 R4 K14 ["success"]
       45 JUMPIF                           R5 ; [+6]
       46 GETUPVAL                         R5 0
       47 GETTABLEKS                       R5 R5 K15 ["throwError"]
       49 MOVE                             R6 R4
       50 CALL                             R5 1 -1
       51 RETURN                           R5 -1
       52 GETTABLEKS                       R5 R4 K16 ["data"]
       54 GETTABLEKS                       R5 R5 K4 ["error"]
       56 JUMPIFNOT                        R5 ; [+53]
       57 GETIMPORT                        R5 K5 [error]
       59 GETTABLEKS                       R7 R4 K16 ["data"]
       61 GETTABLEKS                       R7 R7 K4 ["error"]
       63 FASTCALL1                        TYPEOF R7 ; [+3]
       64 MOVE                             R10 R7
       65 GETIMPORT                        R9 K1 [typeof]
       67 CALL                             R9 1 1
       68 JUMPIFNOTEQKS                    R9 K7 ["table"] ; [+12]
       70 GETTABLEKS                       R10 R7 K17 ["errorCode"]
       72 FASTCALL1                        TYPEOF R10 ; [+2]
       73 GETIMPORT                        R9 K1 [typeof]
       75 CALL                             R9 1 1
       76 JUMPIFNOTEQKS                    R9 K2 ["string"] ; [+4]
       78 GETTABLEKS                       R8 R7 K17 ["errorCode"]
       80 JUMP                             ; [+1]
       81 LOADK                            R8 K18 ["UnknownErrorCode"]
       82 FASTCALL1                        TYPEOF R7 ; [+3]
       83 MOVE                             R11 R7
       84 GETIMPORT                        R10 K1 [typeof]
       86 CALL                             R10 1 1
       87 JUMPIFNOTEQKS                    R10 K7 ["table"] ; [+12]
       89 GETTABLEKS                       R11 R7 K19 ["message"]
       91 FASTCALL1                        TYPEOF R11 ; [+2]
       92 GETIMPORT                        R10 K1 [typeof]
       94 CALL                             R10 1 1
       95 JUMPIFNOTEQKS                    R10 K2 ["string"] ; [+4]
       97 GETTABLEKS                       R9 R7 K19 ["message"]
       99 JUMP                             ; [+1]
      100 LOADK                            R9 K20 ["Unknown error"]
      101 LOADK                            R10 K21 ["%*: %*"]
      102 MOVE                             R12 R8
      103 MOVE                             R13 R9
      104 NAMECALL                         R10 R10 K22 ["format"]
      106 CALL                             R10 3 1
      107 MOVE                             R6 R10
      108 LOADN                            R7 0
      109 CALL                             R5 2 0
      110 GETTABLEKS                       R5 R4 K16 ["data"]
      112 GETTABLEKS                       R5 R5 K23 ["operationId"]
      114 JUMPIF                           R5 ; [+5]
      115 GETIMPORT                        R6 K5 [error]
      117 LOADK                            R7 K6 ["operationId is empty"]
      118 LOADN                            R8 0
      119 CALL                             R6 2 0
      120 DUPTABLE                         R6 K29 [{["completed"], ["hasCompleted"] = False, ["result"] = }]
      121 GETUPVAL                         R7 2
      122 GETTABLEKS                       R7 R7 K30 ["new"]
      124 CALL                             R7 0 1
      125 SETTABLEKS                       R7 R6 K24 ["completed"]
      127 SETTABLE                         R6 R3 R5
      128 GETIMPORT                        R7 K33 [task.spawn]
      130 GETUPVAL                         R8 3
      131 MOVE                             R9 R0
      132 MOVE                             R10 R5
      133 MOVE                             R11 R3
      134 CALL                             R7 4 0
      135 GETTABLEKS                       R7 R6 K25 ["hasCompleted"]
      137 JUMPIF                           R7 ; [+5]
      138 GETTABLEKS                       R7 R6 K24 ["completed"]
      140 NAMECALL                         R7 R7 K34 ["Wait"]
      142 CALL                             R7 1 0
      143 GETTABLEKS                       R7 R6 K27 ["result"]
      145 JUMPIF                           R7 ; [+5]
      146 GETIMPORT                        R8 K5 [error]
      148 LOADK                            R9 K35 ["Poll uploaded materials failed"]
      149 LOADN                            R10 0
      150 CALL                             R8 2 0
      151 GETTABLEKS                       R8 R7 K14 ["success"]
      153 JUMPIF                           R8 ; [+6]
      154 GETUPVAL                         R8 0
      155 GETTABLEKS                       R8 R8 K15 ["throwError"]
      157 MOVE                             R9 R7
      158 CALL                             R8 1 -1
      159 RETURN                           R8 -1
      160 GETTABLEKS                       R8 R7 K16 ["data"]
      162 GETTABLEKS                       R8 R8 K4 ["error"]
      164 JUMPIFNOT                        R8 ; [+53]
      165 GETIMPORT                        R8 K5 [error]
      167 GETTABLEKS                       R10 R7 K16 ["data"]
      169 GETTABLEKS                       R10 R10 K4 ["error"]
      171 FASTCALL1                        TYPEOF R10 ; [+3]
      172 MOVE                             R13 R10
      173 GETIMPORT                        R12 K1 [typeof]
      175 CALL                             R12 1 1
      176 JUMPIFNOTEQKS                    R12 K7 ["table"] ; [+12]
      178 GETTABLEKS                       R13 R10 K17 ["errorCode"]
      180 FASTCALL1                        TYPEOF R13 ; [+2]
      181 GETIMPORT                        R12 K1 [typeof]
      183 CALL                             R12 1 1
      184 JUMPIFNOTEQKS                    R12 K2 ["string"] ; [+4]
      186 GETTABLEKS                       R11 R10 K17 ["errorCode"]
      188 JUMP                             ; [+1]
      189 LOADK                            R11 K18 ["UnknownErrorCode"]
      190 FASTCALL1                        TYPEOF R10 ; [+3]
      191 MOVE                             R14 R10
      192 GETIMPORT                        R13 K1 [typeof]
      194 CALL                             R13 1 1
      195 JUMPIFNOTEQKS                    R13 K7 ["table"] ; [+12]
      197 GETTABLEKS                       R14 R10 K19 ["message"]
      199 FASTCALL1                        TYPEOF R14 ; [+2]
      200 GETIMPORT                        R13 K1 [typeof]
      202 CALL                             R13 1 1
      203 JUMPIFNOTEQKS                    R13 K2 ["string"] ; [+4]
      205 GETTABLEKS                       R12 R10 K19 ["message"]
      207 JUMP                             ; [+1]
      208 LOADK                            R12 K20 ["Unknown error"]
      209 LOADK                            R13 K21 ["%*: %*"]
      210 MOVE                             R15 R11
      211 MOVE                             R16 R12
      212 NAMECALL                         R13 R13 K22 ["format"]
      214 CALL                             R13 3 1
      215 MOVE                             R9 R13
      216 LOADN                            R10 0
      217 CALL                             R8 2 0
      218 GETTABLEKS                       R8 R7 K16 ["data"]
      220 GETTABLEKS                       R8 R8 K36 ["status"]
      222 JUMPIFNOTEQKS                    R8 K37 ["Failed"] ; [+6]
      224 GETIMPORT                        R8 K5 [error]
      226 LOADK                            R9 K35 ["Poll uploaded materials failed"]
      227 LOADN                            R10 0
      228 CALL                             R8 2 0
      229 GETUPVAL                         R8 1
      230 GETTABLEKS                       R8 R8 K38 ["FFlagMaterialGeneratorCounterEnabled"]
      232 JUMPIFNOT                        R8 ; [+5]
      233 GETTABLEKS                       R8 R0 K39 ["Telemetry"]
      235 GETTABLEKS                       R8 R8 K40 ["logMaterialGeneratorSavedMaterial"]
      237 CALL                             R8 0 0
      238 GETUPVAL                         R8 4
      239 GETTABLEKS                       R9 R7 K16 ["data"]
      241 CALL                             R8 1 1
      242 RETURN                           R8 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["parseResponseModel"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 1
        6 JUMPIF                           R1 ; [+1]
        7 RETURN                           R0 0
        8 GETTABLEKS                       R2 R1 K1 ["operationId"]
       10 JUMPIF                           R2 ; [+1]
       11 RETURN                           R0 0
       12 GETTABLEKS                       R4 R1 K3 ["status"]
       14 ORK                              R3 R4 K2 ["Pending"]
       15 JUMPIFNOTEQKS                    R3 K2 ["Pending"] ; [+2]
       17 RETURN                           R0 0
       18 DUPTABLE                         R4 K8 [{["success"] = True, ["data"], ["httpDetails"]}]
       19 SETTABLEKS                       R1 R4 K6 ["data"]
       21 DUPTABLE                         R5 K14 [{["statusCode"] = 200, ["statusMessage"] = "OK", ["headers"]}]
       22 NEWTABLE                         R6 0 0
       24 SETTABLEKS                       R6 R5 K13 ["headers"]
       26 SETTABLEKS                       R5 R4 K7 ["httpDetails"]
       28 GETUPVAL                         R5 2
       29 GETTABLE                         R6 R5 R2
       30 JUMPIF                           R6 ; [+1]
       31 RETURN                           R0 0
       32 LOADNIL                          R7
       33 SETTABLE                         R7 R5 R2
       34 GETTABLEKS                       R7 R6 K15 ["hasCompleted"]
       36 JUMPIFNOT                        R7 ; [+1]
       37 RETURN                           R0 0
       38 LOADB                            R7 1
       39 SETTABLEKS                       R7 R6 K15 ["hasCompleted"]
       41 SETTABLEKS                       R4 R6 K16 ["result"]
       43 GETTABLEKS                       R7 R6 K17 ["completed"]
       45 NAMECALL                         R7 R7 K18 ["Fire"]
       47 CALL                             R7 1 0
       48 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R1 K0 ["message"]
        3 CALL                             R2 1 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["FOCUSED"]
        4 DUPTABLE                         R4 K2 [{"message"}]
        5 SETTABLEKS                       R0 R4 K1 ["message"]
        7 NAMECALL                         R1 R1 K3 ["Fire"]
        9 CALL                             R1 3 0
       10 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 0
        3 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["detail"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_14:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R2
        4 LOADNIL                          R4
        5 GETUPVAL                         R5 2
        6 GETTABLEKS                       R5 R5 K0 ["FFlagAssistantUseNewDMNetworking"]
        8 JUMPIFNOT                        R5 ; [+39]
        9 GETTABLEKS                       R5 R0 K1 ["Net"]
       11 FASTCALL2K                       ASSERT R5 K2 ; [+5]
       13 MOVE                             R7 R5
       14 LOADK                            R8 K2 ["StudioMaterialGenerator requires the new networking when FFlagAssistantUseNewDMNetworking is on"]
       15 GETIMPORT                        R6 K4 [assert]
       17 CALL                             R6 2 0
       18 GETUPVAL                         R6 3
       19 GETTABLEKS                       R6 R6 K5 ["event"]
       21 MOVE                             R7 R5
       22 LOADK                            R8 K6 ["StudioMaterialGenerator.MaterialGenerationUploadCompletion"]
       23 CALL                             R6 2 1
       24 NAMECALL                         R7 R5 K7 ["GetIdentity"]
       26 CALL                             R7 1 1
       27 GETUPVAL                         R8 4
       28 GETTABLEKS                       R8 R8 K8 ["Identity"]
       30 GETTABLEKS                       R8 R8 K9 ["Standalone"]
       32 JUMPIFEQ                         R7 R8 ; [+11]
       34 MOVE                             R8 R1
       35 NEWCLOSURE                       R11 P1
       36 CAPTURE                          VAL R3
       37 NAMECALL                         R9 R6 K10 ["Connect"]
       39 CALL                             R9 2 -1
       40 FASTCALL                         TABLE_INSERT ; [+2]
       41 GETIMPORT                        R7 K13 [table.insert]
       43 CALL                             R7 -1 0
       44 NEWCLOSURE                       R4 P2
       45 CAPTURE                          VAL R6
       46 CAPTURE                          UPVAL U4
       47 JUMP                             ; [+23]
       48 GETTABLEKS                       R5 R0 K14 ["NetworkingOLD"]
       50 FASTCALL2K                       ASSERT R5 K15 ; [+5]
       52 MOVE                             R7 R5
       53 LOADK                            R8 K15 ["StudioMaterialGenerator requires networking"]
       54 GETIMPORT                        R6 K4 [assert]
       56 CALL                             R6 2 0
       57 LOADK                            R8 K16 ["StudioMaterialGenerator_MaterialGenerationUploadCompletion"]
       58 NEWCLOSURE                       R9 P3
       59 CAPTURE                          VAL R3
       60 NAMECALL                         R6 R5 K17 ["OnHostEvent"]
       62 CALL                             R6 3 1
       63 NEWCLOSURE                       R4 P4
       64 CAPTURE                          VAL R6
       65 NAMECALL                         R7 R5 K18 ["IsGuest"]
       67 CALL                             R7 1 1
       68 JUMPIF                           R7 ; [+2]
       69 CLOSEUPVALS                      R4
       70 RETURN                           R0 0
       71 GETTABLEKS                       R5 R0 K19 ["NotificationManager"]
       73 JUMPIF                           R5 ; [+2]
       74 CLOSEUPVALS                      R4
       75 RETURN                           R0 0
       76 MOVE                             R7 R1
       77 GETTABLEKS                       R8 R5 K20 ["listen"]
       79 LOADK                            R9 K21 ["MaterialGenerationUploadCompletion"]
       80 NEWCLOSURE                       R10 P5
       81 CAPTURE                          REF R4
       82 CALL                             R8 2 -1
       83 FASTCALL                         TABLE_INSERT ; [+2]
       84 GETIMPORT                        R6 K13 [table.insert]
       86 CALL                             R6 -1 0
       87 CLOSEUPVALS                      R4
       88 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R2 3 -1
        5 RETURN                           R2 -1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 GETUPVAL                         R6 2
        5 CALL                             R2 4 -1
        6 RETURN                           R2 -1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 GETUPVAL                         R0 1
       10 LOADNIL                          R1
       11 LOADNIL                          R2
       12 FORGPREP                         R0
       13 GETUPVAL                         R5 1
       14 GETTABLE                         R6 R5 R3
       15 JUMPIF                           R6 ; [+1]
       16 JUMP                             ; [+17]
       17 LOADNIL                          R7
       18 SETTABLE                         R7 R5 R3
       19 GETTABLEKS                       R7 R6 K1 ["hasCompleted"]
       21 JUMPIFNOT                        R7 ; [+1]
       22 JUMP                             ; [+11]
       23 LOADB                            R7 1
       24 SETTABLEKS                       R7 R6 K1 ["hasCompleted"]
       26 LOADNIL                          R7
       27 SETTABLEKS                       R7 R6 K2 ["result"]
       29 GETTABLEKS                       R7 R6 K3 ["completed"]
       31 NAMECALL                         R7 R7 K4 ["Fire"]
       33 CALL                             R7 1 0
       34 FORGLOOP                         R0 2 ; [-22]
       36 GETIMPORT                        R0 K7 [table.clear]
       38 GETUPVAL                         R1 1
       39 CALL                             R0 1 0
       40 RETURN                           R0 0

PROTO_18:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 DUPTABLE                         R2 K6 [{"MaterialGenerationService", "MaterialGenerationServiceApi", "NotificationManager", "NetworkingOLD", "Net", "Telemetry"}]
        5 GETTABLEKS                       R3 R1 K0 ["MaterialGenerationService"]
        7 JUMPIF                           R3 ; [+1]
        8 GETUPVAL                         R3 0
        9 SETTABLEKS                       R3 R2 K0 ["MaterialGenerationService"]
       11 GETTABLEKS                       R3 R1 K1 ["MaterialGenerationServiceApi"]
       13 JUMPIF                           R3 ; [+1]
       14 GETUPVAL                         R3 1
       15 SETTABLEKS                       R3 R2 K1 ["MaterialGenerationServiceApi"]
       17 GETTABLEKS                       R4 R1 K2 ["NotificationManager"]
       19 ORK                              R3 R4 K7 []
       20 SETTABLEKS                       R3 R2 K2 ["NotificationManager"]
       22 GETUPVAL                         R4 2
       23 GETTABLEKS                       R4 R4 K8 ["FFlagAssistantUseNewDMNetworking"]
       25 JUMPIFNOT                        R4 ; [+3]
       26 GETTABLEKS                       R3 R1 K3 ["NetworkingOLD"]
       28 JUMP                             ; [+7]
       29 GETTABLEKS                       R3 R1 K3 ["NetworkingOLD"]
       31 JUMPIF                           R3 ; [+4]
       32 GETUPVAL                         R3 3
       33 GETTABLEKS                       R3 R3 K9 ["get"]
       35 CALL                             R3 0 1
       36 SETTABLEKS                       R3 R2 K3 ["NetworkingOLD"]
       38 GETTABLEKS                       R3 R1 K4 ["Net"]
       40 SETTABLEKS                       R3 R2 K4 ["Net"]
       42 GETTABLEKS                       R3 R1 K5 ["Telemetry"]
       44 JUMPIF                           R3 ; [+4]
       45 GETUPVAL                         R3 4
       46 GETTABLEKS                       R3 R3 K10 ["makeStudioTelemetryEvents"]
       48 CALL                             R3 0 1
       49 SETTABLEKS                       R3 R2 K5 ["Telemetry"]
       51 NEWTABLE                         R3 0 0
       53 NEWTABLE                         R4 0 0
       55 GETUPVAL                         R5 5
       56 MOVE                             R6 R2
       57 MOVE                             R7 R3
       58 MOVE                             R8 R4
       59 CALL                             R5 3 0
       60 DUPTABLE                         R5 K14 [{"generateMaterialVariantsAsync", "uploadMaterialsAsync", "destroy"}]
       61 NEWCLOSURE                       R6 P0
       62 CAPTURE                          UPVAL U6
       63 CAPTURE                          VAL R2
       64 SETTABLEKS                       R6 R5 K11 ["generateMaterialVariantsAsync"]
       66 NEWCLOSURE                       R6 P1
       67 CAPTURE                          UPVAL U7
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R4
       70 SETTABLEKS                       R6 R5 K12 ["uploadMaterialsAsync"]
       72 NEWCLOSURE                       R6 P2
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R4
       75 SETTABLEKS                       R6 R5 K13 ["destroy"]
       77 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [pcall]
        9 GETIMPORT                        R2 K7 [game]
       11 GETTABLEKS                       R2 R2 K8 ["GetService"]
       13 GETIMPORT                        R3 K7 [game]
       15 LOADK                            R4 K9 ["MaterialGenerationService"]
       16 CALL                             R1 3 2
       17 GETIMPORT                        R3 K11 [require]
       19 GETTABLEKS                       R4 R0 K12 ["Packages"]
       21 GETTABLEKS                       R4 R4 K13 ["AssistantUI"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K11 [require]
       26 GETTABLEKS                       R5 R0 K12 ["Packages"]
       28 GETTABLEKS                       R5 R5 K14 ["DMNetworking"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K11 [require]
       33 GETTABLEKS                       R6 R0 K12 ["Packages"]
       35 GETTABLEKS                       R6 R6 K15 ["DMNetworkingOLD"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K11 [require]
       40 GETTABLEKS                       R7 R0 K16 ["Src"]
       42 GETTABLEKS                       R7 R7 K17 ["Util"]
       44 GETTABLEKS                       R7 R7 K18 ["NotificationManagerStore"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K11 [require]
       49 GETTABLEKS                       R8 R0 K12 ["Packages"]
       51 GETTABLEKS                       R8 R8 K19 ["OpenApiMaterialGenerationService"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K11 [require]
       56 GETTABLEKS                       R9 R0 K12 ["Packages"]
       58 GETTABLEKS                       R9 R9 K20 ["Signal"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K11 [require]
       63 GETTABLEKS                       R10 R0 K16 ["Src"]
       65 GETTABLEKS                       R10 R10 K17 ["Util"]
       67 GETTABLEKS                       R10 R10 K21 ["StudioEndpointUtil"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K11 [require]
       72 GETTABLEKS                       R11 R0 K16 ["Src"]
       74 GETTABLEKS                       R11 R11 K22 ["Host"]
       76 GETTABLEKS                       R11 R11 K23 ["Resources"]
       78 GETTABLEKS                       R11 R11 K24 ["StudioEventLogger"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K11 [require]
       83 GETTABLEKS                       R12 R0 K16 ["Src"]
       85 GETTABLEKS                       R12 R12 K17 ["Util"]
       87 GETTABLEKS                       R12 R12 K25 ["StudioNetworkingOLD"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K11 [require]
       92 GETTABLEKS                       R13 R0 K12 ["Packages"]
       94 GETTABLEKS                       R13 R13 K26 ["_Index"]
       96 GETTABLEKS                       R13 R13 K19 ["OpenApiMaterialGenerationService"]
       98 GETTABLEKS                       R13 R13 K19 ["OpenApiMaterialGenerationService"]
      100 GETTABLEKS                       R13 R13 K27 ["Models"]
      102 GETTABLEKS                       R13 R13 K28 ["GetUploadMaterialAsyncResponse"]
      104 CALL                             R12 1 1
      105 GETIMPORT                        R13 K11 [require]
      107 GETTABLEKS                       R14 R0 K16 ["Src"]
      109 GETTABLEKS                       R14 R14 K29 ["Flags"]
      111 CALL                             R13 1 1
      112 GETTABLEKS                       R14 R4 K30 ["Remote"]
      114 DUPCLOSURE                       R15 K31 [PROTO_0]
      115 DUPCLOSURE                       R16 K32 [PROTO_1]
      116 DUPCLOSURE                       R17 K33 [PROTO_2]
      117 DUPCLOSURE                       R18 K34 [PROTO_3]
      118 DUPCLOSURE                       R19 K35 [PROTO_5]
      119 CAPTURE                          VAL R13
      120 CAPTURE                          VAL R9
      121 DUPCLOSURE                       R20 K36 [PROTO_7]
      122 CAPTURE                          VAL R9
      123 CAPTURE                          VAL R13
      124 CAPTURE                          VAL R8
      125 CAPTURE                          VAL R19
      126 CAPTURE                          VAL R17
      127 DUPCLOSURE                       R21 K37 [PROTO_14]
      128 CAPTURE                          VAL R9
      129 CAPTURE                          VAL R12
      130 CAPTURE                          VAL R13
      131 CAPTURE                          VAL R14
      132 CAPTURE                          VAL R4
      133 DUPCLOSURE                       R22 K38 [PROTO_18]
      134 CAPTURE                          VAL R2
      135 CAPTURE                          VAL R7
      136 CAPTURE                          VAL R13
      137 CAPTURE                          VAL R11
      138 CAPTURE                          VAL R10
      139 CAPTURE                          VAL R21
      140 CAPTURE                          VAL R15
      141 CAPTURE                          VAL R20
      142 DUPTABLE                         R23 K40 [{"create"}]
      143 SETTABLEKS                       R22 R23 K39 ["create"]
      145 RETURN                           R23 1
