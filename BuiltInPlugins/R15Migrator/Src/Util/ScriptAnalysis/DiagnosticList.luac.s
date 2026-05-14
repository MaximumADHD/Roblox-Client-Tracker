PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["_list"]
        2 LENGTH                           R2 R3
        3 GETTABLEKS                       R4 R1 K0 ["_list"]
        5 LENGTH                           R3 R4
        6 JUMPIFEQ                         R2 R3 ; [+3]
        8 LOADB                            R2 0
        9 RETURN                           R2 1
       10 GETTABLEKS                       R2 R0 K0 ["_list"]
       12 LOADNIL                          R3
       13 LOADNIL                          R4
       14 FORGPREP                         R2
       15 GETTABLEKS                       R8 R1 K0 ["_list"]
       17 GETTABLE                         R7 R8 R5
       18 JUMPIFEQ                         R6 R7 ; [+3]
       20 LOADB                            R7 0
       21 RETURN                           R7 1
       22 FORGLOOP                         R2 2 ; [-8]
       24 LOADB                            R2 1
       25 RETURN                           R2 1

PROTO_1:
        0 DUPTABLE                         R1 K1 [{"_list"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["_list"]
        5 GETUPVAL                         R2 0
        6 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        8 GETIMPORT                        R0 K3 [setmetatable]
       10 CALL                             R0 2 1
       11 RETURN                           R0 1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["_list"]
        2 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
        4 MOVE                             R4 R1
        5 GETIMPORT                        R2 K3 [table.insert]
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["_list"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 MOVE                             R8 R1
        8 NAMECALL                         R9 R6 K1 ["GetDataForLinter"]
       10 CALL                             R9 1 -1
       11 FASTCALL                         TABLE_INSERT ; [+2]
       12 GETIMPORT                        R7 K4 [table.insert]
       14 CALL                             R7 -1 0
       15 FORGLOOP                         R2 2 ; [-9]
       17 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["_list"]
        2 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["_list"]
        2 LENGTH                           R1 R2
        3 RETURN                           R1 1

PROTO_6:
        0 LOADN                            R2 0
        1 GETTABLEKS                       R3 R0 K0 ["_list"]
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 JUMPIFNOT                        R1 ; [+4]
        7 GETTABLEKS                       R8 R7 K1 ["instanceName"]
        9 JUMPIFNOTEQ                      R1 R8 ; [+15]
       11 GETTABLEKS                       R8 R7 K2 ["severity"]
       13 GETIMPORT                        R9 K4 [Enum]
       15 GETTABLEKS                       R9 R9 K5 ["Severity"]
       17 GETTABLEKS                       R9 R9 K6 ["Error"]
       19 JUMPIFNOTEQ                      R8 R9 ; [+5]
       21 GETTABLEKS                       R8 R7 K7 ["resolution"]
       23 JUMPIF                           R8 ; [+1]
       24 ADDK                             R2 R2 K8 [1]
       25 FORGLOOP                         R3 2 ; [-20]
       27 RETURN                           R2 1

PROTO_7:
        0 LOADN                            R2 0
        1 GETTABLEKS                       R3 R0 K0 ["_list"]
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 JUMPIFNOT                        R1 ; [+4]
        7 GETTABLEKS                       R8 R7 K1 ["instanceName"]
        9 JUMPIFNOTEQ                      R1 R8 ; [+15]
       11 GETTABLEKS                       R8 R7 K2 ["severity"]
       13 GETIMPORT                        R9 K4 [Enum]
       15 GETTABLEKS                       R9 R9 K5 ["Severity"]
       17 GETTABLEKS                       R9 R9 K6 ["Warning"]
       19 JUMPIFNOTEQ                      R8 R9 ; [+5]
       21 GETTABLEKS                       R8 R7 K7 ["resolution"]
       23 JUMPIF                           R8 ; [+1]
       24 ADDK                             R2 R2 K8 [1]
       25 FORGLOOP                         R3 2 ; [-20]
       27 RETURN                           R2 1

PROTO_8:
        0 NAMECALL                         R2 R0 K0 ["ErrorCount"]
        2 CALL                             R2 1 1
        3 LOADN                            R3 0
        4 JUMPIFLT                         R3 R2 ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

PROTO_9:
        0 NAMECALL                         R2 R0 K0 ["WarningCount"]
        2 CALL                             R2 1 1
        3 LOADN                            R3 0
        4 JUMPIFLT                         R3 R2 ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R4 R0 K1 ["_list"]
        7 CALL                             R3 1 1
        8 SETTABLEKS                       R3 R2 K1 ["_list"]
       10 GETTABLEKS                       R3 R1 K1 ["_list"]
       12 LOADNIL                          R4
       13 LOADNIL                          R5
       14 FORGPREP                         R3
       15 LOADB                            R8 0
       16 GETTABLEKS                       R9 R2 K1 ["_list"]
       18 LOADNIL                          R10
       19 LOADNIL                          R11
       20 FORGPREP                         R9
       21 GETTABLEKS                       R14 R7 K2 ["range"]
       23 GETTABLEKS                       R15 R13 K2 ["range"]
       25 JUMPIFNOTEQ                      R14 R15 ; [+15]
       27 GETTABLEKS                       R14 R7 K3 ["instanceName"]
       29 GETTABLEKS                       R15 R13 K3 ["instanceName"]
       31 JUMPIFNOTEQ                      R14 R15 ; [+9]
       33 GETTABLEKS                       R14 R7 K4 ["issueType"]
       35 GETTABLEKS                       R15 R13 K4 ["issueType"]
       37 JUMPIFNOTEQ                      R14 R15 ; [+3]
       39 LOADB                            R8 1
       40 JUMP                             ; [+2]
       41 FORGLOOP                         R9 2 ; [-21]
       43 JUMPIF                           R8 ; [+4]
       44 MOVE                             R11 R7
       45 NAMECALL                         R9 R2 K5 ["AddDiagnostic"]
       47 CALL                             R9 2 0
       48 FORGLOOP                         R3 2 ; [-34]
       50 GETIMPORT                        R3 K8 [table.sort]
       52 GETTABLEKS                       R4 R2 K1 ["_list"]
       54 CALL                             R3 1 0
       55 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Util"]
       16 GETTABLEKS                       R2 R2 K9 ["deepCopy"]
       18 GETTABLEKS                       R3 R0 K10 ["Src"]
       20 GETTABLEKS                       R3 R3 K8 ["Util"]
       22 GETIMPORT                        R4 K5 [require]
       24 GETTABLEKS                       R5 R3 K11 ["ScriptAnalysis"]
       26 GETTABLEKS                       R5 R5 K12 ["Constants"]
       28 CALL                             R4 1 1
       29 NEWTABLE                         R5 16 0
       31 SETTABLEKS                       R5 R5 K13 ["__index"]
       33 DUPCLOSURE                       R6 K14 [PROTO_0]
       34 SETTABLEKS                       R6 R5 K15 ["__eq"]
       36 DUPCLOSURE                       R6 K16 [PROTO_1]
       37 CAPTURE                          VAL R5
       38 SETTABLEKS                       R6 R5 K17 ["new"]
       40 DUPCLOSURE                       R6 K18 [PROTO_2]
       41 SETTABLEKS                       R6 R5 K19 ["AddDiagnostic"]
       43 DUPCLOSURE                       R6 K20 [PROTO_3]
       44 SETTABLEKS                       R6 R5 K21 ["GetDataForLinter"]
       46 DUPCLOSURE                       R6 K22 [PROTO_4]
       47 SETTABLEKS                       R6 R5 K23 ["Get"]
       49 DUPCLOSURE                       R6 K24 [PROTO_5]
       50 SETTABLEKS                       R6 R5 K25 ["GetSize"]
       52 DUPCLOSURE                       R6 K26 [PROTO_6]
       53 SETTABLEKS                       R6 R5 K27 ["ErrorCount"]
       55 DUPCLOSURE                       R6 K28 [PROTO_7]
       56 SETTABLEKS                       R6 R5 K29 ["WarningCount"]
       58 DUPCLOSURE                       R6 K30 [PROTO_8]
       59 SETTABLEKS                       R6 R5 K31 ["HasErrors"]
       61 DUPCLOSURE                       R6 K32 [PROTO_9]
       62 SETTABLEKS                       R6 R5 K33 ["HasWarnings"]
       64 DUPCLOSURE                       R6 K34 [PROTO_10]
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R2
       67 SETTABLEKS                       R6 R5 K35 ["Merge"]
       69 RETURN                           R5 1
