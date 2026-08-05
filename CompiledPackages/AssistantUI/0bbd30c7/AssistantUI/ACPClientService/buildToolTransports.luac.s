PROTO_0:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETTABLEKS                       R6 R5 K0 ["inputSchema"]
        6 JUMPIFNOT                        R6 ; [+24]
        7 GETTABLEKS                       R6 R5 K0 ["inputSchema"]
        9 GETTABLEKS                       R6 R6 K1 ["properties"]
       11 JUMPIFNOT                        R6 ; [+19]
       12 GETIMPORT                        R6 K3 [next]
       14 GETTABLEKS                       R7 R5 K0 ["inputSchema"]
       16 GETTABLEKS                       R7 R7 K1 ["properties"]
       18 CALL                             R6 1 1
       19 JUMPIFNOTEQKNIL                  R6 ; [+11]
       21 GETTABLEKS                       R6 R5 K0 ["inputSchema"]
       23 GETUPVAL                         R7 0
       24 GETTABLEKS                       R7 R7 K4 ["Types"]
       26 GETTABLEKS                       R7 R7 K5 ["emptyObject"]
       28 CALL                             R7 0 1
       29 SETTABLEKS                       R7 R6 K1 ["properties"]
       31 FORGLOOP                         R1 2 ; [-28]
       33 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["failures"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["getMcpClientIdentifier"]
        5 CALL                             R4 0 1
        6 GETTABLE                         R2 R3 R4
        7 JUMPIFNOTEQKNIL                  R2 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getMcpClientIdentifier"]
        3 CALL                             R2 0 1
        4 NEWTABLE                         R3 0 0
        6 MOVE                             R4 R0
        7 LOADNIL                          R5
        8 LOADNIL                          R6
        9 FORGPREP                         R4
       10 GETTABLEKS                       R11 R8 K1 ["name"]
       12 NAMECALL                         R9 R1 K2 ["getClientForStaticTool"]
       14 CALL                             R9 2 1
       15 JUMPIFNOTEQ                      R9 R2 ; [+21]
       17 GETIMPORT                        R9 K5 [table.clone]
       19 MOVE                             R10 R8
       20 CALL                             R9 1 1
       21 GETUPVAL                         R10 1
       22 GETTABLEKS                       R10 R10 K6 ["addPrefix"]
       24 GETTABLEKS                       R11 R8 K1 ["name"]
       26 CALL                             R10 1 1
       27 SETTABLEKS                       R10 R9 K1 ["name"]
       29 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
       31 MOVE                             R11 R3
       32 MOVE                             R12 R9
       33 GETIMPORT                        R10 K8 [table.insert]
       35 CALL                             R10 2 0
       36 JUMP                             ; [+7]
       37 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       39 MOVE                             R10 R3
       40 MOVE                             R11 R8
       41 GETIMPORT                        R9 K8 [table.insert]
       43 CALL                             R9 2 0
       44 FORGLOOP                         R4 2 ; [-35]
       46 RETURN                           R3 1

PROTO_3:
        0 DUPTABLE                         R1 K1 [{"_meta"}]
        1 DUPTABLE                         R2 K5 [{"assistantMode", "useInternalToolDefinitions", "includeDisabledTools"}]
        2 MOVE                             R3 R0
        3 JUMPIFNOT                        R3 ; [+2]
        4 GETTABLEKS                       R3 R0 K2 ["assistantMode"]
        6 SETTABLEKS                       R3 R2 K2 ["assistantMode"]
        8 MOVE                             R3 R0
        9 JUMPIFNOT                        R3 ; [+2]
       10 GETTABLEKS                       R3 R0 K3 ["useInternalToolDefinitions"]
       12 SETTABLEKS                       R3 R2 K3 ["useInternalToolDefinitions"]
       14 MOVE                             R3 R0
       15 JUMPIFNOT                        R3 ; [+2]
       16 GETTABLEKS                       R3 R0 K4 ["includeDisabledTools"]
       18 SETTABLEKS                       R3 R2 K4 ["includeDisabledTools"]
       20 SETTABLEKS                       R2 R1 K0 ["_meta"]
       22 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getWithClient"]
        3 JUMPIFNOT                        R0 ; [+3]
        4 MOVE                             R1 R0
        5 CALL                             R1 0 1
        6 RETURN                           R1 1
        7 LOADNIL                          R1
        8 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 CALL                             R3 1 1
        3 NAMECALL                         R1 R0 K0 ["listTools"]
        5 CALL                             R1 2 1
        6 NAMECALL                         R1 R1 K1 ["await"]
        8 CALL                             R1 1 2
        9 JUMPIFNOT                        R1 ; [+12]
       10 GETTABLEKS                       R5 R2 K2 ["failures"]
       12 GETUPVAL                         R6 2
       13 GETTABLEKS                       R6 R6 K3 ["getMcpClientIdentifier"]
       15 CALL                             R6 0 1
       16 GETTABLE                         R4 R5 R6
       17 JUMPIFNOTEQKNIL                  R4 ; [+2]
       19 LOADB                            R3 0 +1
       20 LOADB                            R3 1
       21 JUMPIFNOT                        R3 ; [+1]
       22 RETURN                           R0 0
       23 GETUPVAL                         R3 3
       24 GETTABLEKS                       R4 R2 K4 ["result"]
       26 GETTABLEKS                       R4 R4 K5 ["tools"]
       28 CALL                             R3 1 1
       29 GETUPVAL                         R4 5
       30 MOVE                             R5 R3
       31 MOVE                             R6 R0
       32 CALL                             R4 2 1
       33 SETUPVAL                         R4 4
       34 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getWithClient"]
        3 JUMPIFNOT                        R2 ; [+4]
        4 MOVE                             R3 R2
        5 CALL                             R3 0 1
        6 MOVE                             R1 R3
        7 JUMP                             ; [+1]
        8 LOADNIL                          R1
        9 JUMPIF                           R1 ; [+3]
       10 NEWTABLE                         R2 0 0
       12 RETURN                           R2 1
       13 NEWTABLE                         R2 0 0
       15 MOVE                             R3 R1
       16 NEWCLOSURE                       R4 P0
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          REF R2
       22 CAPTURE                          UPVAL U4
       23 CALL                             R3 1 0
       24 CLOSEUPVALS                      R2
       25 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K2 [{"assistantMode", "useInternalToolDefinitions"}]
        2 MOVE                             R3 R0
        3 JUMPIFNOT                        R3 ; [+2]
        4 GETTABLEKS                       R3 R0 K0 ["assistantMode"]
        6 SETTABLEKS                       R3 R2 K0 ["assistantMode"]
        8 MOVE                             R3 R0
        9 JUMPIFNOT                        R3 ; [+2]
       10 GETTABLEKS                       R3 R0 K1 ["useInternalToolDefinitions"]
       12 SETTABLEKS                       R3 R2 K1 ["useInternalToolDefinitions"]
       14 CALL                             R1 1 1
       15 GETIMPORT                        R2 K5 [table.create]
       17 LENGTH                           R3 R1
       18 CALL                             R2 1 1
       19 MOVE                             R3 R1
       20 LOADNIL                          R4
       21 LOADNIL                          R5
       22 FORGPREP                         R3
       23 GETTABLEKS                       R9 R7 K6 ["name"]
       25 FASTCALL1                        TYPEOF R9 ; [+2]
       26 GETIMPORT                        R8 K8 [typeof]
       28 CALL                             R8 1 1
       29 JUMPIFNOTEQKS                    R8 K9 ["string"] ; [+9]
       31 GETTABLEKS                       R10 R7 K6 ["name"]
       33 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       35 MOVE                             R9 R2
       36 GETIMPORT                        R8 K11 [table.insert]
       38 CALL                             R8 2 0
       39 FORGLOOP                         R3 2 ; [-17]
       41 RETURN                           R2 1

PROTO_8:
        0 LOADB                            R1 1
        1 SETUPVAL                         R1 0
        2 LOADNIL                          R1
        3 GETUPVAL                         R4 1
        4 NAMECALL                         R2 R0 K0 ["getClientForStaticTool"]
        6 CALL                             R2 2 1
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K1 ["getMcpClientIdentifier"]
       10 CALL                             R3 0 1
       11 JUMPIFNOTEQ                      R2 R3 ; [+47]
       13 GETUPVAL                         R2 3
       14 GETTABLEKS                       R2 R2 K2 ["getToolCallMeta"]
       16 JUMPIFNOT                        R2 ; [+11]
       17 GETUPVAL                         R2 3
       18 GETTABLEKS                       R2 R2 K2 ["getToolCallMeta"]
       20 GETUPVAL                         R3 4
       21 JUMPIFNOT                        R3 ; [+3]
       22 GETUPVAL                         R3 4
       23 GETTABLEKS                       R3 R3 K3 ["acpSessionId"]
       25 CALL                             R2 1 1
       26 MOVE                             R1 R2
       27 JUMP                             ; [+1]
       28 LOADNIL                          R1
       29 JUMPIFNOT                        R1 ; [+15]
       30 GETIMPORT                        R2 K6 [table.clone]
       32 MOVE                             R3 R1
       33 CALL                             R2 1 1
       34 MOVE                             R1 R2
       35 GETTABLEKS                       R2 R1 K7 ["messageGuid"]
       37 JUMPIF                           R2 ; [+5]
       38 GETUPVAL                         R2 5
       39 LOADB                            R4 0
       40 NAMECALL                         R2 R2 K8 ["GenerateGUID"]
       42 CALL                             R2 2 1
       43 SETTABLEKS                       R2 R1 K7 ["messageGuid"]
       45 GETUPVAL                         R2 4
       46 JUMPIFNOT                        R2 ; [+12]
       47 MOVE                             R2 R1
       48 JUMPIF                           R2 ; [+2]
       49 NEWTABLE                         R2 0 0
       51 MOVE                             R1 R2
       52 GETUPVAL                         R2 4
       53 LOADNIL                          R3
       54 LOADNIL                          R4
       55 FORGPREP                         R2
       56 SETTABLE                         R6 R1 R5
       57 FORGLOOP                         R2 2 ; [-2]
       59 GETUPVAL                         R3 6
       60 JUMPIFNOT                        R3 ; [+5]
       61 GETIMPORT                        R2 K6 [table.clone]
       63 GETUPVAL                         R3 6
       64 CALL                             R2 1 1
       65 JUMP                             ; [+2]
       66 NEWTABLE                         R2 0 0
       68 LOADK                            R3 K9 [200000000]
       69 SETTABLEKS                       R3 R2 K10 ["timeout"]
       71 GETTABLEKS                       R3 R2 K11 ["signal"]
       73 JUMPIFNOTEQKNIL                  R3 ; [+7]
       75 GETUPVAL                         R3 7
       76 GETTABLEKS                       R3 R3 K12 ["new"]
       78 CALL                             R3 0 1
       79 SETTABLEKS                       R3 R2 K11 ["signal"]
       81 GETUPVAL                         R5 1
       82 GETUPVAL                         R6 8
       83 MOVE                             R7 R2
       84 MOVE                             R8 R1
       85 NAMECALL                         R3 R0 K13 ["callTool"]
       87 CALL                             R3 5 1
       88 NAMECALL                         R3 R3 K14 ["await"]
       90 CALL                             R3 1 2
       91 JUMPIFNOT                        R3 ; [+2]
       92 SETUPVAL                         R4 9
       93 RETURN                           R0 0
       94 SETUPVAL                         R4 10
       95 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["getWithClient"]
        3 JUMPIFNOT                        R5 ; [+4]
        4 MOVE                             R6 R5
        5 CALL                             R6 0 1
        6 MOVE                             R4 R6
        7 JUMP                             ; [+1]
        8 LOADNIL                          R4
        9 JUMPIF                           R4 ; [+4]
       10 GETIMPORT                        R5 K2 [error]
       12 LOADK                            R6 K3 ["callTool: MCP client not available"]
       13 CALL                             R5 1 0
       14 LOADB                            R5 0
       15 LOADNIL                          R6
       16 LOADNIL                          R7
       17 MOVE                             R8 R4
       18 NEWCLOSURE                       R9 P0
       19 CAPTURE                          REF R5
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          VAL R3
       24 CAPTURE                          UPVAL U2
       25 CAPTURE                          VAL R2
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          VAL R1
       28 CAPTURE                          REF R6
       29 CAPTURE                          REF R7
       30 CALL                             R8 1 0
       31 JUMPIF                           R5 ; [+5]
       32 GETIMPORT                        R8 K2 [error]
       34 LOADK                            R9 K3 ["callTool: MCP client not available"]
       35 CALL                             R8 1 0
       36 JUMP                             ; [+6]
       37 JUMPIFEQKNIL                     R7 ; [+5]
       39 GETIMPORT                        R8 K2 [error]
       41 MOVE                             R9 R7
       42 CALL                             R8 1 0
       43 CLOSEUPVALS                      R5
       44 RETURN                           R6 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getToolCallOptions"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["stripPrefix"]
        6 MOVE                             R3 R0
        7 CALL                             R2 1 -1
        8 CALL                             R1 -1 -1
        9 RETURN                           R1 -1

PROTO_11:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 NEWCLOSURE                       R2 P1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 NEWCLOSURE                       R3 P2
        9 CAPTURE                          VAL R2
       10 NEWCLOSURE                       R4 P3
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U4
       14 CAPTURE                          UPVAL U5
       15 DUPCLOSURE                       R5 K0 [PROTO_10]
       16 CAPTURE                          UPVAL U6
       17 CAPTURE                          UPVAL U7
       18 DUPTABLE                         R6 K5 [{"listTools", "resolveAllowedTools", "callTool", "getToolCallOptions"}]
       19 SETTABLEKS                       R2 R6 K1 ["listTools"]
       21 SETTABLEKS                       R3 R6 K2 ["resolveAllowedTools"]
       23 SETTABLEKS                       R4 R6 K3 ["callTool"]
       25 SETTABLEKS                       R5 R6 K4 ["getToolCallOptions"]
       27 RETURN                           R6 1

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
       16 GETTABLEKS                       R3 R0 K8 ["Guest"]
       18 GETTABLEKS                       R3 R3 K9 ["Environment"]
       20 GETTABLEKS                       R3 R3 K10 ["EventLogger"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Parent"]
       27 GETTABLEKS                       R4 R4 K11 ["ModelContextProtocol"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Parent"]
       34 GETTABLEKS                       R5 R5 K12 ["Signal"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K13 ["Types"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K14 ["Components"]
       46 GETTABLEKS                       R7 R7 K15 ["UIToolRegistry"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K17 [game]
       51 LOADK                            R9 K18 ["HttpService"]
       52 NAMECALL                         R7 R7 K19 ["GetService"]
       54 CALL                             R7 2 1
       55 GETTABLEKS                       R8 R1 K20 ["ToolNaming"]
       57 DUPCLOSURE                       R9 K21 [PROTO_0]
       58 CAPTURE                          VAL R3
       59 DUPCLOSURE                       R10 K22 [PROTO_1]
       60 CAPTURE                          VAL R5
       61 DUPCLOSURE                       R11 K23 [PROTO_2]
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R8
       64 DUPCLOSURE                       R12 K24 [PROTO_3]
       65 DUPCLOSURE                       R13 K25 [PROTO_11]
       66 CAPTURE                          VAL R12
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R9
       69 CAPTURE                          VAL R11
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R8
       74 RETURN                           R13 1
