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
        0 LOADB                            R1 1
        1 SETUPVAL                         R1 0
        2 GETUPVAL                         R3 1
        3 GETUPVAL                         R4 2
        4 CALL                             R3 1 1
        5 NAMECALL                         R1 R0 K0 ["listTools"]
        7 CALL                             R1 2 1
        8 NAMECALL                         R1 R1 K1 ["await"]
       10 CALL                             R1 1 2
       11 JUMPIFNOT                        R1 ; [+12]
       12 GETTABLEKS                       R5 R2 K2 ["failures"]
       14 GETUPVAL                         R6 3
       15 GETTABLEKS                       R6 R6 K3 ["getMcpClientIdentifier"]
       17 CALL                             R6 0 1
       18 GETTABLE                         R4 R5 R6
       19 JUMPIFNOTEQKNIL                  R4 ; [+2]
       21 LOADB                            R3 0 +1
       22 LOADB                            R3 1
       23 JUMPIFNOT                        R3 ; [+3]
       24 LOADB                            R3 1
       25 SETUPVAL                         R3 4
       26 RETURN                           R0 0
       27 GETUPVAL                         R3 5
       28 GETTABLEKS                       R4 R2 K4 ["result"]
       30 GETTABLEKS                       R4 R4 K5 ["tools"]
       32 CALL                             R3 1 1
       33 GETUPVAL                         R4 7
       34 MOVE                             R5 R3
       35 MOVE                             R6 R0
       36 CALL                             R4 2 1
       37 SETUPVAL                         R4 6
       38 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getWithClient"]
        3 JUMPIFNOT                        R2 ; [+4]
        4 MOVE                             R3 R2
        5 CALL                             R3 0 1
        6 MOVE                             R1 R3
        7 JUMP                             ; [+1]
        8 LOADNIL                          R1
        9 JUMPIF                           R1 ; [+4]
       10 NEWTABLE                         R2 0 0
       12 LOADB                            R3 1
       13 RETURN                           R2 2
       14 NEWTABLE                         R2 0 0
       16 LOADB                            R3 0
       17 LOADB                            R4 0
       18 MOVE                             R5 R1
       19 NEWCLOSURE                       R6 P0
       20 CAPTURE                          REF R3
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          REF R4
       25 CAPTURE                          UPVAL U3
       26 CAPTURE                          REF R2
       27 CAPTURE                          UPVAL U4
       28 CALL                             R5 1 0
       29 MOVE                             R5 R2
       30 MOVE                             R6 R4
       31 JUMPIF                           R6 ; [+1]
       32 NOT                              R6 R3
       33 CLOSEUPVALS                      R2
       34 RETURN                           R5 2

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 RETURN                           R1 1

PROTO_8:
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
       14 CALL                             R1 1 2
       15 JUMPIFNOT                        R2 ; [+4]
       16 GETIMPORT                        R3 K4 [error]
       18 LOADK                            R4 K5 ["resolveAllowedTools: the Studio MCP client failed to list tools"]
       19 CALL                             R3 1 0
       20 GETIMPORT                        R3 K8 [table.create]
       22 LENGTH                           R4 R1
       23 CALL                             R3 1 1
       24 MOVE                             R4 R1
       25 LOADNIL                          R5
       26 LOADNIL                          R6
       27 FORGPREP                         R4
       28 GETTABLEKS                       R10 R8 K9 ["name"]
       30 FASTCALL1                        TYPEOF R10 ; [+2]
       31 GETIMPORT                        R9 K11 [typeof]
       33 CALL                             R9 1 1
       34 JUMPIFNOTEQKS                    R9 K12 ["string"] ; [+9]
       36 GETTABLEKS                       R11 R8 K9 ["name"]
       38 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       40 MOVE                             R10 R3
       41 GETIMPORT                        R9 K14 [table.insert]
       43 CALL                             R9 2 0
       44 FORGLOOP                         R4 2 ; [-17]
       46 RETURN                           R3 1

