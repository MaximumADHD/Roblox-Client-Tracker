PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["mcpServers"]
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 RETURN                           R4 1
        6 FORGLOOP                         R1 2 ; [-2]
        8 LOADB                            R2 0
        9 FASTCALL2K                       ASSERT R2 K1 ; [+4]
       11 LOADK                            R3 K1 ["No MCP servers found in instructions"]
       12 GETIMPORT                        R1 K3 [assert]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R6 R0 K0 ["kind"]
        2 JUMPIFEQKS                       R6 K1 ["toggle"] ; [+2]
        4 LOADB                            R5 0 +1
        5 LOADB                            R5 1
        6 FASTCALL2K                       ASSERT R5 K2 ; [+4]
        8 LOADK                            R6 K2 ["checkEnabledAsync should only be provided for toggle kind entries"]
        9 GETIMPORT                        R4 K4 [assert]
       11 CALL                             R4 2 0
       12 JUMPIFNOT                        R1 ; [+2]
       13 JUMPIFNOTEQKS                    R1 K5 [""] ; [+3]
       15 LOADB                            R4 0
       16 RETURN                           R4 1
       17 GETTABLEKS                       R5 R0 K7 ["mcpJSONEntry"]
       19 ORK                              R4 R5 K6 ["mcpServers"]
       20 GETTABLEKS                       R5 R2 K8 ["decodeAsync"]
       22 MOVE                             R6 R1
       23 CALL                             R5 1 1
       24 GETTABLEKS                       R7 R3 K6 ["mcpServers"]
       26 LOADNIL                          R8
       27 LOADNIL                          R9
       28 FORGPREP                         R7
       29 MOVE                             R6 R10
       30 JUMP                             ; [+10]
       31 FORGLOOP                         R7 2 ; [-3]
       33 LOADB                            R8 0
       34 FASTCALL2K                       ASSERT R8 K9 ; [+4]
       36 LOADK                            R9 K9 ["No MCP servers found in instructions"]
       37 GETIMPORT                        R7 K4 [assert]
       39 CALL                             R7 2 0
       40 LOADNIL                          R6
       41 MOVE                             R7 R5
       42 JUMPIFNOT                        R7 ; [+4]
       43 GETTABLE                         R7 R5 R4
       44 JUMPIFNOT                        R7 ; [+2]
       45 GETTABLE                         R8 R5 R4
       46 GETTABLE                         R7 R8 R6
       47 RETURN                           R7 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["decodeAsync"]
        3 GETUPVAL                         R2 1
        4 ORK                              R1 R2 K1 ["{}"]
        5 CALL                             R0 1 1
        6 JUMPIF                           R0 ; [+2]
        7 NEWTABLE                         R0 0 0
        9 RETURN                           R0 1

