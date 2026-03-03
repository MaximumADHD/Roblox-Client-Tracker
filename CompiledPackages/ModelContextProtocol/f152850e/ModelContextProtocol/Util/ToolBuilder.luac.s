PROTO_0:
        0 NEWTABLE                         R1 16 0
        2 GETUPVAL                         R2 0
        3 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        5 GETIMPORT                        R0 K1 [setmetatable]
        7 CALL                             R0 2 1
        8 LOADK                            R1 K2 [""]
        9 SETTABLEKS                       R1 R0 K3 ["name"]
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K4 ["title"]
       14 LOADK                            R1 K2 [""]
       15 SETTABLEKS                       R1 R0 K5 ["description"]
       17 NEWTABLE                         R1 0 0
       19 SETTABLEKS                       R1 R0 K6 ["args"]
       21 LOADNIL                          R1
       22 SETTABLEKS                       R1 R0 K7 ["outputSchema"]
       24 LOADNIL                          R1
       25 SETTABLEKS                       R1 R0 K8 ["annotations"]
       27 LOADNIL                          R1
       28 SETTABLEKS                       R1 R0 K9 ["execution"]
       30 LOADNIL                          R1
       31 SETTABLEKS                       R1 R0 K10 ["icons"]
       33 LOADNIL                          R1
       34 SETTABLEKS                       R1 R0 K11 ["handler"]
       36 LOADB                            R1 0
       37 SETTABLEKS                       R1 R0 K12 ["mcpDisabled"]
       39 RETURN                           R0 1

PROTO_1:
        0 SETTABLEKS                       R1 R0 K0 ["name"]
        2 RETURN                           R0 1

PROTO_2:
        0 SETTABLEKS                       R1 R0 K0 ["title"]
        2 RETURN                           R0 1

PROTO_3:
        0 SETTABLEKS                       R1 R0 K0 ["description"]
        2 RETURN                           R0 1

PROTO_4:
        0 SETTABLEKS                       R1 R0 K0 ["outputSchema"]
        2 RETURN                           R0 1

PROTO_5:
        0 SETTABLEKS                       R1 R0 K0 ["annotations"]
        2 RETURN                           R0 1

PROTO_6:
        0 SETTABLEKS                       R1 R0 K0 ["execution"]
        2 RETURN                           R0 1

PROTO_7:
        0 SETTABLEKS                       R1 R0 K0 ["icons"]
        2 RETURN                           R0 1

PROTO_8:
        0 GETTABLEKS                       R3 R0 K0 ["args"]
        2 DUPTABLE                         R4 K3 [{"schema", "required"}]
        3 SETTABLEKS                       R2 R4 K1 ["schema"]
        5 LOADB                            R5 0
        6 SETTABLEKS                       R5 R4 K2 ["required"]
        8 SETTABLE                         R4 R3 R1
        9 RETURN                           R0 1

PROTO_9:
        0 GETTABLEKS                       R3 R0 K0 ["args"]
        2 DUPTABLE                         R4 K3 [{"schema", "required"}]
        3 SETTABLEKS                       R2 R4 K1 ["schema"]
        5 LOADB                            R5 1
        6 SETTABLEKS                       R5 R4 K2 ["required"]
        8 SETTABLE                         R4 R3 R1
        9 RETURN                           R0 1

PROTO_10:
        0 SETTABLEKS                       R1 R0 K0 ["handler"]
        2 RETURN                           R0 1

PROTO_11:
        0 SETTABLEKS                       R1 R0 K0 ["mcpDisabled"]
        2 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R3 0
        1 LOADNIL                          R4
        2 LOADNIL                          R5
        3 FORGPREP                         R3
        4 GETTABLE                         R8 R0 R7
        5 JUMPIFNOTEQKNIL                  R8 ; [+10]
        7 GETIMPORT                        R8 K1 [error]
        9 LOADK                            R10 K2 ["Missing required argument: %*"]
       10 MOVE                             R12 R7
       11 NAMECALL                         R10 R10 K3 ["format"]
       13 CALL                             R10 2 1
       14 MOVE                             R9 R10
       15 CALL                             R8 1 0
       16 FORGLOOP                         R3 2 ; [-13]
       18 GETIMPORT                        R3 K5 [pcall]
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R4 R5 K6 ["handler"]
       23 MOVE                             R5 R0
       24 MOVE                             R6 R1
       25 MOVE                             R7 R2
       26 CALL                             R3 4 2
       27 JUMPIF                           R3 ; [+18]
       28 GETUPVAL                         R5 2
       29 CALL                             R5 0 1
       30 FASTCALL1                        TOSTRING R4 ; [+3]
       31 MOVE                             R8 R4
       32 GETIMPORT                        R7 K8 [tostring]
       34 CALL                             R7 1 1
       35 NAMECALL                         R5 R5 K9 ["addText"]
       37 CALL                             R5 2 1
       38 LOADB                            R7 1
       39 NAMECALL                         R5 R5 K10 ["setError"]
       41 CALL                             R5 2 1
       42 NAMECALL                         R5 R5 K11 ["build"]
       44 CALL                             R5 1 -1
       45 RETURN                           R5 -1
       46 RETURN                           R4 1