PROTO_9:
        0 LOADB                            R1 1
        1 SETUPVAL                         R1 0
        2 GETUPVAL                         R3 1
        3 NAMECALL                         R1 R0 K0 ["getClientForStaticTool"]
        5 CALL                             R1 2 1
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K1 ["getMcpClientIdentifier"]
        9 CALL                             R2 0 1
       10 JUMPIFNOTEQKNIL                  R1 ; [+2]
       12 LOADB                            R3 0 +1
       13 LOADB                            R3 1
       14 JUMPIFEQ                         R1 R2 ; [+2]
       16 LOADB                            R4 0 +1
       17 LOADB                            R4 1
       18 GETUPVAL                         R5 3
       19 GETTABLEKS                       R5 R5 K2 ["FFlagDebugLogAssistantUI"]
       21 JUMPIFNOT                        R5 ; [+20]
       22 GETIMPORT                        R5 K4 [print]
       24 LOADK                            R7 K5 ["[Tool Call] find tool: name=%* found=%* isStudioStaticTool=%* "]
       25 GETUPVAL                         R9 1
       26 MOVE                             R10 R3
       27 MOVE                             R11 R4
       28 NAMECALL                         R7 R7 K6 ["format"]
       30 CALL                             R7 4 1
       31 LOADK                            R8 K7 ["staticClientId=%*"]
       32 FASTCALL1                        TOSTRING R1 ; [+3]
       33 MOVE                             R11 R1
       34 GETIMPORT                        R10 K9 [tostring]
       36 CALL                             R10 1 1
       37 NAMECALL                         R8 R8 K6 ["format"]
       39 CALL                             R8 2 1
       40 CONCAT                           R6 R7 R8
       41 CALL                             R5 1 0
       42 LOADNIL                          R5
       43 JUMPIFNOT                        R4 ; [+46]
       44 GETUPVAL                         R6 4
       45 GETTABLEKS                       R6 R6 K10 ["getToolCallMeta"]
       47 JUMPIFNOT                        R6 ; [+11]
       48 GETUPVAL                         R6 4
       49 GETTABLEKS                       R6 R6 K10 ["getToolCallMeta"]
       51 GETUPVAL                         R7 5
       52 JUMPIFNOT                        R7 ; [+3]
       53 GETUPVAL                         R7 5
       54 GETTABLEKS                       R7 R7 K11 ["acpSessionId"]
       56 CALL                             R6 1 1
       57 MOVE                             R5 R6
       58 JUMP                             ; [+1]
       59 LOADNIL                          R5
       60 JUMPIFNOT                        R5 ; [+15]
       61 GETIMPORT                        R6 K14 [table.clone]
       63 MOVE                             R7 R5
       64 CALL                             R6 1 1
       65 MOVE                             R5 R6
       66 GETTABLEKS                       R6 R5 K15 ["messageGuid"]
       68 JUMPIF                           R6 ; [+5]
       69 GETUPVAL                         R6 6
       70 LOADB                            R8 0
       71 NAMECALL                         R6 R6 K16 ["GenerateGUID"]
       73 CALL                             R6 2 1
       74 SETTABLEKS                       R6 R5 K15 ["messageGuid"]
       76 GETUPVAL                         R6 5
       77 JUMPIFNOT                        R6 ; [+12]
       78 MOVE                             R6 R5
       79 JUMPIF                           R6 ; [+2]
       80 NEWTABLE                         R6 0 0
       82 MOVE                             R5 R6
       83 GETUPVAL                         R6 5
       84 LOADNIL                          R7
       85 LOADNIL                          R8
       86 FORGPREP                         R6
       87 SETTABLE                         R10 R5 R9
       88 FORGLOOP                         R6 2 ; [-2]
       90 GETUPVAL                         R7 7
       91 JUMPIFNOT                        R7 ; [+5]
       92 GETIMPORT                        R6 K14 [table.clone]
       94 GETUPVAL                         R7 7
       95 CALL                             R6 1 1
       96 JUMP                             ; [+2]
       97 NEWTABLE                         R6 0 0
       99 LOADK                            R7 K17 [200000000]
      100 SETTABLEKS                       R7 R6 K18 ["timeout"]
      102 GETTABLEKS                       R7 R6 K19 ["signal"]
      104 JUMPIFNOTEQKNIL                  R7 ; [+7]
      106 GETUPVAL                         R7 8
      107 GETTABLEKS                       R7 R7 K20 ["new"]
      109 CALL                             R7 0 1
      110 SETTABLEKS                       R7 R6 K19 ["signal"]
      112 GETUPVAL                         R7 3
      113 GETTABLEKS                       R7 R7 K2 ["FFlagDebugLogAssistantUI"]
      115 JUMPIFNOT                        R7 ; [+8]
      116 GETIMPORT                        R7 K4 [print]
      118 LOADK                            R8 K21 ["[Tool Call] MCP call start: name=%*"]
      119 GETUPVAL                         R10 1
      120 NAMECALL                         R8 R8 K6 ["format"]
      122 CALL                             R8 2 1
      123 CALL                             R7 1 0
      124 GETUPVAL                         R9 1
      125 GETUPVAL                         R10 9
      126 MOVE                             R11 R6
      127 MOVE                             R12 R5
      128 NAMECALL                         R7 R0 K22 ["callTool"]
      130 CALL                             R7 5 1
      131 NAMECALL                         R7 R7 K23 ["await"]
      133 CALL                             R7 1 2
      134 JUMPIFNOT                        R7 ; [+14]
      135 GETUPVAL                         R9 3
      136 GETTABLEKS                       R9 R9 K2 ["FFlagDebugLogAssistantUI"]
      138 JUMPIFNOT                        R9 ; [+8]
      139 GETIMPORT                        R9 K4 [print]
      141 LOADK                            R10 K24 ["[Tool Call] MCP call ok: name=%*"]
      142 GETUPVAL                         R12 1
      143 NAMECALL                         R10 R10 K6 ["format"]
      145 CALL                             R10 2 1
      146 CALL                             R9 1 0
      147 SETUPVAL                         R8 10
      148 RETURN                           R0 0
      149 GETUPVAL                         R9 3
      150 GETTABLEKS                       R9 R9 K2 ["FFlagDebugLogAssistantUI"]
      152 JUMPIFNOT                        R9 ; [+13]
      153 GETIMPORT                        R9 K4 [print]
      155 LOADK                            R10 K25 ["[Tool Call] MCP call failed: name=%* error=%*"]
      156 GETUPVAL                         R12 1
      157 FASTCALL1                        TOSTRING R8 ; [+3]
      158 MOVE                             R14 R8
      159 GETIMPORT                        R13 K9 [tostring]
      161 CALL                             R13 1 1
      162 NAMECALL                         R10 R10 K6 ["format"]
      164 CALL                             R10 3 1
      165 CALL                             R9 1 0
      166 SETUPVAL                         R8 11
      167 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["getWithClient"]
        3 JUMPIFNOT                        R5 ; [+4]
        4 MOVE                             R6 R5
        5 CALL                             R6 0 1
        6 MOVE                             R4 R6
        7 JUMP                             ; [+1]
        8 LOADNIL                          R4
        9 JUMPIF                           R4 ; [+16]
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K1 ["FFlagDebugLogAssistantUI"]
       13 JUMPIFNOT                        R5 ; [+8]
       14 GETIMPORT                        R5 K3 [print]
       16 LOADK                            R6 K4 ["[Tool Call] find tool failed: name=%* reason=no_mcp_client"]
       17 MOVE                             R8 R0
       18 NAMECALL                         R6 R6 K5 ["format"]
       20 CALL                             R6 2 1
       21 CALL                             R5 1 0
       22 GETIMPORT                        R5 K7 [error]
       24 LOADK                            R6 K8 ["callTool: MCP client not available"]
       25 CALL                             R5 1 0
       26 LOADB                            R5 0
       27 LOADNIL                          R6
       28 LOADNIL                          R7
       29 MOVE                             R8 R4
       30 NEWCLOSURE                       R9 P0
       31 CAPTURE                          REF R5
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          UPVAL U1
       35 CAPTURE                          UPVAL U0
       36 CAPTURE                          VAL R3
       37 CAPTURE                          UPVAL U3
       38 CAPTURE                          VAL R2
       39 CAPTURE                          UPVAL U4
       40 CAPTURE                          VAL R1
       41 CAPTURE                          REF R6
       42 CAPTURE                          REF R7
       43 CALL                             R8 1 0
       44 JUMPIF                           R5 ; [+17]
       45 GETUPVAL                         R8 1
       46 GETTABLEKS                       R8 R8 K1 ["FFlagDebugLogAssistantUI"]
       48 JUMPIFNOT                        R8 ; [+8]
       49 GETIMPORT                        R8 K3 [print]
       51 LOADK                            R9 K9 ["[Tool Call] find tool failed: name=%* reason=withClient_did_not_run"]
       52 MOVE                             R11 R0
       53 NAMECALL                         R9 R9 K5 ["format"]
       55 CALL                             R9 2 1
       56 CALL                             R8 1 0
       57 GETIMPORT                        R8 K7 [error]
       59 LOADK                            R9 K8 ["callTool: MCP client not available"]
       60 CALL                             R8 1 0
       61 JUMP                             ; [+6]
       62 JUMPIFEQKNIL                     R7 ; [+5]
       64 GETIMPORT                        R8 K7 [error]
       66 MOVE                             R9 R7
       67 CALL                             R8 1 0
       68 CLOSEUPVALS                      R5
       69 RETURN                           R6 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getToolCallOptions"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["stripPrefix"]
        6 MOVE                             R3 R0
        7 CALL                             R2 1 -1
        8 CALL                             R1 -1 -1
        9 RETURN                           R1 -1

