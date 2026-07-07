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
       38 LOADK                            R4 K8 ["%*: %*"]
       39 MOVE                             R6 R1
       40 MOVE                             R7 R2
       41 NAMECALL                         R4 R4 K9 ["format"]
       43 CALL                             R4 3 1
       44 MOVE                             R3 R4
       45 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["MaterialGenerationServiceApi"]
        3 GETTABLEKS                       R0 R0 K1 ["MaterialGeneration"]
        5 GETTABLEKS                       R0 R0 K2 ["postGetUploadedMaterialAsync"]
        7 DUPTABLE                         R1 K4 [{"operationId"}]
        8 GETUPVAL                         R2 1
        9 SETTABLEKS                       R2 R1 K3 ["operationId"]
       11 CALL                             R0 1 -1
       12 RETURN                           R0 -1

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
        7 DUPTABLE                         R1 K5 [{"operationId", "sampleIds"}]
        8 GETUPVAL                         R2 1
        9 SETTABLEKS                       R2 R1 K3 ["operationId"]
       11 GETUPVAL                         R2 2
       12 SETTABLEKS                       R2 R1 K4 ["sampleIds"]
       14 CALL                             R0 1 -1
       15 RETURN                           R0 -1

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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["parseResponseModel"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 JUMPIF                           R2 ; [+1]
        7 RETURN                           R0 0
        8 GETTABLEKS                       R3 R2 K1 ["operationId"]
       10 JUMPIF                           R3 ; [+1]
       11 RETURN                           R0 0
       12 GETTABLEKS                       R5 R2 K3 ["status"]
       14 ORK                              R4 R5 K2 ["Pending"]
       15 JUMPIFNOTEQKS                    R4 K2 ["Pending"] ; [+2]
       17 RETURN                           R0 0
       18 DUPTABLE                         R5 K8 [{["success"] = True, ["data"], ["httpDetails"]}]
       19 SETTABLEKS                       R2 R5 K6 ["data"]
       21 DUPTABLE                         R6 K14 [{["statusCode"] = 200, ["statusMessage"] = "OK", ["headers"]}]
       22 NEWTABLE                         R7 0 0
       24 SETTABLEKS                       R7 R6 K13 ["headers"]
       26 SETTABLEKS                       R6 R5 K7 ["httpDetails"]
       28 GETUPVAL                         R6 2
       29 GETTABLE                         R7 R6 R3
       30 JUMPIF                           R7 ; [+1]
       31 RETURN                           R0 0
       32 LOADNIL                          R8
       33 SETTABLE                         R8 R6 R3
       34 GETTABLEKS                       R8 R7 K15 ["hasCompleted"]
       36 JUMPIFNOT                        R8 ; [+1]
       37 RETURN                           R0 0
       38 LOADB                            R8 1
       39 SETTABLEKS                       R8 R7 K15 ["hasCompleted"]
       41 SETTABLEKS                       R5 R7 K16 ["result"]
       43 GETTABLEKS                       R8 R7 K17 ["completed"]
       45 NAMECALL                         R8 R8 K18 ["Fire"]
       47 CALL                             R8 1 0
       48 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 GETTABLEKS                       R3 R0 K0 ["detail"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R3 R0 K0 ["Networking"]
        2 LOADK                            R6 K1 ["StudioMaterialGenerator_MaterialGenerationUploadCompletion"]
        3 NEWCLOSURE                       R7 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R2
        7 NAMECALL                         R4 R3 K2 ["OnHostEvent"]
        9 CALL                             R4 3 1
       10 GETTABLEKS                       R5 R0 K3 ["NotificationManager"]
       12 JUMPIFNOT                        R5 ; [+4]
       13 NAMECALL                         R6 R3 K4 ["IsGuest"]
       15 CALL                             R6 1 1
       16 JUMPIF                           R6 ; [+1]
       17 RETURN                           R0 0
       18 MOVE                             R7 R1
       19 GETTABLEKS                       R8 R5 K5 ["listen"]
       21 LOADK                            R9 K6 ["MaterialGenerationUploadCompletion"]
       22 NEWCLOSURE                       R10 P1
       23 CAPTURE                          VAL R4
       24 CALL                             R8 2 -1
       25 FASTCALL                         TABLE_INSERT ; [+2]
       26 GETIMPORT                        R6 K9 [table.insert]
       28 CALL                             R6 -1 0
       29 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R2 3 -1
        5 RETURN                           R2 -1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 GETUPVAL                         R6 2
        5 CALL                             R2 4 -1
        6 RETURN                           R2 -1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantNotificationManager"]
        3 JUMPIFNOT                        R0 ; [+9]
        4 GETUPVAL                         R0 1
        5 LOADNIL                          R1
        6 LOADNIL                          R2
        7 FORGPREP                         R0
        8 NAMECALL                         R5 R4 K1 ["Disconnect"]
       10 CALL                             R5 1 0
       11 FORGLOOP                         R0 2 ; [-4]
       13 GETUPVAL                         R0 2
       14 LOADNIL                          R1
       15 LOADNIL                          R2
       16 FORGPREP                         R0
       17 GETUPVAL                         R5 2
       18 GETTABLE                         R6 R5 R3
       19 JUMPIF                           R6 ; [+1]
       20 JUMP                             ; [+17]
       21 LOADNIL                          R7
       22 SETTABLE                         R7 R5 R3
       23 GETTABLEKS                       R7 R6 K2 ["hasCompleted"]
       25 JUMPIFNOT                        R7 ; [+1]
       26 JUMP                             ; [+11]
       27 LOADB                            R7 1
       28 SETTABLEKS                       R7 R6 K2 ["hasCompleted"]
       30 LOADNIL                          R7
       31 SETTABLEKS                       R7 R6 K3 ["result"]
       33 GETTABLEKS                       R7 R6 K4 ["completed"]
       35 NAMECALL                         R7 R7 K5 ["Fire"]
       37 CALL                             R7 1 0
       38 FORGLOOP                         R0 2 ; [-22]
       40 GETIMPORT                        R0 K8 [table.clear]
       42 GETUPVAL                         R1 2
       43 CALL                             R0 1 0
       44 RETURN                           R0 0

PROTO_14:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 DUPTABLE                         R2 K5 [{"MaterialGenerationService", "MaterialGenerationServiceApi", "NotificationManager", "Networking", "Telemetry"}]
        5 GETTABLEKS                       R3 R1 K0 ["MaterialGenerationService"]
        7 JUMPIF                           R3 ; [+1]
        8 GETUPVAL                         R3 0
        9 SETTABLEKS                       R3 R2 K0 ["MaterialGenerationService"]
       11 GETTABLEKS                       R3 R1 K1 ["MaterialGenerationServiceApi"]
       13 JUMPIF                           R3 ; [+1]
       14 GETUPVAL                         R3 1
       15 SETTABLEKS                       R3 R2 K1 ["MaterialGenerationServiceApi"]
       17 GETTABLEKS                       R4 R1 K2 ["NotificationManager"]
       19 ORK                              R3 R4 K6 []
       20 SETTABLEKS                       R3 R2 K2 ["NotificationManager"]
       22 GETTABLEKS                       R3 R1 K3 ["Networking"]
       24 JUMPIF                           R3 ; [+4]
       25 GETUPVAL                         R3 2
       26 GETTABLEKS                       R3 R3 K7 ["get"]
       28 CALL                             R3 0 1
       29 SETTABLEKS                       R3 R2 K3 ["Networking"]
       31 GETTABLEKS                       R3 R1 K4 ["Telemetry"]
       33 JUMPIF                           R3 ; [+4]
       34 GETUPVAL                         R3 3
       35 GETTABLEKS                       R3 R3 K8 ["makeStudioTelemetryEvents"]
       37 CALL                             R3 0 1
       38 SETTABLEKS                       R3 R2 K4 ["Telemetry"]
       40 NEWTABLE                         R3 0 0
       42 NEWTABLE                         R4 0 0
       44 GETUPVAL                         R5 4
       45 GETTABLEKS                       R5 R5 K9 ["FFlagAssistantNotificationManager"]
       47 JUMPIFNOT                        R5 ; [+5]
       48 GETUPVAL                         R5 5
       49 MOVE                             R6 R2
       50 MOVE                             R7 R3
       51 MOVE                             R8 R4
       52 CALL                             R5 3 0
       53 DUPTABLE                         R5 K13 [{"generateMaterialVariantsAsync", "uploadMaterialsAsync", "destroy"}]
       54 NEWCLOSURE                       R6 P0
       55 CAPTURE                          UPVAL U6
       56 CAPTURE                          VAL R2
       57 SETTABLEKS                       R6 R5 K10 ["generateMaterialVariantsAsync"]
       59 NEWCLOSURE                       R6 P1
       60 CAPTURE                          UPVAL U7
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R4
       63 SETTABLEKS                       R6 R5 K11 ["uploadMaterialsAsync"]
       65 NEWCLOSURE                       R6 P2
       66 CAPTURE                          UPVAL U4
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R4
       69 SETTABLEKS                       R6 R5 K12 ["destroy"]
       71 RETURN                           R5 1

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
       33 GETTABLEKS                       R6 R0 K15 ["Src"]
       35 GETTABLEKS                       R6 R6 K16 ["Generated"]
       37 GETTABLEKS                       R6 R6 K17 ["OpenAPI"]
       39 GETTABLEKS                       R6 R6 K9 ["MaterialGenerationService"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K11 [require]
       44 GETTABLEKS                       R7 R0 K15 ["Src"]
       46 GETTABLEKS                       R7 R7 K18 ["Util"]
       48 GETTABLEKS                       R7 R7 K19 ["NotificationManagerStore"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K11 [require]
       53 GETTABLEKS                       R8 R0 K12 ["Packages"]
       55 GETTABLEKS                       R8 R8 K20 ["Signal"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K11 [require]
       60 GETTABLEKS                       R9 R0 K15 ["Src"]
       62 GETTABLEKS                       R9 R9 K18 ["Util"]
       64 GETTABLEKS                       R9 R9 K21 ["StudioEndpointUtil"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K11 [require]
       69 GETTABLEKS                       R10 R0 K15 ["Src"]
       71 GETTABLEKS                       R10 R10 K22 ["Host"]
       73 GETTABLEKS                       R10 R10 K23 ["Resources"]
       75 GETTABLEKS                       R10 R10 K24 ["StudioEventLogger"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K11 [require]
       80 GETTABLEKS                       R11 R0 K15 ["Src"]
       82 GETTABLEKS                       R11 R11 K18 ["Util"]
       84 GETTABLEKS                       R11 R11 K25 ["StudioNetworking"]
       86 CALL                             R10 1 1
       87 GETIMPORT                        R11 K11 [require]
       89 GETTABLEKS                       R12 R0 K15 ["Src"]
       91 GETTABLEKS                       R12 R12 K16 ["Generated"]
       93 GETTABLEKS                       R12 R12 K17 ["OpenAPI"]
       95 GETTABLEKS                       R12 R12 K9 ["MaterialGenerationService"]
       97 GETTABLEKS                       R12 R12 K26 ["Models"]
       99 GETTABLEKS                       R12 R12 K27 ["GetUploadMaterialAsyncResponse"]
      101 CALL                             R11 1 1
      102 GETIMPORT                        R12 K11 [require]
      104 GETTABLEKS                       R13 R0 K15 ["Src"]
      106 GETTABLEKS                       R13 R13 K28 ["Flags"]
      108 CALL                             R12 1 1
      109 DUPCLOSURE                       R13 K29 [PROTO_0]
      110 DUPCLOSURE                       R14 K30 [PROTO_1]
      111 DUPCLOSURE                       R15 K31 [PROTO_2]
      112 DUPCLOSURE                       R16 K32 [PROTO_3]
      113 DUPCLOSURE                       R17 K33 [PROTO_5]
      114 CAPTURE                          VAL R12
      115 CAPTURE                          VAL R8
      116 DUPCLOSURE                       R18 K34 [PROTO_7]
      117 CAPTURE                          VAL R8
      118 CAPTURE                          VAL R12
      119 CAPTURE                          VAL R7
      120 CAPTURE                          VAL R17
      121 CAPTURE                          VAL R15
      122 DUPCLOSURE                       R19 K35 [PROTO_10]
      123 CAPTURE                          VAL R8
      124 CAPTURE                          VAL R11
      125 DUPCLOSURE                       R20 K36 [PROTO_14]
      126 CAPTURE                          VAL R2
      127 CAPTURE                          VAL R5
      128 CAPTURE                          VAL R10
      129 CAPTURE                          VAL R9
      130 CAPTURE                          VAL R12
      131 CAPTURE                          VAL R19
      132 CAPTURE                          VAL R13
      133 CAPTURE                          VAL R18
      134 DUPTABLE                         R21 K38 [{"create"}]
      135 SETTABLEKS                       R20 R21 K37 ["create"]
      137 RETURN                           R21 1
