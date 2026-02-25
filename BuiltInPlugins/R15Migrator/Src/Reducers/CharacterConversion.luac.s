PROTO_0:
        0 DUPTABLE                         R0 K5 [{"characterMetadataLoadedVersion", "characters", "convertedCharacters", "worldModels", "selection"}]
        1 LOADN                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["characterMetadataLoadedVersion"]
        4 NEWTABLE                         R1 0 0
        6 SETTABLEKS                       R1 R0 K1 ["characters"]
        8 NEWTABLE                         R1 0 0
       10 SETTABLEKS                       R1 R0 K2 ["convertedCharacters"]
       12 NEWTABLE                         R1 0 0
       14 SETTABLEKS                       R1 R0 K3 ["worldModels"]
       16 NEWTABLE                         R1 0 0
       18 SETTABLEKS                       R1 R0 K4 ["selection"]
       20 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K4 [{"characters", "convertedCharacters"}]
        7 GETUPVAL                         R7 0
        8 GETTABLEKS                       R6 R7 K0 ["Dictionary"]
       10 GETTABLEKS                       R5 R6 K1 ["join"]
       12 GETTABLEKS                       R6 R0 K2 ["characters"]
       14 NEWTABLE                         R7 1 0
       16 GETTABLEKS                       R9 R1 K5 ["characterInfo"]
       18 GETTABLEKS                       R8 R9 K6 ["key"]
       20 GETTABLEKS                       R10 R1 K7 ["isConverted"]
       22 JUMPIFNOT                        R10 ; [+4]
       23 GETUPVAL                         R10 0
       24 GETTABLEKS                       R9 R10 K8 ["None"]
       26 JUMP                             ; [+2]
       27 GETTABLEKS                       R9 R1 K5 ["characterInfo"]
       29 SETTABLE                         R9 R7 R8
       30 CALL                             R5 2 1
       31 SETTABLEKS                       R5 R4 K2 ["characters"]
       33 GETUPVAL                         R7 0
       34 GETTABLEKS                       R6 R7 K0 ["Dictionary"]
       36 GETTABLEKS                       R5 R6 K1 ["join"]
       38 GETTABLEKS                       R6 R0 K3 ["convertedCharacters"]
       40 NEWTABLE                         R7 1 0
       42 GETTABLEKS                       R9 R1 K5 ["characterInfo"]
       44 GETTABLEKS                       R8 R9 K6 ["key"]
       46 GETTABLEKS                       R10 R1 K7 ["isConverted"]
       48 JUMPIFNOT                        R10 ; [+3]
       49 GETTABLEKS                       R9 R1 K5 ["characterInfo"]
       51 JUMP                             ; [+3]
       52 GETUPVAL                         R10 0
       53 GETTABLEKS                       R9 R10 K8 ["None"]
       55 SETTABLE                         R9 R7 R8
       56 CALL                             R5 2 1
       57 SETTABLEKS                       R5 R4 K3 ["convertedCharacters"]
       59 CALL                             R2 2 -1
       60 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"convertedCharacters"}]
        7 NEWTABLE                         R5 0 0
        9 SETTABLEKS                       R5 R4 K2 ["convertedCharacters"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K6 [{"characterMetadataLoadedVersion", "characters", "convertedCharacters", "worldModels"}]
        7 GETTABLEKS                       R6 R0 K2 ["characterMetadataLoadedVersion"]
        9 ADDK                             R5 R6 K7 [1]
       10 SETTABLEKS                       R5 R4 K2 ["characterMetadataLoadedVersion"]
       12 GETTABLEKS                       R5 R1 K3 ["characters"]
       14 SETTABLEKS                       R5 R4 K3 ["characters"]
       16 GETTABLEKS                       R5 R1 K4 ["convertedCharacters"]
       18 SETTABLEKS                       R5 R4 K4 ["convertedCharacters"]
       20 NEWTABLE                         R5 0 0
       22 SETTABLEKS                       R5 R4 K5 ["worldModels"]
       24 CALL                             R2 2 -1
       25 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"selection"}]
        7 GETTABLEKS                       R5 R1 K2 ["selection"]
        9 SETTABLEKS                       R5 R4 K2 ["selection"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"worldModels"}]
        7 GETUPVAL                         R7 0
        8 GETTABLEKS                       R6 R7 K0 ["Dictionary"]
       10 GETTABLEKS                       R5 R6 K1 ["join"]
       12 GETTABLEKS                       R6 R0 K2 ["worldModels"]
       14 GETTABLEKS                       R7 R1 K4 ["newWorldModelEntries"]
       16 CALL                             R5 2 1
       17 SETTABLEKS                       R5 R4 K2 ["worldModels"]
       19 CALL                             R2 2 -1
       20 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 GETUPVAL                         R4 1
        7 CALL                             R4 0 1
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Rodux"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Cryo"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R4 R0 K9 ["Src"]
       23 GETTABLEKS                       R3 R4 K10 ["Actions"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R3 K11 ["ResetConvertedCharacters"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R6 R3 K12 ["SetCharacterConverted"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K5 [require]
       37 GETTABLEKS                       R7 R3 K13 ["SetCharacterMetadata"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K5 [require]
       42 GETTABLEKS                       R8 R3 K14 ["SetCharacterSelection"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K5 [require]
       47 GETTABLEKS                       R9 R3 K15 ["SetWorldModels"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K5 [require]
       52 GETTABLEKS                       R10 R3 K16 ["ResetAllCharacterConversion"]
       54 CALL                             R9 1 1
       55 DUPCLOSURE                       R10 K17 [PROTO_0]
       56 GETTABLEKS                       R11 R1 K18 ["createReducer"]
       58 MOVE                             R12 R10
       59 CALL                             R12 0 1
       60 NEWTABLE                         R13 8 0
       62 GETTABLEKS                       R14 R5 K19 ["name"]
       64 DUPCLOSURE                       R15 K20 [PROTO_1]
       65 CAPTURE                          VAL R2
       66 SETTABLE                         R15 R13 R14
       67 GETTABLEKS                       R14 R4 K19 ["name"]
       69 DUPCLOSURE                       R15 K21 [PROTO_2]
       70 CAPTURE                          VAL R2
       71 SETTABLE                         R15 R13 R14
       72 GETTABLEKS                       R14 R6 K19 ["name"]
       74 DUPCLOSURE                       R15 K22 [PROTO_3]
       75 CAPTURE                          VAL R2
       76 SETTABLE                         R15 R13 R14
       77 GETTABLEKS                       R14 R7 K19 ["name"]
       79 DUPCLOSURE                       R15 K23 [PROTO_4]
       80 CAPTURE                          VAL R2
       81 SETTABLE                         R15 R13 R14
       82 GETTABLEKS                       R14 R8 K19 ["name"]
       84 DUPCLOSURE                       R15 K24 [PROTO_5]
       85 CAPTURE                          VAL R2
       86 SETTABLE                         R15 R13 R14
       87 GETTABLEKS                       R14 R9 K19 ["name"]
       89 DUPCLOSURE                       R15 K25 [PROTO_6]
       90 CAPTURE                          VAL R2
       91 CAPTURE                          VAL R10
       92 SETTABLE                         R15 R13 R14
       93 CALL                             R11 2 1
       94 RETURN                           R11 1
