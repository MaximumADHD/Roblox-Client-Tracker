PROTO_0:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["AttributeChunkCountName"]
        3 NAMECALL                         R2 R1 K1 ["GetAttribute"]
        5 CALL                             R2 2 1
        6 JUMPIF                           R2 ; [+1]
        7 RETURN                           R0 0
        8 NEWTABLE                         R3 0 0
       10 LOADN                            R6 1
       11 MOVE                             R4 R2
       12 LOADN                            R5 1
       13 FORNPREP                         R4
       14 GETUPVAL                         R10 0
       15 GETTABLEKS                       R8 R10 K2 ["AttributeChunkNameBase"]
       17 FASTCALL1                        TOSTRING R6 ; [+3]
       18 MOVE                             R10 R6
       19 GETIMPORT                        R9 K4 [tostring]
       21 CALL                             R9 1 1
       22 CONCAT                           R7 R8 R9
       23 MOVE                             R10 R7
       24 NAMECALL                         R8 R1 K1 ["GetAttribute"]
       26 CALL                             R8 2 1
       27 GETUPVAL                         R9 1
       28 MOVE                             R11 R8
       29 NAMECALL                         R9 R9 K5 ["JSONDecode"]
       31 CALL                             R9 2 1
       32 GETTABLEKS                       R12 R9 K6 ["source"]
       34 FASTCALL2                        TABLE_INSERT R3 R12 ; [+4]
       36 MOVE                             R11 R3
       37 GETIMPORT                        R10 K9 [table.insert]
       39 CALL                             R10 2 0
       40 FORNLOOP                         R4
       41 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["AttributeChunkCountName"]
        3 NAMECALL                         R2 R1 K1 ["GetAttribute"]
        5 CALL                             R2 2 1
        6 JUMPIFNOT                        R2 ; [+2]
        7 JUMPIFNOTEQKN                    R2 K2 [0] ; [+3]
        9 LOADB                            R3 0
       10 RETURN                           R3 1
       11 LOADB                            R3 1
       12 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["AttributeChunkCountName"]
        3 NAMECALL                         R2 R1 K1 ["GetAttribute"]
        5 CALL                             R2 2 1
        6 JUMPIF                           R2 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K0 ["AttributeChunkCountName"]
       11 LOADNIL                          R6
       12 NAMECALL                         R3 R1 K2 ["SetAttribute"]
       14 CALL                             R3 3 0
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R5 R6 K3 ["AttributeInitialIssueCountName"]
       18 LOADNIL                          R6
       19 NAMECALL                         R3 R1 K2 ["SetAttribute"]
       21 CALL                             R3 3 0
       22 LOADN                            R5 1
       23 MOVE                             R3 R2
       24 LOADN                            R4 1
       25 FORNPREP                         R3
       26 GETUPVAL                         R9 0
       27 GETTABLEKS                       R7 R9 K4 ["AttributeChunkNameBase"]
       29 FASTCALL1                        TOSTRING R5 ; [+3]
       30 MOVE                             R9 R5
       31 GETIMPORT                        R8 K6 [tostring]
       33 CALL                             R8 1 1
       34 CONCAT                           R6 R7 R8
       35 MOVE                             R9 R6
       36 LOADNIL                          R10
       37 NAMECALL                         R7 R1 K2 ["SetAttribute"]
       39 CALL                             R7 3 0
       40 FORNLOOP                         R3
       41 RETURN                           R0 0

