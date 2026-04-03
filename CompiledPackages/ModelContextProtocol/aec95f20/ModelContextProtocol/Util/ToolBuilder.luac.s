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
        5 JUMPIFNOTEQKNIL                  R8 ; [+11]
        7 GETIMPORT                        R8 K1 [error]
        9 LOADK                            R10 K2 ["Missing required argument: %*"]
       10 MOVE                             R12 R7
       11 NAMECALL                         R10 R10 K3 ["format"]
       13 CALL                             R10 2 1
       14 MOVE                             R9 R10
       15 LOADN                            R10 0
       16 CALL                             R8 2 0
       17 FORGLOOP                         R3 2 ; [-14]
       19 GETIMPORT                        R3 K5 [pcall]
       21 GETUPVAL                         R5 1
       22 GETTABLEKS                       R4 R5 K6 ["handler"]
       24 MOVE                             R5 R0
       25 MOVE                             R6 R1
       26 MOVE                             R7 R2
       27 CALL                             R3 4 2
       28 JUMPIF                           R3 ; [+18]
       29 GETUPVAL                         R5 2
       30 CALL                             R5 0 1
       31 FASTCALL1                        TOSTRING R4 ; [+3]
       32 MOVE                             R8 R4
       33 GETIMPORT                        R7 K8 [tostring]
       35 CALL                             R7 1 1
       36 NAMECALL                         R5 R5 K9 ["addText"]
       38 CALL                             R5 2 1
       39 LOADB                            R7 1
       40 NAMECALL                         R5 R5 K10 ["setError"]
       42 CALL                             R5 2 1
       43 NAMECALL                         R5 R5 K11 ["build"]
       45 CALL                             R5 1 -1
       46 RETURN                           R5 -1
       47 RETURN                           R4 1

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
       35 GETIMPORT                        R3 K13 [next]
       37 MOVE                             R4 R1
       38 CALL                             R3 1 1
       39 JUMPIFNOTEQKNIL                  R3 ; [+6]
       41 GETUPVAL                         R4 0
       42 GETTABLEKS                       R3 R4 K14 ["emptyObject"]
       44 CALL                             R3 0 1
       45 MOVE                             R1 R3
       46 NEWCLOSURE                       R3 P0
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R0
       49 CAPTURE                          UPVAL U1
       50 DUPTABLE                         R4 K17 [{"type", "properties", "required"}]
       51 LOADK                            R5 K18 ["object"]
       52 SETTABLEKS                       R5 R4 K15 ["type"]
       54 SETTABLEKS                       R1 R4 K16 ["properties"]
       56 SETTABLEKS                       R2 R4 K5 ["required"]
       58 DUPTABLE                         R5 K26 [{"name", "description", "inputSchema", "outputSchema", "annotations", "execution", "icons"}]
       59 GETTABLEKS                       R6 R0 K19 ["name"]
       61 SETTABLEKS                       R6 R5 K19 ["name"]
       63 GETTABLEKS                       R6 R0 K20 ["description"]
       65 SETTABLEKS                       R6 R5 K20 ["description"]
       67 SETTABLEKS                       R4 R5 K21 ["inputSchema"]
       69 GETTABLEKS                       R6 R0 K22 ["outputSchema"]
       71 SETTABLEKS                       R6 R5 K22 ["outputSchema"]
       73 GETTABLEKS                       R6 R0 K23 ["annotations"]
       75 SETTABLEKS                       R6 R5 K23 ["annotations"]
       77 GETTABLEKS                       R6 R0 K24 ["execution"]
       79 SETTABLEKS                       R6 R5 K24 ["execution"]
       81 GETTABLEKS                       R6 R0 K25 ["icons"]
       83 SETTABLEKS                       R6 R5 K25 ["icons"]
       85 DUPTABLE                         R6 K29 [{"definition", "handler", "mcpDisabled"}]
       86 SETTABLEKS                       R5 R6 K27 ["definition"]
       88 SETTABLEKS                       R3 R6 K0 ["handler"]
       90 GETTABLEKS                       R7 R0 K28 ["mcpDisabled"]
       92 SETTABLEKS                       R7 R6 K28 ["mcpDisabled"]
       94 RETURN                           R6 1

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
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R1
       63 SETTABLEKS                       R4 R3 K35 ["build"]
       65 RETURN                           R3 1
