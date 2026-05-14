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
        1 CALL                             R3 0 1
        2 GETUPVAL                         R4 1
        3 CALL                             R4 0 1
        4 LOADN                            R7 1
        5 MOVE                             R5 R4
        6 LOADN                            R6 1
        7 FORNPREP                         R5
        8 GETTABLE                         R8 R2 R1
        9 JUMPIF                           R8 ; [+1]
       10 RETURN                           R0 0
       11 GETUPVAL                         R8 2
       12 GETTABLEKS                       R8 R8 K0 ["callWithOptions"]
       14 NEWCLOSURE                       R9 P0
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R1
       17 DUPTABLE                         R10 K2 [{"timeoutMs"}]
       18 GETUPVAL                         R11 3
       19 CALL                             R11 0 1
       20 SETTABLEKS                       R11 R10 K1 ["timeoutMs"]
       22 CALL                             R8 2 1
       23 GETTABLE                         R9 R2 R1
       24 JUMPIF                           R9 ; [+1]
       25 RETURN                           R0 0
       26 GETTABLEKS                       R10 R8 K3 ["success"]
       28 JUMPIF                           R10 ; [+20]
       29 GETTABLE                         R10 R2 R1
       30 JUMPIF                           R10 ; [+1]
       31 RETURN                           R0 0
       32 LOADNIL                          R11
       33 SETTABLE                         R11 R2 R1
       34 GETTABLEKS                       R11 R10 K4 ["hasCompleted"]
       36 JUMPIFNOT                        R11 ; [+1]
       37 RETURN                           R0 0
       38 LOADB                            R11 1
       39 SETTABLEKS                       R11 R10 K4 ["hasCompleted"]
       41 SETTABLEKS                       R8 R10 K5 ["result"]
       43 GETTABLEKS                       R11 R10 K6 ["completed"]
       45 NAMECALL                         R11 R11 K7 ["Fire"]
       47 CALL                             R11 1 0
       48 RETURN                           R0 0
       49 GETTABLEKS                       R11 R8 K9 ["data"]
       51 GETTABLEKS                       R11 R11 K10 ["status"]
       53 ORK                              R10 R11 K8 ["Pending"]
       54 JUMPIFEQKS                       R10 K8 ["Pending"] ; [+21]
       56 GETTABLE                         R11 R2 R1
       57 JUMPIF                           R11 ; [+1]
       58 RETURN                           R0 0
       59 LOADNIL                          R12
       60 SETTABLE                         R12 R2 R1
       61 GETTABLEKS                       R12 R11 K4 ["hasCompleted"]
       63 JUMPIFNOT                        R12 ; [+1]
       64 RETURN                           R0 0
       65 LOADB                            R12 1
       66 SETTABLEKS                       R12 R11 K4 ["hasCompleted"]
       68 SETTABLEKS                       R8 R11 K5 ["result"]
       70 GETTABLEKS                       R12 R11 K6 ["completed"]
       72 NAMECALL                         R12 R12 K7 ["Fire"]
       74 CALL                             R12 1 0
       75 RETURN                           R0 0
       76 GETIMPORT                        R11 K13 [task.wait]
       78 MOVE                             R12 R3
       79 CALL                             R11 1 0
       80 FORNLOOP                         R5
       81 GETTABLE                         R5 R2 R1
       82 JUMPIF                           R5 ; [+1]
       83 RETURN                           R0 0
       84 LOADNIL                          R6
       85 SETTABLE                         R6 R2 R1
       86 GETTABLEKS                       R6 R5 K4 ["hasCompleted"]
       88 JUMPIFNOT                        R6 ; [+1]
       89 RETURN                           R0 0
       90 LOADB                            R6 1
       91 SETTABLEKS                       R6 R5 K4 ["hasCompleted"]
       93 LOADNIL                          R6
       94 SETTABLEKS                       R6 R5 K5 ["result"]
       96 GETTABLEKS                       R6 R5 K6 ["completed"]
       98 NAMECALL                         R6 R6 K7 ["Fire"]
      100 CALL                             R6 1 0
      101 RETURN                           R0 0

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
       38 CALL                             R7 0 1
       39 SETTABLEKS                       R7 R6 K11 ["timeoutMs"]
       41 CALL                             R4 2 1
       42 GETTABLEKS                       R5 R4 K13 ["success"]
       44 JUMPIF                           R5 ; [+6]
       45 GETUPVAL                         R5 0
       46 GETTABLEKS                       R5 R5 K14 ["throwError"]
       48 MOVE                             R6 R4
       49 CALL                             R5 1 -1
       50 RETURN                           R5 -1
       51 GETTABLEKS                       R5 R4 K15 ["data"]
       53 GETTABLEKS                       R5 R5 K4 ["error"]
       55 JUMPIFNOT                        R5 ; [+53]
       56 GETIMPORT                        R5 K5 [error]
       58 GETTABLEKS                       R7 R4 K15 ["data"]
       60 GETTABLEKS                       R7 R7 K4 ["error"]
       62 FASTCALL1                        TYPEOF R7 ; [+3]
       63 MOVE                             R10 R7
       64 GETIMPORT                        R9 K1 [typeof]
       66 CALL                             R9 1 1
       67 JUMPIFNOTEQKS                    R9 K7 ["table"] ; [+12]
       69 GETTABLEKS                       R10 R7 K16 ["errorCode"]
       71 FASTCALL1                        TYPEOF R10 ; [+2]
       72 GETIMPORT                        R9 K1 [typeof]
       74 CALL                             R9 1 1
       75 JUMPIFNOTEQKS                    R9 K2 ["string"] ; [+4]
       77 GETTABLEKS                       R8 R7 K16 ["errorCode"]
       79 JUMP                             ; [+1]
       80 LOADK                            R8 K17 ["UnknownErrorCode"]
       81 FASTCALL1                        TYPEOF R7 ; [+3]
       82 MOVE                             R11 R7
       83 GETIMPORT                        R10 K1 [typeof]
       85 CALL                             R10 1 1
       86 JUMPIFNOTEQKS                    R10 K7 ["table"] ; [+12]
       88 GETTABLEKS                       R11 R7 K18 ["message"]
       90 FASTCALL1                        TYPEOF R11 ; [+2]
       91 GETIMPORT                        R10 K1 [typeof]
       93 CALL                             R10 1 1
       94 JUMPIFNOTEQKS                    R10 K2 ["string"] ; [+4]
       96 GETTABLEKS                       R9 R7 K18 ["message"]
       98 JUMP                             ; [+1]
       99 LOADK                            R9 K19 ["Unknown error"]
      100 LOADK                            R10 K20 ["%*: %*"]
      101 MOVE                             R12 R8
      102 MOVE                             R13 R9
      103 NAMECALL                         R10 R10 K21 ["format"]
      105 CALL                             R10 3 1
      106 MOVE                             R6 R10
      107 LOADN                            R7 0
      108 CALL                             R5 2 0
      109 GETTABLEKS                       R5 R4 K15 ["data"]
      111 GETTABLEKS                       R5 R5 K22 ["operationId"]
      113 JUMPIF                           R5 ; [+5]
      114 GETIMPORT                        R6 K5 [error]
      116 LOADK                            R7 K6 ["operationId is empty"]
      117 LOADN                            R8 0
      118 CALL                             R6 2 0
      119 DUPTABLE                         R6 K26 [{"completed", "hasCompleted", "result"}]
      120 GETUPVAL                         R7 2
      121 GETTABLEKS                       R7 R7 K27 ["new"]
      123 CALL                             R7 0 1
      124 SETTABLEKS                       R7 R6 K23 ["completed"]
      126 LOADB                            R7 0
      127 SETTABLEKS                       R7 R6 K24 ["hasCompleted"]
      129 LOADNIL                          R7
      130 SETTABLEKS                       R7 R6 K25 ["result"]
      132 SETTABLE                         R6 R3 R5
      133 GETIMPORT                        R7 K30 [task.spawn]
      135 GETUPVAL                         R8 3
      136 MOVE                             R9 R0
      137 MOVE                             R10 R5
      138 MOVE                             R11 R3
      139 CALL                             R7 4 0
      140 GETTABLEKS                       R7 R6 K24 ["hasCompleted"]
      142 JUMPIF                           R7 ; [+5]
      143 GETTABLEKS                       R7 R6 K23 ["completed"]
      145 NAMECALL                         R7 R7 K31 ["Wait"]
      147 CALL                             R7 1 0
      148 GETTABLEKS                       R7 R6 K25 ["result"]
      150 JUMPIF                           R7 ; [+5]
      151 GETIMPORT                        R8 K5 [error]
      153 LOADK                            R9 K32 ["Poll uploaded materials failed"]
      154 LOADN                            R10 0
      155 CALL                             R8 2 0
      156 GETTABLEKS                       R8 R7 K13 ["success"]
      158 JUMPIF                           R8 ; [+6]
      159 GETUPVAL                         R8 0
      160 GETTABLEKS                       R8 R8 K14 ["throwError"]
      162 MOVE                             R9 R7
      163 CALL                             R8 1 -1
      164 RETURN                           R8 -1
      165 GETTABLEKS                       R8 R7 K15 ["data"]
      167 GETTABLEKS                       R8 R8 K4 ["error"]
      169 JUMPIFNOT                        R8 ; [+53]
      170 GETIMPORT                        R8 K5 [error]
      172 GETTABLEKS                       R10 R7 K15 ["data"]
      174 GETTABLEKS                       R10 R10 K4 ["error"]
      176 FASTCALL1                        TYPEOF R10 ; [+3]
      177 MOVE                             R13 R10
      178 GETIMPORT                        R12 K1 [typeof]
      180 CALL                             R12 1 1
      181 JUMPIFNOTEQKS                    R12 K7 ["table"] ; [+12]
      183 GETTABLEKS                       R13 R10 K16 ["errorCode"]
      185 FASTCALL1                        TYPEOF R13 ; [+2]
      186 GETIMPORT                        R12 K1 [typeof]
      188 CALL                             R12 1 1
      189 JUMPIFNOTEQKS                    R12 K2 ["string"] ; [+4]
      191 GETTABLEKS                       R11 R10 K16 ["errorCode"]
      193 JUMP                             ; [+1]
      194 LOADK                            R11 K17 ["UnknownErrorCode"]
      195 FASTCALL1                        TYPEOF R10 ; [+3]
      196 MOVE                             R14 R10
      197 GETIMPORT                        R13 K1 [typeof]
      199 CALL                             R13 1 1
      200 JUMPIFNOTEQKS                    R13 K7 ["table"] ; [+12]
      202 GETTABLEKS                       R14 R10 K18 ["message"]
      204 FASTCALL1                        TYPEOF R14 ; [+2]
      205 GETIMPORT                        R13 K1 [typeof]
      207 CALL                             R13 1 1
      208 JUMPIFNOTEQKS                    R13 K2 ["string"] ; [+4]
      210 GETTABLEKS                       R12 R10 K18 ["message"]
      212 JUMP                             ; [+1]
      213 LOADK                            R12 K19 ["Unknown error"]
      214 LOADK                            R13 K20 ["%*: %*"]
      215 MOVE                             R15 R11
      216 MOVE                             R16 R12
      217 NAMECALL                         R13 R13 K21 ["format"]
      219 CALL                             R13 3 1
      220 MOVE                             R9 R13
      221 LOADN                            R10 0
      222 CALL                             R8 2 0
      223 GETTABLEKS                       R8 R7 K15 ["data"]
      225 GETTABLEKS                       R8 R8 K33 ["status"]
      227 JUMPIFNOTEQKS                    R8 K34 ["Failed"] ; [+6]
      229 GETIMPORT                        R8 K5 [error]
      231 LOADK                            R9 K32 ["Poll uploaded materials failed"]
      232 LOADN                            R10 0
      233 CALL                             R8 2 0
      234 GETUPVAL                         R8 4
      235 CALL                             R8 0 1
      236 JUMPIFNOT                        R8 ; [+5]
      237 GETTABLEKS                       R8 R0 K35 ["Telemetry"]
      239 GETTABLEKS                       R8 R8 K36 ["logMaterialGeneratorSavedMaterial"]
      241 CALL                             R8 0 0
      242 GETUPVAL                         R8 5
      243 GETTABLEKS                       R9 R7 K15 ["data"]
      245 CALL                             R8 1 1
      246 RETURN                           R8 1

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
       18 DUPTABLE                         R5 K7 [{"success", "data", "httpDetails"}]
       19 LOADB                            R6 1
       20 SETTABLEKS                       R6 R5 K4 ["success"]
       22 SETTABLEKS                       R2 R5 K5 ["data"]
       24 DUPTABLE                         R6 K11 [{"statusCode", "statusMessage", "headers"}]
       25 LOADN                            R7 200
       26 SETTABLEKS                       R7 R6 K8 ["statusCode"]
       28 LOADK                            R7 K12 ["OK"]
       29 SETTABLEKS                       R7 R6 K9 ["statusMessage"]
       31 NEWTABLE                         R7 0 0
       33 SETTABLEKS                       R7 R6 K10 ["headers"]
       35 SETTABLEKS                       R6 R5 K6 ["httpDetails"]
       37 GETUPVAL                         R6 2
       38 GETTABLE                         R7 R6 R3
       39 JUMPIF                           R7 ; [+1]
       40 RETURN                           R0 0
       41 LOADNIL                          R8
       42 SETTABLE                         R8 R6 R3
       43 GETTABLEKS                       R8 R7 K13 ["hasCompleted"]
       45 JUMPIFNOT                        R8 ; [+1]
       46 RETURN                           R0 0
       47 LOADB                            R8 1
       48 SETTABLEKS                       R8 R7 K13 ["hasCompleted"]
       50 SETTABLEKS                       R5 R7 K14 ["result"]
       52 GETTABLEKS                       R8 R7 K15 ["completed"]
       54 NAMECALL                         R8 R8 K16 ["Fire"]
       56 CALL                             R8 1 0
       57 RETURN                           R0 0

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
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+9]
        3 GETUPVAL                         R0 1
        4 LOADNIL                          R1
        5 LOADNIL                          R2
        6 FORGPREP                         R0
        7 NAMECALL                         R5 R4 K0 ["Disconnect"]
        9 CALL                             R5 1 0
       10 FORGLOOP                         R0 2 ; [-4]
       12 GETUPVAL                         R0 2
       13 LOADNIL                          R1
       14 LOADNIL                          R2
       15 FORGPREP                         R0
       16 GETUPVAL                         R5 2
       17 GETTABLE                         R6 R5 R3
       18 JUMPIF                           R6 ; [+1]
       19 JUMP                             ; [+17]
       20 LOADNIL                          R7
       21 SETTABLE                         R7 R5 R3
       22 GETTABLEKS                       R7 R6 K1 ["hasCompleted"]
       24 JUMPIFNOT                        R7 ; [+1]
       25 JUMP                             ; [+11]
       26 LOADB                            R7 1
       27 SETTABLEKS                       R7 R6 K1 ["hasCompleted"]
       29 LOADNIL                          R7
       30 SETTABLEKS                       R7 R6 K2 ["result"]
       32 GETTABLEKS                       R7 R6 K3 ["completed"]
       34 NAMECALL                         R7 R7 K4 ["Fire"]
       36 CALL                             R7 1 0
       37 FORGLOOP                         R0 2 ; [-22]
       39 GETIMPORT                        R0 K7 [table.clear]
       41 GETUPVAL                         R1 2
       42 CALL                             R0 1 0
       43 RETURN                           R0 0

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
       45 CALL                             R5 0 1
       46 JUMPIFNOT                        R5 ; [+5]
       47 GETUPVAL                         R5 5
       48 MOVE                             R6 R2
       49 MOVE                             R7 R3
       50 MOVE                             R8 R4
       51 CALL                             R5 3 0
       52 DUPTABLE                         R5 K12 [{"generateMaterialVariantsAsync", "uploadMaterialsAsync", "destroy"}]
       53 NEWCLOSURE                       R6 P0
       54 CAPTURE                          UPVAL U6
       55 CAPTURE                          VAL R2
       56 SETTABLEKS                       R6 R5 K9 ["generateMaterialVariantsAsync"]
       58 NEWCLOSURE                       R6 P1
       59 CAPTURE                          UPVAL U7
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R4
       62 SETTABLEKS                       R6 R5 K10 ["uploadMaterialsAsync"]
       64 NEWCLOSURE                       R6 P2
       65 CAPTURE                          UPVAL U4
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R4
       68 SETTABLEKS                       R6 R5 K11 ["destroy"]
       70 RETURN                           R5 1

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
       33 GETTABLEKS                       R6 R0 K15 ["Generated"]
       35 GETTABLEKS                       R6 R6 K16 ["OpenAPI"]
       37 GETTABLEKS                       R6 R6 K9 ["MaterialGenerationService"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K11 [require]
       42 GETTABLEKS                       R7 R0 K17 ["Src"]
       44 GETTABLEKS                       R7 R7 K18 ["Util"]
       46 GETTABLEKS                       R7 R7 K19 ["NotificationManagerStore"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K11 [require]
       51 GETTABLEKS                       R8 R0 K12 ["Packages"]
       53 GETTABLEKS                       R8 R8 K20 ["Signal"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K11 [require]
       58 GETTABLEKS                       R9 R0 K17 ["Src"]
       60 GETTABLEKS                       R9 R9 K18 ["Util"]
       62 GETTABLEKS                       R9 R9 K21 ["StudioEndpointUtil"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K11 [require]
       67 GETTABLEKS                       R10 R0 K17 ["Src"]
       69 GETTABLEKS                       R10 R10 K22 ["Host"]
       71 GETTABLEKS                       R10 R10 K23 ["Resources"]
       73 GETTABLEKS                       R10 R10 K24 ["StudioEventLogger"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K11 [require]
       78 GETTABLEKS                       R11 R0 K17 ["Src"]
       80 GETTABLEKS                       R11 R11 K18 ["Util"]
       82 GETTABLEKS                       R11 R11 K25 ["StudioNetworking"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K11 [require]
       87 GETTABLEKS                       R12 R0 K15 ["Generated"]
       89 GETTABLEKS                       R12 R12 K16 ["OpenAPI"]
       91 GETTABLEKS                       R12 R12 K9 ["MaterialGenerationService"]
       93 GETTABLEKS                       R12 R12 K26 ["Models"]
       95 GETTABLEKS                       R12 R12 K27 ["GetUploadMaterialAsyncResponse"]
       97 CALL                             R11 1 1
       98 GETIMPORT                        R12 K11 [require]
      100 GETTABLEKS                       R13 R0 K17 ["Src"]
      102 GETTABLEKS                       R13 R13 K28 ["Flags"]
      104 GETTABLEKS                       R13 R13 K29 ["FFlagAssistantNotificationManager"]
      106 CALL                             R12 1 1
      107 GETIMPORT                        R13 K11 [require]
      109 GETTABLEKS                       R14 R0 K17 ["Src"]
      111 GETTABLEKS                       R14 R14 K28 ["Flags"]
      113 GETTABLEKS                       R14 R14 K30 ["FFlagMaterialGeneratorCounterEnabled"]
      115 CALL                             R13 1 1
      116 GETIMPORT                        R14 K11 [require]
      118 GETTABLEKS                       R15 R0 K17 ["Src"]
      120 GETTABLEKS                       R15 R15 K28 ["Flags"]
      122 GETTABLEKS                       R15 R15 K31 ["FIntMaterialGenerationServicePollLimit"]
      124 CALL                             R14 1 1
      125 GETIMPORT                        R15 K11 [require]
      127 GETTABLEKS                       R16 R0 K17 ["Src"]
      129 GETTABLEKS                       R16 R16 K28 ["Flags"]
      131 GETTABLEKS                       R16 R16 K32 ["FIntMaterialGenerationServiceRePollDelaySeconds"]
      133 CALL                             R15 1 1
      134 GETIMPORT                        R16 K11 [require]
      136 GETTABLEKS                       R17 R0 K17 ["Src"]
      138 GETTABLEKS                       R17 R17 K28 ["Flags"]
      140 GETTABLEKS                       R17 R17 K33 ["FIntMaterialGenerationServiceUploadHttpTimeoutMs"]
      142 CALL                             R16 1 1
      143 DUPCLOSURE                       R17 K34 [PROTO_0]
      144 DUPCLOSURE                       R18 K35 [PROTO_1]
      145 DUPCLOSURE                       R19 K36 [PROTO_2]
      146 DUPCLOSURE                       R20 K37 [PROTO_3]
      147 DUPCLOSURE                       R21 K38 [PROTO_5]
      148 CAPTURE                          VAL R15
      149 CAPTURE                          VAL R14
      150 CAPTURE                          VAL R8
      151 CAPTURE                          VAL R16
      152 DUPCLOSURE                       R22 K39 [PROTO_7]
      153 CAPTURE                          VAL R8
      154 CAPTURE                          VAL R16
      155 CAPTURE                          VAL R7
      156 CAPTURE                          VAL R21
      157 CAPTURE                          VAL R13
      158 CAPTURE                          VAL R19
      159 DUPCLOSURE                       R23 K40 [PROTO_10]
      160 CAPTURE                          VAL R8
      161 CAPTURE                          VAL R11
      162 DUPCLOSURE                       R24 K41 [PROTO_14]
      163 CAPTURE                          VAL R2
      164 CAPTURE                          VAL R5
      165 CAPTURE                          VAL R10
      166 CAPTURE                          VAL R9
      167 CAPTURE                          VAL R12
      168 CAPTURE                          VAL R23
      169 CAPTURE                          VAL R17
      170 CAPTURE                          VAL R22
      171 DUPTABLE                         R25 K43 [{"create"}]
      172 SETTABLEKS                       R24 R25 K42 ["create"]
      174 RETURN                           R25 1
