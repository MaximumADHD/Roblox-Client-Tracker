PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R1
        2 JUMPIFEQKB                       R3 TRUE ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 RETURN                           R2 1

PROTO_1:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["table"] ; [+2]
        7 RETURN                           R0 1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K3 ["pick"]
       11 MOVE                             R2 R0
       12 DUPCLOSURE                       R3 K4 [PROTO_0]
       13 CAPTURE                          UPVAL U1
       14 CALL                             R1 2 1
       15 GETTABLEKS                       R2 R1 K5 ["enum"]
       17 JUMPIFNOT                        R2 ; [+6]
       18 GETTABLEKS                       R2 R1 K0 ["type"]
       20 JUMPIF                           R2 ; [+3]
       21 LOADK                            R2 K6 ["string"]
       22 SETTABLEKS                       R2 R1 K0 ["type"]
       24 GETTABLEKS                       R2 R1 K7 ["properties"]
       26 JUMPIFNOT                        R2 ; [+29]
       27 GETTABLEKS                       R3 R1 K7 ["properties"]
       29 FASTCALL1                        GETMETATABLE R3 ; [+2]
       30 GETIMPORT                        R2 K9 [getmetatable]
       32 CALL                             R2 1 1
       33 NEWTABLE                         R3 0 0
       35 GETTABLEKS                       R4 R1 K7 ["properties"]
       37 LOADNIL                          R5
       38 LOADNIL                          R6
       39 FORGPREP                         R4
       40 GETUPVAL                         R9 2
       41 MOVE                             R10 R8
       42 CALL                             R9 1 1
       43 SETTABLE                         R9 R3 R7
       44 FORGLOOP                         R4 2 ; [-5]
       46 JUMPIFNOT                        R2 ; [+7]
       47 FASTCALL2                        SETMETATABLE R3 R2 ; [+5]
       49 MOVE                             R5 R3
       50 MOVE                             R6 R2
       51 GETIMPORT                        R4 K11 [setmetatable]
       53 CALL                             R4 2 0
       54 SETTABLEKS                       R3 R1 K7 ["properties"]
       56 GETTABLEKS                       R2 R1 K12 ["items"]
       58 JUMPIFNOT                        R2 ; [+6]
       59 GETUPVAL                         R2 2
       60 GETTABLEKS                       R3 R1 K12 ["items"]
       62 CALL                             R2 1 1
       63 SETTABLEKS                       R2 R1 K12 ["items"]
       65 GETTABLEKS                       R2 R1 K13 ["anyOf"]
       67 JUMPIFNOT                        R2 ; [+15]
       68 NEWTABLE                         R2 0 0
       70 GETTABLEKS                       R3 R1 K13 ["anyOf"]
       72 LOADNIL                          R4
       73 LOADNIL                          R5
       74 FORGPREP                         R3
       75 GETUPVAL                         R8 2
       76 MOVE                             R9 R7
       77 CALL                             R8 1 1
       78 SETTABLE                         R8 R2 R6
       79 FORGLOOP                         R3 2 ; [-5]
       81 SETTABLEKS                       R2 R1 K13 ["anyOf"]
       83 RETURN                           R1 1

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETUPVAL                         R7 0
        7 GETTABLEKS                       R8 R6 K0 ["inputSchema"]
        9 CALL                             R7 1 1
       10 DUPTABLE                         R10 K4 [{"name", "description", "parameters"}]
       11 GETTABLEKS                       R11 R6 K1 ["name"]
       13 SETTABLEKS                       R11 R10 K1 ["name"]
       15 GETTABLEKS                       R11 R6 K2 ["description"]
       17 SETTABLEKS                       R11 R10 K2 ["description"]
       19 SETTABLEKS                       R7 R10 K3 ["parameters"]
       21 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       23 MOVE                             R9 R1
       24 GETIMPORT                        R8 K7 [table.insert]
       26 CALL                             R8 2 0
       27 FORGLOOP                         R2 2 ; [-22]
       29 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R6 R0 K8 ["Components"]
       18 GETTABLEKS                       R5 R6 K9 ["Contexts"]
       20 GETTABLEKS                       R4 R5 K10 ["DefaultLLMProvider"]
       22 GETTABLEKS                       R3 R4 K11 ["LLMFormattedToolTypes"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R5 R0 K6 ["Parent"]
       29 GETTABLEKS                       R4 R5 K12 ["ModelContextProtocol"]
       31 CALL                             R3 1 1
       32 DUPTABLE                         R4 K35 [{"type", "format", "title", "description", "nullable", "enum", "maxItems", "minItems", "properties", "required", "minProperties", "maxProperties", "minLength", "maxLength", "pattern", "example", "anyOf", "propertyOrdering", "default", "items", "minimum", "maximum"}]
       33 LOADB                            R5 1
       34 SETTABLEKS                       R5 R4 K13 ["type"]
       36 LOADB                            R5 1
       37 SETTABLEKS                       R5 R4 K14 ["format"]
       39 LOADB                            R5 1
       40 SETTABLEKS                       R5 R4 K15 ["title"]
       42 LOADB                            R5 1
       43 SETTABLEKS                       R5 R4 K16 ["description"]
       45 LOADB                            R5 1
       46 SETTABLEKS                       R5 R4 K17 ["nullable"]
       48 LOADB                            R5 1
       49 SETTABLEKS                       R5 R4 K18 ["enum"]
       51 LOADB                            R5 1
       52 SETTABLEKS                       R5 R4 K19 ["maxItems"]
       54 LOADB                            R5 1
       55 SETTABLEKS                       R5 R4 K20 ["minItems"]
       57 LOADB                            R5 1
       58 SETTABLEKS                       R5 R4 K21 ["properties"]
       60 LOADB                            R5 1
       61 SETTABLEKS                       R5 R4 K22 ["required"]
       63 LOADB                            R5 1
       64 SETTABLEKS                       R5 R4 K23 ["minProperties"]
       66 LOADB                            R5 1
       67 SETTABLEKS                       R5 R4 K24 ["maxProperties"]
       69 LOADB                            R5 1
       70 SETTABLEKS                       R5 R4 K25 ["minLength"]
       72 LOADB                            R5 1
       73 SETTABLEKS                       R5 R4 K26 ["maxLength"]
       75 LOADB                            R5 1
       76 SETTABLEKS                       R5 R4 K27 ["pattern"]
       78 LOADB                            R5 1
       79 SETTABLEKS                       R5 R4 K28 ["example"]
       81 LOADB                            R5 1
       82 SETTABLEKS                       R5 R4 K29 ["anyOf"]
       84 LOADB                            R5 1
       85 SETTABLEKS                       R5 R4 K30 ["propertyOrdering"]
       87 LOADB                            R5 1
       88 SETTABLEKS                       R5 R4 K31 ["default"]
       90 LOADB                            R5 1
       91 SETTABLEKS                       R5 R4 K32 ["items"]
       93 LOADB                            R5 1
       94 SETTABLEKS                       R5 R4 K33 ["minimum"]
       96 LOADB                            R5 1
       97 SETTABLEKS                       R5 R4 K34 ["maximum"]
       99 DUPCLOSURE                       R5 K36 [PROTO_1]
      100 CAPTURE                          VAL R1
      101 CAPTURE                          VAL R4
      102 CAPTURE                          VAL R5
      103 DUPCLOSURE                       R6 K37 [PROTO_2]
      104 CAPTURE                          VAL R5
      105 DUPTABLE                         R7 K39 [{"formatTools"}]
      106 SETTABLEKS                       R6 R7 K38 ["formatTools"]
      108 RETURN                           R7 1
