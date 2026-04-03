PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["MaterialGenerationService"]
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 NAMECALL                         R3 R3 K1 ["GenerateMaterialVariantsAsync"]
        6 CALL                             R3 3 -1
        7 RETURN                           R3 -1

PROTO_1:
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

PROTO_2:
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

PROTO_3:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+9]
        7 GETTABLEKS                       R2 R0 K3 ["kind"]
        9 FASTCALL1                        TYPEOF R2 ; [+2]
       10 GETIMPORT                        R1 K1 [typeof]
       12 CALL                             R1 1 1
       13 JUMPIFEQKS                       R1 K4 ["string"] ; [+3]
       15 LOADK                            R1 K5 ["Operation failed with unknown HTTP error"]
       16 RETURN                           R1 1
       17 GETTABLEKS                       R1 R0 K3 ["kind"]
       19 JUMPIFNOTEQKS                    R1 K6 ["HttpStatusCode"] ; [+11]
       21 LOADK                            R2 K7 ["Operation failed with HTTP error (status=%*, body=%*)"]
       22 GETTABLEKS                       R4 R0 K8 ["statusCode"]
       24 GETTABLEKS                       R5 R0 K9 ["body"]
       26 NAMECALL                         R2 R2 K10 ["format"]
       28 CALL                             R2 3 1
       29 MOVE                             R1 R2
       30 RETURN                           R1 1
       31 GETTABLEKS                       R1 R0 K3 ["kind"]
       33 JUMPIFNOTEQKS                    R1 K11 ["Validation"] ; [+9]
       35 LOADK                            R2 K12 ["Operation failed with validation error (%*)"]
       36 GETTABLEKS                       R4 R0 K13 ["validationError"]
       38 NAMECALL                         R2 R2 K10 ["format"]
       40 CALL                             R2 2 1
       41 MOVE                             R1 R2
       42 RETURN                           R1 1
       43 GETTABLEKS                       R1 R0 K3 ["kind"]
       45 JUMPIFNOTEQKS                    R1 K14 ["Network"] ; [+9]
       47 LOADK                            R2 K15 ["Operation failed with network error (%*)"]
       48 GETTABLEKS                       R4 R0 K16 ["networkError"]
       50 NAMECALL                         R2 R2 K10 ["format"]
       52 CALL                             R2 2 1
       53 MOVE                             R1 R2
       54 RETURN                           R1 1
       55 LOADK                            R1 K5 ["Operation failed with unknown HTTP error"]
       56 RETURN                           R1 1

PROTO_4:
        0 MOVE                             R2 R0
        1 GETUPVAL                         R3 0
        2 CALL                             R3 0 -1
        3 CALL                             R2 -1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETIMPORT                        R3 K2 [task.wait]
        4 DIVK                             R4 R2 K3 [1000]
        5 CALL                             R3 1 0
        6 MOVE                             R3 R1
        7 LOADK                            R4 K4 ["Operation timed out"]
        8 CALL                             R3 1 0
        9 RETURN                           R0 0

