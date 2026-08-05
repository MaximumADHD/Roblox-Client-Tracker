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
        3 LOADK                            R2 K2 ["OpenApiCreatorHomeApi"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["HttpWrapper"]
       13 CALL                             R2 1 1
       14 NEWTABLE                         R3 0 11
       16 LOADK                            R4 K8 ["CreatorHub"]
       17 LOADK                            R5 K9 ["StudioAssetImporter"]
       18 LOADK                            R6 K10 ["StudioConvertToPackage"]
       19 LOADK                            R7 K11 ["StudioAssetCreation"]
       20 LOADK                            R8 K12 ["StudioToolboxCreations"]
       21 LOADK                            R9 K13 ["StudioAssetManager"]
       22 LOADK                            R10 K14 ["StudioPublishExistingPlace"]
       23 LOADK                            R11 K15 ["StudioSaveExistingPlace"]
       24 LOADK                            R12 K16 ["StudioStartPage"]
       25 LOADK                            R13 K17 ["StudioPublishNewPlace"]
       26 LOADK                            R14 K18 ["StudioSaveNewPlace"]
       27 SETLIST                          R3 R4 11 [1]
       29 DUPCLOSURE                       R4 K19 [PROTO_0]
       30 CAPTURE                          VAL R3
       31 DUPCLOSURE                       R5 K20 [PROTO_1]
       32 GETIMPORT                        R6 K23 [table.freeze]
       34 DUPTABLE                         R7 K26 [{"fromResponse", "toRequest"}]
       35 SETTABLEKS                       R4 R7 K24 ["fromResponse"]
       37 SETTABLEKS                       R5 R7 K25 ["toRequest"]
       39 CALL                             R6 1 1
       40 RETURN                           R6 1
