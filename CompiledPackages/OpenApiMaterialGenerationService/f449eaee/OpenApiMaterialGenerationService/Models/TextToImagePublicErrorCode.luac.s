PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["string"] ; [+18]
        7 LOADK                            R5 K3 ["%*Expected underlying value to be a string, got %*"]
        8 MOVE                             R7 R2
        9 FASTCALL1                        TYPEOF R0 ; [+3]
       10 MOVE                             R9 R0
       11 GETIMPORT                        R8 K1 [typeof]
       13 CALL                             R8 1 1
       14 NAMECALL                         R5 R5 K4 ["format"]
       16 CALL                             R5 3 1
       17 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       19 MOVE                             R4 R1
       20 GETIMPORT                        R3 K7 [table.insert]
       22 CALL                             R3 2 0
       23 RETURN                           R0 1
       24 GETIMPORT                        R3 K9 [table.find]
       26 GETUPVAL                         R4 0
       27 MOVE                             R5 R0
       28 CALL                             R3 2 1
       29 JUMPIFNOTEQKNIL                  R3 ; [+18]
       31 LOADK                            R5 K10 ["%*Expected one of: %*, got %*"]
       32 MOVE                             R7 R2
       33 GETIMPORT                        R8 K12 [table.concat]
       35 GETUPVAL                         R9 0
       36 LOADK                            R10 K13 [", "]
       37 CALL                             R8 2 1
       38 MOVE                             R9 R0
       39 NAMECALL                         R5 R5 K4 ["format"]
       41 CALL                             R5 4 1
       42 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       44 MOVE                             R4 R1
       45 GETIMPORT                        R3 K7 [table.insert]
       47 CALL                             R3 2 0
       48 RETURN                           R0 1

PROTO_1:
        0 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["OpenApiMaterialGenerationService"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["HttpWrapper"]
       13 CALL                             R2 1 1
       14 NEWTABLE                         R3 0 20
       16 LOADK                            R4 K8 ["Unknown"]
       17 LOADK                            R5 K9 ["GenerationNotEnabled"]
       18 LOADK                            R6 K10 ["NotAuthenticated"]
       19 LOADK                            R7 K11 ["BadRequestParamsOutOfRange"]
       20 LOADK                            R8 K12 ["TextToImageService"]
       21 LOADK                            R9 K13 ["TextFullyFiltered"]
       22 LOADK                            R10 K14 ["ImageModeration"]
       23 LOADK                            R11 K15 ["ImageFiltered"]
       24 LOADK                            R12 K16 ["TextFilterFailed"]
       25 LOADK                            R13 K17 ["InternalConfiguration"]
       26 LOADK                            R14 K18 ["AccountingUserHasNoBudget"]
       27 LOADK                            R15 K19 ["AccountingFailed"]
       28 LOADK                            R16 K20 ["RefillFailed"]
       29 LOADK                            R17 K21 ["MapGenerationFailed"]
       30 LOADK                            R18 K22 ["UploadFailed"]
       31 LOADK                            R19 K23 ["BadMimeType"]
       32 SETLIST                          R3 R4 16 [1]
       34 LOADK                            R4 K24 ["OperationDoesNotExist"]
       35 LOADK                            R5 K25 ["BadUploadSamples"]
       36 LOADK                            R6 K26 ["OperationNotComplete"]
       37 LOADK                            R7 K27 ["QuotaExceeded"]
       38 SETLIST                          R3 R4 4 [17]
       40 DUPCLOSURE                       R4 K28 [PROTO_0]
       41 CAPTURE                          VAL R3
       42 DUPCLOSURE                       R5 K29 [PROTO_1]
       43 GETIMPORT                        R6 K32 [table.freeze]
       45 DUPTABLE                         R7 K35 [{"fromResponse", "toRequest"}]
       46 SETTABLEKS                       R4 R7 K33 ["fromResponse"]
       48 SETTABLEKS                       R5 R7 K34 ["toRequest"]
       50 CALL                             R6 1 1
       51 RETURN                           R6 1
