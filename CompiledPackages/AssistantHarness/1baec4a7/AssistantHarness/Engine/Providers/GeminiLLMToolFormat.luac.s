PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["table"] ; [+2]
        7 RETURN                           R0 1
        8 NEWTABLE                         R1 4 0
       10 MOVE                             R2 R0
       11 LOADNIL                          R3
       12 LOADNIL                          R4
       13 FORGPREP                         R2
       14 GETUPVAL                         R8 0
       15 GETTABLE                         R7 R8 R5
       16 JUMPIFNOT                        R7 ; [+1]
       17 SETTABLE                         R6 R1 R5
       18 FORGLOOP                         R2 2 ; [-5]
       20 GETTABLEKS                       R2 R1 K3 ["enum"]
       22 JUMPIFNOT                        R2 ; [+6]
       23 GETTABLEKS                       R2 R1 K0 ["type"]
       25 JUMPIF                           R2 ; [+3]
       26 LOADK                            R2 K4 ["string"]
       27 SETTABLEKS                       R2 R1 K0 ["type"]
       29 GETTABLEKS                       R2 R1 K5 ["properties"]
       31 JUMPIFNOT                        R2 ; [+29]
       32 GETTABLEKS                       R3 R1 K5 ["properties"]
       34 FASTCALL1                        GETMETATABLE R3 ; [+2]
       35 GETIMPORT                        R2 K7 [getmetatable]
       37 CALL                             R2 1 1
       38 NEWTABLE                         R3 0 0
       40 GETTABLEKS                       R4 R1 K5 ["properties"]
       42 LOADNIL                          R5
       43 LOADNIL                          R6
       44 FORGPREP                         R4
       45 GETUPVAL                         R9 1
       46 MOVE                             R10 R8
       47 CALL                             R9 1 1
       48 SETTABLE                         R9 R3 R7
       49 FORGLOOP                         R4 2 ; [-5]
       51 JUMPIFNOT                        R2 ; [+7]
       52 FASTCALL2                        SETMETATABLE R3 R2 ; [+5]
       54 MOVE                             R5 R3
       55 MOVE                             R6 R2
       56 GETIMPORT                        R4 K9 [setmetatable]
       58 CALL                             R4 2 0
       59 SETTABLEKS                       R3 R1 K5 ["properties"]
       61 GETTABLEKS                       R2 R1 K10 ["items"]
       63 JUMPIFNOT                        R2 ; [+6]
       64 GETUPVAL                         R2 1
       65 GETTABLEKS                       R3 R1 K10 ["items"]
       67 CALL                             R2 1 1
       68 SETTABLEKS                       R2 R1 K10 ["items"]
       70 GETTABLEKS                       R2 R1 K11 ["anyOf"]
       72 JUMPIFNOT                        R2 ; [+15]
       73 NEWTABLE                         R2 0 0
       75 GETTABLEKS                       R3 R1 K11 ["anyOf"]
       77 LOADNIL                          R4
       78 LOADNIL                          R5
       79 FORGPREP                         R3
       80 GETUPVAL                         R8 1
       81 MOVE                             R9 R7
       82 CALL                             R8 1 1
       83 SETTABLE                         R8 R2 R6
       84 FORGLOOP                         R3 2 ; [-5]
       86 SETTABLEKS                       R2 R1 K11 ["anyOf"]
       88 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 DUPTABLE                         R9 K3 [{"name", "description", "parameters"}]
        7 GETTABLEKS                       R10 R6 K0 ["name"]
        9 SETTABLEKS                       R10 R9 K0 ["name"]
       11 GETTABLEKS                       R10 R6 K1 ["description"]
       13 SETTABLEKS                       R10 R9 K1 ["description"]
       15 GETUPVAL                         R10 0
       16 GETTABLEKS                       R11 R6 K4 ["inputSchema"]
       18 CALL                             R10 1 1
       19 SETTABLEKS                       R10 R9 K2 ["parameters"]
       21 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       23 MOVE                             R8 R1
       24 GETIMPORT                        R7 K7 [table.insert]
       26 CALL                             R7 2 0
       27 FORGLOOP                         R2 2 ; [-22]
       29 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantHarness"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Engine"]
       11 GETTABLEKS                       R2 R2 K7 ["LLMFormattedToolTypes"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["ModelContextProtocol"]
       20 CALL                             R2 1 1
       21 DUPTABLE                         R3 K33 [{["type"] = True, ["format"] = True, ["title"] = True, ["description"] = True, ["nullable"] = True, ["enum"] = True, ["maxItems"] = True, ["minItems"] = True, ["properties"] = True, ["required"] = True, ["minProperties"] = True, ["maxProperties"] = True, ["minLength"] = True, ["maxLength"] = True, ["pattern"] = True, ["example"] = True, ["anyOf"] = True, ["propertyOrdering"] = True, ["default"] = True, ["items"] = True, ["minimum"] = True, ["maximum"] = True}]
       22 DUPCLOSURE                       R4 K34 [PROTO_0]
       23 CAPTURE                          VAL R3
       24 CAPTURE                          VAL R4
       25 DUPCLOSURE                       R5 K35 [PROTO_1]
       26 CAPTURE                          VAL R4
       27 DUPTABLE                         R6 K38 [{"formatTools", "toGeminiSchema"}]
       28 SETTABLEKS                       R5 R6 K36 ["formatTools"]
       30 SETTABLEKS                       R4 R6 K37 ["toGeminiSchema"]
       32 RETURN                           R6 1
