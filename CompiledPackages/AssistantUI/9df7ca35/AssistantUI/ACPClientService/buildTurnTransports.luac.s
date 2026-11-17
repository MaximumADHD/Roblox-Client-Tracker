PROTO_0:
        0 LOADB                            R1 0
        1 GETIMPORT                        R2 K2 [table.create]
        3 GETTABLEKS                       R4 R0 K3 ["messages"]
        5 LENGTH                           R3 R4
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R3 R0 K3 ["messages"]
        9 LOADNIL                          R4
       10 LOADNIL                          R5
       11 FORGPREP                         R3
       12 GETIMPORT                        R8 K5 [table.clone]
       14 GETTABLEKS                       R9 R7 K6 ["content"]
       16 CALL                             R8 1 1
       17 GETIMPORT                        R9 K8 [table.clear]
       19 MOVE                             R10 R8
       20 CALL                             R9 1 0
       21 LOADB                            R9 0
       22 GETTABLEKS                       R10 R7 K6 ["content"]
       24 LOADNIL                          R11
       25 LOADNIL                          R12
       26 FORGPREP                         R10
       27 LOADB                            R15 0
       28 GETTABLEKS                       R16 R0 K9 ["selectedProvider"]
       30 JUMPIFNOTEQKS                    R16 K10 ["Studio"] ; [+7]
       32 GETTABLEKS                       R16 R14 K11 ["type"]
       34 JUMPIFEQKS                       R16 K12 ["image"] ; [+2]
       36 LOADB                            R15 0 +1
       37 LOADB                            R15 1
       38 JUMPIFNOT                        R15 ; [+3]
       39 LOADB                            R1 1
       40 LOADB                            R9 1
       41 JUMP                             ; [+7]
       42 FASTCALL2                        TABLE_INSERT R8 R14 ; [+5]
       44 MOVE                             R17 R8
       45 MOVE                             R18 R14
       46 GETIMPORT                        R16 K14 [table.insert]
       48 CALL                             R16 2 0
       49 FORGLOOP                         R10 2 ; [-23]
       51 JUMPIFNOT                        R9 ; [+14]
       52 GETIMPORT                        R10 K5 [table.clone]
       54 MOVE                             R11 R7
       55 CALL                             R10 1 1
       56 SETTABLEKS                       R8 R10 K6 ["content"]
       58 FASTCALL2                        TABLE_INSERT R2 R10 ; [+5]
       60 MOVE                             R12 R2
       61 MOVE                             R13 R10
       62 GETIMPORT                        R11 K14 [table.insert]
       64 CALL                             R11 2 0
       65 JUMP                             ; [+7]
       66 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       68 MOVE                             R11 R2
       69 MOVE                             R12 R7
       70 GETIMPORT                        R10 K14 [table.insert]
       72 CALL                             R10 2 0
       73 FORGLOOP                         R3 2 ; [-62]
       75 JUMPIF                           R1 ; [+1]
       76 RETURN                           R0 1
       77 GETIMPORT                        R3 K5 [table.clone]
       79 MOVE                             R4 R0
       80 CALL                             R3 1 1
       81 SETTABLEKS                       R2 R3 K3 ["messages"]
       83 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getRequestLLM"]
        3 CALL                             R2 0 1
        4 JUMPIFNOT                        R2 ; [+7]
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R0
        7 CALL                             R3 1 1
        8 MOVE                             R4 R2
        9 MOVE                             R5 R3
       10 MOVE                             R6 R1
       11 CALL                             R4 2 0
       12 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K3 [{"requestLLM", "maxToolCalls", "timeoutMs"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["requestLLM"]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K4 ["FIntMCPAssistantMaxToolCalls"]
        9 SETTABLEKS                       R2 R1 K1 ["maxToolCalls"]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K5 ["FIntAssistantProcessEventTimeoutMS"]
       14 SETTABLEKS                       R2 R1 K2 ["timeoutMs"]
       16 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantHarness"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Flags"]
       18 CALL                             R2 1 1
       19 DUPCLOSURE                       R3 K9 [PROTO_0]
       20 DUPCLOSURE                       R4 K10 [PROTO_2]
       21 CAPTURE                          VAL R3
       22 CAPTURE                          VAL R2
       23 RETURN                           R4 1
