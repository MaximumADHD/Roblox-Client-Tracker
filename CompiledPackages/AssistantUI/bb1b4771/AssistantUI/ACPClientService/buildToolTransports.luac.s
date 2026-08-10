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
       21 JUMPIFNOT                        R5 ; [+22]
       22 GETIMPORT                        R5 K4 [print]
       24 LOADK                            R9 K5 ["[Tool Call] find tool: name=%* found=%* isStudioStaticTool=%* "]
       25 GETUPVAL                         R11 1
       26 MOVE                             R12 R3
       27 MOVE                             R13 R4
       28 NAMECALL                         R9 R9 K6 ["format"]
       30 CALL                             R9 4 1
       31 MOVE                             R7 R9
       32 LOADK                            R9 K7 ["staticClientId=%*"]
       33 FASTCALL1                        TOSTRING R1 ; [+3]
       34 MOVE                             R12 R1
       35 GETIMPORT                        R11 K9 [tostring]
       37 CALL                             R11 1 1
       38 NAMECALL                         R9 R9 K6 ["format"]
       40 CALL                             R9 2 1
       41 MOVE                             R8 R9
       42 CONCAT                           R6 R7 R8
       43 CALL                             R5 1 0
       44 LOADNIL                          R5
       45 JUMPIFNOT                        R4 ; [+46]
       46 GETUPVAL                         R6 4
       47 GETTABLEKS                       R6 R6 K10 ["getToolCallMeta"]
       49 JUMPIFNOT                        R6 ; [+11]
       50 GETUPVAL                         R6 4
       51 GETTABLEKS                       R6 R6 K10 ["getToolCallMeta"]
       53 GETUPVAL                         R7 5
       54 JUMPIFNOT                        R7 ; [+3]
       55 GETUPVAL                         R7 5
       56 GETTABLEKS                       R7 R7 K11 ["acpSessionId"]
       58 CALL                             R6 1 1
       59 MOVE                             R5 R6
       60 JUMP                             ; [+1]
       61 LOADNIL                          R5
       62 JUMPIFNOT                        R5 ; [+15]
       63 GETIMPORT                        R6 K14 [table.clone]
       65 MOVE                             R7 R5
       66 CALL                             R6 1 1
       67 MOVE                             R5 R6
       68 GETTABLEKS                       R6 R5 K15 ["messageGuid"]
       70 JUMPIF                           R6 ; [+5]
       71 GETUPVAL                         R6 6
       72 LOADB                            R8 0
       73 NAMECALL                         R6 R6 K16 ["GenerateGUID"]
       75 CALL                             R6 2 1
       76 SETTABLEKS                       R6 R5 K15 ["messageGuid"]
       78 GETUPVAL                         R6 5
       79 JUMPIFNOT                        R6 ; [+12]
       80 MOVE                             R6 R5
       81 JUMPIF                           R6 ; [+2]
       82 NEWTABLE                         R6 0 0
       84 MOVE                             R5 R6
       85 GETUPVAL                         R6 5
       86 LOADNIL                          R7
       87 LOADNIL                          R8
       88 FORGPREP                         R6
       89 SETTABLE                         R10 R5 R9
       90 FORGLOOP                         R6 2 ; [-2]
       92 GETUPVAL                         R7 7
       93 JUMPIFNOT                        R7 ; [+5]
       94 GETIMPORT                        R6 K14 [table.clone]
       96 GETUPVAL                         R7 7
       97 CALL                             R6 1 1
       98 JUMP                             ; [+2]
       99 NEWTABLE                         R6 0 0
      101 LOADK                            R7 K17 [200000000]
      102 SETTABLEKS                       R7 R6 K18 ["timeout"]
      104 GETTABLEKS                       R7 R6 K19 ["signal"]
      106 JUMPIFNOTEQKNIL                  R7 ; [+7]
      108 GETUPVAL                         R7 8
      109 GETTABLEKS                       R7 R7 K20 ["new"]
      111 CALL                             R7 0 1
      112 SETTABLEKS                       R7 R6 K19 ["signal"]
      114 GETUPVAL                         R7 3
      115 GETTABLEKS                       R7 R7 K2 ["FFlagDebugLogAssistantUI"]
      117 JUMPIFNOT                        R7 ; [+9]
      118 GETIMPORT                        R7 K4 [print]
      120 LOADK                            R9 K21 ["[Tool Call] MCP call start: name=%*"]
      121 GETUPVAL                         R11 1
      122 NAMECALL                         R9 R9 K6 ["format"]
      124 CALL                             R9 2 1
      125 MOVE                             R8 R9
      126 CALL                             R7 1 0
      127 GETUPVAL                         R9 1
      128 GETUPVAL                         R10 9
      129 MOVE                             R11 R6
      130 MOVE                             R12 R5
      131 NAMECALL                         R7 R0 K22 ["callTool"]
      133 CALL                             R7 5 1
      134 NAMECALL                         R7 R7 K23 ["await"]
      136 CALL                             R7 1 2
      137 JUMPIFNOT                        R7 ; [+15]
      138 GETUPVAL                         R9 3
      139 GETTABLEKS                       R9 R9 K2 ["FFlagDebugLogAssistantUI"]
      141 JUMPIFNOT                        R9 ; [+9]
      142 GETIMPORT                        R9 K4 [print]
      144 LOADK                            R11 K24 ["[Tool Call] MCP call ok: name=%*"]
      145 GETUPVAL                         R13 1
      146 NAMECALL                         R11 R11 K6 ["format"]
      148 CALL                             R11 2 1
      149 MOVE                             R10 R11
      150 CALL                             R9 1 0
      151 SETUPVAL                         R8 10
      152 RETURN                           R0 0
      153 GETUPVAL                         R9 3
      154 GETTABLEKS                       R9 R9 K2 ["FFlagDebugLogAssistantUI"]
      156 JUMPIFNOT                        R9 ; [+14]
      157 GETIMPORT                        R9 K4 [print]
      159 LOADK                            R11 K25 ["[Tool Call] MCP call failed: name=%* error=%*"]
      160 GETUPVAL                         R13 1
      161 FASTCALL1                        TOSTRING R8 ; [+3]
      162 MOVE                             R15 R8
      163 GETIMPORT                        R14 K9 [tostring]
      165 CALL                             R14 1 1
      166 NAMECALL                         R11 R11 K6 ["format"]
      168 CALL                             R11 3 1
      169 MOVE                             R10 R11
      170 CALL                             R9 1 0
      171 SETUPVAL                         R8 11
      172 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["getWithClient"]
        3 JUMPIFNOT                        R5 ; [+4]
        4 MOVE                             R6 R5
        5 CALL                             R6 0 1
        6 MOVE                             R4 R6
        7 JUMP                             ; [+1]
        8 LOADNIL                          R4
        9 JUMPIF                           R4 ; [+17]
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K1 ["FFlagDebugLogAssistantUI"]
       13 JUMPIFNOT                        R5 ; [+9]
       14 GETIMPORT                        R5 K3 [print]
       16 LOADK                            R7 K4 ["[Tool Call] find tool failed: name=%* reason=no_mcp_client"]
       17 MOVE                             R9 R0
       18 NAMECALL                         R7 R7 K5 ["format"]
       20 CALL                             R7 2 1
       21 MOVE                             R6 R7
       22 CALL                             R5 1 0
       23 GETIMPORT                        R5 K7 [error]
       25 LOADK                            R6 K8 ["callTool: MCP client not available"]
       26 CALL                             R5 1 0
       27 LOADB                            R5 0
       28 LOADNIL                          R6
       29 LOADNIL                          R7
       30 MOVE                             R8 R4
       31 NEWCLOSURE                       R9 P0
       32 CAPTURE                          REF R5
       33 CAPTURE                          VAL R0
       34 CAPTURE                          UPVAL U2
       35 CAPTURE                          UPVAL U1
       36 CAPTURE                          UPVAL U0
       37 CAPTURE                          VAL R3
       38 CAPTURE                          UPVAL U3
       39 CAPTURE                          VAL R2
       40 CAPTURE                          UPVAL U4
       41 CAPTURE                          VAL R1
       42 CAPTURE                          REF R6
       43 CAPTURE                          REF R7
       44 CALL                             R8 1 0
       45 JUMPIF                           R5 ; [+18]
       46 GETUPVAL                         R8 1
       47 GETTABLEKS                       R8 R8 K1 ["FFlagDebugLogAssistantUI"]
       49 JUMPIFNOT                        R8 ; [+9]
       50 GETIMPORT                        R8 K3 [print]
       52 LOADK                            R10 K9 ["[Tool Call] find tool failed: name=%* reason=withClient_did_not_run"]
       53 MOVE                             R12 R0
       54 NAMECALL                         R10 R10 K5 ["format"]
       56 CALL                             R10 2 1
       57 MOVE                             R9 R10
       58 CALL                             R8 1 0
       59 GETIMPORT                        R8 K7 [error]
       61 LOADK                            R9 K8 ["callTool: MCP client not available"]
       62 CALL                             R8 1 0
       63 JUMP                             ; [+6]
       64 JUMPIFEQKNIL                     R7 ; [+5]
       66 GETIMPORT                        R8 K7 [error]
       68 MOVE                             R9 R7
       69 CALL                             R8 1 0
       70 CLOSEUPVALS                      R5
       71 RETURN                           R6 1

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
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          UPVAL U5
       15 CAPTURE                          UPVAL U6
       16 DUPCLOSURE                       R5 K0 [PROTO_10]
       17 CAPTURE                          UPVAL U7
       18 CAPTURE                          UPVAL U8
       19 DUPTABLE                         R6 K5 [{"listTools", "resolveAllowedTools", "callTool", "getToolCallOptions"}]
       20 SETTABLEKS                       R2 R6 K1 ["listTools"]
       22 SETTABLEKS                       R3 R6 K2 ["resolveAllowedTools"]
       24 SETTABLEKS                       R4 R6 K3 ["callTool"]
       26 SETTABLEKS                       R5 R6 K4 ["getToolCallOptions"]
       28 RETURN                           R6 1

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
       70 DUPCLOSURE                       R14 K26 [PROTO_11]
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
