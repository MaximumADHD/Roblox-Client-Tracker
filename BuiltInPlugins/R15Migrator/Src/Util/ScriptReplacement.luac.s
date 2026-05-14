PROTO_0:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETUPVAL                         R2 0
        3 MOVE                             R4 R0
        4 NAMECALL                         R2 R2 K0 ["OpenScriptDocumentAsync"]
        6 CALL                             R2 2 0
        7 GETUPVAL                         R2 0
        8 MOVE                             R4 R0
        9 NAMECALL                         R2 R2 K1 ["FindScriptDocument"]
       11 CALL                             R2 2 1
       12 JUMPIFNOT                        R2 ; [+1]
       13 JUMPIF                           R1 ; [+1]
       14 RETURN                           R0 0
       15 GETTABLEKS                       R5 R1 K2 ["startLine"]
       17 GETTABLEKS                       R6 R1 K3 ["startCharacter"]
       19 GETTABLEKS                       R7 R1 K4 ["endLine"]
       21 GETTABLEKS                       R8 R1 K5 ["endCharacter"]
       23 NAMECALL                         R3 R2 K6 ["ForceSetSelectionAsync"]
       25 CALL                             R3 5 0
       26 RETURN                           R2 1

PROTO_1:
        0 JUMPIFNOT                        R0 ; [+1]
        1 JUMPIF                           R2 ; [+1]
        2 RETURN                           R0 0
        3 MOVE                             R5 R0
        4 NAMECALL                         R3 R2 K0 ["getScriptInstanceFromGUID"]
        6 CALL                             R3 2 1
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K1 ["goToScriptInstance"]
       10 MOVE                             R5 R3
       11 MOVE                             R6 R1
       12 CALL                             R4 2 -1
       13 RETURN                           R4 -1

PROTO_2:
        0 JUMPIFNOT                        R0 ; [+1]
        1 JUMPIF                           R1 ; [+2]
        2 LOADB                            R3 0
        3 RETURN                           R3 1
        4 MOVE                             R5 R2
        5 GETTABLEKS                       R6 R1 K0 ["startLine"]
        7 GETTABLEKS                       R7 R1 K1 ["startCharacter"]
        9 GETTABLEKS                       R8 R1 K2 ["endLine"]
       11 GETTABLEKS                       R9 R1 K3 ["endCharacter"]
       13 NAMECALL                         R3 R0 K4 ["EditTextAsync"]
       15 CALL                             R3 6 0
       16 LOADB                            R3 1
       17 RETURN                           R3 1

PROTO_3:
        0 GETTABLEKS                       R6 R4 K0 ["_list"]
        2 LOADNIL                          R7
        3 LOADNIL                          R8
        4 FORGPREP                         R6
        5 GETTABLEKS                       R11 R10 K1 ["range"]
        7 JUMPIFNOTEQ                      R1 R11 ; [+8]
        9 LOADK                            R13 K2 ["onScriptAutoReplacement"]
       10 NAMECALL                         R11 R5 K3 ["getHandler"]
       12 CALL                             R11 2 1
       13 GETTABLEKS                       R12 R10 K4 ["issueType"]
       15 CALL                             R11 1 0
       16 FORGLOOP                         R6 2 ; [-12]
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R6 R6 K5 ["goToScript"]
       21 MOVE                             R7 R0
       22 MOVE                             R8 R1
       23 MOVE                             R9 R2
       24 CALL                             R6 3 1
       25 JUMPIFNOT                        R6 ; [+1]
       26 JUMPIF                           R1 ; [+2]
       27 LOADB                            R7 0
       28 RETURN                           R7 1
       29 MOVE                             R10 R3
       30 GETTABLEKS                       R11 R1 K6 ["startLine"]
       32 GETTABLEKS                       R12 R1 K7 ["startCharacter"]
       34 GETTABLEKS                       R13 R1 K8 ["endLine"]
       36 GETTABLEKS                       R14 R1 K9 ["endCharacter"]
       38 NAMECALL                         R8 R6 K10 ["EditTextAsync"]
       40 CALL                             R8 6 0
       41 LOADB                            R7 1
       42 RETURN                           R7 1

PROTO_4:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 0
        4 MOVE                             R4 R0
        5 LOADNIL                          R5
        6 LOADNIL                          R6
        7 FORGPREP                         R4
        8 GETTABLEKS                       R11 R8 K0 ["scriptId"]
       10 NAMECALL                         R9 R1 K1 ["getScriptInstanceFromGUID"]
       12 CALL                             R9 2 1
       13 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
       15 MOVE                             R11 R3
       16 MOVE                             R12 R9
       17 GETIMPORT                        R10 K4 [table.insert]
       19 CALL                             R10 2 0
       20 GETUPVAL                         R10 0
       21 MOVE                             R12 R9
       22 NAMECALL                         R10 R10 K5 ["GetScriptSourceFromChunks"]
       24 CALL                             R10 2 1
       25 FASTCALL2                        TABLE_INSERT R2 R10 ; [+5]
       27 MOVE                             R12 R2
       28 MOVE                             R13 R10
       29 GETIMPORT                        R11 K4 [table.insert]
       31 CALL                             R11 2 0
       32 FORGLOOP                         R4 2 ; [-25]
       34 GETUPVAL                         R4 1
       35 MOVE                             R6 R2
       36 MOVE                             R7 R3
       37 NAMECALL                         R4 R4 K6 ["ShowSourceDiffsAgainstCurrent"]
       39 CALL                             R4 3 0
       40 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ScriptEditorService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["DraftsService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 LOADK                            R4 K7 ["R15Migrator"]
       16 NAMECALL                         R2 R2 K8 ["FindFirstAncestor"]
       18 CALL                             R2 2 1
       19 GETTABLEKS                       R3 R2 K9 ["Src"]
       21 GETTABLEKS                       R3 R3 K10 ["Util"]
       23 GETIMPORT                        R4 K12 [require]
       25 GETTABLEKS                       R5 R3 K13 ["ScriptAnalysis"]
       27 GETTABLEKS                       R5 R5 K14 ["Constants"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K12 [require]
       32 GETTABLEKS                       R6 R3 K15 ["ScriptHistory"]
       34 GETTABLEKS                       R6 R6 K16 ["ChunkUtil"]
       36 CALL                             R5 1 1
       37 DUPTABLE                         R6 K18 [{"UNASSIGNED"}]
       38 LOADK                            R7 K19 ["Unassigned"]
       39 SETTABLEKS                       R7 R6 K17 ["UNASSIGNED"]
       41 DUPCLOSURE                       R7 K20 [PROTO_0]
       42 CAPTURE                          VAL R0
       43 SETTABLEKS                       R7 R6 K21 ["goToScriptInstance"]
       45 DUPCLOSURE                       R7 K22 [PROTO_1]
       46 CAPTURE                          VAL R6
       47 SETTABLEKS                       R7 R6 K23 ["goToScript"]
       49 DUPCLOSURE                       R7 K24 [PROTO_2]
       50 DUPCLOSURE                       R8 K25 [PROTO_3]
       51 CAPTURE                          VAL R6
       52 SETTABLEKS                       R8 R6 K26 ["replaceWithSuggestion"]
       54 DUPCLOSURE                       R8 K27 [PROTO_4]
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R1
       57 SETTABLEKS                       R8 R6 K28 ["diffScripts"]
       59 RETURN                           R6 1