PROTO_3:
        0 JUMPIF                           R2 ; [+5]
        1 MOVE                             R5 R1
        2 NAMECALL                         R3 R0 K0 ["GetScriptBackupChunks"]
        4 CALL                             R3 2 1
        5 MOVE                             R2 R3
        6 JUMPIF                           R2 ; [+2]
        7 LOADB                            R3 0
        8 RETURN                           R3 1
        9 GETUPVAL                         R3 0
       10 MOVE                             R5 R1
       11 NAMECALL                         R3 R3 K1 ["GetEditorSource"]
       13 CALL                             R3 2 1
       14 LOADK                            R4 K2 [""]
       15 MOVE                             R5 R2
       16 LOADNIL                          R6
       17 LOADNIL                          R7
       18 FORGPREP                         R5
       19 MOVE                             R10 R4
       20 MOVE                             R11 R9
       21 CONCAT                           R4 R10 R11
       22 FORGLOOP                         R5 2 ; [-4]
       24 GETIMPORT                        R5 K5 [string.gsub]
       26 MOVE                             R6 R3
       27 LOADK                            R7 K6 ["\r\n"]
       28 LOADK                            R8 K7 ["\n"]
       29 CALL                             R5 3 1
       30 MOVE                             R3 R5
       31 GETIMPORT                        R5 K5 [string.gsub]
       33 MOVE                             R6 R4
       34 LOADK                            R7 K6 ["\r\n"]
       35 LOADK                            R8 K7 ["\n"]
       36 CALL                             R5 3 1
       37 MOVE                             R4 R5
       38 JUMPIFNOTEQ                      R3 R4 ; [+3]
       40 LOADB                            R5 0
       41 RETURN                           R5 1
       42 LOADB                            R5 1
       43 RETURN                           R5 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["FindScriptDocument"]
        4 CALL                             R1 2 1
        5 JUMPIF                           R1 ; [+11]
        6 GETUPVAL                         R2 0
        7 MOVE                             R4 R0
        8 NAMECALL                         R2 R2 K1 ["OpenScriptDocumentAsync"]
       10 CALL                             R2 2 0
       11 GETUPVAL                         R2 0
       12 MOVE                             R4 R0
       13 NAMECALL                         R2 R2 K0 ["FindScriptDocument"]
       15 CALL                             R2 2 1
       16 MOVE                             R1 R2
       17 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R4 0
        1 MOVE                             R6 R1
        2 NAMECALL                         R4 R4 K0 ["FindScriptDocument"]
        4 CALL                             R4 2 1
        5 JUMPIF                           R4 ; [+11]
        6 GETUPVAL                         R5 0
        7 MOVE                             R7 R1
        8 NAMECALL                         R5 R5 K1 ["OpenScriptDocumentAsync"]
       10 CALL                             R5 2 0
       11 GETUPVAL                         R5 0
       12 MOVE                             R7 R1
       13 NAMECALL                         R5 R5 K0 ["FindScriptDocument"]
       15 CALL                             R5 2 1
       16 MOVE                             R4 R5
       17 MOVE                             R3 R4
       18 JUMPIFNOT                        R3 ; [+19]
       19 NAMECALL                         R4 R3 K2 ["GetLineCount"]
       21 CALL                             R4 1 1
       22 MOVE                             R8 R4
       23 NAMECALL                         R6 R3 K3 ["GetLine"]
       25 CALL                             R6 2 1
       26 FASTCALL1                        STRING_LEN R6 ; [+2]
       27 GETIMPORT                        R5 K6 [string.len]
       29 CALL                             R5 1 1
       30 MOVE                             R8 R2
       31 MOVE                             R9 R4
       32 ADDK                             R10 R5 K7 [1]
       33 MOVE                             R11 R4
       34 ADDK                             R12 R5 K7 [1]
       35 NAMECALL                         R6 R3 K8 ["EditTextAsync"]
       37 CALL                             R6 6 0
       38 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R4 0
        1 MOVE                             R6 R1
        2 NAMECALL                         R4 R4 K0 ["FindScriptDocument"]
        4 CALL                             R4 2 1
        5 JUMPIF                           R4 ; [+11]
        6 GETUPVAL                         R5 0
        7 MOVE                             R7 R1
        8 NAMECALL                         R5 R5 K1 ["OpenScriptDocumentAsync"]
       10 CALL                             R5 2 0
       11 GETUPVAL                         R5 0
       12 MOVE                             R7 R1
       13 NAMECALL                         R5 R5 K0 ["FindScriptDocument"]
       15 CALL                             R5 2 1
       16 MOVE                             R4 R5
       17 MOVE                             R3 R4
       18 JUMPIFNOT                        R3 ; [+19]
       19 NAMECALL                         R4 R3 K2 ["GetLineCount"]
       21 CALL                             R4 1 1
       22 MOVE                             R8 R4
       23 NAMECALL                         R6 R3 K3 ["GetLine"]
       25 CALL                             R6 2 1
       26 FASTCALL1                        STRING_LEN R6 ; [+2]
       27 GETIMPORT                        R5 K6 [string.len]
       29 CALL                             R5 1 1
       30 MOVE                             R8 R2
       31 LOADN                            R9 1
       32 LOADN                            R10 1
       33 MOVE                             R11 R4
       34 MOVE                             R12 R5
       35 NAMECALL                         R6 R3 K7 ["EditTextAsync"]
       37 CALL                             R6 6 0
       38 RETURN                           R0 0

PROTO_7:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R1
        3 FASTCALL1                        STRING_LEN R3 ; [+3]
        4 MOVE                             R5 R3
        5 GETIMPORT                        R4 K2 [string.len]
        7 CALL                             R4 1 1
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K3 ["CharacterLimit"]
       11 JUMPIFNOTLT                      R5 R4 ; [+41]
       13 LENGTH                           R6 R2
       14 GETUPVAL                         R8 0
       15 GETTABLEKS                       R7 R8 K3 ["CharacterLimit"]
       17 MUL                              R5 R6 R7
       18 ADDK                             R4 R5 K4 [1]
       19 LENGTH                           R7 R2
       20 ADDK                             R6 R7 K4 [1]
       21 GETUPVAL                         R8 0
       22 GETTABLEKS                       R7 R8 K3 ["CharacterLimit"]
       24 MUL                              R5 R6 R7
       25 FASTCALL3                        STRING_SUB R3 R4 R5
       27 MOVE                             R9 R3
       28 MOVE                             R10 R4
       29 MOVE                             R11 R5
       30 GETIMPORT                        R8 K6 [string.sub]
       32 CALL                             R8 3 1
       33 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
       35 MOVE                             R7 R2
       36 GETIMPORT                        R6 K9 [table.insert]
       38 CALL                             R6 2 0
       39 ADDK                             R8 R5 K4 [1]
       40 FASTCALL1                        STRING_LEN R3 ; [+3]
       41 MOVE                             R10 R3
       42 GETIMPORT                        R9 K2 [string.len]
       44 CALL                             R9 1 1
       45 FASTCALL3                        STRING_SUB R3 R8 R9
       47 MOVE                             R7 R3
       48 GETIMPORT                        R6 K6 [string.sub]
       50 CALL                             R6 3 1
       51 MOVE                             R3 R6
       52 JUMPBACK                         ; [-50]
       53 FASTCALL2                        TABLE_INSERT R2 R3 ; [+5]
       55 MOVE                             R5 R2
       56 MOVE                             R6 R3
       57 GETIMPORT                        R4 K9 [table.insert]
       59 CALL                             R4 2 0
       60 RETURN                           R2 1