PROTO_6:
        0 NEWTABLE                         R1 0 2
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["new"]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R0
        7 CALL                             R2 1 1
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K0 ["new"]
       11 DUPCLOSURE                       R4 K1 [PROTO_5]
       12 CAPTURE                          UPVAL U1
       13 CALL                             R3 1 -1
       14 SETLIST                          R1 R2 -1 [1]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R2 R3 K2 ["race"]
       19 MOVE                             R3 R1
       20 CALL                             R2 1 1
       21 NAMECALL                         R2 R2 K3 ["expect"]
       23 CALL                             R2 1 -1
       24 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["MaterialGenerationServiceApi"]
        3 GETTABLEKS                       R1 R2 K1 ["MaterialGeneration"]
        5 GETTABLEKS                       R0 R1 K2 ["postGetUploadedMaterialAsync"]
        7 DUPTABLE                         R1 K4 [{"operationId"}]
        8 GETUPVAL                         R2 1
        9 SETTABLEKS                       R2 R1 K3 ["operationId"]
       11 CALL                             R0 1 -1
       12 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETUPVAL                         R3 1
        3 CALL                             R3 0 1
        4 LOADN                            R6 1
        5 MOVE                             R4 R3
        6 LOADN                            R5 1
        7 FORNPREP                         R4
        8 GETUPVAL                         R7 2
        9 NEWCLOSURE                       R8 P0
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R1
       12 CALL                             R7 1 1
       13 GETTABLEKS                       R8 R7 K0 ["success"]
       15 JUMPIF                           R8 ; [+1]
       16 RETURN                           R7 1
       17 GETTABLEKS                       R10 R7 K2 ["data"]
       19 GETTABLEKS                       R9 R10 K3 ["status"]
       21 ORK                              R8 R9 K1 ["Pending"]
       22 JUMPIFEQKS                       R8 K1 ["Pending"] ; [+2]
       24 RETURN                           R7 1
       25 GETIMPORT                        R9 K6 [task.wait]
       27 MOVE                             R10 R2
       28 CALL                             R9 1 0
       29 FORNLOOP                         R4
       30 GETIMPORT                        R4 K8 [error]
       32 LOADK                            R5 K9 ["Poll uploaded materials failed"]
       33 LOADN                            R6 0
       34 CALL                             R4 2 0
       35 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["MaterialGenerationServiceApi"]
        3 GETTABLEKS                       R1 R2 K1 ["MaterialGeneration"]
        5 GETTABLEKS                       R0 R1 K2 ["postUploadMaterialV2Async"]
        7 DUPTABLE                         R1 K5 [{"operationId", "sampleIds"}]
        8 GETUPVAL                         R2 1
        9 SETTABLEKS                       R2 R1 K3 ["operationId"]
       11 GETUPVAL                         R2 2
       12 SETTABLEKS                       R2 R1 K4 ["sampleIds"]
       14 CALL                             R0 1 -1
       15 RETURN                           R0 -1

