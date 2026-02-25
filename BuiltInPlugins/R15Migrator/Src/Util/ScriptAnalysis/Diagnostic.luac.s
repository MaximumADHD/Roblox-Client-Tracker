PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["range"]
        2 GETTABLEKS                       R3 R1 K0 ["range"]
        4 JUMPIFNOTEQ                      R2 R3 ; [+21]
        6 GETTABLEKS                       R2 R0 K1 ["message"]
        8 GETTABLEKS                       R3 R1 K1 ["message"]
       10 JUMPIFNOTEQ                      R2 R3 ; [+15]
       12 GETTABLEKS                       R3 R0 K2 ["suggestions"]
       14 LENGTH                           R2 R3
       15 GETTABLEKS                       R4 R1 K2 ["suggestions"]
       17 LENGTH                           R3 R4
       18 JUMPIFNOTEQ                      R2 R3 ; [+7]
       20 GETTABLEKS                       R2 R0 K3 ["issueType"]
       22 GETTABLEKS                       R3 R1 K3 ["issueType"]
       24 JUMPIFEQ                         R2 R3 ; [+3]
       26 LOADB                            R2 0
       27 RETURN                           R2 1
       28 GETTABLEKS                       R2 R0 K2 ["suggestions"]
       30 LOADNIL                          R3
       31 LOADNIL                          R4
       32 FORGPREP                         R2
       33 GETTABLEKS                       R8 R1 K2 ["suggestions"]
       35 GETTABLE                         R7 R8 R5
       36 JUMPIFEQ                         R6 R7 ; [+3]
       38 LOADB                            R7 0
       39 RETURN                           R7 1
       40 FORGLOOP                         R2 2 ; [-8]
       42 LOADB                            R2 1
       43 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["range"]
        2 GETTABLEKS                       R4 R1 K0 ["range"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_2:
        0 DUPTABLE                         R9 K9 [{"diagnosticId", "range", "code", "codeDescription", "instanceName", "message", "severity", "suggestions", "issueType"}]
        1 GETUPVAL                         R10 0
        2 LOADB                            R12 1
        3 NAMECALL                         R10 R10 K10 ["GenerateGUID"]
        5 CALL                             R10 2 1
        6 SETTABLEKS                       R10 R9 K0 ["diagnosticId"]
        8 SETTABLEKS                       R0 R9 K1 ["range"]
       10 SETTABLEKS                       R1 R9 K2 ["code"]
       12 SETTABLEKS                       R6 R9 K3 ["codeDescription"]
       14 SETTABLEKS                       R2 R9 K4 ["instanceName"]
       16 SETTABLEKS                       R3 R9 K5 ["message"]
       18 SETTABLEKS                       R4 R9 K6 ["severity"]
       20 SETTABLEKS                       R5 R9 K7 ["suggestions"]
       22 SETTABLEKS                       R7 R9 K8 ["issueType"]
       24 GETUPVAL                         R10 1
       25 FASTCALL2                        SETMETATABLE R9 R10 ; [+3]
       27 GETIMPORT                        R8 K12 [setmetatable]
       29 CALL                             R8 2 1
       30 RETURN                           R8 1

PROTO_3:
        0 DUPTABLE                         R1 K5 [{"range", "code", "message", "severity", "codeDescription"}]
        1 GETTABLEKS                       R2 R0 K0 ["range"]
        3 NAMECALL                         R2 R2 K6 ["GetDataForLinter"]
        5 CALL                             R2 1 1
        6 SETTABLEKS                       R2 R1 K0 ["range"]
        8 GETTABLEKS                       R2 R0 K1 ["code"]
       10 SETTABLEKS                       R2 R1 K1 ["code"]
       12 GETTABLEKS                       R2 R0 K2 ["message"]
       14 SETTABLEKS                       R2 R1 K2 ["message"]
       16 GETTABLEKS                       R2 R0 K3 ["severity"]
       18 SETTABLEKS                       R2 R1 K3 ["severity"]
       20 GETTABLEKS                       R2 R0 K4 ["codeDescription"]
       22 SETTABLEKS                       R2 R1 K4 ["codeDescription"]
       24 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R4 R0 K8 ["Src"]
       15 GETTABLEKS                       R3 R4 K9 ["Util"]
       17 GETTABLEKS                       R2 R3 K10 ["ScriptAnalysis"]
       19 GETIMPORT                        R3 K12 [require]
       21 GETTABLEKS                       R4 R2 K13 ["Constants"]
       23 CALL                             R3 1 1
       24 NEWTABLE                         R4 8 0
       26 SETTABLEKS                       R4 R4 K14 ["__index"]
       28 DUPCLOSURE                       R5 K15 [PROTO_0]
       29 SETTABLEKS                       R5 R4 K16 ["__eq"]
       31 DUPCLOSURE                       R5 K17 [PROTO_1]
       32 SETTABLEKS                       R5 R4 K18 ["__lt"]
       34 DUPCLOSURE                       R5 K19 [PROTO_2]
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R4
       37 SETTABLEKS                       R5 R4 K20 ["new"]
       39 DUPCLOSURE                       R5 K21 [PROTO_3]
       40 SETTABLEKS                       R5 R4 K22 ["GetDataForLinter"]
       42 RETURN                           R4 1
