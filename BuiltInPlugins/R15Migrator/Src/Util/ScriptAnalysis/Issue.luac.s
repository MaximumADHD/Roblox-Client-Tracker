PROTO_0:
        0 DUPTABLE                         R8 K5 [{"InstanceName", "VariableName", "Type", "Range", "Suggestions"}]
        1 SETTABLEKS                       R0 R8 K0 ["InstanceName"]
        3 SETTABLEKS                       R1 R8 K1 ["VariableName"]
        5 SETTABLEKS                       R2 R8 K2 ["Type"]
        7 GETUPVAL                         R9 0
        8 MOVE                             R10 R3
        9 MOVE                             R11 R4
       10 MOVE                             R12 R5
       11 CALL                             R9 3 1
       12 SETTABLEKS                       R9 R8 K3 ["Range"]
       14 SETTABLEKS                       R6 R8 K4 ["Suggestions"]
       16 GETUPVAL                         R9 1
       17 FASTCALL2                        SETMETATABLE R8 R9 ; [+3]
       19 GETIMPORT                        R7 K7 [setmetatable]
       21 CALL                             R7 2 1
       22 RETURN                           R7 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["HumanoidKey"]
        3 JUMPIFNOTEQ                      R2 R4 ; [+13]
        5 LOADK                            R6 K1 ["ScriptAnalysis"]
        6 LOADK                            R7 K2 ["HumanoidWarning"]
        7 DUPTABLE                         R8 K5 [{"name", "suggestion"}]
        8 SETTABLEKS                       R0 R8 K3 ["name"]
       10 GETTABLEN                        R9 R1 1
       11 SETTABLEKS                       R9 R8 K4 ["suggestion"]
       13 NAMECALL                         R4 R3 K6 ["getText"]
       15 CALL                             R4 4 -1
       16 RETURN                           R4 -1
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K7 ["RigTypeKey"]
       20 JUMPIFNOTEQ                      R2 R4 ; [+13]
       22 LOADK                            R6 K1 ["ScriptAnalysis"]
       23 LOADK                            R7 K8 ["RigTypeWarning"]
       24 DUPTABLE                         R8 K5 [{"name", "suggestion"}]
       25 SETTABLEKS                       R0 R8 K3 ["name"]
       27 GETTABLEN                        R9 R1 1
       28 SETTABLEKS                       R9 R8 K4 ["suggestion"]
       30 NAMECALL                         R4 R3 K6 ["getText"]
       32 CALL                             R4 4 -1
       33 RETURN                           R4 -1
       34 GETUPVAL                         R4 1
       35 GETTABLEKS                       R4 R4 K9 ["ReferenceKey"]
       37 JUMPIFNOTEQ                      R2 R4 ; [+11]
       39 LOADK                            R6 K1 ["ScriptAnalysis"]
       40 LOADK                            R7 K10 ["VariableReferenceWarning"]
       41 DUPTABLE                         R8 K11 [{"suggestion"}]
       42 GETTABLEN                        R9 R1 1
       43 SETTABLEKS                       R9 R8 K4 ["suggestion"]
       45 NAMECALL                         R4 R3 K6 ["getText"]
       47 CALL                             R4 4 -1
       48 RETURN                           R4 -1
       49 LOADK                            R6 K1 ["ScriptAnalysis"]
       50 LOADK                            R7 K12 ["R6ReferenceError"]
       51 DUPTABLE                         R8 K13 [{"name"}]
       52 SETTABLEKS                       R0 R8 K3 ["name"]
       54 NAMECALL                         R4 R3 K6 ["getText"]
       56 CALL                             R4 4 1
       57 RETURN                           R4 1