PROTO_3:
        0 GETTABLEKS                       R7 R0 K0 ["kind"]
        2 JUMPIFEQKS                       R7 K1 ["toggle"] ; [+2]
        4 LOADB                            R6 0 +1
        5 LOADB                            R6 1
        6 FASTCALL2K                       ASSERT R6 K2 ; [+4]
        8 LOADK                            R7 K2 ["setEnabledAsync should only be provided for toggle kind entries"]
        9 GETIMPORT                        R5 K4 [assert]
       11 CALL                             R5 2 0
       12 GETTABLEKS                       R6 R4 K5 ["mcpServers"]
       14 LOADNIL                          R7
       15 LOADNIL                          R8
       16 FORGPREP                         R6
       17 MOVE                             R5 R9
       18 JUMP                             ; [+10]
       19 FORGLOOP                         R6 2 ; [-3]
       21 LOADB                            R7 0
       22 FASTCALL2K                       ASSERT R7 K6 ; [+4]
       24 LOADK                            R8 K6 ["No MCP servers found in instructions"]
       25 GETIMPORT                        R6 K4 [assert]
       27 CALL                             R6 2 0
       28 LOADNIL                          R5
       29 GETTABLEKS                       R7 R0 K7 ["mcpJSONEntry"]
       31 ORK                              R6 R7 K5 ["mcpServers"]
       32 GETIMPORT                        R7 K9 [pcall]
       34 NEWCLOSURE                       R8 P0
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R1
       37 CALL                             R7 1 2
       38 JUMPIFNOT                        R7 ; [+7]
       39 FASTCALL1                        TYPE R8 ; [+3]
       40 MOVE                             R10 R8
       41 GETIMPORT                        R9 K11 [type]
       43 CALL                             R9 1 1
       44 JUMPIFEQKS                       R9 K12 ["table"] ; [+3]
       46 NEWTABLE                         R8 0 0
       48 JUMPIF                           R2 ; [+8]
       49 JUMPIFNOT                        R8 ; [+5]
       50 GETTABLE                         R9 R8 R6
       51 JUMPIFNOT                        R9 ; [+3]
       52 GETTABLE                         R10 R8 R6
       53 GETTABLE                         R9 R10 R5
       54 JUMPIF                           R9 ; [+2]
       55 LOADNIL                          R9
       56 RETURN                           R9 1
       57 GETTABLE                         R9 R8 R6
       58 JUMPIF                           R9 ; [+2]
       59 NEWTABLE                         R9 0 0
       61 SETTABLE                         R9 R8 R6
       62 GETTABLEKS                       R10 R4 K5 ["mcpServers"]
       64 GETTABLE                         R9 R10 R5
       65 GETTABLE                         R10 R8 R6
       66 JUMPIFNOT                        R2 ; [+18]
       67 DUPTABLE                         R11 K16 [{"transport", "command", "args"}]
       68 GETTABLEKS                       R13 R0 K17 ["noTransport"]
       70 JUMPIF                           R13 ; [+2]
       71 LOADK                            R12 K18 ["stdio"]
       72 JUMP                             ; [+1]
       73 LOADNIL                          R12
       74 SETTABLEKS                       R12 R11 K13 ["transport"]
       76 GETTABLEKS                       R12 R9 K14 ["command"]
       78 SETTABLEKS                       R12 R11 K14 ["command"]
       80 GETTABLEKS                       R12 R9 K15 ["args"]
       82 SETTABLEKS                       R12 R11 K15 ["args"]
       84 JUMP                             ; [+1]
       85 LOADNIL                          R11
       86 SETTABLE                         R11 R10 R5
       87 GETTABLEKS                       R10 R3 K19 ["encodeAsync"]
       89 MOVE                             R11 R8
       90 LOADB                            R12 1
       91 CALL                             R10 2 -1
       92 RETURN                           R10 -1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["mcpServers"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 MOVE                             R1 R5
        6 JUMP                             ; [+10]
        7 FORGLOOP                         R2 2 ; [-3]
        9 LOADB                            R3 0
       10 FASTCALL2K                       ASSERT R3 K1 ; [+4]
       12 LOADK                            R4 K1 ["No MCP servers found in instructions"]
       13 GETIMPORT                        R2 K3 [assert]
       15 CALL                             R2 2 0
       16 LOADNIL                          R1
       17 GETTABLEKS                       R3 R0 K0 ["mcpServers"]
       19 GETTABLE                         R2 R3 R1
       20 LOADK                            R4 K4 ["\"%*\""]
       21 GETTABLEKS                       R6 R2 K5 ["command"]
       23 NAMECALL                         R4 R4 K6 ["format"]
       25 CALL                             R4 2 1
       26 MOVE                             R3 R4
       27 GETTABLEKS                       R5 R2 K7 ["args"]
       29 FASTCALL1                        TYPEOF R5 ; [+2]
       30 GETIMPORT                        R4 K9 [typeof]
       32 CALL                             R4 1 1
       33 JUMPIFNOTEQKS                    R4 K10 ["table"] ; [+24]
       35 GETTABLEKS                       R4 R2 K7 ["args"]
       37 LOADNIL                          R5
       38 LOADNIL                          R6
       39 FORGPREP                         R4
       40 FASTCALL1                        TYPEOF R8 ; [+3]
       41 MOVE                             R10 R8
       42 GETIMPORT                        R9 K9 [typeof]
       44 CALL                             R9 1 1
       45 JUMPIFNOTEQKS                    R9 K11 ["string"] ; [+10]
       47 MOVE                             R9 R3
       48 LOADK                            R10 K12 [" "]
       49 LOADK                            R12 K4 ["\"%*\""]
       50 MOVE                             R14 R8
       51 NAMECALL                         R12 R12 K6 ["format"]
       53 CALL                             R12 2 1
       54 MOVE                             R11 R12
       55 CONCAT                           R3 R9 R11
       56 FORGLOOP                         R4 2 ; [-17]
       58 RETURN                           R3 1

PROTO_5:
        0 LOADK                            R2 K0 ["codex mcp add Roblox_Studio -- %*"]
        1 GETUPVAL                         R4 0
        2 MOVE                             R5 R0
        3 CALL                             R4 1 1
        4 NAMECALL                         R2 R2 K1 ["format"]
        6 CALL                             R2 2 1
        7 MOVE                             R1 R2
        8 RETURN                           R1 1

PROTO_6:
        0 LOADK                            R2 K0 ["claude mcp add  --transport stdio Roblox_Studio -- %*"]
        1 GETUPVAL                         R4 0
        2 MOVE                             R5 R0
        3 CALL                             R4 1 1
        4 NAMECALL                         R2 R2 K1 ["format"]
        6 CALL                             R2 2 1
        7 MOVE                             R1 R2
        8 RETURN                           R1 1

PROTO_7:
        0 LOADK                            R2 K0 ["gemini mcp add --transport stdio Roblox_Studio %*"]
        1 GETUPVAL                         R4 0
        2 MOVE                             R5 R0
        3 CALL                             R4 1 1
        4 NAMECALL                         R2 R2 K1 ["format"]
        6 CALL                             R2 2 1
        7 MOVE                             R1 R2
        8 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R3 K7 ["Environment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R5 K9 ["Contexts"]
       20 GETTABLEKS                       R3 R4 K10 ["ExternalServerContext"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K11 [PROTO_0]
       24 DUPCLOSURE                       R4 K12 [PROTO_1]
       25 DUPCLOSURE                       R5 K13 [PROTO_3]
       26 DUPCLOSURE                       R6 K14 [PROTO_4]
       27 NEWTABLE                         R7 0 9
       29 DUPTABLE                         R8 K22 [{"id", "label", "indicatorPath", "kind", "noTransport", "checkEnabledAsync", "setEnabledAsync"}]
       30 LOADK                            R9 K23 ["antigravity"]
       31 SETTABLEKS                       R9 R8 K15 ["id"]
       33 LOADK                            R9 K24 ["Antigravity"]
       34 SETTABLEKS                       R9 R8 K16 ["label"]
       36 LOADK                            R9 K25 ["~/.gemini/antigravity/mcp_config.json"]
       37 SETTABLEKS                       R9 R8 K17 ["indicatorPath"]
       39 LOADK                            R9 K26 ["toggle"]
       40 SETTABLEKS                       R9 R8 K18 ["kind"]
       42 LOADB                            R9 1
       43 SETTABLEKS                       R9 R8 K19 ["noTransport"]
       45 SETTABLEKS                       R4 R8 K20 ["checkEnabledAsync"]
       47 SETTABLEKS                       R5 R8 K21 ["setEnabledAsync"]
       49 DUPTABLE                         R9 K28 [{"id", "label", "indicatorPath", "kind", "formatCommand"}]
       50 LOADK                            R10 K29 ["codex"]
       51 SETTABLEKS                       R10 R9 K15 ["id"]
       53 LOADK                            R10 K30 ["Codex CLI"]
       54 SETTABLEKS                       R10 R9 K16 ["label"]
       56 LOADK                            R10 K31 ["~/.codex/log"]
       57 SETTABLEKS                       R10 R9 K17 ["indicatorPath"]
       59 LOADK                            R10 K32 ["command"]
       60 SETTABLEKS                       R10 R9 K18 ["kind"]
       62 DUPCLOSURE                       R10 K33 [PROTO_5]
       63 CAPTURE                          VAL R6
       64 SETTABLEKS                       R10 R9 K27 ["formatCommand"]
       66 DUPTABLE                         R10 K28 [{"id", "label", "indicatorPath", "kind", "formatCommand"}]
       67 LOADK                            R11 K34 ["claude_code"]
       68 SETTABLEKS                       R11 R10 K15 ["id"]
       70 LOADK                            R11 K35 ["Claude Code"]
       71 SETTABLEKS                       R11 R10 K16 ["label"]
       73 LOADK                            R11 K36 ["~/.claude.json"]
       74 SETTABLEKS                       R11 R10 K17 ["indicatorPath"]
       76 LOADK                            R11 K32 ["command"]
       77 SETTABLEKS                       R11 R10 K18 ["kind"]
       79 DUPCLOSURE                       R11 K37 [PROTO_6]
       80 CAPTURE                          VAL R6
       81 SETTABLEKS                       R11 R10 K27 ["formatCommand"]
       83 DUPTABLE                         R11 K38 [{"id", "label", "indicatorPath", "kind", "checkEnabledAsync", "setEnabledAsync"}]
       84 LOADK                            R12 K39 ["claude_desktop_mac"]
       85 SETTABLEKS                       R12 R11 K15 ["id"]
       87 LOADK                            R12 K40 ["Claude Desktop"]
       88 SETTABLEKS                       R12 R11 K16 ["label"]
       90 LOADK                            R12 K41 ["~/Library/Application Support/Claude/claude_desktop_config.json"]
       91 SETTABLEKS                       R12 R11 K17 ["indicatorPath"]
       93 LOADK                            R12 K26 ["toggle"]
       94 SETTABLEKS                       R12 R11 K18 ["kind"]
       96 SETTABLEKS                       R4 R11 K20 ["checkEnabledAsync"]
       98 SETTABLEKS                       R5 R11 K21 ["setEnabledAsync"]
      100 DUPTABLE                         R12 K38 [{"id", "label", "indicatorPath", "kind", "checkEnabledAsync", "setEnabledAsync"}]
      101 LOADK                            R13 K42 ["claude_desktop_windows"]
      102 SETTABLEKS                       R13 R12 K15 ["id"]
      104 LOADK                            R13 K40 ["Claude Desktop"]
      105 SETTABLEKS                       R13 R12 K16 ["label"]
      107 LOADK                            R13 K43 ["%LOCALAPPDATA%\\Packages\\Claude_*\\LocalCache\\Roaming\\Claude\\claude_desktop_config.json"]
      108 SETTABLEKS                       R13 R12 K17 ["indicatorPath"]
      110 LOADK                            R13 K26 ["toggle"]
      111 SETTABLEKS                       R13 R12 K18 ["kind"]
      113 SETTABLEKS                       R4 R12 K20 ["checkEnabledAsync"]
      115 SETTABLEKS                       R5 R12 K21 ["setEnabledAsync"]
      117 DUPTABLE                         R13 K45 [{"id", "label", "indicatorPath", "configPath", "kind", "checkEnabledAsync", "setEnabledAsync"}]
      118 LOADK                            R14 K46 ["cursor"]
      119 SETTABLEKS                       R14 R13 K15 ["id"]
      121 LOADK                            R14 K47 ["Cursor"]
      122 SETTABLEKS                       R14 R13 K16 ["label"]
      124 LOADK                            R14 K48 ["~/.cursor"]
      125 SETTABLEKS                       R14 R13 K17 ["indicatorPath"]
      127 LOADK                            R14 K49 ["~/.cursor/mcp.json"]
      128 SETTABLEKS                       R14 R13 K44 ["configPath"]
      130 LOADK                            R14 K26 ["toggle"]
      131 SETTABLEKS                       R14 R13 K18 ["kind"]
      133 SETTABLEKS                       R4 R13 K20 ["checkEnabledAsync"]
      135 SETTABLEKS                       R5 R13 K21 ["setEnabledAsync"]
      137 DUPTABLE                         R14 K28 [{"id", "label", "indicatorPath", "kind", "formatCommand"}]
      138 LOADK                            R15 K50 ["gemini"]
      139 SETTABLEKS                       R15 R14 K15 ["id"]
      141 LOADK                            R15 K51 ["Gemini CLI"]
      142 SETTABLEKS                       R15 R14 K16 ["label"]
      144 LOADK                            R15 K52 ["~/.gemini/settings.json"]
      145 SETTABLEKS                       R15 R14 K17 ["indicatorPath"]
      147 LOADK                            R15 K32 ["command"]
      148 SETTABLEKS                       R15 R14 K18 ["kind"]
      150 DUPCLOSURE                       R15 K53 [PROTO_7]
      151 CAPTURE                          VAL R6
      152 SETTABLEKS                       R15 R14 K27 ["formatCommand"]
      154 DUPTABLE                         R15 K55 [{"id", "label", "indicatorPath", "configPath", "kind", "mcpJSONEntry", "checkEnabledAsync", "setEnabledAsync"}]
      155 LOADK                            R16 K56 ["vscode-mac"]
      156 SETTABLEKS                       R16 R15 K15 ["id"]
      158 LOADK                            R16 K57 ["Visual Studio Code"]
      159 SETTABLEKS                       R16 R15 K16 ["label"]
      161 LOADK                            R16 K58 ["~/Library/Application Support/Code/User"]
      162 SETTABLEKS                       R16 R15 K17 ["indicatorPath"]
      164 LOADK                            R16 K59 ["~/Library/Application Support/Code/User/mcp.json"]
      165 SETTABLEKS                       R16 R15 K44 ["configPath"]
      167 LOADK                            R16 K26 ["toggle"]
      168 SETTABLEKS                       R16 R15 K18 ["kind"]
      170 LOADK                            R16 K60 ["servers"]
      171 SETTABLEKS                       R16 R15 K54 ["mcpJSONEntry"]
      173 SETTABLEKS                       R4 R15 K20 ["checkEnabledAsync"]
      175 SETTABLEKS                       R5 R15 K21 ["setEnabledAsync"]
      177 DUPTABLE                         R16 K55 [{"id", "label", "indicatorPath", "configPath", "kind", "mcpJSONEntry", "checkEnabledAsync", "setEnabledAsync"}]
      178 LOADK                            R17 K61 ["vscode-windows"]
      179 SETTABLEKS                       R17 R16 K15 ["id"]
      181 LOADK                            R17 K57 ["Visual Studio Code"]
      182 SETTABLEKS                       R17 R16 K16 ["label"]
      184 LOADK                            R17 K62 ["%APPDATA%\\Code\\User"]
      185 SETTABLEKS                       R17 R16 K17 ["indicatorPath"]
      187 LOADK                            R17 K63 ["%APPDATA%\\Code\\User\\mcp.json"]
      188 SETTABLEKS                       R17 R16 K44 ["configPath"]
      190 LOADK                            R17 K26 ["toggle"]
      191 SETTABLEKS                       R17 R16 K18 ["kind"]
      193 LOADK                            R17 K60 ["servers"]
      194 SETTABLEKS                       R17 R16 K54 ["mcpJSONEntry"]
      196 SETTABLEKS                       R4 R16 K20 ["checkEnabledAsync"]
      198 SETTABLEKS                       R5 R16 K21 ["setEnabledAsync"]
      200 SETLIST                          R7 R8 9 [1]
      202 RETURN                           R7 1