PROTO_10:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R4 R1
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFNOTEQKS                    R3 K2 ["string"] ; [+3]
        7 JUMPIFNOTEQKS                    R1 K3 [""] ; [+6]
        9 GETIMPORT                        R3 K5 [error]
       11 LOADK                            R4 K6 ["operationId is empty"]
       12 LOADN                            R5 0
       13 CALL                             R3 2 0
       14 FASTCALL1                        TYPEOF R2 ; [+3]
       15 MOVE                             R4 R2
       16 GETIMPORT                        R3 K1 [typeof]
       18 CALL                             R3 1 1
       19 JUMPIFNOTEQKS                    R3 K7 ["table"] ; [+4]
       21 LENGTH                           R3 R2
       22 JUMPIFNOTEQKN                    R3 K8 [0] ; [+6]
       24 GETIMPORT                        R3 K5 [error]
       26 LOADK                            R4 K9 ["sampleIds is empty"]
       27 LOADN                            R5 0
       28 CALL                             R3 2 0
       29 GETUPVAL                         R3 0
       30 NEWCLOSURE                       R4 P0
       31 CAPTURE                          VAL R0
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R2
       34 CALL                             R3 1 1
       35 GETTABLEKS                       R4 R3 K10 ["success"]
       37 JUMPIF                           R4 ; [+8]
       38 GETIMPORT                        R4 K5 [error]
       40 GETUPVAL                         R5 1
       41 GETTABLEKS                       R6 R3 K11 ["errorDetails"]
       43 CALL                             R5 1 1
       44 LOADN                            R6 0
       45 CALL                             R4 2 0
       46 GETTABLEKS                       R5 R3 K12 ["data"]
       48 GETTABLEKS                       R4 R5 K4 ["error"]
       50 JUMPIFNOT                        R4 ; [+53]
       51 GETIMPORT                        R4 K5 [error]
       53 GETTABLEKS                       R7 R3 K12 ["data"]
       55 GETTABLEKS                       R6 R7 K4 ["error"]
       57 FASTCALL1                        TYPEOF R6 ; [+3]
       58 MOVE                             R9 R6
       59 GETIMPORT                        R8 K1 [typeof]
       61 CALL                             R8 1 1
       62 JUMPIFNOTEQKS                    R8 K7 ["table"] ; [+12]
       64 GETTABLEKS                       R9 R6 K13 ["errorCode"]
       66 FASTCALL1                        TYPEOF R9 ; [+2]
       67 GETIMPORT                        R8 K1 [typeof]
       69 CALL                             R8 1 1
       70 JUMPIFNOTEQKS                    R8 K2 ["string"] ; [+4]
       72 GETTABLEKS                       R7 R6 K13 ["errorCode"]
       74 JUMP                             ; [+1]
       75 LOADK                            R7 K14 ["UnknownErrorCode"]
       76 FASTCALL1                        TYPEOF R6 ; [+3]
       77 MOVE                             R10 R6
       78 GETIMPORT                        R9 K1 [typeof]
       80 CALL                             R9 1 1
       81 JUMPIFNOTEQKS                    R9 K7 ["table"] ; [+12]
       83 GETTABLEKS                       R10 R6 K15 ["message"]
       85 FASTCALL1                        TYPEOF R10 ; [+2]
       86 GETIMPORT                        R9 K1 [typeof]
       88 CALL                             R9 1 1
       89 JUMPIFNOTEQKS                    R9 K2 ["string"] ; [+4]
       91 GETTABLEKS                       R8 R6 K15 ["message"]
       93 JUMP                             ; [+1]
       94 LOADK                            R8 K16 ["Unknown error"]
       95 LOADK                            R9 K17 ["%*: %*"]
       96 MOVE                             R11 R7
       97 MOVE                             R12 R8
       98 NAMECALL                         R9 R9 K18 ["format"]
      100 CALL                             R9 3 1
      101 MOVE                             R5 R9
      102 LOADN                            R6 0
      103 CALL                             R4 2 0
      104 GETTABLEKS                       R5 R3 K12 ["data"]
      106 GETTABLEKS                       R4 R5 K19 ["operationId"]
      108 JUMPIF                           R4 ; [+5]
      109 GETIMPORT                        R5 K5 [error]
      111 LOADK                            R6 K6 ["operationId is empty"]
      112 LOADN                            R7 0
      113 CALL                             R5 2 0
      114 GETUPVAL                         R5 2
      115 MOVE                             R6 R0
      116 MOVE                             R7 R4
      117 CALL                             R5 2 1
      118 JUMPIF                           R5 ; [+5]
      119 GETIMPORT                        R6 K5 [error]
      121 LOADK                            R7 K20 ["Poll uploaded materials failed"]
      122 LOADN                            R8 0
      123 CALL                             R6 2 0
      124 GETTABLEKS                       R6 R5 K10 ["success"]
      126 JUMPIF                           R6 ; [+8]
      127 GETIMPORT                        R6 K5 [error]
      129 GETUPVAL                         R7 1
      130 GETTABLEKS                       R8 R5 K11 ["errorDetails"]
      132 CALL                             R7 1 1
      133 LOADN                            R8 0
      134 CALL                             R6 2 0
      135 GETTABLEKS                       R7 R5 K12 ["data"]
      137 GETTABLEKS                       R6 R7 K4 ["error"]
      139 JUMPIFNOT                        R6 ; [+53]
      140 GETIMPORT                        R6 K5 [error]
      142 GETTABLEKS                       R9 R5 K12 ["data"]
      144 GETTABLEKS                       R8 R9 K4 ["error"]
      146 FASTCALL1                        TYPEOF R8 ; [+3]
      147 MOVE                             R11 R8
      148 GETIMPORT                        R10 K1 [typeof]
      150 CALL                             R10 1 1
      151 JUMPIFNOTEQKS                    R10 K7 ["table"] ; [+12]
      153 GETTABLEKS                       R11 R8 K13 ["errorCode"]
      155 FASTCALL1                        TYPEOF R11 ; [+2]
      156 GETIMPORT                        R10 K1 [typeof]
      158 CALL                             R10 1 1
      159 JUMPIFNOTEQKS                    R10 K2 ["string"] ; [+4]
      161 GETTABLEKS                       R9 R8 K13 ["errorCode"]
      163 JUMP                             ; [+1]
      164 LOADK                            R9 K14 ["UnknownErrorCode"]
      165 FASTCALL1                        TYPEOF R8 ; [+3]
      166 MOVE                             R12 R8
      167 GETIMPORT                        R11 K1 [typeof]
      169 CALL                             R11 1 1
      170 JUMPIFNOTEQKS                    R11 K7 ["table"] ; [+12]
      172 GETTABLEKS                       R12 R8 K15 ["message"]
      174 FASTCALL1                        TYPEOF R12 ; [+2]
      175 GETIMPORT                        R11 K1 [typeof]
      177 CALL                             R11 1 1
      178 JUMPIFNOTEQKS                    R11 K2 ["string"] ; [+4]
      180 GETTABLEKS                       R10 R8 K15 ["message"]
      182 JUMP                             ; [+1]
      183 LOADK                            R10 K16 ["Unknown error"]
      184 LOADK                            R11 K17 ["%*: %*"]
      185 MOVE                             R13 R9
      186 MOVE                             R14 R10
      187 NAMECALL                         R11 R11 K18 ["format"]
      189 CALL                             R11 3 1
      190 MOVE                             R7 R11
      191 LOADN                            R8 0
      192 CALL                             R6 2 0
      193 GETTABLEKS                       R7 R5 K12 ["data"]
      195 GETTABLEKS                       R6 R7 K21 ["status"]
      197 JUMPIFNOTEQKS                    R6 K22 ["Failed"] ; [+6]
      199 GETIMPORT                        R6 K5 [error]
      201 LOADK                            R7 K20 ["Poll uploaded materials failed"]
      202 LOADN                            R8 0
      203 CALL                             R6 2 0
      204 GETUPVAL                         R6 3
      205 CALL                             R6 0 1
      206 JUMPIFNOT                        R6 ; [+5]
      207 GETTABLEKS                       R7 R0 K23 ["telemetry"]
      209 GETTABLEKS                       R6 R7 K24 ["logMaterialGeneratorSavedMaterial"]
      211 CALL                             R6 0 0
      212 GETUPVAL                         R6 4
      213 GETTABLEKS                       R7 R5 K12 ["data"]
      215 CALL                             R6 1 1
      216 RETURN                           R6 1

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
        4 CALL                             R2 3 1
        5 RETURN                           R2 1

