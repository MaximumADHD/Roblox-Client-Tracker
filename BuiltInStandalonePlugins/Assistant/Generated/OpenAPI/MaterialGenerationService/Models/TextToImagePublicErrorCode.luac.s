PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["string"] ; [+19]
        7 LOADK                            R6 K3 ["%*Expected underlying value to be a string, got %*"]
        8 MOVE                             R8 R2
        9 FASTCALL1                        TYPEOF R0 ; [+3]
       10 MOVE                             R10 R0
       11 GETIMPORT                        R9 K1 [typeof]
       13 CALL                             R9 1 1
       14 NAMECALL                         R6 R6 K4 ["format"]
       16 CALL                             R6 3 1
       17 MOVE                             R5 R6
       18 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       20 MOVE                             R4 R1
       21 GETIMPORT                        R3 K7 [table.insert]
       23 CALL                             R3 2 0
       24 RETURN                           R0 1
       25 GETIMPORT                        R3 K9 [table.find]
       27 GETUPVAL                         R4 0
       28 MOVE                             R5 R0
       29 CALL                             R3 2 1
       30 JUMPIFNOTEQKNIL                  R3 ; [+19]
       32 LOADK                            R6 K10 ["%*Expected one of: %*, got %*"]
       33 MOVE                             R8 R2
       34 GETIMPORT                        R9 K12 [table.concat]
       36 GETUPVAL                         R10 0
       37 LOADK                            R11 K13 [", "]
       38 CALL                             R9 2 1
       39 MOVE                             R10 R0
       40 NAMECALL                         R6 R6 K4 ["format"]
       42 CALL                             R6 4 1
       43 MOVE                             R5 R6
       44 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       46 MOVE                             R4 R1
       47 GETIMPORT                        R3 K7 [table.insert]
       49 CALL                             R3 2 0
       50 RETURN                           R0 1

PROTO_1:
        0 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["MaterialGenerationService"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 LOADK                            R3 K4 ["Assistant"]
        8 NAMECALL                         R1 R0 K3 ["FindFirstAncestor"]
       10 CALL                             R1 2 1
       11 GETTABLEKS                       R2 R1 K5 ["Packages"]
       13 GETIMPORT                        R3 K7 [require]
       15 GETTABLEKS                       R4 R2 K8 ["HttpWrapper"]
       17 CALL                             R3 1 1
       18 NEWTABLE                         R4 0 20
       20 LOADK                            R5 K9 ["Unknown"]
       21 LOADK                            R6 K10 ["GenerationNotEnabled"]
       22 LOADK                            R7 K11 ["NotAuthenticated"]
       23 LOADK                            R8 K12 ["BadRequestParamsOutOfRange"]
       24 LOADK                            R9 K13 ["TextToImageService"]
       25 LOADK                            R10 K14 ["TextFullyFiltered"]
       26 LOADK                            R11 K15 ["ImageModeration"]
       27 LOADK                            R12 K16 ["ImageFiltered"]
       28 LOADK                            R13 K17 ["TextFilterFailed"]
       29 LOADK                            R14 K18 ["InternalConfiguration"]
       30 LOADK                            R15 K19 ["AccountingUserHasNoBudget"]
       31 LOADK                            R16 K20 ["AccountingFailed"]
       32 LOADK                            R17 K21 ["RefillFailed"]
       33 LOADK                            R18 K22 ["MapGenerationFailed"]
       34 LOADK                            R19 K23 ["UploadFailed"]
       35 LOADK                            R20 K24 ["BadMimeType"]
       36 SETLIST                          R4 R5 16 [1]
       38 LOADK                            R5 K25 ["OperationDoesNotExist"]
       39 LOADK                            R6 K26 ["BadUploadSamples"]
       40 LOADK                            R7 K27 ["OperationNotComplete"]
       41 LOADK                            R8 K28 ["QuotaExceeded"]
       42 SETLIST                          R4 R5 4 [17]
       44 DUPCLOSURE                       R5 K29 [PROTO_0]
       45 CAPTURE                          VAL R4
       46 DUPCLOSURE                       R6 K30 [PROTO_1]
       47 GETIMPORT                        R7 K33 [table.freeze]
       49 DUPTABLE                         R8 K36 [{"fromResponse", "toRequest"}]
       50 SETTABLEKS                       R5 R8 K34 ["fromResponse"]
       52 SETTABLEKS                       R6 R8 K35 ["toRequest"]
       54 CALL                             R7 1 1
       55 RETURN                           R7 1
