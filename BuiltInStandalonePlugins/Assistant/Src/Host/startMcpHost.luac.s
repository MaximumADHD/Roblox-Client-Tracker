PROTO_0:
        0 DUPTABLE                         R0 K1 [{"message"}]
        1 LOADK                            R2 K2 ["pong from "]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K3 ["_serverInfo"]
        5 GETTABLEKS                       R3 R4 K4 ["name"]
        7 CONCAT                           R1 R2 R3
        8 SETTABLEKS                       R1 R0 K0 ["message"]
       10 RETURN                           R0 1

PROTO_1:
        0 DUPTABLE                         R0 K1 [{"tools"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K2 ["getDefinitions"]
        4 CALL                             R1 0 1
        5 SETTABLEKS                       R1 R0 K0 ["tools"]
        7 RETURN                           R0 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["params"]
        2 FASTCALL2K                       ASSERT R2 K1 ; [+5]
        4 MOVE                             R4 R2
        5 LOADK                            R5 K1 ["Expected params to be present in tools/call request"]
        6 GETIMPORT                        R3 K3 [assert]
        8 CALL                             R3 2 0
        9 GETTABLEKS                       R3 R2 K4 ["_meta"]
       11 GETTABLEKS                       R4 R2 K5 ["name"]
       13 MOVE                             R6 R4
       14 JUMPIFNOT                        R6 ; [+9]
       15 FASTCALL1                        TYPEOF R4 ; [+3]
       16 MOVE                             R8 R4
       17 GETIMPORT                        R7 K7 [typeof]
       19 CALL                             R7 1 1
       20 JUMPIFEQKS                       R7 K8 ["string"] ; [+2]
       22 LOADB                            R6 0 +1
       23 LOADB                            R6 1
       24 FASTCALL2K                       ASSERT R6 K9 ; [+4]
       26 LOADK                            R7 K9 ["Expected tool name to be a string"]
       27 GETIMPORT                        R5 K3 [assert]
       29 CALL                             R5 2 0
       30 GETTABLEKS                       R5 R2 K10 ["arguments"]
       32 GETUPVAL                         R7 0
       33 GETTABLEKS                       R6 R7 K11 ["getHandler"]
       35 MOVE                             R7 R4
       36 CALL                             R6 1 1
       37 MOVE                             R7 R6
       38 MOVE                             R8 R5
       39 MOVE                             R9 R3
       40 GETUPVAL                         R11 1
       41 CALL                             R11 0 1
       42 JUMPIFNOT                        R11 ; [+2]
       43 MOVE                             R10 R1
       44 JUMP                             ; [+1]
       45 LOADNIL                          R10
       46 CALL                             R7 3 1
       47 GETUPVAL                         R8 2
       48 CALL                             R8 0 1
       49 JUMPIFNOT                        R8 ; [+35]
       50 GETIMPORT                        R8 K13 [print]
       52 LOADK                            R10 K14 ["TOOL CALL FINISHED: %*"]
       53 MOVE                             R12 R4
       54 NAMECALL                         R10 R10 K15 ["format"]
       56 CALL                             R10 2 1
       57 MOVE                             R9 R10
       58 CALL                             R8 1 0
       59 GETIMPORT                        R8 K13 [print]
       61 LOADK                            R10 K16 ["Args: %*"]
       62 GETUPVAL                         R13 3
       63 GETTABLEKS                       R12 R13 K17 ["toString"]
       65 MOVE                             R13 R5
       66 CALL                             R12 1 1
       67 NAMECALL                         R10 R10 K15 ["format"]
       69 CALL                             R10 2 1
       70 MOVE                             R9 R10
       71 CALL                             R8 1 0
       72 GETIMPORT                        R8 K13 [print]
       74 LOADK                            R10 K18 ["Result: %*"]
       75 GETUPVAL                         R13 3
       76 GETTABLEKS                       R12 R13 K17 ["toString"]
       78 MOVE                             R13 R7
       79 CALL                             R12 1 1
       80 NAMECALL                         R10 R10 K15 ["format"]
       82 CALL                             R10 2 1
       83 MOVE                             R9 R10
       84 CALL                             R8 1 0
       85 RETURN                           R7 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
        3 DUPTABLE                         R1 K3 [{"name", "version"}]
        4 LOADK                            R2 K4 ["RobloxStudio"]
        5 SETTABLEKS                       R2 R1 K1 ["name"]
        7 LOADK                            R2 K5 ["0.1.0"]
        8 SETTABLEKS                       R2 R1 K2 ["version"]
       10 GETUPVAL                         R2 1
       11 CALL                             R0 2 1
       12 DUPTABLE                         R3 K7 [{"method"}]
       13 LOADK                            R4 K8 ["ping"]
       14 SETTABLEKS                       R4 R3 K6 ["method"]
       16 NEWCLOSURE                       R4 P0
       17 CAPTURE                          VAL R0
       18 NAMECALL                         R1 R0 K9 ["setRequestHandler"]
       20 CALL                             R1 3 0
       21 DUPTABLE                         R3 K7 [{"method"}]
       22 LOADK                            R4 K10 ["tools/list"]
       23 SETTABLEKS                       R4 R3 K6 ["method"]
       25 DUPCLOSURE                       R4 K11 [PROTO_1]
       26 CAPTURE                          UPVAL U2
       27 NAMECALL                         R1 R0 K9 ["setRequestHandler"]
       29 CALL                             R1 3 0
       30 DUPTABLE                         R3 K7 [{"method"}]
       31 LOADK                            R4 K12 ["tools/call"]
       32 SETTABLEKS                       R4 R3 K6 ["method"]
       34 DUPCLOSURE                       R4 K13 [PROTO_2]
       35 CAPTURE                          UPVAL U2
       36 CAPTURE                          UPVAL U3
       37 CAPTURE                          UPVAL U4
       38 CAPTURE                          UPVAL U5
       39 NAMECALL                         R1 R0 K9 ["setRequestHandler"]
       41 CALL                             R1 3 0
       42 RETURN                           R0 1

PROTO_4:
        0 GETGLOBAL                        R1 K0 ["getBuiltinServer"]
        2 CALL                             R1 0 1
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["registerServer"]
        6 MOVE                             R3 R1
        7 CALL                             R2 1 0
        8 MOVE                             R4 R0
        9 NAMECALL                         R2 R1 K2 ["connect"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
        3 LOADK                            R1 K1 ["Client->Side"]
        4 CALL                             R0 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K0 ["new"]
        8 LOADK                            R2 K2 ["Server<-Side"]
        9 CALL                             R1 1 1
       10 MOVE                             R4 R1
       11 LOADB                            R5 0
       12 NAMECALL                         R2 R0 K3 ["bindPeer"]
       14 CALL                             R2 3 0
       15 RETURN                           R0 2

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R3 K3 [Enum.WebStreamClientType.RawStream]
        3 MOVE                             R4 R0
        4 NAMECALL                         R1 R1 K4 ["CreateWebStreamClientInternal"]
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 1
        3 SETTABLEKS                       R1 R0 K0 ["ALL_LOGGING_ENABLED"]
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R0 R1 K1 ["setStreamingClientCreationFunc"]
        8 DUPCLOSURE                       R1 K2 [PROTO_6]
        9 CAPTURE                          UPVAL U3
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+5]
        3 GETUPVAL                         R0 1
        4 NAMECALL                         R0 R0 K0 ["close"]
        6 CALL                             R0 1 0
        7 JUMP                             ; [+4]
        8 GETUPVAL                         R0 2
        9 NAMECALL                         R0 R0 K0 ["close"]
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 3
       13 NAMECALL                         R0 R0 K0 ["close"]
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+64]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K0 ["get"]
        6 CALL                             R2 0 1
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R3 R4 K1 ["getIntegrationsAsync"]
       10 MOVE                             R4 R2
       11 CALL                             R3 1 1
       12 MOVE                             R4 R3
       13 LOADNIL                          R5
       14 LOADNIL                          R6
       15 FORGPREP                         R4
       16 GETTABLEKS                       R9 R8 K2 ["disabled"]
       18 JUMPIF                           R9 ; [+46]
       19 GETUPVAL                         R9 3
       20 GETTABLEKS                       R11 R8 K3 ["label"]
       22 GETTABLEKS                       R12 R8 K4 ["url"]
       24 NAMECALL                         R9 R9 K5 ["getOrCreateAuthorizer"]
       26 CALL                             R9 3 1
       27 LOADNIL                          R10
       28 GETUPVAL                         R11 4
       29 CALL                             R11 0 1
       30 JUMPIFNOT                        R11 ; [+9]
       31 GETUPVAL                         R12 5
       32 GETTABLEKS                       R11 R12 K6 ["new"]
       34 GETTABLEKS                       R12 R8 K4 ["url"]
       36 MOVE                             R13 R9
       37 CALL                             R11 2 1
       38 MOVE                             R10 R11
       39 JUMP                             ; [+8]
       40 GETUPVAL                         R12 6
       41 GETTABLEKS                       R11 R12 K6 ["new"]
       43 GETTABLEKS                       R12 R8 K4 ["url"]
       45 MOVE                             R13 R9
       46 CALL                             R11 2 1
       47 MOVE                             R10 R11
       48 DUPTABLE                         R11 K10 [{"identifier", "transport", "clientOptions"}]
       49 GETTABLEKS                       R12 R8 K3 ["label"]
       51 SETTABLEKS                       R12 R11 K7 ["identifier"]
       53 GETTABLEKS                       R12 R10 K8 ["transport"]
       55 SETTABLEKS                       R12 R11 K8 ["transport"]
       57 GETUPVAL                         R12 7
       58 SETTABLEKS                       R12 R11 K9 ["clientOptions"]
       60 GETUPVAL                         R12 8
       61 MOVE                             R14 R11
       62 NAMECALL                         R12 R12 K11 ["addClient"]
       64 CALL                             R12 2 0
       65 FORGLOOP                         R4 2 ; [-50]
       67 GETUPVAL                         R2 8
       68 NAMECALL                         R2 R2 K12 ["connectAll"]
       70 CALL                             R2 1 1
       71 NAMECALL                         R2 R2 K13 ["await"]
       73 CALL                             R2 1 2
       74 JUMPIF                           R2 ; [+19]
       75 GETUPVAL                         R4 0
       76 CALL                             R4 0 1
       77 JUMPIFNOT                        R4 ; [+5]
       78 GETUPVAL                         R4 8
       79 NAMECALL                         R4 R4 K14 ["close"]
       81 CALL                             R4 1 0
       82 JUMP                             ; [+4]
       83 GETUPVAL                         R4 9
       84 NAMECALL                         R4 R4 K14 ["close"]
       86 CALL                             R4 1 0
       87 GETUPVAL                         R4 10
       88 NAMECALL                         R4 R4 K14 ["close"]
       90 CALL                             R4 1 0
       91 MOVE                             R4 R1
       92 MOVE                             R5 R3
       93 CALL                             R4 1 0
       94 MOVE                             R4 R0
       95 GETUPVAL                         R5 8
       96 CALL                             R4 1 0
       97 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["new"]
        3 LOADK                            R5 K1 ["Client->Side"]
        4 CALL                             R4 1 1
        5 GETUPVAL                         R6 0
        6 GETTABLEKS                       R5 R6 K0 ["new"]
        8 LOADK                            R6 K2 ["Server<-Side"]
        9 CALL                             R5 1 1
       10 MOVE                             R8 R5
       11 LOADB                            R9 0
       12 NAMECALL                         R6 R4 K3 ["bindPeer"]
       14 CALL                             R6 3 0
       15 MOVE                             R2 R4
       16 MOVE                             R3 R5
       17 GETGLOBAL                        R4 K4 ["startLocalServer"]
       19 GETTABLEKS                       R5 R3 K5 ["transport"]
       21 CALL                             R4 1 1
       22 NAMECALL                         R4 R4 K6 ["await"]
       24 CALL                             R4 1 2
       25 JUMPIF                           R4 ; [+6]
       26 GETUPVAL                         R7 1
       27 GETTABLEKS                       R6 R7 K7 ["reject"]
       29 LOADK                            R7 K8 ["Failed to start local MCP server"]
       30 CALL                             R6 1 -1
       31 RETURN                           R6 -1
       32 GETUPVAL                         R7 2
       33 GETTABLEKS                       R6 R7 K0 ["new"]
       35 DUPTABLE                         R7 K11 [{"name", "version"}]
       36 GETUPVAL                         R9 3
       37 GETTABLEKS                       R8 R9 K12 ["MCP_CLIENT_IDENTIFIER"]
       39 SETTABLEKS                       R8 R7 K9 ["name"]
       41 GETUPVAL                         R9 4
       42 GETTABLEKS                       R8 R9 K13 ["JSONRPC_VERSION"]
       44 SETTABLEKS                       R8 R7 K10 ["version"]
       46 CALL                             R6 1 1
       47 NEWCLOSURE                       R7 P0
       48 CAPTURE                          UPVAL U5
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R3
       52 MOVE                             R10 R7
       53 NAMECALL                         R8 R0 K14 ["Connect"]
       55 CALL                             R8 2 0
       56 DUPTABLE                         R8 K18 [{"identifier", "transport", "clientOptions", "useStaticToolNames"}]
       57 GETUPVAL                         R10 3
       58 GETTABLEKS                       R9 R10 K12 ["MCP_CLIENT_IDENTIFIER"]
       60 SETTABLEKS                       R9 R8 K15 ["identifier"]
       62 GETTABLEKS                       R9 R2 K5 ["transport"]
       64 SETTABLEKS                       R9 R8 K5 ["transport"]
       66 GETUPVAL                         R9 6
       67 SETTABLEKS                       R9 R8 K16 ["clientOptions"]
       69 LOADB                            R9 1
       70 SETTABLEKS                       R9 R8 K17 ["useStaticToolNames"]
       72 MOVE                             R11 R8
       73 NAMECALL                         R9 R6 K19 ["addClient"]
       75 CALL                             R9 2 0
       76 GETUPVAL                         R10 1
       77 GETTABLEKS                       R9 R10 K0 ["new"]
       79 NEWCLOSURE                       R10 P1
       80 CAPTURE                          UPVAL U5
       81 CAPTURE                          UPVAL U7
       82 CAPTURE                          UPVAL U8
       83 CAPTURE                          VAL R1
       84 CAPTURE                          UPVAL U9
       85 CAPTURE                          UPVAL U10
       86 CAPTURE                          UPVAL U11
       87 CAPTURE                          UPVAL U6
       88 CAPTURE                          VAL R6
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R3
       91 CALL                             R9 1 -1
       92 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R0 K10 ["Packages"]
       17 GETTABLEKS                       R3 R4 K11 ["AssistantUI"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R5 R0 K10 ["Packages"]
       24 GETTABLEKS                       R4 R5 K12 ["LuauPolyfill"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R6 R0 K10 ["Packages"]
       31 GETTABLEKS                       R5 R6 K13 ["ModelContextProtocol"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R7 R0 K14 ["Src"]
       38 GETTABLEKS                       R6 R7 K15 ["Types"]
       40 CALL                             R5 1 1
       41 GETTABLEKS                       R8 R2 K16 ["Flags"]
       43 GETTABLEKS                       R7 R8 K17 ["Shared"]
       45 GETTABLEKS                       R6 R7 K18 ["FFlagDebugLogAssistantUI"]
       47 GETTABLEKS                       R9 R2 K16 ["Flags"]
       49 GETTABLEKS                       R8 R9 K17 ["Shared"]
       51 GETTABLEKS                       R7 R8 K19 ["FFlagMCPAssistantLongRunningToolCalls"]
       53 GETTABLEKS                       R10 R2 K16 ["Flags"]
       55 GETTABLEKS                       R9 R10 K17 ["Shared"]
       57 GETTABLEKS                       R8 R9 K20 ["FFlagMCPAssistantManagementMenu"]
       59 GETTABLEKS                       R11 R2 K16 ["Flags"]
       61 GETTABLEKS                       R10 R11 K17 ["Shared"]
       63 GETTABLEKS                       R9 R10 K21 ["FFlagAssistantUseVariantHttpTransport"]
       65 GETTABLEKS                       R11 R2 K22 ["Utils"]
       67 GETTABLEKS                       R10 R11 K23 ["Tools"]
       69 GETTABLEKS                       R12 R4 K24 ["Util"]
       71 GETTABLEKS                       R11 R12 K25 ["Logging"]
       73 GETTABLEKS                       R12 R4 K15 ["Types"]
       75 GETTABLEKS                       R13 R4 K26 ["MultiplexedClient"]
       77 GETTABLEKS                       R14 R4 K27 ["PeerTransport"]
       79 GETTABLEKS                       R15 R4 K28 ["Promise"]
       81 GETTABLEKS                       R16 R4 K29 ["Server"]
       83 GETTABLEKS                       R17 R4 K30 ["ServerRegistry"]
       85 GETTABLEKS                       R19 R4 K31 ["StreamableHttpClient"]
       87 GETTABLEKS                       R18 R19 K32 ["StreamableHttpClientTransport"]
       89 GETTABLEKS                       R19 R4 K33 ["ToolRegistry"]
       91 GETTABLEKS                       R21 R2 K34 ["IntegrationManagement"]
       93 GETTABLEKS                       R20 R21 K35 ["IntegrationManager"]
       95 GETTABLEKS                       R22 R2 K36 ["Guest"]
       97 GETTABLEKS                       R21 R22 K37 ["Environment"]
       99 GETTABLEKS                       R23 R4 K31 ["StreamableHttpClient"]
      101 GETTABLEKS                       R22 R23 K38 ["StreamingClientFactory"]
      103 GETTABLEKS                       R24 R4 K39 ["HttpVariantClientTransport"]
      105 GETTABLEKS                       R23 R24 K39 ["HttpVariantClientTransport"]
      107 DUPTABLE                         R24 K41 [{"capabilities"}]
      108 DUPTABLE                         R25 K45 [{"experimental", "roots", "sampling"}]
      109 GETTABLEKS                       R26 R12 K46 ["emptyObject"]
      111 CALL                             R26 0 1
      112 SETTABLEKS                       R26 R25 K42 ["experimental"]
      114 GETTABLEKS                       R26 R12 K46 ["emptyObject"]
      116 CALL                             R26 0 1
      117 SETTABLEKS                       R26 R25 K43 ["roots"]
      119 GETTABLEKS                       R26 R12 K46 ["emptyObject"]
      121 CALL                             R26 0 1
      122 SETTABLEKS                       R26 R25 K44 ["sampling"]
      124 SETTABLEKS                       R25 R24 K40 ["capabilities"]
      126 DUPTABLE                         R25 K41 [{"capabilities"}]
      127 DUPTABLE                         R26 K50 [{"prompts", "resources", "tools"}]
      128 GETTABLEKS                       R27 R12 K46 ["emptyObject"]
      130 CALL                             R27 0 1
      131 SETTABLEKS                       R27 R26 K47 ["prompts"]
      133 GETTABLEKS                       R27 R12 K46 ["emptyObject"]
      135 CALL                             R27 0 1
      136 SETTABLEKS                       R27 R26 K48 ["resources"]
      138 DUPTABLE                         R27 K52 [{"listChanged"}]
      139 LOADB                            R28 1
      140 SETTABLEKS                       R28 R27 K51 ["listChanged"]
      142 SETTABLEKS                       R27 R26 K49 ["tools"]
      144 SETTABLEKS                       R26 R25 K40 ["capabilities"]
      146 DUPCLOSURE                       R26 K53 [PROTO_3]
      147 CAPTURE                          VAL R16
      148 CAPTURE                          VAL R25
      149 CAPTURE                          VAL R19
      150 CAPTURE                          VAL R7
      151 CAPTURE                          VAL R6
      152 CAPTURE                          VAL R10
      153 SETGLOBAL                        R26 K54 ["getBuiltinServer"]
      155 DUPCLOSURE                       R26 K55 [PROTO_4]
      156 CAPTURE                          VAL R17
      157 SETGLOBAL                        R26 K56 ["startLocalServer"]
      159 DUPCLOSURE                       R26 K57 [PROTO_5]
      160 CAPTURE                          VAL R14
      161 DUPCLOSURE                       R27 K58 [PROTO_7]
      162 CAPTURE                          VAL R11
      163 CAPTURE                          VAL R6
      164 CAPTURE                          VAL R22
      165 CAPTURE                          VAL R1
      166 DUPCLOSURE                       R28 K59 [PROTO_10]
      167 CAPTURE                          VAL R14
      168 CAPTURE                          VAL R15
      169 CAPTURE                          VAL R13
      170 CAPTURE                          VAL R5
      171 CAPTURE                          VAL R12
      172 CAPTURE                          VAL R8
      173 CAPTURE                          VAL R24
      174 CAPTURE                          VAL R21
      175 CAPTURE                          VAL R20
      176 CAPTURE                          VAL R9
      177 CAPTURE                          VAL R23
      178 CAPTURE                          VAL R18
      179 DUPTABLE                         R29 K62 [{"promiseMcpHost", "configureModelContextProtocol", "startLocalServer"}]
      180 SETTABLEKS                       R28 R29 K60 ["promiseMcpHost"]
      182 SETTABLEKS                       R27 R29 K61 ["configureModelContextProtocol"]
      184 GETGLOBAL                        R30 K56 ["startLocalServer"]
      186 SETTABLEKS                       R30 R29 K56 ["startLocalServer"]
      188 RETURN                           R29 1