PROTO_13:
        0 GETTABLEKS                       R2 R0 K0 ["handler"]
        2 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        4 LOADK                            R3 K1 ["Handler must be set before building the tool"]
        5 GETIMPORT                        R1 K3 [assert]
        7 CALL                             R1 2 0
        8 NEWTABLE                         R1 0 0
       10 NEWTABLE                         R2 0 0
       12 GETTABLEKS                       R3 R0 K4 ["args"]
       14 LOADNIL                          R4
       15 LOADNIL                          R5
       16 FORGPREP                         R3
       17 GETTABLEKS                       R8 R7 K5 ["required"]
       19 JUMPIFNOT                        R8 ; [+7]
       20 FASTCALL2                        TABLE_INSERT R2 R6 ; [+5]
       22 MOVE                             R9 R2
       23 MOVE                             R10 R6
       24 GETIMPORT                        R8 K8 [table.insert]
       26 CALL                             R8 2 0
       27 GETIMPORT                        R8 K10 [table.clone]
       29 GETTABLEKS                       R9 R7 K11 ["schema"]
       31 CALL                             R8 1 1
       32 SETTABLE                         R8 R1 R6
       33 FORGLOOP                         R3 2 ; [-17]
       35 NEWCLOSURE                       R3 P0
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R0
       38 CAPTURE                          UPVAL U0
       39 DUPTABLE                         R4 K14 [{"type", "properties", "required"}]
       40 LOADK                            R5 K15 ["object"]
       41 SETTABLEKS                       R5 R4 K12 ["type"]
       43 SETTABLEKS                       R1 R4 K13 ["properties"]
       45 SETTABLEKS                       R2 R4 K5 ["required"]
       47 DUPTABLE                         R5 K23 [{"name", "description", "inputSchema", "outputSchema", "annotations", "execution", "icons"}]
       48 GETTABLEKS                       R6 R0 K16 ["name"]
       50 SETTABLEKS                       R6 R5 K16 ["name"]
       52 GETTABLEKS                       R6 R0 K17 ["description"]
       54 SETTABLEKS                       R6 R5 K17 ["description"]
       56 SETTABLEKS                       R4 R5 K18 ["inputSchema"]
       58 GETTABLEKS                       R6 R0 K19 ["outputSchema"]
       60 SETTABLEKS                       R6 R5 K19 ["outputSchema"]
       62 GETTABLEKS                       R6 R0 K20 ["annotations"]
       64 SETTABLEKS                       R6 R5 K20 ["annotations"]
       66 GETTABLEKS                       R6 R0 K21 ["execution"]
       68 SETTABLEKS                       R6 R5 K21 ["execution"]
       70 GETTABLEKS                       R6 R0 K22 ["icons"]
       72 SETTABLEKS                       R6 R5 K22 ["icons"]
       74 DUPTABLE                         R6 K26 [{"definition", "handler", "mcpDisabled"}]
       75 SETTABLEKS                       R5 R6 K24 ["definition"]
       77 SETTABLEKS                       R3 R6 K0 ["handler"]
       79 GETTABLEKS                       R7 R0 K25 ["mcpDisabled"]
       81 SETTABLEKS                       R7 R6 K25 ["mcpDisabled"]
       83 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ModelContextProtocol"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R3 K7 ["ToolResult"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Types"]
       18 CALL                             R2 1 1
       19 NEWTABLE                         R3 16 0
       21 SETTABLEKS                       R3 R3 K9 ["__index"]
       23 DUPCLOSURE                       R4 K10 [PROTO_0]
       24 CAPTURE                          VAL R3
       25 SETTABLEKS                       R4 R3 K11 ["define"]
       27 DUPCLOSURE                       R4 K12 [PROTO_1]
       28 SETTABLEKS                       R4 R3 K13 ["setName"]
       30 DUPCLOSURE                       R4 K14 [PROTO_2]
       31 SETTABLEKS                       R4 R3 K15 ["setTitle"]
       33 DUPCLOSURE                       R4 K16 [PROTO_3]
       34 SETTABLEKS                       R4 R3 K17 ["setDescription"]
       36 DUPCLOSURE                       R4 K18 [PROTO_4]
       37 SETTABLEKS                       R4 R3 K19 ["setOutputSchema"]
       39 DUPCLOSURE                       R4 K20 [PROTO_5]
       40 SETTABLEKS                       R4 R3 K21 ["setAnnotations"]
       42 DUPCLOSURE                       R4 K22 [PROTO_6]
       43 SETTABLEKS                       R4 R3 K23 ["setExecution"]
       45 DUPCLOSURE                       R4 K24 [PROTO_7]
       46 SETTABLEKS                       R4 R3 K25 ["setIcons"]
       48 DUPCLOSURE                       R4 K26 [PROTO_8]
       49 SETTABLEKS                       R4 R3 K27 ["addOptionalArgument"]
       51 DUPCLOSURE                       R4 K28 [PROTO_9]
       52 SETTABLEKS                       R4 R3 K29 ["addArgument"]
       54 DUPCLOSURE                       R4 K30 [PROTO_10]
       55 SETTABLEKS                       R4 R3 K31 ["setHandler"]
       57 DUPCLOSURE                       R4 K32 [PROTO_11]
       58 SETTABLEKS                       R4 R3 K33 ["setHiddenInRegistry"]
       60 DUPCLOSURE                       R4 K34 [PROTO_13]
       61 CAPTURE                          VAL R1
       62 SETTABLEKS                       R4 R3 K35 ["build"]
       64 RETURN                           R3 1