PROTO_12:
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
       11 CAPTURE                          VAL R2
       12 NEWCLOSURE                       R5 P4
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          UPVAL U5
       17 CAPTURE                          UPVAL U6
       18 DUPCLOSURE                       R6 K0 [PROTO_11]
       19 CAPTURE                          UPVAL U7
       20 CAPTURE                          UPVAL U8
       21 DUPTABLE                         R7 K5 [{"listTools", "resolveAllowedTools", "callTool", "getToolCallOptions"}]
       22 SETTABLEKS                       R3 R7 K1 ["listTools"]
       24 SETTABLEKS                       R4 R7 K2 ["resolveAllowedTools"]
       26 SETTABLEKS                       R5 R7 K3 ["callTool"]
       28 SETTABLEKS                       R6 R7 K4 ["getToolCallOptions"]
       30 RETURN                           R7 1

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
       25 GETTABLEKS                       R4 R0 K11 ["Flags"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R5 K12 ["ModelContextProtocol"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Parent"]
       39 GETTABLEKS                       R6 R6 K13 ["Signal"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K14 ["Types"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K15 ["Components"]
       51 GETTABLEKS                       R8 R8 K16 ["UIToolRegistry"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K18 [game]
       56 LOADK                            R10 K19 ["HttpService"]
       57 NAMECALL                         R8 R8 K20 ["GetService"]
       59 CALL                             R8 2 1
       60 GETTABLEKS                       R9 R1 K21 ["ToolNaming"]
       62 DUPCLOSURE                       R10 K22 [PROTO_0]
       63 CAPTURE                          VAL R4
       64 DUPCLOSURE                       R11 K23 [PROTO_1]
       65 CAPTURE                          VAL R6
       66 DUPCLOSURE                       R12 K24 [PROTO_2]
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R9
       69 DUPCLOSURE                       R13 K25 [PROTO_3]
       70 DUPCLOSURE                       R14 K26 [PROTO_12]
       71 CAPTURE                          VAL R13
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R10
       74 CAPTURE                          VAL R12
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R8
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R9
       80 RETURN                           R14 1