PROTO_8:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["GetScriptBackupChunks"]
        3 CALL                             R2 2 1
        4 LOADK                            R3 K1 [""]
        5 LOADN                            R6 1
        6 LENGTH                           R4 R2
        7 LOADN                            R5 1
        8 FORNPREP                         R4
        9 MOVE                             R7 R3
       10 GETTABLE                         R8 R2 R6
       11 CONCAT                           R3 R7 R8
       12 FORNLOOP                         R4
       13 RETURN                           R3 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["ScriptBackupTag"]
        4 NAMECALL                         R1 R1 K1 ["GetTagged"]
        6 CALL                             R1 2 1
        7 MOVE                             R2 R1
        8 LOADNIL                          R3
        9 LOADNIL                          R4
       10 FORGPREP                         R2
       11 MOVE                             R9 R6
       12 NAMECALL                         R7 R0 K2 ["RemoveScriptBackupChunks"]
       14 CALL                             R7 2 0
       15 GETUPVAL                         R7 0
       16 MOVE                             R9 R6
       17 GETUPVAL                         R11 1
       18 GETTABLEKS                       R10 R11 K0 ["ScriptBackupTag"]
       20 NAMECALL                         R7 R7 K3 ["RemoveTag"]
       22 CALL                             R7 3 0
       23 FORGLOOP                         R2 2 ; [-13]
       25 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R1
        2 GETUPVAL                         R6 1
        3 GETTABLEKS                       R5 R6 K0 ["ScriptBackupTag"]
        5 NAMECALL                         R2 R2 K1 ["AddTag"]
        7 CALL                             R2 3 0
        8 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["ScriptEditorService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["CollectionService"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K7 [script]
       21 LOADK                            R5 K8 ["R15Migrator"]
       22 NAMECALL                         R3 R3 K9 ["FindFirstAncestor"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K11 [require]
       27 GETTABLEKS                       R8 R3 K12 ["Src"]
       29 GETTABLEKS                       R7 R8 K13 ["Util"]
       31 GETTABLEKS                       R6 R7 K14 ["ScriptAnalysis"]
       33 GETTABLEKS                       R5 R6 K15 ["Constants"]
       35 CALL                             R4 1 1
       36 NEWTABLE                         R5 16 0
       38 DUPCLOSURE                       R6 K16 [PROTO_0]
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R0
       41 SETTABLEKS                       R6 R5 K17 ["GetScriptBackupChunks"]
       43 DUPCLOSURE                       R6 K18 [PROTO_1]
       44 CAPTURE                          VAL R4
       45 SETTABLEKS                       R6 R5 K19 ["HasScriptBackup"]
       47 DUPCLOSURE                       R6 K20 [PROTO_2]
       48 CAPTURE                          VAL R4
       49 SETTABLEKS                       R6 R5 K21 ["RemoveScriptBackupChunks"]
       51 DUPCLOSURE                       R6 K22 [PROTO_3]
       52 CAPTURE                          VAL R1
       53 SETTABLEKS                       R6 R5 K23 ["DidSourceChange"]
       55 DUPCLOSURE                       R6 K24 [PROTO_4]
       56 CAPTURE                          VAL R1
       57 DUPCLOSURE                       R7 K25 [PROTO_5]
       58 CAPTURE                          VAL R1
       59 SETTABLEKS                       R7 R5 K26 ["AppendChunk"]
       61 DUPCLOSURE                       R7 K27 [PROTO_6]
       62 CAPTURE                          VAL R1
       63 SETTABLEKS                       R7 R5 K28 ["ReplaceWithChunk"]
       65 DUPCLOSURE                       R7 K29 [PROTO_7]
       66 CAPTURE                          VAL R4
       67 SETTABLEKS                       R7 R5 K30 ["SplitIntoChunks"]
       69 DUPCLOSURE                       R7 K31 [PROTO_8]
       70 SETTABLEKS                       R7 R5 K32 ["GetScriptSourceFromChunks"]
       72 DUPCLOSURE                       R7 K33 [PROTO_9]
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R4
       75 SETTABLEKS                       R7 R5 K34 ["RemoveAllScriptBackups"]
       77 DUPCLOSURE                       R7 K35 [PROTO_10]
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R4
       80 SETTABLEKS                       R7 R5 K36 ["TrackBackup"]
       82 RETURN                           R5 1