PROTO_13:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 DUPTABLE                         R2 K3 [{"MaterialGenerationService", "MaterialGenerationServiceApi", "telemetry"}]
        5 GETTABLEKS                       R3 R1 K0 ["MaterialGenerationService"]
        7 JUMPIF                           R3 ; [+1]
        8 GETUPVAL                         R3 0
        9 SETTABLEKS                       R3 R2 K0 ["MaterialGenerationService"]
       11 GETTABLEKS                       R3 R1 K1 ["MaterialGenerationServiceApi"]
       13 JUMPIF                           R3 ; [+1]
       14 GETUPVAL                         R3 1
       15 SETTABLEKS                       R3 R2 K1 ["MaterialGenerationServiceApi"]
       17 GETTABLEKS                       R3 R1 K2 ["telemetry"]
       19 JUMPIF                           R3 ; [+4]
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R3 R4 K4 ["makeStudioTelemetryEvents"]
       23 CALL                             R3 0 1
       24 SETTABLEKS                       R3 R2 K2 ["telemetry"]
       26 DUPTABLE                         R3 K7 [{"generateMaterialVariantsAsync", "uploadMaterialsAsync"}]
       27 NEWCLOSURE                       R4 P0
       28 CAPTURE                          UPVAL U3
       29 CAPTURE                          VAL R2
       30 SETTABLEKS                       R4 R3 K5 ["generateMaterialVariantsAsync"]
       32 NEWCLOSURE                       R4 P1
       33 CAPTURE                          UPVAL U4
       34 CAPTURE                          VAL R2
       35 SETTABLEKS                       R4 R3 K6 ["uploadMaterialsAsync"]
       37 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [pcall]
        9 GETIMPORT                        R3 K7 [game]
       11 GETTABLEKS                       R2 R3 K8 ["GetService"]
       13 GETIMPORT                        R3 K7 [game]
       15 LOADK                            R4 K9 ["MaterialGenerationService"]
       16 CALL                             R1 3 2
       17 GETIMPORT                        R3 K11 [require]
       19 GETTABLEKS                       R5 R0 K12 ["Packages"]
       21 GETTABLEKS                       R4 R5 K13 ["AssistantUI"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K11 [require]
       26 GETTABLEKS                       R7 R0 K14 ["Generated"]
       28 GETTABLEKS                       R6 R7 K15 ["OpenAPI"]
       30 GETTABLEKS                       R5 R6 K9 ["MaterialGenerationService"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K11 [require]
       35 GETTABLEKS                       R7 R0 K12 ["Packages"]
       37 GETTABLEKS                       R6 R7 K16 ["Promise"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K11 [require]
       42 GETTABLEKS                       R10 R0 K17 ["Src"]
       44 GETTABLEKS                       R9 R10 K18 ["Host"]
       46 GETTABLEKS                       R8 R9 K19 ["Resources"]
       48 GETTABLEKS                       R7 R8 K20 ["StudioEventLogger"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K11 [require]
       53 GETTABLEKS                       R10 R0 K17 ["Src"]
       55 GETTABLEKS                       R9 R10 K21 ["Flags"]
       57 GETTABLEKS                       R8 R9 K22 ["FFlagMaterialGeneratorCounterEnabled"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K11 [require]
       62 GETTABLEKS                       R11 R0 K17 ["Src"]
       64 GETTABLEKS                       R10 R11 K21 ["Flags"]
       66 GETTABLEKS                       R9 R10 K23 ["FIntMaterialGenerationServicePollLimit"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K11 [require]
       71 GETTABLEKS                       R12 R0 K17 ["Src"]
       73 GETTABLEKS                       R11 R12 K21 ["Flags"]
       75 GETTABLEKS                       R10 R11 K24 ["FIntMaterialGenerationServiceRePollDelaySeconds"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K11 [require]
       80 GETTABLEKS                       R13 R0 K17 ["Src"]
       82 GETTABLEKS                       R12 R13 K21 ["Flags"]
       84 GETTABLEKS                       R11 R12 K25 ["FIntMaterialGenerationServiceUploadHttpTimeoutMs"]
       86 CALL                             R10 1 1
       87 DUPCLOSURE                       R11 K26 [PROTO_0]
       88 DUPCLOSURE                       R12 K27 [PROTO_1]
       89 DUPCLOSURE                       R13 K28 [PROTO_2]
       90 DUPCLOSURE                       R14 K29 [PROTO_3]
       91 DUPCLOSURE                       R15 K30 [PROTO_6]
       92 CAPTURE                          VAL R5
       93 CAPTURE                          VAL R10
       94 DUPCLOSURE                       R16 K31 [PROTO_8]
       95 CAPTURE                          VAL R9
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R15
       98 DUPCLOSURE                       R17 K32 [PROTO_10]
       99 CAPTURE                          VAL R15
      100 CAPTURE                          VAL R14
      101 CAPTURE                          VAL R16
      102 CAPTURE                          VAL R7
      103 CAPTURE                          VAL R12
      104 DUPCLOSURE                       R18 K33 [PROTO_13]
      105 CAPTURE                          VAL R2
      106 CAPTURE                          VAL R4
      107 CAPTURE                          VAL R6
      108 CAPTURE                          VAL R11
      109 CAPTURE                          VAL R17
      110 DUPTABLE                         R19 K35 [{"create"}]
      111 SETTABLEKS                       R18 R19 K34 ["create"]
      113 RETURN                           R19 1