PROTO_2:
        0 LOADB                            R1 1
        1 GETTABLEKS                       R2 R0 K0 ["Type"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["HumanoidKey"]
        6 JUMPIFEQ                         R2 R3 ; [+18]
        8 LOADB                            R1 1
        9 GETTABLEKS                       R2 R0 K0 ["Type"]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K2 ["RigTypeKey"]
       14 JUMPIFEQ                         R2 R3 ; [+10]
       16 GETTABLEKS                       R2 R0 K0 ["Type"]
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R3 R3 K3 ["ReferenceKey"]
       21 JUMPIFEQ                         R2 R3 ; [+2]
       23 LOADB                            R1 0 +1
       24 LOADB                            R1 1
       25 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["Type"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["AnimationKey"]
        5 JUMPIFNOTEQ                      R2 R3 ; [+36]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["new"]
       10 GETTABLEKS                       R3 R0 K3 ["Range"]
       12 LOADK                            R6 K4 ["ScriptAnalysis"]
       13 LOADK                            R7 K5 ["AnimationWarningCode"]
       14 NAMECALL                         R4 R1 K6 ["getText"]
       16 CALL                             R4 3 1
       17 GETTABLEKS                       R5 R0 K7 ["InstanceName"]
       19 LOADK                            R8 K4 ["ScriptAnalysis"]
       20 LOADK                            R9 K8 ["AnimationWarning"]
       21 NAMECALL                         R6 R1 K6 ["getText"]
       23 CALL                             R6 3 1
       24 GETIMPORT                        R7 K10 [Enum]
       26 GETTABLEKS                       R7 R7 K11 ["Severity"]
       28 GETTABLEKS                       R7 R7 K12 ["Error"]
       30 GETTABLEKS                       R8 R0 K13 ["Suggestions"]
       32 DUPTABLE                         R9 K15 [{"href"}]
       33 GETUPVAL                         R10 2
       34 GETTABLEKS                       R10 R10 K16 ["R6Error"]
       36 SETTABLEKS                       R10 R9 K14 ["href"]
       38 GETTABLEKS                       R10 R0 K0 ["Type"]
       40 CALL                             R2 8 -1
       41 RETURN                           R2 -1
       42 GETUPVAL                         R2 1
       43 GETTABLEKS                       R2 R2 K2 ["new"]
       45 GETTABLEKS                       R3 R0 K3 ["Range"]
       47 LOADK                            R6 K4 ["ScriptAnalysis"]
       48 LOADK                            R7 K17 ["R6ScriptErrorCode"]
       49 NAMECALL                         R4 R1 K6 ["getText"]
       51 CALL                             R4 3 1
       52 GETTABLEKS                       R5 R0 K7 ["InstanceName"]
       54 GETUPVAL                         R6 3
       55 GETTABLEKS                       R7 R0 K7 ["InstanceName"]
       57 GETTABLEKS                       R8 R0 K13 ["Suggestions"]
       59 GETTABLEKS                       R9 R0 K0 ["Type"]
       61 MOVE                             R10 R1
       62 CALL                             R6 4 1
       63 GETIMPORT                        R7 K10 [Enum]
       65 GETTABLEKS                       R7 R7 K11 ["Severity"]
       67 GETTABLEKS                       R7 R7 K12 ["Error"]
       69 NAMECALL                         R9 R0 K18 ["IsWarning"]
       71 CALL                             R9 1 1
       72 JUMPIFNOT                        R9 ; [+3]
       73 NEWTABLE                         R8 0 0
       75 JUMP                             ; [+2]
       76 GETTABLEKS                       R8 R0 K13 ["Suggestions"]
       78 DUPTABLE                         R9 K15 [{"href"}]
       79 GETUPVAL                         R10 2
       80 GETTABLEKS                       R10 R10 K16 ["R6Error"]
       82 SETTABLEKS                       R10 R9 K14 ["href"]
       84 GETTABLEKS                       R10 R0 K0 ["Type"]
       86 CALL                             R2 8 -1
       87 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["DocumentationUrls"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R0 K6 ["Src"]
       18 GETTABLEKS                       R2 R2 K7 ["Util"]
       20 GETTABLEKS                       R2 R2 K9 ["ScriptAnalysis"]
       22 GETIMPORT                        R3 K5 [require]
       24 GETTABLEKS                       R4 R2 K10 ["Constants"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R5 R2 K11 ["Diagnostic"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R2 K12 ["R6Info"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K5 [require]
       39 GETTABLEKS                       R7 R2 K13 ["buildRange"]
       41 CALL                             R6 1 1
       42 NEWTABLE                         R7 4 0
       44 SETTABLEKS                       R7 R7 K14 ["__index"]
       46 DUPCLOSURE                       R8 K15 [PROTO_0]
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R7
       49 SETTABLEKS                       R8 R7 K16 ["new"]
       51 DUPCLOSURE                       R8 K17 [PROTO_1]
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R3
       54 DUPCLOSURE                       R9 K18 [PROTO_2]
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R3
       57 SETTABLEKS                       R9 R7 K19 ["IsWarning"]
       59 DUPCLOSURE                       R9 K20 [PROTO_3]
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R8
       64 SETTABLEKS                       R9 R7 K21 ["ConvertToDiagnostic"]
       66 RETURN                           R7 1
